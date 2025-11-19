void sub_1004D69B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleWifiAvailable(entitlements::CEHTTPDriver *this, int a2)
{
  if (*(this + 736) != a2)
  {
    v2 = a2;
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(this + 16));
      v6 = *(this + 20);
      v7 = asStringBool(*(this + 736));
      v11 = 136316418;
      v12 = v5;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v6;
      v17 = 2080;
      v18 = "";
      v19 = 2080;
      v20 = v7;
      v21 = 2080;
      v22 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sWifi availability is changing from %s to %s", &v11, 0x3Eu);
    }

    *(this + 736) = v2;
    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    if (*(this + 736) == 1)
    {
      sub_1009C18B8(this, "handleWifiAvailable", 0);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(this + 16));
        v10 = *(this + 20);
        v11 = 136315906;
        v12 = v9;
        v13 = 2080;
        v14 = " ";
        v15 = 2080;
        v16 = v10;
        v17 = 2080;
        v18 = "";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBecame WiFi attached, issuing any pending transactions", &v11, 0x2Au);
      }

      entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
    }
  }
}

void entitlements::CEHTTPDriver::sendRequestIfPending_sync(entitlements::CEHTTPDriver *this)
{
  if ((*(this + 80) > 1uLL || sub_1005358AC(*(this + 81))) && !*(this + 76))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 16));
      v4 = *(this + 20);
      v5 = 136315906;
      v6 = v3;
      v7 = 2080;
      v8 = " ";
      v9 = 2080;
      v10 = v4;
      v11 = 2080;
      v12 = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Sending Request for pending query", &v5, 0x2Au);
    }

    entitlements::CEHTTPDriver::initiateRequestQuery_sync(this, 0);
  }
}

void entitlements::CEHTTPDriver::handleDeviceInProximityChange_sync(entitlements::CEHTTPDriver *this, int a2)
{
  if (*(this + 858) != a2)
  {
    v2 = a2;
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(***(this + 16));
      v6 = *(this + 20);
      v7 = asStringBool(v2);
      v8 = asStringBool(*(this + 858));
      v12 = 136316418;
      v13 = v5;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v6;
      v18 = 2080;
      v19 = "";
      v20 = 2080;
      v21 = v7;
      v22 = 2080;
      v23 = v8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%siPhone proximity is changing from %s to %s", &v12, 0x3Eu);
    }

    entitlements::CEHTTPDriver::evaluateConnectivityStateChange(this);
    if (*(this + 858) == 1)
    {
      sub_1009C18B8(this, "handleNearbyDevicesChanged", 0);
      v9 = *(this + 5);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(***(this + 16));
        v11 = *(this + 20);
        v12 = 136315906;
        v13 = v10;
        v14 = 2080;
        v15 = " ";
        v16 = 2080;
        v17 = v11;
        v18 = 2080;
        v19 = "";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%siPhone is in proximity, issuing any pending transactions", &v12, 0x2Au);
      }

      entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
    }
  }
}

void entitlements::CEHTTPDriver::reset_sync(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    *v8 = 136315906;
    *&v8[4] = v5;
    *&v8[12] = 2080;
    *&v8[14] = " ";
    *&v8[22] = 2080;
    v9 = v6;
    v10 = 2080;
    v11 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Reset called on driver. Cancelling all transactions.", v8, 0x2Au);
  }

  sub_1009C1748(a1, a2);
  sub_100A81C94(*(a1 + 144), v8);
  v7 = (a1 + 544);
  if (*(a1 + 567) < 0)
  {
    operator delete(*v7);
  }

  *v7 = *v8;
  *(a1 + 560) = *&v8[16];
  v8[0] = 0;
  v8[4] = 0;
  entitlements::CEHTTPDriver::terminateAllQueries(a1, 0, v8);
}

uint64_t entitlements::CEHTTPDriver::invalidateConnection_sync(entitlements::CEHTTPDriver *this)
{
  v2 = this + 568;
  v3 = *(this + 72);
  *v2 = 0u;
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 74);
  *(v2 + 2) = 0;
  *(v2 + 3) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 96);
  *(v2 + 24) = 0;
  *(v2 + 25) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return _CFURLConnectionInvalidateConnectionCache();
}

void entitlements::CEHTTPDriver::cleanToken(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        sub_100004AA0(__p, this + 1);
        v9 = *__p;
        LOBYTE(__p[0]) = 0;
        v8 = 0;
        (*(*v5 + 16))(v5, &v9, __p);
        if (v8 == 1 && __p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*(&v9 + 1))
        {
          sub_100004A34(*(&v9 + 1));
        }
      }

      sub_100004A34(v4);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*this + 280))(this, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1004D723C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12 == 1)
  {
    sub_1017729D0(&__p);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::cleanGBAAuthInfo(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        sub_100004AA0(__p, this + 1);
        v9 = *__p;
        LOBYTE(__p[0]) = 0;
        v8 = 0;
        (*(*v5 + 32))(v5, &v9, __p);
        if (v8 == 1 && SHIBYTE(v7) < 0)
        {
          operator delete(__p[0]);
        }

        if (*(&v9 + 1))
        {
          sub_100004A34(*(&v9 + 1));
        }
      }

      sub_100004A34(v4);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v7 = 0;
  (*(*this + 392))(this, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004D73A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::readToken(entitlements::CEHTTPDriver *this)
{
  *v15 = 0u;
  v16 = 0u;
  v2 = *(this + 14);
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *(this + 13);
  if (v5)
  {
    sub_100004AA0(&v17, this + 1);
    v14 = v17;
    (*(*v5 + 8))(__p, v5, &v14);
    sub_1004EDCD0(v15, __p);
    if (v20 == 1 && *__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (*(&v14 + 1))
    {
      sub_100004A34(*(&v14 + 1));
    }
  }

  sub_100004A34(v4);
  if (BYTE8(v16))
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(this + 16));
      v8 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v7;
      *&__p[12] = 2080;
      *&__p[14] = " ";
      v19 = 2080;
      v20 = v8;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sFound Auth Token", __p, 0x2Au);
    }

    if (*(*(this + 18) + 56) <= 1uLL && !*(this + 30))
    {
      v9 = *(this + 16);
      v10 = *(this + 17);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10043E720(v9 + 480, v15);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    (*(*this + 280))(this, v15);
  }

  else
  {
LABEL_19:
    (*(*this + 288))(this, 0);
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(this + 16));
      v13 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v12;
      *&__p[12] = 2080;
      *&__p[14] = " ";
      v19 = 2080;
      v20 = v13;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sNo auth token stored in keychain", __p, 0x2Au);
    }
  }

  if (BYTE8(v16) == 1)
  {
    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }
  }
}

void sub_1004D76E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::readGBAAuthentication(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 13);
      if (v5)
      {
        *__p = 0u;
        v9 = 0u;
        sub_100004AA0(&v10, this + 1);
        v7 = v10;
        (*(*v5 + 24))(__p, v5, &v7);
        if (*(&v7 + 1))
        {
          sub_100004A34(*(&v7 + 1));
        }

        v6 = BYTE8(v9);
        if (BYTE8(v9) == 1)
        {
          (*(*this + 392))(this, __p);
          v6 = BYTE8(v9);
        }

        if ((v6 & 1) != 0 && SBYTE7(v9) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1004D7858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::addAuthDataIfNeeded_sync(uint64_t a1, uint64_t a2)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  sub_100A83334(*(a1 + 144), &v42);
  memset(&v41, 0, sizeof(v41));
  memset(&v40, 0, sizeof(v40));
  memset(&v39, 0, sizeof(v39));
  v4 = strlen("1");
  v5 = v4;
  if ((SHIBYTE(v44) & 0x8000000000000000) != 0)
  {
    if (v4 == v43)
    {
      if (v4 == -1)
      {
        sub_10013C334();
      }

      v6 = v42;
LABEL_7:
      if (!memcmp(v6, "1", v5))
      {
        goto LABEL_23;
      }
    }
  }

  else if (v4 == SHIBYTE(v44))
  {
    v6 = &v42;
    goto LABEL_7;
  }

  std::string::operator=(&v41, (*(a1 + 128) + 432));
  std::string::operator=(&v40, (*(a1 + 128) + 456));
  v7 = *(a1 + 128);
  v8 = *(v7 + 431);
  if (v8 >= 0)
  {
    v9 = *(v7 + 431);
  }

  else
  {
    v9 = *(v7 + 416);
  }

  v10 = *(v7 + 455);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 440);
  }

  if (v9 != v10 || ((v12 = (v7 + 432), v8 >= 0) ? (v13 = (v7 + 408)) : (v13 = *(v7 + 408)), (v14 = *(v7 + 432), v11 >= 0) ? (v15 = v12) : (v15 = v14), memcmp(v13, v15, v9)))
  {
    if (sub_100A8202C(*(a1 + 144)))
    {
      std::string::operator=(&v39, (*(a1 + 128) + 408));
    }
  }

LABEL_23:
  __dst = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (!sub_100A81F8C(*(a1 + 144)))
  {
    goto LABEL_34;
  }

  v16 = *(a1 + 128);
  if ((*(v16 + 111) & 0x8000000000000000) != 0)
  {
    if (!*(v16 + 96))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*(v16 + 111))
  {
LABEL_28:
    sub_1001696A4(&__dst, (v16 + 88));
    v16 = *(a1 + 128);
  }

LABEL_29:
  if ((*(v16 + 135) & 0x8000000000000000) != 0)
  {
    if (!*(v16 + 120))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (*(v16 + 135))
  {
LABEL_33:
    sub_1001696A4(&v35, (v16 + 112));
  }

LABEL_34:
  LODWORD(v17) = *(a1 + 172);
  if ((v17 - 3) < 3)
  {
    goto LABEL_52;
  }

  if ((v17 - 1) >= 2)
  {
    if (v17)
    {
      goto LABEL_44;
    }

    if (*(***(a1 + 128) + 49) == 2)
    {
      LODWORD(v17) = 4;
    }

    else
    {
      v17 = *(a1 + 279);
      if (v17 < 0)
      {
        v17 = *(a1 + 264);
      }

      if (!v17)
      {
        goto LABEL_52;
      }

      LODWORD(v17) = 3;
    }

    *(a1 + 172) = v17;
LABEL_52:
    v22 = v17;
    v20 = *(a1 + 128);
    if (*(v20 + 407) < 0)
    {
      sub_100005F2C(&v23, *(v20 + 384), *(v20 + 392));
    }

    else
    {
      v23 = *(v20 + 384);
      v24 = *(v20 + 400);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v41;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v26, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v40;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v27, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v39;
    }

    if (*(a1 + 279) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 256), *(a1 + 264));
    }

    else
    {
      v28 = *(a1 + 256);
      v29 = *(a1 + 272);
    }

    sub_10006F264(v30, (a1 + 280));
    v31 = *(a1 + 312);
    v32 = *(a1 + 320);
    v33[0] = 0;
    v33[24] = 0;
    v34[0] = 0;
    v34[24] = 0;
    v19 = sub_10053A478(a2, &v22);
    sub_1004EDD68(&v22);
    sub_10053BC08(a2);
    goto LABEL_68;
  }

  v18 = *(a1 + 176);
  if (v18 == 2)
  {
LABEL_39:
    v22 = *(a1 + 172);
    if (*(a1 + 231) < 0)
    {
      sub_100005F2C(&v23, *(a1 + 208), *(a1 + 216));
    }

    else
    {
      v23 = *(a1 + 208);
      v24 = *(a1 + 224);
    }

    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v41;
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v26, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
    }

    else
    {
      v26 = v40;
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v27, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v39;
    }

    if (*(a1 + 255) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 232), *(a1 + 240));
    }

    else
    {
      v28 = *(a1 + 232);
      v29 = *(a1 + 248);
    }

    v30[0] = 0;
    v30[24] = 0;
    LOBYTE(v31) = 0;
    v32 = 0;
    sub_10006F264(v33, &__dst);
    sub_10006F264(v34, &v35);
    v19 = sub_10053A478(a2, &v22);
    sub_1004EDD68(&v22);
    sub_10053BC08(a2);
    goto LABEL_68;
  }

  if (v18 != 1)
  {
    if (!v18)
    {
      goto LABEL_39;
    }

LABEL_44:
    v19 = 1;
    goto LABEL_68;
  }

  v19 = sub_10053B944(a2, (a1 + 464), (a1 + 488));
  if (*(a1 + 487) < 0)
  {
    **(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 464) = 0;
    *(a1 + 487) = 0;
  }

  if (*(a1 + 511) < 0)
  {
    **(a1 + 488) = 0;
    *(a1 + 496) = 0;
  }

  else
  {
    *(a1 + 488) = 0;
    *(a1 + 511) = 0;
  }

  sub_10053B8BC(a2);
LABEL_68:
  if (BYTE8(v36) == 1 && SBYTE7(v36) < 0)
  {
    operator delete(v35);
  }

  if (BYTE8(v38) == 1 && SBYTE7(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  return v19;
}

void sub_1004D7E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, char a55)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v55 - 168) == 1 && *(v55 - 169) < 0)
  {
    operator delete(*(v55 - 192));
  }

  if (*(v55 - 136) == 1 && *(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (*(v55 - 105) < 0)
  {
    operator delete(*(v55 - 128));
  }

  if (*(v55 - 81) < 0)
  {
    operator delete(*(v55 - 104));
  }

  if (*(v55 - 57) < 0)
  {
    operator delete(*(v55 - 80));
  }

  if (*(v55 - 33) < 0)
  {
    operator delete(*(v55 - 56));
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::queryEntitlements(entitlements::CEHTTPDriver *a1, uint64_t *a2, void *a3)
{
  entitlements::CEHTTPDriver::queryEntitlements_sync(a1, a2, a3);

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
}

void entitlements::CEHTTPDriver::queryEntitlements_sync(uint64_t a1, uint64_t *a2, void *a3)
{
  v24 = 0;
  ctu::ns::AutoPool::AutoPool(&v24);
  v6 = sub_1008374DC(*(a1 + 144));
  v7 = sub_100A8209C(*(a1 + 144));
  v8 = v6 | 5;
  if (!v7)
  {
    v8 = v6;
  }

  v23 = *a3 & v8;
  if ((v23 & 0x7FFFFF) != 0)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v21);
    if (v22)
    {
      sub_100004A34(v22);
    }

    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 128));
      v11 = *(a1 + 160);
      sub_100072374(&v23, __p);
      v12 = v20 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v26 = v10;
      v27 = 2080;
      v28 = " ";
      v29 = 2080;
      v30 = v11;
      v31 = 2080;
      v32 = "";
      v33 = 2082;
      v34 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%squeryEntitlements_sync with %{public}s", buf, 0x34u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v13 = sub_100531A7C(&v23);
    v14 = *(a1 + 608);
    if (v14)
    {
      v13 = sub_100538EC8(v14, v13);
    }

    v15 = sub_100536380(*(a1 + 648), v13);
    if (v15)
    {
      entitlements::CEHTTPDriver::applyActionPolicy(a1, v15, a2);
    }

    else
    {
      sub_100537494(*(a1 + 648), &v23);
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(***(a1 + 128));
      v18 = *(a1 + 160);
      *buf = 136315906;
      v26 = v17;
      v27 = 2080;
      v28 = " ";
      v29 = 2080;
      v30 = v18;
      v31 = 2080;
      v32 = "";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo entitlements to query", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v24);
}

void sub_1004D8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void *entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = *(a1 + 648);
  v6 = result[15];
  if ((v6 & 0x100000000) != 0)
  {
    if (v6 != a2)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(***(a1 + 128));
        v10 = *(a1 + 160);
        if (a2 == -1)
        {
          v11 = "-";
        }

        else
        {
          v11 = sub_10006EE44(a2);
        }

        v12 = *(*(a1 + 648) + 120);
        if ((v12 & 0x100000000) != 0)
        {
          v13 = sub_10006EE44(v12);
        }

        else
        {
          v13 = "-";
        }

        *buf = 136316418;
        v16 = v9;
        v17 = 2080;
        v18 = " ";
        v19 = 2080;
        v20 = v10;
        v21 = 2080;
        v22 = "";
        v23 = 2080;
        v24 = v11;
        v25 = 2080;
        v26 = v13;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding new pending query because I am:%s. Existing query dedicated to:%s", buf, 0x3Eu);
      }

      entitlements::CEHTTPDriver::addNewPendingQuery(a1);
    }
  }

  else
  {
    result = sub_1005358AC(result);
  }

  v14 = *(a1 + 656);
  *a3 = *(a1 + 648);
  a3[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void entitlements::CEHTTPDriver::applyActionPolicy(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  if (*(*a3 + 16) == 1 && *(v6 + 12))
  {
    [a2 setAttemptsLimit:?];
    v6 = *a3;
  }

  if (*(v6 + 2) == 1)
  {
    [a2 setBootstrapDataAllowed:1];
    v6 = *a3;
  }

  if (*v6 == 1 && sub_100A836FC(*(a1 + 144)))
  {
    [a2 setNeedSecureIntent:1];
  }

  v7 = *a3;
  if (*(*a3 + 1) == 1)
  {
    [a2 setFullAuthenticationNeeded];
    v7 = *a3;
  }

  if (*(v7 + 48) == 1)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(a1 + 128));
      v10 = *(a1 + 160);
      v14 = 136315906;
      v15 = v9;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v10;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblind signature provided for authentication!!!", &v14, 0x2Au);
      v7 = *a3;
    }

    LOBYTE(v14) = 0;
    BYTE4(v15) = 0;
    (*(*a1 + 264))(a1, v7 + 24, v7 + 56, &v14);
    v7 = *a3;
  }

  if (*(v7 + 8) == 1 && *(v7 + 4))
  {
    [a2 setCancelationTimestampInSecond:?];
    entitlements::CEHTTPDriver::checkPendingQueriesCancelation(a1);
    v7 = *a3;
  }

  if (*(v7 + 3) == 1)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      v14 = 136315906;
      v15 = v12;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v13;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sforced action added!!!", &v14, 0x2Au);
    }

    *(a1 + 737) = 1;
    [a2 setUserInitiated:1];
    (*(*a1 + 344))(a1, 0);
  }
}

BOOL entitlements::CEHTTPDriver::setEntitlements(entitlements::CEHTTPDriver *a1, void *a2)
{
  v3 = entitlements::CEHTTPDriver::setEntitlements_sync(a1, a2);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

BOOL entitlements::CEHTTPDriver::setEntitlements_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = *a2 & 0x7FFFFFLL;
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531B28(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100538F40(v6, v5);
    }

    sub_1005363F8(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo entitlements to query", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getProvisioning(entitlements::CEHTTPDriver *a1, void *a2)
{
  Provisioning_sync = entitlements::CEHTTPDriver::getProvisioning_sync(a1, a2);
  if (Provisioning_sync)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return Provisioning_sync;
}

BOOL entitlements::CEHTTPDriver::getProvisioning_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = *a2 & 0x7FFFFFLL;
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531B28(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100538FB8(v6, v5);
    }

    sub_100536470(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty get provisioning request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::setProvisioning(entitlements::CEHTTPDriver *a1, void *a2)
{
  v3 = entitlements::CEHTTPDriver::setProvisioning_sync(a1, a2);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

BOOL entitlements::CEHTTPDriver::setProvisioning_sync(uint64_t a1, void *a2)
{
  v13 = 0;
  ctu::ns::AutoPool::AutoPool(&v13);
  v4 = a2[2];
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, *(*a2 + 32), &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100531BE8(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100539030(v6, v5);
    }

    sub_1005364E8(*(a1 + 648), v5);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      v15 = v8;
      v16 = 2080;
      v17 = " ";
      v18 = 2080;
      v19 = v9;
      v20 = 2080;
      v21 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty set provisioning request", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v13);
  return v4 != 0;
}

void sub_1004D8BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getRegisteredLocationStatus(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 128));
    v10 = *(a1 + 160);
    sub_100072374(a4, __p);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136316162;
    v17 = v9;
    v18 = 2080;
    v19 = " ";
    v20 = 2080;
    v21 = v10;
    v22 = 2080;
    v23 = "";
    v24 = 2080;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sgetRegisteredLocationStatus with %s", buf, 0x34u);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  RegisteredLocationStatus_sync = entitlements::CEHTTPDriver::getRegisteredLocationStatus_sync(a1, a2, a3);
  if (RegisteredLocationStatus_sync)
  {
    if ((*a4 & 0x7FFFFF) != 0)
    {
      entitlements::CEHTTPDriver::queryEntitlements_sync(a1, a2, a4);
    }

    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return RegisteredLocationStatus_sync;
}

BOOL entitlements::CEHTTPDriver::getRegisteredLocationStatus_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = 0;
  ctu::ns::AutoPool::AutoPool(&v20);
  sub_100A83334(*(a1 + 144), __s1);
  v6 = strlen("1");
  if ((__s1[23] & 0x8000000000000000) != 0)
  {
    if (v6 == *&__s1[8])
    {
      if (v6 == -1)
      {
        sub_10013C334();
      }

      v8 = *__s1;
      v7 = memcmp(*__s1, "1", v6) == 0;
    }

    else
    {
      v7 = 0;
      v8 = *__s1;
    }

    operator delete(v8);
  }

  else
  {
    v7 = v6 == __s1[23] && memcmp(__s1, "1", v6) == 0;
  }

  v9 = sub_100A3C8F4(a3, !v7);
  if (v9)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v18);
    if (v19)
    {
      sub_100004A34(v19);
    }

    if (v7)
    {
      v10 = *(a1 + 128);
      if (*(v10 + 455) < 0)
      {
        sub_100005F2C(__s1, *(v10 + 432), *(v10 + 440));
      }

      else
      {
        *__s1 = *(v10 + 432);
        *&__s1[16] = *(v10 + 448);
      }
    }

    else
    {
      memset(__s1, 0, sizeof(__s1));
    }

    v14 = sub_100532024(a3, v7, __s1);
    if ((__s1[23] & 0x80000000) != 0)
    {
      operator delete(*__s1);
    }

    v15 = *(a1 + 608);
    if (v15)
    {
      v14 = sub_100539794(v15, v14);
    }

    v16 = sub_100539720(*(a1 + 648), v14);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v16, a2);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *__s1 = 136315906;
      *&__s1[4] = v12;
      *&__s1[12] = 2080;
      *&__s1[14] = " ";
      *&__s1[22] = 2080;
      v22 = v13;
      v23 = 2080;
      v24 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sGet registration location status is not valid", __s1, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v20);
  return v9;
}

