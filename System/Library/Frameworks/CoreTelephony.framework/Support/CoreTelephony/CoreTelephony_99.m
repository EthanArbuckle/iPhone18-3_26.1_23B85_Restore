void sub_1006636A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, dispatch_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t object, char a35)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleRegistrationStatusChanged_sync(C2KRadioModule *this)
{
  v1 = *(this + 374);
  if (v1 == (this + 3000))
  {
    return;
  }

  v3 = 0;
  do
  {
    v4 = *(v1 + 8);
    v5 = v4 == 1 || v4 == 3;
    if (v5)
    {
      v3 = 1;
    }

    else if ((v4 - 4) < 3)
    {
      v8 = 1;
      goto LABEL_19;
    }

    v6 = *(v1 + 1);
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
        v7 = *(v1 + 2);
        v5 = *v7 == v1;
        v1 = v7;
      }

      while (!v5);
    }

    v1 = v7;
  }

  while (v7 != (this + 3000));
  if ((v3 & 1) == 0)
  {
    return;
  }

  v8 = 0;
LABEL_19:
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v20 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_26;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_26:
    v20 = v11;
    goto LABEL_27;
  }

  xpc_retain(v10);
LABEL_27:
  xpc_release(v10);
  v18 = xpc_BOOL_create(v8);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v17[0] = &v20;
  v17[1] = abm::kKeyRegistrationStatus;
  sub_10000F688(v17, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v12 = *(this + 132);
  v16 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v16 = xpc_null_create();
  }

  v13 = abm::kCommandCallServiceState;
  v14 = *(this + 129);
  v15 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v21[0] = off_101E6F988;
  v21[1] = this;
  v21[3] = v21;
  (*(*v12 + 48))(v12, v13, &v16, &v15, v21);
  sub_100049CCC(v21);
  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v16);
  v16 = 0;
  xpc_release(v20);
}

void sub_100663A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleAirplaneModeUserPreferenceChanged_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 3016);
  if (v2 == a2 || v2 == 0)
  {
    return;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v16 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    v7 = xpc_null_create();
LABEL_12:
    v16 = v7;
    goto LABEL_13;
  }

  xpc_retain(v6);
LABEL_13:
  xpc_release(v6);
  v14 = xpc_BOOL_create(*(a1 + 3016) == 2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v13[0] = &v16;
  v13[1] = abm::kKeyAirplaneModeUserPreference;
  sub_10000F688(v13, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  v8 = *(a1 + 1056);
  v12 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v9 = abm::kCommandCallServiceState;
  v10 = *(a1 + 1032);
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v17[0] = off_101E6FA08;
  v17[1] = a1;
  v17[3] = v17;
  (*(*v8 + 48))(v8, v9, &v12, &v11, v17);
  sub_100049CCC(v17);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v12);
  v12 = 0;
  xpc_release(v16);
}

void sub_100663CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendOperatingModeRequest(void *a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
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
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(a2);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v13 = &v19;
  v14 = abm::kKeyBasebandOperatingMode;
  sub_10000F688(&v13, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v14 = a1 + 26;
  v13 = 1;
  v16 = HIDWORD(a1[30]);
  v17 = 0;
  v15 = 3;
  v7 = a1[132];
  v12 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v8 = abm::kCommandSetBasebandOperatingMode;
  v9 = a1[129];
  v11 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a2 | (*(a1 + 60) << 32);
  v20[0] = off_101E6FB88;
  v20[1] = a1;
  v20[2] = v10;
  v20[3] = v20;
  (*(*v7 + 48))(v7, v8, &v12, &v11, v20);
  sub_100049CCC(v20);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v12);
  v12 = 0;
  sub_100677480(&v13);
  xpc_release(v19);
}

void sub_100663F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::enqueueAirplaneModeRequest(C2KRadioModule *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3802000000;
  v19 = sub_1006590A8;
  v21 = 0;
  v22 = 0;
  v20 = sub_1006590B8;
  Registry::getTimerService(&v13, *(this + 98));
  v4 = v13;
  sub_10000501C(__p, "Airplane mode debounce");
  v5 = *(this + 6);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100664250;
  aBlock[3] = &unk_101E6D4C8;
  aBlock[5] = this;
  aBlock[6] = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = &v16;
  v9 = _Block_copy(aBlock);
  sub_100D23364(v4, __p, 2, 3000000, &object, &v9);
  sub_10039C50C(v17 + 5, &v15);
  v6 = v15;
  v15 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Block_object_dispose(&v16, 8);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006641B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  v30 = *(v28 - 96);
  *(v28 - 96) = 0;
  if (v30)
  {
    sub_101777194();
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Block_object_dispose((v28 - 88), 8);
  v31 = *(v28 - 40);
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  _Unwind_Resume(a1);
}

void sub_100664250(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[5];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134217984;
          v11 = 3;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Delay entering airplane mode [%llus]", &v10, 0xCu);
        }

        C2KRadioModule::delayEnterAirplaneMode(v3, v7);
        v8 = *(a1[4] + 8);
        v9 = *(v8 + 48);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t C2KRadioModule::delayEnterAirplaneMode(C2KRadioModule *this, void *a2)
{
  ATCSMutex::lock((this + 56));
  if ((*(**(this + 8) + 104))(*(this + 8)))
  {
    C2KRadioModule::sendOperatingModeRequest(this, 1u);
  }

  else
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Airplane mode request discarded", v5, 2u);
    }
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t sub_100664420(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10066443C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t C2KRadioModule::updateOperatingMode(uint64_t result, int a2)
{
  if (*(result + 280) != a2)
  {
    *(result + 280) = a2;
    v2 = *(result + 272);
    if (v2)
    {
      return (*(*v2 + 48))(*(result + 272), result + 280);
    }
  }

  return result;
}

uint64_t non-virtual thunk toC2KRadioModule::updateOperatingMode(uint64_t result, int a2)
{
  if (*(result + 264) != a2)
  {
    *(result + 264) = a2;
    v2 = *(result + 256);
    if (v2)
    {
      return (*(*v2 + 48))(*(result + 256), result + 264);
    }
  }

  return result;
}

void C2KRadioModule::blockAccessoriesDueToEmergencyIfNeeded_sync(C2KRadioModule *this)
{
  if (isActive())
  {
    v2 = 1;
  }

  else
  {
    v2 = isActive();
  }

  if (*(this + 996) != v2)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "Unblocking accessories";
      if (v2)
      {
        v4 = "Blocking accessories due to emergency";
      }

      *buf = 136315138;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    *(this + 996) = v2;
    v5 = *(this + 132);
    v6 = xpc_null_create();
    v7 = abm::kCommandBlockAccessories;
    v8 = abm::kCommandUnblockAccessories;
    v12 = v6;
    v9 = *(this + 129);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v13[0] = off_101E6FC08;
    v13[1] = this + 40;
    LOBYTE(v14[0]) = v2;
    v14[1] = v13;
    memset(v14 + 1, 0, 7);
    if (v2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    (*(*v5 + 48))(v5, v10, &v12, &object, v13);
    sub_100049CCC(v13);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v12);
  }
}

void sub_1006646A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006646F0(uint64_t a1)
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

void sub_100664770(uint64_t *a1)
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
        sub_1006647E4((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_1006647E4(uint64_t a1)
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

uint64_t sub_100664864(uint64_t a1)
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

uint64_t sub_1006648E4(uint64_t a1)
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

void sub_1006649E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101777408();
  }

  _Unwind_Resume(exception_object);
}

void sub_100664A00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100664A38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100664A68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100664C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_100664CA8(ATCSDPCQueue::Callback *a1)
{
  ATCSDPCQueue::Callback::~Callback(a1);

  operator delete();
}

uint64_t sub_100664CE0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

void sub_100664D38(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 1284) == 1;
  v4 = 0;
  C2KRadioModule::updateBreadPairedStatus_sync(v1, v2, v3);
}

void sub_100664DD4(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10000FF50(va);
  operator delete();
}

uint64_t sub_100664E64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D5E0;
  a2[1] = v2;
  return result;
}

void sub_100664E90(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  v34 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v34 = xpc_null_create();
  }

  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  __s1 = 0;
  v38 = 0;
  v39 = 0;
  v35[0] = &v34;
  v35[1] = abm::kKeyServerState;
  sub_100006354(v35, &object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    p_s1 = &__s1;
    if (v39 < 0)
    {
      p_s1 = __s1;
    }

    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = abm::kEventServerStateChange;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = p_s1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s (%s)", __p, 0x16u);
  }

  v10 = strlen(abm::kServerStateStarted);
  v11 = v10;
  v12 = SHIBYTE(v39);
  if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
  {
    if (v10 != v38)
    {
      goto LABEL_18;
    }

    if (v10 == -1)
    {
      sub_10013C334();
    }

    v13 = __s1;
  }

  else
  {
    if (v10 != SHIBYTE(v39))
    {
      goto LABEL_18;
    }

    v13 = &__s1;
  }

  if (!memcmp(v13, abm::kServerStateStarted, v11))
  {
    C2KRadioModule::updateDataThrottlingConfig(v7);
    v20 = *(v7 + 1056);
    v21 = xpc_null_create();
    v22 = abm::kCommandGetBasebandBootState;
    v35[0] = v21;
    v23 = *(v7 + 1032);
    object = v23;
    if (v23)
    {
      dispatch_retain(v23);
    }

    __p[0] = off_101E6D660;
    __p[1] = v7;
    __p[3] = __p;
    (*(*v20 + 48))(v20, v22, v35, &object, __p);
    sub_100049CCC(__p);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v35[0]);
    v35[0] = 0;
    goto LABEL_51;
  }

