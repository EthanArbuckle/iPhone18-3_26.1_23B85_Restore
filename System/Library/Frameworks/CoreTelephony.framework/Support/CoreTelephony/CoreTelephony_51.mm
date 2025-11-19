void sub_10033A504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, xpc_object_t object, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10033A7F0()
{
  v0 = 0;
  v1 = 0;
  sub_100338F40();
}

void sub_10033C5F4(_Unwind_Exception *a1)
{
  v3 = *(v1 - 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10033CB2C(uint64_t a1, int a2)
{
  v2 = *(a1 + 145);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setAssertionGone";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v6, 0x20u);
    }

    *(a1 + 145) = v3;
  }
}

void sub_10033CC14(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unsigned int a5, BOOL a6, unsigned int a7, BOOL a8, BOOL a9, uint64_t a10, uint64_t a11, int64_t value, uint64_t a13, int64_t a14)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v21 = ServiceMap;
  if ((v22 & 0x8000000000000000) != 0)
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

  std::mutex::lock(ServiceMap);
  v75 = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &v75);
  if (!v26)
  {
    v36 = 0;
    goto LABEL_10;
  }

  v27 = a4;
  v28 = a3;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v34 = v26[3];
  v33 = v26[4];
  if (!v33)
  {
    a8 = v32;
    a7 = v31;
    v36 = v26[3];
    a6 = v30;
    a5 = v29;
    a3 = v28;
    a4 = v27;
LABEL_10:
    std::mutex::unlock(v21);
    v35 = 0;
    v37 = 1;
    if (!v36)
    {
      goto LABEL_62;
    }

    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v21);
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  v35 = v33;
  sub_100004A34(v33);
  a8 = v32;
  a7 = v31;
  v36 = v34;
  a6 = v30;
  a5 = v29;
  a3 = v28;
  a4 = v27;
  v37 = 0;
  if (!v36)
  {
    goto LABEL_62;
  }

LABEL_11:
  v79[0] = 0;
  v38 = xpc_dictionary_create(0, 0, 0);
  v39 = v38;
  if (v38)
  {
    v79[0] = v38;
  }

  else
  {
    v39 = xpc_null_create();
    v79[0] = v39;
    if (!v39)
    {
      v40 = xpc_null_create();
      v39 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v39) != &_xpc_type_dictionary)
  {
    v40 = xpc_null_create();
LABEL_18:
    v79[0] = v40;
    goto LABEL_19;
  }

  xpc_retain(v39);
LABEL_19:
  xpc_release(v39);
  v41 = subscriber::simSlotAsInstance();
  v77 = xpc_int64_create(v41);
  if (!v77)
  {
    v77 = xpc_null_create();
  }

  v75 = v79;
  v76 = "subs_id";
  sub_10000F688(&v75, &v77, &v78);
  xpc_release(v78);
  v78 = 0;
  xpc_release(v77);
  v77 = 0;
  v73 = xpc_int64_create(a3);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  v75 = v79;
  v76 = "contextId";
  sub_10000F688(&v75, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  if (*(a4 + 23) >= 0)
  {
    v42 = a4;
  }

  else
  {
    v42 = *a4;
  }

  v71 = xpc_string_create(v42);
  if (!v71)
  {
    v71 = xpc_null_create();
  }

  v75 = v79;
  v76 = "reason";
  sub_10000F688(&v75, &v71, &v72);
  xpc_release(v72);
  v72 = 0;
  xpc_release(v71);
  v71 = 0;
  v69 = xpc_int64_create(a5);
  if (!v69)
  {
    v69 = xpc_null_create();
  }

  v75 = v79;
  v76 = "toContextType";
  sub_10000F688(&v75, &v69, &v70);
  xpc_release(v70);
  v70 = 0;
  xpc_release(v69);
  v69 = 0;
  v67 = xpc_BOOL_create(a6);
  if (!v67)
  {
    v67 = xpc_null_create();
  }

  v75 = v79;
  v76 = "success";
  sub_10000F688(&v75, &v67, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v67);
  v67 = 0;
  v65 = xpc_int64_create(a7);
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  v75 = v79;
  v76 = "rat";
  sub_10000F688(&v75, &v65, &v66);
  xpc_release(v66);
  v66 = 0;
  xpc_release(v65);
  v65 = 0;
  v63 = xpc_BOOL_create(a8);
  if (!v63)
  {
    v63 = xpc_null_create();
  }

  v75 = v79;
  v76 = "inCall";
  sub_10000F688(&v75, &v63, &v64);
  xpc_release(v64);
  v64 = 0;
  xpc_release(v63);
  v63 = 0;
  if (*(a10 + 23) >= 0)
  {
    v43 = a10;
  }

  else
  {
    v43 = *a10;
  }

  v61 = xpc_string_create(v43);
  if (!v61)
  {
    v61 = xpc_null_create();
  }

  v75 = v79;
  v76 = "wdsReasonType";
  sub_10000F688(&v75, &v61, &v62);
  xpc_release(v62);
  v62 = 0;
  xpc_release(v61);
  v61 = 0;
  if (*(a11 + 23) >= 0)
  {
    v44 = a11;
  }

  else
  {
    v44 = *a11;
  }

  v59 = xpc_string_create(v44);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  v75 = v79;
  v76 = "wdsReason";
  sub_10000F688(&v75, &v59, &v60);
  xpc_release(v60);
  v60 = 0;
  xpc_release(v59);
  v59 = 0;
  v57 = xpc_int64_create(value);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  v75 = v79;
  v76 = "iWLanError";
  sub_10000F688(&v75, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  xpc_release(v57);
  v57 = 0;
  v55 = xpc_int64_create(HIDWORD(value));
  if (!v55)
  {
    v55 = xpc_null_create();
  }

  v75 = v79;
  v76 = "typeMask";
  sub_10000F688(&v75, &v55, &v56);
  xpc_release(v56);
  v56 = 0;
  xpc_release(v55);
  v55 = 0;
  v45 = sub_1007A3C94();
  v53 = xpc_uint64_create(v45 - a13);
  if (!v53)
  {
    v53 = xpc_null_create();
  }

  v75 = v79;
  v76 = "activatingTime";
  sub_10000F688(&v75, &v53, &v54);
  xpc_release(v54);
  v54 = 0;
  xpc_release(v53);
  v53 = 0;
  v51 = xpc_int64_create(a14);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  v75 = v79;
  v76 = "handoverPreferredMode";
  sub_10000F688(&v75, &v51, &v52);
  xpc_release(v52);
  v52 = 0;
  xpc_release(v51);
  v51 = 0;
  v49 = xpc_BOOL_create(a9);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  v75 = v79;
  v76 = "anyCallBeingSetup";
  sub_10000F688(&v75, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  xpc_release(v49);
  v49 = 0;
  v47 = xpc_int64_create(SHIDWORD(a14));
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  v75 = v79;
  v76 = "epdgIpFamily";
  sub_10000F688(&v75, &v47, &v48);
  xpc_release(v48);
  v48 = 0;
  xpc_release(v47);
  v46 = v79[0];
  v47 = 0;
  if (v79[0])
  {
    xpc_retain(v79[0]);
  }

  else
  {
    v46 = xpc_null_create();
  }

  (*(*v36 + 16))(v36, "commCenterPDPContextHandover", &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(v79[0]);
LABEL_62:
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }
}

void sub_10033D38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 96));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10033D490(uint64_t a1, char a2, int a3)
{
  if ((*(**(a1 + 88) + 48))(*(a1 + 88)))
  {
    sub_10033CB2C(a1, 0);
    sub_10033F5A0(a1, 1);
    v5 = *(a1 + 104);
    if (v5)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "assertionUpdate";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: removing inactivity timeout due to assertion", buf, 0xCu);
        v5 = *(a1 + 104);
        *(a1 + 104) = 0;
        if (!v5)
        {
          return 0;
        }
      }

      else
      {
        *(a1 + 104) = 0;
      }

      (*(*v5 + 8))(v5);
    }

    return 0;
  }

  v7 = *(a1 + 144);
  sub_10033F5A0(a1, 0);
  v8 = *(a1 + 88);
  if (!v8)
  {
    return 0;
  }

  memset(buf, 0, sizeof(buf));
  (*(*v8 + 16))(buf);
  v10 = *buf;
  v9 = *&buf[8];
  if (*buf == *&buf[8])
  {
    v45 = buf;
    sub_1000212F4(&v45);
    return 0;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v14 = *v10;
    v13 = v10[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v14 + 136))(v14, 3))
    {
      if (v7)
      {
        sub_10033CB2C(a1, 1);
      }

      v11 = (v11 + 1);
      if ((a2 & 1) != 0 || *(a1 + 145) == 1 && a3 && (*(*v14 + 160))(v14))
      {
        (*(**(a1 + 88) + 168))(&v45);
        if (v45)
        {
          v15 = *(a1 + 88);
          v16 = (*(*v14 + 56))(v14);
          (*(**(a1 + 88) + 168))(&v43);
          v17 = (*(*v15 + 88))(v15, v16, &v43, 22, "CommCenter");
          if (v44)
          {
            sub_100004A34(v44);
          }
        }

        else
        {
          v17 = 0;
        }

        if (v46)
        {
          sub_100004A34(v46);
        }

        v12 = (v12 + v17);
      }
    }

    if (v13)
    {
      sub_100004A34(v13);
    }

    v10 += 2;
  }

  while (v10 != v9);
  v45 = buf;
  sub_1000212F4(&v45);
  if (v11)
  {
    v18 = *(a1 + 104);
    if (v12 == v11)
    {
      *(a1 + 104) = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      return v11;
    }

    else if (!v18)
    {
      LODWORD(v43) = 0;
      v47 = 0;
      v42 = 0;
      (*(*a1 + 248))(a1, &v43, &v47, &v42 + 4, &v42);
      v20 = sub_100341878(a1, *(a1 + 120), 0);
      v21 = sub_100341878(a1, *(a1 + 112), 1u);
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = v20;
      }

      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = 30000;
      }

      v25 = *(a1 + 40);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        *&buf[4] = "assertionUpdate";
        *&buf[12] = 2048;
        *&buf[14] = v20;
        *&buf[22] = 2048;
        v49 = v22;
        v50 = 2048;
        v51 = v24;
        v52 = 1024;
        v53 = v43;
        v54 = 1024;
        v55 = v47;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s: no assertions, scheduling inactivity timeout %llu msecs, checkpoint %llu, interval %llu. Packets: out=%u, in=%u", buf, 0x36u);
      }

      sub_100004AA0(buf, (a1 + 8));
      v27 = *buf;
      v26 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
      }

      Registry::getTimerService(buf, *(a1 + 64));
      v28 = *buf;
      sub_10000501C(__p, "inactivity timeout");
      v29 = *(a1 + 24);
      object = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_10033F688;
      aBlock[3] = &unk_101E43660;
      aBlock[4] = a1;
      aBlock[5] = v27;
      v36 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v37 = v24;
      v38 = _Block_copy(aBlock);
      sub_100E7CA80(v28, __p, 0, 1000 * v24, &object, &v38);
      v30 = v45;
      v45 = 0;
      v31 = *(a1 + 104);
      *(a1 + 104) = v30;
      if (v31)
      {
        (*(*v31 + 8))(v31);
        v32 = v45;
        v45 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      if (v38)
      {
        _Block_release(v38);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v41 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v33 = v43;
      *(a1 + 128) = v47;
      *(a1 + 132) = v33;
      if (v36)
      {
        std::__shared_weak_count::__release_weak(v36);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }
    }
  }

  return v12;
}

void sub_10033DB20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033DBF4(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_10033DD0C();
  }

  v4 = 136315394;
  v5 = "handleDataContextIPOffline";
  v6 = 2080;
  v7 = asString();
  _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v4, 0x16u);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a2 & 2) != 0)
  {
    sub_10033DD0C();
  }
}

void sub_10033DD0C()
{
  v0 = 0;
  v1 = 0;
  sub_100338A90();
}

void sub_10033E420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  *(v49 - 144) = &a49;
  sub_1000212F4((v49 - 144));
  v51 = *(v49 - 152);
  if (v51)
  {
    sub_100004A34(v51);
  }

  _Unwind_Resume(a1);
}

void sub_10033E558(uint64_t a1, double a2, double a3)
{
  if (a2 == 1.79769313e308)
  {
    v3 = 0;
    *(a1 + 120) = 86400000;
    v4 = 86400000;
LABEL_17:
    *(a1 + 112) = v3;
    v6 = v3;
    goto LABEL_18;
  }

  if (a2 <= 0.0)
  {
    if (*(a1 + 80))
    {
      v4 = 120000;
    }

    else
    {
      v4 = 300000;
    }
  }

  else
  {
    v4 = a2;
  }

  if (v4 <= a3 || a3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3;
  }

  *(a1 + 112) = v6;
  *(a1 + 120) = v4;
  if (v4 > 0x5265C00)
  {
    *(a1 + 120) = 86400000;
    v4 = 86400000;
  }

  v3 = 86400000;
  if (v6 > 0x5265C00)
  {
    goto LABEL_17;
  }

LABEL_18:
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "updateTimeoutMsec";
    v10 = 2048;
    v11 = v4;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Inactivity timeout is set to %llu msec with checkpoint %llu msec", &v8, 0x20u);
  }
}