uint64_t entitlements::CEHTTPDriver::enablePushNotification(entitlements::CEHTTPDriver *a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_1003FB24C(v5, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 3));
  v3 = entitlements::CEHTTPDriver::enablePushNotification_sync(a1, v5);
  v6 = v5;
  sub_1003EAC3C(&v6);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

void sub_1004D90C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003EAC3C(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::enablePushNotification_sync(uint64_t a1, int **a2)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v4 = sub_100A3E238(a2);
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v17);
    if (v18)
    {
      sub_100004A34(v18);
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 128));
      v7 = *(a1 + 160);
      sub_100A42054(a2, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v21 = v6;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v7;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding enable push notification with %s", buf, 0x34u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1005324F4(a2);
    v10 = *(a1 + 608);
    if (v10)
    {
      v9 = sub_100539804(v10, v9);
    }

    sub_100536E30(*(a1 + 648), v9);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v13;
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEnable push notificaiton request is not valid", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
  return v4;
}

void sub_1004D9308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::disablePushNotification(entitlements::CEHTTPDriver *a1, uint64_t *a2)
{
  memset(v5, 0, sizeof(v5));
  sub_1003FBC44(v5, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v3 = entitlements::CEHTTPDriver::disablePushNotification_sync(a1, v5);
  v6 = v5;
  sub_1003EAD54(&v6);
  if (v3)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v3;
}

void sub_1004D93C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1003EAD54(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::disablePushNotification_sync(uint64_t a1, int **a2)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v4 = sub_100A3E27C(a2);
  if (v4)
  {
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v17);
    if (v18)
    {
      sub_100004A34(v18);
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 128));
      v7 = *(a1 + 160);
      sub_100A421E0(a2, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136316162;
      v21 = v6;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v7;
      v26 = 2080;
      v27 = "";
      v28 = 2080;
      v29 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAdding disable push notification with %s", buf, 0x34u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_1005328D4(a2);
    v10 = *(a1 + 608);
    if (v10)
    {
      v9 = sub_100539904(v10, v9);
    }

    sub_100539884(*(a1 + 648), v9);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 128));
      v13 = *(a1 + 160);
      *buf = 136315906;
      v21 = v12;
      v22 = 2080;
      v23 = " ";
      v24 = 2080;
      v25 = v13;
      v26 = 2080;
      v27 = "";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sDisable push notificaiton request is not valid", buf, 0x2Au);
    }
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
  return v4;
}

void sub_1004D9600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::queryPhoneNumber(entitlements::CEHTTPDriver *a1, uint64_t **a2)
{
  entitlements::CEHTTPDriver::queryPhoneNumber_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryPhoneNumber_sync(uint64_t a1, uint64_t **a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = sub_100532B1C(a2);
  v5 = *(a1 + 608);
  if (v5)
  {
    v4 = sub_1005399FC(v5, v4);
  }

  sub_100539984(*(a1 + 648), v4);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004D96E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::hasActionOfType(uint64_t a1, int a2)
{
  v4 = *(a1 + 608);
  if (v4)
  {
    v5 = sub_10053588C(v4, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 + 624;
  for (i = *(a1 + 632); i != v6; i = *(i + 8))
  {
    if (sub_10053588C(*(i + 16), a2))
    {
      return v6 != i || v5;
    }
  }

  i = v6;
  return v6 != i || v5;
}

uint64_t entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus(entitlements::CEHTTPDriver *a1, uint64_t *a2, int a3, int a4)
{
  entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus_sync(a1, a2, a3, a4);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryAccountSubscriptionAndUsageStatus_sync(uint64_t a1, uint64_t *a2, int a3, int a4)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v8 = sub_10053A274(*(a1 + 648), a3, a4);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004D9834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::queryVVMAccountStatus(entitlements::CEHTTPDriver *a1, void *a2)
{
  entitlements::CEHTTPDriver::queryVVMAccountStatus_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::queryVVMAccountStatus_sync(uint64_t a1, void *a2)
{
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10053BC8C(*(a1 + 648), a2);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::updatePushToken(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (*(a1 + 416) & 1) == 0)
  {
    *(a1 + 416) = 0;
    if (entitlements::CEHTTPDriver::updatePushToken_sync(a1, a2))
    {
      sub_100070A80();
    }
  }

  return 0;
}

void sub_1004D99C8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (a3)
  {
    sub_100004A34(a3);
  }

  sub_100270CFC(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::updatePushToken_sync(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = sub_100532BC8(a2);
    v6 = *(a1 + 608);
    if (v6)
    {
      v5 = sub_100539AE4(v6, v5);
    }

    sub_100539A6C(*(a1 + 648), v5);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 128));
      v9 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty token", buf, 0x2Au);
    }
  }

  return v3 != 0;
}

void sub_1004D9B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::getSIMStatus(entitlements::CEHTTPDriver *a1, uint64_t *a2, entitlements::GetSIMStatusRequest *a3)
{
  SIMStatus_sync = entitlements::CEHTTPDriver::getSIMStatus_sync(a1, a2, a3);
  if (SIMStatus_sync)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return SIMStatus_sync;
}

BOOL entitlements::CEHTTPDriver::getSIMStatus_sync(uint64_t a1, uint64_t *a2, entitlements::GetSIMStatusRequest *this)
{
  v6 = entitlements::GetSIMStatusRequest::valid(this);
  if (v6)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    v7 = sub_100532C44(this);
    v8 = *(a1 + 608);
    if (v8)
    {
      v7 = sub_100539BC8(v8, v7);
    }

    v9 = sub_100539B54(*(a1 + 648), v7);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v9, a2);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sempty iccid", buf, 0x2Au);
    }
  }

  return v6;
}

void sub_1004D9D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::signUpForSIMService(entitlements::CEHTTPDriver *a1, uint64_t *a2, entitlements::SignUpSIMRequest *a3)
{
  v4 = entitlements::CEHTTPDriver::signUpForSIMService_sync(a1, a2, a3);
  if (v4)
  {
    entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  }

  return v4;
}

BOOL entitlements::CEHTTPDriver::signUpForSIMService_sync(uint64_t a1, uint64_t *a2, entitlements::SignUpSIMRequest *this)
{
  v6 = entitlements::SignUpSIMRequest::valid(this);
  if (v6)
  {
    *buf = 0;
    ctu::ns::AutoPool::AutoPool(buf);
    entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    v7 = sub_100533294(this);
    v8 = *(a1 + 608);
    if (v8)
    {
      v7 = sub_100539CAC(v8, v7);
    }

    v9 = sub_100539C38(*(a1 + 648), v7);
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v9, a2);
    ctu::ns::AutoPool::~AutoPool(buf);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%ssignUpForSIMService request is not valid", buf, 0x2Au);
    }
  }

  return v6;
}

