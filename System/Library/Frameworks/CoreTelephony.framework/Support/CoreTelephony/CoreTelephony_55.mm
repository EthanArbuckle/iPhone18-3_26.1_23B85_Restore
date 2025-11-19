void IMSCallModel::dial(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    sub_100383228();
  }

  v15 = (*(**(a1 + 128) + 352))(*(a1 + 128), a3);
  v16 = **(a1 + 752);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asString();
    sub_1000BA468(&v33, a3);
    printUuid();
    if (v35 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v19 = "normal";
    *buf = 136315650;
    if (v15)
    {
      v19 = "emergency";
    }

    *&buf[4] = v17;
    v37 = 2080;
    v38 = p_p;
    v39 = 2080;
    v40 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Dialing out %s call with uuid %s as %s setup call.", buf, 0x20u);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    sub_1000475BC(&v33);
  }

  if (*(a3 + 436) == 1)
  {
    *buf = asString();
    sub_100184AD0(a4 + 240, buf);
  }

  v20 = *a2;
  if (v15)
  {
    {
      v22 = *(a2 + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32[0] = v21;
      v32[1] = v22;
      IMSCallModel::dialEmergencyCall(a1, a4, a5, v32, a7, a8);
      if (v22)
      {
        sub_100004A34(v22);
        v23 = v22;
LABEL_29:
        sub_100004A34(v23);
      }
    }

    else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176D390();
    }
  }

  {
    v25 = v24;
    v26 = *(a2 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(buf, "");
    v27 = CallInfo::isEmergencyCallNormalSetup(a3);
    (*(*v25 + 128))(v25, a7, a4, buf, v27);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }

    if (v26)
    {
      v23 = v26;
      goto LABEL_29;
    }
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176D354();
  }

  v28 = *a2;
  v29 = *(a2 + 8);
  v31[0] = v28;
  v31[1] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000BA468(&v30, a3);
  sub_1001DB8CC(&v30, buf);
  IMSCallModel::addIMSCallForUuid(a1, v31, buf);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(*buf);
  }

  sub_1000475BC(&v30);
  if (v29)
  {
    sub_100004A34(v29);
  }
}

void sub_10038083C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::dialEmergencyCall(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  (*(*a1 + 248))(v25);
  v12 = **(a1 + 752);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HIBYTE(v26);
    if (v26 < 0)
    {
      v13 = v25[1];
    }

    v14 = v25;
    if (v26 < 0)
    {
      v14 = v25[0];
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I dialing out emergency call on personalityId :%s .", &buf, 0xCu);
  }

  v16 = isActive();
  buf = 0uLL;
  v34 = 0;
  if (v16)
  {
    v17 = HIBYTE(v26);
    if (v26 < 0)
    {
      v17 = v25[1];
    }

    v18 = v25;
    if (v26 < 0)
    {
      v18 = v25[0];
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    sub_10000501C(&buf, v19);
  }

  if ((*(a1 + 697) & 1) == 0)
  {
    if (SHIBYTE(v34) < 0)
    {
      operator delete(buf);
    }

    buf = 0uLL;
    v34 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(__p, v25[0], v25[1]);
    }

    else
    {
      *__p = *v25;
      v24 = v26;
    }

    IMSCallModel::setPrefsForEmCall(a1, a3, __p, a6);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = **(a1 + 752);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if (v34 < 0)
    {
      p_buf = buf;
    }

    v22 = *(a1 + 697);
    *v27 = 136315650;
    v28 = p_buf;
    v29 = 1024;
    v30 = v16;
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Carrier identifier in emergency dial: %s. [isSimActive: %d isIMSRegistered: %d]", v27, 0x18u);
  }

  (*(**a4 + 104))(*a4, a5, &buf, a2, a3);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100380B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::setPrefsForEmCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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

      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
LABEL_7:
    v18 = **(a1 + 752);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SystemDeterminationManager is NULL!", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_11:
  *buf = 0;
  v29 = 0;
  (*(*v16 + 40))(buf, v16, a3);
  v19 = *buf;
  v20 = **(a1 + 752);
  if (*buf)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a3 + 23);
      v22 = (v21 & 0x80u) != 0;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a3 + 8);
      }

      if (v22)
      {
        v23 = *a3;
      }

      else
      {
        v23 = a3;
      }

      if (v21)
      {
        v24 = v23;
      }

      else
      {
        v24 = "<invalid>";
      }

      *v30 = 136315138;
      *&v30[4] = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Setting IMS prefs on stack config for %s", v30, 0xCu);
      v19 = *buf;
    }

    *v30 = 0;
    (*(*v19 + 24))(v30, v19, a4, 0);
    v27 = 0;
    (*(**buf + 24))(&v27);
    v25 = *v30;
    v26 = v27;
    sub_1015F1FB4(a2 + 8);
    *(a2 + 8) = v25;
    *(a2 + 16) = v26;
    sub_1003823E4(a2 + 8);
    sub_10001021C(&v27);
    sub_10001021C(v30);
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10176C490();
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

LABEL_27:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void IMSCallModel::pullThumperCall(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v7 = *(a1 + 216);
  if (v7)
  {
    if (v7 == 1)
    {
      memset(buf, 0, sizeof(buf));
      v19 = 0;
      v9 = *(a1 + 208);
      if (*(v9 + 39) < 0)
      {
        sub_100005F2C(buf, *(v9 + 16), *(v9 + 24));
      }

      else
      {
        *buf = *(v9 + 16);
        v19 = *(v9 + 32);
      }

      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = buf;
        if (v19 < 0)
        {
          v13 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Pulling call %s via replaces header", __p, 0xCu);
      }

      (*(**a2 + 136))(*a2, buf, a4);
    }

    else
    {
      v10 = **(a1 + 752);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Pulling call via replaces header but too many ids, letting IPT pick", buf, 2u);
      }

      v11 = *a2;
      sub_10000501C(buf, "");
      sub_10000501C(__p, "");
      (*(*v11 + 128))(v11, buf, a4, __p, 0);
      if (v21 < 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *a2;
  v15 = a2[1];
  v17[0] = v14;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000BA468(&v16, a3);
  sub_1001DB8CC(&v16, buf);
  IMSCallModel::addIMSCallForUuid(a1, v17, buf);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*buf);
  }

  sub_1000475BC(&v16);
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10038118C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::hold(os_log_t **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1000BA468(&v7, a2);
  sub_1001DB8CC(&v7, __p);
  sub_1000475BC(&v7);
  v3 = *a1[94];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Holding call %s", buf, 0xCu);
  }

  *buf = 0uLL;
  ((*a1)[59])(&v5, a1, __p);
  sub_10037FC9C(&v5, buf);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*buf)
  {
    (*(**buf + 112))(*buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D3CC();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void IMSCallModel::resume(os_log_t **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1000BA468(&v7, a2);
  sub_1001DB8CC(&v7, __p);
  sub_1000475BC(&v7);
  v3 = *a1[94];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resuming call %s", buf, 0xCu);
  }

  *buf = 0uLL;
  ((*a1)[59])(&v5, a1, __p);
  sub_10037FC9C(&v5, buf);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*buf)
  {
    (*(**buf + 120))(*buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D43C();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t IMSCallModel::setPersonalityInfo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = (*(*a1 + 256))(a1);
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), v6);
  *(a1 + 752) = result;
  return result;
}

uint64_t IMSCallModel::fillUpDefaultCallCapabilities(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Filling up default call capabilities", __p, 2u);
  }

  (*(*this + 528))(this, kMaxSupportedCallCountKey, 6);
  (*(*this + 528))(this, kMaxMultiPartyCallCountKey, 5);
  (*(*this + 528))(this, kSwappableKey, 1);
  (*(*this + 248))(__p, this);
  isMergeAllowed = IMSCallModel::isMergeAllowed(this, this + 12, __p);
  (*(*this + 528))(this, kMergeableKey, isMergeAllowed);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*this + 528))(this, kAmbiguousMultiPartyKey, 0);
  (*(*this + 528))(this, kAddCallAllowedKey, 1);
  (*(*this + 528))(this, kHoldAllowedKey, 1);
  (*(*this + 528))(this, kEndToneInProgressKey, 0);
  (*(*this + 528))(this, kEndAndAnswerAllowedKey, 1);
  (*(*this + 528))(this, kIsConferenceSideBarBlockedKey, 1);
  (*(*this + 528))(this, kVoicePrivacyKey, 0);
  (*(*this + 528))(this, kSendDTMFInBursts, 0);
  v4 = *(this + 16);
  v5 = (*(*this + 256))(this);
  return (*(*v4 + 200))(v4, v5);
}

void sub_100381AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *IMSCallModel::setCallCapability(IMSCallModel *this, const char *a2, int a3)
{
  v5[0] = a2;
  v5[2] = v5;
  result = sub_100383464(this + 728, v5);
  *(result + 10) = a3;
  return result;
}

uint64_t IMSCallModel::findCallCapability(IMSCallModel *this, const char *a2)
{
  v2 = *(this + 92);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 736;
  do
  {
    v4 = *(v2 + 4);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 != this + 736 && *(v3 + 4) <= a2)
  {
    return *(v3 + 10);
  }

  else
  {
    return 0;
  }
}

void IMSCallModel::setLteEmergencySupport(uint64_t a1, uint64_t a2, int a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Updating LTE emergency bearer support to: %s", &v7, 0xCu);
  }

  *(a1 + 760) = a2;
  *(a1 + 768) = a3;
}

void IMSCallModel::cancelBrandedCallingImageFetching(IMSCallModel *this)
{
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 98);
  if (v3)
  {
    v4 = *(*v3 + 32);

    v4();
  }

  else if (os_log_type_enabled(**(this + 94), OS_LOG_TYPE_ERROR))
  {
    sub_10176D4AC();
  }
}

uint64_t IMSCallModel::removeBrandedCallingImage(uint64_t a1)
{
  result = *(a1 + 784);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void IMSCallModel::setShouldShowBrandedCallingInfo(IMSCallModel *this, int a2, char a3)
{
  *(this + 816) = a2;
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      sub_100413DEC(@"com.apple.CommCenter.BrandedCalling.userenables", @"com.apple.CommCenter.BrandedCalling");
    }
  }
}