CFDictionaryRef sub_10033E6B0(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x4002000000;
  v23 = sub_10033E9A0;
  v24 = sub_10033E9BC;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4002000000;
  v15 = sub_10033E9A0;
  v16 = sub_10033E9BC;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10033E9D0;
  v11[3] = &unk_101E43600;
  v11[5] = &v12;
  v11[6] = a1;
  v11[4] = &v20;
  values[0] = v11;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 0x40000000;
  v30 = sub_100342638;
  v31 = &unk_101E437B0;
  v32 = a1 + 8;
  v33 = values;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    dispatch_sync(v1, &block);
  }

  v9 = 0;
  v10 = 0;
  v3 = (v21 + 5);
  if (*(v21 + 63) < 0)
  {
    v3 = *v3;
  }

  v10 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
  *&block = 0;
  sub_100005978(&block);
  v4 = (v13 + 5);
  if (*(v13 + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
  v6 = v9;
  v9 = v5;
  *&block = v6;
  sub_100005978(&block);
  if (v10 && v9)
  {
    block = *off_101E43620;
    values[0] = v10;
    values[1] = v9;
    v7 = CFDictionaryCreate(kCFAllocatorDefault, &block, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  else
  {
    v7 = 0;
  }

  sub_100005978(&v9);
  sub_100005978(&v10);
  _Block_object_dispose(&v12, 8);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v20, 8);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  return v7;
}

void sub_10033E944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100005978(&a10);
  sub_100005978(&a11);
  _Block_object_dispose(&a19, 8);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a30, 8);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10033E9A0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_10033E9BC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_10033E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  (*(**(a1 + 88) + 16))(&v16);
  if (a2)
  {
    if (a3)
    {
      v6 = v16;
      v7 = v17;
      if (v17 != v16)
      {
        v9 = *v16;
        v8 = v16[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = v17;
        }

        if (v6 == v7)
        {
LABEL_13:
          if (!v9)
          {
            v10 = v8;
            if (!v8)
            {
              goto LABEL_27;
            }

            goto LABEL_26;
          }

          v11 = v9;
          v10 = v8;
        }

        else
        {
          while (1)
          {
            v11 = *v6;
            v10 = v6[1];
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if ((*(*v11 + 136))(v11, 1))
            {
              break;
            }

            if (v10)
            {
              sub_100004A34(v10);
            }

            v6 += 2;
            if (v6 == v7)
            {
              goto LABEL_13;
            }
          }

          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            sub_100004A34(v8);
          }

          if (v10)
          {
            sub_100004A34(v10);
          }
        }

        v12 = *(a1 + 88);
        v13 = (*(*v11 + 56))(v11);
        (*(*v12 + 40))(&v14, v12, v13);
        if (*(a2 + 23) < 0)
        {
          operator delete(*a2);
        }

        *a2 = v14;
        *(a2 + 16) = v15;
        (*(*v11 + 96))(v11, 1);
        CSIPacketAddress::operator std::string();
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = v14;
        *(a3 + 16) = v15;
        if (v10)
        {
LABEL_26:
          sub_100004A34(v10);
        }
      }
    }
  }

LABEL_27:
  *&v14 = &v16;
  sub_1000212F4(&v14);
}

void sub_10033EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a9 = &a12;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void sub_10033EC80(uint64_t a1, unint64_t a2)
{
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
  if (!v12)
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    *&buf[4] = "inactivityCallBack";
    v36 = "#I %s: no data service, skip InactivityTimer";
    goto LABEL_46;
  }

  LODWORD(v52) = 0;
  v54 = 0;
  v53 = 0;
  (*(*a1 + 248))(a1, &v52, &v54 + 4, &v54, &v53);
  v14 = v52;
  if (__PAIR64__(v52, HIDWORD(v54)) == *(a1 + 128))
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v18 = v13;
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 2048;
      *&buf[14] = a2 / 0x3E8;
      *&buf[22] = 1024;
      v56 = v14;
      v57 = 1024;
      v58 = HIDWORD(v54);
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: Checkpoint: %llu sec, Packets: out=%d, in=%d (still active)", buf, 0x22u);
    }

    v20 = v53;
    v21 = v54;
    v22 = *(a1 + 140);
    v16 = v54 - v22;
    if (v54 >= v22 && (v23 = *(a1 + 136), v15 = v53 - v23, v53 >= v23))
    {
      v44 = *(a1 + 40);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "inactivityCallBack";
        *&buf[12] = 1024;
        *&buf[14] = v16;
        *&buf[18] = 1024;
        *&buf[20] = v15;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: uplink bytes: %u, downlink bytes %u", buf, 0x18u);
        v20 = v53;
        v21 = v54;
      }
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v24 = v52;
    *(a1 + 128) = HIDWORD(v54);
    *(a1 + 132) = v24;
    *(a1 + 136) = v20;
    *(a1 + 140) = v21;
    v17 = 1;
    v13 = v18;
  }

  v25 = sub_100341878(a1, *(a1 + 120), 0);
  if (v25 <= a2)
  {
    v37 = (*(*v12 + 904))(v12);
    v38 = v37;
    if (v37 && (*(*v37 + 40))(v37) && (v39 = (*(*v38 + 56))(v38, *(a1 + 80), v16, v15), (v39 & 0x100) != 0) && (v40 = *(a1 + 40), v17 = v39, os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT)))
    {
      *buf = 136315394;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 1024;
      *&buf[14] = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s: slice connection retention: %{BOOL}d", buf, 0x12u);
      if (v39)
      {
        goto LABEL_64;
      }
    }

    else if (v17)
    {
      goto LABEL_64;
    }

    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 80);
      *buf = 136315394;
      *&buf[4] = "inactivityCallBack";
      *&buf[12] = 1024;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s: Deactivating context %d, because it has gone idle", buf, 0x12u);
    }

    v43 = *(a1 + 104);
    *(a1 + 104) = 0;
    if (v43)
    {
      (*(*v43 + 8))(v43);
    }

    if (((*(*v12 + 888))(v12) & 1) == 0)
    {
      (*(**(a1 + 88) + 80))(*(a1 + 88), 20);
      goto LABEL_64;
    }

    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 136315138;
    *&buf[4] = "inactivityCallBack";
    v36 = "#I %s: In LoopBack Mode, skip InactivityTimer";
LABEL_46:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 0xCu);
    goto LABEL_64;
  }

  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "inactivityCallBack";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s: skip the first (dirty) interval and set the next at %lu msec ahead", buf, 0x16u);
  }

  v27 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  sub_100004AA0(buf, (a1 + 8));
  v29 = *buf;
  v28 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v28);
  }

  Registry::getTimerService(buf, *(a1 + 64));
  v30 = *buf;
  sub_10000501C(__p, "inactivity timeout");
  v31 = *(a1 + 24);
  object = v31;
  if (v31)
  {
    dispatch_retain(v31);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1174405120;
  v45[2] = sub_10033F4E8;
  v45[3] = &unk_101E43630;
  v45[4] = a1;
  v45[5] = v29;
  v46 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v25;
  aBlock = _Block_copy(v45);
  sub_100E7CA80(v30, __p, 0, 1000 * v25, &object, &aBlock);
  v32 = v52;
  v52 = 0;
  v33 = *(a1 + 104);
  *(a1 + 104) = v32;
  if (v33)
  {
    (*(*v33 + 8))(v33);
    v34 = v52;
    v52 = 0;
    if (v34)
    {
      (*(*v34 + 8))(v34);
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

  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_64:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10033F43C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033F4E8(void *a1)
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
        sub_10033EC80(v3, a1[7]);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10033F574(uint64_t result, uint64_t a2)
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

void sub_10033F590(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10033F5A0(uint64_t a1, int a2)
{
  v2 = *(a1 + 144);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setAsserted";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: from %s to %s", &v6, 0x20u);
    }

    *(a1 + 144) = v3;
  }
}

void sub_10033F688(void *a1)
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
        sub_10033EC80(v3, a1[7]);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10033F714(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "handleDataContextIPRetry";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPRetry", &v2, 0xCu);
  }

  sub_100339054();
}

void sub_10033F7F8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "handleDataContextIPResume";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPResume", &v2, 0xCu);
  }

  sub_10033A7F0();
}

void sub_10033F8E8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "handleDataContextIPOnline";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataContextIPOnline", &v2, 0xCu);
  }

  sub_10033A7F0();
}

uint64_t sub_10033F9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = asString();
    v20 = 1024;
    v21 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: mtu=%u", &v18, 0x12u);
  }

  if (a2)
  {
    *(a1 + 56) = a3;
    v7 = *(a1 + 60);
    if (v7)
    {
      if (v7 >= a3)
      {
        if (v7 > a3)
        {
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = asString();
            v18 = 136315394;
            v19 = v11;
            v20 = 1024;
            v21 = a3;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: retro-adjusted mtu=%u", &v18, 0x12u);
          }

          (*(*a1 + 296))(a1, 2, a3);
        }
      }

      else
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = asString();
          v18 = 136315394;
          v19 = v9;
          v20 = 1024;
          v21 = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: adjusted mtu=%u", &v18, 0x12u);
        }

        a3 = v7;
      }
    }
  }

  if ((a2 & 2) != 0)
  {
    *(a1 + 60) = a3;
    v12 = *(a1 + 56);
    if (v12)
    {
      if (v12 >= a3)
      {
        if (v12 > a3)
        {
          v15 = *(a1 + 40);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = asString();
            v18 = 136315394;
            v19 = v16;
            v20 = 1024;
            v21 = a3;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: retro-adjusted mtu=%u", &v18, 0x12u);
          }

          (*(*a1 + 296))(a1, 1, a3);
        }
      }

      else
      {
        v13 = *(a1 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString();
          v18 = 136315394;
          v19 = v14;
          v20 = 1024;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I handleDataContextDidGetMTU[%s]: adjusted mtu=%u", &v18, 0x12u);
        }

        a3 = v12;
      }
    }
  }

  return (*(*a1 + 296))(a1, a2, a3);
}

void sub_10033FD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "handleContextActivateError";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    v10 = 2080;
    v11 = asString();
    v12 = 2048;
    v13 = a7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: %s: %s connectionMask %lld", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_100338A90();
}