void sub_1004D9EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getGeofenceData(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t **a3)
{
  entitlements::CEHTTPDriver::getGeofenceData_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getGeofenceData_sync(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533944(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100538BAC(v7, v6);
  }

  v8 = sub_100538B38(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004D9FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getSigningKeys(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t **a3)
{
  entitlements::CEHTTPDriver::getSigningKeys_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getSigningKeys_sync(uint64_t a1, uint64_t *a2, uint64_t **a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533A68(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100538C90(v7, v6);
  }

  v8 = sub_100538C1C(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getBlindSignatures(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t ***a3)
{
  entitlements::CEHTTPDriver::getBlindSignatures_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getBlindSignatures_sync(uint64_t a1, uint64_t *a2, uint64_t ***a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533B18(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100538D74(v7, v6);
  }

  v8 = sub_100538D00(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::enableService(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t *a3)
{
  entitlements::CEHTTPDriver::enableService_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::enableService_sync(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533CC8(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100538E58(v7, v6);
  }

  v8 = sub_100538DE4(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getCarrierAuthNonce(entitlements::CEHTTPDriver *a1, uint64_t *a2)
{
  entitlements::CEHTTPDriver::getCarrierAuthNonce_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getCarrierAuthNonce_sync(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = *(a1 + 608);
  if (!v4 || !sub_10053588C(v4, 16))
  {
    v5 = sub_100539D1C(*(a1 + 648));
    entitlements::CEHTTPDriver::applyActionPolicy(a1, v5, a2);
  }

  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004DA374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::authenticateTrustFlag(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::authenticateTrustFlag_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::authenticateTrustFlag_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = sub_100533E3C(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100539DF8(v7, v6);
  }

  v8 = sub_100539D84(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::transferSIMService(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::transferSIMService_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::transferSIMService_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = codec::toJSONObject(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100539F50(v7, v6);
  }

  v8 = sub_100539E68(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::transferAuthorization(entitlements::CEHTTPDriver *a1, uint64_t *a2, uint64_t a3)
{
  entitlements::CEHTTPDriver::transferAuthorization_sync(a1, a2, a3);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::transferAuthorization_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = codec::toJSONObject(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_100539FC0(v7, v6);
  }

  v8 = sub_100539EDC(*(a1 + 648), v6);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DA638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::getIDSTrustToken(uint64_t a1, uint64_t *a2, const void **a3)
{
  if (objc_opt_class() && (v6 = dispatch_queue_create("com.apple.CommCenter.ent.ids_auth", 0)) != 0)
  {
    v7 = v6;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3052000000;
    v24 = sub_1004DA97C;
    v25 = sub_1004DA98C;
    v26 = [[IDSPhoneCertificateVendor alloc] initWithQueue:v6];
    if (v22[5])
    {
      if (*(***(a1 + 128) + 52) == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      v9 = [IDSCarrierTokenRequestParameters alloc];
      v10 = *(a1 + 128);
      v11 = (v10 + 16);
      if (*(v10 + 39) < 0)
      {
        v11 = *v11;
      }

      v12 = [NSString stringWithUTF8String:v11];
      if (*(a2 + 23) >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      v14 = [v9 initWithSubscriptionSource:v8 IMEI:v12 carrierNonce:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v13)}];
      if (*a3)
      {
        v15 = _Block_copy(*a3);
      }

      else
      {
        v15 = 0;
      }

      v16 = v22[5];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3321888768;
      v18[2] = sub_1004DA998;
      v18[3] = &unk_101E518B8;
      v18[5] = a1;
      if (v15)
      {
        v17 = _Block_copy(v15);
      }

      else
      {
        v17 = 0;
      }

      aBlock = v17;
      v18[4] = &v21;
      [v16 requestCarrierTokenWithParameters:v14 completion:v18];
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v15)
      {
        _Block_release(v15);
      }
    }

    else
    {
      v20 = 0;
      sub_1004DA8F0(a3);
    }

    _Block_object_dispose(&v21, 8);
    dispatch_release(v7);
  }

  else
  {
    LOBYTE(v21) = 0;
    sub_1004DA8F0(a3);
  }
}

void sub_1004DA88C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, char a17)
{
  _Block_object_dispose(&a17, 8);
  dispatch_release(v17);
  _Unwind_Resume(a1);
}

void sub_1004DA954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DA998(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[5];
  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(v6 + 128));
    v9 = *(v6 + 160);
    *__p = 136316162;
    *&__p[4] = v8;
    v11 = 2080;
    v12 = " ";
    v13 = 2080;
    v14 = v9;
    v15 = 2080;
    v16 = "";
    v17 = 1024;
    v18 = a3 == 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sDone request IDS token: %d", __p, 0x30u);
  }

  if (a3 || ![objc_msgSend(a2 "tokenString")])
  {
    __p[0] = 0;
    sub_1004DA8F0((a1 + 6));
  }

  else
  {
    sub_10000501C(__p, [objc_msgSend(a2 "tokenString")]);
    sub_1004DAB34(a1 + 6, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(*__p);
    }
  }
}

void sub_1004DAB10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004DAB34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *__p = *a2;
  v4 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(v2 + 16))();
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004DABA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a9 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1004DABD0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_1004DAC04(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t entitlements::CEHTTPDriver::getPreferredRoamingNetworks(entitlements::CEHTTPDriver *this)
{
  entitlements::CEHTTPDriver::getPreferredRoamingNetworks_sync(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getPreferredRoamingNetworks_sync(entitlements::CEHTTPDriver *this)
{
  v6 = 0;
  ctu::ns::AutoPool::AutoPool(&v6);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(this, -1, &v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v2 = *(this + 76);
  if (!v2 || !sub_10053588C(v2, 19))
  {
    sub_10053A030(*(this + 81));
  }

  ctu::ns::AutoPool::~AutoPool(&v6);
  return 1;
}

void sub_1004DACD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getPSDeviceList(entitlements::CEHTTPDriver *this)
{
  entitlements::CEHTTPDriver::getPSDeviceList_sync(this);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getPSDeviceList_sync(entitlements::CEHTTPDriver *this)
{
  v6 = 0;
  ctu::ns::AutoPool::AutoPool(&v6);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(this, -1, &v4);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v2 = *(this + 76);
  if (!v2 || !sub_10053588C(v2, 8))
  {
    sub_10053A09C(*(this + 81));
  }

  ctu::ns::AutoPool::~AutoPool(&v6);
  return 1;
}

void sub_1004DAD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getCarrierSpaceUpdates(entitlements::CEHTTPDriver *a1, id *a2)
{
  entitlements::CEHTTPDriver::getCarrierSpaceUpdates_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::getCarrierSpaceUpdates_sync(uint64_t a1, id *a2)
{
  v9 = 0;
  ctu::ns::AutoPool::AutoPool(&v9);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = sub_100534000(a2);
  v5 = *(a1 + 608);
  if (v5)
  {
    v4 = sub_10053A188(v5, 9, v4);
  }

  sub_10053A108(*(a1 + 648), 9, v4, 0);
  ctu::ns::AutoPool::~AutoPool(&v9);
  return 1;
}

void sub_1004DAE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::updateAccountWithFeatureOrService(entitlements::CEHTTPDriver *a1, id *a2)
{
  entitlements::CEHTTPDriver::updateAccountWithFeatureOrService_sync(a1, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  return 1;
}

uint64_t entitlements::CEHTTPDriver::updateAccountWithFeatureOrService_sync(uint64_t a1, id *a2)
{
  v8 = 0;
  ctu::ns::AutoPool::AutoPool(&v8);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v4 = sub_100534000(a2);
  sub_10053A1F4(*(a1 + 648), 10, v4, 0);
  ctu::ns::AutoPool::~AutoPool(&v8);
  return 1;
}

void sub_1004DAF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::getAuthorizationTokens(entitlements::CEHTTPDriver *a1, uint64_t *a2, int **a3)
{
  v12 = 0;
  ctu::ns::AutoPool::AutoPool(&v12);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = *(a1 + 81);
  v7 = sub_10053402C(a3);
  v8 = sub_100536F38(v6, v7);
  entitlements::CEHTTPDriver::applyActionPolicy(a1, v8, a2);
  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
  ctu::ns::AutoPool::~AutoPool(&v12);
  return 1;
}

void sub_1004DAFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::issueGenericRequestGET(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = sub_100534000(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_10053A188(v7, a2, v6);
  }

  sub_10053A108(*(a1 + 648), a2, v6, *(a3 + 8));
  ctu::ns::AutoPool::~AutoPool(&v11);
  return 1;
}

void sub_1004DB094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::issueGenericRequestSET(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  entitlements::CEHTTPDriver::addNewPendingQueryIfNeeded(a1, -1, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v6 = sub_100534000(a3);
  v7 = *(a1 + 608);
  if (v7)
  {
    v6 = sub_10053A188(v7, a2, v6);
  }

  sub_10053A1F4(*(a1 + 648), a2, v6, *(a3 + 8));
  ctu::ns::AutoPool::~AutoPool(&v11);
  return 1;
}

void sub_1004DB148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::ns::AutoPool::~AutoPool(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleDataContextError_sync(uint64_t a1, uint64_t a2)
{
  v2 = ***(a1 + 128);
  if (!*(v2 + 49) && *a2 == *(v2 + 52) && (*(a2 + 9) & 0x80) != 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(v2);
      v6 = *(a1 + 160);
      toString();
      if (v9 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136316162;
      v11 = v5;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v6;
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = p_p;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sActivation of Dedicated APN seems to fail '%s', try to retry later.", buf, 0x34u);
      if (v9 < 0)
      {
        operator delete(__p);
      }
    }

    entitlements::CEHTTPDriver::connectionIssueNeedToBackoff(a1);
  }
}

void entitlements::CEHTTPDriver::connectionIssueNeedToBackoff(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 100) + 1;
  *(this + 100) = v2;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(this + 16));
    v5 = *(this + 20);
    v6 = *(this + 100);
    *buf = 136316162;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v5;
    v26 = 2080;
    v27 = "";
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sConnection reported failure on one of actions, fConnectionErrorBackoffCnt = %d", buf, 0x30u);
    v2 = *(this + 100);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    *buf = 136316162;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v8;
    v26 = 2080;
    v27 = "";
    v28 = 1024;
    v29 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sengaging %u seconds block on communication", buf, 0x30u);
  }

  sub_100004AA0(buf, this + 1);
  v10 = *buf;
  v9 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }

  Registry::getTimerService(buf, *(this + 6));
  v11 = *buf;
  sub_10000501C(__p, "connection initiated backoff");
  v12 = *(this + 3);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_1004E39C8;
  aBlock[3] = &unk_101E518E8;
  aBlock[4] = this;
  aBlock[5] = v10;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = _Block_copy(aBlock);
  sub_100D23364(v11, __p, 1, 1000000 * v2, &object, &v18);
  v13 = v22;
  v22 = 0;
  v14 = *(this + 51);
  *(this + 51) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v22;
    v22 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_1004DB5F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleConnectionStateChange_sync(uint64_t a1, uint64_t a2)
{
  v2 = ***(a1 + 128);
  if (!*(v2 + 49))
  {
    v6 = *(a2 + 8);
    v4 = a2 + 8;
    v5 = v6;
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *(v2 + 52);
    v8 = v4;
    do
    {
      if (*(v5 + 32) >= v7)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < v7));
    }

    while (v5);
    if (v8 == v4 || v7 < *(v8 + 32))
    {
LABEL_10:
      v8 = v4;
    }

    v9 = *(a1 + 792);
    if (v9)
    {
      v10 = *(v2 + 52);
      v11 = a1 + 792;
      do
      {
        if (*(v9 + 32) >= v10)
        {
          v11 = v9;
        }

        v9 = *(v9 + 8 * (*(v9 + 32) < v10));
      }

      while (v9);
      if (v11 != a1 + 792 && v10 >= *(v11 + 32))
      {
        v14 = *(v11 + 48);
        v12 = v11 + 48;
        v13 = v14;
        if (v14)
        {
          v15 = v12;
          do
          {
            if (*(v13 + 32) >= 15)
            {
              v15 = v13;
            }

            v13 = *(v13 + 8 * (*(v13 + 32) < 15));
          }

          while (v13);
          if (v15 != v12 && *(v15 + 32) <= 15)
          {
            v16 = *(v15 + 44);
            if (v8 == v4)
            {
              goto LABEL_34;
            }

            v19 = *(v8 + 48);
            v17 = v8 + 48;
            v18 = v19;
            if (!v19)
            {
              goto LABEL_34;
            }

            v20 = v17;
            do
            {
              if (*(v18 + 32) >= 15)
              {
                v20 = v18;
              }

              v18 = *(v18 + 8 * (*(v18 + 32) < 15));
            }

            while (v18);
            if (v20 == v17 || *(v20 + 32) > 15)
            {
LABEL_34:
              v21 = 0;
            }

            else
            {
              v21 = *(v20 + 44) == 2;
            }

            if (v16 == 2 && !v21)
            {
              sub_1009C43FC(a1, "connection activation");
              v22 = *(a1 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = PersonalityInfo::logPrefix(***(a1 + 128));
                v24 = *(a1 + 160);
                v25 = 136315906;
                v26 = v23;
                v27 = 2080;
                v28 = " ";
                v29 = 2080;
                v30 = v24;
                v31 = 2080;
                v32 = "";
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sInitiate pending query on context activate", &v25, 0x2Au);
              }

              entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
            }
          }
        }
      }
    }
  }
}

void entitlements::CEHTTPDriver::handleDataAttached_sync(entitlements::CEHTTPDriver *this)
{
  v1 = ***(this + 16);
  if (!*(v1 + 49))
  {
    v3 = *(this + 102);
    if (v3)
    {
      v4 = *(v1 + 52);
      v5 = this + 816;
      do
      {
        if (*(v3 + 7) >= v4)
        {
          v5 = v3;
        }

        v3 = *&v3[8 * (*(v3 + 7) < v4)];
      }

      while (v3);
      if (v5 != this + 816 && v4 >= *(v5 + 7) && v5[32] == 1)
      {
        sub_1009C18B8(this, "Became data attached", 0);
        v6 = *(this + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(this + 16));
          v8 = *(this + 20);
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = v8;
          v15 = 2080;
          v16 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sBecame data attached, issuing any pending transactions", &v9, 0x2Au);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
      }
    }
  }
}

unint64_t entitlements::CEHTTPDriver::postprocessAuthResponse(uint64_t a1, uint64_t a2)
{
  if (sub_10053588C(*(a1 + 608), 28))
  {
    if (*(a1 + 536) == 1)
    {
      if (*(a1 + 535) < 0)
      {
        operator delete(*(a1 + 512));
      }

      *(a1 + 536) = 0;
    }

    v5 = *(*a2 + 448);
    v4 = *(*a2 + 456);
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (!sub_10053588C(*(a1 + 608), 29))
  {
    v9 = 1;
    return (v9 << 8) | 0x177000000001;
  }

  v5 = *(*a2 + 464);
  v4 = *(*a2 + 472);
  if (v4)
  {
LABEL_7:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_8:
  if (v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 128));
      v8 = *(a1 + 160);
      *buf = 136316162;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v12 = 2080;
      v13 = v8;
      v14 = 2080;
      v15 = "";
      v16 = 2080;
      v17 = "authentication";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Received response: %s", buf, 0x34u);
    }

    sub_1004FB0D8();
  }

  v9 = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  return (v9 << 8) | 0x177000000001;
}

void sub_1004DC918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (a61 == 1 && __p)
  {
    operator delete(__p);
  }

  if (a42)
  {
    sub_100004A34(a42);
  }

  sub_100004A34(v67);
  if (a43)
  {
    operator delete(a43);
  }

  if (*(v68 - 89) < 0)
  {
    operator delete(*(v68 - 112));
  }

  if (a53 == 1 && a52 < 0)
  {
    operator delete(a47);
  }

  if (LOBYTE(STACK[0x378]) == 1)
  {
    sub_100220C2C(&a66);
  }

  if (a55)
  {
    sub_100004A34(a55);
  }

  if (v66)
  {
    sub_100004A34(v66);
  }

  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::handle_EAPAKA_Challenge_sync(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    **(a1 + 464) = 0;
    *(a1 + 472) = 0;
  }

  else
  {
    *(a1 + 464) = 0;
    *(a1 + 487) = 0;
  }

  if (*(a1 + 511) < 0)
  {
    **(a1 + 488) = 0;
    *(a1 + 496) = 0;
  }

  else
  {
    *(a1 + 488) = 0;
    *(a1 + 511) = 0;
  }

  v11 = 0;
  ctu::ns::AutoPool::AutoPool(&v11);
  v2 = *(a1 + 172);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = PersonalityInfo::logPrefix(***(a1 + 128));
      v6 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v5;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v13 = 2080;
      v14 = v6;
      v15 = 2080;
      v16 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sReceived an EAP_AKA challenge", buf, 0x2Au);
    }

    ctu::base64::decode();
    memset(lpsrc, 0, sizeof(lpsrc));
    sub_1009F51FC(lpsrc);
  }

  if (v4)
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 128));
    v8 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v13 = 2080;
    v14 = v8;
    v15 = 2080;
    v16 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsupported Authentication Type", buf, 0x2Au);
  }

  ctu::ns::AutoPool::~AutoPool(&v11);
  return 0;
}

void sub_1004DD328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, char a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::__shared_weak_count *a35, void *__p, uint64_t a37)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_1004EAB88(v40 - 208);
  sub_10004EC58(v38 | 8, a25);
  sub_10004EC58(&a28, a29);
  if (a35)
  {
    sub_100004A34(a35);
  }

  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = *(v37 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(v37 + 128));
      v46 = *(v37 + 160);
      v47 = (*(*v43 + 16))(v43);
      *(v40 - 208) = 136316162;
      *(v39 + 148) = v45;
      *(v40 - 196) = 2080;
      *(v39 + 158) = " ";
      *(v40 - 186) = 2080;
      *(v40 - 184) = v46;
      *(v40 - 176) = 2080;
      *(v39 + 178) = "";
      *(v40 - 166) = 2080;
      *(v39 + 188) = v47;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sEAP exception: %s", (v40 - 208), 0x34u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1004DCFD0);
  }

  ctu::ns::AutoPool::~AutoPool((v40 - 224));
  _Unwind_Resume(a1);
}

atomic_uint **sub_1004DD510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v11 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v9 = *(a3 + 16);
  }

  sub_1004FB298((a1 + 24), __dst);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__dst[0]);
  }

  v6 = sub_1005A2298((a1 + 8));
  return sub_1004FB4B0(v6, a2, a3);
}

void sub_1004DD5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1004DD610(const void **a1)
{
  sub_10000A1EC(a1 + 2);
  sub_10000A1EC(a1 + 1);

  return sub_10001021C(a1);
}

void entitlements::CEHTTPDriver::prepareAnActionResult(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X4>, uint64_t a4@<X5>, const void **a5@<X6>, uint64_t a6@<X8>, uint64_t *a7)
{
  v17 = 0uLL;
  sub_10053DF18(a1, a2, &v17);
  v11 = v17;
  if (v17)
  {
    sub_100010024(&v15, a5);
    v12 = a7[1];
    v13 = *a7;
    v14 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v11 + 24))(&v16, v11, a3, &v15, a4, &v13);
    *a6 = v16;
    v16 = 0uLL;
    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_10001021C(&v15);
  }

  if (*(&v17 + 1))
  {
    sub_100004A34(*(&v17 + 1));
  }

  if (!v11)
  {
    *a6 = 0;
    *(a6 + 8) = 0;
  }
}

void sub_1004DD74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10001021C(&a12);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::postAnActionResult(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, const void **a6, const void **a7)
{
  if (a3 == 12)
  {
    v14 = *a5;
    v15 = a5[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4 == 3 && *v14 == 6000)
    {
      *(a1 + 416) = **(v14 + 24);
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v21 = *(a1 + 160);
        v18 = asStringBool(*(a1 + 416));
        *buf = 136316162;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v28 = 2080;
        v29 = v21;
        v30 = 2080;
        v31 = "";
        v32 = 2080;
        v33 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSetting update push token acknowledged: %s", buf, 0x34u);
      }
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  v26 = 0uLL;
  sub_10053DF18(a2, a3, &v26);
  v19 = v26;
  if (v26)
  {
    if (*(a1 + 124))
    {
      v24 = 0;
      v25 = 0;
    }

    else
    {
      sub_100004AA0(buf, (a1 + 8));
      v20 = *&buf[8];
      v24 = *buf;
      v25 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
      }
    }

    sub_100010024(&v23, a6);
    sub_100060E84(&v22, a7);
    (*(*v19 + 32))(v19, &v24, a1 + 104, a4, a5, &v23, &v22);
    sub_10000A1EC(&v22);
    sub_10001021C(&v23);
    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }
  }

  if (*(&v26 + 1))
  {
    sub_100004A34(*(&v26 + 1));
  }
}

void sub_1004DD9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19)
{
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::postActionResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (sub_10053588C(a3, 0))
  {
    goto LABEL_10;
  }

  v9 = **a4;
  v8 = (*a4)[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
    if (!v9)
    {
      goto LABEL_10;
    }

    v9 = **a4;
    v10 = (*a4)[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = 0;
  }

  v23 = v9;
  v24 = v10;
  v21 = 0;
  v22 = 0;
  entitlements::CEHTTPDriver::postAnActionResult(a1, a3, 0, a2, &v23, &v22, &v21);
  sub_10000A1EC(&v21);
  sub_10001021C(&v22);
  if (v24)
  {
    sub_100004A34(v24);
  }

LABEL_10:
  for (i = 0; i != 28; ++i)
  {
    cf = 0;
    v26 = 0;
    v27[0] = 0;
    sub_1005354F0(a3, i, &cf);
    v12 = cf;
    if (cf)
    {
      v13 = *&(*a4)[2 * i];
      v14 = (*a4)[2 * i + 1];
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = v13;
      v19 = v12;
      CFRetain(v12);
      v18 = v27[0];
      if (v27[0])
      {
        CFRetain(v27[0]);
      }

      entitlements::CEHTTPDriver::postAnActionResult(a1, a3, i, a2, &v20, &v19, &v18);
      sub_10000A1EC(&v18);
      sub_10001021C(&v19);
      if (*(&v20 + 1))
      {
        sub_100004A34(*(&v20 + 1));
      }
    }

    sub_10000A1EC(v27);
    sub_10000A1EC(&v26);
    sub_10001021C(&cf);
  }

  v15 = (*a4)[26];
  v16 = (*a4)[27];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v15)
    {
LABEL_28:
      sub_100004A34(v16);
      return;
    }

    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else if (!v15)
  {
    return;
  }

  if (a2 == 3)
  {
    v17 = *(v15 + 24);
    if (v17)
    {
      cf = _NSConcreteStackBlock;
      v26 = 3221225472;
      v27[0] = sub_1004EE060;
      v27[1] = &unk_101E51F70;
      v27[2] = v17;
      sub_1004EDEB4(0x80109);
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
    goto LABEL_28;
  }
}

void sub_1004DDC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  if (v21)
  {
    sub_100004A34(v21);
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

const void **entitlements::CEHTTPDriver::prepareActionResults(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  do
  {
    cf = 0;
    v25 = 0;
    v26 = 0;
    sub_1005354F0(a3, v7, &cf);
    v8 = cf;
    if (cf)
    {
      v22 = 0;
      v23 = 0;
      v9 = *(*a4 + v6);
      v10 = *(*a4 + v6 + 8);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v21 = v9;
      v20[0] = 0;
      v20[4] = 0;
      v19 = v8;
      CFRetain(v8);
      v18 = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      v17[0] = 0;
      v17[1] = 0;
      entitlements::CEHTTPDriver::prepareAnActionResult(a3, v7, &v21, v20, &v19, &v22, v17);
      sub_10000A1EC(&v18);
      sub_10001021C(&v19);
      if (*(&v21 + 1))
      {
        sub_100004A34(*(&v21 + 1));
      }

      v11 = v22;
      v12 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *a4;
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v13 = *a4;
      }

      v14 = (v13 + v6);
      v15 = v14[1];
      *v14 = v11;
      v14[1] = v12;
      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v12)
      {
        sub_100004A34(v12);
        sub_100004A34(v12);
      }
    }

    sub_10000A1EC(&v26);
    sub_10000A1EC(&v25);
    result = sub_10001021C(&cf);
    ++v7;
    v6 += 16;
  }

  while (v6 != 448);
  return result;
}

void sub_1004DDE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, std::__shared_weak_count *);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1004DD610(va2);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::validateAndParseHttpResponse_sync(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = a1 + 48;
  v5 = *(a1 + 48);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  v7 = sub_1004DE990(v5, ***(v6 + 80), *(v6 + 80) + 64, v54);
  if ((v7 & 1) == 0 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 128));
    sub_101772A64(v8, a1, v79);
  }

  v53 = 0;
  ctu::ns::AutoPool::AutoPool(&v53);
  if (*(a1 + 744))
  {
    *(*(a1 + 744) + 8) = std::chrono::system_clock::now();
  }

  v9 = (a1 + 608);
  v10 = *(a1 + 608);
  if (!v10 || (sub_1005358AC(v10) & 1) == 0)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 128));
      v25 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v24;
      v59 = 2080;
      v60 = " ";
      v61 = 2080;
      v62 = v25;
      v63 = 2080;
      v64 = "";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnsolicited Response, ignoring", buf, 0x2Au);
    }

    if (!v7 || *(a1 + 120))
    {
      goto LABEL_51;
    }

    sub_1004F0D24(buf, 0x1EuLL);
    sub_1004DECA8((a1 + 608), v6, a1 + 144, a1 + 432, buf, 0, 0x100000003, v54, 0, 0, 0);
    goto LABEL_46;
  }

  if (!*a2)
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 128));
      v28 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v27;
      v59 = 2080;
      v60 = " ";
      v61 = 2080;
      v62 = v28;
      v63 = 2080;
      v64 = "";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResponse: <nil>", buf, 0x2Au);
    }

    if (!v7 || *(a1 + 120))
    {
      goto LABEL_51;
    }

    sub_1004F0D24(buf, 0x1EuLL);
    sub_1004DECA8((a1 + 608), v6, a1 + 144, a1 + 432, buf, 0, 0x100000001, v54, 0, 0, 0);
LABEL_46:
    v56[0] = buf;
    sub_1000212F4(v56);
LABEL_51:
    v29 = 0;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_52;
  }

  v11 = (*(**a2 + 24))(*a2);
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(***(a1 + 128));
    v13 = *(a1 + 160);
    (*(**a2 + 64))(v56);
    if (v57 >= 0)
    {
      v14 = v56;
    }

    else
    {
      v14 = v56[0];
    }

    v44 = v14;
    v43 = (*(**a2 + 16))();
    (*(**a2 + 16))();
    ctu::Http::asString();
    if (v52 >= 0)
    {
      v16 = v51;
    }

    else
    {
      v16 = v51[0];
    }

    v41 = v16;
    v42 = v13;
    ctu::Http::asString(v49, v11, v15);
    if (v50 >= 0)
    {
      v17 = v49;
    }

    else
    {
      v17 = v49[0];
    }

    v40 = v17;
    v18 = (*(**a2 + 32))();
    (*(**a2 + 16))();
    (*(**a2 + 32))();
    ctu::Http::asString();
    if (v48 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    *buf = 136317698;
    *&buf[4] = v45;
    v59 = 2080;
    v60 = " ";
    v61 = 2080;
    v62 = v42;
    v63 = 2080;
    v64 = "";
    v65 = 2080;
    v66 = v44;
    v67 = 1024;
    v68 = v43;
    v69 = 2080;
    v70 = v41;
    v71 = 1024;
    v72 = v11;
    v73 = 2080;
    v74 = v40;
    v75 = 2048;
    v76 = v18;
    v77 = 2080;
    v78 = v19;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sResponse Status: '%s', Result: %d (%s), Status: '%d' (%s), ErrorCode: '%ld' (%s)", buf, 0x68u);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = (a1 + 608);
    if (v50 < 0)
    {
      operator delete(v49[0]);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    if (v57 < 0)
    {
      operator delete(v56[0]);
    }

    v12 = *(a1 + 40);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    PersonalityInfo::logPrefix(***(a1 + 128));
    (*(**a2 + 48))(v51);
    sub_101772ACC();
  }

  if (*(a1 + 744))
  {
    *(*(a1 + 744) + 16) = (*(**a2 + 32))();
  }

  if ((*(**a2 + 16))() == 1)
  {
    if (v11 == 200)
    {
      __p[0] = 0;
      v20 = *v9;
      (*(**a2 + 40))(buf);
      v21 = sub_10053C9AC(v20, *buf, a3);
      sub_10002D760(buf);
      if (v21)
      {
        if (v7 && !*(a1 + 120))
        {
          v22 = sub_100552758(*v9);
          sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, a3, 0x1000000C8, &_mh_execute_header, v54, 0, 0, v22 | &_mh_execute_header);
        }
      }

      else
      {
        v36 = v9;
        v37 = *(a1 + 40);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = PersonalityInfo::logPrefix(***(a1 + 128));
          v39 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v38;
          v59 = 2080;
          v60 = " ";
          v61 = 2080;
          v62 = v39;
          v63 = 2080;
          v64 = "";
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sCouldn't parse responses", buf, 0x2Au);
        }

        if (v7 && !*(a1 + 120))
        {
          sub_1004F0D24(buf, 0x1EuLL);
          sub_1004DECA8(v36, v6, a1 + 144, a1 + 432, buf, 0x1000000C8, 0x100000002, v54, 0, 0, 0);
          v49[0] = buf;
          sub_1000212F4(v49);
        }
      }

      sub_100010250(__p);
      v29 = v21;
      v11 = 200;
    }

    else
    {
      if (v7 && !*(a1 + 120))
      {
        sub_1004F0D24(buf, 0x1EuLL);
        v35 = (*(**a2 + 32))();
        sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, buf, v11 | &_mh_execute_header, 0, v54, v35, 1, 0);
        v49[0] = buf;
        sub_1000212F4(v49);
      }

      v29 = 1;
    }
  }

  else
  {
    if (v7 && !*(a1 + 120))
    {
      sub_1004F0D24(buf, 0x1EuLL);
      v34 = (*(**a2 + 32))();
      sub_1004DECA8(v9, v6, a1 + 144, a1 + 432, buf, 0, 0, v54, v34, 1, 0);
      v49[0] = buf;
      sub_1000212F4(v49);
    }

    v29 = 0;
  }

LABEL_52:
  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(***(a1 + 128));
    v32 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v31;
    v59 = 2080;
    v60 = " ";
    v61 = 2080;
    v62 = v32;
    v63 = 2080;
    v64 = "";
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%svalidateAndParseHttpResponse_sync  ", buf, 0x2Au);
  }

  ctu::ns::AutoPool::~AutoPool(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54[0]);
  }

  return v29 | (v11 << 32);
}

void sub_1004DE868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, char a49)
{
  sub_1000212F4(&a23);
  sub_100010250(&a20);
  ctu::ns::AutoPool::~AutoPool(&a35);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004DE990(Registry *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 49) != 1)
  {
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    sub_100A34BC8(v24);
    v18[0] = v22;
    v18[1] = &v19;
    sub_1004EE0B4(v18, v24);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    sub_100168A48(v22, &v19, v24);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v24;
    *(a4 + 16) = v25;
    if (SHIBYTE(v21) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    return 1;
  }

  v19 = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(a1);
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
  v24[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v24);
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
      goto LABEL_20;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_20:
  (**v14)(&v19, v14, a2 + 24);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
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
    *v24 = 0u;
    v35 = 1;
    memset(v36, 0, sizeof(v36));
    v37 = 0u;
    v38 = 0;
    (*(*v19 + 104))(v19, v24);
    sub_100168A48(v36, &v37, v22);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = *v22;
    *(a4 + 16) = v23;
    sub_1000FF134(v24);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v16)
  {
    return 1;
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  result = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  return result;
}