void sub_100381D90(uint64_t a1)
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
        v6 = *(v5 + 11);
        *(v5 + 11) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        IMSCallModel::cancelBrandedCallingImageFetching(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100381E38(uint64_t result, uint64_t a2)
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

void sub_100381E54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IMSCallModel::reportBranding(uint64_t a1, uint64_t *a2, _BOOL4 a3, unsigned int a4)
{
  if (*a2)
  {
    v32 = 0;
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (v8)
    {
      v32 = v8;
    }

    else
    {
      v9 = xpc_null_create();
      v32 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
LABEL_12:
      xpc_release(v9);
      v30 = xpc_BOOL_create(a3);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      __p[0] = &v32;
      __p[1] = "is_branded_call";
      sub_10000F688(__p, &v30, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v30);
      v30 = 0;
      if (a3)
      {
        v11 = **(a1 + 752);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (a4)
        {
          if (v12)
          {
            v13 = *a2;
            if (*(*a2 + 55) < 0)
            {
              sub_100005F2C(__p, *(v13 + 32), *(v13 + 40));
            }

            else
            {
              *__p = *(v13 + 32);
              v29 = *(v13 + 48);
            }

            v15 = SHIBYTE(v29);
            v16 = __p[0];
            v17 = asString();
            v18 = __p;
            if (v15 < 0)
            {
              v18 = v16;
            }

            *buf = 136315394;
            v34 = v18;
            v35 = 2080;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I branding failed for call %s err %s", buf, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v24 = xpc_BOOL_create(0);
          if (!v24)
          {
            v24 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "is_image_displayed";
          sub_10000F688(__p, &v24, &v25);
          xpc_release(v25);
          v25 = 0;
          xpc_release(v24);
          v24 = 0;
          v22 = xpc_int64_create(a4);
          if (!v22)
          {
            v22 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "branded_call_failure_reason";
          sub_10000F688(__p, &v22, &v23);
          xpc_release(v23);
          v23 = 0;
          xpc_release(v22);
          v22 = 0;
        }

        else
        {
          if (v12)
          {
            v14 = *a2;
            if (*(*a2 + 55) < 0)
            {
              sub_100005F2C(__p, *(v14 + 32), *(v14 + 40));
            }

            else
            {
              *__p = *(v14 + 32);
              v29 = *(v14 + 48);
            }

            v19 = __p;
            if (v29 < 0)
            {
              v19 = __p[0];
            }

            *buf = 136315138;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I branding success for call %s", buf, 0xCu);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v26 = xpc_BOOL_create(1);
          if (!v26)
          {
            v26 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "is_image_displayed";
          sub_10000F688(__p, &v26, &v27);
          xpc_release(v27);
          v27 = 0;
          xpc_release(v26);
          v26 = 0;
        }
      }

      v21 = v32;
      if (v32)
      {
        xpc_retain(v32);
      }

      else
      {
        v21 = xpc_null_create();
      }

      ims::addCallEndInfo(&v21, v20);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v32);
      return;
    }

    v10 = xpc_null_create();
LABEL_11:
    v32 = v10;
    goto LABEL_12;
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176D4E8();
  }
}

void sub_1003822F4(uint64_t a1)
{
  sub_100382434(a1);

  operator delete();
}

void sub_100382334(uint64_t a1)
{
  sub_100382434(a1 - 8);

  operator delete();
}

void sub_100382370(uint64_t *a1)
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
        sub_1000BFE80((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

CFTypeRef sub_1003823E4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRetain(v2);
  }

  result = *(a1 + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_100382434(uint64_t a1)
{
  *a1 = off_101E45FE0;
  *(a1 + 8) = off_101E46248;
  v2 = *(a1 + 808);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 728, *(a1 + 736));
  sub_1002472DC(a1 + 704, *(a1 + 712));
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  sub_1000BFE80(a1 + 232);
  sub_1001754E8(a1 + 192);
  sub_100382370((a1 + 168));
  v4 = *(a1 + 152);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  IMSCallModelInterface::~IMSCallModelInterface(a1);
  v9 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 72));
  sub_1000C0544((a1 + 40));
  return a1;
}

uint64_t sub_1003825B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003825CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_1003825DC(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
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
    sub_100382848();
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

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100382824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001758B4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003828E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001758B4(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100382900(void *a1, const void **a2)
{
  result = sub_10031B7D4(a1, a2);
  if (result)
  {
    sub_100382938(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_100382938(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100120C90(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1001758B4(&v6, v3);
  }

  return v2;
}

void sub_100382A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176D524(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100382A20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100382A58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100382A88(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100382AC8(void *a1)
{
  *a1 = off_101E46518;
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100382B28(void *a1)
{
  *a1 = off_101E46518;
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100382C40(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100382C60(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E46518;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_100E03FE8((a2 + 3), (a1 + 3));
  v7 = a1[59];
  a2[58] = a1[58];
  a2[59] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100382CDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100382CF4(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100382D4C(void *a1)
{
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_100382DA0(uint64_t a1, uint64_t a2, char *a3)
{
  v12 = *a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v11 = v6;
    if (v6)
    {
      v7 = *(a1 + 8);
      v10 = v7;
      if (!v7)
      {
        goto LABEL_8;
      }

      v9[0] = &v10;
      v9[1] = a2;
      v9[2] = a1 + 464;
      v9[3] = &v12;
      v9[4] = a1 + 24;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100382ED0;
      block[3] = &unk_101E46588;
      block[4] = v7 + 40;
      block[5] = v9;
      v8 = *(v7 + 56);
      if (*(v7 + 64))
      {
        dispatch_async_and_wait(v8, block);
      }

      else
      {
        dispatch_sync(v8, block);
      }

      v6 = v11;
      if (v11)
      {
LABEL_8:
        sub_100004A34(v6);
      }
    }
  }
}

uint64_t sub_100382E84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_100382ED0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(**v1 + 752);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[1];
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Incoming call branded calling info: company image filepath is %s", buf, 0xCu);
  }

  v4 = v1[1];
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    if (v4[1] != 6)
    {
      goto LABEL_19;
    }

    v4 = *v4;
  }

  else if (v5 != 6)
  {
    goto LABEL_19;
  }

  v6 = *v4;
  v7 = *(v4 + 2);
  if (v6 == 1869902639 && v7 == 27491)
  {
    v9 = **v1;
    v10 = v1[2];
    v12 = *v10;
    v11 = v10[1];
    v14 = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 312))(v9, &v14, 1, *v1[3]);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

LABEL_19:
  v35 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
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
  *buf = 0u;
  sub_100E03FE8(buf, v1[4]);
  std::string::operator=(v34, v1[1]);
  BYTE9(v24) = 0;
  (*(**(**v1 + 128) + 88))(*(**v1 + 128), buf);
  return sub_1000BFE80(buf);
}

void sub_1003830E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100383110(uint64_t a1)
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

uint64_t sub_100383190(uint64_t a1, uint64_t a2)
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

uint64_t sub_100383298(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10011CF40(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1003825DC(a1, i + 2);
  }

  return a1;
}

uint64_t sub_100383310(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1003833C4();
  }

  return v2;
}

void *sub_100383464(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

void *sub_100383538(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100383590(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100383590(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100383618(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t sub_100383618(void *a1, void *a2, unint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_10010CB50(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void LazuliProvisioningServerWrapper::LazuliProvisioningServerWrapper(uint64_t a1, uint64_t a2)
{
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "lazuli.prov.svr");
  sub_1001303E4((a1 + 8), (a2 + 24), &v4);
  ctu::OsLogContext::~OsLogContext(&v4);
  v5[0] = off_101E2B528;
  v5[1] = sub_1003839A0;
  v5[3] = v5;
  sub_1003839CC((a1 + 48));
  sub_1000A8744(v5);
  *a1 = off_101E465E0;
  *(a1 + 56) = *a2;
  sub_10038E0A0(a1 + 64, a2);
  *(a1 + 208) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  sub_10038E918();
}

void sub_100383890(_Unwind_Exception *a1)
{
  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  v4 = *(v1 + 328);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(v1 + 312);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v1 + 296);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1000DD0AC(v1 + 264, *(v1 + 272));
  v7 = *(v1 + 256);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(v1 + 240);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(v1 + 224);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10038E1FC(v2);
  v10 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544((v1 + 8));
  _Unwind_Resume(a1);
}

const char *sub_1003839A0(int a1)
{
  v1 = "lazuli.prov.svr.??";
  if (a1 == 2)
  {
    v1 = "lazuli.prov.svr.2";
  }

  if (a1 == 1)
  {
    return "lazuli.prov.svr.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_1003839CC(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_100383B24(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(LazuliProvisioningServerWrapper *this)
{
  *this = off_101E465E0;
  sub_10038EE14(this + 48, 0);
  v2 = *(this + 46);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v3 = *(this + 41);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1000DD0AC(this + 264, *(this + 34));
  v6 = *(this + 32);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 30);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10038E1FC(this + 64);
  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(this);

  operator delete();
}

void LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  *__p = 0u;
  v17 = 0u;
  v4 = *(this + 45);
  if (!v4[9])
  {
    v7 = v4[15];
    if (v7)
    {
      v20 = 0;
      *buf = 0uLL;
      v19 = 0uLL;
      sub_100A2B1E4(v7, buf);
      v8 = v20;
      if (v20 == 1)
      {
        sub_1001696A4(__p, &buf[8]);
        v8 = v20;
      }

      if ((v8 & 1) != 0 && SHIBYTE(v19) < 0)
      {
        operator delete(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      *&v19 = 0;
      sub_100A2B1F0(*(*(this + 45) + 120), buf);
    }

    else
    {
      v9 = v4[13];
      if (!v9)
      {
        v14 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (this + 128);
          if (*(this + 151) < 0)
          {
            v15 = *v15;
          }

          *buf = 136446210;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] No token version/token in full or refresh xml", buf, 0xCu);
        }

        sub_10098F8C8(*(this + 45));
        v12 = 0;
        v13 = 0;
        v11 = 0;
        goto LABEL_27;
      }

      v20 = 0;
      *buf = 0uLL;
      v19 = 0uLL;
      sub_1006491E8(v9, buf);
      v10 = v20;
      if (v20 == 1)
      {
        sub_1001696A4(__p, &buf[8]);
        v10 = v20;
      }

      if ((v10 & 1) != 0 && SHIBYTE(v19) < 0)
      {
        operator delete(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      *&v19 = 0;
      sub_1006491F4(*(*(this + 45) + 104), buf);
    }

    v11 = v19;
    if (v19)
    {
      v12 = buf[0];
    }

    else
    {
      v12 = 0;
    }

    if (v19)
    {
      v13 = *buf & 0xFFFFFF00;
    }

    else
    {
      v13 = 0;
    }

LABEL_27:
    sub_10006F264(a2, __p);
    *(a2 + 32) = v13 | v12 | (v11 << 32);
    goto LABEL_28;
  }

  v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 128);
    if (*(this + 151) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] No token version retrieved because of unauthorized XML", buf, 0xCu);
  }

  sub_10006F264(a2, __p);
  *(a2 + 32) = 0;
LABEL_28:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100383F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::response511(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    v7 = *(a2 + 8);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_11:
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v15 = *v15;
    }

    v16 = *(a2 + 23);
    if (v16 < 0)
    {
      v16 = *(a2 + 8);
    }

    if (v16)
    {
      v17 = "with cookie";
    }

    else
    {
      v17 = "with secure attempt request";
    }

    *__p = 136446466;
    *&__p[4] = v15;
    *&__p[12] = 2080;
    *&__p[14] = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Received 511 response: %s", __p, 0x16u);
  }

  v18 = *(a1 + 288);
  if (v18)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    v36 = 1;
    sub_100415934(v18, &__dst);
    if (v36 == 1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = __dst.__r_.__value_.__r.__words[0];
LABEL_53:
      operator delete(v20);
      return;
    }

    return;
  }

  v19 = *(a1 + 304);
  if (!v19)
  {
    v28 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      sub_10176D548();
    }

LABEL_6:
    if (a4)
    {
      return;
    }

    v8 = sub_1007639AC(*(a1 + 320));
    v9 = sub_100763934(*(a1 + 320));
    v10 = *(a1 + 64);
    sub_10000501C(__p, "Response 511");
    sub_100A9B39C(a1 + 72, v10, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v11 = *(a1 + 320);
    v12 = (a1 + 151);
    v13 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *__p = *v13;
      *&__p[16] = *(a1 + 144);
    }

    v21 = sub_10075E230(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v29 = a1 + 128;
      if (*v12 < 0)
      {
        v29 = *v13;
      }

      v30 = CSIBOOLAsString(v21);
      v31 = CSIBOOLAsString(v8);
      v32 = CSIBOOLAsString(v9);
      *__p = 136446978;
      *&__p[4] = v29;
      *&__p[12] = 2080;
      *&__p[14] = v30;
      *&__p[22] = 2080;
      v38 = v31;
      v39 = 2080;
      v40 = v32;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}s] Server folder deletion status: %s, contained full xml: %s, contained refresh xml: %s", __p, 0x2Au);
    }

    v23 = *(a1 + 120);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = *(a1 + 112);
        if (v25)
        {
          if ((v8 & v21) != 1)
          {
            *__p = 1;
            LazuliProvisioningServerWrapper::failedFatally(a1);
          }

          v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (*v12 < 0)
            {
              v13 = *v13;
            }

            *__p = 136446210;
            *&__p[4] = v13;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full XML was deleted. Provisioning will be retried", __p, 0xCu);
          }

          LazuliProvisioningServerWrapper::resetRetryTimer(a1);
          (*(*v25 + 184))(v25, *(a1 + 56));
          goto LABEL_55;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_10176D5B8();
    }

    if (!v24)
    {
      return;
    }

LABEL_55:
    sub_100004A34(v24);
    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v33, *a2, *(a2 + 8));
  }

  else
  {
    *v33 = *a2;
    v34 = *(a2 + 16);
  }

  sub_10078A190(v19, v33);
  if (SHIBYTE(v34) < 0)
  {
    v20 = v33[0];
    goto LABEL_53;
  }
}

char *LazuliProvisioningServerWrapper::getName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[151] < 0)
  {
    return sub_100005F2C(a2, *(this + 16), *(this + 17));
  }

  *a2 = *(this + 8);
  *(a2 + 16) = *(this + 18);
  return this;
}

uint64_t *LazuliProvisioningServerWrapper::resetRetryTimer(LazuliProvisioningServerWrapper *this)
{
  result = *(this + 48);
  if (result)
  {
    sub_1004633F0(result, 2);
    sub_1004639A0(*(this + 48));

    return sub_10038EE14(this + 48, 0);
  }

  return result;
}

void LazuliProvisioningServerWrapper::failedFatally(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void *LazuliProvisioningServerWrapper::getCurrentConfig(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 14);
      if (v5)
      {
        v6 = (*(*v5 + 112))(v5, *(this + 14));
        sub_100004A34(v4);
        return v6;
      }

      sub_100004A34(v4);
    }
  }

  return GetDefaultLazuliProvisioningInitializer();
}

uint64_t LazuliProvisioningServerWrapper::isPushEnabled(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 14);
    if (v5)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      v6 = (*(*v5 + 112))(v5, *(this + 14));
      sub_10038E288(v12, v6);
      v7 = BYTE5(v13) & BYTE6(v13);
      sub_10038E4E4(v12);
    }

    else
    {
      v7 = 0;
    }

    sub_100004A34(v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (this + 128);
    if (*(this + 151) < 0)
    {
      v9 = *v9;
    }

    v10 = "dis";
    if (v7)
    {
      v10 = "en";
    }

    LODWORD(v12[0]) = 136446466;
    *(v12 + 4) = v9;
    WORD6(v12[0]) = 2080;
    *(v12 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Push evaluated as %sabled", v12, 0x16u);
  }

  return v7 & 1;
}

void LazuliProvisioningServerWrapper::submitMetricForPhase(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  *(&v48 + 1) = a6;
  v49[0] = a3;
  *&v48 = a5;
  v7 = *(a1 + 120);
  if (v7)
  {
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = *(a1 + 112);
      if (v11)
      {
        v47 = 0;
        memset(__dst, 0, sizeof(__dst));
        v12 = (*(*v11 + 112))(v11, *(a1 + 56));
        sub_10038E288(__dst, v12);
        v45 = sub_100A9C85C(&__dst[51]);
        v13 = *(a1 + 80);
        v43 = *(a1 + 72);
        v44 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = sub_100A94378();
        v15 = *(a1 + 392);
        if (v44)
        {
          sub_100004A34(v44);
        }

        if ((*(*a1 + 24))(a1))
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        v42 = v16;
        __p = 0uLL;
        v41 = 0;
        v17 = *(a1 + 120);
        if (v17)
        {
          v18 = std::__shared_weak_count::lock(v17);
          if (v18)
          {
            v19 = v18;
            v20 = *(a1 + 112);
            if (v20)
            {
              (*(*v20 + 208))(&v32);
              if (SHIBYTE(v41) < 0)
              {
                operator delete(__p);
              }

              __p = v32;
              v41 = v33;
            }

            sub_100004A34(v19);
          }
        }

        v21 = *(a1 + 104);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = v22;
            v24 = *(a1 + 96);
            if (v24)
            {
              (*(*v24 + 104))(v24);
            }

            sub_100004A34(v23);
          }
        }

        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        *v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v31 = *(a1 + 380) + *(a1 + 376);
        v30 = v14 - v15;
        if (*(a1 + 288))
        {
          v25 = 1;
        }

        else
        {
          v25 = 2 * (*(a1 + 304) != 0);
        }

        v29 = v25;
        LOBYTE(v28) = 0;
        BYTE4(v28) = 0;
        v27 = 0;
        v26 = 0uLL;
        sub_1007025A0(&v32, a2, v49, &v45, &v31, &v30, &v42, &v29, a4, &v28, &v48, &__p, &v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        operator new();
      }

      sub_100004A34(v10);
    }
  }
}

void sub_100384D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_100004A34(v53);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a53);
  sub_100004A34(a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100384E80(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

void LazuliProvisioningServerWrapper::submitMetricForReceivedXml(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = *(a1 + 112);
      if (v12)
      {
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        v13 = (*(*v12 + 112))(v12, *(a1 + 56));
        sub_10038E288(v48, v13);
        v47 = sub_100A9C85C(&v48[12] + 3);
        v14 = *(a1 + 80);
        v45 = *(a1 + 72);
        v46 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = sub_100A94378();
        v25 = *(a1 + 392);
        if (v46)
        {
          sub_100004A34(v46);
        }

        if ((*(*a1 + 24))(a1))
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        v44 = v15;
        __p[0] = 0;
        __p[1] = 0;
        v43 = 0;
        v16 = *(a1 + 120);
        if (v16)
        {
          v17 = std::__shared_weak_count::lock(v16);
          if (v17)
          {
            v18 = v17;
            v19 = *(a1 + 112);
            if (v19)
            {
              (*(*v19 + 208))(&v34, *(a1 + 112), *(a1 + 56));
              if (SHIBYTE(v43) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v34;
              v43 = v35;
              (*(*v19 + 112))(v19, *(a1 + 56));
              LazuliProvisioningServerWrapper::isPushEnabled(a1);
              if (LazuliProvisioningServerWrapper::isPushEnabled(a1))
              {
                (*(*v19 + 112))(v19, *(a1 + 56));
              }
            }

            sub_100004A34(v18);
          }
        }

        v20 = *(a1 + 104);
        if (v20)
        {
          v21 = std::__shared_weak_count::lock(v20);
          if (v21)
          {
            v22 = v21;
            v23 = *(a1 + 96);
            if (v23)
            {
              (*(*v23 + 104))(v23);
            }

            sub_100004A34(v22);
          }
        }

        v41 = 0;
        v39 = 0u;
        *v40 = 0u;
        v37 = 0u;
        *v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        LODWORD(v33) = 200;
        v24 = 1;
        BYTE4(v33) = 1;
        v32 = *(a1 + 380) + *(a1 + 376);
        v31 = v26 - v25;
        if (!*(a1 + 288))
        {
          v24 = 2 * (*(a1 + 304) != 0);
        }

        v30 = v24;
        LOBYTE(v29) = 0;
        BYTE8(v29) = 0;
        if (*(a5 + 24) == 1)
        {
          if (*(a5 + 23) < 0)
          {
            sub_100005F2C(__dst, *a5, *(a5 + 8));
          }

          else
          {
            *__dst = *a5;
            v28 = *(a5 + 16);
          }
        }

        else
        {
          sub_10000501C(__dst, "");
        }

        sub_1007025A0(&v34, a2, &v33, &v47, &v32, &v31, &v44, &v30, a3, a4, &v29, __p, __dst);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__dst[0]);
        }

        operator new();
      }

      sub_100004A34(v11);
    }
  }
}