LABEL_18:
  v14 = strlen(abm::kServerStateStopping);
  v15 = v14;
  if ((v12 & 0x80000000) != 0)
  {
    if (v14 == v38)
    {
      if (v14 == -1)
      {
        sub_10013C334();
      }

      v16 = __s1;
LABEL_24:
      if (memcmp(v16, abm::kServerStateStopping, v15))
      {
        goto LABEL_25;
      }

      ATCSMutex::lock((v7 + 56));
      CSIRadioModulePrivate::changeState(v7, 7u);
      if (*(v7 + 360) != 2)
      {
        *(v7 + 360) = 1;
      }

      ATCSMutex::unlock((v7 + 56));
      ServiceMap = Registry::getServiceMap(*(v7 + 784));
      v25 = ServiceMap;
      if (v26 < 0)
      {
        v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
        v28 = 5381;
        do
        {
          v26 = v28;
          v29 = *v27++;
          v28 = (33 * v28) ^ v29;
        }

        while (v29);
      }

      std::mutex::lock(ServiceMap);
      __p[0] = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, __p);
      if (v30)
      {
        v32 = v30[3];
        v31 = v30[4];
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v25);
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v31);
          v33 = 0;
LABEL_48:
          (*(*v32 + 232))(v32);
          if ((v33 & 1) == 0)
          {
            sub_100004A34(v31);
          }

          ATCSMutex::lock((v7 + 56));
          ATCSMutex::unlock((v7 + 56));
          goto LABEL_51;
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v25);
      v31 = 0;
      v33 = 1;
      goto LABEL_48;
    }
  }

  else if (v14 == v12)
  {
    v16 = &__s1;
    goto LABEL_24;
  }

LABEL_25:
  v17 = strlen(abm::kServerStateStopped);
  v18 = v17;
  if ((v12 & 0x80000000) != 0)
  {
    if (v17 != v38)
    {
      goto LABEL_51;
    }

    if (v17 == -1)
    {
      sub_10013C334();
    }

    v19 = __s1;
  }

  else
  {
    if (v17 != v12)
    {
      goto LABEL_51;
    }

    v19 = &__s1;
  }

  if (!memcmp(v19, abm::kServerStateStopped, v18))
  {
    (*(*v7 + 176))(v7);
  }

LABEL_51:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__s1);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v34);
}

void sub_100665330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665428(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006654E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D660;
  a2[1] = v2;
  return result;
}

void sub_100665510(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v15 = *a2;
  *v16 = *(a2 + 2);
  v17 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = *(a1 + 8);
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v7 = v5;
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (!v4 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v10 = *(v6 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Fetched baseband boot state from BasebandManager", __p, 2u);
    }

    v11 = *(v6 + 364);
    if (v11)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CSIRadioModulePrivate::stateAsString(v11);
        *__p = 136315138;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring fetched state, as we already received baseband boot state [%s]", __p, 0xCu);
      }
    }

    else
    {
      *__p = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *__p = xpc_null_create();
      }

      buf.gr_name = 0;
      v14.fObj.fObj = __p;
      C2KRadioModule::handleBasebandStateChange(v6, v14, &buf);
      xpc_release(*__p);
      *__p = 0;
    }
  }

  else
  {
    v8 = *(v6 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v15, __p);
      v9 = v19 >= 0 ? __p : *__p;
      LODWORD(buf.gr_name) = 136315138;
      *(&buf.gr_name + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Fetching baseband boot state failed. %s", &buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  xpc_release(v7);
  xpc_release(v5);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_100665760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  xpc_release(v17);
  xpc_release(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006657DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100665898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D700;
  a2[1] = v2;
  return result;
}

void sub_1006658C4(uint64_t a1, char **a2, char **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10.gr_passwd) = 136315138;
    *(&v10.gr_passwd + 4) = abm::kEventBasebandBootStateChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v10.gr_passwd, 0xCu);
  }

  v10.gr_passwd = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10.gr_passwd = xpc_null_create();
  }

  v10.gr_name = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v9.fObj.fObj = &v10.gr_passwd;
  C2KRadioModule::handleBasebandStateChange(v7, v9, &v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v10.gr_passwd);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100665A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665A74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100665B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D780;
  a2[1] = v2;
  return result;
}

void sub_100665B5C(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventTraceDumpStateBegin;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
    v8 = *(v7 + 40);
  }

  memset(v22, 0, sizeof(v22));
  *buf = 0u;
  v9 = os_signpost_id_generate(v8);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = *(v7 + 40);
    if (os_signpost_enabled(v10))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "BasebandLogDump", "", v18, 2u);
    }
  }

  *v18 = off_101E6D7F0;
  v20[1] = v18;
  *buf = v9;
  *&buf[8] = os_retain(v8);
  sub_1000148FC(v22, v18);
  sub_10001499C(v18);
  sub_10000501C(&__p, "Baseband log dump");
  *v18 = *buf;
  v19 = *&buf[8];
  sub_1000148FC(v20, v22);
  memset(buf, 0, sizeof(buf));
  sub_100014A28(v22);
  Registry::createXpcJetsamAssertion();
  v11 = *object;
  object[0] = 0;
  object[1] = 0;
  v12 = *(v7 + 568);
  *(v7 + 560) = v11;
  if (v12)
  {
    sub_100004A34(v12);
    if (object[1])
    {
      sub_100004A34(object[1]);
    }
  }

  sub_100014DA8(v18);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  object[0] = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v14.fObj.fObj = object;
  C2KRadioModule::handleDumpStateStartEvent(v7, v14, v13);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  sub_100014DA8(buf);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100665E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665EA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100665F78(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "BasebandLogDump", "", v5, 2u);
    }
  }
}

uint64_t sub_100665FF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006660AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D880;
  a2[1] = v2;
  return result;
}

void sub_1006660D8(uint64_t a1, char **a2, char **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10.gr_passwd) = 136315138;
    *(&v10.gr_passwd + 4) = abm::kEventTraceDumpStateEnd;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v10.gr_passwd, 0xCu);
  }

  v10.gr_passwd = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10.gr_passwd = xpc_null_create();
  }

  v10.gr_name = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v9.fObj.fObj = &v10.gr_passwd;
  C2KRadioModule::handleDumpStateCompleteEvent(v7, v9, &v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v10.gr_passwd);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10066622C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666288(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666344(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D900;
  a2[1] = v2;
  return result;
}

void sub_100666370(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = xpc_copy_description(v5);
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    sub_10000501C(__p, v9);
    v10 = abm::kEventTracePostProcessingEnd;
    free(v9);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v17 = v10;
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s with data: %s", buf, 0x16u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*v7 + 544))(v7, __p);
  xpc_release(__p[0]);
  __p[0] = 0;
  v13 = *(v7 + 568);
  *(v7 + 560) = 0u;
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100343B98(byte_101FBA858, v12);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100666558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006665B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066666C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D980;
  a2[1] = v2;
  return result;
}

void sub_100666698(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = v7[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = abm::kEventBasebandPowerOff;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v9, 0xCu);
    v8 = v7[5];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband has powered-off", &v9, 2u);
  }

  (*(*v7 + 176))(v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_1006667E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10066681C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006668D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DA00;
  a2[1] = v2;
  return result;
}

void sub_100666904(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventBasebandOperatingModeChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  ATCSMutex::lock((v7 + 56));
  v13 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    v13 = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    *&buf = &v13;
    *(&buf + 1) = abm::kKeyBasebandOperatingMode;
    sub_100006354(&buf, &object);
    v10 = xpc::dyn_cast_or_default(&object, 8, v11);
    xpc_release(object);
    v9 = v13;
  }

  else
  {
    v10 = 8;
  }

  xpc_release(v9);
  C2KRadioModule::handleBasebandModeChanged_nl(v7, v10);
  ATCSMutex::unlock((v7 + 56));
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100666AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666B40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666BFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DA80;
  a2[1] = v2;
  return result;
}

void sub_100666C28(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  object = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventCTCellularTrasmitState;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
  }

  if (xpc_get_type(v5) != &_xpc_type_null)
  {
    v9 = *(v7 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, &object);
      v10 = v13 >= 0 ? buf : *buf;
      *v14 = 136446210;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v14, 0xCu);
      if (v13 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  *buf = xpc_null_create();
  sub_10002A37C(124, &object, buf);
  xpc_release(*buf);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(object);
}

void sub_100666DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666E18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666ED4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DB00;
  a2[1] = v2;
  return result;
}