void sub_1004DEC40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  sub_1000FF134(&a23);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1004DECA8(const void *a1, Registry **a2, int a3, uint64_t a4, void ***a5, int64_t a6, uint64_t a7, int a8, int64_t a9, uint64_t a10, int64_t a11)
{
  value = a6;
  v130 = a7;
  ServiceMap = Registry::getServiceMap(*a2);
  v14 = ServiceMap;
  if (v15 < 0)
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
  __p[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, __p);
  if (!v19)
  {
    v20 = 0;
LABEL_9:
    std::mutex::unlock(v14);
    v22 = 0;
    v23 = 1;
    if (!v20)
    {
      goto LABEL_325;
    }

    goto LABEL_10;
  }

  v20 = v19[3];
  v21 = v19[4];
  if (!v21)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = v21;
  sub_100004A34(v21);
  v23 = 0;
  if (!v20)
  {
    goto LABEL_325;
  }

LABEL_10:
  v86 = v23;
  v87 = v22;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v158, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v158[0] = __dst;
  }

  v106[0] = 0;
  if (SHIBYTE(v158[0].__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, v158[0].__r_.__value_.__l.__data_, v158[0].__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&v158[0].__r_.__value_.__l.__data_;
    *&v119 = *(&v158[0].__r_.__value_.__l + 2);
  }

  __src.__r_.__value_.__r.__words[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v24 = v106[0];
    v106[0] = __src.__r_.__value_.__l.__data_;
    v154.__r_.__value_.__r.__words[0] = v24;
    sub_100005978(&v154.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v119) < 0)
  {
    operator delete(__p[0]);
  }

  v138[0] = v106[0];
  v106[0] = 0;
  sub_100005978(v106);
  if (SHIBYTE(v158[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v158[0].__r_.__value_.__l.__data_);
  }

  v25 = [[NSURLComponents componentsWithString:?]];
  sub_100005978(v138);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  memset(&__src, 0, sizeof(__src));
  sub_10000C320(__p);
  memset(v158, 0, 24);
  ctu::cf::assign();
  v154 = v158[0];
  sub_10000C030(&v119);
  sub_10000C030(&v119);
  *(&v119 + *(v119 - 24) + 8) = *(&v119 + *(v119 - 24) + 8) & 0xFFFFFFB5 | 2;
  std::ostream::operator<<();
  sub_1004F0B4C(&v119 + 8, &__src);
  if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v154.__r_.__value_.__l.__data_);
  }

  *&v119 = v26;
  if (SHIBYTE(v124) < 0)
  {
    operator delete(*(&v123 + 1));
  }

  std::locale::~locale(&v120);
  std::iostream::~basic_iostream();
  std::ios::~ios();

  v158[0].__r_.__value_.__r.__words[0] = 0;
  v27 = xpc_dictionary_create(0, 0, 0);
  v28 = v27;
  if (v27)
  {
    v158[0].__r_.__value_.__r.__words[0] = v27;
  }

  else
  {
    v28 = xpc_null_create();
    v158[0].__r_.__value_.__r.__words[0] = v28;
    if (!v28)
    {
      v29 = xpc_null_create();
      v28 = 0;
      goto LABEL_38;
    }
  }

  if (xpc_get_type(v28) != &_xpc_type_dictionary)
  {
    v29 = xpc_null_create();
LABEL_38:
    v158[0].__r_.__value_.__r.__words[0] = v29;
    goto LABEL_39;
  }

  xpc_retain(v28);
LABEL_39:
  xpc_release(v28);
  if (BYTE4(v130) == 1)
  {
    if ((v130 - 1) >= 3)
    {
      v30 = 3;
    }

    else
    {
      v30 = qword_101812098[(v130 - 1)];
    }

    v116 = xpc_int64_create(v30);
    if (!v116)
    {
      v116 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "error_cause_code";
    sub_10000F688(__p, &v116, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v116);
    v116 = 0;
  }

  if (BYTE4(value) == 1)
  {
    v114 = xpc_int64_create(value);
    if (!v114)
    {
      v114 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "http_response_code";
    sub_10000F688(__p, &v114, &v115);
    xpc_release(v115);
    v115 = 0;
    xpc_release(v114);
    v114 = 0;
  }

  if (a10)
  {
    v112 = xpc_int64_create(a9);
    if (!v112)
    {
      v112 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "network_error_code";
    sub_10000F688(__p, &v112, &v113);
    xpc_release(v113);
    v113 = 0;
    xpc_release(v112);
    v112 = 0;
  }

  if ((a11 & 0x100000000) != 0)
  {
    v110 = xpc_int64_create(a11);
    if (!v110)
    {
      v110 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "response_time";
    sub_10000F688(__p, &v110, &v111);
    xpc_release(v111);
    v111 = 0;
    xpc_release(v110);
    v110 = 0;
  }

  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_src = &__src;
  }

  else
  {
    p_src = __src.__r_.__value_.__r.__words[0];
  }

  v108 = xpc_string_create(p_src);
  if (!v108)
  {
    v108 = xpc_null_create();
  }

  __p[0] = v158;
  __p[1] = "source";
  sub_10000F688(__p, &v108, &v109);
  xpc_release(v109);
  v109 = 0;
  xpc_release(v108);
  v107 = v158[0].__r_.__value_.__r.__words[0];
  v108 = 0;
  if (v158[0].__r_.__value_.__r.__words[0])
  {
    xpc_retain(v158[0].__r_.__value_.__l.__data_);
  }

  else
  {
    v107 = xpc_null_create();
  }

  (*(*v20 + 16))(v20, "commCenterEntitlementResponse", &v107);
  xpc_release(v107);
  v107 = 0;
  xpc_release(v158[0].__r_.__value_.__l.__data_);
  v32 = 0;
  v106[0] = a1;
  v106[1] = &value;
  v106[2] = &v130;
  do
  {
    if (v32 <= 0x1D && ((1 << v32) & 0x30000001) != 0)
    {
      goto LABEL_69;
    }

    v33 = *&(*a5)[2 * v32];
    v89 = v33;
    v34 = (*a5)[2 * v32 + 1];
    if (*(&v33 + 1))
    {
      atomic_fetch_add_explicit((*(&v33 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if (v33)
    {
      v158[0].__r_.__value_.__r.__words[0] = 0;
      v35 = xpc_dictionary_create(0, 0, 0);
      v36 = v35;
      if (v35)
      {
        v158[0].__r_.__value_.__r.__words[0] = v35;
      }

      else
      {
        v36 = xpc_null_create();
        v158[0].__r_.__value_.__r.__words[0] = v36;
        if (!v36)
        {
          v37 = xpc_null_create();
          v36 = 0;
          goto LABEL_81;
        }
      }

      if (xpc_get_type(v36) == &_xpc_type_dictionary)
      {
        xpc_retain(v36);
LABEL_82:
        xpc_release(v36);
        *__p = v89;
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1004EE13C(v106, v32, __p, v158);
        if (v34)
        {
          sub_100004A34(v34);
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v38 = &__src;
        }

        else
        {
          v38 = __src.__r_.__value_.__r.__words[0];
        }

        v104 = xpc_string_create(v38);
        if (!v104)
        {
          v104 = xpc_null_create();
        }

        __p[0] = v158;
        __p[1] = "source";
        sub_10000F688(__p, &v104, &v105);
        xpc_release(v105);
        v105 = 0;
        xpc_release(v104);
        v103 = v158[0].__r_.__value_.__r.__words[0];
        v104 = 0;
        if (v158[0].__r_.__value_.__r.__words[0])
        {
          xpc_retain(v158[0].__r_.__value_.__l.__data_);
        }

        else
        {
          v103 = xpc_null_create();
        }

        (*(*v20 + 16))(v20, "commCenterEntitlementActionResponse", &v103);
        xpc_release(v103);
        v103 = 0;
        xpc_release(v158[0].__r_.__value_.__l.__data_);
        goto LABEL_95;
      }

      v37 = xpc_null_create();
LABEL_81:
      v158[0].__r_.__value_.__r.__words[0] = v37;
      goto LABEL_82;
    }

LABEL_95:
    if (v34)
    {
      sub_100004A34(v34);
    }

LABEL_69:
    ++v32;
  }

  while (v32 != 30);
  v39 = (*a5)[56];
  v40 = (*a5)[57];
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v39)
  {
    v158[0].__r_.__value_.__r.__words[0] = 0;
    v41 = xpc_dictionary_create(0, 0, 0);
    v42 = v41;
    if (v41)
    {
      v158[0].__r_.__value_.__r.__words[0] = v41;
      goto LABEL_103;
    }

    v42 = xpc_null_create();
    v158[0].__r_.__value_.__r.__words[0] = v42;
    if (v42)
    {
LABEL_103:
      if (xpc_get_type(v42) != &_xpc_type_dictionary)
      {
        v43 = xpc_null_create();
        goto LABEL_107;
      }

      xpc_retain(v42);
    }

    else
    {
      v43 = xpc_null_create();
      v42 = 0;
LABEL_107:
      v158[0].__r_.__value_.__r.__words[0] = v43;
    }

    xpc_release(v42);
    __p[0] = v39;
    __p[1] = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004EE13C(v106, 28, __p, v158);
    if (v40)
    {
      sub_100004A34(v40);
    }

    if (*v39 == 6000)
    {
      v44 = v39[3];
      if (v44)
      {
        if (*(v44 + 32) == 1)
        {
          v101 = xpc_BOOL_create(1);
          if (!v101)
          {
            v101 = xpc_null_create();
          }

          __p[0] = v158;
          __p[1] = "has_app_token";
          sub_10000F688(__p, &v101, &v102);
          xpc_release(v102);
          v102 = 0;
          xpc_release(v101);
          v101 = 0;
        }
      }
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = &__src;
    }

    else
    {
      v45 = __src.__r_.__value_.__r.__words[0];
    }

    v99 = xpc_string_create(v45);
    if (!v99)
    {
      v99 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "source";
    sub_10000F688(__p, &v99, &v100);
    xpc_release(v100);
    v100 = 0;
    xpc_release(v99);
    v98 = v158[0].__r_.__value_.__r.__words[0];
    v99 = 0;
    if (v158[0].__r_.__value_.__r.__words[0])
    {
      xpc_retain(v158[0].__r_.__value_.__l.__data_);
    }

    else
    {
      v98 = xpc_null_create();
    }

    (*(*v20 + 16))(v20, "commCenterEntitlementActionResponse", &v98);
    xpc_release(v98);
    v98 = 0;
    xpc_release(v158[0].__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    sub_100004A34(v40);
  }

  v46 = (*a5)[58];
  v47 = (*a5)[59];
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v46)
  {
    v158[0].__r_.__value_.__r.__words[0] = 0;
    v48 = xpc_dictionary_create(0, 0, 0);
    v49 = v48;
    if (v48)
    {
      v158[0].__r_.__value_.__r.__words[0] = v48;
      goto LABEL_135;
    }

    v49 = xpc_null_create();
    v158[0].__r_.__value_.__r.__words[0] = v49;
    if (v49)
    {
LABEL_135:
      if (xpc_get_type(v49) != &_xpc_type_dictionary)
      {
        v50 = xpc_null_create();
        goto LABEL_139;
      }

      xpc_retain(v49);
    }

    else
    {
      v50 = xpc_null_create();
      v49 = 0;
LABEL_139:
      v158[0].__r_.__value_.__r.__words[0] = v50;
    }

    xpc_release(v49);
    __p[0] = v46;
    __p[1] = v47;
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004EE13C(v106, 29, __p, v158);
    if (v47)
    {
      sub_100004A34(v47);
    }

    if (*v46 == 6000)
    {
      v51 = v46[3];
      if (v51)
      {
        if (*(v51 + 32) == 1)
        {
          v96 = xpc_BOOL_create(1);
          if (!v96)
          {
            v96 = xpc_null_create();
          }

          __p[0] = v158;
          __p[1] = "has_app_token";
          sub_10000F688(__p, &v96, &v97);
          xpc_release(v97);
          v97 = 0;
          xpc_release(v96);
          v96 = 0;
        }
      }
    }

    if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = &__src;
    }

    else
    {
      v52 = __src.__r_.__value_.__r.__words[0];
    }

    v94 = xpc_string_create(v52);
    if (!v94)
    {
      v94 = xpc_null_create();
    }

    __p[0] = v158;
    __p[1] = "source";
    sub_10000F688(__p, &v94, &v95);
    xpc_release(v95);
    v95 = 0;
    xpc_release(v94);
    v93 = v158[0].__r_.__value_.__r.__words[0];
    v94 = 0;
    if (v158[0].__r_.__value_.__r.__words[0])
    {
      xpc_retain(v158[0].__r_.__value_.__l.__data_);
    }

    else
    {
      v93 = xpc_null_create();
    }

    (*(*v20 + 16))(v20, "commCenterEntitlementActionResponse", &v93);
    xpc_release(v93);
    v93 = 0;
    xpc_release(v158[0].__r_.__value_.__l.__data_);
  }

  if (v47)
  {
    sub_100004A34(v47);
  }

  v53 = **a5;
  v54 = (*a5)[1];
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v53)
  {
    v55 = v53[3];
    if (v55)
    {
      if (*v55 == 1)
      {
        v158[0].__r_.__value_.__r.__words[0] = 0;
        v56 = xpc_dictionary_create(0, 0, 0);
        v57 = v56;
        if (v56)
        {
          v158[0].__r_.__value_.__r.__words[0] = v56;
          goto LABEL_169;
        }

        v57 = xpc_null_create();
        v158[0].__r_.__value_.__r.__words[0] = v57;
        if (v57)
        {
LABEL_169:
          if (xpc_get_type(v57) != &_xpc_type_dictionary)
          {
            v58 = xpc_null_create();
            goto LABEL_173;
          }

          xpc_retain(v57);
        }

        else
        {
          v58 = xpc_null_create();
          v57 = 0;
LABEL_173:
          v158[0].__r_.__value_.__r.__words[0] = v58;
        }

        xpc_release(v57);
        __p[0] = v53;
        __p[1] = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1004EE13C(v106, 0, __p, v158);
        if (v54)
        {
          sub_100004A34(v54);
        }

        if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v59 = &__src;
        }

        else
        {
          v59 = __src.__r_.__value_.__r.__words[0];
        }

        v91 = xpc_string_create(v59);
        if (!v91)
        {
          v91 = xpc_null_create();
        }

        __p[0] = v158;
        __p[1] = "source";
        sub_10000F688(__p, &v91, &v92);
        xpc_release(v92);
        v92 = 0;
        xpc_release(v91);
        v90 = v158[0].__r_.__value_.__r.__words[0];
        v91 = 0;
        if (v158[0].__r_.__value_.__r.__words[0])
        {
          xpc_retain(v158[0].__r_.__value_.__l.__data_);
        }

        else
        {
          v90 = xpc_null_create();
        }

        (*(*v20 + 16))(v20, "commCenterEntitlementActionResponse", &v90);
        xpc_release(v90);
        v90 = 0;
        xpc_release(v158[0].__r_.__value_.__l.__data_);
        v55 = v53[3];
      }

      v127 = 0u;
      v125 = 0u;
      memset(v126, 0, sizeof(v126));
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      *__p = 0u;
      LOBYTE(__p[0]) = *v55;
      sub_100172EF0(&__p[1], (v55 + 8));
      sub_1003ED180(&v120, (v55 + 32));
      sub_1003ED1D8(&v121 + 1, (v55 + 56));
      sub_1003ED230(&v123, (v55 + 80));
      *(&v124 + 1) = v53;
      *&v125 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      DWORD2(v125) = value;
      BYTE12(v125) = BYTE4(value);
      LODWORD(v126[0]) = v130;
      BYTE4(v126[0]) = BYTE4(v130);
      if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v126[1], __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v126[1] = __src;
      }

      *&v127 = v20;
      *(&v127 + 1) = v22;
      if ((v86 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v60 = 0;
      while (2)
      {
        if ((sub_100071FDC(__p, v60) & 0x100000000) != 0)
        {
          v61 = sub_100A392D0(__p, v60);
          v62 = v61;
          if ((v61 & 0x100000000) != 0)
          {
            v157 = 0;
            v63 = xpc_dictionary_create(0, 0, 0);
            v64 = v63;
            if (v63)
            {
              v157 = v63;
              goto LABEL_200;
            }

            v64 = xpc_null_create();
            v157 = v64;
            if (v64)
            {
LABEL_200:
              if (xpc_get_type(v64) != &_xpc_type_dictionary)
              {
                v65 = xpc_null_create();
                goto LABEL_204;
              }

              xpc_retain(v64);
            }

            else
            {
              v65 = xpc_null_create();
              v64 = 0;
LABEL_204:
              v157 = v65;
            }

            xpc_release(v64);
            sub_100531844(v60);
            memset(v158, 0, 24);
            ctu::cf::assign();
            v154 = v158[0];
            if ((v158[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v66 = &v154;
            }

            else
            {
              v66 = v154.__r_.__value_.__r.__words[0];
            }

            v155 = xpc_string_create(v66);
            if (!v155)
            {
              v155 = xpc_null_create();
            }

            v158[0].__r_.__value_.__r.__words[0] = &v157;
            v158[0].__r_.__value_.__l.__size_ = "entitlement_type";
            sub_10000F688(v158, &v155, &v156);
            xpc_release(v156);
            v156 = 0;
            xpc_release(v155);
            v155 = 0;
            if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v154.__r_.__value_.__l.__data_);
            }

            v152 = xpc_int64_create(v62);
            if (!v152)
            {
              v152 = xpc_null_create();
            }

            v158[0].__r_.__value_.__r.__words[0] = &v157;
            v158[0].__r_.__value_.__l.__size_ = "entitlement_status";
            sub_10000F688(v158, &v152, &v153);
            xpc_release(v153);
            v153 = 0;
            xpc_release(v152);
            v152 = 0;
            if (**(&v124 + 1) != 6000)
            {
              goto LABEL_224;
            }

            v67 = 0;
            if (BYTE12(v125) != 1 || DWORD2(v125) != 200)
            {
              goto LABEL_225;
            }

            if (BYTE4(v126[0]) != 1)
            {
LABEL_224:
              v67 = 0;
              goto LABEL_225;
            }

            v67 = v62 == 6100 && LODWORD(v126[0]) == 0;
LABEL_225:
            v150 = xpc_BOOL_create(v67);
            if (!v150)
            {
              v150 = xpc_null_create();
            }

            v158[0].__r_.__value_.__r.__words[0] = &v157;
            v158[0].__r_.__value_.__l.__size_ = "is_entitlement_success";
            sub_10000F688(v158, &v150, &v151);
            xpc_release(v151);
            v151 = 0;
            xpc_release(v150);
            v150 = 0;
            if (v60 == 15)
            {
              memset(v158, 0, 24);
              sub_1003ED1D8(v158, &v121 + 8);
              size = v158[0].__r_.__value_.__l.__size_;
              if (v158[0].__r_.__value_.__l.__size_)
              {
                p_size = &v158[0].__r_.__value_.__l.__size_;
                do
                {
                  if (*(size + 32) >= 15)
                  {
                    p_size = size;
                  }

                  size = *(size + 8 * (*(size + 32) < 15));
                }

                while (size);
                if (p_size != &v158[0].__r_.__value_.__r.__words[1] && *(p_size + 8) <= 15)
                {
                  v71 = p_size[5];
                  if (v71)
                  {
                    if (*(v71 + 24) == 1)
                    {
                      v72 = *v71;
                      v85 = *(v71 + 8);
                      if (*v71 != v85)
                      {
                        while (1)
                        {
                          v149 = 0;
                          v73 = xpc_dictionary_create(0, 0, 0);
                          v74 = v73;
                          if (v73)
                          {
                            v149 = v73;
                          }

                          else
                          {
                            v74 = xpc_null_create();
                            v149 = v74;
                            if (!v74)
                            {
                              v75 = xpc_null_create();
                              v74 = 0;
                              goto LABEL_245;
                            }
                          }

                          if (xpc_get_type(v74) != &_xpc_type_dictionary)
                          {
                            v75 = xpc_null_create();
LABEL_245:
                            v149 = v75;
                            goto LABEL_246;
                          }

                          xpc_retain(v74);
LABEL_246:
                          xpc_release(v74);
                          if (*(v72 + 4) == 1)
                          {
                            if (*v72 == 1)
                            {
                              v145 = xpc_string_create("unmetered");
                              if (!v145)
                              {
                                v145 = xpc_null_create();
                              }

                              v154.__r_.__value_.__r.__words[0] = &v149;
                              v154.__r_.__value_.__l.__size_ = "plan_type";
                              sub_10000F688(&v154, &v145, &v146);
                              xpc_release(v146);
                              v146 = 0;
                              xpc_release(v145);
                              v145 = 0;
                            }

                            else if (!*v72)
                            {
                              v147 = xpc_string_create("metered");
                              if (!v147)
                              {
                                v147 = xpc_null_create();
                              }

                              v154.__r_.__value_.__r.__words[0] = &v149;
                              v154.__r_.__value_.__l.__size_ = "plan_type";
                              sub_10000F688(&v154, &v147, &v148);
                              xpc_release(v148);
                              v148 = 0;
                              xpc_release(v147);
                              v147 = 0;
                            }
                          }

                          if (*(v72 + 9) == 1)
                          {
                            v143 = xpc_BOOL_create(*(v72 + 8));
                            if (!v143)
                            {
                              v143 = xpc_null_create();
                            }

                            v154.__r_.__value_.__r.__words[0] = &v149;
                            v154.__r_.__value_.__l.__size_ = "5g_experience";
                            sub_10000F688(&v154, &v143, &v144);
                            xpc_release(v144);
                            v144 = 0;
                            xpc_release(v143);
                            v143 = 0;
                          }

                          if (*(v72 + 16) == 1)
                          {
                            v141 = xpc_int64_create(*(v72 + 12));
                            if (!v141)
                            {
                              v141 = xpc_null_create();
                            }

                            v154.__r_.__value_.__r.__words[0] = &v149;
                            v154.__r_.__value_.__l.__size_ = "volume_cap_gb";
                            sub_10000F688(&v154, &v141, &v142);
                            xpc_release(v142);
                            v142 = 0;
                            xpc_release(v141);
                            v141 = 0;
                          }

                          if (*(v72 + 48) != 1)
                          {
                            goto LABEL_285;
                          }

                          memset(&v154, 0, sizeof(v154));
                          v76 = *(v72 + 24);
                          v77 = *(v72 + 32);
                          if (v76 == v77)
                          {
                            v79 = &v154;
                            goto LABEL_281;
                          }

                          v78 = 0;
                          do
                          {
                            if (*v76 == 1)
                            {
                              if (v78)
                              {
                                std::string::push_back(&v154, 43);
                              }

                              std::string::append(&v154, "sub6", 4uLL);
                            }

                            else
                            {
                              if (*v76)
                              {
                                goto LABEL_275;
                              }

                              if (v78)
                              {
                                std::string::push_back(&v154, 43);
                              }

                              std::string::append(&v154, "mmw", 3uLL);
                            }

                            ++v78;
LABEL_275:
                            ++v76;
                          }

                          while (v76 != v77);
                          if ((v154.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                          {
                            v79 = &v154;
                          }

                          else
                          {
                            v79 = v154.__r_.__value_.__r.__words[0];
                          }

                          v22 = v87;
LABEL_281:
                          v139 = xpc_string_create(v79);
                          if (!v139)
                          {
                            v139 = xpc_null_create();
                          }

                          v138[0] = &v149;
                          v138[1] = "plan_supported_rat";
                          sub_10000F688(v138, &v139, &v140);
                          xpc_release(v140);
                          v140 = 0;
                          xpc_release(v139);
                          v139 = 0;
                          if (SHIBYTE(v154.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(v154.__r_.__value_.__l.__data_);
                          }

LABEL_285:
                          if (*(v72 + 57) == 1)
                          {
                            v136 = xpc_BOOL_create(*(v72 + 56));
                            if (!v136)
                            {
                              v136 = xpc_null_create();
                            }

                            v154.__r_.__value_.__r.__words[0] = &v149;
                            v154.__r_.__value_.__l.__size_ = "sa_provisioned";
                            sub_10000F688(&v154, &v136, &v137);
                            xpc_release(v137);
                            v137 = 0;
                            xpc_release(v136);
                            v136 = 0;
                          }

                          if (v126[3] >= 0)
                          {
                            v80 = &v126[1];
                          }

                          else
                          {
                            v80 = v126[1];
                          }

                          v134 = xpc_string_create(v80);
                          if (!v134)
                          {
                            v134 = xpc_null_create();
                          }

                          v154.__r_.__value_.__r.__words[0] = &v149;
                          v154.__r_.__value_.__l.__size_ = "source";
                          sub_10000F688(&v154, &v134, &v135);
                          xpc_release(v135);
                          v135 = 0;
                          xpc_release(v134);
                          v134 = 0;
                          v81 = v127;
                          v133 = v149;
                          if (v149)
                          {
                            xpc_retain(v149);
                          }

                          else
                          {
                            v133 = xpc_null_create();
                          }

                          (*(*v81 + 16))(v81, "commCenterEntitlement5GServicePlan", &v133);
                          xpc_release(v133);
                          v133 = 0;
                          xpc_release(v149);
                          v72 += 64;
                          if (v72 == v85)
                          {
                            v82 = *(p_size[5] + 8) - *p_size[5];
                            if (v82)
                            {
                              v149 = xpc_int64_create(v82 >> 6);
                              if (!v149)
                              {
                                v149 = xpc_null_create();
                              }

                              v154.__r_.__value_.__r.__words[0] = &v157;
                              v154.__r_.__value_.__l.__size_ = "plan_count";
                              sub_10000F688(&v154, &v149, v138);
                              xpc_release(v138[0]);
                              v138[0] = 0;
                              xpc_release(v149);
                              v149 = 0;
                            }

                            break;
                          }
                        }
                      }
                    }
                  }
                }
              }

              sub_10006EC28(v158, v158[0].__r_.__value_.__l.__size_);
            }

            if (v126[3] >= 0)
            {
              v83 = &v126[1];
            }

            else
            {
              v83 = v126[1];
            }

            v132 = xpc_string_create(v83);
            if (!v132)
            {
              v132 = xpc_null_create();
            }

            v158[0].__r_.__value_.__r.__words[0] = &v157;
            v158[0].__r_.__value_.__l.__size_ = "source";
            sub_10000F688(v158, &v132, &v154.__r_.__value_.__l.__data_);
            xpc_release(v154.__r_.__value_.__l.__data_);
            v154.__r_.__value_.__r.__words[0] = 0;
            xpc_release(v132);
            v132 = 0;
            v84 = v127;
            v158[0].__r_.__value_.__r.__words[0] = v157;
            if (v157)
            {
              xpc_retain(v157);
            }

            else
            {
              v158[0].__r_.__value_.__r.__words[0] = xpc_null_create();
            }

            (*(*v84 + 16))(v84, "commCenterEntitlementTypeResponse", v158);
            xpc_release(v158[0].__r_.__value_.__l.__data_);
            v158[0].__r_.__value_.__r.__words[0] = 0;
            xpc_release(v157);
          }
        }

        if (++v60 != 23)
        {
          continue;
        }

        break;
      }

      if (*(&v127 + 1))
      {
        sub_100004A34(*(&v127 + 1));
      }

      if (SHIBYTE(v126[3]) < 0)
      {
        operator delete(v126[1]);
      }

      if (v125)
      {
        sub_100004A34(v125);
      }

      sub_10006DCAC(&v123, *(&v123 + 1));
      sub_10006EC28(&v121 + 8, v122);
      sub_10006DCAC(&v120, *(&v120 + 1));
      sub_10006DCAC(&__p[1], v119);
    }
  }

  if (v54)
  {
    sub_100004A34(v54);
  }

  sub_1004EE3B4(0x800E3);
  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  v23 = v86;
LABEL_325:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_1004E05B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, xpc_object_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, xpc_object_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, xpc_object_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (STACK[0x210])
  {
    sub_100004A34(STACK[0x210]);
  }

  sub_1003C30B4(&a62);
  if (v62)
  {
    sub_100004A34(v62);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if ((a14 & 1) == 0)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::handleHttpResponse_sync(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 128));
    v6 = *(a1 + 160);
    *buf = 136315906;
    *&buf[4] = v5;
    v64 = 2080;
    v65 = " ";
    v66 = 2080;
    v67 = v6;
    v68 = 2080;
    v69 = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________<   Received the HTTP response, processing it", buf, 0x2Au);
  }

  memset(v62, 0, sizeof(v62));
  sub_1004F0D24(v62, 0x1EuLL);
  v7 = a2[1];
  v60[0] = *a2;
  v60[1] = v7;
  v61 = 0;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = entitlements::CEHTTPDriver::validateAndParseHttpResponse_sync(a1, v60, v62);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v9 = (a1 + 568);
  if (v8)
  {
    v58 = 0;
    v59[0] = 0;
    v59[1] = 0;
    (*(**a2 + 56))(&v58);
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v11;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v12;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sreceived header:", buf, 0x2Au);
    }

    v53 = (a1 + 568);
    v13 = v58;
    if (v58 != v59)
    {
      do
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = PersonalityInfo::logPrefix(***(a1 + 128));
          v16 = v13 + 4;
          if (*(v13 + 55) < 0)
          {
            v16 = *v16;
          }

          v17 = v13 + 7;
          if (*(v13 + 79) < 0)
          {
            v17 = *v17;
          }

          v18 = *(a1 + 160);
          *buf = 136316418;
          *&buf[4] = v15;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v18;
          v68 = 2080;
          v69 = "";
          v70 = 2080;
          v71 = v16;
          v72 = 2080;
          v73 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  %s: %s", buf, 0x3Eu);
        }

        v19 = v13[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v13[2];
            v21 = *v20 == v13;
            v13 = v20;
          }

          while (!v21);
        }

        v13 = v20;
      }

      while (v20 != v59);
    }

    if (HIDWORD(v8) == 200)
    {
      v27 = entitlements::CEHTTPDriver::postprocessAuthResponse(a1, v62);
      v9 = (a1 + 568);
      if (v27)
      {
        LODWORD(v61) = HIDWORD(v27);
        BYTE4(v61) = 1;
        if ((v27 & 0x100) != 0)
        {
          entitlements::CEHTTPDriver::prepareActionResults(v27, v28, *(a1 + 608), v62);
          Results = entitlements::CEHTTPDriver::analyzeQueryResults(a1, *(a1 + 608), v62);
          entitlements::CEHTTPDriver::postActionResults(a1, 3, *(a1 + 608), v62);
          v26 = 0;
          LOBYTE(v8) = 1;
        }

        else
        {
          v29 = *(a1 + 40);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = PersonalityInfo::logPrefix(***(a1 + 128));
            v31 = *(a1 + 160);
            *buf = 136315906;
            *&buf[4] = v30;
            v64 = 2080;
            v65 = " ";
            v66 = 2080;
            v67 = v31;
            v68 = 2080;
            v69 = "";
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sAuthentication Failure", buf, 0x2Au);
          }

          LOBYTE(v8) = 0;
          Results = 0;
          *(a1 + 176) = 0;
          v26 = 1;
        }

        goto LABEL_52;
      }
    }

    else
    {
      v9 = (a1 + 568);
      if (HIDWORD(v8) != 401)
      {
        LOBYTE(v8) = 0;
        Results = 0;
        v26 = 0;
LABEL_52:
        sub_1000DD0AC(&v58, v59[0]);
        goto LABEL_53;
      }

      if (*(a1 + 172) != 2)
      {
LABEL_51:
        LOBYTE(v8) = 0;
        Results = 0;
        v26 = 0;
        goto LABEL_52;
      }

      *(a1 + 176) = 0;
      if (*(a1 + 352) == 1)
      {
        if (*(a1 + 351) < 0)
        {
          operator delete(*(a1 + 328));
        }

        *(a1 + 352) = 0;
      }

      if (*(a1 + 584))
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = PersonalityInfo::logPrefix(***(a1 + 128));
          v24 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v23;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v24;
          v68 = 2080;
          v69 = "";
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRe-Authentication failed", buf, 0x2Au);
        }

        goto LABEL_51;
      }

      v32 = *v53;
      *v53 = 0;
      *(a1 + 576) = 0;
      v33 = *(a1 + 592);
      *(a1 + 584) = v32;
      if (v33)
      {
        sub_100004A34(v33);
      }

      v55 = 0;
      v56 = 0;
      v57 = 0;
      (*(**a2 + 56))(&v55);
      v34 = (*(**a2 + 80))();
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(***(a1 + 128));
        v37 = *(a1 + 160);
        *buf = 136316162;
        *&buf[4] = v36;
        v64 = 2080;
        v65 = " ";
        v66 = 2080;
        v67 = v37;
        v68 = 2080;
        v69 = "";
        v70 = 1024;
        LODWORD(v71) = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scipher suite: 0x%X", buf, 0x30u);
      }

      if ((entitlements::CEHTTPDriver::performGBAAuthentication(a1, &v55, v34) & 1) == 0)
      {
        v38 = *(a1 + 40);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = PersonalityInfo::logPrefix(***(a1 + 128));
          v40 = *(a1 + 160);
          *buf = 136315906;
          *&buf[4] = v39;
          v64 = 2080;
          v65 = " ";
          v66 = 2080;
          v67 = v40;
          v68 = 2080;
          v69 = "";
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sAuthentication Failure. Cannot initiate GBA authentication", buf, 0x2Au);
        }

        sub_1000DD0AC(&v55, v56);
        goto LABEL_51;
      }

      sub_1000DD0AC(&v55, v56);
    }

    sub_1000DD0AC(&v58, v59[0]);
    goto LABEL_76;
  }

  Results = 0;
  v26 = 0;