void sub_10033FEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033FF18(uint64_t a1, uint64_t a2, void *a3, unsigned int a4, int a5, int a6)
{
  if (a5)
  {
    v11 = (*(**a3 + 152))();
    memset(&buf, 0, sizeof(buf));
    (*(**a3 + 96))(*a3, a2);
    CSIPacketAddress::operator std::string();
    *(v103 + 3) = 0;
    v103[0] = 0;
    *(v102 + 3) = 0;
    v102[0] = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v12 = (*(**a3 + 120))(*a3, a2);
    v99 = 0;
    v100 = 0;
    v101 = 0;
    sub_1001B9510(&v99, *v12, v12[1], 0xAAAAAAAAAAAAAAABLL * ((v12[1] - *v12) >> 3));
    v13 = v99;
    v14 = v100;
    if (v100 == v99)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      CSIPacketAddress::operator std::string();
      v16 = *(&__dst + 1);
      v15 = __dst;
      v103[0] = v98;
      *(v103 + 3) = *(&v98 + 3);
      v17 = HIBYTE(v98);
      v13 = v99;
      v14 = v100;
    }

    v59 = v17;
    __src = v15;
    if (0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 3) < 2)
    {
      v52 = 0;
      v19 = 0;
      v20 = 0;
    }

    else
    {
      CSIPacketAddress::operator std::string();
      v19 = *(&__dst + 1);
      v52 = __dst;
      v102[0] = v98;
      *(v102 + 3) = *(&v98 + 3);
      v20 = HIBYTE(v98);
    }

    v58 = v20;
    v21 = (*(**a3 + 56))();
    if (v21 == 1)
    {
      v22 = a6;
    }

    else
    {
      v22 = a5;
    }

    v57 = v22;
    v56 = (*(**a3 + 64))();
    v23 = sub_1007A3C94();
    v24 = *(v11 + 160);
    __dst = 0uLL;
    v98 = 0;
    if (*(v11 + 103) < 0)
    {
      sub_100005F2C(&__dst, *(v11 + 80), *(v11 + 88));
    }

    else
    {
      __dst = *(v11 + 80);
      v98 = *(v11 + 96);
    }

    v95 = 0uLL;
    v96 = 0;
    if (*(v11 + 127) < 0)
    {
      sub_100005F2C(&v95, *(v11 + 104), *(v11 + 112));
    }

    else
    {
      v95 = *(v11 + 104);
      v96 = *(v11 + 120);
    }

    v60 = a1;
    v93 = 0uLL;
    v94 = 0;
    v50 = v23;
    if (*(v11 + 151) < 0)
    {
      sub_100005F2C(&v93, *(v11 + 128), *(v11 + 136));
    }

    else
    {
      v93 = *(v11 + 128);
      v94 = *(v11 + 144);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 64));
    v26 = ServiceMap;
    if (v27 < 0)
    {
      v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(ServiceMap);
    *&v91 = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, &v91);
    v54 = a2;
    v55 = v21;
    v49 = v19;
    if (v31)
    {
      v33 = v31[3];
      v32 = v31[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        v51 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v26);
    v32 = 0;
    v51 = 1;
LABEL_30:
    v48 = v32;
    if (v33)
    {
      v34 = (*(*v33 + 1040))(v33, a4);
    }

    else
    {
      v34 = -1;
    }

    v35 = (*(**a3 + 192))(*a3, 1);
    v36 = *(v11 + 168);
    v91 = 0uLL;
    v92 = 0;
    v37 = *(v60 + 88);
    v38 = (*(**a3 + 56))();
    (*(*v37 + 40))(&v91, v37, v38);
    v89[1] = 0;
    v89[0] = 0;
    v90 = 0;
    if (*(v11 + 31) < 0)
    {
      sub_100005F2C(v89, *(v11 + 8), *(v11 + 16));
    }

    else
    {
      *v89 = *(v11 + 8);
      v90 = *(v11 + 24);
    }

    v39 = 0;
    v40 = v50 - v24;
    v41 = *(v11 + 172);
    v42 = 1;
    do
    {
      v43 = v39 | 0x10000000;
      if (v42 <= 0x10000000)
      {
        v43 = v39 | v42;
      }

      if ((v42 & v35) != 0)
      {
        v39 = v43;
      }

      v44 = v42 >> 35;
      v42 *= 2;
    }

    while (!v44);
    v45 = *(v60 + 80);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v88, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v88 = buf;
    }

    if (v59 < 0)
    {
      sub_100005F2C(v85, __src, v16);
    }

    else
    {
      v85[0] = __src;
      v85[1] = v16;
      *v86 = v103[0];
      *&v86[3] = *(v103 + 3);
      v87 = v59;
    }

    if (v58 < 0)
    {
      sub_100005F2C(v82, v52, v49);
    }

    else
    {
      v82[0] = v52;
      v82[1] = v49;
      *v83 = v102[0];
      *&v83[3] = *(v102 + 3);
      v84 = v58;
    }

    if (SHIBYTE(v92) < 0)
    {
      sub_100005F2C(v80, v91, *(&v91 + 1));
    }

    else
    {
      *v80 = v91;
      v81 = v92;
    }

    if (SHIBYTE(v98) < 0)
    {
      sub_100005F2C(v78, __dst, *(&__dst + 1));
    }

    else
    {
      *v78 = __dst;
      v79 = v98;
    }

    if (SHIBYTE(v96) < 0)
    {
      sub_100005F2C(v76, v95, *(&v95 + 1));
    }

    else
    {
      *v76 = v95;
      v77 = v96;
    }

    if (SHIBYTE(v94) < 0)
    {
      sub_100005F2C(v74, v93, *(&v93 + 1));
    }

    else
    {
      *v74 = v93;
      v75 = v94;
    }

    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(__p, v89[0], v89[1]);
    }

    else
    {
      *__p = *v89;
      v73 = v90;
    }

    sub_10079E6BC(a4, v45, 0, v57, &v88, v85, v82, v34, v80, v55, v39, v40, v78, v76, v74, v56, v54, v36, __p);
    if (SHIBYTE(v73) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    if (SHIBYTE(v77) < 0)
    {
      operator delete(v76[0]);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v78[0]);
    }

    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
    }

    if (v84 < 0)
    {
      operator delete(v82[0]);
    }

    if (v87 < 0)
    {
      operator delete(v85[0]);
    }

    if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v88.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(v70, v89[0], v89[1]);
    }

    else
    {
      *v70 = *v89;
      v71 = v90;
    }

    if (SHIBYTE(v92) < 0)
    {
      sub_100005F2C(v68, v91, *(&v91 + 1));
    }

    else
    {
      *v68 = v91;
      v69 = v92;
    }

    v46 = *(v60 + 80);
    if (SHIBYTE(v94) < 0)
    {
      sub_100005F2C(v66, v93, *(&v93 + 1));
    }

    else
    {
      *v66 = v93;
      v67 = v94;
    }

    if (SHIBYTE(v96) < 0)
    {
      sub_100005F2C(v64, v95, *(&v95 + 1));
    }

    else
    {
      *v64 = v95;
      v65 = v96;
    }

    if (SHIBYTE(v98) < 0)
    {
      sub_100005F2C(v62, __dst, *(&__dst + 1));
    }

    else
    {
      *v62 = __dst;
      v63 = v98;
    }

    LODWORD(v47) = v56;
    sub_1003392DC(v60, v70, v40, v68, v35, v46, v55, v66, __SPAIR64__(v34, v54), __SPAIR64__(v57, v36), a4, 0, v47, v64, v62, v41);
    if (SHIBYTE(v63) < 0)
    {
      operator delete(v62[0]);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(v64[0]);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68[0]);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70[0]);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89[0]);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    if ((v51 & 1) == 0)
    {
      sub_100004A34(v48);
    }

    if (SHIBYTE(v94) < 0)
    {
      operator delete(v93);
    }

    if (SHIBYTE(v96) < 0)
    {
      operator delete(v95);
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(__dst);
    }

    if (v99)
    {
      v100 = v99;
      operator delete(v99);
    }

    if (v58 < 0)
    {
      operator delete(v52);
    }

    if (v59 < 0)
    {
      operator delete(__src);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    return;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = "reportContextActivateErrorMetrics";
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: Activate failed without error, huh?", &buf, 0xCu);
  }
}