void sub_100666F00(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = abm::kEventTracePropertyUpdate;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = object;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&buf, &object);
      v11 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      *v24 = 136446210;
      *&v24[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v24, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    memset(&buf, 0, sizeof(buf));
    *v24 = &object;
    *&v24[8] = abm::kKeyTraceName;
    sub_100006354(v24, &v22);
    xpc::dyn_cast_or_default(&buf, &v22, abm::kUnknown, v12);
    xpc_release(v22.__r_.__value_.__l.__data_);
    memset(v24, 0, sizeof(v24));
    v25 = 0;
    v22.__r_.__value_.__r.__words[0] = &object;
    v22.__r_.__value_.__l.__size_ = abm::kKeyTracePropertyName;
    sub_100006354(&v22, &__p);
    xpc::dyn_cast_or_default(v24, &__p, "", v13);
    xpc_release(__p.__r_.__value_.__l.__data_);
    memset(&v22, 0, sizeof(v22));
    __p.__r_.__value_.__r.__words[0] = &object;
    __p.__r_.__value_.__l.__size_ = abm::kKeyTracePropertyValue;
    sub_100006354(&__p, __dst);
    xpc::dyn_cast_or_default(&v22, __dst, "", v14);
    xpc_release(__dst[0]);
    if (v25 >= 0)
    {
      v15 = v24;
    }

    else
    {
      v15 = *v24;
    }

    if (strcasecmp(v15, abm::kKeyEnabled))
    {
      goto LABEL_33;
    }

    if ((*(&v22.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v22.__r_.__value_.__l.__size_ != 1)
      {
        if (v22.__r_.__value_.__l.__size_ == 4)
        {
          v16 = v22.__r_.__value_.__r.__words[0];
LABEL_25:
          if (LODWORD(v16->__r_.__value_.__l.__data_) != 1702195828)
          {
            goto LABEL_26;
          }

LABEL_30:
          __p.__r_.__value_.__r.__words[2] = 0x400000000000000;
          *&__p.__r_.__value_.__l.__data_ = *"true";
LABEL_31:
          std::string::operator=(&v22, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_33:
          if (*(v7 + 488))
          {
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = buf;
            }

            if (SHIBYTE(v25) < 0)
            {
              sub_100005F2C(__dst, *v24, *&v24[8]);
            }

            else
            {
              *__dst = *v24;
              v20 = v25;
            }

            if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v18, v22.__r_.__value_.__l.__data_, v22.__r_.__value_.__l.__size_);
            }

            else
            {
              v18 = v22;
            }

            sub_1006C97E4();
          }

          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v25) < 0)
          {
            operator delete(*v24);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_50;
        }

LABEL_26:
        *&__p.__r_.__value_.__l.__data_ = *"false";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_31;
      }

      v17 = *v22.__r_.__value_.__l.__data_;
    }

    else
    {
      if (HIBYTE(v22.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v22.__r_.__value_.__r.__words[2]) == 4)
        {
          v16 = &v22;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      v17 = v22.__r_.__value_.__s.__data_[0];
    }

    if (v17 != 49)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_50:
  xpc_release(object);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100667368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, xpc_object_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t object, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  xpc_release(object);
  if (v43)
  {
    dispatch_release(v43);
  }

  xpc_release(v42);
  _Unwind_Resume(a1);
}

uint64_t sub_10066749C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100667558(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DB80;
  a2[1] = v2;
  return result;
}

void sub_100667584(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventLogSummaryRequest;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  v66 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v66 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v66 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v10) == &_xpc_type_dictionary)
  {
    xpc_retain(v10);
    goto LABEL_11;
  }

  v11 = xpc_null_create();
LABEL_10:
  v66 = v11;
LABEL_11:
  xpc_release(v10);
  v64 = xpc_string_create(abm::kLogSummaryCSIDomain);
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  *&buf = &v66;
  *(&buf + 1) = abm::kKeyLogSummaryDomain;
  sub_10000F688(&buf, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v63 = 0;
  v64 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v63 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v63 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_21;
  }

  v14 = xpc_null_create();
LABEL_20:
  v63 = v14;
LABEL_21:
  xpc_release(v13);
  CTGetRootVersionString();
  if (v68 >= 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf;
  }

  object = xpc_string_create(p_buf);
  if (!object)
  {
    object = xpc_null_create();
  }

  tz = &v63;
  v44 = abm::kKeyCSIDomainCTVersion;
  sub_10000F688(&tz, &object, &v62);
  xpc_release(v62);
  v62 = 0;
  xpc_release(object);
  object = 0;
  if (v68 < 0)
  {
    operator delete(buf);
  }

  v59 = xpc_string_create(kCTProjectBuildRevision);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  *&buf = &v63;
  *(&buf + 1) = abm::kKeyCSIDomainCTRepoVersion;
  sub_10000F688(&buf, &v59, &v60);
  xpc_release(v60);
  v60 = 0;
  xpc_release(v59);
  v59 = 0;
  v57 = xpc_string_create(kCTProjectBuildReason);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  *&buf = &v63;
  *(&buf + 1) = abm::kKeyCSIDomainBuildReason;
  sub_10000F688(&buf, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  xpc_release(v57);
  v57 = 0;
  if (*(v7 + 1264))
  {
    v16 = asString();
    v55 = xpc_string_create(v16);
    if (!v55)
    {
      v55 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "Baseband mode override";
    sub_10000F688(&buf, &v55, &v56);
    xpc_release(v56);
    v56 = 0;
    xpc_release(v55);
    v55 = 0;
  }

  if (*(v7 + 1268))
  {
    v17 = asString();
    v53 = xpc_string_create(v17);
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "Operating mode override";
    sub_10000F688(&buf, &v53, &v54);
    xpc_release(v54);
    v54 = 0;
    xpc_release(v53);
    v53 = 0;
  }

  if (*(v7 + 1276))
  {
    v18 = asString();
    v51 = xpc_string_create(v18);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "WRM Telephony override";
    sub_10000F688(&buf, &v51, &v52);
    xpc_release(v52);
    v52 = 0;
    xpc_release(v51);
    v51 = 0;
  }

  v19 = *(v7 + 1272);
  if (v19 != -1)
  {
    v20 = sub_100633EA4(v19);
    v49 = xpc_string_create(v20);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "WRM Baseband override";
    sub_10000F688(&buf, &v49, &v50);
    xpc_release(v50);
    v50 = 0;
    xpc_release(v49);
    v49 = 0;
  }

  ServiceMap = Registry::getServiceMap(*(v7 + 784));
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
  *&buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, &buf);
  if (!v27)
  {
    v29 = 0;
LABEL_56:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_56;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
LABEL_57:
    tz = 0;
    (*(*v29 + 104))(&tz, v29);
    v31 = tz;
    v32 = (*(*v29 + 96))(v29);
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v31, v32);
    v46[0] = 0;
    Name = CFTimeZoneGetName(tz);
    v46[0] = CFStringCreateWithFormat(0, 0, @"[%d] %@", (SecondsFromGMT / 3600.0), Name);
    ctu::cf_to_xpc(&v47, v46[0], v35);
    *&buf = &v63;
    *(&buf + 1) = "System Time Zone";
    sub_10000F688(&buf, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    xpc_release(v47);
    v47 = 0;
    sub_100005978(v46);
    sub_1006680EC(&tz);
  }

LABEL_58:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v36 = *(v7 + 784);
  if (v36)
  {
    v46[0] = 0;
    v46[1] = 0;
    v37 = *(v7 + 792);
    *&buf = v36;
    *(&buf + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    sGetSubscriberSimInterface();
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    tz = v7;
    v44 = v63;
    if (v63)
    {
      xpc_retain(v63);
    }

    else
    {
      v44 = xpc_null_create();
    }

    v45 = v66;
    if (v66)
    {
      xpc_retain(v66);
    }

    else
    {
      v45 = xpc_null_create();
    }

    v69 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101777438();
  }

  v46[0] = v63;
  if (v63)
  {
    xpc_retain(v63);
  }

  else
  {
    v46[0] = xpc_null_create();
  }

  *&buf = &v66;
  *(&buf + 1) = abm::kKeyLogSummary;
  sub_100DAE90C(&buf, v46, &tz);
  xpc_release(tz);
  tz = 0;
  xpc_release(v46[0]);
  v46[0] = 0;
  v38 = *(v7 + 1056);
  v42 = v66;
  if (v66)
  {
    xpc_retain(v66);
  }

  else
  {
    v42 = xpc_null_create();
  }

  v39 = abm::kCommandReportLogSummary;
  v40 = *(v7 + 1032);
  v41 = v40;
  if (v40)
  {
    dispatch_retain(v40);
  }

  *&buf = off_101E6DD00;
  *(&buf + 1) = v7;
  v69 = &buf;
  (*(*v38 + 48))(v38, v39, &v42, &v41, &buf);
  sub_100049CCC(&buf);
  if (v41)
  {
    dispatch_release(v41);
  }

  xpc_release(v42);
  v42 = 0;
  xpc_release(v63);
  xpc_release(v66);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

uint64_t sub_10066805C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006680A8(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

const void **sub_1006680EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100668120(uint64_t a1)
{
  *a1 = off_101E6DBF0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_100668180(uint64_t a1)
{
  *a1 = off_101E6DBF0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

xpc_object_t sub_10066829C(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E6DBF0;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[2] = xpc_null_create();
  }

  v6 = a1[3];
  a2[3] = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  a2[3] = result;
  return result;
}

void sub_10066831C(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

void sub_10066835C(xpc_object_t *a1)
{
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);

  operator delete(a1);
}

const void **sub_1006683AC(uint64_t a1, const void **a2)
{
  v12 = *a2;
  v3 = v12;
  *a2 = 0;
  v4 = *(a1 + 8);
  ctu::cf_to_xpc(&v17, v3, a2);
  v19 = (a1 + 16);
  v20 = abm::kKeyCSIDomainInformation;
  sub_10000F688(&v19, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v5 = *(a1 + 16);
  v15 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v6 = (a1 + 24);
  v19 = (a1 + 24);
  v20 = abm::kKeyLogSummary;
  sub_100DAE90C(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v7 = *(v4 + 1056);
  v8 = *v6;
  v14 = v8;
  v15 = 0;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v9 = abm::kCommandReportLogSummary;
  v10 = *(v4 + 1032);
  v13 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v19 = off_101E6DC70;
  v20 = v4;
  v21 = &v19;
  (*(*v7 + 48))(v7, v9, &v14, &v13, &v19);
  sub_100049CCC(&v19);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v14);
  return sub_100010250(&v12);
}

void sub_10066856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006685D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066868C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DC70;
  a2[1] = v2;
  return result;
}

void sub_1006686B8(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177746C();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100668750(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066880C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DD00;
  a2[1] = v2;
  return result;
}

void sub_100668838(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177746C();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_1006688D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066898C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DD90;
  a2[1] = v2;
  return result;
}

void sub_1006689B8(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventBrickEnable;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  v13 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    v13 = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&buf, &v13);
      if (v15 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v16 = 136446210;
      *&v16[4] = p_buf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v16, 0xCu);
      if (v15 < 0)
      {
        operator delete(buf);
      }
    }

    *&buf = &v13;
    *(&buf + 1) = abm::kCTTxPowerCommandData;
    sub_100006354(&buf, v16);
    xpc::dyn_cast_or_default(v16, 0, v12);
    xpc_release(*v16);
    operator new();
  }

  xpc_release(v9);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100668BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  if (v16)
  {
    dispatch_release(v16);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100668C68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100668CB4(uint64_t a1)
{
  C2KRadioModule::enableBrickMode_sync(*a1, *(a1 + 8));

  operator delete();
}

void sub_100668D28(C2KRadioModule **a1)
{
  C2KRadioModule::loadBasebandConfigInfoPreferences_sync(*a1);

  operator delete();
}

uint64_t sub_100668E08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DE10;
  a2[1] = v2;
  return result;
}

void sub_100668E34(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventBasebandConfigUpdated;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
  }

  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = object;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, &object);
      v11 = v22 >= 0 ? buf : *buf;
      LODWORD(v20) = 136315138;
      *(&v20 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %s", &v20, 0xCu);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*buf);
      }
    }

    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateType;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(buf, &v18, "", v12);
    v13 = (v7 + 1104);
    if (*(v7 + 1127) < 0)
    {
      operator delete(*v13);
    }

    *v13 = *buf;
    *(v7 + 1120) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateTimestamp;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(buf, &v18, "", v14);
    v15 = (v7 + 1128);
    if (*(v7 + 1151) < 0)
    {
      operator delete(*v15);
    }

    *v15 = *buf;
    *(v7 + 1144) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateDetails;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(buf, &v18, "", v16);
    v17 = (v7 + 1152);
    if (*(v7 + 1175) < 0)
    {
      operator delete(*v17);
    }

    *v17 = *buf;
    *(v7 + 1168) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    C2KRadioModule::saveBasebandConfigInfoPreferences_sync(v7);
  }

  xpc_release(object);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10066912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1006691D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669290(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DE90;
  a2[1] = v2;
  return result;
}