LABEL_53:
  v41 = Results | v26;
  if ((Results | v26) == 1)
  {
    entitlements::CEHTTPDriver::serverIssueNeedToBackoff(a1, v26);
  }

  v42 = *(a1 + 40);
  v43 = os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v43)
    {
      v44 = PersonalityInfo::logPrefix(***(a1 + 128));
      v45 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v44;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v45;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sHTTP response processing complete with success", buf, 0x2Au);
    }

    sub_1009C18B8(a1, "HTTP response processing complete with success", v41 ^ 1);
  }

  else
  {
    if (v43)
    {
      v46 = PersonalityInfo::logPrefix(***(a1 + 128));
      v47 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v46;
      v64 = 2080;
      v65 = " ";
      v66 = 2080;
      v67 = v47;
      v68 = 2080;
      v69 = "";
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sHTTP response invalid or authentication failed, invalidate request and try again", buf, 0x2Au);
    }

    v48 = a2[1];
    v54[0] = *a2;
    v54[1] = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(a1, v26, &v61, v54);
    if (v48)
    {
      sub_100004A34(v48);
    }
  }

  if (*(a1 + 737) == 1)
  {
    sub_1009C18B8(a1, "user initiated (forced) action in the queue", 1);
  }

  v49 = *(a1 + 616);
  *(a1 + 608) = 0u;
  if (v49)
  {
    sub_100004A34(v49);
  }

  v50 = *(a1 + 576);
  *v9 = 0;
  v9[1] = 0;
  if (v50)
  {
    sub_100004A34(v50);
  }

  v51 = *(a1 + 592);
  v9[2] = 0;
  v9[3] = 0;
  if (v51)
  {
    sub_100004A34(v51);
  }

  v52 = *(a1 + 768);
  v9[24] = 0;
  v9[25] = 0;
  if (v52)
  {
    sub_100004A34(v52);
  }

  entitlements::CEHTTPDriver::sendRequestIfPending_sync(a1);
LABEL_76:
  *buf = v62;
  sub_1000212F4(buf);
}

void sub_1004E13C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, void *a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void **a27)
{
  sub_1000DD0AC(&a15, a16);
  sub_1000DD0AC(&a18, a19);
  a27 = &a24;
  sub_1000212F4(&a27);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::performGBAAuthentication(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a1 + 128);
  if (*(v3 + 344) == 1)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    __p = 0u;
    v48 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    HIDWORD(v48) = 3;
    BYTE4(v49) = 0;
    memset(v52, 0, sizeof(v52));
    v6 = *v3;
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v9 = *(&v42 + 1);
      *&v42 = v8;
      *(&v42 + 1) = v7;
      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    else
    {
      v42 = v8;
    }

    std::string::operator=(&v43, (*(a1 + 128) + 216));
    v10 = *(a1 + 128);
    if ((&v44 + 8) != (v10 + 264))
    {
      sub_100008234(&v44 + 1, *(v10 + 264), *(v10 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(v10 + 272) - *(v10 + 264)) >> 3));
      v10 = *(a1 + 128);
    }

    sub_10012BF3C(v46, (v10 + 352));
    BYTE8(v48) = *(*(a1 + 128) + 336) == 2;
    entitlements::CEHTTPDriver::gba_personalizedURL(a1, a1 + 432, &buf);
    if (SBYTE7(v48) < 0)
    {
      operator delete(__p);
    }

    __p = *&buf.__r_.__value_.__l.__data_;
    *&v48 = *(&buf.__r_.__value_.__l + 2);
    *&v52[32] = a3;
    theDict = 0;
    sub_100A81F08(*(a1 + 144), &theDict);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"BsfPort");
      v12 = Value;
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      if (Value)
      {
        v13 = CFGetTypeID(Value);
        if (v13 == CFNumberGetTypeID())
        {
          ctu::cf::assign(&buf, v12, v14);
        }
      }

      LODWORD(v49) = buf.__r_.__value_.__l.__data_;
      v15 = CFDictionaryGetValue(theDict, @"BsfUseSecureTransport");
      v16 = v15;
      buf.__r_.__value_.__s.__data_[0] = 0;
      if (v15)
      {
        v17 = CFGetTypeID(v15);
        if (v17 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(&buf, v16, v18);
        }
      }

      BYTE4(v49) = buf.__r_.__value_.__s.__data_[0];
      v19 = CFDictionaryGetValue(theDict, @"BsfHost");
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 == CFStringGetTypeID())
        {
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          *v53 = buf.__r_.__value_.__l.__size_;
          v21 = buf.__r_.__value_.__r.__words[0];
          *&v53[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
          v22 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          if (v51)
          {
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*(&v49 + 1));
            }

            *(&v49 + 1) = v21;
            *&v50 = *v53;
            *(&v50 + 7) = *&v53[7];
            HIBYTE(v50) = v22;
          }

          else
          {
            *(&v49 + 1) = buf.__r_.__value_.__r.__words[0];
            *&v50 = *v53;
            *(&v50 + 7) = *&v53[7];
            HIBYTE(v50) = *(&buf.__r_.__value_.__s + 23);
            LOBYTE(v51) = 1;
          }
        }
      }
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 128));
      v25 = *(a1 + 160);
      if ((SBYTE7(v44) & 0x80u) == 0)
      {
        v26 = &v43;
      }

      else
      {
        v26 = v43;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = v24;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v55 = v25;
      v56 = 2080;
      v57 = "";
      v58 = 2080;
      v59 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPI: %s", &buf, 0x34u);
      v23 = *(a1 + 40);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v27 = PersonalityInfo::logPrefix(***(a1 + 128));
      v28 = *(a1 + 160);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v55 = v28;
      v56 = 2080;
      v57 = "";
      v58 = 2048;
      v59 = 0xAAAAAAAAAAAAAAABLL * ((v45 - *(&v44 + 1)) >> 3);
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPU: %lu items", &buf, 0x34u);
    }

    v29 = *(&v44 + 1);
    for (i = v45; v29 != i; v29 += 24)
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(***(a1 + 128));
        v33 = v29;
        if (*(v29 + 23) < 0)
        {
          v33 = *v29;
        }

        v34 = *(a1 + 160);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v32;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v34;
        v56 = 2080;
        v57 = "";
        v58 = 2080;
        v59 = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  IMPU: %s", &buf, 0x34u);
      }
    }

    if ((entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(a1) & 1) == 0 && (sub_100A81C8C(*(a1 + 144)) & 1) != 0 && *(a1 + 777) == 1)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(***(a1 + 128));
        v37 = *(a1 + 160);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v36;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v37;
        v56 = 2080;
        v57 = "";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sGBA authentication will go over Entitlement service", &buf, 0x2Au);
      }

      buf.__r_.__value_.__r.__words[0] = kCTDataConnectionServiceTypeEntitlementTraffic;
      sub_10021D11C(v52, &buf.__r_.__value_.__l.__data_);
      std::string::operator=(&v52[8], ***(a1 + 128));
    }

    v38 = *(a1 + 24);
    if (v38)
    {
      dispatch_retain(v38);
    }

    sub_100004AA0(&buf, (a1 + 8));
    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_)
    {
      atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(size);
      atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10085AF64(v53);
  }

  return *(v3 + 344);
}