void sub_10038538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a59);
  sub_100004A34(v59);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::triggerABCForXml(uint64_t a1, const std::string *a2)
{
  v4 = (a1 + 72);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
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
        goto LABEL_14;
      }

      goto LABEL_10;
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
    goto LABEL_14;
  }

LABEL_10:
  if (sub_100A951A8() <= 1799 && ((*(*v13 + 32))(v13) & 1) != 0)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_14:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v15 = *(a1 + 64);
  std::operator+<char>();
  sub_100A9B39C(v4, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100A9B9EC(v4);
  v16 = Registry::getServiceMap(*v4);
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
  __p[0] = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, __p);
  if (v22)
  {
    v23 = v22[3];
    v12 = v22[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v24 = 0;
      if (!v23)
      {
        goto LABEL_46;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v12 = 0;
  v24 = 1;
  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_27:
  memset(&__p[1], 0, 32);
  v36 = 0x600000000000000;
  *&v37[8] = 0u;
  v41 = 0u;
  v40 = 0u;
  memset(&v38, 0, sizeof(v38));
  v39 = 23;
  qmemcpy(&__p[2] + 7, "\tLazuli", 7);
  LOBYTE(__p[1]) = 121;
  __p[0] = *"Telephony";
  v37[23] = 22;
  qmemcpy(v37, "AcsDebugMessageHTTP200", 22);
  std::string::operator=(&v38, a2);
  v42 = &v39;
  v43 = 0;
  sub_1001E9F04(&v42, 5uLL);
  v39 |= 5uLL;
  sub_100D9EC48(__dst, __p);
  v45 = 0;
  (*(*v23 + 16))(v23, __dst, v44);
  sub_10010DF14(v44);
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

  if (v26 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if ((v37[23] & 0x80000000) != 0)
  {
    operator delete(*v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[3]);
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_46:
    if (v24)
    {
      return;
    }

    goto LABEL_47;
  }

  operator delete(__p[0]);
  if (v24)
  {
    return;
  }

LABEL_47:
  sub_100004A34(v12);
}

void sub_100385884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::handleXml(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, const std::string *a7)
{
  v60 = 0u;
  v61 = 0u;
  sub_10000501C(&__p, "Content-Type");
  v12 = sub_10038F068(a4, &__p);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  if (a4 + 8 != v12)
  {
    sub_1001696A4(&v60, (v12 + 56));
  }

  if (BYTE8(v61) != 1)
  {
    goto LABEL_13;
  }

  v13 = strlen("text/html");
  v14 = v13;
  if ((SBYTE7(v61) & 0x8000000000000000) != 0)
  {
    if (v13 != *(&v60 + 1))
    {
      goto LABEL_13;
    }

    if (v13 == -1)
    {
      sub_10013C334();
    }

    v15 = v60;
  }

  else
  {
    if (v13 != SBYTE7(v61))
    {
      goto LABEL_13;
    }

    v15 = &v60;
  }

  if (memcmp(v15, "text/html", v14))
  {
LABEL_13:
    bzero(&__p, 0x4D8uLL);
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    sub_100463BEC((a1 + 72), v16, a2, &__p);
    if ((v58 & 1) == 0)
    {
      v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        sub_10176D638();
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      *buf = 255;
      buf[4] = 1;
      v42[0] = 0;
      v42[24] = 0;
      LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, &__dst, buf, v42);
      goto LABEL_25;
    }

    v41 = a1;
    if (v51 != 1)
    {
      if (v48 == 1)
      {
        switch(v47)
        {
          case 0xFFFFFFFFFFFFFFFELL:
            v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v30 = *v30;
              }

              *buf = 136446210;
              *&buf[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] User interaction required XML received (-2)", buf, 0xCu);
            }

            *&v38.__r_.__value_.__l.__data_ = v47;
            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F708();
          case 0xFFFFFFFFFFFFFFFFLL:
            v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v28 = *v28;
              }

              *buf = 136446210;
              *&buf[4] = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Banned XML received (-1)", buf, 0xCu);
            }

            *&v38.__r_.__value_.__l.__data_ = v47;
            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F528();
          case 0:
            *&v38.__r_.__value_.__l.__data_ = __PAIR128__(*(&v47 + 1), 0);
            v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v21 = *v21;
              }

              *buf = 136446722;
              *&buf[4] = v21;
              *&buf[12] = 2048;
              *&buf[14] = v38.__r_.__value_.__r.__words[0];
              *&buf[22] = 2048;
              *&buf[24] = v38.__r_.__value_.__l.__size_;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML received: [version: %ld] [validity: %ld]", buf, 0x20u);
            }

            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F348();
        }

        if ((v46 & v48) == 1 && (v53 & 1) == 0)
        {
          v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v35 = *v35;
            }

            *buf = 136446210;
            *&buf[4] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Refresh XML received", buf, 0xCu);
          }

          memset(&buf[8], 0, 40);
          *buf = __p;
          if (SHIBYTE(v45) < 0)
          {
            sub_100005F2C(&buf[8], v44, *(&v44 + 1));
          }

          else
          {
            *&buf[8] = v44;
            *&buf[24] = v45;
          }

          *&buf[32] = v47;
          v39 = 0;
          v40 = 0;
          sub_10038F8E8();
        }
      }

      if (v53 == 1 && v57 == 1)
      {
        v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = (a1 + 128);
          if (*(a1 + 151) < 0)
          {
            v32 = *v32;
          }

          *buf = 136446210;
          *&buf[4] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full config XML received", buf, 0xCu);
        }

        if (a7[1].__r_.__value_.__s.__data_[0] == 1)
        {
          LazuliProvisioningServerWrapper::triggerABCForXml(a1, a7);
        }

        *&v38.__r_.__value_.__l.__data_ = 0uLL;
        if (v58)
        {
          sub_10038FAC8();
        }

        sub_1000D1644();
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 9;
      buf[0] = 0;
      buf[4] = 0;
      v36[0] = 0;
      v36[24] = 0;
      LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, &__dst, buf, v36);
      v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        sub_10176D6A8();
      }

      goto LABEL_25;
    }

    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v18 = *v18;
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Access control XML received", buf, 0xCu);
    }

    if ((*(*a1 + 24))(a1))
    {
      if (v48)
      {
        *&v38.__r_.__value_.__l.__data_ = 0uLL;
        sub_10038F158();
      }

      *buf = 18;
      LazuliProvisioningServerWrapper::submitMetricForPhase(a1, a5, 0, buf, 0, 0);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v26 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v26 = *v26;
      }

      *buf = 136446210;
      *&buf[4] = v26;
      v24 = "#I [%{public}s] Access control XML ignored from server - no version";
    }

    else
    {
      *buf = 17;
      LazuliProvisioningServerWrapper::submitMetricForPhase(a1, a5, 0, buf, 0, 0);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v23 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v23 = *v23;
      }

      *buf = 136446210;
      *&buf[4] = v23;
      v24 = "#I [%{public}s] Access control XML ignored from server - Not a default server";
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
LABEL_25:
    if (v58 == 1)
    {
      if (v57 == 1)
      {
        sub_10038E6A4(&v56);
      }

      if (v55 == 1)
      {
        sub_100009970(v54, v54[1]);
      }

      if (v53 == 1)
      {
        sub_10038E7C0(&v52);
      }

      if (v51 == 1)
      {
        *buf = &v50;
        sub_1002CB430(buf);
        sub_100009970(v49, v49[1]);
      }

      if (v46 == 1 && SHIBYTE(v45) < 0)
      {
        operator delete(v44);
      }
    }

    goto LABEL_53;
  }

  v25 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
  {
    sub_10176D788();
  }

  *buf = 0;
  LODWORD(__p) = 255;
  BYTE4(__p) = 1;
  v59[0] = 0;
  v59[24] = 0;
  LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, buf, &__p, v59);