void sub_1003408F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, int a21, char a22, void *a23, void *a24, uint64_t a25, uint64_t a26, char a27, __int16 a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x25F]) < 0)
  {
    operator delete(STACK[0x248]);
  }

  if ((a22 & 1) == 0)
  {
    sub_100004A34(a18);
  }

  if (*(v62 - 233) < 0)
  {
    operator delete(*(v62 - 256));
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  v64 = *(v62 - 168);
  if (v64)
  {
    *(v62 - 160) = v64;
    operator delete(v64);
  }

  if (a27 < 0)
  {
    operator delete(a23);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (*(v62 - 105) < 0)
  {
    operator delete(*(v62 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100340B5C(uint64_t a1, int a2)
{
  if (a2)
  {
    sub_100340DFC(a1, *(a1 + 80), 0);
  }

  v18 = 0;
  v19 = 0;
  (*(**(a1 + 88) + 112))(&v18);
  if (v18)
  {
    (*(*v18 + 160))(v18, 1, 7);
    v16 = 0;
    v17 = 0;
    sub_1000930A4(&v16);
    if (v16 && (*(*v16 + 56))(v16))
    {
      (*(*v18 + 160))(v18, 1, 5);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  if (a2)
  {
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
    v16 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
LABEL_21:
          if ((v13 & 1) == 0)
          {
            sub_100004A34(v11);
          }

          goto LABEL_23;
        }

LABEL_19:
        sub_10000501C(__p, "Throttling cleared");
        (*(*v12 + 1160))(v12, 3, __p, 0);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_21;
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
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_23:
  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_100340D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100340DFC(uint64_t a1, int a2, int a3)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_10034264C(v7, 524437);
  v5 = v7[0];
  if (v7[0])
  {
    *(v7[0] + 28) |= 6u;
    *(v5 + 16) = a2;
    *(v5 + 20) = a3;
  }

  return sub_100342734(v7);
}

void sub_100340E5C(uint64_t a1, int a2)
{
  v5 = 0;
  v6 = 0;
  (*(**(a1 + 88) + 112))(&v5);
  v4 = v5;
  if (v5)
  {
    v4 = (*(*v5 + 160))(v5, 0, 7);
  }

  if (a2)
  {
    sub_100340DFC(v4, *(a1 + 80), 1);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100340F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100340F20(uint64_t a1)
{
  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100340F58(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    (*(*v2 + 16))(&v28);
    v3 = v28;
    v4 = v29;
    if (v28 != v29)
    {
      while (1)
      {
        v6 = *v3;
        v5 = v3[1];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        memset(&v33, 0, sizeof(v33));
        v7 = *(a1 + 88);
        v8 = (*(*v6 + 56))(v6);
        (*(*v7 + 40))(&v33, v7, v8);
        v9 = (*(*v6 + 192))(v6, 0);
        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v10 | 0x10000000;
          if (v11 <= 0x10000000)
          {
            v12 = v10 | v11;
          }

          if ((v11 & v9) != 0)
          {
            v10 = v12;
          }

          v13 = v11 >> 35;
          v11 *= 2;
        }

        while (!v13);
        v14 = (*(*a1 + 240))(a1, 1);
        v15 = v14;
        if (v14 != *(a1 + 48))
        {
          *(a1 + 48) = v14;
          v16 = *(a1 + 80);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v33;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__str, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __p;
          }

          *&__dst.__r_.__value_.__l.__data_ = 0uLL;
          sub_100342930(&__dst, 524435);
          v17 = __dst.__r_.__value_.__r.__words[0];
          if (__dst.__r_.__value_.__r.__words[0])
          {
            v18 = *(__dst.__r_.__value_.__r.__words[0] + 40);
            *(__dst.__r_.__value_.__r.__words[0] + 16) = v16;
            *(v17 + 20) = v15;
            *(v17 + 40) = v18 | 0xE;
            v19 = *(v17 + 24);
            if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v19, &__str);
            v20 = __dst.__r_.__value_.__r.__words[0];
            *(__dst.__r_.__value_.__r.__words[0] + 40) |= 0x10u;
            *(v20 + 32) = v10;
          }

          sub_100342A18(&__dst);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v21 = (*(*a1 + 240))(a1, 2);
        v22 = v21;
        if (v21 != *(a1 + 52))
        {
          *(a1 + 52) = v21;
          v23 = *(a1 + 80);
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, v33.__r_.__value_.__l.__data_, v33.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = v33;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__str, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
          }

          else
          {
            __str = __dst;
          }

          v35[0] = 0;
          v35[1] = 0;
          sub_100342C14(v35, 524436);
          v24 = v35[0];
          if (v35[0])
          {
            v25 = *(v35[0] + 40);
            *(v35[0] + 16) = v23;
            *(v24 + 20) = v22;
            *(v24 + 40) = v25 | 0xE;
            v26 = *(v24 + 24);
            if (v26 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
            {
              operator new();
            }

            std::string::operator=(v26, &__str);
            v27 = v35[0];
            *(v35[0] + 40) |= 0x10u;
            *(v27 + 32) = v10;
          }

          sub_100342A18(v35);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        if (v5)
        {
          goto LABEL_43;
        }

LABEL_44:
        v3 += 2;
        if (v3 == v4)
        {
          goto LABEL_48;
        }
      }

      operator delete(v33.__r_.__value_.__l.__data_);
      if (!v5)
      {
        goto LABEL_44;
      }

LABEL_43:
      sub_100004A34(v5);
      goto LABEL_44;
    }

LABEL_48:
    __str.__r_.__value_.__r.__words[0] = &v28;
    sub_1000212F4(&__str);
  }
}

void sub_10034136C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (v37)
  {
    sub_100004A34(v37);
  }

  *(v38 - 96) = &a10;
  sub_1000212F4((v38 - 96));
  _Unwind_Resume(a1);
}

void sub_10034142C()
{
  v0 = 0;
  v1 = 0;
  sub_100338A90();
}

void sub_1003417FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if ((a17 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100341878(uint64_t a1, uint64_t a2, unsigned int a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v25 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v25);
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
      if (!v14)
      {
LABEL_26:
        sub_100004A34(v13);
        return a2;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (!v14)
      {
        return a2;
      }
    }

    v15 = (*(*v14 + 808))(v14);
    v24 = a3;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    (*(**(a1 + 88) + 16))(&v25);
    v16 = v25;
    v17 = v26;
    if (v25 != v26)
    {
      while (1)
      {
        v18 = *v16;
        v19 = *(v16 + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18 && (*(*&v18[*(*v18 - 56)] + 24))(&v18[*(*v18 - 56)]) != v15)
        {
          break;
        }

        v20 = 1;
        if (v19)
        {
          goto LABEL_16;
        }

LABEL_17:
        if ((v20 & 1) == 0)
        {
          goto LABEL_25;
        }

        v16 += 16;
        if (v16 == v17)
        {
          goto LABEL_22;
        }
      }

      v20 = 0;
      if (!v19)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_100004A34(v19);
      goto LABEL_17;
    }

LABEL_22:
    v21 = sub_10009900C(a1, v15);
    if (isSliceMask(v21))
    {
      v22 = (*(*v14 + 904))(v14);
      if (v22)
      {
        a2 = 1000 * (*(*v22 + 144))(v22, v15, v24);
      }
    }

LABEL_25:
    v28 = &v25;
    sub_1000212F4(&v28);
    if (v13)
    {
      goto LABEL_26;
    }
  }

  else
  {
    std::mutex::unlock(v7);
  }

  return a2;
}

void sub_100341B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1000212F4(&a14);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_100341B58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 96);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------- Collocation: %s ------------------", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    v4 = *(a1 + 120);
    *buf = 134218240;
    *&buf[4] = v4;
    *&buf[12] = 2048;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fInactivityTimeoutMsec = %lu, fInactivityCheckpointMsec = %lu", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_100341878(a1, *(a1 + 120), 0);
    v7 = sub_100341878(a1, *(a1 + 112), 1u);
    *buf = 134218240;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t efficient: inactivityTimeoutMsec = %lu, inactivityCheckpointMsec = %lu", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 128);
    v9 = *(a1 + 132);
    *buf = 67109376;
    *&buf[4] = v8;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fStatistics(_in=%u, _out=%u)", buf, 0xEu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asStringBool(*(a1 + 144));
    v11 = asStringBool(*(a1 + 145));
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAsserted = %s,  fAssertionGone = %s", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 104) != 0);
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fInactivityTimer = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asString();
    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCachedV4Status = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v14 = asString();
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCachedV6Status = %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 56);
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPv4NetworkMtu = %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 60);
    *buf = 67109120;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fIPv6NetworkMtu = %u", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fAssertions {", buf, 2u);
  }

  v17 = *(a1 + 152);
  for (i = *(a1 + 160); v17 != i; v17 = (v17 + 24))
  {
    memset(buf, 0, 24);
    if (*(v17 + 23) < 0)
    {
      sub_100005F2C(buf, *v17, *(v17 + 1));
    }

    else
    {
      v19 = *v17;
      *&buf[16] = *(v17 + 2);
      *buf = v19;
    }

    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if ((buf[23] & 0x80u) == 0)
      {
        v21 = buf;
      }

      else
      {
        v21 = *buf;
      }

      *v32 = 136315138;
      *&v32[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v32, 0xCu);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v22 = *(a1 + 40);
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDataContexts {", buf, 2u);
  }

  v23 = *(a1 + 88);
  if (v23)
  {
    memset(buf, 0, 24);
    (*(*v23 + 16))(buf);
    v24 = *buf;
    for (j = *&buf[8]; v24 != j; v24 += 2)
    {
      v27 = *v24;
      v26 = v24[1];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v28 = *(a1 + 40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (*(*v27 + 48))(v27);
        *v32 = 136315138;
        *&v32[4] = v29;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s", v32, 0xCu);
      }

      if (v26)
      {
        sub_100004A34(v26);
      }
    }

    *v32 = buf;
    sub_1000212F4(v32);
  }

  v30 = *(a1 + 40);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(**(a1 + 88) + 112))(buf);
  if (*buf)
  {
    (*(**buf + 192))(*buf);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_100342250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100342308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1003423AC(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034232C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10034236C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1003423AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_100342428(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003424AC(std::mutex *this@<X0>, void *a2@<X8>)
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

  v11 = 0;
  v12 = 0;
  std::mutex::lock(this);
  v13 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v13);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  std::mutex::unlock(this);
  sub_100342574(&v11, a2);
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_100342574(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  {
    *a2 = v6;
    a2[1] = v5;
    if (!v5)
    {
      return;
    }

    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v5)
    {
      return;
    }
  }

  sub_100004A34(v5);
}

uint64_t sub_10034264C(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100342734(uint64_t *a1)
{
  sub_100342790(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_100342790(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_100342808(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100342808(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 28))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 28) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003428E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100342930(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

uint64_t *sub_100342A18(uint64_t *a1)
{
  sub_100342A74(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t sub_100342A74(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    sub_100342AEC(result, *(result + 8));
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100342AEC(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 40))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 40) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100342BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100342C14(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  if (sub_10079D818())
  {
    operator new();
  }

  return a1;
}

void sub_100342CFC()
{
  if ((atomic_load_explicit(&qword_101FBA268, memory_order_acquire) & 1) == 0)
  {
    sub_10176BCC8();
  }

  if (qword_101FBA260 != -1)
  {
    sub_10176BD1C();
  }
}

uint64_t sub_100342D40(const char *a1, int a2, int a3, int a4)
{
  v5 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v6 = open(a1, a2, a4 | 0x100u);
  if ((v6 & 0x80000000) != 0 && a3)
  {
    v7 = *__error();
    if (v5[23] < 0)
    {
      v5 = *v5;
    }

    v8 = strerror(v7);
    sub_100342DCC("Error opening file %s, err = %s", v5, v8);
  }

  return v6;
}

void sub_100342DCC(char *__format, ...)
{
  va_start(va, __format);
  memset(&__p, 0, sizeof(__p));
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
  v7 = 0u;
  v8 = 0u;
  *__str = 0u;
  v6 = 0u;
  va_copy(v4, va);
  vsnprintf(__str, 0x100uLL, __format, va);
  sub_100016890(&__p, __str);
  sub_100342CFC();
  v1 = qword_101FBA278;
  if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
  {
    sub_10176BD30(&__p, v1);
  }

  p_p = &__p;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  syslog(5, "File Error: '%s'\n", p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t sub_100342EFC(int a1)
{
  while (1)
  {
    v2 = close(a1);
    if (!v2)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = *__error();
      v4 = __error();
      v5 = strerror(*v4);
      sub_100342DCC("Failed to close file; got errno=%d (%s)", v3, v5);
      return v2;
    }
  }

  return v2;
}

DIR *sub_100342F6C(const char *a1, void *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        v9 = 0;
        __dst = 0uLL;
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          operator new();
        }

        HIBYTE(v9) = v6->d_namlen;
        if (d_namlen)
        {
          memmove(&__dst, v6->d_name, d_namlen);
        }

        *(&__dst + d_namlen) = 0;
        sub_100005308(a2, &__dst);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__dst);
        }

        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_10034307C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100343098(const char *a1)
{
  memset(&v2, 0, sizeof(v2));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v2) == 0;
}

void *sub_1003430EC@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  memset(&v13, 0, sizeof(v13));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = stat(a1, &v13);
  if (result)
  {
    if (v2[23] < 0)
    {
      return sub_100005F2C(a2, *v2, *(v2 + 1));
    }

    else
    {
      *a2 = *v2;
      *(a2 + 16) = *(v2 + 2);
    }
  }

  else
  {
    for (i = 1; ; ++i)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      memset(&v13, 0, sizeof(v13));
      snprintf(&v13, 0x100uLL, "-%u", i);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0;
      sub_10000501C(&v12, &v13);
      v6 = v2[23];
      if (v6 >= 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = *v2;
      }

      if (v6 >= 0)
      {
        v8 = *(v2 + 23);
      }

      else
      {
        v8 = *(v2 + 1);
      }

      v9 = std::string::insert(&v12, 0, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v9->__r_.__value_.__l + 2);
      *a2 = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v12.st_gid) < 0)
      {
        operator delete(*&v12.st_dev);
      }

      memset(&v12, 0, sizeof(v12));
      v11 = *(a2 + 23) >= 0 ? a2 : *a2;
      result = stat(v11, &v12);
      if (result)
      {
        break;
      }

      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }
    }
  }

  return result;
}

void sub_1003432A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003432D8(const char *a1, int a2, int a3)
{
  v5 = a1;
  memset(&v22, 0, sizeof(v22));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v22))
  {
    return 1;
  }

  if (!a3)
  {
    return sub_10034363C(v5, a2);
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  sub_1003434FC(&v19, v5);
  memset(&__p, 0, sizeof(__p));
  if ((v5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5->__r_.__value_.__r.__words[0];
  }

  if (v6->__r_.__value_.__s.__data_[0] == 47)
  {
    std::string::operator=(&__p, &stru_1017F4C50);
  }

  v7 = v19;
  if (v20 == v19)
  {
LABEL_26:
    v16 = 1;
  }

  else
  {
    v8 = 0;
    v9 = 1;
    while (1)
    {
      if (v9 != 1)
      {
        std::string::append(&__p, &stru_1017F4C50, 1uLL);
        v7 = v19;
      }

      v10 = v7 + 24 * v8;
      v11 = *(v10 + 23);
      v12 = v11 >= 0 ? v10 : *v10;
      v13 = v11 >= 0 ? *(v10 + 23) : *(v10 + 8);
      std::string::append(&__p, v12, v13);
      memset(&v22, 0, sizeof(v22));
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      if (stat(v14, &v22) && !sub_10034363C(&__p, a2))
      {
        break;
      }

      v8 = v9;
      v7 = v19;
      if (0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3) <= v9++)
      {
        goto LABEL_26;
      }
    }

    v16 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v22.st_dev = &v19;
  sub_1000087B4(&v22);
  return v16;
}

void sub_1003434C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a15;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1003434FC(void *a1, std::string *this)
{
  v4 = 0;
  do
  {
    v5 = std::string::find(this, 47, v4);
    v6 = v5;
    memset(&__p, 0, sizeof(__p));
    if (v5 == -1)
    {
      sub_10034454C(&__dst, this, v4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __dst;
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        sub_100005308(a1, &__p);
      }
    }

    else
    {
      if (v5 != v4)
      {
        std::string::basic_string(&__dst, this, v4, v5 - v4, &v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
        sub_100005308(a1, &__p);
      }

      v4 = v6 + 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  while (v6 != -1);
}

void sub_100343618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10034363C(const char *a1, int a2)
{
  v3 = a1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v4 = mkdir(a1, a2);
  if (v4)
  {
    if (v3[23] < 0)
    {
      v3 = *v3;
    }

    v5 = __error();
    v6 = strerror(*v5);
    sub_100342DCC("Failed to create directory %s (0%3o), err = %s", v3, a2, v6);
  }

  return v4 == 0;
}

uint64_t sub_1003436C4(const char *a1)
{
  v1 = a1;
  memset(&v37, 0, sizeof(v37));
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v37))
  {
    return 0;
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_100342F6C(v1, &v33);
  v4 = v33;
  if (v34 == v33)
  {
    goto LABEL_74;
  }

  v5 = 0;
  v6 = 1;
  v7 = 1;
  do
  {
    memset(&__p, 0, sizeof(__p));
    v8 = (v4 + 24 * v5);
    if (*(v8 + 23) < 0)
    {
      sub_100005F2C(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1 && *__p.__r_.__value_.__l.__data_ == 46)
      {
        goto LABEL_61;
      }

      if (__p.__r_.__value_.__l.__size_ == 2)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_17:
        if (LOWORD(p_p->__r_.__value_.__l.__data_) == 11822)
        {
          goto LABEL_61;
        }
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2)
    {
      p_p = &__p;
      goto LABEL_17;
    }

    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    memset(&v37, 0, 24);
    sub_1000677C4(&v37, size + 1);
    if ((v37.st_gid & 0x80000000) == 0)
    {
      v12 = &v37;
    }

    else
    {
      v12 = *&v37.st_dev;
    }

    if (size)
    {
      if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = v1;
      }

      else
      {
        v13 = v1->__pn_.__r_.__value_.__r.__words[0];
      }

      memmove(v12, v13, size);
    }

    *(&v12->st_dev + size) = 47;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    v16 = std::string::append(&v37, v14, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v36[0] = v16->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v17;
    __p.__r_.__value_.__l.__size_ = v36[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&__p.__r_.__value_.__s + 23) = v18;
    if (SHIBYTE(v37.st_gid) < 0)
    {
      operator delete(*&v37.st_dev);
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    memset(&v37.st_uid, 0, 128);
    if (v18 >= 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = v17;
    }

    *&v37.st_dev = 0uLL;
    if (stat(v19, &v37))
    {
      sub_100342CFC();
      v20 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p.__r_.__value_.__r.__words[0];
        }

        v37.st_dev = 136315138;
        *&v37.st_mode = v29;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Warning: %s does not exist", &v37, 0xCu);
      }
    }

    memset(&v37, 0, sizeof(v37));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &__p;
    }

    else
    {
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    if (stat(v21, &v37))
    {
      sub_100342CFC();
      v22 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &__p;
        }

        else
        {
          v30 = __p.__r_.__value_.__r.__words[0];
        }

        v37.st_dev = 136315138;
        *&v37.st_mode = v30;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Warning: %s does not exist or has incorrect permissions, or symbolic link pointing to non-exist file", &v37, 0xCu);
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    v24 = opendir(v23);
    v26 = v24;
    if (v24 && (v27 = readdir(v24), closedir(v26), v27))
    {
      std::string::append(&__p, "/", 1uLL);
      if (v7)
      {
        v7 = sub_1003436C4(&__p);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      sub_100343B98(&__p, v25);
    }

LABEL_61:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = v6;
    v4 = v33;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((v34 - v33) >> 3) > v6++);
  if (v7)
  {
LABEL_74:
    sub_100343B98(v1, v3);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *&v37.st_dev = &v33;
  sub_1000087B4(&v37);
  return v2;
}

void sub_100343B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  __p = &a18;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_100343B98(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(a1, a2))
  {
    __dst = 0uLL;
    v10 = 0;
    if (SHIBYTE(v2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v2->__pn_.__r_.__value_.__l.__data_, v2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = *&v2->__pn_.__r_.__value_.__l.__data_;
      v10 = v2->__pn_.__r_.__value_.__r.__words[2];
    }

    v3 = *__error();
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_1003444A0;
    v5[3] = &unk_101E43820;
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      v7 = v10;
    }

    global_queue = dispatch_get_global_queue(0, 0);
    v8 = v3;
    dispatch_async(global_queue, v5);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_100343CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100343CD0(uint64_t a1, const void **a2)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  sub_100342F6C(a1, &v52);
  v4 = v52;
  if (v53 != v52)
  {
    v5 = 0;
    v6 = 1;
    v44 = 1;
    while (1)
    {
      __dst = 0uLL;
      v51 = 0;
      v7 = (v4 + 24 * v5);
      if (*(v7 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v7, *(v7 + 1));
      }

      else
      {
        v8 = *v7;
        v51 = *(v7 + 2);
        __dst = v8;
      }

      v9 = HIBYTE(v51);
      if (SHIBYTE(v51) < 0)
      {
        break;
      }

      if (HIBYTE(v51) != 1)
      {
        if (HIBYTE(v51) == 2)
        {
          p_dst = &__dst;
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      if (__dst != 46)
      {
        goto LABEL_16;
      }

LABEL_98:
      v5 = v6;
      v4 = v52;
      if (0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3) <= v6++)
      {
        goto LABEL_105;
      }
    }

    if (*(&__dst + 1) == 1 && *__dst == 46)
    {
      goto LABEL_96;
    }

    if (*(&__dst + 1) == 2)
    {
      p_dst = __dst;
LABEL_13:
      if (*p_dst == 11822)
      {
LABEL_96:
        if (v9 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_98;
      }
    }

LABEL_16:
    v48[0] = 0;
    v48[1] = 0;
    v49 = 0;
    if (*(a1 + 23) >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    memset(&v47, 0, sizeof(v47));
    sub_1000677C4(&v47, v11 + 1);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v47;
    }

    else
    {
      v12 = v47.__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (*(a1 + 23) >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v11);
    }

    *(&v12->__r_.__value_.__l.__data_ + v11) = 47;
    if (v51 >= 0)
    {
      v14 = &__dst;
    }

    else
    {
      v14 = __dst;
    }

    if (v51 >= 0)
    {
      v15 = HIBYTE(v51);
    }

    else
    {
      v15 = *(&__dst + 1);
    }

    v16 = std::string::append(&v47, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49 = v16->__r_.__value_.__r.__words[2];
    *v48 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    memset(&v46, 0, sizeof(v46));
    sub_1000677C4(&v46, v18 + 1);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v46;
    }

    else
    {
      v19 = v46.__r_.__value_.__r.__words[0];
    }

    if (v18)
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      memmove(v19, v20, v18);
    }

    *(&v19->__r_.__value_.__l.__data_ + v18) = 47;
    if (v51 >= 0)
    {
      v21 = &__dst;
    }

    else
    {
      v21 = __dst;
    }

    if (v51 >= 0)
    {
      v22 = HIBYTE(v51);
    }

    else
    {
      v22 = *(&__dst + 1);
    }

    v23 = std::string::append(&v46, v21, v22);
    v47 = *v23;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    memset(&v46, 0, sizeof(v46));
    v24 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      sub_100005F2C(&__p, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v47;
    }

    sub_1003430EC(&__p, &v46);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v46.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v46.__r_.__value_.__l.__size_;
    }

    v27 = v47.__r_.__value_.__l.__size_;
    if ((v24 & 0x80000000) == 0)
    {
      v27 = v24;
    }

    if (size != v27 || ((v28 = v46.__r_.__value_.__r.__words[0], (v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v29 = &v46) : (v29 = v46.__r_.__value_.__r.__words[0]), (v24 & 0x80000000) == 0 ? (v30 = &v47) : (v30 = v47.__r_.__value_.__r.__words[0]), memcmp(v29, v30, size)))
    {
      sub_100342CFC();
      v32 = qword_101FBA278;
      v33 = os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_INFO);
      v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      v28 = v46.__r_.__value_.__r.__words[0];
      if (v33)
      {
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v34 = &v46;
        }

        else
        {
          v34 = v46.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v56 = v34;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Warning: using filename %s", buf, 0xCu);
        v25 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        v28 = v46.__r_.__value_.__r.__words[0];
      }
    }

    if (v49 >= 0)
    {
      v35 = v48;
    }

    else
    {
      v35 = v48[0];
    }

    if (v25 >= 0)
    {
      v36 = &v46;
    }

    else
    {
      v36 = v28;
    }

    rename(v35, v36, v31);
    if (v37)
    {
      if (v49 >= 0)
      {
        v38 = v48;
      }

      else
      {
        v38 = v48[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v39 = &v46;
      }

      else
      {
        v39 = v46.__r_.__value_.__r.__words[0];
      }

      v40 = __error();
      v41 = strerror(*v40);
      sub_100342DCC("Failed to rename %s to %s, err = %s", v38, v39, v41);
      v44 = 0;
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_93;
      }
    }

    else if ((v24 & 0x80000000) == 0)
    {
LABEL_93:
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48[0]);
      }

      v9 = HIBYTE(v51);
      goto LABEL_96;
    }

    operator delete(v47.__r_.__value_.__l.__data_);
    goto LABEL_93;
  }

  v44 = 1;
LABEL_105:
  *&__dst = &v52;
  sub_1000087B4(&__dst);
  return v44 & 1;
}

void sub_100344190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  *(v41 - 160) = v41 - 136;
  sub_1000087B4((v41 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_100344254(const char *a1, unsigned int a2)
{
  v14 = 1;
  v12[0] = 0;
  v12[1] = 0;
  v13 = getpid();
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = open(v4, 0);
  if ((v5 & 0x80000000) != 0)
  {
    sub_100342CFC();
    if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
    {
      sub_10176BDB8();
    }

LABEL_18:
    if (v5 != -1)
    {
      close(v5);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (a2 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = a2;
    }

    while (fcntl(v5, 9, v12) < 0)
    {
      sub_100342CFC();
      v7 = qword_101FBA278;
      if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
      {
        if (a1[23] >= 0)
        {
          v8 = a1;
        }

        else
        {
          v8 = *a1;
        }

        v9 = __error();
        v10 = strerror(*v9);
        *buf = 136315394;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to lock %s, err = %s", buf, 0x16u);
      }

      sleep(1u);
      if (!--v6)
      {
        goto LABEL_18;
      }
    }
  }

  return v5;
}

uint64_t sub_10034440C(uint64_t a1, int a2)
{
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  if (fcntl(a2, 9, v4) < 0)
  {
    sub_100342CFC();
    if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
    {
      sub_10176BE48();
    }
  }

  return close(a2);
}

void sub_1003444A0(uint64_t a1)
{
  sub_100342CFC();
  if (os_log_type_enabled(qword_101FBA278, OS_LOG_TYPE_ERROR))
  {
    sub_10176BED8(a1);
  }
}

void sub_1003444EC(id a1)
{
  v1 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v3, v1, LogGroupName);
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v3);
}

_BYTE *sub_10034454C(_BYTE *__dst, uint64_t *a2, unint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v5 = a2[1];
    if (v5 < a3)
    {
      goto LABEL_13;
    }

    v3 = *a2;
  }

  else if (v5 < a3)
  {
LABEL_13:
    sub_10013C334();
  }

  v6 = v5 - a3;
  if (v5 - a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  __dst[23] = v6;
  if (v5 != a3)
  {
    memmove(__dst, v3 + a3, v6);
  }

  __dst[v6] = 0;
  return __dst;
}

const char *sub_10034462C(int a1)
{
  if (a1)
  {
    return "Secondary";
  }

  else
  {
    return "Primary";
  }
}

void sub_100344648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __p = 0;
  v27 = 0uLL;
  LODWORD(v23[0]) = 0;
  sub_100344DA8(v23);
  bzero(&v28, 0x9C0uLL);
  v4 = std::random_device::operator()(v23);
  LODWORD(v28) = v4;
  for (i = 1; i != 624; ++i)
  {
    v4 = i + 1812433253 * (v4 ^ (v4 >> 30));
    *(&v28 + i) = v4;
  }

  v46 = 0;
  v47[0] = 0x630000000ALL;
  v6 = sub_100344E1C(v47, &v28, v47);
  std::to_string(&__dst, v6);
  v7 = std::string::insert(&__dst, 0, "boundary", 8uLL);
  v8 = v7->__r_.__value_.__r.__words[0];
  v50[0] = v7->__r_.__value_.__l.__size_;
  *(v50 + 7) = *(&v7->__r_.__value_.__r.__words[1] + 7);
  v9 = HIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  std::random_device::~random_device(v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }

  __p = v8;
  *&v27 = v50[0];
  *(&v27 + 7) = *(v50 + 7);
  HIBYTE(v27) = v9;
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
  *v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  *__src = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  sub_10000C320(&v28);
  v25[0] = &v28;
  v25[1] = &__p;
  sub_100344C70(v25, a1);
  sub_100917E0C(&v28);
  sub_100344C70(v25, a1 + 104);
  v10 = sub_10000501C(v50, "--");
  if (v27 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v27 >= 0)
  {
    v12 = HIBYTE(v27);
  }

  else
  {
    v12 = v27;
  }

  v13 = std::string::append(v10, p_p, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  sub_10000501C(v47, "--");
  if ((v48 & 0x80u) == 0)
  {
    v15 = v47;
  }

  else
  {
    v15 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v16 = v48;
  }

  else
  {
    v16 = v47[1];
  }

  v17 = std::string::append(&__dst, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  *v23 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  sub_10000C030(&v29);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if ((BYTE8(v35) & 0x10) != 0)
  {
    v20 = v35;
    if (v35 < __src[1])
    {
      *&v35 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
  }

  else
  {
    if ((BYTE8(v35) & 8) == 0)
    {
      v19 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_40;
    }

    v21 = *(&v30 + 1);
    v20 = *(&v31 + 1);
  }

  v19 = v20 - v21;
  if ((v20 - v21) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v19 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v20 - v21;
  if (v19)
  {
    memmove(&__dst, v21, v19);
  }

LABEL_40:
  __dst.__r_.__value_.__s.__data_[v19] = 0;
  sub_100C180E0(a2);
  std::operator+<char>();
  sub_100C18408((a2 + 40));
  if (v51 < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  *&v29 = v22;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[1]);
  }

  std::locale::~locale(&v30);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p);
  }
}

void sub_100344B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
  }

  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
  }

  if (*(v24 - 105) < 0)
  {
    operator delete(*(v24 - 128));
  }

  std::ios::~ios();
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100344C70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_10000501C(&v13, "--");
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::string::append(&v13, v7, v8);
  __p = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  sub_100917DBC(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1002049A4(*a1, "Content-Type", (a2 + 40));
  v10 = *a1;
  sub_100917F28((a2 + 80), &v13);
  TMKXPCServer.shutdown()();
  sub_100917DBC(v10);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return sub_100917DBC(*a1);
}

void sub_100344D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *sub_100344DA8(std::random_device *a1)
{
  sub_10000501C(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100344E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100344E1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_100344ED8(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_100344ED8(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_100344ED8(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_100344F78(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void sub_100345104(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _Unwind_Exception *exception_object)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_10176BF64((v18 + 8), (v17 + 8), (v16 + 96), a1, a2, &exception_object);
  v21 = exception_object;
  v22 = *(v16 + 88);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(v21);
}

const char *sub_100345184(int a1)
{
  v1 = "lazuli.ims.del.?";
  if (a1 == 2)
  {
    v1 = "lazuli.ims.del.2";
  }

  if (a1 == 1)
  {
    return "lazuli.ims.del.1";
  }

  else
  {
    return v1;
  }
}

void sub_1003451B0(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  operator new();
}

void sub_10034530C(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10176BFF4((v15 + 8), (v14 + 96), a1, a2, &exception_object);
  v18 = exception_object;
  v19 = *(v14 + 88);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(v18);
}

void sub_100345388(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_100347938();
}

void sub_1003453C4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_100347BBC();
}

void sub_1003453FC(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleIncomingChat] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067AF74(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345644(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionReady] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067E184(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10034588C(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMessageReceived] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067E654(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345AD4(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMessageSend] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100683DA8(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345D1C(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionEvent] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006852FC(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345F64(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionTerminated] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006843A0(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003461AC(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v21 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v23 = v13;
          v24 = 2081;
          v25 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantChange] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v17 = *a2;
        v18 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v17);
        object = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006863A4(v9);
        xpc_release(object);
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v18)
        {
          sub_100004A34(v18);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003463F4(uint64_t a1, xpc::object *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(__p, a2);
          v10 = v14 >= 0 ? __p : __p[0];
          *buf = 136380675;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleCapabilitiesReceived] %{private}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v11 = *a2;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068B2D0(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003465A8(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleGroupChatUpdate] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100688458(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003467F0(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleGroupChatCreated] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068728C(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346A38(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantAdded] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100689C34(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346C80(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantRemoved] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068A45C(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346EC8(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleLeaveGroupChat] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068AC84(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100347110(uint64_t a1, void **a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSpamReportResponse]", buf, 2u);
        }

        v10 = *a2;
        object = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10069E2B0(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100347214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100347244(uint64_t a1, void **a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMlsGroupInfoReceived]", buf, 2u);
        }

        v10 = *a2;
        object = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10069E720(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100347348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100347378(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v6 = SlotIdFromPersonalityId();
  v7 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2 ? "OK" : "(null)";
    xpc::object::to_string(__p, a3);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 136315395;
    v16 = v8;
    v17 = 2081;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [sendMessage] -> chat:%s, info: %{private}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *a2;
  v11 = *a3;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v10 + 32))(v10, &object);
  xpc_release(object);
}

void sub_100347548(uint64_t a1@<X0>, void *a2@<X1>, xpc::object *a3@<X2>, void *a4@<X8>)
{
  v8 = SlotIdFromPersonalityId();
  v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2 ? "OK" : "(null)";
    xpc::object::to_string(__p, a3);
    v11 = v18 >= 0 ? __p : __p[0];
    *buf = 136315395;
    v20 = v10;
    v21 = 2081;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [startChat] -> chat:%s, info: %{private}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = a2[1];
  v14 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  ims::lazuli::Chat::startChat();
  sub_1000CE134(a4, &v15);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(object);
  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_100347760(uint64_t a1)
{
  v2 = SlotIdFromPersonalityId();
  v3 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [getChatServices]", buf, 2u);
  }

  v4 = *(a1 + 56);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ims::lazuli::ChatServices::create();
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100347838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

ims::lazuli::ChatDelegate *sub_100347850(ims::lazuli::ChatDelegate *a1)
{
  sub_1000CE6E4(a1);
  v3 = *(v2 + 96);
  *(a1 + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1003478B4(ims::lazuli::ChatDelegate *a1)
{
  sub_1000CE6E4(a1);
  v3 = *(v2 + 96);
  *(a1 + 12) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

void sub_1003479DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E43B60;
  sub_100347AD4((a1 + 3), a2, a3, a4, a5);
}

void sub_100347A58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E43B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100347AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a4 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100344F78(a1);
}

void sub_100347B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100347C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E43B60;
  sub_100347CB4((a1 + 3), a2, a3, a4);
}

void sub_100347CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a4 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003451B0(a1);
}

void sub_100347D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100347D60(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 2;
  }

  else
  {
    return dword_1017F5DE4[a1 - 1];
  }
}

uint64_t sub_100347D84(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 2;
  }

  else
  {
    return dword_1017F5DFC[a1 - 1];
  }
}

uint64_t sub_100347DA8(uint64_t a1, void *a2, NSObject **a3, ctu::OsLogLogger *a4)
{
  v7 = ctu::OsLogLogger::OsLogLogger(a1, a4);
  v8 = a2[1];
  *(v7 + 8) = *a2;
  *(v7 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = *a3;
  *(a1 + 40) = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *(a1 + 48) = 0x500000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_100347E28(ctu::OsLogLogger *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

BOOL sub_100347EC0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 1;
  }

  if (v1 == 1 && !*(a1 + 56))
  {
    return *(a1 + 52) != 0;
  }

  return 0;
}

void sub_100347EF8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "";
    if (a2)
    {
      v5 = "permanent ";
    }

    v7 = 136315650;
    v8 = off_101FB1C60;
    v9 = 2080;
    v10 = ", ";
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sgot %sfailure report", &v7, 0x20u);
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 48) = v6;
  if ((a2 & 1) == 0)
  {
    sub_100347FF8(a1);
  }
}

void sub_100347FF8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = off_101FB1C60;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    v3 = "#I %s%sAlready waiting on timer";
    goto LABEL_4;
  }

  v6 = *(a1 + 52);
  if (v6)
  {
    *(a1 + 52) = v6 - 1;
    Registry::getTimerService(buf, *(a1 + 8));
    v7 = *buf;
    sub_10000501C(__p, "PSThrottlingEntitlements retry");
    v8 = *(a1 + 40);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100348490;
    aBlock[3] = &unk_101E43BC0;
    aBlock[4] = a1;
    v15 = _Block_copy(aBlock);
    sub_100D23364(v7, __p, 1, 60000000, &object, &v15);
    v9 = v19;
    v19 = 0;
    v10 = *(a1 + 56);
    *(a1 + 56) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v11 = v19;
      v19 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 52);
      *buf = 136315906;
      *&buf[4] = off_101FB1C60;
      *&buf[12] = 2080;
      *&buf[14] = ", ";
      v21 = 1024;
      v22 = 60;
      v23 = 1024;
      v24 = v13;
      v3 = "#I %s%sTriggering retry in %d seconds. %d retries left";
      v4 = v12;
      v5 = 34;
      goto LABEL_21;
    }
  }

  else
  {
    v2 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = off_101FB1C60;
      *&buf[12] = 2080;
      *&buf[14] = ", ";
      v3 = "#I %s%sNo more retries allowed";
LABEL_4:
      v4 = v2;
      v5 = 22;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }
}

void sub_1003482E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100348350(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = off_101FB1C60;
    v8 = 2080;
    v9 = ", ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sreset", &v6, 0x16u);
  }

  *(a1 + 48) = 0x500000000;
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    v4 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(a1 + 64) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_100348484(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100348490(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (!v5)
      {
LABEL_22:
        sub_100004A34(v4);
        return;
      }

      v6 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = off_101FB1C60;
        v15 = 2080;
        v16 = ", ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%scallback", &v13, 0x16u);
      }

      v7 = *(v1 + 56);
      *(v1 + 56) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v8 = *(v1 + 72);
      if (v8)
      {
        v9 = _Block_copy(v8);
        v10 = *(v1 + 72);
        *(v1 + 72) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (*(v1 + 48) != 1)
        {
          goto LABEL_20;
        }

        if (v9)
        {
          v9[2](v9);
        }

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (*(v1 + 48) != 1 || (v12 & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = 0;
      }

      (*(*v5 + 344))(v5, 0, 0);
LABEL_20:
      if (v9)
      {
        _Block_release(v9);
      }

      goto LABEL_22;
    }
  }
}

void sub_10034865C(_Unwind_Exception *a1)
{
  _Block_release(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1003486B0(void (***a1)(), uint64_t a2, int a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, a4);
  sub_100348BE0(a1 + 1, (a2 + 16), &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  v6 = off_101E43BF0;
  *a1 = off_101E43BF0;
  a1[6] = *a2;
  v7 = *(a2 + 8);
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a1;
  }

  v8 = (v6[25])(a1);
  sub_10000501C(&__p, v8);
  v9 = a1[3];
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  sub_1003508A4();
}

void sub_100348A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100DB14E0(v18 + 840);
  v24 = *(v18 + 832);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10013DF64(v18 + 800, *(v18 + 808));
  v25 = *(v18 + 792);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v18 + 776);
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (*(v18 + 767) < 0)
  {
    operator delete(*v21);
  }

  sub_10006DCAC(v18 + 712, *(v18 + 720));
  std::mutex::~mutex((v18 + 648));
  sub_10006DCAC(v18 + 624, *(v18 + 632));
  sub_10006DCAC(v18 + 600, *(v18 + 608));
  sub_10006EC28(v18 + 576, *(v18 + 584));
  if (*(v18 + 568) == 1 && *(v18 + 567) < 0)
  {
    operator delete(*(v18 + 544));
  }

  sub_1003509AC(v18 + 512, *(v18 + 520));
  std::mutex::~mutex((v18 + 448));
  v27 = *(v18 + 440);
  *(v18 + 440) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  sub_100347E28((v19 + 264));
  if (*(v18 + 344) == 1)
  {
    sub_1002B74B0(v20);
  }

  if (*(v18 + 143) < 0)
  {
    operator delete(*v22);
  }

  sub_10006EC28(v19, *(v18 + 104));
  v28 = *(v18 + 88);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v18 + 72);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v18 + 56);
  if (v30)
  {
    sub_100004A34(v30);
  }

  PhoneServicesControl::~PhoneServicesControl(v18);
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544((v18 + 8));
  _Unwind_Resume(a1);
}

void *sub_100348BE0(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100348C48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100348C6C(uint64_t a1)
{
  *a1 = off_101E43BF0;
  sub_100DB14E0(a1 + 840);
  v2 = *(a1 + 832);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10013DF64(a1 + 800, *(a1 + 808));
  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 776);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  sub_10006DCAC(a1 + 712, *(a1 + 720));
  std::mutex::~mutex((a1 + 648));
  sub_10006DCAC(a1 + 624, *(a1 + 632));
  sub_10006DCAC(a1 + 600, *(a1 + 608));
  sub_10006EC28(a1 + 576, *(a1 + 584));
  if (*(a1 + 568) == 1 && *(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_1003509AC(a1 + 512, *(a1 + 520));
  std::mutex::~mutex((a1 + 448));
  v5 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100347E28((a1 + 360));
  if (*(a1 + 344) == 1)
  {
    sub_1002B74B0(a1 + 144);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_10006EC28(a1 + 96, *(a1 + 104));
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    sub_100004A34(v8);
  }

  PhoneServicesControl::~PhoneServicesControl(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

const void **sub_100348E08(uint64_t a1)
{
  if (*(**(a1 + 80) + 49) == 1)
  {
    v2 = @"onfile.status.icloud";
  }

  else
  {
    v2 = @"onfile.status.sim";
  }

  v40 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v37 = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, &v37);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_12:
  v14 = kPhoneServicesWalletDomain;
  (*(*v12 + 24))(&v41, v12, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 1);
  sub_100010180(&v40, &v41);
  sub_10000A1EC(&v41);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v40)
  {
    goto LABEL_21;
  }

  sub_1006160F0(&v37);
  v39 = sub_1006160B8(v37, v2);
  v41 = 0;
  sub_100138C38(&v41, &v39);
  v15 = v40;
  v40 = v41;
  v41 = v15;
  sub_10001021C(&v41);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v40)
  {
    goto LABEL_21;
  }

  sub_1006160F0(&v37);
  v39 = sub_1006160B8(v37, @"onfile.status");
  v41 = 0;
  sub_100138C38(&v41, &v39);
  v16 = v40;
  v40 = v41;
  v41 = v16;
  sub_10001021C(&v41);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v40)
  {
LABEL_21:
    v17 = Registry::getServiceMap(*(a1 + 48));
    v18 = v17;
    v19 = v5;
    if (v5 < 0)
    {
      v20 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
    v37 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v37);
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
        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
LABEL_29:
    (*(*v25 + 16))(v25, **(a1 + 80) + 24, @"onfile.status", v40, v14, 0, 4, 0);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v27 = Registry::getServiceMap(*(a1 + 48));
    v28 = v27;
    if (v5 < 0)
    {
      v29 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v5 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v27);
    v37 = v5;
    v32 = sub_100009510(&v28[1].__m_.__sig, &v37);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
LABEL_39:
        (*(*v34 + 32))(v34, **(a1 + 80) + 24, @"onfile.status", v14, 0, 1);
        if ((v35 & 1) == 0)
        {
          sub_100004A34(v33);
        }

        sub_1006160F0(&v37);
        sub_100616054(v37, v2, 0);
        if (v38)
        {
          sub_100004A34(v38);
        }

        sub_1006160F0(&v37);
        sub_100616054(v37, @"onfile.status", 0);
        if (v38)
        {
          sub_100004A34(v38);
        }

        return sub_10001021C(&v40);
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v28);
    v33 = 0;
    v35 = 1;
    goto LABEL_39;
  }

  return sub_10001021C(&v40);
}

void sub_100349250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1003492DC(uint64_t a1)
{
  v2 = **(a1 + 80);
  v3 = *(v2 + 47);
  v4 = *(v2 + 32);
  if ((v3 & 0x80u) == 0)
  {
    v4 = v3;
  }

  if (v4)
  {
    sub_100348E08(a1);
    Registry::createRestModuleOneTimeUseConnection(&v15, *(a1 + 48));
    ctu::RestModule::connect();
    if (v16)
    {
      sub_100004A34(v16);
    }

    sub_100004AA0(buf, (a1 + 8));
    v6 = *buf;
    v5 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 392);
    *(a1 + 384) = v6;
    *(a1 + 392) = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    sub_100004AA0(buf, (a1 + 8));
    v8 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
    }

    sub_10000501C(v18, "/cc/props/carrier_entitlements_info");
    operator new();
  }

  std::mutex::lock((a1 + 448));
  v10 = 0;
  v11 = (a1 + 104);
  LODWORD(v17) = 0;
  do
  {
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_23;
    }

    v13 = a1 + 104;
    do
    {
      if (*(v12 + 32) >= v10)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < v10));
    }

    while (v12);
    if (v13 == v11 || v10 < *(v13 + 32))
    {
LABEL_23:
      v18[0] = 0;
      v18[1] = 0;
      sub_10034A388(v9, v10);
    }

    LODWORD(v17) = v10 + 1;
  }

  while (v10++ < 5);
  std::mutex::unlock((a1 + 448));
}