void sub_1004E1B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, dispatch_object_t object, const void *a22, __int16 a23, char a24, char a25)
{
  sub_10001021C(&a22);
  sub_1004F389C(&a23);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::analyzeQueryResults(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = 0;
  v6 = 0;
  v30 = 0;
  do
  {
    v7 = *a3 + 16 * v6;
    v9 = *v7;
    v8 = *(v7 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 128));
      v12 = *(a1 + 160);
      sub_10053DF18(a2, v30, &v31);
      v13 = (*(*v31 + 40))(v31);
      if (*(&v31 + 1))
      {
        sub_100004A34(*(&v31 + 1));
      }

      v14 = sub_100531604(*v9);
      *buf = 136316418;
      *&buf[4] = v11;
      v33 = 2080;
      v34 = " ";
      v35 = 2080;
      v36 = v12;
      v37 = 2080;
      v38 = "";
      v39 = 2080;
      v40 = v13;
      v41 = 2080;
      v42 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%saction %s = %s", buf, 0x3Eu);
    }

    v15 = *v9;
    if (*v9 <= 6003)
    {
      if ((v15 - 6001) >= 3)
      {
        if (v15 == 6000)
        {
          sub_10012B6B8(a1 + 712, &v30);
        }

        goto LABEL_20;
      }

LABEL_16:
      *buf = &v30;
      *(sub_10030C46C(a1 + 712, &v30) + 8) = v15;
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 128));
        v18 = *(a1 + 160);
        sub_10053DF18(a2, v30, &v31);
        v19 = (*(*v31 + 40))(v31);
        if (*(&v31 + 1))
        {
          sub_100004A34(*(&v31 + 1));
        }

        v20 = sub_100531604(*v9);
        *buf = 136316418;
        *&buf[4] = v17;
        v33 = 2080;
        v34 = " ";
        v35 = 2080;
        v36 = v18;
        v37 = 2080;
        v38 = "";
        v39 = 2080;
        v40 = v19;
        v41 = 2080;
        v42 = v20;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%smarked action %s failed with vital %s", buf, 0x3Eu);
      }

LABEL_20:
      if (!v8)
      {
        goto LABEL_22;
      }

LABEL_21:
      sub_100004A34(v8);
      goto LABEL_22;
    }

    switch(v15)
    {
      case 6004:
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = PersonalityInfo::logPrefix(***(a1 + 128));
          v24 = *(a1 + 160);
          sub_10053DF18(a2, v30, &v31);
          v25 = (*(*v31 + 40))(v31);
          if (*(&v31 + 1))
          {
            sub_100004A34(*(&v31 + 1));
          }

          v26 = sub_100531604(*v9);
          v27 = sub_100531604(6005);
          *buf = 136316674;
          *&buf[4] = v23;
          v33 = 2080;
          v34 = " ";
          v35 = 2080;
          v36 = v24;
          v37 = 2080;
          v38 = "";
          v39 = 2080;
          v40 = v25;
          v41 = 2080;
          v42 = v26;
          v43 = 2080;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%saction %s replied with incorrect code %s -> treating as %s", buf, 0x48u);
        }

        break;
      case 6005:
        break;
      case 6010:
        goto LABEL_16;
      default:
        goto LABEL_20;
    }

    v29 = 1;
    if (v8)
    {
      goto LABEL_21;
    }

LABEL_22:
    v21 = v30;
    v6 = ++v30;
  }

  while (v21 < 27);
  return v29 & 1;
}

void sub_1004E2034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::serverIssueNeedToBackoff(entitlements::CEHTTPDriver *this, int a2)
{
  v4 = *(this + 96) + 1;
  *(this + 96) = v4;
  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(***(this + 16));
    v7 = *(this + 20);
    v8 = "TEMP";
    v9 = *(this + 96);
    *buf = 136316418;
    if (a2)
    {
      v8 = "AUTH";
    }

    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v29 = 2080;
    v30 = v7;
    v31 = 2080;
    v32 = "";
    v33 = 2080;
    v34 = v8;
    v35 = 1024;
    v36 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sServer reported %s failure on one of actions, fServerBackoffCnt = %d", buf, 0x3Au);
    v4 = *(this + 96);
  }

  v10 = sub_100A83620(*(this + 18)) * v4;
  v11 = *(this + 5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(this + 16));
    v13 = *(this + 20);
    *buf = 136316162;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v29 = 2080;
    v30 = v13;
    v31 = 2080;
    v32 = "";
    v33 = 1024;
    LODWORD(v34) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sengaging %u seconds block on communication", buf, 0x30u);
  }

  sub_100004AA0(buf, this + 1);
  v15 = *buf;
  v14 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  Registry::getTimerService(buf, *(this + 6));
  v16 = *buf;
  sub_10000501C(__p, "server initiated backoff");
  v17 = *(this + 3);
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_1004E3840;
  aBlock[3] = &unk_101E518E8;
  aBlock[4] = this;
  aBlock[5] = v15;
  v22 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = _Block_copy(aBlock);
  sub_100D23364(v16, __p, 1, 1000000 * v10, &object, &v23);
  v18 = v27;
  v27 = 0;
  v19 = *(this + 49);
  *(this + 49) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v20 = v27;
    v27 = 0;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void sub_1004E23E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(uint64_t a1, BOOL a2, uint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 128));
    v10 = *(a1 + 160);
    v11 = asStringBool(a2);
    v12 = asStringBool(*(a1 + 608) != 0);
    v13 = *(a1 + 608);
    if (v13 && (v14 = *(v13 + 120), (v14 & 0x100000000) != 0))
    {
      v15 = sub_10006EE44(v14);
    }

    else
    {
      v15 = "-";
    }

    if (*(a3 + 4) == 1)
    {
      v16 = sub_100531604(*a3);
    }

    else
    {
      v16 = "-";
    }

    *buf = 136316930;
    v22 = v9;
    v23 = 2080;
    v24 = " ";
    v25 = 2080;
    v26 = v10;
    v27 = 2080;
    v28 = "";
    v29 = 2080;
    v30 = v11;
    v31 = 2080;
    v32 = v12;
    v33 = 2080;
    v34 = v15;
    v35 = 2080;
    v36 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%shandleRequestFailureAndMergeWithPending_sync (%s), fRequestedQuery:%s, dedicated:%s, status_override:%s", buf, 0x52u);
  }

  v17 = *(a1 + 608);
  if (v17)
  {
    v18 = *a4;
    v19 = a4[1];
    v20[0] = v18;
    v20[1] = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    entitlements::CEHTTPDriver::handleTransactionFailure_sync(a1, v17, a3, v20);
    if (v19)
    {
      sub_100004A34(v19);
    }

    entitlements::CEHTTPDriver::mergeRequestedQuery_sync(a1, 0);
    entitlements::CEHTTPDriver::checkPendingQueriesCancelation(a1);
  }
}

void sub_1004E264C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::CEHTTPDriver::mergeRequestedQuery_sync(entitlements::CEHTTPDriver *this, int a2)
{
  v3 = *(this + 76);
  if (!v3)
  {
    return;
  }

  if (sub_1005358AC(v3))
  {
    v5 = (this + 608);
    v6 = *(this + 79);
    v7 = *(this + 76);
    v8 = *(v7 + 120);
    v9 = *(v6 + 16);
    v10 = *(v9 + 120);
    if (BYTE4(v8) == BYTE4(v10) && (v8 & 0x100000000) != 0)
    {
      if (v8 != v10)
      {
LABEL_6:
        v11 = this + 624;
        if (a2)
        {
          sub_1004E2A38();
        }

        v24 = *v11;
        v25 = *(*v11 + 16);
        v26 = *(v25 + 120);
        if (BYTE4(v8) == BYTE4(v26) && (v8 & 0x100000000) != 0)
        {
          if (v8 != v26)
          {
LABEL_24:
            if (sub_1005358AC(*(this + 81)))
            {
              sub_1004E2AA0();
            }

            sub_100492914((*v11 + 16), this + 76);
            v14 = *(this + 5);
            if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_14;
            }

            v32 = PersonalityInfo::logPrefix(***(this + 16));
            v33 = *(this + 20);
            v34 = *(this + 80);
            v35 = 136316162;
            v36 = v32;
            v37 = 2080;
            v38 = " ";
            v39 = 2080;
            v40 = v33;
            v41 = 2080;
            v42 = "";
            v43 = 2048;
            v44 = v34;
            v18 = "#I %s%s%s%sAdding failed query back as a last element of pending queue (%zu elems)";
            goto LABEL_13;
          }
        }

        else if (BYTE4(v8) != BYTE4(v26))
        {
          goto LABEL_24;
        }

        sub_1005358F0(v7, v25);
        v27 = *v5;
        *v5 = 0;
        *(this + 77) = 0;
        v28 = *(v24 + 24);
        *(v24 + 16) = v27;
        if (v28)
        {
          sub_100004A34(v28);
        }

        v14 = *(this + 5);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v29 = PersonalityInfo::logPrefix(***(this + 16));
        v30 = *(this + 20);
        v31 = *(this + 80);
        v35 = 136316162;
        v36 = v29;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = v30;
        v41 = 2080;
        v42 = "";
        v43 = 2048;
        v44 = v31;
        v18 = "#I %s%s%s%sMerge failed query into last element of pending queue (%zu elems)";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v18, &v35, 0x34u);
        goto LABEL_14;
      }
    }

    else if (BYTE4(v8) != BYTE4(v10))
    {
      goto LABEL_6;
    }

    sub_1005358F0(v7, v9);
    v12 = *v5;
    *v5 = 0;
    *(this + 77) = 0;
    v13 = *(v6 + 24);
    *(v6 + 16) = v12;
    if (v13)
    {
      sub_100004A34(v13);
    }

    v14 = *(this + 5);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v15 = PersonalityInfo::logPrefix(***(this + 16));
    v16 = *(this + 20);
    v17 = *(this + 80);
    v35 = 136316162;
    v36 = v15;
    v37 = 2080;
    v38 = " ";
    v39 = 2080;
    v40 = v16;
    v41 = 2080;
    v42 = "";
    v43 = 2048;
    v44 = v17;
    v18 = "#I %s%s%s%sMerge failed query into first element of pending queue (%zu elems)";
    goto LABEL_13;
  }

LABEL_14:
  v19 = *(this + 77);
  *(this + 38) = 0u;
  if (v19)
  {
    sub_100004A34(v19);
  }

  v20 = *(this + 78);
  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 81) = v22;
  v23 = *(this + 82);
  *(this + 82) = v21;
  if (v23)
  {
    sub_100004A34(v23);
  }
}

BOOL entitlements::CEHTTPDriver::handleTransactionFailure_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(a1 + 176) = 0;
  ++*(a1 + 364);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_101772B34(a1, (a1 + 364), v8);
  }

  if (sub_1009C2E28(a1))
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(a1 + 128));
      v11 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v39 = 2080;
      v40 = v11;
      v41 = 2080;
      v42 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sExceeded Max Failures, clearing pending transactions", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::terminateAllQueries(a1, 1, a3);
  }

  if (sub_1009C2E38(a1))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(a1 + 128));
      v14 = *(a1 + 160);
      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v39 = 2080;
      v40 = v14;
      v41 = 2080;
      v42 = "";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sSubscriber blocked, clearing pending transactions", buf, 0x2Au);
    }

    entitlements::CEHTTPDriver::terminateAllQueries(a1, 1, a3);
  }

  if (!entitlements::CEHTTPDriver::isInterimFailure(a1))
  {
    sub_10053578C(a2);
    for (i = 0; i != 28; ++i)
    {
      cf = 0;
      v36 = 0;
      v37 = 0;
      sub_1005354F0(a2, i, &cf);
      if (cf)
      {
        v16 = v36;
        if (([v36 hasLeftAttempts] & 1) == 0)
        {
          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = PersonalityInfo::logPrefix(***(a1 + 128));
            v19 = *(a1 + 160);
            *buf = 136316162;
            *&buf[4] = v18;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v39 = 2080;
            v40 = v19;
            v41 = 2080;
            v42 = "";
            v43 = 2112;
            v44 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sFailing because 'No more attempts' request:%@", buf, 0x34u);
          }

          *buf = 0;
          *&buf[8] = 0;
          v33 = 0;
          v34 = 0;
          v32 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v31 = v37;
          if (v37)
          {
            CFRetain(v37);
          }

          v20 = a4[1];
          v30[0] = *a4;
          v30[1] = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          entitlements::CEHTTPDriver::prepareAnActionResult(a2, i, &v33, a3, &v32, buf, v30);
          if (v20)
          {
            sub_100004A34(v20);
          }

          sub_10000A1EC(&v31);
          sub_10001021C(&v32);
          if (v34)
          {
            sub_100004A34(v34);
          }

          v21 = *&buf[8];
          v28 = *buf;
          v29 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }

          v27 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v26 = v37;
          if (v37)
          {
            CFRetain(v37);
          }

          entitlements::CEHTTPDriver::postAnActionResult(a1, a2, i, 1, &v28, &v27, &v26);
          sub_10000A1EC(&v26);
          sub_10001021C(&v27);
          if (v29)
          {
            sub_100004A34(v29);
          }

          sub_1005353B8(a2, v16);
          if (v21)
          {
            sub_100004A34(v21);
          }
        }
      }

      sub_10000A1EC(&v37);
      sub_10000A1EC(&v36);
      sub_10001021C(&cf);
    }

    entitlements::CEHTTPDriver::postQueryEvent(a1, 2, a2, a3);
    if (sub_1005358D8(a2) == 1)
    {
      sub_10053722C(a2);
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PersonalityInfo::logPrefix(***(a1 + 128));
        v24 = *(a1 + 160);
        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v39 = 2080;
        v40 = v24;
        v41 = 2080;
        v42 = "";
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sno elements in the query except Authentication - dropping query", buf, 0x2Au);
      }

      sub_1005348F0(a2);
    }
  }

  return entitlements::CEHTTPDriver::engageAutomaticRetryTimeout(a1);
}

void sub_1004E3008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1004DD610(va);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::checkPendingQueriesCancelation(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v54 = 2080;
    v55 = v4;
    v56 = 2080;
    v57 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%schecking possibly expired queued actions", buf, 0x2Au);
  }

  v5 = *(this + 85);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    v6 = *(this + 85);
    *(this + 85) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  v7 = *(this + 79);
  v33 = (this + 624);
  if (v7 != (this + 624))
  {
    v8 = 0;
    do
    {
      for (i = 0; i != 28; ++i)
      {
        v51 = 0;
        v52 = 0;
        v50 = 0;
        sub_1005354F0(v7[2], i, &v50);
        v10 = v51;
        if (v51)
        {
          v11 = v50 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          if ([v51 expired])
          {
            v12 = *(this + 5);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = PersonalityInfo::logPrefix(***(this + 16));
              v14 = *(this + 20);
              *buf = 136316162;
              *&buf[4] = v13;
              *&buf[12] = 2080;
              *&buf[14] = " ";
              v54 = 2080;
              v55 = v14;
              v56 = 2080;
              v57 = "";
              v58 = 2112;
              v59 = v10;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sCancelling expired request:{%@}", buf, 0x34u);
            }

            *buf = 0;
            *&buf[8] = 0;
            v15 = v7[2];
            v48 = 0;
            v49 = 0;
            v47[0] = 0;
            v47[4] = 0;
            v46 = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            v45 = v52;
            if (v52)
            {
              CFRetain(v52);
            }

            v44[0] = 0;
            v44[1] = 0;
            entitlements::CEHTTPDriver::prepareAnActionResult(v15, i, &v48, v47, &v46, buf, v44);
            sub_10000A1EC(&v45);
            sub_10001021C(&v46);
            if (v49)
            {
              sub_100004A34(v49);
            }

            v16 = v7[2];
            v17 = *&buf[8];
            v42 = *buf;
            v43 = *&buf[8];
            if (*&buf[8])
            {
              atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
            }

            v41 = v50;
            if (v50)
            {
              CFRetain(v50);
            }

            v40 = v52;
            if (v52)
            {
              CFRetain(v52);
            }

            entitlements::CEHTTPDriver::postAnActionResult(this, v16, i, 0, &v42, &v41, &v40);
            sub_10000A1EC(&v40);
            sub_10001021C(&v41);
            if (v43)
            {
              sub_100004A34(v43);
            }

            sub_1005353B8(v7[2], v10);
            if (v17)
            {
              sub_100004A34(v17);
            }
          }

          else if ([v10 cancelationSupported])
          {
            v18 = [v10 secondsTillCancelation];
            if (v18 >= v8)
            {
              v19 = v8;
            }

            else
            {
              v19 = v18;
            }

            if (v8)
            {
              v8 = v19;
            }

            else
            {
              v8 = v18;
            }
          }
        }

        sub_10000A1EC(&v52);
        sub_10000A1EC(&v51);
        sub_10001021C(&v50);
      }

      if (sub_1005358D8(v7[2]) || v7[2] == *(this + 81))
      {
        v7 = v7[1];
      }

      else
      {
        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = PersonalityInfo::logPrefix(***(this + 16));
          v22 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v54 = 2080;
          v55 = v22;
          v56 = 2080;
          v57 = "";
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoving empty query from the queue", buf, 0x2Au);
        }

        v7 = sub_1004E5C3C(v33, v7);
      }
    }

    while (v7 != v33);
    if (v8)
    {
      v23 = *(this + 5);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = PersonalityInfo::logPrefix(***(this + 16));
        v25 = *(this + 20);
        *buf = 136316162;
        *&buf[4] = v24;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v54 = 2080;
        v55 = v25;
        v56 = 2080;
        v57 = "";
        v58 = 1024;
        LODWORD(v59) = v8;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sschedule cancelation recheck in %u seconds", buf, 0x30u);
      }

      sub_100004AA0(buf, this + 1);
      v27 = *buf;
      v26 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
      }

      Registry::getTimerService(buf, *(this + 6));
      v28 = *buf;
      sub_10000501C(__p, "entitlement cancelation check");
      v29 = *(this + 3);
      object = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 3321888768;
      aBlock[2] = sub_1004E5C8C;
      aBlock[3] = &unk_101E518E8;
      aBlock[4] = this;
      aBlock[5] = v27;
      v35 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v36 = _Block_copy(aBlock);
      sub_100D23364(v28, __p, 1, 1000000 * v8, &object, &v36);
      v30 = v50;
      v50 = 0;
      v31 = *(this + 85);
      *(this + 85) = v30;
      if (v31)
      {
        (*(*v31 + 8))(v31);
        v32 = v50;
        v50 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      if (v36)
      {
        _Block_release(v36);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v39 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }
}

void sub_1004E373C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, dispatch_object_t object, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004E3840(void *a1)
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
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = " ";
          v14 = 2080;
          v15 = v8;
          v16 = 2080;
          v17 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblock on communication expired - issuing request if needed", &v10, 0x2Au);
        }

        v9 = *(v3 + 392);
        *(v3 + 392) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1004E399C(uint64_t result, uint64_t a2)
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

void sub_1004E39B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004E39C8(void *a1)
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
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v10 = 136315906;
          v11 = v7;
          v12 = 2080;
          v13 = " ";
          v14 = 2080;
          v15 = v8;
          v16 = 2080;
          v17 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sblock on communication expired - issuing request if needed (ce)", &v10, 0x2Au);
        }

        v9 = *(v3 + 408);
        *(v3 + 408) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }

        entitlements::CEHTTPDriver::sendRequestIfPending_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

const void **entitlements::CEHTTPDriver::postQueryEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 28; ++i)
  {
    cf = 0;
    v23 = 0;
    v24 = 0;
    sub_1005354F0(a3, i, &cf);
    if (cf)
    {
      v20 = 0;
      v21 = 0;
      v18 = 0;
      v19 = 0;
      v17 = cf;
      CFRetain(cf);
      v16 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      v15[0] = 0;
      v15[1] = 0;
      entitlements::CEHTTPDriver::prepareAnActionResult(a3, i, &v18, a4, &v17, &v20, v15);
      sub_10000A1EC(&v16);
      sub_10001021C(&v17);
      if (v19)
      {
        sub_100004A34(v19);
      }

      v9 = v21;
      v13 = v20;
      v14 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v11 = v24;
      if (v24)
      {
        CFRetain(v24);
      }

      entitlements::CEHTTPDriver::postAnActionResult(a1, a3, i, a2, &v13, &v12, &v11);
      sub_10000A1EC(&v11);
      sub_10001021C(&v12);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    sub_10000A1EC(&v24);
    sub_10000A1EC(&v23);
    result = sub_10001021C(&cf);
  }

  return result;
}

void sub_1004E3CB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, std::__shared_weak_count *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_10000A1EC(va);
  sub_10001021C(va1);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1004DD610(va2);
  _Unwind_Resume(a1);
}

BOOL entitlements::CEHTTPDriver::isInterimFailure(entitlements::CEHTTPDriver *this)
{
  if (*(this + 92) > 2)
  {
    return 0;
  }

  v1 = *(this + 93);
  if (!v1 || (*(v1 + 24) & 1) != 0)
  {
    return 1;
  }

  v3 = *(v1 + 16);
  return ((v3 + 1006) < 4 || v3 == -1009) && (*(v1 + 8) - *v1) / 1000000.0 < 5.0;
}