LABEL_53:
  if (BYTE8(v61) == 1 && SBYTE7(v61) < 0)
  {
    operator delete(v60);
  }
}

void sub_100387300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a36)
  {
    sub_100004A34(a36);
  }

  if (*(v58 - 113) < 0)
  {
    operator delete(*(v58 - 136));
  }

  sub_10038E5E8(&a58);
  if (*(v58 - 200) == 1 && *(v58 - 201) < 0)
  {
    operator delete(*(v58 - 224));
  }

  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startUnauthorizedXmlTimer(LazuliProvisioningServerWrapper *this)
{
  sub_100004AA0(&v2, this + 1);
  v1 = *(&v2 + 1);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  sub_10038FCA8();
}

void sub_1003877E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B644(va);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void sub_10038782C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 320);
  if (*(*a1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v3 = sub_100579D70();
  sub_10000501C(__p, v3);
  sub_10075E5D0(v2, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v4 = *(v1 + 360);
  v5 = *(v4 + 80);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v1 + 320);
  if (*(v1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v7 = sub_100B39268();
  sub_10000501C(__p, v7);
  sub_10075E5D0(v6, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *(v1 + 360);
  v9 = *(v8 + 160);
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(v1 + 320);
  if (*(v1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v11 = sub_1008D71AC();
  sub_10000501C(__p, v11);
  sub_10075E5D0(v10, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = *(v1 + 360);
  v13 = *(v12 + 96);
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1003879D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::getWebHelperInitializer@<X0>(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v27[0] = 0;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v27[1] = 1;
  memset(&v27[2], 0, 30);
  *&v27[28] = -1;
  memset(&v28, 0, sizeof(v28));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 14);
      if (v7)
      {
        v8 = (*(*v7 + 112))(v7, *(this + 14));
        std::string::operator=(v23, v8);
        std::string::operator=(&v23[1], (v8 + 24));
        std::string::operator=(v24, (v8 + 48));
        std::string::operator=(&v24[1], (v8 + 72));
        std::string::operator=(v25, (v8 + 96));
        std::string::operator=(&v25[1], (v8 + 120));
        std::string::operator=(v26, (v8 + 144));
        std::string::operator=(&v26[1], (v8 + 168));
        v9 = *(v8 + 208);
        *v27 = *(v8 + 192);
        *&v27[16] = v9;
        std::string::operator=(&v28, (v8 + 224));
      }

      sub_100004A34(v6);
    }
  }

  *v21 = 0u;
  v22 = 0u;
  v10 = *(this + 13);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 12);
      if (v13)
      {
        (*(*v13 + 24))(__p);
        sub_10016A270(v21, __p);
        if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v12);
    }
  }

  v20 = 0;
  *__p = 0u;
  v19 = 0u;
  LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, __p);
  *a2 = *(this + 14);
  v14 = *(this + 10);
  *(a2 + 8) = *(this + 9);
  *(a2 + 16) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = this + 24;
  sub_100004AA0(v29, this + 1);
  v15 = v29[1];
  *(a2 + 32) = v29[0];
  *(a2 + 40) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
  }

  *(a2 + 48) = this + 128;
  sub_10006F264(a2 + 56, __p);
  *(a2 + 88) = v20;
  *(a2 + 92) = BYTE4(v20);
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  sub_10006F264(a2 + 136, v21);
  v16 = *(this + 25);
  *(a2 + 168) = *(this + 24);
  *(a2 + 176) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return sub_10038E4E4(v23);
}

void sub_100387CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100004A34(v28);
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a26);
  _Unwind_Resume(a1);
}

void sub_100387EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startFullXmlTimer(LazuliProvisioningServerWrapper *this)
{
  sub_100004AA0(&v2, this + 1);
  v1 = *(&v2 + 1);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  sub_10038FCA8();
}

void sub_100388074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B644(va);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

BOOL LazuliProvisioningServerWrapper::isOngoing(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 36);
  if (v2 && ((*(*v2 + 24))(v2) & 1) != 0)
  {
    return 1;
  }

  v3 = *(this + 38);
  if (v3)
  {
    if ((*(*v3 + 24))(v3))
    {
      return 1;
    }
  }

  v5 = *(this + 48);
  if (!v5)
  {
    return 0;
  }

  sub_100463AE0(v5, v15);
  LazuliProvisioningWebHelper::getOtpTimerName(__p);
  v6 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15[1];
  }

  v8 = v14;
  v9 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    if ((v16 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v4 = memcmp(v10, v11, v7) == 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(__p[0]);
  v6 = v16;
LABEL_24:
  if ((v6 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v4;
}

void sub_1003881F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 45);
  if (!v1)
  {
    return 0;
  }

  if (v1[11])
  {
    v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176D7F8();
    }

    return 1;
  }

  if (v1[9])
  {
    v4 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176D868();
    }

    return 1;
  }

  if (v1[19])
  {
    v5 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_10176D8D8();
    }

    return 1;
  }

  return 0;
}

void LazuliProvisioningServerWrapper::handleReprovisioningRequired(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 36);
  if (v2 || (v2 = *(this + 38)) != 0)
  {
    LazuliProvisioningWebHelper::resetTimers(v2);
  }

  else
  {
    v3 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176D948();
    }
  }

  LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(this);
}

void LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing full and refresh config for server", buf, 0xCu);
  }

  v4 = *(this + 40);
  if (v4)
  {
    if (*(this + 151) < 0)
    {
      sub_100005F2C(buf, *(this + 16), *(this + 17));
    }

    else
    {
      *buf = *(this + 8);
      v15 = *(this + 18);
    }

    v5 = sub_1006491D4();
    sub_10000501C(__p, v5);
    sub_10075E5D0(v4, buf, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }

    v6 = *(this + 40);
    if (*(this + 151) < 0)
    {
      sub_100005F2C(buf, *(this + 16), *(this + 17));
    }

    else
    {
      *buf = *(this + 8);
      v15 = *(this + 18);
    }

    v7 = sub_100A2B1D8();
    sub_10000501C(__p, v7);
    sub_10075E5D0(v6, buf, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(this + 45);
  if (v8)
  {
    v9 = *(v8 + 112);
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }

    v10 = *(this + 45);
    v11 = *(v10 + 128);
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    if (v11)
    {
      sub_100004A34(v11);
    }
  }
}

void LazuliProvisioningServerWrapper::handleForbiddenResponse(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 16);
  sub_10000501C(__p, "Forbidden response");
  sub_100A9B39C(this + 72, v2, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(this + 40);
  v4 = (this + 128);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v4;
    v9 = *(this + 18);
  }

  sub_10075E230(v3, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v4;
    v9 = *(this + 18);
  }

  sub_100762CF8(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(this + 36);
  if (v6 || (v6 = *(this + 38)) != 0)
  {
    LazuliProvisioningWebHelper::resetTimers(v6);
  }

  else
  {
    v7 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_10176D9B8();
    }
  }

  LODWORD(__p[0]) = 2;
  LazuliProvisioningServerWrapper::failedFatally(this);
}

void sub_10038878C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::didFail(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 53) || (result = LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(this), result))
  {
    v3 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176DA38();
    }

    return 1;
  }

  return result;
}

void LazuliProvisioningServerWrapper::stop(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 36))
  {
    v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176DAA8();
    }

    v3 = *(this + 37);
    *(this + 36) = 0;
    *(this + 37) = 0;
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_100004A34(v3);
    goto LABEL_11;
  }

  if (*(this + 38))
  {
    v4 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DB18();
    }

    v3 = *(this + 39);
    *(this + 38) = 0;
    *(this + 39) = 0;
    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  *(this + 208) = 0;
  *(this + 53) = 0;
}

void LazuliProvisioningServerWrapper::handleOtp(uint64_t a1, const std::string *a2)
{
  v3 = *(a1 + 288);
  if (v3 || (v3 = *(a1 + 304)) != 0)
  {

    LazuliProvisioningWebHelper::handleOtp(v3, a2);
  }

  else
  {
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DB88();
    }
  }
}

void LazuliProvisioningServerWrapper::handleDeprovisioningComplete(LazuliProvisioningServerWrapper *this, _BOOL8 a2)
{
  v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 128);
    if (*(this + 151) < 0)
    {
      v5 = *v5;
    }

    *__p = 136446466;
    *&__p[4] = v5;
    *&__p[12] = 2080;
    *&__p[14] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Deprovisioning response received (success: %s)", __p, 0x16u);
  }

  v6 = *(this + 13);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 12);
      if (v8)
      {
        v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (this + 128);
          if (*(this + 151) < 0)
          {
            v10 = *v10;
          }

          *__p = 136446210;
          *&__p[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] XML ignored", __p, 0xCu);
        }

        if (*(this + 151) < 0)
        {
          sub_100005F2C(__p, *(this + 16), *(this + 17));
        }

        else
        {
          *__p = *(this + 8);
          *&__p[16] = *(this + 18);
        }

        (*(*v8 + 72))(v8, __p, a2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

LABEL_22:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_10176DBF8();
  }

  if (v7)
  {
    goto LABEL_22;
  }
}

void LazuliProvisioningServerWrapper::handleVapidReceived(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *a2;
    v7 = *(a2 + 8) - *a2;
    *__p = 136446722;
    *&__p[4] = v5;
    *&__p[12] = 1040;
    *&__p[14] = v7;
    *&__p[18] = 2098;
    *&__p[20] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received: %{public}.*P", __p, 0x1Cu);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 96);
      if (v10)
      {
        (*(*v10 + 88))(v10, a2);
        v11 = *(a1 + 320);
        if (*(a1 + 151) < 0)
        {
          sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
        }

        else
        {
          *__p = *(a1 + 128);
          *&__p[16] = *(a1 + 144);
        }

        sub_1007614DC(v11, __p, a2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

LABEL_18:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176DC68();
  }

  if (v9)
  {
    goto LABEL_18;
  }
}

void LazuliProvisioningServerWrapper::subscribeToPush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 120);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 112))
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      v8 = *(a1 + 320);
      v9 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(&buf, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        buf = *v9;
        v24 = *(a1 + 144);
      }

      sub_100762520(v8, &buf, v15);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(buf);
      }

      v11 = v15[1];
      if (SHIBYTE(v16) >= 0)
      {
        v11 = HIBYTE(v16);
      }

      v12 = *(**(a1 + 48) + 16);
      if (v11)
      {
        v13 = *v12();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 151) < 0)
          {
            v9 = *v9;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received and PushURL existing - restoring token subscription", &buf, 0xCu);
        }

        if (SHIBYTE(v16) < 0)
        {
          sub_100005F2C(&__dst, v15[0], v15[1]);
        }

        else
        {
          __dst = *v15;
          v21 = v16;
        }

        sub_1001058C4(v22, a4);
        v22[8] = 0;
        operator new();
      }

      v14 = *v12();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 151) < 0)
        {
          v9 = *v9;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received - generating new PushURL", &buf, 0xCu);
      }

      buf = 0uLL;
      v24 = 0;
      v17 = a1;
      if (SHIBYTE(v16) < 0)
      {
        sub_100005F2C(__p, v15[0], v15[1]);
      }

      else
      {
        *__p = *v15;
        __p[2] = v16;
      }

      sub_1001058C4(v19, a4);
      v19[7] = 0;
      operator new();
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176DC68();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10038933C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  operator delete(v37);
  sub_100389470(&a16);
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v36);
  _Unwind_Resume(a1);
}