void sub_10034A028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    sub_100352130(&a35);
    sub_100222BDC(&a31);
    sub_100222BDC(&a27);
    sub_100352130((v43 + 24));
    a35 = v44 - 160;
    sub_1001018AC(&a35);
    sub_100222BDC(&a23);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034A2A8(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/remote_paired_device_list");
  v4[0] = off_101E44410;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10034A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034A388(uint64_t a1, unsigned int a2)
{
  if (a2 < 4)
  {
    operator new();
  }

  if (a2 != 4)
  {
    operator new();
  }

  operator new();
}

void sub_10034A4A8(uint64_t a1)
{
  v1 = **(a1 + 80);
  v2 = *(v1 + 47);
  v3 = *(v1 + 32);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  if (v3)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    v20 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
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
LABEL_12:
        v15 = (*(*v13 + 208))(&v18, v13);
        v16 = (a1 + 744);
        if (*(a1 + 767) < 0)
        {
          operator delete(*v16);
        }

        *v16 = v18;
        *(a1 + 760) = v19;
        HIBYTE(v19) = 0;
        LOBYTE(v18) = 0;
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        if (capabilities::ct::supportsThumperSourcing(v15))
        {
          sub_100004AA0(&v18, (a1 + 8));
          v17 = *(&v18 + 1);
          if (*(&v18 + 1))
          {
            atomic_fetch_add_explicit((*(&v18 + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v17);
          }

          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_10079D8A0();
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
            std::__shared_weak_count::__release_weak(v17);
          }
        }

        if (*(a1 + 344) == 1)
        {
          sub_10034A87C(a1, a1 + 192);
        }

        sub_10034AAA4(a1, 0);
        return;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }
}

void sub_10034A6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034A710(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10034A850(uint64_t result, uint64_t a2)
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

void sub_10034A86C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10034A87C(uint64_t a1, uint64_t a2)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v17 = 0;
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 111) < 0)
    {
      sub_100005F2C(__dst, *(a2 + 88), *(a2 + 96));
    }

    else
    {
      *__dst = *(a2 + 88);
      v17 = *(a2 + 104);
    }
  }

  else
  {
    sub_10000501C(__dst, "");
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      sub_100005F2C(__p, *(a2 + 120), *(a2 + 128));
    }

    else
    {
      *__p = *(a2 + 120);
      v15 = *(a2 + 136);
    }
  }

  else
  {
    sub_10000501C(__p, "");
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_19:
  (*(*v12 + 72))(v12, **(a1 + 80) + 24, __dst, __p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10034AA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034AAA4(uint64_t a1, int a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v4 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *v4;
    v22 = *(a1 + 136);
  }

  v20 = 0;
  *buf = MGCopyAnswer();
  sub_100222990(&v20, buf);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v5 = *buf;
  v25[0] = *&buf[8];
  *(v25 + 7) = *&buf[15];
  v6 = buf[23];
  if (*(a1 + 143) < 0)
  {
    operator delete(*v4);
  }

  v7 = v25[0];
  *(a1 + 120) = v5;
  *(a1 + 128) = v7;
  *(a1 + 135) = *(v25 + 7);
  *(a1 + 143) = v6;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = **(a1 + 80);
    if (v9)
    {
      v10 = PersonalityInfo::logPrefix(v9);
      v6 = *(a1 + 143);
    }

    else
    {
      v10 = "-1";
    }

    v11 = v4;
    if ((v6 & 0x80) != 0)
    {
      v11 = *v4;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sdisplayName: %s", buf, 0x20u);
  }

  if (a2)
  {
    if (v22 >= 0)
    {
      v12 = HIBYTE(v22);
    }

    else
    {
      v12 = __p[1];
    }

    v13 = *(a1 + 143);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a1 + 128);
    }

    if (v12 != v13 || (v22 >= 0 ? (v15 = __p) : (v15 = __p[0]), v14 >= 0 ? (v16 = v4) : (v16 = *v4), memcmp(v15, v16, v12)))
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = **(a1 + 80);
        if (v18)
        {
          v19 = PersonalityInfo::logPrefix(v18);
        }

        else
        {
          v19 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to re-issue getPhoneServicesAccountStatus", buf, 0x16u);
      }

      (*(*a1 + 384))(a1, 0);
    }
  }

  sub_100005978(&v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10034AD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10034ADC0(uint64_t a1, void *a2)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v12 = 136315394;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%srefresh PhoneServices account status", &v12, 0x16u);
    }

    *(a1 + 736) = 0;
    sub_100348350(a1 + 360);
    *(a1 + 352) = 0;
    result = (*(*a1 + 456))(a1, 1);
    v7 = *(a1 + 96);
    v8 = (a1 + 104);
    if (v7 != v8)
    {
      do
      {
        result = (*(*v7[5] + 160))(v7[5]);
        v9 = v7[1];
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
            v10 = v7[2];
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v8);
    }
  }

  return result;
}