void sub_1006692BC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017774A0();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100669354(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669460(uint64_t a1, uint64_t a2)
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

void *sub_1006694F8(void *a1)
{
  *a1 = off_101E6DF90;
  sub_1006646F0((a1 + 2));
  return a1;
}

void sub_10066953C(void *a1)
{
  *a1 = off_101E6DF90;
  sub_1006646F0((a1 + 2));

  operator delete();
}

uint64_t sub_10066961C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E6DF90;
  a2[1] = v2;
  return sub_100669460((a2 + 2), a1 + 16);
}

void sub_100669654(void *a1)
{
  sub_1006646F0(a1 + 16);

  operator delete(a1);
}

void sub_100669690(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v8 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Failed to perform to get property for Antenna module", buf, 2u);
    }
  }

  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    sub_100022DB4();
  }

  (*(*v9 + 48))(v9, &object);
  xpc_release(object);
  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_1006697D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v11);
  if (v12 < 0)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100669800(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066984C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10066993C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E010;
  a2[1] = v2;
  return result;
}

void sub_100669968(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017774D4();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100669A00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669ACC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E0B0;
  a2[1] = v2;
  return result;
}

void sub_100669AF8(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v4 = "is";
    }

    else
    {
      v4 = "is not";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Airplane mode assertion %s granted for brick mode", &v5, 0xCu);
  }
}

uint64_t sub_100669BB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669C00(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_100669C40(*(a1 + 8), (a1 + 16));
  }

  return a1;
}

uint64_t sub_100669C40(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 33);
  v3 = a2[1];
  if (v2 == v3 && v2 != 0)
  {
    v2 = *(a1 + 32);
    v3 = *a2;
  }

  if (v2 == v3)
  {
    return 0;
  }

  *(a1 + 32) = *a2;
  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 48))(v6, a1 + 32);
  }

  return 1;
}