uint64_t sub_100389434(uint64_t a1)
{
  sub_100007E44(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100389470(uint64_t a1)
{
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t LazuliProvisioningServerWrapper::handleRefreshRequested(LazuliProvisioningServerWrapper *this)
{
  LazuliProvisioningServerWrapper::stopTimers(this);
  v2 = *(this + 45);
  if (v2)
  {
    sub_10098FE00(v2, 1);
  }

  return LazuliProvisioningServerWrapper::startRefresh(this);
}

void LazuliProvisioningServerWrapper::stopTimers(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 27))
  {
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (this + 128);
      if (*(this + 151) < 0)
      {
        v3 = *v3;
      }

      v11 = 136446210;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting Full XML timer", &v11, 0xCu);
    }

    v4 = *(this + 28);
    *(this + 27) = 0;
    *(this + 28) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  if (*(this + 29))
  {
    v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (this + 128);
      if (*(this + 151) < 0)
      {
        v6 = *v6;
      }

      v11 = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting unauthorized XML timer", &v11, 0xCu);
    }

    v7 = *(this + 30);
    *(this + 29) = 0;
    *(this + 30) = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  if (*(this + 31))
  {
    v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 128);
      if (*(this + 151) < 0)
      {
        v9 = *v9;
      }

      v11 = 136446210;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting refresh XML timer", &v11, 0xCu);
    }

    v10 = *(this + 32);
    *(this + 31) = 0;
    *(this + 32) = 0;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::startRefresh(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting refresh procedure...", buf, 0xCu);
  }

  v38[0] = 0;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  *buf = 0u;
  memset(v34, 0, sizeof(v34));
  v38[1] = 1;
  memset(&v38[2], 0, 30);
  *&v38[28] = -1;
  memset(&v39, 0, sizeof(v39));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 14);
      if (v6)
      {
        v7 = (*(*v6 + 112))(v6, *(this + 14));
        std::string::operator=(buf, v7);
        std::string::operator=((v34 + 8), (v7 + 24));
        std::string::operator=(v35, (v7 + 48));
        std::string::operator=(&v35[1], (v7 + 72));
        std::string::operator=(v36, (v7 + 96));
        std::string::operator=(&v36[1], (v7 + 120));
        std::string::operator=(v37, (v7 + 144));
        std::string::operator=(&v37[1], (v7 + 168));
        v8 = *(v7 + 208);
        *v38 = *(v7 + 192);
        *&v38[16] = v8;
        std::string::operator=(&v39, (v7 + 224));
        sub_100004A34(v5);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
        {
          *__val = 0;
          *v20 = 0u;
          v21 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v20);
          v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = this + 128;
            v11 = this + 128;
            if (*(this + 151) < 0)
            {
              v11 = *v10;
            }

            v12 = asStringBool(v38[1]);
            v13 = v12;
            if (*(this + 151) < 0)
            {
              v10 = *v10;
            }

            v14 = v20[0];
            if ((SBYTE7(v21) & 0x80u) == 0)
            {
              v14 = v20;
            }

            if (BYTE8(v21))
            {
              v15 = v14;
            }

            else
            {
              v15 = "nil";
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v19, __val[0]);
              if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v19;
              }

              else
              {
                v16 = v19.__r_.__value_.__r.__words[0];
              }

              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v13;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
              if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v19.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v12;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = "nil";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
            }
          }

          if (v38[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
            sub_100413F40();
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
          sub_100783AA8();
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

LABEL_30:
  sub_10038E4E4(buf);
  return 0;
}

void sub_100389D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a48);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::resetPendingRefresh(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    sub_10098FE00(v1, 0);
  }
}

uint64_t LazuliProvisioningServerWrapper::prettyPrint@<X0>(LazuliProvisioningServerWrapper *this@<X0>, _BYTE *a2@<X8>)
{
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  *v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  *__src = 0u;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  sub_10000C320(&v57);
  sub_10000C030(&v58);
  v4 = *(this + 45);
  v5 = v4[13];
  if (v5)
  {
    v6 = sub_100649208(v5);
    memset(&v56, 0, sizeof(v56));
    if (v7)
    {
      std::to_string(&v56, v6);
    }

    else
    {
      sub_10000501C(&v56, "nil");
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "(nil)");
    __val = 0uLL;
    v54 = 0;
    sub_1006491F4(*(*(this + 45) + 104), &__val);
    if (v54 == 1)
    {
      std::to_string(&v52, __val.n128_i64[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v52;
    }

    v8 = sub_10000C030(&v58);
    v9 = sub_1006491D4();
    strlen(v9);
    v10 = sub_10000C030(v8);
    v11 = sub_10000C030(v10);
    v12 = sub_10000C030(v11);
    v13 = sub_10000C030(v12);
    v14 = sub_10000C030(v13);
    sub_10000C030(v14);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  if (v4[11])
  {
    v15 = sub_10000C030(&v58);
    v16 = sub_1008D71AC();
    strlen(v16);
    v17 = sub_10000C030(v15);
    sub_10000C030(v17);
    v4 = *(this + 45);
  }

  if (v4[19])
  {
    v18 = sub_10000C030(&v58);
    v19 = sub_100B39268();
    strlen(v19);
    v20 = sub_10000C030(v18);
    sub_10000C030(v20);
    v4 = *(this + 45);
  }

  v21 = v4[9];
  if (v21)
  {
    v22 = sub_100579D8C(v21);
    memset(&v56, 0, sizeof(v56));
    if (v23)
    {
      std::to_string(&v56, v22);
    }

    else
    {
      sub_10000501C(&v56, "nil");
    }

    v24 = sub_10000C030(&v58);
    v25 = sub_100579D70();
    strlen(v25);
    v26 = sub_10000C030(v24);
    v27 = sub_10000C030(v26);
    v28 = sub_10000C030(v27);
    sub_10000C030(v28);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  v29 = v4[17];
  if (v29)
  {
    v30 = sub_1002CB0B4(v29);
    memset(&v56, 0, sizeof(v56));
    if (v31)
    {
      std::to_string(&v56, v30);
    }

    else
    {
      sub_10000501C(&v56, "nil");
    }

    v32 = sub_10000C030(&v58);
    v33 = sub_1002CB0A8();
    strlen(v33);
    v34 = sub_10000C030(v32);
    v35 = sub_10000C030(v34);
    v36 = sub_10000C030(v35);
    sub_10000C030(v36);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  v37 = v4[15];
  if (v37)
  {
    v38 = sub_100A2B204(v37);
    memset(&v56, 0, sizeof(v56));
    if (v39)
    {
      std::to_string(&v56, v38);
    }

    else
    {
      sub_10000501C(&v56, "nil");
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "(nil)");
    __val = 0uLL;
    v54 = 0;
    sub_100A2B1F0(*(*(this + 45) + 120), &__val);
    if (v54 == 1)
    {
      std::to_string(&v52, __val.n128_i64[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v52;
    }

    v40 = sub_10000C030(&v58);
    v41 = sub_100A2B1D8();
    strlen(v41);
    v42 = sub_10000C030(v40);
    v43 = sub_10000C030(v42);
    v44 = sub_10000C030(v43);
    v45 = sub_10000C030(v44);
    v46 = sub_10000C030(v45);
    sub_10000C030(v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  sub_10000C030(&v58);
  if ((BYTE8(v64) & 0x10) != 0)
  {
    v48 = v64;
    if (v64 < __src[1])
    {
      *&v64 = __src[1];
      v48 = __src[1];
    }

    v49 = __src[0];
  }

  else
  {
    if ((BYTE8(v64) & 8) == 0)
    {
      v47 = 0;
      a2[23] = 0;
      goto LABEL_57;
    }

    v49 = *(&v59 + 1);
    v48 = *(&v60 + 1);
  }

  v47 = v48 - v49;
  if ((v48 - v49) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v47 >= 0x17)
  {
    operator new();
  }

  a2[23] = v47;
  if (v47)
  {
    memmove(a2, v49, v47);
  }

LABEL_57:
  a2[v47] = 0;
  *&v58 = v50;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[1]);
  }

  std::locale::~locale(&v59);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10038A5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startTimers(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v3 = *v3;
    }

    v4 = 136446210;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unimplemented function", &v4, 0xCu);
  }
}

BOOL LazuliProvisioningServerWrapper::needsProvisioning(LazuliProvisioningServerWrapper *this)
{
  if (LazuliProvisioningServerWrapper::isOngoing(this))
  {
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v4 = (this + 128);
    if (*(this + 151) < 0)
    {
      v4 = *v4;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v4;
    v5 = "#I [%{public}s] Provisioning Ongoing already";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v5, __p, 0xCu);
    return 0;
  }

  v6 = *(this + 40);
  v7 = (this + 128);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v7;
    v18 = *(this + 18);
  }

  v8 = sub_1007631F4(v6, __p);
  v9 = v8;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
LABEL_11:
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(this + 151) < 0)
    {
      v7 = *v7;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v7;
    v5 = "#I [%{public}s] Server is forbidden";
    goto LABEL_15;
  }

  v10 = *(this + 38);
  if (v10 && (*(*v10 + 64))(v10))
  {
    v11 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 151) < 0)
      {
        v7 = *v7;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Post response pending", __p, 0xCu);
    }

    return 1;
  }

  v12 = *(this + 13);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(this + 12);
      if (v15)
      {
        (*(*v15 + 24))(__p);
        if (v19 == 1)
        {
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (*(this + 151) < 0)
            {
              v7 = *v7;
            }

            LODWORD(__p[0]) = 136446210;
            *(__p + 4) = v7;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] We have participant key that needs to be signed", __p, 0xCu);
          }

          sub_100004A34(v14);
          return 1;
        }
      }

      sub_100004A34(v14);
    }
  }

  return sub_10098F274(*(this + 45));
}

uint64_t LazuliProvisioningServerWrapper::canStartProvisioning(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 212))
  {
    v9 = *(a2 + 204);
    v35 = v9;
    if (*(a1 + 208) == 1 && (v9 & 0xFFFFFFFE) == 2)
    {
      v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v19 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v19 = *v19;
      }

      v20 = sub_1004CDF60(&v35);
      *buf = 136446466;
      v37 = v19;
      v38 = 2080;
      v39 = v20;
      v21 = "#I [%{public}s] Provisioning requires PS access. Current interface: %s";
      goto LABEL_32;
    }

    if (!v9)
    {
      v25 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v26 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v26 = *v26;
      }

      *buf = 136446210;
      v37 = v26;
      v21 = "#I [%{public}s] No valid interface for provisioning...";
      v22 = v25;
      v23 = 12;
      goto LABEL_33;
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 96);
        if (v14 && ((*(*v14 + 32))(v14) & 1) == 0)
        {
          v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v30 = *v30;
            }

            *buf = 136446210;
            v37 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Model is not ready to provision with encryption", buf, 0xCu);
          }

          sub_100004A34(v13);
          return 0;
        }

        sub_100004A34(v13);
      }
    }

    if ((*(a2 + 193) & 1) == 0)
    {
      return 1;
    }

    v15 = *(a1 + 120);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = *(a1 + 112);
        if (v17)
        {
          if ((*(*v17 + 64))(v17, *(a1 + 56)))
          {
            v18 = 0;
          }

          else
          {
            v18 = v35 == 2;
          }

          if (v18)
          {
            v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v32 = *v32;
              }

              v33 = Lazuli::asString();
              v34 = sub_1004CDF60(&v35);
              *buf = 136446722;
              v37 = v32;
              v38 = 2080;
              v39 = v33;
              v40 = 2080;
              v41 = v34;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unable to provision on second sub with: [own cellular required: %s, current interface: %s]", buf, 0x20u);
            }

            v4 = 0;
          }

          else
          {
            v4 = 1;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v28 = *v28;
      }

      *buf = 136446210;
      v37 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Controller reference was lost", buf, 0xCu);
    }

    v4 = 0;
    if (!v16)
    {
      return v4;
    }

LABEL_58:
    sub_100004A34(v16);
    return v4;
  }

  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  v4 = 0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 212);
    if (v6 > 4)
    {
      v7 = "??";
    }

    else
    {
      v7 = off_101E46D08[v6];
    }

    *buf = 136446466;
    v37 = v5;
    v38 = 2080;
    v39 = v7;
    v21 = "#I [%{public}s] Provisioning has failed fatally. Requires client restart: %s";
LABEL_32:
    v22 = v3;
    v23 = 22;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    return 0;
  }

  return v4;
}

uint64_t LazuliProvisioningServerWrapper::startProvisioning(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting provisioning...", buf, 0xCu);
  }

  v34[0] = 0;
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  memset(v31, 0, sizeof(v31));
  *buf = 0u;
  memset(v30, 0, sizeof(v30));
  v34[1] = 1;
  memset(&v34[2], 0, 30);
  *&v34[28] = -1;
  memset(&v35, 0, sizeof(v35));
  v4 = *(a1 + 120);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        v7 = (*(*v6 + 112))(v6, *(a1 + 56));
        std::string::operator=(buf, v7);
        std::string::operator=((v30 + 8), (v7 + 24));
        std::string::operator=(v31, (v7 + 48));
        std::string::operator=(&v31[1], (v7 + 72));
        std::string::operator=(v32, (v7 + 96));
        std::string::operator=(&v32[1], (v7 + 120));
        std::string::operator=(v33, (v7 + 144));
        std::string::operator=(&v33[1], (v7 + 168));
        v8 = *(v7 + 208);
        *v34 = *(v7 + 192);
        *&v34[16] = v8;
        std::string::operator=(&v35, (v7 + 224));
        sub_100004A34(v5);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(a1, buf))
        {
          *(a1 + 208) = 0;
          *(a1 + 212) = 0;
          v20 = 0;
          *v18 = 0u;
          v19 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(a1, v18);
          v9 = *(a1 + 296);
          *(a1 + 288) = 0;
          *(a1 + 296) = 0;
          if (v9)
          {
            sub_100004A34(v9);
          }

          v10 = *(a1 + 312);
          *(a1 + 304) = 0;
          *(a1 + 312) = 0;
          if (v10)
          {
            sub_100004A34(v10);
          }

          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = (a1 + 128);
            v13 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v13 = *v12;
            }

            v14 = asStringBool(v34[1]);
            if (*(a1 + 151) < 0)
            {
              v12 = *v12;
            }

            v15 = sub_1004CDF60(&v34[12]);
            *v21 = 136446978;
            v22 = v13;
            v23 = 2080;
            v24 = v14;
            v25 = 2080;
            v26 = v12;
            v27 = 2080;
            v28 = v15;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier Based: %s, fUrl: %s, interface: %s", v21, 0x2Au);
          }

          if (v34[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(a1, v21);
            sub_100413F40();
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(a1, v21);
          sub_100783AA8();
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

LABEL_26:
  sub_10038E4E4(buf);
  return 0;
}

void sub_10038B618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(a25);
  }

  sub_10038E4E4(&a58);
  _Unwind_Resume(a1);
}