BOOL entitlements::CEHTTPDriver::engageAutomaticRetryTimeout(entitlements::CEHTTPDriver *this)
{
  v2 = this + 364;
  v3 = *(this + 91);
  if (v3)
  {
    v4 = sub_100A835AC(*(this + 18));
    if (entitlements::CEHTTPDriver::isInterimFailure(this))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(***(this + 16));
        v7 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v30 = 2080;
        v31 = v7;
        v32 = 2080;
        v33 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sprevious interim failure detected", buf, 0x2Au);
      }

      *v2 = vadd_s32(*v2, 0x1FFFFFFFFLL);
      v3 = 3;
    }

    else
    {
      v3 *= v4;
      *(this + 92) = 0;
    }
  }

  v8 = *(this + 94);
  *(v2 + 388) = 0;
  *(v2 + 380) = 0;
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v3)
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(***(this + 16));
      v11 = *(this + 20);
      v12 = *(this + 91);
      v13 = *(this + 92);
      *buf = 136316674;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v30 = 2080;
      v31 = v11;
      v32 = 2080;
      v33 = "";
      v34 = 1024;
      v35 = v3;
      v36 = 1024;
      v37 = v12;
      v38 = 1024;
      v39 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   Adding retry backoff timer in ___ %d ___ seconds, fFailures: ___ %d ___, fInterimFailures: ___ %d ___", buf, 0x3Cu);
    }

    sub_100004AA0(buf, this + 1);
    v15 = *buf;
    v14 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
    }

    Registry::getTimerService(buf, *(this + 6));
    v16 = *buf;
    sub_10000501C(__p, "automatic retry timeout");
    v17 = *(this + 3);
    object = v17;
    if (v17)
    {
      dispatch_retain(v17);
    }

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3321888768;
    v22[2] = sub_1004E5DB8;
    v22[3] = &unk_101E51918;
    v22[4] = v15;
    v23 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v22);
    sub_100D23364(v16, __p, 1, 1000000 * v3, &object, &aBlock);
    v18 = v28;
    v28 = 0;
    v19 = *(this + 47);
    *(this + 47) = v18;
    if (v19)
    {
      (*(*v19 + 8))(v19);
      v20 = v28;
      v28 = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
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

    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  return *(this + 47) != 0;
}

void sub_1004E4124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **entitlements::CEHTTPDriver::setAltServers(uint64_t **result, uint64_t **a2)
{
  v3 = result;
  if (result[88] == a2[2])
  {
    v4 = result[86];
    v5 = result + 87;
    if (v4 == (result + 87))
    {
      return result;
    }

    v6 = *a2;
    while (*(v4 + 8) == *(v6 + 8))
    {
      result = sub_100A39D20(v4 + 5, v6 + 5);
      if (!result)
      {
        break;
      }

      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v9 = *v4 == v8;
          v8 = v4;
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
      if (v4 == v5)
      {
        return result;
      }
    }
  }

  v12 = v3[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**v3[16]);
    v14 = v3[20];
    *buf = 136315906;
    v28 = v13;
    v29 = 2080;
    v30 = " ";
    v31 = 2080;
    v32 = v14;
    v33 = 2080;
    v34 = "";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%supdating alt-servers:", buf, 0x2Au);
  }

  v24 = v3 + 86;
  v16 = (a2 + 1);
  v15 = *a2;
  if (*a2 != (a2 + 1))
  {
    do
    {
      v17 = v3[5];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(**v3[16]);
        v19 = v3[20];
        v20 = sub_10006EE44(*(v15 + 8));
        sub_100A39DB8(__p);
        v21 = __p;
        if (v26 < 0)
        {
          v21 = __p[0];
        }

        *buf = 136316418;
        v28 = v18;
        v29 = 2080;
        v30 = " ";
        v31 = 2080;
        v32 = v19;
        v33 = 2080;
        v34 = "";
        v35 = 2080;
        v36 = v20;
        v37 = 2080;
        v38 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s\t%s: %s", buf, 0x3Eu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v22 = v15[1];
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
          v23 = v15[2];
          v9 = *v23 == v15;
          v15 = v23;
        }

        while (!v9);
      }

      v15 = v23;
    }

    while (v23 != v16);
  }

  result = v3 + 86;
  if (v24 != a2)
  {
    return sub_1004FC0E8(v24, *a2, v16);
  }

  return result;
}

uint64_t entitlements::CEHTTPDriver::isConnectionActiveOnAnySlot_sync(uint64_t a1, int a2)
{
  subscriber::makeSimSlotRange();
  v4 = v8;
  if (v8 == v9)
  {
    return 0;
  }

  do
  {
    if (v10(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v9);
  if (v4 == v9)
  {
    return 0;
  }

  while (1)
  {
    isConnectionActive_sync = entitlements::CEHTTPDriver::isConnectionActive_sync(a1, a2, *v4);
    if (isConnectionActive_sync)
    {
      break;
    }

    v6 = isConnectionActive_sync;
    do
    {
      ++v4;
    }

    while (v4 != v9 && (v10(*v4) & 1) == 0);
    if (v4 == v9)
    {
      return v6;
    }
  }

  return 1;
}

BOOL entitlements::CEHTTPDriver::isConnectionActive_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 792);
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 792;
  do
  {
    if (*(v3 + 32) >= a3)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a3));
  }

  while (v3);
  if (v4 == a1 + 792)
  {
    return 0;
  }

  if (*(v4 + 32) > a3)
  {
    return 0;
  }

  v7 = *(v4 + 48);
  v5 = v4 + 48;
  v6 = v7;
  if (!v7)
  {
    return 0;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  return v8 != v5 && *(v8 + 32) <= a2 && *(v8 + 44) == 2;
}

uint64_t entitlements::CEHTTPDriver::isConnectionAvailableOnAnySlot_sync(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v8;
  if (v8 == v9)
  {
    return 0;
  }

  do
  {
    if (v10(*v2))
    {
      break;
    }

    ++v2;
  }

  while (v2 != v9);
  if (v2 == v9)
  {
    return 0;
  }

  v3 = (a1 + 840);
  while (1)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = *v2;
      v6 = v3;
      do
      {
        if (*(v4 + 28) >= v5)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 28) < v5));
      }

      while (v4);
      if (v6 != v3 && v5 >= *(v6 + 7) && (ConnectionAvailabilityContainer::available() & 1) != 0)
      {
        break;
      }
    }

    do
    {
      ++v2;
    }

    while (v2 != v9 && (v10(*v2) & 1) == 0);
    if (v2 == v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t entitlements::CEHTTPDriver::canPerformRequest_sync(entitlements::CEHTTPDriver *this)
{
  if (*(this + 76))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 16));
      v4 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v3;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v4;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%sThere is already a requested query";
LABEL_4:
      v6 = v2;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, __p, 0x2Au);
    }

    return 1;
  }

  v7 = *(this + 16);
  v8 = **v7;
  if ((*(v8 + 48) & 1) == 0)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v14 = PersonalityInfo::logPrefix(v8);
    v15 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v14;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v15;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sPersonality is inactive";
    goto LABEL_18;
  }

  v9 = *(v8 + 49);
  v10 = v9 == 3 || v9 == 0;
  if (v10 && (*(v8 + 60) & 1) == 0)
  {
    v11 = *(this + 5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v17 = PersonalityInfo::logPrefix(v8);
      v18 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v17;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v18;
      v51 = 2080;
      v52 = "";
      v19 = "#I %s%s%s%sSIM is not EAP-AKA capable";
LABEL_27:
      v24 = v11;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v19, __p, 0x2Au);
    }

    return 2;
  }

  if ((*(this + 168) & 1) == 0)
  {
    v20 = *(v7 + 136);
    v11 = *(this + 5);
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v20 != 1)
    {
      if (!v21)
      {
        return 1;
      }

      v27 = PersonalityInfo::logPrefix(v8);
      v28 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v27;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v28;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%swaiting for authentication settings";
      goto LABEL_18;
    }

    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(v8);
      v23 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v22;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v23;
      v51 = 2080;
      v52 = "";
      v19 = "#I %s%s%s%sobtained IMSI is not allowed for entitlement communication";
      goto LABEL_27;
    }

    return 2;
  }

  if (*(this + 360) == 1)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v12 = PersonalityInfo::logPrefix(v8);
    v13 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v12;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v13;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for auth token";
LABEL_18:
    v6 = v11;
    goto LABEL_19;
  }

  if (*(this + 361) == 1)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v25 = PersonalityInfo::logPrefix(v8);
    v26 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v25;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v26;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for service token";
    goto LABEL_18;
  }

  v29 = *(v7 + 455);
  if (v29 < 0)
  {
    v29 = *(v7 + 440);
  }

  if (!v29)
  {
    sub_100A83334(*(this + 18), __p);
    v30 = sub_100318068(__p, "1");
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*__p);
    }

    if (!v30)
    {
      v2 = *(this + 5);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v36 = PersonalityInfo::logPrefix(***(this + 16));
      v37 = *(this + 20);
      *__p = 136315906;
      *&__p[4] = v36;
      v47 = 2080;
      v48 = " ";
      v49 = 2080;
      v50 = v37;
      v51 = 2080;
      v52 = "";
      v5 = "#I %s%s%s%swaiting for unique id";
      goto LABEL_4;
    }
  }

  if (*(this + 71))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v31 = PersonalityInfo::logPrefix(***(this + 16));
    v32 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v31;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v32;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sExisting Request in place, delaying subsequent transactions";
    goto LABEL_4;
  }

  if (sub_1009C2E28(this))
  {
    v33 = *(this + 5);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    v34 = PersonalityInfo::logPrefix(***(this + 16));
    v35 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v34;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v35;
    v51 = 2080;
    v52 = "";
    v19 = "#W %s%s%s%sToo many entitlement failures";
    goto LABEL_52;
  }

  if (sub_1009C2E38(this))
  {
    v33 = *(this + 5);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return 2;
    }

    v38 = PersonalityInfo::logPrefix(***(this + 16));
    v39 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v38;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v39;
    v51 = 2080;
    v52 = "";
    v19 = "#W %s%s%s%sSubscriber blocked";
LABEL_52:
    v24 = v33;
    goto LABEL_28;
  }

  if (*(this + 49))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v40 = PersonalityInfo::logPrefix(***(this + 16));
    v41 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v40;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v41;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sCommunication is temporary blocked because of server issues";
    goto LABEL_4;
  }

  if (*(this + 51))
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v42 = PersonalityInfo::logPrefix(***(this + 16));
    v43 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v42;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v43;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%sCommunication is temporary blocked because of connection issues";
    goto LABEL_4;
  }

  if (*(this + 857) != 1)
  {
    v2 = *(this + 5);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v44 = PersonalityInfo::logPrefix(***(this + 16));
    v45 = *(this + 20);
    *__p = 136315906;
    *&__p[4] = v44;
    v47 = 2080;
    v48 = " ";
    v49 = 2080;
    v50 = v45;
    v51 = 2080;
    v52 = "";
    v5 = "#I %s%s%s%swaiting for 'location service' state";
    goto LABEL_4;
  }

  if (!*(this + 80))
  {
    return 1;
  }

  result = entitlements::CEHTTPDriver::checkConnectivityForQuery(this, (*(this + 79) + 16), 0);
  if (result)
  {
    sub_1004E2AA0();
  }

  return result;
}

BOOL entitlements::CEHTTPDriver::checkConnectivityForQuery(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 128));
    v8 = *(a1 + 160);
    sub_100535024(*a2, __p);
    v9 = v40 >= 0 ? __p : __p[0];
    *buf = 136316418;
    v42 = v7;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v8;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v51 = 2080;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, analysing: %s", buf, 0x3Eu);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *(*a2 + 120);
  if ((v10 & 0x100000000) == 0)
  {
    goto LABEL_42;
  }

  v11 = *(a1 + 696);
  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = a1 + 696;
  do
  {
    if (*(v11 + 32) >= v10)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < v10));
  }

  while (v11);
  if (v12 == a1 + 696 || *(v12 + 32) > v10)
  {
    goto LABEL_42;
  }

  v13 = *(v12 + 63);
  if (v13 < 0)
  {
    v13 = *(v12 + 48);
  }

  if (!v13)
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v36 = PersonalityInfo::logPrefix(***(a1 + 128));
    v37 = *(a1 + 160);
    v38 = sub_10006EE44(v10);
    *buf = 136316418;
    v42 = v36;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v37;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v51 = 2080;
    v52 = v38;
    v29 = "#I %s%s%s%sQ:%zu, alt server url for %s is not received/processed yet, waiting - bail-out";
    v30 = v35;
    v31 = 62;
    goto LABEL_33;
  }

  if ((*(v12 + 64) & 1) == 0)
  {
LABEL_42:
    if (entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(a1))
    {
      v14 = *(a1 + 40);
      result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      v16 = PersonalityInfo::logPrefix(***(a1 + 128));
      v17 = *(a1 + 160);
      v18 = *(a1 + 858);
      *buf = 136316418;
      if (v18)
      {
        v19 = "companion device";
      }

      else
      {
        v19 = "Internet";
      }

      v42 = v16;
      v43 = 2080;
      v44 = " ";
      v45 = 2080;
      v46 = v17;
      v47 = 2080;
      v48 = "";
      v49 = 2048;
      v50 = a3;
      v51 = 2080;
      v52 = v19;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Entitlements can go over %s - go ahead", buf, 0x3Eu);
      return 0;
    }
  }

  if ((sub_100A81C8C(*(a1 + 144)) & 1) == 0 || *(a1 + 777) != 1)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v27 = PersonalityInfo::logPrefix(***(a1 + 128));
    v28 = *(a1 + 160);
    *buf = 136316162;
    v42 = v27;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v28;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    v29 = "#I %s%s%s%sQ:%zu, No transport to reach Entitlement server - bail-out";
    v30 = v26;
    v31 = 52;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
    return 1;
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(***(a1 + 128));
    v22 = *(a1 + 160);
    *buf = 136316162;
    v42 = v21;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v22;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Entitlements can go over dedicated APN - go ahead", buf, 0x34u);
  }

  v23 = **(a1 + 128);
  v24 = *v23;
  v25 = *(*v23 + 13);
  if (entitlements::CEHTTPDriver::isConnectionActive_sync(a1, 15, *(*v23 + 13)))
  {
    return 0;
  }

  v32 = *(a1 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(v24);
    v34 = *(a1 + 160);
    *buf = 136316162;
    v42 = v33;
    v43 = 2080;
    v44 = " ";
    v45 = 2080;
    v46 = v34;
    v47 = 2080;
    v48 = "";
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sQ:%zu, Need to activate entitlement service type.", buf, 0x34u);
    v25 = *(***(a1 + 128) + 52);
  }

  sub_100975A40(v25);
  return 1;
}

void sub_1004E5450(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  v5 = v2[3];
  if (v5)
  {
    sub_100004A34(v5);
  }

  operator delete(v2);
}

uint64_t entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(entitlements::CEHTTPDriver *this)
{
  if ((sub_100A81C8C(*(this + 18)) & 2) == 0)
  {
    goto LABEL_2;
  }

  if (*(this + 736) & 1) != 0 || (*(this + 858) & 1) != 0 || (entitlements::CEHTTPDriver::isConnectionActiveOnAnySlot_sync(this, 0))
  {
LABEL_9:
    v2 = 1;
    return v2 & 1;
  }

  if ((sub_100A81C8C(*(this + 18)) & 1) == 0 || (*(this + 777) & 1) == 0)
  {
    if ((entitlements::CEHTTPDriver::isConnectionAvailableOnAnySlot_sync(this) & 1) == 0)
    {
      v2 = *(this + 776);
      return v2 & 1;
    }

    goto LABEL_9;
  }

LABEL_2:
  v2 = 0;
  return v2 & 1;
}

void entitlements::CEHTTPDriver::initiateRequestQuery_sync(entitlements::CEHTTPDriver *this, char a2)
{
  v44 = 0;
  ctu::ns::AutoPool::AutoPool(&v44);
  canPerformRequest_sync = entitlements::CEHTTPDriver::canPerformRequest_sync(this);
  if (canPerformRequest_sync)
  {
    if (canPerformRequest_sync == 2)
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(***(this + 16));
        v7 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v46 = 2080;
        v47 = v7;
        v48 = 2080;
        v49 = "";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRequest cannot be executed - report failure for all requests", buf, 0x2Au);
      }

      buf[0] = 0;
      buf[4] = 0;
      entitlements::CEHTTPDriver::terminateAllQueries(this, 1, buf);
    }

    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(this + 16));
      v16 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v46 = 2080;
      v47 = v16;
      v48 = 2080;
      v49 = "";
      v17 = "#I %s%s%s%sUnable to perform request";
      v18 = v14;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0x2Au);
      goto LABEL_51;
    }

    goto LABEL_51;
  }

  v8 = *(this + 47);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = *(this + 737);
  v10 = *(this + 5);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v12 = PersonalityInfo::logPrefix(***(this + 16));
      v13 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v46 = 2080;
      v47 = v13;
      v48 = 2080;
      v49 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sForced to make a request - removing 'forced' flag, canceling automatic retry timeout", buf, 0x2Au);
      v8 = *(this + 47);
      *(this + 47) = 0;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      *(this + 47) = 0;
    }

    (*(*v8 + 8))(v8);
LABEL_18:
    *(this + 737) = 0;
    v21 = *(*(this + 79) + 16);
    if (!v21)
    {
      __assert_rtn("initiateRequestQuery_sync", "CarrierEntitlementsHTTPCommandDriver.mm", 2952, "fPendingQueryQueue.front()");
    }

    v22 = sub_1005358E8(v21);
    if ((a2 & 1) != 0 || (v26 = v22, *(this + 676) == 1) && *(this + 168) == v22)
    {
      if (!*(this + 83))
      {
        v23 = *(this + 5);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = PersonalityInfo::logPrefix(***(this + 16));
          v25 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v24;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v46 = 2080;
          v47 = v25;
          v48 = 2080;
          v49 = "";
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssending out the request", buf, 0x2Au);
        }

        if (*(this + 676) == 1)
        {
          *(this + 676) = 0;
        }

        entitlements::CEHTTPDriver::initiateAndSendHttpRequest_sync(this);
      }
    }

    else
    {
      *(this + 168) = v22;
      *(this + 676) = 1;
      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = PersonalityInfo::logPrefix(***(this + 16));
        v29 = *(this + 20);
        *buf = 136316162;
        *&buf[4] = v28;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v46 = 2080;
        v47 = v29;
        v48 = 2080;
        v49 = "";
        v50 = 2048;
        v51 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sscheduling the request of generation:%lu", buf, 0x34u);
      }

      sub_100004AA0(buf, this + 1);
      v31 = *buf;
      v30 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v30);
      }

      Registry::getTimerService(buf, *(this + 6));
      v32 = *buf;
      sub_10000501C(__p, "hold outgoing");
      v33 = *(this + 3);
      object = v33;
      if (v33)
      {
        dispatch_retain(v33);
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3321888768;
      v37[2] = sub_1004E5F88;
      v37[3] = &unk_101E518E8;
      v37[4] = this;
      v37[5] = v31;
      v38 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      aBlock = _Block_copy(v37);
      sub_100D23364(v32, __p, 1, 100000, &object, &aBlock);
      v34 = v43;
      v43 = 0;
      v35 = *(this + 83);
      *(this + 83) = v34;
      if (v35)
      {
        (*(*v35 + 8))(v35);
        v36 = v43;
        v43 = 0;
        if (v36)
        {
          (*(*v36 + 8))(v36);
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

      if (v42 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v38)
      {
        std::__shared_weak_count::__release_weak(v38);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }
    }

    goto LABEL_51;
  }

  if (v11)
  {
    v19 = PersonalityInfo::logPrefix(***(this + 16));
    v20 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v46 = 2080;
    v47 = v20;
    v48 = 2080;
    v49 = "";
    v17 = "#I %s%s%s%sautomatic retry timer in place";
    v18 = v10;
    goto LABEL_15;
  }

LABEL_51:
  ctu::ns::AutoPool::~AutoPool(&v44);
}

void *sub_1004E5C3C(uint64_t a1, uint64_t *__p)
{
  v3 = *__p;
  v4 = __p[1];
  *(v3 + 8) = v4;
  *v4 = v3;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_100004A34(v5);
  }

  operator delete(__p);
  return v4;
}