uint64_t sub_10034AF5C(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 260) == 1)
  {
    v3 = *(a1 + 256);
    if (v3 <= 2)
    {
      return dword_1017F5E14[v3];
    }
  }

  return 0;
}

uint64_t sub_10034AFC4(uint64_t a1)
{
  if (*(a1 + 840) != 2)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v31 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v31);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
LABEL_10:
  isWatch = GestaltUtilityInterface::isWatch(v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (isWatch)
  {
    v12 = @"EnableWiFiCallingWithoutEntitlementInStandaloneMode";
    goto LABEL_15;
  }

LABEL_14:
  v12 = @"EnableWiFiCallingWithoutEntitlement";
LABEL_15:
  v13 = Registry::getServiceMap(*(a1 + 48));
  v14 = v13;
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

  std::mutex::lock(v13);
  v31 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v31);
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
      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_23:
  isIPhone = GestaltUtilityInterface::isIPhone(v21);
  v24 = &kCFBooleanTrue;
  if (!isIPhone)
  {
    v24 = &kCFBooleanFalse;
  }

  (*(*a1 + 472))(&cf, a1, v12, *v24);
  v25 = cf;
  LOBYTE(v31) = 0;
  if (cf)
  {
    v26 = CFGetTypeID(cf);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v31, v25, v27);
      LOBYTE(v25) = v31;
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v28 = sub_1001E8470(a1 + 800, (**(a1 + 80) + 24), 7u);
  return (v28 != 1) & (v28 >> 8);
}