uint64_t sub_10038B6D4(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 94);
  *(this + 94) = v1 + 1;
  v7[0] = xmmword_1017F90E0;
  v7[1] = unk_1017F90F0;
  v7[2] = xmmword_1017F9100;
  v7[3] = unk_1017F9110;
  v8 = 1800;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_1002F3248(&v4, v7, &v9, 9uLL);
  if (v1 < v5 - v4)
  {
    v2 = v4[v1];
LABEL_4:
    v5 = v4;
    operator delete(v4);
    return v2;
  }

  v2 = 43200;
  if (v4)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t LazuliProvisioningServerWrapper::startFirstAccessProvisioning(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting first-access provisioning...", buf, 0xCu);
  }

  v38[0] = 0;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  *buf = 0u;
  memset(v34, 0, sizeof(v34));
  v38[1] = 1;
  memset(&v38[2], 0, 30);
  *&v38[28] = -1;
  memset(&v39, 0, sizeof(v39));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 14);
      if (v6)
      {
        v7 = (*(*v6 + 112))(v6, *(this + 14));
        std::string::operator=(buf, v7);
        std::string::operator=((v34 + 8), (v7 + 24));
        std::string::operator=(v35, (v7 + 48));
        std::string::operator=(&v35[1], (v7 + 72));
        std::string::operator=(v36, (v7 + 96));
        std::string::operator=(&v36[1], (v7 + 120));
        std::string::operator=(v37, (v7 + 144));
        std::string::operator=(&v37[1], (v7 + 168));
        v8 = *(v7 + 208);
        *v38 = *(v7 + 192);
        *&v38[16] = v8;
        std::string::operator=(&v39, (v7 + 224));
        sub_100004A34(v5);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
        {
          *__val = 0;
          *v20 = 0u;
          v21 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v20);
          v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = this + 128;
            v11 = this + 128;
            if (*(this + 151) < 0)
            {
              v11 = *v10;
            }

            v12 = asStringBool(v38[1]);
            v13 = v12;
            if (*(this + 151) < 0)
            {
              v10 = *v10;
            }

            v14 = v20[0];
            if ((SBYTE7(v21) & 0x80u) == 0)
            {
              v14 = v20;
            }

            if (BYTE8(v21))
            {
              v15 = v14;
            }

            else
            {
              v15 = "nil";
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v19, __val[0]);
              if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v19;
              }

              else
              {
                v16 = v19.__r_.__value_.__r.__words[0];
              }

              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v13;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
              if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v19.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v12;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = "nil";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
            }
          }

          if (v38[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
            sub_100413F40();
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
          sub_100783AA8();
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

LABEL_30:
  sub_10038E4E4(buf);
  return 0;
}

void sub_10038BE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a48);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::restartProvisioning(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 14);
      if (v4)
      {
        v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = (this + 128);
          if (*(this + 151) < 0)
          {
            v6 = *v6;
          }

          LODWORD(__p[0]) = 136446210;
          *(__p + 4) = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing server folder and restarting provisioning", __p, 0xCu);
        }

        v7 = *(this + 16);
        sub_10000501C(__p, "Restart provisioning");
        sub_100A9B39C(this + 72, v7, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(__p, *(this + 16), *(this + 17));
        }

        else
        {
          *__p = *(this + 8);
          v13 = *(this + 18);
        }

        sub_10075E230(v8, __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        v10 = *(this + 39);
        *(this + 38) = 0;
        *(this + 39) = 0;
        if (v10)
        {
          sub_100004A34(v10);
        }

        v11 = *(this + 37);
        *(this + 36) = 0;
        *(this + 37) = 0;
        if (v11)
        {
          sub_100004A34(v11);
        }

        (*(*v4 + 240))(v4, *(this + 14));
        (*(*v4 + 184))(v4, *(this + 14));
LABEL_25:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_10176DD48();
  }

  if (v3)
  {
    goto LABEL_25;
  }
}

uint64_t LazuliProvisioningServerWrapper::startDeProvisioning(LazuliProvisioningServerWrapper *this)
{
  if (LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(this))
  {
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (this + 128);
      if (*(this + 151) < 0)
      {
        v3 = *v3;
      }

      *buf = 136446210;
      *&buf[4] = v3;
      v4 = "#I [%{public}s] Access is disabled (deprovisioning ignored)...";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v4, buf, 0xCu);
      return 0;
    }

    return 0;
  }

  v5 = *(this + 45);
  if (!v5 || !*(v5 + 136))
  {
    v43[0] = 0;
    memset(v42, 0, sizeof(v42));
    memset(v41, 0, sizeof(v41));
    memset(v40, 0, sizeof(v40));
    *buf = 0u;
    memset(v39, 0, sizeof(v39));
    v43[1] = 1;
    memset(&v43[2], 0, 30);
    *&v43[28] = -1;
    memset(&v44, 0, sizeof(v44));
    v7 = *(this + 15);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(this + 14);
        if (v9)
        {
          v10 = (*(*v9 + 112))(v9, *(this + 14));
          std::string::operator=(buf, v10);
          std::string::operator=((v39 + 8), (v10 + 24));
          std::string::operator=(v40, (v10 + 48));
          std::string::operator=(&v40[1], (v10 + 72));
          std::string::operator=(v41, (v10 + 96));
          std::string::operator=(&v41[1], (v10 + 120));
          std::string::operator=(v42, (v10 + 144));
          std::string::operator=(&v42[1], (v10 + 168));
          v11 = *(v10 + 208);
          *v43 = *(v10 + 192);
          *&v43[16] = v11;
          std::string::operator=(&v44, (v10 + 224));
          if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
          {
            *__val = 0;
            *v25 = 0u;
            v26 = 0u;
            LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v25);
            v12 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = (this + 128);
              if (*(this + 151) < 0)
              {
                v13 = *v13;
              }

              *v28 = 136446210;
              v29 = v13;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting de-provisioning...", v28, 0xCu);
            }

            v14 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = this + 128;
              v16 = this + 128;
              if (*(this + 151) < 0)
              {
                v16 = *v15;
              }

              v17 = asStringBool(v43[1]);
              v18 = v17;
              if (*(this + 151) < 0)
              {
                v15 = *v15;
              }

              v19 = v25[0];
              if ((SBYTE7(v26) & 0x80u) == 0)
              {
                v19 = v25;
              }

              if (BYTE8(v26))
              {
                v20 = v19;
              }

              else
              {
                v20 = "nil";
              }

              if (LOBYTE(__val[1]) == 1)
              {
                std::to_string(&__p, __val[0]);
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_p = &__p;
                }

                else
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *v28 = 136447234;
                v29 = v16;
                v30 = 2080;
                v31 = v18;
                v32 = 2080;
                v33 = v15;
                v34 = 2082;
                v35 = v20;
                v36 = 2082;
                v37 = p_p;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v28, 0x34u);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                *v28 = 136447234;
                v29 = v16;
                v30 = 2080;
                v31 = v17;
                v32 = 2080;
                v33 = v15;
                v34 = 2082;
                v35 = v20;
                v36 = 2082;
                v37 = "nil";
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v28, 0x34u);
              }
            }

            LazuliProvisioningServerWrapper::resetRetryTimer(this);
            if (v43[1])
            {
              LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v28);
              sub_100413F40();
            }

            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v28);
            sub_100783AA8();
          }

          LazuliProvisioningServerWrapper::handleDeprovisioningComplete(this, 0);
LABEL_48:
          sub_100004A34(v8);
LABEL_49:
          sub_10038E4E4(buf);
          return 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v22 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_10176DDB8();
    }

    if (!v8)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 128);
    if (*(this + 151) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    *&buf[4] = v6;
    v4 = "#I [%{public}s] Server is Access-Control (deprovisioning ignored)...";
    goto LABEL_12;
  }

  return 0;
}

void sub_10038C8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v46);
  sub_10038E4E4(&a46);
  _Unwind_Resume(a1);
}

uint64_t LazuliProvisioningServerWrapper::eraseAccessControlConfigForServer(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 151) < 0)
    {
      v3 = *(this + 16);
      sub_100005F2C(__p, v3, *(this + 17));
    }

    else
    {
      v3 = this + 128;
      *__p = *(this + 8);
      v11 = *(this + 18);
    }

    v4 = __p;
    if (v11 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136446466;
    *&buf[4] = v3;
    v13 = 2082;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing Access control config for server: %{public}s", buf, 0x16u);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(this + 40);
  if (v5)
  {
    if (*(this + 151) < 0)
    {
      sub_100005F2C(__p, *(this + 16), *(this + 17));
    }

    else
    {
      *__p = *(this + 8);
      v11 = *(this + 18);
    }

    v6 = sub_1002CB0A8();
    sub_10000501C(buf, v6);
    sub_10075E5D0(v5, __p, buf);
    if (v15 < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(this + 45);
  if (v7)
  {
    v8 = *(v7 + 144);
    *(v7 + 136) = 0;
    *(v7 + 144) = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  return 1;
}

void LazuliProvisioningServerWrapper::setXmlCollection(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 368);
    *(a1 + 360) = v2;
    *(a1 + 368) = v3;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::getXmlCollection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 368);
  *a2 = *(this + 360);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

LazuliProvisioningWebHelper *LazuliProvisioningServerWrapper::dump(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    v25 = 136446466;
    v26 = v3;
    v27 = 2082;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] url: %{public}s", &v25, 0x16u);
  }

  v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 128);
    if (*(this + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *(this + 53);
    if (v6 > 4)
    {
      v7 = "??";
    }

    else
    {
      v7 = off_101E46D08[v6];
    }

    v8 = CSIBOOLAsString(*(this + 208));
    v25 = 136446722;
    v26 = v5;
    v27 = 2080;
    v28 = v7;
    v29 = 2080;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] DynamicParameters [.didFail: %s, .needsPSAccess: %s]", &v25, 0x20u);
  }

  v9 = *(this + 27);
  if (v9)
  {
    sub_1004633F0(v9, 1);
  }

  else
  {
    v10 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (this + 128);
      if (*(this + 151) < 0)
      {
        v11 = *v11;
      }

      v25 = 136446210;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full XML timer --> not active", &v25, 0xCu);
    }
  }

  v12 = *(this + 31);
  if (v12)
  {
    sub_1004633F0(v12, 1);
  }

  else
  {
    v13 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (this + 128);
      if (*(this + 151) < 0)
      {
        v14 = *v14;
      }

      v25 = 136446210;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Refresh XML timer --> not active", &v25, 0xCu);
    }
  }

  v15 = *(this + 29);
  if (v15)
  {
    sub_1004633F0(v15, 1);
  }

  else
  {
    v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (this + 128);
      if (*(this + 151) < 0)
      {
        v17 = *v17;
      }

      v25 = 136446210;
      v26 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML timer --> not active", &v25, 0xCu);
    }
  }

  v18 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (this + 128);
    if (*(this + 151) < 0)
    {
      v19 = *v19;
    }

    v20 = *(this + 38);
    if (*(this + 36))
    {
      v21 = "YES";
    }

    else
    {
      v21 = "NO";
    }

    v25 = 136446722;
    if (v20)
    {
      v22 = "YES";
    }

    else
    {
      v22 = "NO";
    }

    v26 = v19;
    v27 = 2080;
    v28 = v21;
    v29 = 2080;
    v30 = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] 3GPP provisioner: %s, non-CarrierBased provisioner: %s", &v25, 0x20u);
  }

  v23 = *(this + 36);
  if (v23)
  {
    LazuliProvisioningWebHelper::describe(v23);
  }

  result = *(this + 38);
  if (result)
  {
    return LazuliProvisioningWebHelper::describe(result);
  }

  return result;
}