void *sub_100669CCC(void *a1)
{
  *a1 = off_101E6E130;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_100669D10(void *a1)
{
  *a1 = off_101E6E130;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_100669DF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E6E130;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_100669E28(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_100669E64(uint64_t a1, int *a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v6 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v8, __p);
      v7 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update Bread status. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a1 + 40))
  {
    sub_10000FFD0(a1 + 16, v8 == 0);
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100669FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100669FE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066A0A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E1B0;
  a2[1] = v2;
  return result;
}

void sub_10066A0CC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v8 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Failed to perform to set motion paraemters from the bundle", v9, 2u);
    }
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_10066A188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066A1D4(uint64_t a1)
{
  *a1 = off_101E6E230;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_10066A234(uint64_t a1)
{
  *a1 = off_101E6E230;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

void sub_10066A36C(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10066A398(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E6E230;
  v4 = *(result + 1);
  *(a2 + 16) = result[16];
  *(a2 + 8) = v4;
  if (result[47] < 0)
  {
    result = sub_100005F2C((a2 + 24), *(result + 3), *(result + 4));
  }

  else
  {
    v5 = *(result + 24);
    *(a2 + 40) = *(result + 5);
    *(a2 + 24) = v5;
  }

  if (v3[71] < 0)
  {
    return sub_100005F2C((a2 + 48), *(v3 + 6), *(v3 + 7));
  }

  v6 = *(v3 + 3);
  *(a2 + 64) = *(v3 + 8);
  *(a2 + 48) = v6;
  return result;
}

void sub_10066A438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_10066A45C(void *a1)
{
  sub_10032D400(a1 + 8);

  operator delete(a1);
}

void sub_10066A498(uint64_t a1, int *a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = *(a1 + 8);
  if (v4 == -534716415)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(a1 + 47) < 0)
      {
        sub_100005F2C(buf, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        *buf = *(a1 + 24);
        v12 = *(a1 + 40);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *__p = *(a1 + 48);
        v14 = *(a1 + 64);
      }

      C2KRadioModule::dumpCommCenterTraceOnly(v6, buf, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v4)
  {
    if (os_log_type_enabled(*(v6 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v8, buf);
      sub_101777508();
    }
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Reset success", buf, 2u);
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_10066A654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v28);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066A6CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10066A718(uint64_t a1)
{
  v4 = a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sending dump state notification", buf, 2u);
  }

  sub_1002C5218(a1 + 8);
  return sub_10014BF3C(&v4);
}

void sub_10066A794(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10014BF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10066A7A8(uint64_t a1)
{
  *a1 = off_101E6E2B0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10066A808(uint64_t a1)
{
  *a1 = off_101E6E2B0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_10066A938(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10066A964(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101E6E2B0;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    return sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  v6 = *(v3 + 40);
  *(a2 + 56) = *(v3 + 7);
  *(a2 + 40) = v6;
  return result;
}

void sub_10066A9F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10066AA1C(void *a1)
{
  sub_1000F02B4(a1 + 8);

  operator delete(a1);
}

void sub_10066AA58(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v11 = *a2;
  *__p = *(a2 + 2);
  v13 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  v10 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v6 = *(a1 + 8);
  if (v4 == -534716415)
  {
    memset(buf, 0, sizeof(buf));
    v17 = 0;
    *__dst = &v10;
    *&__dst[8] = abm::kKeyTimestampString;
    sub_100006354(__dst, object);
    xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      *__dst = *(a1 + 16);
      v19 = *(a1 + 32);
    }

    if (SHIBYTE(v17) < 0)
    {
      sub_100005F2C(object, *buf, *&buf[8]);
    }

    else
    {
      *object = *buf;
      v15 = v17;
    }

    C2KRadioModule::dumpCommCenterTraceOnly(v6, __dst, object);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(object[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*__dst);
    }
  }

  else
  {
    if (!v4)
    {
      v7 = *(v6 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DumpState command success", buf, 2u);
      }

      goto LABEL_26;
    }

    v8 = *(v6 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    sub_10064CB44(&v11, buf);
    if (v17 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    *__dst = 136315138;
    *&__dst[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N DumpState command failed. %s", __dst, 0xCu);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

LABEL_26:
  xpc_release(v10);
  v10 = 0;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10066ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066AD68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066ADB4(uint64_t a1)
{
  sub_10066C328((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_10066ADF4(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_10066AEEC(a1, v3);
}

void sub_10066AEBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066AEEC(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_10066AFE8(a1, a2);
}

void sub_10066AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_10066B080(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1003363C8(a1, a2, 1, 2);
}

void sub_10066B1A4(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E6E330;
  operator new();
}

void sub_10066B2B4(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_10066B31C(uint64_t a1)
{
  sub_10066B6C8(a1);

  operator delete();
}

uint64_t sub_10066B354(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10066B740(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10066B400(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066B430(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_10066B45C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10066B488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_10066B4E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10066B54C(&v2);
}

void sub_10066B5BC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10066B5E4(v1);
  __cxa_rethrow();
}

uint64_t sub_10066B5E4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10066C328((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10066B658(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10066C328((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10066B6C8(uint64_t a1)
{
  *a1 = off_101E6E330;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10066B740(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_10033666C(result + 4); ; i += 6)
    {
      result = sub_10033666C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_10066B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10066B848(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10066B8B4(&v2);
}

void sub_10066B924(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10066B968(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10066B9B0(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10066BA08(a1, a2);
}

void sub_10066B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_10066C328((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void sub_10066BA08(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BA74(a1 + 24, &object);
}

void sub_10066BA74(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BB88(v5, &object);
}

void sub_10066BAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void, uint64_t))
{
  sub_10066C328(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void (***sub_10066BB0C(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_10066C270(v4, result);
    sub_10066C270(v3, a2);
    sub_10066C270(a2, v4);
    return sub_10066C328(v4);
  }

  return result;
}

void sub_10066BB88(void *a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BBFC(a1, &object);
}

void sub_10066BBFC(void *a1, uint64_t a2)
{
  *a1 = 0;
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BC70(a1, &object);
}

void sub_10066BC70(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BD28(off_101E6E438, &object);
}

uint64_t sub_10066BD00(uint64_t result, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    return sub_10066BDA4(result, a2, a3);
  }

  *(a2 + 8) = 0;
  return result;
}

void sub_10066BD28(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066C1C8(a1, &object);
}

uint64_t sub_10066BDA4(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      dispatch_release(**a2);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      *(a2 + 8) = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == ("N3ctu12DispatchSlotIN5boost3_bi6bind_tIvNS1_4_mfi3mf2Iv14C2KRadioModulejjEENS2_5list3INS2_5valueIPS6_EENS1_3argILi1EEENSC_ILi2EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN5boost3_bi6bind_tIvNS1_4_mfi3mf2Iv14C2KRadioModulejjEENS2_5list3INS2_5valueIPS6_EENS1_3argILi1EEENSC_ILi2EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_10066BEBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v1 = off_101E6E478 + 1;
  operator new();
}

uint64_t sub_10066C044(uint64_t a1)
{
  sub_10033686C(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10066C328(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_10066C0E0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        *(a2 + 8) = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5boost3_bi6bind_tIvNS_4_mfi3mf2Iv14C2KRadioModulejjEENS0_5list3INS0_5valueIPS4_EENS_3argILi1EEENSA_ILi2EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tIvNS_4_mfi3mf2Iv14C2KRadioModulejjEENS0_5list3INS0_5valueIPS4_EENS_3argILi1EEENSA_ILi2EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 16);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10066C180(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10066C270(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_10066C304(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_10066C328(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_10066C378(uint64_t a1)
{
  v1 = **(a1 + 32);
  sub_10066C744(v1 + 1264);
  sub_10066C824(v1 + 1268);
  sub_10066C904(v1 + 1276);
  sub_10066C9E4(v1 + 1272);
  sub_10066CAC4((v1 + 288), v1 + 96);
  v2 = C2KRadioModule::handleBringBasebandOnline_sync;
  v3 = 0;
  sub_10066D3CC();
}

void sub_10066C710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C744(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/debug_baseband_mode");
  v4[0] = off_101E6E4C8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C824(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/debug_baseband_operating_mode");
  v4[0] = off_101E6E548;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C904(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/wrm-enable-telephony-override");
  v4[0] = off_101E6E5C8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C9E4(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/prefs-nb/wrm-enable-baseband-state-override");
  v4[0] = off_101E6E648;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066CAC4(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10066D138(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10066CB98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E4C8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CBC4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CC60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066CD1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E548;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CD48(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CDE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066CEA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E5C8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CECC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CF68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066D024(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E648;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066D050(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066D0EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10066D138(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E6E6C8;
  v5[1] = v3;
  v5[3] = v5;
  sub_100333DB0(v5, a1);
  sub_1003336BC(v5);
  return a1;
}

uint64_t sub_10066D23C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E6C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10066D270(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066D2BC(uint64_t a1, BOOL *a2)
{
  if (!a2[1] || (v2 = xpc_BOOL_create(*a2)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/brick_mode_enabled");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10066D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10066D4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066D558(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E748;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066D590(void *a1)
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

uint64_t sub_10066D5D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10066D698(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E7C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066D6C8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(**(*(a1 + 16) + 64) + 96);

  return v3();
}

uint64_t sub_10066D72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066D864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066D914(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E848;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066D94C(void *a1, xpc_object_t *a2)
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

uint64_t sub_10066DA24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10066DAE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10066DB14(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    LOBYTE(block[0]) = *v4;
    ctu::rest::detail::read_enum_string_value(block, a2, v7);
    *v4 = block[0];
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = *(a1 + 16);
  if (*(v10 + 1224) != v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10066DC74;
    block[3] = &unk_101E6E928;
    block[4] = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_10066DC28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066DD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066DE18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E968;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066DE50(void *a1, xpc_object_t *a2)
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

uint64_t sub_10066DF28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E110(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E9E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E148(void *a1, xpc_object_t *a2)
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

uint64_t sub_10066E240(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E428(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EA68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E460(uint64_t a1)
{
  v6 = **(a1 + 8);
  rest::read_rest_value();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_10066E4E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E6CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EAE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E70C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066E758(uint64_t *a1, xpc_object_t *a2)
{
  sub_1001AD3D0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E970(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066E9A8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_10066EACC(&v8, a2);
  v4 = *v3;
  sub_100EE1F10(v3, &v8);
  if (v4 != *v3)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = (a1[2] + (v6 >> 1));
    if (v6)
    {
      v5 = *(*v7 + v5);
    }

    v5(v7);
  }

  sub_100009970(&v8, v9[0]);
}

uint64_t sub_10066EA80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066EACC(uint64_t a1, xpc_object_t *a2)
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

  sub_100009970(a1, *(a1 + 8));
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

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        HIDWORD(v8) = 1;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10066ED84(object, &v6);
        xpc_release(v6);
        sub_10066EECC(a1, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_10066ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 64));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10066ED84(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v6 = v2;
  }

  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = &v6;
    v4 = "first";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v3 = &v6;
    v4 = "second";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v2 = v6;
  }

  xpc_release(v2);
}

void sub_10066EE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10066EECC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10066EF58();
  }

  return result;
}

void sub_10066EFF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10066F0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F1AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EBE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F238(void *a1)
{
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4);
}

void sub_10066F3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F450(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EC68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F4DC(uint64_t a1, const xpc::object *a2)
{
  read_rest_value(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F6F4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ECE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F734(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066F86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F91C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ED68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F95C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F9A8(uint64_t a1, const xpc::object *a2)
{
  read_rest_value(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066FB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066FBC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EDE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066FC00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066FD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066FDE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EE68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066FE28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066FE74(uint64_t *a1, xpc_object_t *a2)
{
  sub_100109E38(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10067008C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EEE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1006700C4(void *a1, xpc_object_t *a2)
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

uint64_t sub_1006701BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100670208(void *a1)
{
  *a1 = off_101E6EF68;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100670258(void *a1)
{
  *a1 = off_101E6EF68;
  v1 = a1[2];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100670338(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  result = *(a1 + 16);
  *a2 = off_101E6EF68;
  a2[1] = v4;
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void sub_100670390(void *a1)
{
  sub_1006706EC(a1 + 8);

  operator delete(a1);
}

void sub_1006703CC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    v8 = xdict;
  }

  else
  {
    v8 = xpc_null_create();
    xdict = v8;
  }

  v9 = *(a1 + 8);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  if (v4)
  {
    v10 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(v8, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v23 = v10;
      sub_100006354(&__p, object);
      v12 = xpc::dyn_cast_or_default(object, 0, v11);
      xpc_release(object[0]);
      v13 = *(v9 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(&__p, v12, v14);
        v15 = v24 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v16 = abm::kKeyNonce;
    if (xpc_dictionary_get_value(v8, abm::kKeyNonce))
    {
      v18[0] = &xdict;
      v18[1] = v16;
      sub_100006354(v18, &v19);
      __p = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      *v20 = *object;
      v21 = v26;
      object[1] = 0;
      v26 = 0;
      object[0] = 0;
      xpc_release(v19);
    }
  }

  sub_100670710((a1 + 16), v20);
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100670600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, xpc_object_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006706A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006706EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_100670710(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_100034C50(&__p, *a2, a2[1], a2[1] - *a2);
  (*(v2 + 16))(v2, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_100670778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100670794(void *a1)
{
  *a1 = off_101E6EFE8;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1006707E0(void *a1)
{
  *a1 = off_101E6EFE8;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1006708C0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E6EFE8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100670900(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100670910(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_100670950(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  v47 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v47 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v47 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v10) == &_xpc_type_dictionary)
  {
    xpc_retain(v10);
    goto LABEL_13;
  }

  v11 = xpc_null_create();
LABEL_12:
  v47 = v11;
LABEL_13:
  xpc_release(v10);
  if (v4)
  {
    v12 = *(v8 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Error is found in getting manifest", buf, 2u);
    }
  }

  else
  {
    v13 = abm::kKeyBasebandRootManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandRootManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v13;
      sub_100006354(buf, object);
      v15 = xpc::dyn_cast_or_default(object, 0, v14);
      xpc_release(object[0]);
      v45 = xpc_int64_create(v15);
      if (!v45)
      {
        v45 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "RootManifestStatus";
      sub_10000F688(buf, &v45, &v46);
      xpc_release(v46);
      v46 = 0;
      xpc_release(v45);
      v45 = 0;
    }

    v16 = abm::kKeyBasebandProvisioningManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProvisioningManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v16;
      sub_100006354(buf, object);
      v18 = xpc::dyn_cast_or_default(object, 0, v17);
      xpc_release(object[0]);
      v43 = xpc_int64_create(v18);
      if (!v43)
      {
        v43 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v49 = 0;
      ctu::cf::assign();
      *object = *buf;
      v40 = v49;
      v19 = *buf;
      if (v49 >= 0)
      {
        v19 = object;
      }

      p_xdict = &v47;
      v42 = v19;
      sub_10000F688(&p_xdict, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v43);
      v43 = 0;
    }

    v20 = abm::kKeyBasebandActivationManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandActivationManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v20;
      sub_100006354(buf, object);
      v22 = xpc::dyn_cast_or_default(object, 0, v21);
      xpc_release(object[0]);
      v37 = xpc_int64_create(v22);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "AKeyStatus";
      sub_10000F688(buf, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
    }

    v23 = abm::kKeyBasebandRootManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandRootManifest))
    {
      p_xdict = &xdict;
      v42 = v23;
      sub_100006354(&p_xdict, &v36);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v24 = object[0];
      v25 = object[1];
      object[0] = 0;
      object[1] = 0;
      v40 = 0;
      xpc_release(v36);
      v35 = xpc_data_create(v24, v25 - v24);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "RootManifestData";
      sub_10000F688(buf, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
    }

    else
    {
      v24 = 0;
    }

    v26 = abm::kKeyBasebandProvisioningManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProvisioningManifest))
    {
      p_xdict = &xdict;
      v42 = v26;
      sub_100006354(&p_xdict, &v34);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v24)
      {
        operator delete(v24);
      }

      v24 = object[0];
      v27 = object[1];
      object[1] = 0;
      v40 = 0;
      object[0] = 0;
      xpc_release(v34);
      v33 = xpc_data_create(v24, v27 - v24);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "ProvisioningManifestData";
      sub_10000F688(buf, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
    }

    v28 = abm::kKeyBasebandActivationManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandActivationManifest))
    {
      p_xdict = &xdict;
      v42 = v28;
      sub_100006354(&p_xdict, &v32);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v24)
      {
        operator delete(v24);
      }

      v24 = object[0];
      v29 = object[1];
      object[1] = 0;
      v40 = 0;
      object[0] = 0;
      xpc_release(v32);
      p_xdict = xpc_data_create(v24, v29 - v24);
      if (!p_xdict)
      {
        p_xdict = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "ActivationManifestData";
      sub_10000F688(buf, &p_xdict, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(p_xdict);
      p_xdict = 0;
    }

    v31 = v47;
    if (v47)
    {
      xpc_retain(v47);
    }

    else
    {
      v31 = xpc_null_create();
    }

    *buf = *(a1 + 16);
    *&buf[8] = "kRadioModuleFirmwareManifestData";
    sub_100DAE90C(buf, &v31, &v32);
    xpc_release(v32);
    v32 = 0;
    xpc_release(v31);
    v31 = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  xpc_release(v47);
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100670FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24)
{
  v29 = *(v27 - 96);
  if (v29)
  {
    *(v27 - 88) = v29;
    operator delete(v29);
  }

  xpc_release(object);
  if (v25)
  {
    operator delete(v25);
  }

  xpc_release(*(v27 - 104));
  xpc_release(a10);
  if (v26 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006711F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10032EAB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006712F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F068;
  a2[1] = v2;
  return result;
}

void sub_100671320(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v12 = *a2;
  *v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = *(a1 + 8);
  ATCSMutex::lock((v6 + 56));
  if (!v4 && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v9 = *(v6 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, &object);
      v10 = v18 >= 0 ? __p : __p[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I BasebandManager info:\n%{public}s", &buf, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15[0] = &object;
    v15[1] = abm::kKeyBasebandVersion;
    sub_100006354(v15, &v16);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    C2KRadioModule::setBasebandVersion_nl(v6, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    xpc_release(v16);
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v12, __p);
      v8 = v18 >= 0 ? __p : __p[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Failed to retrieve info from BasebandManager: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ATCSMutex::unlock((v6 + 56));
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_100671588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  ATCSMutex::unlock((v26 + 56));
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067162C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006716E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F0E8;
  a2[1] = v2;
  return result;
}

void sub_100671714(uint64_t a1, int *a2, xpc_object_t *a3)
{
  v4 = *a2;
  v12 = *a2;
  *v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
  }

  v6 = *(a1 + 8);
  ATCSMutex::lock((v6 + 56));
  if (!v4 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    __p[0] = &object;
    __p[1] = abm::kKeyBasebandOperatingMode;
    sub_100006354(__p, buf);
    v10 = xpc::dyn_cast_or_default(buf, 8, v9);
    xpc_release(*buf);
    C2KRadioModule::handleBasebandModeChanged_nl(v6, v10);
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v12, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Failed to get current operating mode: %{public}s", buf, 0xCu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ATCSMutex::unlock((v6 + 56));
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1006718E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  ATCSMutex::unlock((v20 + 56));
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671964(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006719B0(void *a1)
{
  *a1 = off_101E6F168;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100671A08(void *a1)
{
  *a1 = off_101E6F168;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_100671AF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F168;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100671B68(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100671BA4(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v23 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(&__p, v11, v13);
        v14 = v24 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandPKHash;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandPKHash))
    {
      v20[0] = &xdict;
      v20[1] = v15;
      sub_100006354(v20, &v21);
      __p = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v16 = *(v8 + 848);
      if (v16)
      {
        *(v8 + 856) = v16;
        operator delete(v16);
        *(v8 + 848) = 0;
        *(v8 + 856) = 0;
        *(v8 + 864) = 0;
      }

      *(v8 + 848) = *object;
      *(v8 + 864) = v26;
      object[1] = 0;
      v26 = 0;
      object[0] = 0;
      xpc_release(v21);
    }

    v17 = abm::kKeyBasebandCertID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandCertID))
    {
      __p = &xdict;
      v23 = v17;
      sub_100006354(&__p, object);
      *(v8 + 844) = xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100671E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671EF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100671F3C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void *sub_100671F8C(void *a1)
{
  *a1 = off_101E6F1E8;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100671FE4(void *a1)
{
  *a1 = off_101E6F1E8;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1006720D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F1E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100672144(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100672180(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v33 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(&__p, v11, v13);
        v14 = v34 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandChipID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandChipID))
    {
      __p = &xdict;
      v33 = v15;
      sub_100006354(&__p, object);
      *(v8 + 840) = xpc::dyn_cast_or_default(object, 0, v16);
      xpc_release(object[0]);
    }

    v17 = abm::kKeyBasebandSerialNumber;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSerialNumber))
    {
      v30[0] = &xdict;
      v30[1] = v17;
      sub_100006354(v30, &v31);
      __p = 0;
      v33 = 0;
      v34 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v18 = *(v8 + 816);
      if (v18)
      {
        *(v8 + 824) = v18;
        operator delete(v18);
        *(v8 + 816) = 0;
        *(v8 + 824) = 0;
        *(v8 + 832) = 0;
      }

      *(v8 + 816) = *object;
      *(v8 + 832) = v36;
      object[1] = 0;
      v36 = 0;
      object[0] = 0;
      xpc_release(v31);
    }

    v19 = abm::kKeyBasebandBoardId;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandBoardId))
    {
      __p = &xdict;
      v33 = v19;
      sub_100006354(&__p, object);
      *(v8 + 896) = xpc::dyn_cast_or_default(object, 0, v20);
      xpc_release(object[0]);
    }

    v21 = abm::kKeyBasebandSecurityDomain;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityDomain))
    {
      __p = &xdict;
      v33 = v21;
      sub_100006354(&__p, object);
      *(v8 + 897) = xpc::dyn_cast_or_default(object, 0, v22);
      xpc_release(object[0]);
    }

    v23 = abm::kKeyBasebandProductionMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProductionMode))
    {
      __p = &xdict;
      v33 = v23;
      sub_100006354(&__p, object);
      *(v8 + 900) = xpc::dyn_cast_or_default(object, 0, v24);
      xpc_release(object[0]);
    }

    v25 = abm::kKeyBasebandSecurityMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityMode))
    {
      __p = &xdict;
      v33 = v25;
      sub_100006354(&__p, object);
      *(v8 + 904) = xpc::dyn_cast_or_default(object, 0, v26);
      xpc_release(object[0]);
    }

    v27 = abm::kKeyBasebandUidMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandUidMode))
    {
      __p = &xdict;
      v33 = v27;
      sub_100006354(&__p, object);
      *(v8 + 905) = xpc::dyn_cast_or_default(object, 0, v28);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10067256C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006726D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100672720(void *a1)
{
  *a1 = off_101E6F268;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100672778(void *a1)
{
  *a1 = off_101E6F268;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_100672868(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F268;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_1006728D8(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100672914(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v35 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(&__p, v11, v13);
        v14 = v36 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandSerialNumber;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSerialNumber))
    {
      p_xdict = &xdict;
      v32 = v15;
      sub_100006354(&p_xdict, &v33);
      __p = 0;
      v35 = 0;
      v36 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v16 = *(v8 + 816);
      if (v16)
      {
        *(v8 + 824) = v16;
        operator delete(v16);
        *(v8 + 816) = 0;
        *(v8 + 824) = 0;
        *(v8 + 832) = 0;
      }

      *(v8 + 816) = *object;
      *(v8 + 832) = v38;
      object[1] = 0;
      v38 = 0;
      object[0] = 0;
      xpc_release(v33);
    }

    v17 = abm::kKeyBasebandChipID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandChipID))
    {
      __p = &xdict;
      v35 = v17;
      sub_100006354(&__p, object);
      *(v8 + 840) = xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
    }

    v19 = abm::kKeyBasebandCertID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandCertID))
    {
      __p = &xdict;
      v35 = v19;
      sub_100006354(&__p, object);
      *(v8 + 844) = xpc::dyn_cast_or_default(object, 0, v20);
      xpc_release(object[0]);
    }

    v21 = abm::kKeyBasebandScrtPubK;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandScrtPubK))
    {
      p_xdict = &xdict;
      v32 = v21;
      sub_100006354(&p_xdict, &v33);
      __p = 0;
      v35 = 0;
      v36 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v22 = (v8 + 872);
      v23 = *(v8 + 872);
      if (v23)
      {
        *(v8 + 880) = v23;
        operator delete(v23);
        *v22 = 0;
        *(v8 + 880) = 0;
        *(v8 + 888) = 0;
      }

      *v22 = *object;
      *(v8 + 888) = v38;
      object[1] = 0;
      v38 = 0;
      object[0] = 0;
      xpc_release(v33);
    }

    v24 = abm::kKeyBasebandSecurityDomain;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityDomain))
    {
      __p = &xdict;
      v35 = v24;
      sub_100006354(&__p, object);
      *(v8 + 897) = xpc::dyn_cast_or_default(object, 0, v25);
      xpc_release(object[0]);
    }

    v26 = abm::kKeyBasebandProductionMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProductionMode))
    {
      __p = &xdict;
      v35 = v26;
      sub_100006354(&__p, object);
      *(v8 + 900) = xpc::dyn_cast_or_default(object, 0, v27);
      xpc_release(object[0]);
    }

    v28 = abm::kKeyBasebandSecurityMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityMode))
    {
      __p = &xdict;
      v35 = v28;
      sub_100006354(&__p, object);
      *(v8 + 904) = xpc::dyn_cast_or_default(object, 0, v29);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100672D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100672EC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100672F14(void *a1)
{
  *a1 = off_101E6F2E8;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100672F6C(void *a1)
{
  *a1 = off_101E6F2E8;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_10067305C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F2E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_1006730CC(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100673108(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = *(v8 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Error is found in getting manifest status", buf, 2u);
    }
  }

  else
  {
    v10 = abm::kKeyBasebandSKeyStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSKeyStatus))
    {
      *buf = &xdict;
      v23 = v10;
      sub_100006354(buf, object);
      *(v8 + 960) = xpc::dyn_cast_or_default(object, 0, v11);
      xpc_release(object[0]);
    }

    v12 = abm::kKeyBasebandAKeyStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandAKeyStatus))
    {
      *buf = &xdict;
      v23 = v12;
      sub_100006354(buf, object);
      *(v8 + 992) = xpc::dyn_cast_or_default(object, 0, v13);
      xpc_release(object[0]);
    }

    v14 = abm::kKeyBasebandSKeyHash;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSKeyHash))
    {
      v18[0] = &xdict;
      v18[1] = v14;
      sub_100006354(v18, &v19);
      *buf = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        v23 = *buf;
        operator delete(*buf);
      }

      v15 = (v8 + 968);
      v16 = *(v8 + 968);
      if (v16)
      {
        *(v8 + 976) = v16;
        operator delete(v16);
        *v15 = 0;
        *(v8 + 976) = 0;
        *(v8 + 984) = 0;
      }

      *v15 = *object;
      *(v8 + 984) = v21;
      object[1] = 0;
      v21 = 0;
      object[0] = 0;
      xpc_release(v19);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10067332C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(object);
  ATCSMutex::unlock((v19 + 56));
  xpc_release(a9);
  if (v20 < 0)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006733DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100673428(std::mutex *this, uint64_t *a2)
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
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_100673504(std::mutex *this, void *a2)
{
  v4 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v5 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  if (*a2)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    v13 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v13);
    v10 = v9;
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v13 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v10 = 1;
  }

  std::mutex::unlock(this);
  return v10 & 1;
}

__n128 sub_100673660(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_100673698(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (v3)
    {
      v6 = "is";
    }

    LODWORD(v8) = 136315138;
    *(&v8 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Airplane mode assertion %s granted for bread pairing status change", &v8, 0xCu);
  }

  if (v3)
  {
    v7 = *(a1 + 16);
    *&v8 = off_101E6F3D8;
    *(&v8 + 1) = v4;
    v9 = &v8;
    C2KRadioModule::updateBreadPairedStatus_sync(v4, v7, &v8);
  }
}

uint64_t sub_1006737B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067386C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F3D8;
  a2[1] = v2;
  return result;
}

void sub_100673898(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1280) >= 2u && *(v1 + 680))
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Baseband is in airplane mode; release airplane mode assertion acquired for bread pairing status change", v4, 2u);
    }

    v3 = *(v1 + 688);
    *(v1 + 680) = 0;
    *(v1 + 688) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10067392C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006739E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F468;
  a2[1] = v2;
  return result;
}

void sub_100673A14(uint64_t a1, int *a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v6 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v8, __p);
      v7 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update data throttling for operator bundle change. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100673B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100673B78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100673BC4(void *a1)
{
  *a1 = off_101E6F4E8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100673C28(void *a1)
{
  *a1 = off_101E6F4E8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

void sub_100673D44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F4E8;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100673DD4(uint64_t a1)
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

  v4 = *(a1 + 24);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_100673E30(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(__p);
}

void sub_100673E88(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 || (v8 = *(a1 + 16)) == 0)
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177755C();
    }
  }

  else
  {
    *v8 = 1;
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100673F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100673F7C(void *a1)
{
  *a1 = off_101E6F568;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

void sub_100673FEC(void *a1)
{
  *a1 = off_101E6F568;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete();
}

void sub_100674124(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E6F568;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v6 = a2[2];
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = a1[4];
  a2[3] = a1[3];
  a2[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[6];
  a2[5] = a1[5];
  a2[6] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1006741B0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void sub_100674218(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = __p[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(__p);
}

void sub_10067427C(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  v10 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (v4 || !*(a1 + 40))
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101777160();
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8 && xpc_get_type(*v8) == &_xpc_type_dictionary)
    {
      v11[0] = &v10;
      v11[1] = abm::kKeyTracePropertyValue;
      sub_100006354(v11, &v12);
      __p = 0;
      v18 = 0;
      v19 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }

      if (v14 >= 0)
      {
        v9 = &v13;
      }

      else
      {
        v9 = v13;
      }

      v15 = xpc_string_create(v9);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      __p = *(a1 + 24);
      v18 = "kRadioTracePropertyValue";
      sub_10000F688(&__p, &v15, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v15);
      v15 = 0;
      if (v14 < 0)
      {
        operator delete(v13);
      }

      xpc_release(v12);
    }

    **(a1 + 40) = 1;
  }

  xpc_release(v10);
  v10 = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100674450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a9);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006744A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100674560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F5E8;
  a2[1] = v2;
  return result;
}

void sub_10067458C(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777590();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1006746B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100674700(uint64_t *a1)
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
        sub_10000FF50((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *sub_100674774(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_100674808();
  }

  return result;
}

uint64_t *sub_100674878(uint64_t a1)
{
  v9 = a1;
  v2 = *a1;
  v3 = *(*a1 + 1280);
  if (v3 > 6 || ((0x67u >> v3) & 1) == 0)
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Waiting to report radio boot health", buf, 2u);
    }

    sub_100674A04();
  }

  v4 = 0x5Fu >> v3;
  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (v4)
    {
      v6 = "is";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
  }

  sub_10000FFD0(a1 + 8, v4 & 1);
  return sub_100370DE4(&v9);
}

void sub_1006749F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100370DE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100674A74(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100674B0C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1006647E4(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100674B5C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100674BDC(uint64_t a1)
{
  v10 = a1;
  v2 = *a1;
  v3 = *(*a1 + 1280);
  if (v3 > 6 || ((0x67u >> v3) & 1) == 0)
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Waiting to report radio boot health", &buf, 2u);
    }

    sub_100674808();
  }

  v4 = 0x20u >> v3;
  v5 = 0x5Fu >> v3;
  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "is not";
    if (v5)
    {
      v7 = "is";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", &buf, 0xCu);
  }

  if (v4)
  {
    *&buf = &buf;
    *(&buf + 1) = &buf;
    v12 = 0;
    sub_100674808();
  }

  sub_1001452E4(a1 + 8, v5 & 1, 0);
  return sub_100674B0C(&v10);
}

void sub_100674DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100664770(&a10);
  sub_100664770(&a13);
  sub_100674B0C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100674E08(void *a1)
{
  *a1 = off_101E6F668;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1 + 1);
  return a1;
}

void sub_100674E5C(void *a1)
{
  *a1 = off_101E6F668;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1 + 1);

  operator delete();
}

void *sub_100674F60(uint64_t a1, void *a2)
{
  *a2 = off_101E6F668;
  result = sub_100674774(a2 + 1, a1 + 8);
  v5 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100674FCC(uint64_t *a1)
{
  sub_100675240(a1 + 1);

  operator delete(a1);
}

void sub_100675008(void *a1, int *a2, xpc_object_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  v8 = a1 + 1;
  v9 = a1[5];
  if (!v9)
  {
    v10 = 0;
LABEL_19:
    for (i = a1[2]; i != v8; i = i[1])
    {
      sub_1001452E4((i + 2), 0, 0);
    }

LABEL_13:
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10 || !a1[4])
  {
    goto LABEL_19;
  }

  if (!v4 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v16[0] = &object;
    v16[1] = abm::kKeyHealthEventCauseCode;
    sub_100006354(v16, &v17);
    v11 = xpc::dyn_cast_or_default(&v17, 0, v14);
    xpc_release(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = a1[2];
  if (v12 != v8)
  {
    do
    {
      sub_1001452E4((v12 + 2), 0, v11);
      v12 = v12[1];
    }

    while (v12 != v8);
    goto LABEL_13;
  }

LABEL_14:
  sub_100004A34(v10);
LABEL_15:
  xpc_release(object);
  object = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100675194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v13);
  xpc_release(a9);
  if (v14 < 0)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006751F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100675240(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1);
}

uint64_t sub_100675280(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100675318(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100664864(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100675368(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006753E8(char **a1)
{
  v9 = a1;
  v2 = *a1;
  v3 = *(*a1 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2 + 1128;
    if (v2[1151] < 0)
    {
      v4 = *v4;
    }

    v5 = v2 + 1104;
    if (v2[1127] < 0)
    {
      v5 = *v5;
    }

    v6 = v2 + 1152;
    if (v2[1175] < 0)
    {
      v6 = *v6;
    }

    *buf = 136446722;
    v11 = v4;
    v12 = 2082;
    v13 = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Report baseband config update info with type:%{public}s time:%{public}s, details:%s", buf, 0x20u);
  }

  v7 = a1[4];
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, v2 + 1104);
  return sub_100675318(&v9);
}

void sub_10067551C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100675318(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006755A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F6E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006755CC(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*(*(result + 8) + 776))
    {
      C2KRadioModule::handleGetBasebandFirmwarePreflightInfo_sync(*(result + 8));
    }

    v3 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(v2);
  }

  return result;
}

void sub_100675654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100675668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006756B4(uint64_t a1, uint64_t a2)
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

void *sub_10067574C(void *a1)
{
  *a1 = off_101E6F768;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1006648E4((a1 + 1));
  return a1;
}

void sub_1006757A0(void *a1)
{
  *a1 = off_101E6F768;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1006648E4((a1 + 1));

  operator delete();
}

uint64_t sub_1006758AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F768;
  result = sub_1006756B4(a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  v5 = *(a1 + 56);
  *(a2 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100675920(void *a1)
{
  sub_100661BE0(a1 + 8);

  operator delete(a1);
}

void sub_10067595C(void *a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = a1[7];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v9 = a1[5];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10 || !a1[6])
  {
LABEL_20:
    *&v26 = 0;
    DWORD2(v26) = 0;
    v25[0] = 0;
    v25[1] = 0;
    *(&v25[1] + 5) = 0;
    v25[3] = 0;
    v25[4] = 0;
    *(&v25[4] + 5) = 0;
    *v27 = 0u;
    *v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    sub_1001453F8((a1 + 1), 0);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v4 && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *buf = &object;
    v34 = abm::kKeyBasebandRFFEData;
    sub_100006354(buf, &v21);
    memset(v25, 0, 24);
    xpc::dyn_cast_or_default();
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    xpc_release(v21);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    *v28 = 0u;
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 1)
    {
      if (v23 != v22 && v23 - v22 == 50)
      {
        v16 = v27;
        v13.i32[0] = *v22;
        *v25 = vmovl_u16(*&vmovl_u8(v13));
        LODWORD(v25[2]) = *(v22 + 4);
        BYTE4(v25[2]) = *(v22 + 5);
        *&v25[3] = vmovl_u16(*(v22 + 6));
        LODWORD(v25[5]) = 0;
        BYTE4(v25[5]) = *(v22 + 14);
        LODWORD(v26) = *(v22 + 15);
        DWORD1(v26) = *(v22 + 16);
        DWORD2(v26) = *(v22 + 17);
        v15 = v22 + 18;
        v17 = v22 + 50;
        v18 = 32;
        goto LABEL_34;
      }

      if (os_log_type_enabled(*(v9 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017775E4();
      }
    }

    else if (RadioVendor == 3)
    {
      v14 = v22;
      if (v23 - v22 == 37)
      {
        LODWORD(v25[0]) = 0;
        *(v25 + 4) = vmovl_u16(*v22);
        BYTE4(v25[2]) = *(v22 + 19);
        LODWORD(v25[3]) = *(v22 + 2);
        HIDWORD(v25[3]) = *(v22 + 16);
        LODWORD(v25[4]) = *(v22 + 3);
        HIDWORD(v25[4]) = *(v22 + 18);
        LODWORD(v25[5]) = *(v22 + 17);
        BYTE4(v25[5]) = *(v22 + 20);
        LODWORD(v26) = *(v22 + 22);
        DWORD1(v26) = *(v22 + 21);
        DWORD2(v26) = *(v22 + 23);
        sub_1001122C4(&v28[1], v22 + 24, v22 + 32, 8uLL);
        v15 = v14 + 36;
        sub_1001122C4(&v30, v14 + 32, v14 + 36, 4uLL);
        v16 = &v31 + 1;
        v17 = v14 + 37;
        v18 = 1;
LABEL_34:
        sub_1001122C4(v16, v15, v17, v18);
        v19 = *(v9 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110400;
          *&buf[4] = HIDWORD(v25[0]);
          LOWORD(v34) = 1024;
          *(&v34 + 2) = BYTE4(v25[2]);
          HIWORD(v34) = 1024;
          v35 = BYTE4(v25[5]);
          v36 = 1024;
          v37 = v26;
          v38 = 1024;
          v39 = DWORD1(v26);
          v40 = 1024;
          v41 = DWORD2(v26);
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: prd_id=%d, rfc_init_pass=%d, rffe_scan_pass=%d num_expected_devices=%d, num_detected_devices=%d, num_missing_devices=%d", buf, 0x26u);
        }

        sub_1001453F8((a1 + 1), 1);
        if (*(&v31 + 1))
        {
          *&v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (v30)
        {
          *(&v30 + 1) = v30;
          operator delete(v30);
        }

        if (v28[1])
        {
          *&v29 = v28[1];
          operator delete(v28[1]);
        }

        if (v27[0])
        {
          v27[1] = v27[0];
          operator delete(v27[0]);
        }

        v11 = v22;
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = v22;
        goto LABEL_18;
      }

      if (os_log_type_enabled(*(v9 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101777658();
      }
    }

    if (*(&v31 + 1))
    {
      *&v32 = *(&v31 + 1);
      operator delete(*(&v31 + 1));
    }

    if (v30)
    {
      *(&v30 + 1) = v30;
      operator delete(v30);
    }

    if (v28[1])
    {
      *&v29 = v28[1];
      operator delete(v28[1]);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  *&v26 = 0;
  DWORD2(v26) = 0;
  v25[0] = 0;
  v25[1] = 0;
  *(&v25[1] + 5) = 0;
  v25[3] = 0;
  v25[4] = 0;
  *(&v25[4] + 5) = 0;
  *v27 = 0u;
  *v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_1001453F8((a1 + 1), 0);
  if (*(&v31 + 1))
  {
    *&v32 = *(&v31 + 1);
    operator delete(*(&v31 + 1));
  }

  if (v30)
  {
    *(&v30 + 1) = v30;
    operator delete(v30);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v11 = v27[0];
  if (!v27[0])
  {
    goto LABEL_21;
  }

  v27[1] = v27[0];
LABEL_18:
  operator delete(v11);
LABEL_21:
  sub_100004A34(v10);
LABEL_22:
  xpc_release(object);
  object = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100675F78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100675FC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006760B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F7E8;
  a2[1] = v2;
  return result;
}

void sub_1006760E0(uint64_t a1, int *a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v6 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v8, __p);
      v7 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update Bread Property. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100676204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100676244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006762AC(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *a3;
  if (v5 != 5 && v5 != 255 && a3[1])
  {
    cf = 0;
    ServiceMap = Registry::getServiceMap(*(v4 + 784));
    v8 = ServiceMap;
    v10 = v9;
    if (v9 < 0)
    {
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
    v14 = sub_100009510(&v8[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v8);
    v15 = 0;
    v17 = 1;
LABEL_15:
    (*(*v16 + 96))(&cf, v16, a2, 1, @"SupportsCellularLoggingAccess", kCFBooleanFalse, 0);
    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = cf;
    buf[0] = 0;
    if (cf)
    {
      v20 = CFGetTypeID(cf);
      if (v20 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v19, v21);
      }
    }

    v22 = buf[0];
    *a1[1] &= buf[0];
    v41[0] = 0;
    v41[1] = 0;
    v42 = 0;
    v23 = Registry::getServiceMap(*(v4 + 784));
    v24 = v23;
    if (v9 < 0)
    {
      v25 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v9 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v23);
    *buf = v9;
    v28 = sub_100009510(&v24[1].__m_.__sig, buf);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v24);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_28:
        (*(*v30 + 96))(__p, v30, a2, 1, @"CarrierName", 0, 0);
        memset(buf, 0, sizeof(buf));
        if (ctu::cf::assign())
        {
          *v41 = *buf;
          v42 = *&buf[16];
        }

        else
        {
          sub_10000501C(v41, "");
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_10000A1EC(__p);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        v32 = subscriber::simSlotAsInstance();
        if (v32 >= 2)
        {
          sub_1000A58E4("array::at");
        }

        v33 = *(&unk_101FBA918 + v32 + 1);
        sub_10000501C(buf, abm::kTraceBaseband);
        sub_10000501C(__p, v33);
        (*(*v4 + 240))(v4, buf, __p, v41);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v34 = *(v4 + 40);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = subscriber::asString();
          v36 = CSIBOOLAsString(v22 & 1);
          v37 = *a1[1];
          v38 = v41;
          if (v42 < 0)
          {
            v38 = v41[0];
          }

          *buf = 136315906;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 1024;
          v45 = v37;
          v46 = 2080;
          v47 = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Slot: %s, Carrier Bundle for Logging: %s, allowed: %d, Carrier Name: %s", buf, 0x26u);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
        }

        sub_10000A1EC(&cf);
        return;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v24);
    v29 = 0;
    v31 = 1;
    goto LABEL_28;
  }

  v18 = *(v4 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle Error or is not ready. Force the present key as false", buf, 2u);
  }

  *a1[1] = 0;
}

void sub_100676758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100676890(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F888;
  a2[1] = v2;
  return result;
}

void sub_1006768BC(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_1017776CC();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1006769E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676AA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F908;
  a2[1] = v2;
  return result;
}

void sub_100676ACC(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777720();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100676BF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676CB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F988;
  a2[1] = v2;
  return result;
}

void sub_100676CDC(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777774();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100676E04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676EC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FA08;
  a2[1] = v2;
  return result;
}

void sub_100676EEC(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_1017777C8();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006770D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FA88;
  a2[1] = v2;
  return result;
}

void sub_1006770FC(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_10177781C();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006772E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FB08;
  a2[1] = v2;
  return result;
}

void sub_10067730C(uint64_t a1, int *a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 2);
  v8 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777870();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677434(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100677480(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_100080280(*(a1 + 8), (a1 + 16));
  }

  return a1;
}

__n128 sub_100677534(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6FB88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100677564(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  v8 = *(a1 + 8);
  v9 = *(v8 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v10)
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Setting operating mode = %s, failed", &v11, 0xCu);
    }

    ATCSMutex::lock((v8 + 56));
    *&v11 = 1;
    *(&v11 + 1) = v8 + 208;
    v12 = *(v8 + 240);
    LODWORD(v12) = *(a1 + 20);
    (*(**(v8 + 64) + 72))(*(v8 + 64));
    sub_100677480(&v11);
    ATCSMutex::unlock((v8 + 56));
  }

  else if (v10)
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Setting operating mode = %s, succeeded", &v11, 0xCu);
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}