void sub_10034B248(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034B28C(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 268) == 1)
  {
    v3 = *(a1 + 264);
    if (v3 <= 2)
    {
      return dword_1017F5E14[v3];
    }
  }

  return 0;
}

uint64_t sub_10034B2F4(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 276) == 1)
  {
    v3 = *(a1 + 272);
    if (v3 <= 4)
    {
      return dword_1017F5E20[v3];
    }
  }

  return 0;
}

BOOL sub_10034B35C(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
    return 1;
  }

  if (*(a1 + 344) != 1)
  {
    return 0;
  }

  if (*(a1 + 276) == 1 && *(a1 + 272) == 3 || *(a1 + 268) == 1 && *(a1 + 264) == 3)
  {
    return 1;
  }

  return *(a1 + 260) == 1 && *(a1 + 256) == 3;
}

BOOL sub_10034B3CC(uint64_t a1)
{
  if (*(a1 + 344) != 1 || *(a1 + 216) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 215);
  if (v1 < 0)
  {
    v1 = *(a1 + 200);
  }

  return v1 != 0;
}

uint64_t sub_10034B404(uint64_t a1)
{
  v2 = sub_10034AF5C(a1);
  v3 = sub_10034B28C(a1);
  LODWORD(result) = sub_10034B2F4(a1);
  if (v3 >= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (result >= v5)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10034B458(uint64_t a1, int a2, unsigned int a3)
{
  if (*(**(a1 + 80) + 48) != 1)
  {
    return 0;
  }

  if (a2 && sub_10034B404(a1) != 1 || *(a1 + 344) != 1 || !sub_10034B74C(a1 + 144) || *(a1 + 352) != 1)
  {
    if (*(a1 + 344) == 1 && (sub_10034B74C(a1 + 144) & 1) != 0)
    {
      v7 = *(a1 + 352);
      v8 = *(a1 + 40);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          v10 = **(a1 + 80);
          if (v10)
          {
            v11 = PersonalityInfo::logPrefix(v10);
          }

          else
          {
            v11 = "-1";
          }

          v19 = sub_10034AF5C(a1);
          v20 = sub_10060FFE4(v19);
          v21 = sub_10034B28C(a1);
          v22 = sub_10060FFE4(v21);
          v23 = sub_10034B2F4(a1);
          v24 = 136316162;
          v25 = v11;
          v26 = 2080;
          v27 = " ";
          v28 = 2080;
          v29 = v20;
          v30 = 2080;
          v31 = v22;
          v32 = 2080;
          v33 = sub_10060FFE4(v23);
          v14 = "#I %s%saccount status re-requested because: is911AddrStatusOK:%s, isTcStatusOK:%s, isAccountProvisioned:%s";
          v15 = v8;
          v16 = 52;
          goto LABEL_21;
        }

LABEL_22:
        (*(*a1 + 384))(a1, a2 | a3);
        goto LABEL_23;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

      v17 = **(a1 + 80);
      if (v17)
      {
        v18 = PersonalityInfo::logPrefix(v17);
      }

      else
      {
        v18 = "-1";
      }

      v24 = 136315394;
      v25 = v18;
      v26 = 2080;
      v27 = " ";
      v14 = "#I %s%saccount status need to be refreshed, it's time to";
    }

    else
    {
      v8 = *(a1 + 40);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v12 = **(a1 + 80);
      if (v12)
      {
        v13 = PersonalityInfo::logPrefix(v12);
      }

      else
      {
        v13 = "-1";
      }

      v24 = 136315394;
      v25 = v13;
      v26 = 2080;
      v27 = " ";
      v14 = "#I %s%saccount status is not present";
    }

    v15 = v8;
    v16 = 22;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
    goto LABEL_22;
  }

LABEL_23:
  (*(*a1 + 456))(a1, 0);
  return sub_10034B404(a1);
}

uint64_t sub_10034B74C(uint64_t a1)
{
  v13 = 0;
  *__p = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  *v4 = 0u;
  sub_1003507D4(v4, a1 + 48);
  v1 = BYTE4(v8);
  v2 = BYTE12(v8);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (BYTE8(v7) == 1 && SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (BYTE8(v5) == 1 && SBYTE7(v5) < 0)
  {
    operator delete(v4[0]);
  }

  return (v1 | v2) & 1;
}

uint64_t sub_10034B824(uint64_t a1)
{
  *(a1 + 353) = 0;
  *(a1 + 736) = 0;
  return (*(*a1 + 304))();
}

void sub_10034B858(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v15 = 136315394;
    *&v15[4] = v4;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%saccount status dropped", v15, 0x16u);
  }

  if (*(a1 + 344) == 1)
  {
    sub_1002B74B0(a1 + 144);
    *(a1 + 344) = 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v15);
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
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_16:
  (*(*v13 + 32))(v13, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 4);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10034BA40(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034BA70(uint64_t a1)
{
  if (*(a1 + 344) != 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
    *v25 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, v25);
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
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_13:
    (*(*v13 + 32))(v13, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 4);
    if (v14)
    {
      return;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v25 = 136315394;
    *&v25[4] = v4;
    v26 = 2080;
    v27 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%saccount status result reset", v25, 0x16u);
  }

  sub_10034BDA8(a1 + 144);
  v15 = Registry::getServiceMap(*(a1 + 48));
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
  *v25 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v25);
  if (v21)
  {
    v22 = v21[3];
    v12 = v21[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v16);
  v12 = 0;
  v23 = 1;
LABEL_26:
  v24 = **(a1 + 80);
  sub_1006152B0(a1 + 144, v25);
  (*(*v22 + 16))(v22, v24 + 24, @"onfile.status", *v25, kPhoneServicesWalletDomain, 0, 4, 0);
  sub_10001021C(v25);
  if (v23)
  {
    return;
  }

LABEL_14:
  sub_100004A34(v12);
}

void sub_10034BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10001021C(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10034BDA8(uint64_t a1)
{
  memset(__str, 0, sizeof(__str));
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__str, *a1, *(a1 + 8));
  }

  else
  {
    __str[0] = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&__str[1], *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __str[1] = *(a1 + 24);
  }

  v11 = 0;
  *__p = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  v4 = 0u;
  *v5 = 0u;
  *v3 = 0u;
  memset(v2, 0, sizeof(v2));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = 0u;
  *(a1 + 16) = v2[0];
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v2[1];
  *(a1 + 40) = 0;
  sub_10016A270(a1 + 48, v3);
  sub_10016A270(a1 + 80, v5);
  *(a1 + 112) = v7[0];
  *(a1 + 125) = *(v7 + 13);
  sub_10016A270(a1 + 136, (&v7[1] + 8));
  sub_10016A270(a1 + 168, &__p[1]);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v8) < 0)
  {
    operator delete(*(&v7[1] + 1));
  }

  if (BYTE8(v6) == 1 && SBYTE7(v6) < 0)
  {
    operator delete(v5[0]);
  }

  if (BYTE8(v4) == 1 && SBYTE7(v4) < 0)
  {
    operator delete(v3[0]);
  }

  std::string::operator=(a1, __str);
  std::string::operator=((a1 + 24), &__str[1]);
  if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[0].__r_.__value_.__l.__data_);
  }
}

void sub_10034BFB8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034BFF4(uint64_t a1, int a2, int **a3)
{
  switch(a2)
  {
    case 1:
      sub_100347EF8(a1 + 360, 0);
      break;
    case 2:
      v8 = 0;
LABEL_26:
      v9 = 0;
      return v8 | (v9 << 8);
    case 3:
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = **(a1 + 80);
        if (v6)
        {
          v7 = PersonalityInfo::logPrefix(v6);
        }

        else
        {
          v7 = "-1";
        }

        v10 = sub_100531604(**a3);
        v17 = 136315650;
        v18 = v7;
        v19 = 2080;
        v20 = " ";
        v21 = 2080;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sentitlement response code %s", &v17, 0x20u);
      }

      v11 = **a3;
      v8 = 1;
      if ((v11 - 6000) <= 0x14)
      {
        if (((1 << (v11 - 112)) & 0x103F3E) != 0)
        {
          goto LABEL_21;
        }

        if (v11 == 6000)
        {
          sub_100348350(a1 + 360);
          v9 = 1;
          return v8 | (v9 << 8);
        }
      }

      if ((v11 - 6300) >= 3 && v11 != 6201)
      {
        goto LABEL_26;
      }

LABEL_21:
      sub_100347EF8(a1 + 360, 0);
      *(a1 + 424) = 1;
      sub_100347FF8(a1 + 360);
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = **(a1 + 80);
        if (v14)
        {
          v15 = PersonalityInfo::logPrefix(v14);
        }

        else
        {
          v15 = "-1";
        }

        v17 = 136315394;
        v18 = v15;
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier reported temporary failure, need to retry", &v17, 0x16u);
      }

      goto LABEL_26;
  }

  v9 = 0;
  v8 = 1;
  return v8 | (v9 << 8);
}