void sub_1004E5C8C(void *a1)
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
          v7 = PersonalityInfo::logPrefix(***(v3 + 128));
          v8 = *(v3 + 160);
          v9 = 136315906;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          v13 = 2080;
          v14 = v8;
          v15 = 2080;
          v16 = "";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%scancelation re-check timer expired", &v9, 0x2Au);
        }

        entitlements::CEHTTPDriver::checkPendingQueriesCancelation(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1004E5DB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        entitlements::CEHTTPDriver::onAutomaticRetryTimeoutExpiration(v5);
        sub_100004A34(v4);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1004E5E2C(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t entitlements::CEHTTPDriver::onAutomaticRetryTimeoutExpiration(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    v7 = 136315906;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v4;
    v13 = 2080;
    v14 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________   retry backoff timer expired", &v7, 0x2Au);
  }

  v5 = *(this + 47);
  *(this + 47) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return entitlements::CEHTTPDriver::sendRequestIfPending_sync(this);
}

uint64_t sub_1004E5F5C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1004E5F78(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004E5F88(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(v2 + 128));
    v5 = *(v2 + 160);
    v11 = 136315906;
    v12 = v4;
    v13 = 2080;
    v14 = " ";
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sfHoldOutgoingTimer fired", &v11, 0x2Au);
  }

  v6 = a1[6];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *(v9 + 83);
        *(v9 + 83) = 0;
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        sub_100004A34(v8);
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        entitlements::CEHTTPDriver::initiateRequestQuery_sync(v9, 0);
        sub_100004A34(v8);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1004E60F4(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::initiateAndSendHttpRequest_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 79);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 76) = v4;
  v5 = *(this + 77);
  *(this + 77) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    v9 = *(this + 80);
    *buf = 136316162;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v15 = 2080;
    v16 = v8;
    v17 = 2080;
    v18 = "";
    v19 = 2048;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sTaking first pending query out of %zu, and Sending out!", buf, 0x34u);
  }

  sub_1004E5450(this + 624);
  if (!*(this + 80))
  {
    entitlements::CEHTTPDriver::addNewPendingQuery(this);
  }

  if (!entitlements::CEHTTPDriver::addAuthDataIfNeeded_sync(this, *(this + 76)))
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(this + 16));
      v12 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v15 = 2080;
      v16 = v12;
      v17 = 2080;
      v18 = "";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sfailed to add Authentication - cannot issue request, failing attempt immediately", buf, 0x2Au);
    }

    buf[0] = 0;
    buf[4] = 0;
    v13[0] = 0;
    v13[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(this, 0, buf, v13);
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, this + 1);
    operator new();
  }

  entitlements::CEHTTPDriver::sendHttpRequest_sync(this);
}

void sub_1004E63C0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void entitlements::CEHTTPDriver::resetFailuresAndBackoffTimer(uint64_t a1, signed int a2)
{
  sub_1009C43B8(a1, a2);
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return;
      }

      goto LABEL_7;
    }

    v19 = *(a1 + 712);
    if (v19 == (a1 + 720))
    {
      return;
    }

    while (1)
    {
      v20 = *(v19 + 8);
      if ((v20 - 6001) > 9)
      {
        break;
      }

      v21 = 1 << (v20 - 113);
      if ((v21 & 0x209) != 0)
      {
        v22 = v19[1];
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
            v23 = v19[2];
            v14 = *v23 == v19;
            v19 = v23;
          }

          while (!v14);
        }
      }

      else
      {
        if ((v21 & 6) == 0)
        {
          break;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = PersonalityInfo::logPrefix(***(a1 + 128));
          v26 = *(a1 + 160);
          v27 = sub_1000710D4(*(v19 + 7));
          v28 = sub_100531604(*(v19 + 8));
          v29 = sub_1000710B0(0);
          *buf = 136316674;
          v35 = v25;
          v36 = 2080;
          v37 = " ";
          v38 = 2080;
          v39 = v26;
          v40 = 2080;
          v41 = "";
          v42 = 2080;
          v43 = v27;
          v44 = 2080;
          v45 = v28;
          v46 = 2080;
          v47 = v29;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoved vital block for action %s [%s] because of %s", buf, 0x48u);
        }

        v23 = sub_1000194D8((a1 + 712), v19);
        operator delete(v19);
      }

LABEL_50:
      v19 = v23;
      if (v23 == (a1 + 720))
      {
        return;
      }
    }

    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v32 = sub_100531604(v20);
      v33 = sub_1000710D4(*(v19 + 7));
      *buf = 136315394;
      v35 = v32;
      v36 = 2080;
      v37 = v33;
      _os_log_fault_impl(&_mh_execute_header, v30, OS_LOG_TYPE_FAULT, "invalid vital code %s for action %s", buf, 0x16u);
    }

    v31 = v19[1];
    if (v31)
    {
      do
      {
        v23 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v23 = v19[2];
        v14 = *v23 == v19;
        v19 = v23;
      }

      while (!v14);
    }

    goto LABEL_50;
  }

  if (a2 == 7 || a2 == 3)
  {
LABEL_7:
    v4 = *(a1 + 712);
    if (v4 == (a1 + 720))
    {
      return;
    }

    while (1)
    {
      v5 = *(v4 + 8);
      if ((v5 - 6001) < 3)
      {
        goto LABEL_11;
      }

      if (v5 != 6004)
      {
        break;
      }

      v13 = v4[1];
      if (v13)
      {
        do
        {
          v12 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v14 = *v12 == v4;
          v4 = v12;
        }

        while (!v14);
      }

LABEL_14:
      v4 = v12;
      if (v12 == (a1 + 720))
      {
        return;
      }
    }

    if (v5 != 6010)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        v17 = sub_100531604(v5);
        v18 = sub_1000710D4(*(v4 + 7));
        *buf = 136315394;
        v35 = v17;
        v36 = 2080;
        v37 = v18;
        _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "invalid vital code %s for action %s", buf, 0x16u);
      }

      v16 = v4[1];
      if (v16)
      {
        do
        {
          v12 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v14 = *v12 == v4;
          v4 = v12;
        }

        while (!v14);
      }

      goto LABEL_14;
    }

LABEL_11:
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(***(a1 + 128));
      v8 = *(a1 + 160);
      v9 = sub_1000710D4(*(v4 + 7));
      v10 = sub_100531604(*(v4 + 8));
      v11 = sub_1000710B0(a2);
      *buf = 136316674;
      v35 = v7;
      v36 = 2080;
      v37 = " ";
      v38 = 2080;
      v39 = v8;
      v40 = 2080;
      v41 = "";
      v42 = 2080;
      v43 = v9;
      v44 = 2080;
      v45 = v10;
      v46 = 2080;
      v47 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sremoved vital block for action %s [%s] because of %s", buf, 0x48u);
    }

    v12 = sub_1000194D8((a1 + 712), v4);
    operator delete(v4);
    goto LABEL_14;
  }
}

BOOL entitlements::CEHTTPDriver::hasVitalBlockFor(uint64_t a1, int a2, int a3)
{
  if (!sub_1009C2E38(a1))
  {
    v10 = *(a1 + 720);
    if (!v10)
    {
      return 0;
    }

    v11 = a1 + 720;
    do
    {
      if (*(v10 + 28) >= a2)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 28) < a2));
    }

    while (v10);
    if (v11 == a1 + 720 || *(v11 + 28) > a2)
    {
      return 0;
    }

    if (a3)
    {
      if (*(v11 + 32) >> 1 == 3001)
      {
        return 0;
      }

      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = PersonalityInfo::logPrefix(***(a1 + 128));
        v14 = *(a1 + 160);
        v15 = sub_1000710D4(a2);
        v16 = sub_100531604(*(v11 + 32));
        v22 = 136316418;
        v23 = v13;
        v24 = 2080;
        v25 = " ";
        v26 = 2080;
        v27 = v14;
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = v15;
        v32 = 2080;
        v33 = v16;
        v17 = "#I %s%s%s%sAction %s is not allowed since it had vital failure %s, and failure is unforgivable even being user-initiated";
LABEL_19:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v17, &v22, 0x3Eu);
      }
    }

    else
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PersonalityInfo::logPrefix(***(a1 + 128));
        v19 = *(a1 + 160);
        v20 = sub_1000710D4(a2);
        v21 = sub_100531604(*(v11 + 32));
        v22 = 136316418;
        v23 = v18;
        v24 = 2080;
        v25 = " ";
        v26 = 2080;
        v27 = v19;
        v28 = 2080;
        v29 = "";
        v30 = 2080;
        v31 = v20;
        v32 = 2080;
        v33 = v21;
        v17 = "#I %s%s%s%sAction %s is not allowed since it had vital failure %s and action is not user-initiated";
        goto LABEL_19;
      }
    }

    return 1;
  }

  v6 = *(a1 + 40);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!result)
  {
    return result;
  }

  v8 = PersonalityInfo::logPrefix(***(a1 + 128));
  v9 = *(a1 + 160);
  v22 = 136316162;
  v23 = v8;
  v24 = 2080;
  v25 = " ";
  v26 = 2080;
  v27 = v9;
  v28 = 2080;
  v29 = "";
  v30 = 2080;
  v31 = sub_1000710D4(a2);
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sAction %s is not allowed since subscriber blocked", &v22, 0x34u);
  return 0;
}

void *sub_1004E6BDC(void *a1, uint64_t *a2)
{
  sub_1004FC3DC(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t *sub_1004E6C28(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1005348EC();
    operator delete();
  }

  return a1;
}

void entitlements::CEHTTPDriver::sendHttpRequest_sync(entitlements::CEHTTPDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 16));
    v4 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v4;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s_____________>  Sending HTTP Request, trying", buf, 0x2Au);
  }

  v5 = *(this + 76);
  if (v5)
  {
    memset(&__dst, 0, sizeof(__dst));
    if (*(this + 455) < 0)
    {
      sub_100005F2C(&__dst, *(this + 54), *(this + 55));
      v5 = *(this + 76);
    }

    else
    {
      __dst = *(this + 18);
    }

    v9 = *(v5 + 120);
    if ((v9 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(this + 87);
    if (!v10)
    {
      goto LABEL_17;
    }

    v11 = this + 696;
    do
    {
      if (*(v10 + 8) >= v9)
      {
        v11 = v10;
      }

      v10 = *&v10[8 * (*(v10 + 8) < v9)];
    }

    while (v10);
    if (v11 != this + 696 && *(v11 + 8) <= v9)
    {
      v12 = v11[64];
      std::string::operator=(&__dst, (v11 + 40));
    }

    else
    {
LABEL_17:
      v12 = 0;
    }

    v13 = *(this + 5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(***(this + 16));
      v15 = *(this + 20);
      p_dst = &__dst;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v15;
      *v96 = 2080;
      *&v96[2] = "";
      *&v96[10] = 2082;
      *&v96[12] = p_dst;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sSending to Server Address: %{public}s", buf, 0x34u);
    }

    memset(&v92, 0, sizeof(v92));
    if (*(this + 43) == 2)
    {
      entitlements::CEHTTPDriver::gba_personalizedURL(this, &__dst, &v92);
    }

    else if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v92, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v92 = __dst;
    }

    v89 = 0;
    v90 = 0;
    v91 = 0;
    if (*(this + 43) == 2)
    {
      entitlements::CEHTTPDriver::gba_createAuthHeader(this, buf);
    }

    else
    {
      *&buf[8] = 0;
      *&buf[16] = 0;
      *buf = &buf[8];
    }

    entitlements::CEHTTPDriver::createHeaders(this, buf, &v89);
    sub_1000DD0AC(buf, *&buf[8]);
    v17 = *(this + 5);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(***(this + 16));
      v19 = *(this + 20);
      v20 = &v92;
      if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = v92.__r_.__value_.__r.__words[0];
      }

      *buf = 136316162;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v19;
      *v96 = 2080;
      *&v96[2] = "";
      *&v96[10] = 2080;
      *&v96[12] = v20;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%surl: %s", buf, 0x34u);
      v17 = *(this + 5);
    }

    v21 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(***(this + 16));
      v23 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v22;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v23;
      *v96 = 2080;
      *&v96[2] = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%ssend header:", buf, 0x2Au);
    }

    v72 = v12;
    v24 = v89;
    if (v89 != &v90)
    {
      do
      {
        v25 = *(this + 5);
        v21 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v21)
        {
          v26 = PersonalityInfo::logPrefix(***(this + 16));
          v27 = v24 + 4;
          if (*(v24 + 55) < 0)
          {
            v27 = *v27;
          }

          v28 = v24 + 7;
          if (*(v24 + 79) < 0)
          {
            v28 = *v28;
          }

          v29 = *(this + 20);
          *buf = 136316418;
          *&buf[4] = v26;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v29;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v27;
          v97 = 2080;
          v98 = v28;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%s  %s: %s", buf, 0x3Eu);
        }

        v30 = v24[1];
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
            v31 = v24[2];
            v32 = *v31 == v24;
            v24 = v31;
          }

          while (!v32);
        }

        v24 = v31;
      }

      while (v31 != &v90);
    }

    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      v21 = sub_100005F2C(&__p, v92.__r_.__value_.__l.__data_, v92.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v92;
    }

    v86 = v89;
    v87[0] = v90;
    v87[1] = v91;
    if (v91)
    {
      v90[2] = v87;
      v89 = &v90;
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v86 = v87;
    }

    v33 = *(this + 74);
    *&v85 = *(this + 73);
    *(&v85 + 1) = v33;
    if (v33)
    {
      atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
    }

    entitlements::sCreateHttpRequest(v21, 3, &__p, &v86, &v85);
    v34 = (this + 568);
    v35 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v36 = *(this + 72);
    *(this + 568) = v35;
    if (v36)
    {
      sub_100004A34(v36);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    if (*(&v85 + 1))
    {
      sub_100004A34(*(&v85 + 1));
    }

    sub_1000DD0AC(&v86, v87[0]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v37 = *v34;
    if (*v34)
    {
      if (*(this + 57))
      {
        (*(*v37 + 72))(*v34);
        v37 = *v34;
      }

      sub_10053BF9C(*(this + 76), buf);
      (*(*v37 + 56))(v37, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      (*(**(this + 71) + 8))(*(this + 71), *(this + 3));
      v38 = *(this + 71);
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3321888768;
      v81[2] = sub_1004EA23C;
      v81[3] = &unk_101E51948;
      sub_100004AA0(buf, this + 1);
      v40 = *buf;
      v39 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v82 = this;
        v83 = v40;
        v84 = v39;
        atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v82 = this;
        v83 = *buf;
        v84 = 0;
      }

      (*(*v38 + 16))(v38, v81);
      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      v79[0] = 0;
      v79[1] = 0;
      v80 = 0;
      if (*(this + 567) < 0)
      {
        sub_100005F2C(v79, *(this + 68), *(this + 69));
      }

      else
      {
        *v79 = *(this + 34);
        v80 = *(this + 70);
      }

      v44 = HIBYTE(v80);
      if (v80 < 0)
      {
        v44 = v79[1];
      }

      if (v44)
      {
        v45 = *(this + 5);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = PersonalityInfo::logPrefix(***(this + 16));
          v47 = *(this + 20);
          v48 = v79;
          if (v80 < 0)
          {
            v48 = v79[0];
          }

          *buf = 136316162;
          *&buf[4] = v46;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v47;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v48;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request (bound to interface '%s')", buf, 0x34u);
        }
      }

      v49 = (this + 608);
      if ((v72 & 1) == 0 && entitlements::CEHTTPDriver::isEntitlementReachableOnInternet_sync(this))
      {
        v50 = *(this + 5);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = PersonalityInfo::logPrefix(***(this + 16));
          v52 = *(this + 20);
          v53 = "Internet";
          if (*(this + 858))
          {
            v53 = "iPhone";
          }

          *buf = 136316162;
          *&buf[4] = v51;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v52;
          *v96 = 2080;
          *&v96[2] = "";
          *&v96[10] = 2080;
          *&v96[12] = v53;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request without interface or service type restrictions (over %s)", buf, 0x34u);
        }

        if ((*(this + 858) & 1) == 0)
        {
          if (sub_1005525EC(*v49))
          {
            v54 = *v34;
            sub_10000501C(buf, "com.apple.CommCenter.CellularPlanProvisioning");
            (*(*v54 + 160))(v54, buf);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }

LABEL_101:
        v58 = sub_100A83540(*(this + 18));
        if (v58)
        {
          v59 = *(this + 5);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = PersonalityInfo::logPrefix(***(this + 16));
            v61 = *(this + 20);
            *buf = 136316162;
            *&buf[4] = v60;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v95 = v61;
            *v96 = 2080;
            *&v96[2] = "";
            *&v96[10] = 1024;
            *&v96[12] = v58;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sRequest timeout set to %d seconds", buf, 0x30u);
          }

          (*(**v34 + 96))(v58);
        }

        (*(**v34 + 232))(*v34, 1);
        (*(**v34 + 200))(*v34, 75);
        v77[0] = 0;
        v77[1] = 0;
        v78 = 0;
        if (sub_1004DE990(*(this + 6), ***(this + 16), *(this + 16) + 64, v77))
        {
          if (!*(this + 30) && *v49)
          {
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1004F1130;
            v95 = &unk_101E51FB0;
            *v96 = v77;
            *&v96[8] = this + 608;
            sub_1004F0F84(0x800E2);
          }
        }

        else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
        {
          v69 = PersonalityInfo::logPrefix(***(this + 16));
          sub_101772A64(v69, this, buf);
        }

        if (!*(this + 93))
        {
          operator new();
        }

        v70 = *(this + 77);
        v76[0] = *(this + 76);
        v76[1] = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        entitlements::CEHTTPDriver::trackGetEntitlementRequests(this, v76);
        if (v70)
        {
          sub_100004A34(v70);
        }

        sub_100552708(*v49);
        v71 = *v34;
        if (SHIBYTE(v80) < 0)
        {
          sub_100005F2C(v74, v79[0], v79[1]);
        }

        else
        {
          *v74 = *v79;
          v75 = v80;
        }

        (*(*v71 + 40))(v71, v74);
        if (SHIBYTE(v75) < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77[0]);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79[0]);
        }

        if (v84)
        {
          std::__shared_weak_count::__release_weak(v84);
        }

        sub_1000DD0AC(&v89, v90);
        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        return;
      }

      if ((sub_100A81C8C(*(this + 18)) & 1) != 0 && *(this + 777) == 1)
      {
        v55 = *(this + 5);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = PersonalityInfo::logPrefix(***(this + 16));
          v57 = *(this + 20);
          *buf = 136315906;
          *&buf[4] = v56;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v95 = v57;
          *v96 = 2080;
          *&v96[2] = "";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s%s%sIssuing Request (over Entitlement service)", buf, 0x2Au);
        }

        (*(**v34 + 152))(*v34, kCTDataConnectionServiceTypeEntitlementTraffic);
        (*(**(this + 71) + 160))(*(this + 71), ***(this + 16));
        goto LABEL_101;
      }

      v62 = *(this + 5);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = PersonalityInfo::logPrefix(***(this + 16));
        v64 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v63;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v95 = v64;
        *v96 = 2080;
        *&v96[2] = "";
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sno-go. Device cannot use BB and do not have WiFi available", buf, 0x2Au);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(v79[0]);
      }

      if (v84)
      {
        std::__shared_weak_count::__release_weak(v84);
      }
    }

    else
    {
      v41 = *(this + 5);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = PersonalityInfo::logPrefix(***(this + 16));
        v43 = *(this + 20);
        *buf = 136315906;
        *&buf[4] = v42;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v95 = v43;
        *v96 = 2080;
        *&v96[2] = "";
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to allocate request", buf, 0x2Au);
      }
    }

    sub_1000DD0AC(&v89, v90);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v6 = *(this + 5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_123;
    }

    v7 = PersonalityInfo::logPrefix(***(this + 16));
    v8 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v8;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sNo Requested Query Object", buf, 0x2Au);
  }

  v6 = *(this + 5);
  if (*(this + 76))
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v65 = PersonalityInfo::logPrefix(***(this + 16));
      v66 = *(this + 20);
      *buf = 136315906;
      *&buf[4] = v65;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v95 = v66;
      *v96 = 2080;
      *&v96[2] = "";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sUnable to send http request", buf, 0x2Au);
    }

    buf[0] = 0;
    buf[4] = 0;
    v73[0] = 0;
    v73[1] = 0;
    entitlements::CEHTTPDriver::handleRequestFailureAndMergeWithPending_sync(this, 0, buf, v73);
    return;
  }

LABEL_123:
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v67 = PersonalityInfo::logPrefix(***(this + 16));
    v68 = *(this + 20);
    *buf = 136315906;
    *&buf[4] = v67;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v95 = v68;
    *v96 = 2080;
    *&v96[2] = "";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%s%s%sRequest is no longer valid", buf, 0x2Au);
  }
}