void LazuliProvisioningServerWrapper::getAdditionalServers(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t LazuliProvisioningServerWrapper::isAppAttestationOngoing(LazuliProvisioningServerWrapper *this)
{
  result = *(this + 38);
  if (result)
  {
    return sub_10078502C(result);
  }

  return result;
}

void LazuliProvisioningServerWrapper::attestationComplete(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        (*(*v6 + 96))(v6, a2);
        v7 = *(a1 + 320);
        if (*(a1 + 151) < 0)
        {
          sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
        }

        else
        {
          *__p = *(a1 + 128);
          v10 = *(a1 + 144);
        }

        sub_100760BC4(v7, __p, a2);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_10176DE28();
    if (!v5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v5)
  {
LABEL_14:
    sub_100004A34(v5);
  }
}

void LazuliProvisioningServerWrapper::readAttestationKeyFromDisk(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_100760FC0(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::readVapidFromDisk(LazuliProvisioningServerWrapper *this@<X0>, void **a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_1007618C8(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::removeVapidFromDisk(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  v2 = sub_100761DA8(v1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_10038D344(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::readPushUrlFromDisk(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  sub_100762520(v3, __p, a2);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10038D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::removePushUrlFromDisk(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *(this + 8);
    v5 = *(this + 18);
  }

  v2 = sub_1007629C0(v1, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_10038D464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::requestProvisioningToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        (*(*v6 + 224))(v6, a2);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DE98();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_8:
  sub_100004A34(v5);
}

void LazuliProvisioningServerWrapper::eraseProvisioningToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        (*(*v6 + 232))(v6, a2);
        goto LABEL_8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DF08();
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

LABEL_8:
  sub_100004A34(v5);
}

void LazuliProvisioningServerWrapper::eraseUserInteractionRequiredXml(LazuliProvisioningServerWrapper *this)
{
  v2 = sub_100B39268();
  v3 = *(this + 45);
  if (v3)
  {
    v4 = v2;
    v5 = *(v3 + 152);
    if (v5)
    {
      v6 = sub_100B39274(v5);
      v8 = v7;
      v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = (this + 128);
          if (*(this + 151) < 0)
          {
            v11 = *v11;
          }

          *buf = 136446466;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] User intraction XML is valid: %ld", buf, 0x16u);
        }
      }

      else
      {
        if (v10)
        {
          v12 = (this + 128);
          if (*(this + 151) < 0)
          {
            v12 = *v12;
          }

          *buf = 136446466;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = v4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing %s of invalid validity", buf, 0x16u);
        }

        v13 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(buf, *(this + 16), *(this + 17));
        }

        else
        {
          *buf = *(this + 8);
          *&buf[16] = *(this + 18);
        }

        sub_10000501C(__p, v4);
        sub_10075E5D0(v13, buf, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }
  }
}

void LazuliProvisioningServerWrapper::eraseUnauthorizedXml(LazuliProvisioningServerWrapper *this)
{
  v2 = sub_100579D70();
  v3 = *(this + 45);
  if (v3)
  {
    v4 = v2;
    v5 = *(v3 + 72);
    if (v5)
    {
      v6 = sub_100579D8C(v5);
      v8 = v7;
      v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          v11 = (this + 128);
          if (*(this + 151) < 0)
          {
            v11 = *v11;
          }

          *buf = 136446466;
          *&buf[4] = v11;
          *&buf[12] = 2048;
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML is valid: %ld", buf, 0x16u);
        }
      }

      else
      {
        if (v10)
        {
          v12 = (this + 128);
          if (*(this + 151) < 0)
          {
            v12 = *v12;
          }

          *buf = 136446466;
          *&buf[4] = v12;
          *&buf[12] = 2080;
          *&buf[14] = sub_100579D70();
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing %s of invalid validity", buf, 0x16u);
        }

        v13 = *(this + 40);
        if (*(this + 151) < 0)
        {
          sub_100005F2C(buf, *(this + 16), *(this + 17));
        }

        else
        {
          *buf = *(this + 8);
          *&buf[16] = *(this + 18);
        }

        sub_10000501C(__p, v4);
        sub_10075E5D0(v13, buf, __p);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::handleFeatureUnavailable(LazuliProvisioningServerWrapper *this)
{
  LazuliProvisioningServerWrapper::eraseUserInteractionRequiredXml(this);
  LazuliProvisioningServerWrapper::eraseUnauthorizedXml(this);
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  CurrentConfig = LazuliProvisioningServerWrapper::getCurrentConfig(this);
  sub_10038E288(v4, CurrentConfig);
  if ((BYTE1(v5) & 1) == 0)
  {
    LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(this);
    LazuliProvisioningServerWrapper::eraseAccessControlConfigForServer(this);
  }

  LazuliProvisioningServerWrapper::resetRetryTimer(this);
  *(this + 47) = 0;
  return sub_10038E4E4(v4);
}

void LazuliProvisioningServerWrapper::scheduleRetry(LazuliProvisioningServerWrapper *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  LazuliProvisioningServerWrapper::resetRetryTimer(a1);
  operator new();
}

void sub_10038DE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002B644(v10 - 104);
  sub_1002535AC(v10 - 160);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  sub_10038B6D4(&a9);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::requestSigning(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 96);
      if (v6)
      {
        (*(*v6 + 80))(v6, a2);
LABEL_11:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176DF78();
  }

  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  (*(*a1 + 64))(a1, 0, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v5)
  {
    goto LABEL_11;
  }
}

void LazuliProvisioningServerWrapper::signingComplete(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v3 = *(*v2 + 80);

    v3();
  }

  else
  {
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DFE8();
    }
  }
}

uint64_t sub_10038E0A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v8 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v8;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v9 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v9;
  }

  v10 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10038E1A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10038E1FC(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

char *sub_10038E288(char *__dst, __int128 *a2)
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

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  v12 = a2[13];
  *(__dst + 12) = a2[12];
  *(__dst + 13) = v12;
  if (*(a2 + 247) < 0)
  {
    sub_100005F2C(__dst + 224, *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v13 = a2[14];
    *(__dst + 30) = *(a2 + 30);
    *(__dst + 14) = v13;
  }

  return __dst;
}

void sub_10038E420(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

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

uint64_t sub_10038E4E4(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
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

uint64_t sub_10038E598(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_10038E5E8(uint64_t a1)
{
  if (*(a1 + 1232) == 1)
  {
    if (*(a1 + 1168) == 1)
    {
      sub_10038E6A4(a1 + 720);
    }

    if (*(a1 + 712) == 1)
    {
      sub_100009970(a1 + 688, *(a1 + 696));
    }

    if (*(a1 + 648) == 1)
    {
      sub_10038E7C0(a1 + 120);
    }

    if (*(a1 + 112) == 1)
    {
      v3 = (a1 + 88);
      sub_1002CB430(&v3);
      sub_100009970(a1 + 64, *(a1 + 72));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_10038E6A4(uint64_t a1)
{
  if (*(a1 + 440) == 1 && *(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 408) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1)
  {
    if (*(a1 + 352) == 1 && *(a1 + 351) < 0)
    {
      operator delete(*(a1 + 328));
    }

    if (*(a1 + 327) < 0)
    {
      operator delete(*(a1 + 304));
    }
  }

  if (*(a1 + 256) == 1)
  {
    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }
  }

  if (*(a1 + 112) == 1)
  {
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
  }

  return a1;
}

uint64_t sub_10038E7C0(uint64_t a1)
{
  if (*(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 463) < 0)
  {
    operator delete(*(a1 + 440));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_100009970(a1 + 80, *(a1 + 88));
  sub_100009970(a1 + 56, *(a1 + 64));
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10038E99C(void *a1, int *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46748;
  sub_10038EAFC((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10038EA18(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10038EA6C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

uint64_t sub_10038EAFC(uint64_t a1, int *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  v6 = a3[1];
  v8 = *a3;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10075C9D8(a1, v5, &v8, a4);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

void sub_10038EB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038EBF8(void *a1, unsigned int *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46798;
  sub_10038ECD4((a1 + 3), a2, a3);
  return a1;
}

void sub_10038EC74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038ECD4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098DDCC(a1, v4, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  return a1;
}

void sub_10038ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10038ED4C(ctu::OsLogLogger *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v8 = *(this + 4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 1);
  *(this + 1) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

uint64_t *sub_10038EE14(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10002B644(v2 + 88);
    v3 = *(v2 + 80);
    *(v2 + 80) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(v2 + 16);
    if (v5)
    {
      dispatch_release(v5);
    }

    ctu::OsLogLogger::~OsLogLogger(v2);

    operator delete();
  }

  return result;
}

void sub_10038EED0(uint64_t a1)
{
  v9 = a1;
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(v2 + 104);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4 && *(v2 + 96))
    {
      *(v2 + 212) = *v1;
      v5 = *(v2 + 296);
      *(v2 + 288) = 0;
      *(v2 + 296) = 0;
      if (v5)
      {
        sub_100004A34(v5);
      }

      v6 = *(v2 + 312);
      *(v2 + 304) = 0;
      *(v2 + 312) = 0;
      if (v6)
      {
        sub_100004A34(v6);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v2 + 56));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v8 = *v8;
    }

    *buf = 136446210;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client has disappeared", buf, 0xCu);
  }

  if (!v4)
  {
LABEL_15:
    operator delete();
  }

LABEL_14:
  sub_100004A34(v4);
  goto LABEL_15;
}

void sub_10038F03C()
{
  if (v0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

uint64_t sub_10038F068(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v4 = sub_10038F0E0(a1, a2, *(a1 + 8), a1 + 8);
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(a2 + 23) >= 0 ? a2 : *a2;
  v7 = *(v5 + 55) >= 0 ? (v5 + 32) : *(v5 + 32);
  if (strcasecmp(v6, v7) < 0)
  {
    return v3;
  }

  return v5;
}

uint64_t sub_10038F0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      if (*(v5 + 55) >= 0)
      {
        v7 = (v5 + 32);
      }

      else
      {
        v7 = *(v5 + 32);
      }

      v8 = strcasecmp(v7, v6);
      if (v8 >= 0)
      {
        a4 = v5;
      }

      v5 = *(v5 + ((v8 >> 28) & 8));
    }

    while (v5);
  }

  return a4;
}

void *sub_10038F1DC(void *a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E467E8;
  sub_10038F2D4((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_10038F258(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E467E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F2D4(uint64_t a1, uint64_t *a2, uint64_t a3, _OWORD *a4)
{
  v5 = a2[1];
  v7 = *a2;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1002CAE28(a1, &v7, a3, a4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  return a1;
}

void sub_10038F330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F3BC(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46838;
  sub_10038F4B4((a1 + 3), a2);
  return a1;
}

void sub_10038F438(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F4B4(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100579C6C(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_10038F510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F59C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46888;
  sub_10038F694((a1 + 3), a2);
  return a1;
}

void sub_10038F618(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46888;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F694(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008D70A4(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_10038F6F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F77C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E468D8;
  sub_10038F874((a1 + 3), a2);
  return a1;
}

void sub_10038F7F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E468D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038F874(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100B39160(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_10038F8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038F95C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46928;
  sub_10038FA54((a1 + 3), a2);
  return a1;
}

void sub_10038F9D8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46928;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038FA54(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A2B0D4(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_10038FAB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FB3C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E46978;
  sub_10038FC34((a1 + 3), a2);
  return a1;
}

void sub_10038FBB8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E46978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10038FC34(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100649088(a1, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_10038FC90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FD44(void *a1, unsigned int *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E469C8;
  sub_10038FEAC((a1 + 3), a2, a3, a4, a5, a6);
  return a1;
}

void sub_10038FDC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E469C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10038FE14(uint64_t a1)
{
  sub_10002B644(a1 + 112);
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    dispatch_release(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
}

uint64_t sub_10038FEAC(uint64_t a1, unsigned int *a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = *a2;
  v8 = a3[1];
  v10 = *a3;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004630A4(a1, v7, &v10, a4, *a5, a6);
  if (v11)
  {
    sub_100004A34(v11);
  }

  return a1;
}

void sub_10038FF10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10038FF28(void *a1)
{
  *a1 = off_101E46A18;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10038FF74(void *a1)
{
  *a1 = off_101E46A18;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_100390054(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46A18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100390094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003900A4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003900E4(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 40))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling refresh timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003902C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10039030C(void *a1)
{
  *a1 = off_101E46A98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100390358(void *a1)
{
  *a1 = off_101E46A98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_100390438(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46A98;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100390478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100390488(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003904C8(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 48))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling full XML timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1003906A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1003906F0(void *a1)
{
  *a1 = off_101E46B18;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10039073C(void *a1)
{
  *a1 = off_101E46B18;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10039081C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E46B18;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_10039085C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10039086C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003908AC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_20:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 104);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 96);
          if (v8)
          {
            if (*(v3 + 151) < 0)
            {
              sub_100005F2C(__p, *(v3 + 128), *(v3 + 136));
            }

            else
            {
              *__p = *(v3 + 128);
              v12 = *(v3 + 144);
            }

            (*(*v8 + 56))(v8, __p);
            if (SHIBYTE(v12) < 0)
            {
              operator delete(__p[0]);
            }

LABEL_19:
            sub_100004A34(v7);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 56));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 128);
        if (*(v3 + 151) < 0)
        {
          v10 = *v10;
        }

        LODWORD(__p[0]) = 136446210;
        *(__p + 4) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Client disappeared while handling unauthorized XML timer expiry", __p, 0xCu);
      }

      if (!v7)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }
}

void sub_100390A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v15);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_100390A88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100390AD4(uint64_t a1)
{
  *a1 = off_101E46B98;
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100390B28(uint64_t a1)
{
  *a1 = off_101E46B98;
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_100390C64(uint64_t a1, void *a2)
{
  *a2 = off_101E46B98;
  v4 = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *v4 = v5;
  }

  return sub_1001058C4((a2 + 4), a1 + 32);
}

void sub_100390CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100390D08(void *a1)
{
  sub_100390DE0(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100390D44(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100390D94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100390DE0(uint64_t a1)
{
  sub_100007E44(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100390E30(uint64_t a1)
{
  *a1 = off_101E46C18;
  sub_100007E44(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100390E84(uint64_t a1)
{
  *a1 = off_101E46C18;
  sub_100007E44(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_100390FB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E46C18;
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

  return sub_1001058C4(a2 + 40, a1 + 40);
}

void sub_100391030(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_100391054(void *a1)
{
  sub_1003911B0(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100391090(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(v4 + 320);
  if (*(v4 + 151) < 0)
  {
    sub_100005F2C(__p, *(v4 + 128), *(v4 + 136));
  }

  else
  {
    *__p = *(v4 + 128);
    v9 = *(v4 + 144);
  }

  sub_100762124(v5, __p, a2);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(a1 + 64);
  if (!v6)
  {
    sub_100022DB4();
  }

  return (*(*v6 + 48))(v6, a2);
}

void sub_100391148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100391164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003911B0(uint64_t a1)
{
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_100391200(void *a1)
{
  *a1 = off_101E46C98;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100391250(void *a1)
{
  *a1 = off_101E46C98;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100391348(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100391368(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E46C98;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a2 + 32, a1 + 32);
}

void sub_1003913D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003913F4(void *a1)
{
  sub_100287520(a1 + 8);

  operator delete(a1);
}

void sub_100391430(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3[4] = a1[2];
  v3[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[6] = v1;
  sub_10009CF40(&v4, (a1 + 4));
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (v1 + 8));
  operator new();
}

void sub_100391598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003915C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100391614(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
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
        sub_10038EE14((v3 + 384), 0);
        sub_10038EE14((v3 + 384), 0);
        v6 = v1[6];
        if (!v6)
        {
          sub_100022DB4();
        }

        (*(*v6 + 48))(v6);
      }

      sub_100004A34(v5);
    }
  }

  sub_1003916F0(&v9);
  return sub_1000049E0(&v8);
}

void sub_1003916CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_1003916F0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003916F0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B644(v1 + 24);
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1003917F0(uint64_t a1, void *a2, void *a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "rm.mdl");
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger(v6, v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101E46D90;
  v7 = a2[1];
  *(a1 + 32) = *a2;
  *(a1 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = 2;
  *(a1 + 72) = 8;
  *(a1 + 73) = 0;
  return a1;
}

void sub_1003918F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  RadioModelInterface::~RadioModelInterface(v2);
  _Unwind_Resume(a1);
}

void sub_10039192C(void *a1)
{
  *a1 = off_101E46D90;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  RadioModelInterface::~RadioModelInterface(a1);
}

void sub_1003919AC(void *a1)
{
  sub_10039192C(a1);

  operator delete();
}

void sub_1003919E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 73);
    if (v3 > 4)
    {
      v4 = "???";
    }

    else
    {
      v4 = off_101E46FB0[v3];
    }

    v5 = *(a1 + 74);
    if (v5 > 4)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101E46FB0[v5];
    }

    v11 = 136315650;
    v12 = v4;
    v13 = 2080;
    v14 = v6;
    v15 = 2080;
    v16 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Clearing: Current: %s, Pending: %s and Operating Mode: %s", &v11, 0x20u);
  }

  *(a1 + 72) = 8;
  *(a1 + 74) = 0;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 48);
      if (v10)
      {
        (*(*v10 + 40))(v10, *(a1 + 72));
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100391B50(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = printers::asString((a1 + 64), v3);
    v15 = 2080;
    v16 = printers::asString((a1 + 65), v4);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio Intialized: %s, Ticket Available: %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    v6 = asString();
    v13 = 136315394;
    v14 = v5;
    v15 = 2080;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Current Modes: Operating %s & Airplane Mode: %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 73);
    if (v7 > 4)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_101E46FB0[v7];
    }

    v9 = *(a1 + 74);
    if (v9 > 4)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_101E46FB0[v9];
    }

    v13 = 136315394;
    v14 = v8;
    v15 = 2080;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Operating Mode Requests: Current %s & Pending %s", &v13, 0x16u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = printers::asString((a1 + 75), v11);
    v13 = 136315138;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Send Airplane Mode Notification: %s", &v13, 0xCu);
  }
}

atomic_uint **sub_100391D68(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband on", v4, 2u);
  }

  sub_10014BF94(&event::baseband::on[3]);
  v2 = sub_100081A98(&event::baseband::on[1]);
  return sub_100081ADC(v2);
}

atomic_uint **sub_100391DE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband off (reset)", v4, 2u);
  }

  sub_10014BF94(&event::baseband::reset[3]);
  v2 = sub_100081A98(&event::baseband::reset[1]);
  return sub_100081ADC(v2);
}

atomic_uint **sub_100391E60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I baseband off (shutdown)", v4, 2u);
  }

  sub_10014BF94(&event::baseband::off[3]);
  v2 = sub_100081A98(&event::baseband::off[1]);
  return sub_100081ADC(v2);
}

void sub_100391EDC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_10176E058(a1, v2);
  }

  if (*(a1 + 73))
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
    *v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v20 = 0u;
    sub_10000C320(&v20);
    v3 = sub_10000C030(&v21);
    v4 = sub_10000C030(v3);
    v5 = asString();
    strlen(v5);
    v6 = sub_10000C030(v4);
    v7 = sub_10000C030(v6);
    v8 = *(a1 + 73);
    if (v8 > 4)
    {
      v9 = "???";
    }

    else
    {
      v9 = off_101E46FB0[v8];
    }

    strlen(v9);
    v10 = sub_10000C030(v7);
    v11 = sub_10000C030(v10);
    v12 = *(a1 + 74);
    if (v12 > 4)
    {
      v13 = "???";
    }

    else
    {
      v13 = off_101E46FB0[v12];
    }

    strlen(v13);
    v14 = sub_10000C030(v11);
    sub_10000C030(v14);
    *(a1 + 73) = 0;
    sub_100392274(a1, &v20);
    v15 = *(a1 + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006EE70(&v21 + 8, __p);
      v16 = v19 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v37 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %{public}s\n===  ===  ===  ===  ===  ===  ===", buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *&v21 = v17;
    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23[1]);
    }

    std::locale::~locale(v22);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100392254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10068C9D8(va);
  _Unwind_Resume(a1);
}

void sub_100392274(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 74))
  {
    return;
  }

  sub_10000C030(a2 + 16);
  v4 = *(a1 + 74);
  v5 = 0x706010008uLL >> (8 * v4);
  if (v4 >= 5)
  {
    LOBYTE(v5) = 8;
  }

  if ((v5 & 0xF) != *(a1 + 72))
  {
    if (*(a1 + 74) <= 1u)
    {
      if (!*(a1 + 74))
      {
        goto LABEL_6;
      }
    }

    else
    {
      if (v4 == 2 || v4 == 3)
      {
        v6 = a2 + 16;
        goto LABEL_17;
      }

      if (v4 != 4)
      {
LABEL_18:
        sub_100392EE8(a1, *(a1 + 74), 1);
        *(a1 + 74) = 0;
        return;
      }
    }

    v6 = a2 + 16;
LABEL_17:
    sub_10000C030(v6);
    goto LABEL_18;
  }

  *(a1 + 74) = 0;
LABEL_6:

  sub_10000C030(a2 + 16);
}

uint64_t sub_100392398(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  if (v4 > 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_1017FA06C[v4];
  }

  *(a1 + 72) = a2;
  v6 = *(a1 + 8);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v8 = a2;
  if (v7)
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband %s mode", buf, 0xCu);
    v8 = *(a1 + 72);
  }

  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 == 6)
      {
        v5 = 1;
        goto LABEL_29;
      }

      if (v8 != 8)
      {
        if (v8 != 7)
        {
          goto LABEL_29;
        }

        goto LABEL_15;
      }

      goto LABEL_20;
    }

    if (v8 == 4)
    {
LABEL_20:
      if (capabilities::ct::supportsRadioModeWorkaroundForWatch(v7))
      {
        v5 = 0;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_29;
    }

LABEL_19:
    v5 = 0;
    goto LABEL_29;
  }

  if (v8 > 1)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    if (v8 == 1)
    {
LABEL_15:
      sub_10014BF94(&event::radio::off[3]);
      v9 = sub_100081A98(&event::radio::off[1]);
      sub_100081ADC(v9);
      if (*(a1 + 75) != 1)
      {
        v5 = 0;
        *(a1 + 75) = 1;
        goto LABEL_29;
      }

      sub_100392988(a1, 1);
      goto LABEL_19;
    }
  }

  else
  {
    sub_10014BF94(&event::radio::on[3]);
    v10 = sub_100081A98(&event::radio::on[1]);
    sub_100081ADC(v10);
    sub_1002C54F4();
    if (*(a1 + 75) == 1)
    {
      sub_100392988(a1, 0);
    }

    else
    {
      *(a1 + 75) = 1;
    }

    v5 = 2;
  }

LABEL_29:
  sub_100392C18(&event::baseband::operatingMode, *(a1 + 72));
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(a1 + 48);
      if (v14)
      {
        (*(*v14 + 40))(v14, a2);
      }

      sub_100004A34(v13);
    }
  }

  v51 = 0;
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
  v40 = 0u;
  *v39 = 0u;
  memset(v38, 0, sizeof(v38));
  *buf = 0u;
  v37 = 0u;
  sub_10000C320(buf);
  v15 = sub_10000C030(&v37);
  v16 = sub_10000C030(v15);
  v17 = asString();
  strlen(v17);
  v18 = sub_10000C030(v16);
  v19 = sub_10000C030(v18);
  v20 = *(a1 + 73);
  if (v20 > 4)
  {
    v21 = "???";
  }

  else
  {
    v21 = off_101E46FB0[v20];
  }

  strlen(v21);
  v22 = sub_10000C030(v19);
  v23 = sub_10000C030(v22);
  v24 = *(a1 + 74);
  if (v24 > 4)
  {
    v25 = "???";
  }

  else
  {
    v25 = off_101E46FB0[v24];
  }

  strlen(v25);
  sub_10000C030(v23);
  v26 = *(a1 + 73);
  v27 = 8;
  if (v26 > 1)
  {
    switch(v26)
    {
      case 2u:
        v27 = 1;
        break;
      case 3u:
        v27 = 6;
        break;
      case 4u:
        v27 = 7;
        break;
    }

LABEL_50:
    if (v27 == *(a1 + 72))
    {
      *(a1 + 73) = 0;
      sub_10000C030(&v37);
      sub_100392274(a1, buf);
    }

    else
    {
      sub_10000C030(&v37);
    }

    goto LABEL_53;
  }

  if (*(a1 + 73))
  {
    if (v26 == 1)
    {
      v27 = 0;
    }

    goto LABEL_50;
  }

LABEL_53:
  v28 = *(a1 + 8);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    sub_10006EE70(&v37 + 8, __p);
    v29 = v33 >= 0 ? __p : __p[0];
    *v34 = 136446210;
    v35 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %{public}s\n===  ===  ===  ===  ===  ===  ===", v34, 0xCu);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&v37 = v30;
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  std::locale::~locale(v38);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v5;
}

void sub_100392988(uint64_t a1, char a2)
{
  if (a2)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
  v25 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v25);
  if (!v10)
  {
    v12 = 0;
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator new();
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_12:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

LABEL_14:
  v14 = Registry::getServiceMap(*(a1 + 32));
  v15 = v14;
  v16 = "N3awd7metrics14MetricCountersE";
  if (("N3awd7metrics14MetricCountersE" & 0x8000000000000000) != 0)
  {
    v17 = ("N3awd7metrics14MetricCountersE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v25 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v25);
  if (!v20)
  {
    v22 = 0;
LABEL_22:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    goto LABEL_22;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
  if (v22)
  {
LABEL_23:
    v24 = sub_100AFFDB8(v22);
    sub_100B00EAC(v24, a2);
  }

LABEL_24:
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}