void sub_10034C210(uint64_t a1, void *a2, int a3, void *a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = **(a1 + 80);
      if (v8)
      {
        v9 = PersonalityInfo::logPrefix(v8);
      }

      else
      {
        v9 = "-1";
      }

      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v48 = 2080;
      v49 = sub_100A38E30(a3);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Phone Services Account Status Update ==(cause:%s)==============================", buf, 0x20u);
    }

    v10 = a4[1];
    v46[0] = *a4;
    v46[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = sub_10034BFF4(a1, a3, v46);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v11)
    {
      *(a1 + 353) = 0;
      if ((v11 & 0x100) == 0 || *(a1 + 344) != 1)
      {
LABEL_30:
        if (*(a1 + 344) == 1 && (*(a1 + 276) == 1 && *(a1 + 272) == 3 || *(a1 + 268) == 1 && *(a1 + 264) == 3 || *(a1 + 260) == 1 && *(a1 + 256) == 3))
        {
          if (!*(a1 + 440))
          {
            v27 = *(a1 + 736);
            if (v27)
            {
              v28 = v27 - 1;
            }

            else
            {
              v28 = 3;
            }

            *(a1 + 736) = v28;
          }
        }

        else
        {
          *(a1 + 736) = 0;
          v29 = *(a1 + 440);
          if (v29)
          {
            (*(*v29 + 16))(v29);
            v30 = *(a1 + 440);
            *(a1 + 440) = 0;
            if (v30)
            {
              (*(*v30 + 8))(v30);
            }
          }
        }

        (*(*a1 + 344))(a1, 0, 0);
        if ((*(a1 + 353) & 1) == 0 && *(a1 + 736) && !*(a1 + 440))
        {
          sub_100004AA0(buf, (a1 + 8));
          v32 = *buf;
          v31 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v31);
          }

          v33 = *(a1 + 736);
          Registry::getTimerService(buf, *(a1 + 48));
          v34 = *buf;
          sub_10000501C(__p, "RegisteredProvisioningStatus::kInProgress retry");
          v35 = *(a1 + 24);
          object = v35;
          if (v35)
          {
            dispatch_retain(v35);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_10034C950;
          aBlock[3] = &unk_101E43E08;
          aBlock[4] = a1;
          aBlock[5] = v32;
          v40 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v41 = _Block_copy(aBlock);
          sub_100D23364(v34, __p, 1, 60000000 * (4 - v33), &object, &v41);
          v36 = v45;
          v45 = 0;
          v37 = *(a1 + 440);
          *(a1 + 440) = v36;
          if (v37)
          {
            (*(*v37 + 8))(v37);
            v38 = v45;
            v45 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if (v41)
          {
            _Block_release(v41);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_weak(v40);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_weak(v31);
          }
        }

        return;
      }

      *(a1 + 352) = 1;
      v12 = *(*a4 + 24);
      sub_10012BF3C((a1 + 192), v12);
      sub_10012BF3C((a1 + 224), (v12 + 32));
      v13 = *(v12 + 64);
      *(a1 + 269) = *(v12 + 77);
      *(a1 + 256) = v13;
      sub_10012BF3C((a1 + 280), (v12 + 88));
      sub_10012BF3C((a1 + 312), (v12 + 120));
      v45 = 0;
      sub_1006152B0(a1 + 144, &v45);
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = **(a1 + 80);
        if (v15)
        {
          v16 = PersonalityInfo::logPrefix(v15);
        }

        else
        {
          v16 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sPSAS:", buf, 0x16u);
      }

      *buf = off_101E44490;
      *&buf[8] = a1;
      v49 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
LABEL_27:
          (*(*v25 + 16))(v25, **(a1 + 80) + 24, @"onfile.status", v45, kPhoneServicesWalletDomain, 0, 4, 0);
          if ((v26 & 1) == 0)
          {
            sub_100004A34(v24);
          }

          sub_10034A87C(a1, *(*a4 + 24));
          sub_10001021C(&v45);
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
      goto LABEL_27;
    }
  }
}

void sub_10034C874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034C950(void *a1)
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
        v6 = *(v3 + 440);
        *(v3 + 440) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        (*(*v3 + 384))(v3, *(v3 + 736) != 0);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10034CA3C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v13 = a2;
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1[10];
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(v7);
    }

    else
    {
      v8 = "-1";
    }

    v9 = asString();
    v10 = "";
    *buf = 136315906;
    v15 = v8;
    v17 = " ";
    v16 = 2080;
    if (a3)
    {
      v10 = " with notify";
    }

    v18 = 2080;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sforceUpdateAccountStatus for %s%s", buf, 0x2Au);
  }

  if (a3)
  {
    sub_1000C4284((a1 + 78), &v13);
    v4 = v13;
  }

  v11 = (*(*a1 + 440))(a1, v4);
  v12 = (*(*a1 + 384))(a1, 1);
  (*(*a1 + 456))(a1, 1);
  if ((v11 & 1) == 0 && (v12 & 1) == 0)
  {
    if (a3)
    {
      sub_10034CC54(a1, v13);
      sub_10034CD9C(a1, v13, 0);
    }
  }
}

uint64_t *sub_10034CC54(uint64_t *result, int a2)
{
  v8 = a2;
  v2 = result[79];
  if (v2)
  {
    v3 = result;
    v4 = result + 79;
    do
    {
      if (*(v2 + 28) >= a2)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < a2));
    }

    while (v2);
    if (v4 != result + 79 && *(v4 + 7) <= a2)
    {
      v5 = result[5];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v3[10];
        if (v6)
        {
          v7 = PersonalityInfo::logPrefix(v6);
        }

        else
        {
          v7 = "-1";
        }

        *buf = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = " ";
        v13 = 2080;
        v14 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s, request found, notification forced", buf, 0x20u);
      }

      sub_10012B6B8((v3 + 78), &v8);
      return sub_1000C4284((v3 + 75), &v8);
    }
  }

  return result;
}

void sub_10034CD9C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v81 = a2;
  v6 = **(a1 + 80);
  if (*(v6 + 48))
  {
    goto LABEL_2;
  }

  v28 = *(a1 + 40);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(v6);
      v31 = asString();
      v32 = **(a1 + 80);
      v35 = *(v32 + 24);
      v33 = (v32 + 24);
      v34 = v35;
      v36 = *(v33 + 23);
      v37 = v36;
      if ((v36 & 0x80u) != 0)
      {
        v36 = *(v33 + 1);
      }

      if (v37 < 0)
      {
        v33 = v34;
      }

      if (!v36)
      {
        v33 = "<invalid>";
      }

      LODWORD(keys[0]) = 136315906;
      *(keys + 4) = v30;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      v83 = v31;
      v84 = 2080;
      v85 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s capability notification and update forced for inactive personality %s", keys, 0x2Au);
      v4 = v81;
    }

LABEL_2:
    v79 = 0;
    theDict = 0;
    (*(*a1 + 360))(&v79, a1, v4);
    v77 = 0;
    v78 = 0;
    (*(*a1 + 352))(&v77, a1, v81);
    v76 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = v76;
      v76 = Mutable;
      keys[0] = v8;
      sub_1000296E0(keys);
    }

    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      if (Count)
      {
        memset(keys, 0, sizeof(keys));
        sub_100222418(keys, Count);
        values = 0;
        v74 = 0;
        v75 = 0;
        sub_10007D780(&values, Count);
        CFDictionaryGetKeysAndValues(theDict, keys[0], values);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            CFDictionaryAddValue(v76, keys[0][i], values[i]);
          }
        }

        if (values)
        {
          v74 = values;
          operator delete(values);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }
    }

    if (v78)
    {
      v11 = CFDictionaryGetCount(v78);
      if (v11)
      {
        memset(keys, 0, sizeof(keys));
        sub_100222418(keys, v11);
        values = 0;
        v74 = 0;
        v75 = 0;
        sub_10007D780(&values, v11);
        CFDictionaryGetKeysAndValues(v78, keys[0], values);
        if (v11 >= 1)
        {
          for (j = 0; j != v11; ++j)
          {
            CFDictionaryAddValue(v76, keys[0][j], values[j]);
          }
        }

        if (values)
        {
          v74 = values;
          operator delete(values);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }
    }

    if (v79)
    {
      v13 = kCFBooleanTrue;
    }

    else
    {
      v13 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v76, kCTCapabilityCanSet, v13);
    if (v77)
    {
      v14 = kCFBooleanTrue;
    }

    else
    {
      v14 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v76, kCTCapabilityStatus, v14);
    values = 0;
    (*(*a1 + 432))(&values, a1, v81);
    if (values)
    {
      CFDictionaryAddValue(v76, kPSAccountDetails, values);
    }

    v72 = 0;
    v15 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v15)
    {
      v16 = v72;
      v72 = v15;
      keys[0] = v16;
      v15 = sub_1000296E0(keys);
    }

    v17 = sub_10034DF18(v15, v81);
    CFDictionarySetValue(v72, v17, v76);
    std::mutex::lock((a1 + 448));
    v19 = *(a1 + 520);
    v20 = v81;
    if (!v19)
    {
      goto LABEL_39;
    }

    v21 = a1 + 520;
    do
    {
      if (*(v19 + 32) >= v81)
      {
        v21 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 32) < v81));
    }

    while (v19);
    if (v21 != a1 + 520 && v81 >= *(v21 + 32))
    {
      v18 = CFEqual(*(v21 + 40), v72);
      if (v18)
      {
        v46 = *(a1 + 40);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = **(a1 + 80);
          if (v47)
          {
            v48 = PersonalityInfo::logPrefix(v47);
          }

          else
          {
            v48 = "-1";
          }

          v70 = asString();
          LODWORD(keys[0]) = 136315650;
          *(keys + 4) = v48;
          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v70;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s%skCTEventCallCapabilitiesChanged.%s - no changes", keys, 0x20u);
        }

        std::mutex::unlock((a1 + 448));
        v50 = 0;
LABEL_73:
        v51 = *(a1 + 608);
        if (v51)
        {
          v52 = a1 + 608;
          do
          {
            if (*(v51 + 28) >= v81)
            {
              v52 = v51;
            }

            v51 = *(v51 + 8 * (*(v51 + 28) < v81));
          }

          while (v51);
          if (v52 != a1 + 608 && *(v52 + 28) <= v81)
          {
            goto LABEL_88;
          }
        }

        if ((v50 | a3) != 1)
        {
          goto LABEL_114;
        }

        v53 = *(a1 + 632);
        if (!v53)
        {
          goto LABEL_88;
        }

        v54 = a1 + 632;
        do
        {
          if (*(v53 + 28) >= v81)
          {
            v54 = v53;
          }

          v53 = *(v53 + 8 * (*(v53 + 28) < v81));
        }

        while (v53);
        if (v54 == a1 + 632 || *(v54 + 28) > v81)
        {
LABEL_88:
          sub_10012B6B8(a1 + 600, &v81);
          v56 = **(a1 + 80);
          if (*(v56 + 13) != 2)
          {
            ctu::cf_to_xpc(keys, v72, v55);
            object = xpc_null_create();
            sub_10002A37C(75, keys, &object);
            xpc_release(object);
            xpc_release(keys[0]);
            v56 = **(a1 + 80);
          }

          v57 = *(a1 + 768);
          PersonalityInfo::uuid(keys, v56);
          (*(*v57 + 16))(v57, keys[0], v72);
          sub_1000475BC(keys);
          v58 = *(a1 + 40);
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_107;
          }

          v59 = **(a1 + 80);
          if (v59)
          {
            v60 = PersonalityInfo::logPrefix(v59);
          }

          else
          {
            v60 = "-1";
          }

          v64 = asString();
          v65 = "requested";
          LODWORD(keys[0]) = 136315906;
          *(keys + 4) = v60;
          if (a3)
          {
            v65 = "forced";
          }

          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v64;
          if (v50)
          {
            v65 = "update";
          }

          v84 = 2080;
          v85 = v65;
          v66 = "#I %s%skCTEventCallCapabilitiesChanged.%s notification sent, reason: %s";
          v67 = v58;
          v68 = 42;
        }

        else
        {
LABEL_114:
          if (!v50)
          {
            goto LABEL_107;
          }

          v61 = *(a1 + 40);
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_107;
          }

          v62 = **(a1 + 80);
          if (v62)
          {
            v63 = PersonalityInfo::logPrefix(v62);
          }

          else
          {
            v63 = "-1";
          }

          v69 = asString();
          LODWORD(keys[0]) = 136315650;
          *(keys + 4) = v63;
          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v69;
          v66 = "#I %s%skCTEventCallCapabilitiesChanged.%s notification suppressed";
          v67 = v61;
          v68 = 32;
        }

        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v66, keys, v68);
LABEL_107:
        sub_1000296E0(&v72);
        sub_10001021C(&values);
        sub_1000296E0(&v76);
        sub_10001021C(&v78);
        sub_10001021C(&theDict);
        return;
      }

      v22 = *(v21 + 40);
      v20 = v81;
    }

    else
    {
LABEL_39:
      v22 = 0;
    }

    v23 = sub_10034DF9C(v18, v20, v22, v72);
    sub_100354D58(a1 + 512, &v81);
    LODWORD(keys[0]) = v81;
    sub_100010180(&keys[1], &v72);
    sub_100354DE4(a1 + 512, keys);
    v24 = sub_10001021C(&keys[1]);
    if (v81 == 1 && capabilities::ct::supportsThumperSourcing(v24))
    {
      sub_10034E0D4();
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = **(a1 + 80);
      if (v26)
      {
        v27 = PersonalityInfo::logPrefix(v26);
      }

      else
      {
        v27 = "-1";
      }

      v49 = asString();
      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v27;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      v83 = v49;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%skCTEventCallCapabilitiesChanged.%s changed", keys, 0x20u);
      std::mutex::unlock((a1 + 448));
      if (!v23)
      {
        goto LABEL_72;
      }
    }

    else
    {
      std::mutex::unlock((a1 + 448));
      if (!v23)
      {
        goto LABEL_72;
      }
    }

    sub_10034E370();
LABEL_72:
    v50 = 1;
    goto LABEL_73;
  }

  if (v29)
  {
    v38 = PersonalityInfo::logPrefix(v6);
    v39 = asString();
    v40 = **(a1 + 80);
    v43 = *(v40 + 24);
    v41 = (v40 + 24);
    v42 = v43;
    v44 = *(v41 + 23);
    v45 = v44;
    if ((v44 & 0x80u) != 0)
    {
      v44 = *(v41 + 1);
    }

    if (v45 < 0)
    {
      v41 = v42;
    }

    if (!v44)
    {
      v41 = "<invalid>";
    }

    LODWORD(keys[0]) = 136315906;
    *(keys + 4) = v38;
    WORD2(keys[1]) = 2080;
    *(&keys[1] + 6) = " ";
    HIWORD(keys[2]) = 2080;
    v83 = v39;
    v84 = 2080;
    v85 = v41;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s capability notification and update are suppressed because personality %s is inactive", keys, 0x2Au);
  }
}