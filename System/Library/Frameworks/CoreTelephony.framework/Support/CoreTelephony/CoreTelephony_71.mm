void sub_10048A808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048A828(uint64_t *a1, void *a2)
{
  if (sub_100094EA8(a1))
  {

    return sub_100094F40(a1);
  }

  else
  {
    sub_100117E48(v7, a2);
    v5 = a1[2];
    if (v5 >= a1[3])
    {
      v6 = sub_10049F344(a1 + 1, v7);
    }

    else
    {
      sub_10049F2B0((a1 + 1), v7);
      v6 = v5 + 72;
    }

    a1[2] = v6;
    sub_100117ED8(v7);
    return a1[2] - 72;
  }
}

void sub_10048A8D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100117ED8(va);
  _Unwind_Resume(a1);
}

void sub_10048A8E4(uint64_t a1, int a2, char **a3)
{
  if ((validContextType() & 1) == 0)
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 136315394;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = asString();
    v15 = "#E %s: wrong context type: %s";
    v16 = v14;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v17, 0x16u);
    return;
  }

  v6 = *a3;
  v7 = *(a1 + 72);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!v8)
    {
      return;
    }

    v17 = 136315394;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = asString();
    v15 = "#N %s: data driver is empty for: %s";
    v16 = v7;
    goto LABEL_16;
  }

  if (v8)
  {
    (*(*&v6[*(*v6 - 56)] + 24))(&v6[*(*v6 - 56)]);
    v17 = 136315650;
    *v18 = "unregisterDataDriver";
    *&v18[8] = 2080;
    *&v18[10] = subscriber::asString();
    v19 = 2080;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: Unregistering driver %s for context type: %s", &v17, 0x20u);
    v6 = *a3;
  }

  v9 = *(a1 + 136);
  (*(*&v6[*(*v6 - 56)] + 16))(&v17);
  v10 = sub_100094EA8(v9);
  if (*&v18[4])
  {
    sub_100004A34(*&v18[4]);
  }

  if (v10)
  {
    v11 = *(a1 + 136);
    (*(*&(*a3)[*(**a3 - 56)] + 16))(&v17);
    v12 = sub_100094F40(v11) + 16 * a2;
    v13 = *(v12 + 32);
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    if (v13)
    {
      sub_100004A34(v13);
    }

    if (*&v18[4])
    {
      sub_100004A34(*&v18[4]);
    }
  }
}

void sub_10048ABA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048ABCC(void *a1, uint64_t a2)
{
  v11 = 0;
  v4 = a1[18];
  if (v4)
  {
    (*(*(v4 + *(*v4 - 56)) + 16))(buf);
    v5 = *buf;
    v11 = *&buf[8];
    v6 = a1[9];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextAborted";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: active settings aborted", buf, 0xCu);
    }

    (*(*a1[18] + 392))(a1[18], a2);
  }

  else
  {
    v5 = 0;
  }

  if (validContextType())
  {
    if (v5 && sub_100094EA8(a1[17]) && *(sub_100094F40(a1[17]) + 16 * a2 + 24))
    {
      v7 = *(sub_100094F40(a1[17]) + 16 * a2 + 24);
      v8 = sub_10048AE40(a1);
      (*(*v7 + 184))(v7, v8);
    }
  }

  else
  {
    v9 = a1[9];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      *buf = 136315394;
      *&buf[4] = "handleDataContextAborted";
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: wrong context type: %s", buf, 0x16u);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10048AE14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048AE40(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 56))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_10048AEC0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048AEE0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 144);
  if (v3)
  {
    v6 = result;
    v7 = *(result + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "handleDataContextMOBIKEDone";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: active settings mobike done", &v8, 0xCu);
      v3 = *(v6 + 144);
    }

    return (*(*v3 + 400))(v3, a2, a3);
  }

  return result;
}

uint64_t sub_10048AFE8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 144);
  if (v2)
  {
    v4 = result;
    v5 = *(result + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "retryPendingActivations";
      v8 = 2080;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: retrying for %s", &v6, 0x16u);
      v2 = *(v4 + 144);
    }

    return (*(*v2 + 408))(v2, a2);
  }

  return result;
}

void sub_10048B0F4(uint64_t a1, unsigned int a2, unint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "proxyUpdate";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: start", buf, 0xCu);
  }

  if (*(a1 + 144))
  {
    v9 = *a3;
    v10 = a3[1];
    if (*a3 != v10)
    {
      do
      {
        v11 = *(a1 + 72);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = v9;
          if (*(v9 + 23) < 0)
          {
            v12 = *v9;
          }

          *buf = 136315394;
          v17 = "proxyUpdate";
          v18 = 2080;
          v19 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Adding ipv proxy %s", buf, 0x16u);
        }

        v9 += 24;
      }

      while (v9 != v10);
    }

    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
      v15 = "";
      v17 = "proxyUpdate";
      *buf = 136315650;
      if (a4)
      {
        v15 = " in handover";
      }

      v18 = 2048;
      v19 = v14;
      v20 = 2080;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: Read %lu Proxies%s. Posting event", buf, 0x20u);
    }

    (*(**(a1 + 144) + 416))(*(a1 + 144), a2, a3, a4);
  }
}

uint64_t sub_10048B340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "applicationIDUpdate";
    v10 = 1024;
    v11 = a3;
    v12 = 2080;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: application ID update: appId=%d for %s", &v8, 0x1Cu);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 424))(result, a2, a3);
  }

  return result;
}

void sub_10048B458(uint64_t a1, const void *a2, int64_t __n)
{
  v5 = a1 + 376;
  *(a1 + 384) = -1;
  *(a1 + 376) = -1;
  if (__n > 9 || (memcpy((a1 + 376), a2, __n), __n >= 1))
  {
    v6 = 0;
    do
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + v6);
        *buf = 67109376;
        v10 = v6;
        v11 = 1024;
        v12 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fSnssaiArray[%d]=%d", buf, 0xEu);
      }

      ++v6;
    }

    while (__n != v6);
  }
}

void sub_10048B584(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101771FA0();
    }
  }

  else
  {

    sub_10048B5D4(a1, a2);
  }
}

void sub_10048B5D4(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I set PduSessionId=%d", v5, 8u);
  }

  *(a1 + 408) = a2;
}

uint64_t sub_10048B688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "handleDataContextIPDidGetPcoInfo";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: got pco context ip", &v10, 0xCu);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 432))(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_10048B790(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 144);
  if (v4)
  {
    v8 = result;
    v9 = *(result + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "resetActivationBlocker";
      v12 = 2080;
      v13 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker: %s", &v10, 0x16u);
      v4 = *(v8 + 144);
    }

    return (*(*v4 + 440))(v4, a2, a3, a4, 0);
  }

  return result;
}

void sub_10048B8B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v7 = *(a1 + 72);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "setActivationBlocker";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: ActivationBlocker", buf, 0xCu);
      v3 = *(a1 + 144);
    }

    v8 = a3[1];
    v9 = *a3;
    v10 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 456))(v3, a2, &v9);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10048B9D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048B9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 240))();
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 240))();
  }

  *a3 = 0;
  a3[1] = 0;
  return result;
}

uint64_t sub_10048BA3C(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_10048BA74(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 464))();
  }

  return result;
}

uint64_t sub_10048BAAC(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_10048BADC(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 168))();
  }

  return result;
}

uint64_t sub_10048BB0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10048BB48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_10048BB84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 472))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_10048BBC0(uint64_t a1@<X0>, CIPFamily *a2@<X8>)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    (*(*v2 + 480))();
  }

  else
  {
    CIPFamily::CIPFamily(a2);
  }
}

uint64_t sub_10048BC04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 488))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_10048BC44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 488))();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

uint64_t sub_10048BC84(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 568))();
  }

  return result;
}

uint64_t sub_10048BCBC(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 568))();
  }

  return result;
}

uint64_t sub_10048BCF4(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 576))();
  }

  return result;
}

uint64_t sub_10048BD2C(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 576))();
  }

  return result;
}

uint64_t sub_10048BD64(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

uint64_t sub_10048BD9C(uint64_t a1)
{
  result = *(a1 + 136);
  if (result)
  {
    return (*(*result + 496))();
  }

  return result;
}

void sub_10048BDFC(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  sub_10048BE74(a1, a2, 2, 0, &v3);
  v2 = v4;
  if (v4)
  {

    sub_100004A34(v2);
  }
}

void sub_10048BE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048BE74(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v18 = 0;
  v10 = (*(*a1 + 576))(a1, a3, 0, 0);
  v11 = *a5;
  if (*a5)
  {
    goto LABEL_7;
  }

  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a5[1];
  *a5 = v11;
  a5[1] = v12;
  if (v13)
  {
    sub_100004A34(v13);
    v11 = *a5;
  }

  if (v11)
  {
LABEL_7:
    (*(*v11 + 640))(v11, a3, a4, &v18);
    if (v18)
    {
      v14 = *(a1 + 72);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 128);
        *buf = 136315906;
        v20 = "handleErrorThrottling";
        v21 = 1024;
        v22 = v15;
        v23 = 1024;
        v24 = a2;
        v25 = 1024;
        v26 = a4;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: Throttling PDP context activation on context [%d] after %d activation errors (error type %d).", buf, 0x1Eu);
      }
    }
  }

  if (v10 != 32 && a2 >= 3 && a4 == 0)
  {
    (*(**(a1 + 112) + 192))(*(a1 + 112), v18);
  }
}

void *sub_10048C04C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, (a1 + 40));
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

void *sub_10048C098@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100004AA0(v6, (a1 + 40));
  v4 = v6[1];
  if (v6[0])
  {
    v5 = v6[0] + 32;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_10048C10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "postConnectionStateChangeNotification";
    v14 = 2080;
    v15 = asStringConnectionStateChangeReason();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v12, 0x16u);
  }

  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 536))(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_10048C240(void *a1, uint64_t a2)
{
  v4 = a1[14];
  sub_10048C33C(a1, &v7);
  (*(*v4 + 88))(v4, v7 != 0);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v5 = a1[18];
  v6 = a1[19];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    (*(*v5 + 632))(v5, a2);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10048C314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048C33C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(*v3 + 624))(v3);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }
  }

  sub_100004A34(v4);
}

void sub_10048C3D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048C3E8(void *a1)
{
  v2 = a1[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: starting shutdown", buf, 2u);
  }

  v3 = a1[14];
  if (v3)
  {
    v4 = a1[9];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: collocation", v23, 2u);
      v3 = a1[14];
    }

    (*(*v3 + 72))(v3);
  }

  v5 = a1[17];
  v6 = *(v5 + 8);
  for (i = *(v5 + 16); v6 != i; v6 += 9)
  {
    v7 = *v6;
    if (*v6 != v6 + 1)
    {
      do
      {
        v9 = v7[4];
        v8 = v7[5];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = a1[9];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: context", v22, 2u);
        }

        (*(*v9 + 432))(v9);
        if (v8)
        {
          sub_100004A34(v8);
        }

        v11 = v7[1];
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
            v12 = v7[2];
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != v6 + 1);
    }
  }

  v14 = a1[9];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: models", v21, 2u);
  }

  v15 = a1[17];
  v17 = *(v15 + 8);
    ;
  }

  *(v15 + 16) = v17;
  v18 = a1[9];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: done", v20, 2u);
  }
}

void sub_10048C674(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048C6DC(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

uint64_t sub_10048C70C(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    return (*(*result + 248))();
  }

  return result;
}

void sub_10048C8BC(uint64_t a1, uint64_t *a2)
{
  sub_100004AA0(&block, (a1 + 40));
  v5 = block;
  v4 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_10048CA4C;
  v8[3] = &unk_101E4FBE0;
  v8[4] = a1;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  v10 = *a2;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = 0;
  v20 = 0;
  sub_100004AA0(&v19, (a1 + 40));
  v7 = *(a1 + 56);
  block = _NSConcreteStackBlock;
  v13 = 1174405120;
  v14 = sub_10049F6D8;
  v15 = &unk_101E4FEE0;
  v17 = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v8;
  dispatch_async(v7, &block);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10048CA4C(void *a1)
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
        if (!(*(*v3 + 592))(v3))
        {
          goto LABEL_20;
        }

        (*(*v3 + 584))(&v13, v3);
        matched = DataUtils::matchPersonality();
        if (*&v14[4])
        {
          sub_100004A34(*&v14[4]);
        }

        if (matched)
        {
          v7 = v3[9];
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315138;
            *v14 = "checkSuspendedAfterHandover_block_invoke";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: executing...", &v13, 0xCu);
          }

          if (sub_100094EA8(v3[17]))
          {
            v8 = (sub_100094F40(v3[17]) + 32);
            v9 = 32;
            do
            {
              v10 = *(v8 - 1);
              v11 = *v8;
              if (*v8)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v10)
              {
                (*(*v10 + 136))(v10);
              }

              if (v11)
              {
                sub_100004A34(v11);
              }

              v8 += 2;
              v9 -= 16;
            }

            while (v9);
          }
        }

        else
        {
LABEL_20:
          v12 = v3[9];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315138;
            *v14 = "checkSuspendedAfterHandover_block_invoke";
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &v13, 0xCu);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void *sub_10048CCBC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void sub_10048CCF0(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10048CD40(void *a1, int a2, uint64_t a3, char a4, unsigned int a5)
{
  v8 = a1;
  if (sub_100094EA8(a1[17]))
  {
    v41 = a4;
    v9 = sub_100094F40(v8[17]);
    v10 = *v9;
    v43 = v9 + 1;
    if (*v9 == v9 + 1)
    {
      v44 = 0;
    }

    else
    {
      v46 = a3;
      v44 = 0;
      v45 = a2;
      do
      {
        v11 = v10[4];
        v12 = v10[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v11 && (*(*v11 + 56))(v11) == a2)
        {
          v13 = v8[9];
          v48 = v12;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v59 = v11;
            v60 = v12;
            if (v12)
            {
              atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = asString(&v59);
            v15 = asString();
            *buf = 136315650;
            v62 = "notifyOtherActiveContextsAboutFailure";
            v63 = 2080;
            v64 = v14;
            v65 = 2080;
            v66 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s failed to activate (%s)", buf, 0x20u);
            if (v60)
            {
              sub_100004A34(v60);
            }
          }

          v47 = v11;
          v16 = sub_100094F40(v8[17]);
          v18 = v16 + 1;
          v17 = *v16;
          if (*v16 != v16 + 1)
          {
            do
            {
              v19 = v17[4];
              v20 = v17[5];
              if (v20)
              {
                atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v19 && (*(*v19 + 56))(v19) != a2)
              {
                v21 = v8;
                v22 = v8[9];
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v57 = v47;
                  v58 = v48;
                  if (v48)
                  {
                    atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v23 = asString(&v57);
                  (*(*v19 + 56))(v19);
                  v24 = asString();
                  v25 = (*(*v19 + 136))(v19, 3);
                  v26 = asStringBool(v25);
                  v27 = (*(*v19 + 56))(v19);
                  v56[0] = 0;
                  v56[1] = 0;
                  v28 = sub_1000A56E8(v21, v27, v56);
                  v29 = asStringBool(v28);
                  *buf = 136316162;
                  v62 = "notifyOtherActiveContextsAboutFailure";
                  v63 = 2080;
                  v64 = v23;
                  v65 = 2080;
                  v66 = v24;
                  v67 = 2080;
                  v68 = v26;
                  v69 = 2080;
                  v70 = v29;
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: %s other context (%s), activated=%s, suspended=%s", buf, 0x34u);
                  if (v58)
                  {
                    sub_100004A34(v58);
                  }
                }

                v12 = v48;
                v8 = v21;
                a2 = v45;
                if (((*(*v19 + 136))(v19, 3) & 1) != 0 || (v30 = (*(*v19 + 56))(v19), v55[0] = 0, v55[1] = 0, sub_1000A56E8(v8, v30, v55)))
                {
                  v31 = v8[9];
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    v53 = v19;
                    v54 = v20;
                    if (v20)
                    {
                      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v32 = asString(&v53);
                    v51 = v47;
                    v52 = v48;
                    if (v48)
                    {
                      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v33 = asString(&v51);
                    *buf = 136315650;
                    v62 = "notifyOtherActiveContextsAboutFailure";
                    v63 = 2080;
                    v64 = v32;
                    v65 = 2080;
                    v66 = v33;
                    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: Handover failed from %s to %s", buf, 0x20u);
                    if (v52)
                    {
                      sub_100004A34(v52);
                    }

                    if (v54)
                    {
                      sub_100004A34(v54);
                    }
                  }

                  if (!*(*v46 + 49))
                  {
                    v34 = v8[14];
                    v35 = (*(*v47 + 56))(v47);
                    (*(*v34 + 208))(v34, v35, *(*v46 + 52), a5);
                  }

                  (*(*v19 + 624))(v19);
                  v44 = 1;
                }
              }

              if (v20)
              {
                sub_100004A34(v20);
              }

              v36 = v17[1];
              if (v36)
              {
                do
                {
                  v37 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v37 = v17[2];
                  v38 = *v37 == v17;
                  v17 = v37;
                }

                while (!v38);
              }

              v17 = v37;
            }

            while (v37 != v18);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v39 = v10[1];
        if (v39)
        {
          do
          {
            v40 = v39;
            v39 = *v39;
          }

          while (v39);
        }

        else
        {
          do
          {
            v40 = v10[2];
            v38 = *v40 == v10;
            v10 = v40;
          }

          while (!v38);
        }

        v10 = v40;
      }

      while (v40 != v43);
    }

    if (v44 & 1) != 0 || (v41)
    {
      (*(*v8 + 584))(&v49, v8);
      sub_10048C8BC(v8, &v49);
      if (v50)
      {
        sub_100004A34(v50);
      }
    }
  }
}

void sub_10048D380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048D420(void *a1, unsigned int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (!a1[18])
  {
LABEL_74:
    v41 = 0;
    return v41 & 1;
  }

  v10 = a1;
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_72;
  }

  (*(*v10 + 584))(&buf, v10);
  matched = DataUtils::matchPersonality();
  if (buf.__r_.__value_.__l.__size_)
  {
    sub_100004A34(buf.__r_.__value_.__l.__size_);
  }

  if ((matched & 1) == 0)
  {
LABEL_72:
    v43 = *(v10 + 72);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &buf, 0xCu);
    }

    goto LABEL_74;
  }

  memset(&v75, 0, sizeof(v75));
  sub_10000501C(&v75, "disconnection");
  v12 = otherContextType();
  if (sub_100094EA8(*(v10 + 136)))
  {
    v13 = sub_100094F40(*(v10 + 136));
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (v16 == v14)
    {
      v41 = 0;
      v40 = 0;
      v42 = 1;
    }

    else
    {
      v50 = v12;
      v51 = a5;
      v52 = a6;
      v54 = a4;
      v55 = 0;
      v53 = 0;
      v57 = v10 + 192;
      v58 = 0;
      v59 = v10;
      v56 = v14;
      do
      {
        v17 = v15[4];
        v18 = v15[5];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v17 + 56))(v17) == a3)
        {
          v19 = *(v10 + 72);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v73 = v17;
            v74 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = asString(&v73);
            v21 = asString();
            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v20;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
            v77 = v21;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s: %s disconnected by network on %s", &buf, 0x20u);
            if (v74)
            {
              sub_100004A34(v74);
            }
          }

          v22 = sub_100094F40(*(v10 + 136));
          v24 = v22 + 1;
          v23 = *v22;
          if (*v22 != v22 + 1)
          {
            do
            {
              v26 = v23[4];
              v25 = v23[5];
              if (v25)
              {
                atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v26 == v17 || (*(*v26 + 56))(v26) == a3)
              {
                v27 = 0;
              }

              else if ((*(*v26 + 136))(v26, a2))
              {
                v31 = *(v59 + 72);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v71 = v17;
                  v72 = v18;
                  if (v18)
                  {
                    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v32 = asString(&v71);
                  v69 = v26;
                  v70 = v25;
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v33 = asString(&v69);
                  v34 = asString();
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                  *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = v32;
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                  v77 = v33;
                  v78 = 2080;
                  v79 = v34;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s: Have been handed over from %s to %s on %s and up", &buf, 0x2Au);
                  if (v70)
                  {
                    sub_100004A34(v70);
                  }

                  if (v72)
                  {
                    sub_100004A34(v72);
                  }
                }

                v27 = 15;
              }

              else
              {
                v35 = (v57 + 80 * (*(*v26 + 56))(v26));
                if (*v35 == 1 && ((v35[32] & 1) != 0 || (v35[40] & 1) != 0))
                {
                  v36 = *(v59 + 72);
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                  {
                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
                    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: looks like the other context is already active", &buf, 0xCu);
                  }

                  v27 = 0;
                  v53 = 1;
                }

                else
                {
                  if (v25)
                  {
                    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  if (v58)
                  {
                    sub_100004A34(v58);
                  }

                  v37 = (*(*v17 + 152))(v17, a2);
                  if (a3 == 1)
                  {
                    iWLanNotifyCodeAsString(*(v37 + 152), &buf);
                    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v75.__r_.__value_.__l.__data_);
                    }

                    v75 = buf;
                  }

                  else if (!a3)
                  {
                    std::string::operator=(&v75, (v37 + 104));
                  }

                  v27 = 14;
                  v58 = v25;
                  v55 = v26;
                }
              }

              if (v25)
              {
                sub_100004A34(v25);
              }

              if (v27 != 15 && v27)
              {
                break;
              }

              v28 = v23[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v23[2];
                  v30 = *v29 == v23;
                  v23 = v29;
                }

                while (!v30);
              }

              v23 = v29;
            }

            while (v29 != v24);
          }
        }

        if (v18)
        {
          sub_100004A34(v18);
        }

        v38 = v15[1];
        v10 = v59;
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v15[2];
            v30 = *v39 == v15;
            v15 = v39;
          }

          while (!v30);
        }

        v15 = v39;
      }

      while (v39 != v56);
      if (v55)
      {
        v40 = v58;
        a4 = v54;
        v41 = v53;
        a5 = v51;
        a6 = v52;
        v12 = (*(*v55 + 56))(v55);
        v42 = 0;
      }

      else
      {
        v42 = 1;
        v40 = v58;
        a4 = v54;
        v41 = v53;
        a5 = v51;
        a6 = v52;
        v12 = v50;
      }
    }

    v66 = 0;
    v67 = 0;
    v68 = 0;
    v45 = (*(**(v10 + 144) + 384))(*(v10 + 144), a3, v12, a2, a5, a6, &v66);
    if ((v42 & 1) == 0)
    {
      if (v45)
      {
        v46 = a4[1];
        v64 = *a4;
        v65 = v46;
        if (v46)
        {
          atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = 0;
        v62 = 0;
        v63 = 0;
        sub_100090CF8(&__p, v66, v67, 0x4EC4EC4EC4EC4EC5 * (v67 - v66));
        v41 = sub_10048DD94(v10, a3, v12, &v64, &v75, 1, &__p, 0);
        if (__p)
        {
          v62 = __p;
          operator delete(__p);
        }

        if (v65)
        {
          sub_100004A34(v65);
        }
      }

      else
      {
        v47 = *(v10 + 72);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = asString();
          v49 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = "handleDataContextNetworkDisconnect";
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v48;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
          v77 = v49;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s: hand over from %s to %s cannot be done because handover is not allowed", &buf, 0x20u);
        }
      }
    }

    if (v66)
    {
      v67 = v66;
      operator delete(v66);
    }
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (v40)
  {
    sub_100004A34(v40);
  }

  return v41 & 1;
}

void sub_10048DC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    sub_100004A34(a31);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (*(v39 - 169) < 0)
  {
    operator delete(*(v39 - 192));
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048DD94(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, const std::string *a5, BOOL a6, uint64_t *a7, _BYTE *a8)
{
  v10 = a1;
  if (*(a1 + 184) == a3)
  {
    v11 = *(a1 + 72);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "handOverTo";
      *&buf[12] = 2080;
      *&buf[14] = asString();
      *&buf[22] = 2080;
      *&buf[24] = asString();
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: handover from %s to %s cannot be done because the new context type is already current; we treat the situation as a successful handover", buf, 0x20u);
    }

    return 1;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_30;
  }

  ((*v10)[73].isa)(buf, v10);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if ((matched & 1) == 0)
  {
LABEL_30:
    v26 = v10[9];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handOverTo";
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }

    return 0;
  }

  if (!validContextType())
  {
    return 0;
  }

  *buf = 0;
  *&buf[8] = 0;
  v19 = a4[1];
  v72 = *a4;
  v73 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10009D4CC(v10, a2, buf);
  if (v73)
  {
    sub_100004A34(v73);
  }

  v20 = *buf;
  if (*buf)
  {
    v21 = (*(**buf + 136))(*buf, 1);
    v22 = (*(*v20 + 136))(v20, 2);
    v23 = v21 | 2;
    if (!v22)
    {
      v23 = v21;
    }

    v24 = 1;
    if (a2 == 1 && !v23)
    {
      if (os_log_type_enabled(v10[9], OS_LOG_TYPE_ERROR))
      {
        sub_101771FD4();
      }

      v64 = 100;
      v65 = "invalid wifi active ip family";
      v66 = "";
      v67 = 0;
      v68 = 0;
      memset(v71, 0, sizeof(v71));
      v70 = 0;
      v69 = 1;
      sub_10000501C(__p, "invalid wifi active ip family");
      v25 = a4[1];
      v60 = *a4;
      v61 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BYTE4(v41) = 0;
      LODWORD(v41) = 0;
      ((*v10)[93].isa)(v10, 3, &v64, __p, 0, 1, &v60, 100, 0x1388400000002, v41);
      if (v61)
      {
        sub_100004A34(v61);
      }

      if (v63 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&v71[1])
      {
        sub_100004A34(*&v71[1]);
      }

      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 1;
  }

  v45 = v23;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v24)
  {
    return 0;
  }

  v28 = v10[9];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v44 = asString();
    v43 = asString();
    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = a5;
    }

    else
    {
      v29 = a5->__r_.__value_.__r.__words[0];
    }

    v42 = v29;
    v30 = asStringBool(a6);
    *buf = 136316162;
    *&buf[4] = "handOverTo";
    *&buf[12] = 2080;
    *&buf[14] = v44;
    *&buf[22] = 2080;
    *&buf[24] = v43;
    *&buf[32] = 2082;
    *&buf[34] = v42;
    *&buf[42] = 2080;
    *&buf[44] = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: handover from %s to %s because of %{public}s (networkDisconnect %s)", buf, 0x34u);
  }

  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10048E720(v10, buf);
  *&v56 = 1;
  memset(v57, 0, sizeof(v57));
  v59 = 0u;
  *(&v56 + 1) = "Handover";
  *&v57[0] = "CommCenter";
  BYTE8(v57[0]) = 1;
  BYTE8(v57[1]) = 0;
  v58 = 0uLL;
  *&v59 = 0;
  BYTE8(v59) = 0;
  std::string::operator=(&v58, a5);
  HIDWORD(v57[0]) = v45;
  BYTE8(v59) = a6;
  v31 = a4[1];
  v54 = *a4;
  v55 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v49 = v56;
  v50[0] = v57[0];
  *(v50 + 10) = *(v57 + 10);
  if (SBYTE7(v59) < 0)
  {
    sub_100005F2C(&v51, v58, *(&v58 + 1));
  }

  else
  {
    v51 = v58;
    v52 = v59;
  }

  v53 = BYTE8(v59);
  v47 = 0;
  v48 = 0;
  v46 = 0;
  sub_100090CF8(&v46, *a7, a7[1], 0x4EC4EC4EC4EC4EC5 * (a7[1] - *a7));
  v32 = sub_10048E7F4(v10, v45, a3, &v54, &v49, &v46);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (v55)
  {
    sub_100004A34(v55);
  }

  v33 = v10[9];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = asString();
    *v74 = 136315650;
    v75 = "handOverTo";
    v76 = 2080;
    v77 = v34;
    v78 = 1024;
    LODWORD(v79) = v32;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s: ctTo=%s, activationReturn=%d", v74, 0x1Cu);
  }

  if (v32 <= 0)
  {
    if (v32 >= 0xFFFFFFFE)
    {
      sub_10048EE40(v10, buf);
LABEL_59:
      LOBYTE(v10) = 0;
      v12 = 0;
      goto LABEL_76;
    }

    if (!v32)
    {
      v35 = v10[18];
      v10 = v10[19];
      if (v10)
      {
        atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        (*(v35->isa + 83))(v35, a3);
      }

      if (!v10)
      {
        goto LABEL_72;
      }

      sub_100004A34(v10);
LABEL_71:
      LOBYTE(v10) = 0;
LABEL_72:
      v12 = 1;
      goto LABEL_76;
    }

LABEL_73:
    v36 = v10[9];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *v74 = 136315138;
      v75 = "handOverTo";
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E %s: !!! activateDataContext returned unmanageable result", v74, 0xCu);
    }

    sub_10048EE40(v10, buf);
    v12 = 0;
    LOBYTE(v10) = 1;
    goto LABEL_76;
  }

  if (v32 == 1)
  {
    goto LABEL_71;
  }

  if (v32 != 2)
  {
    goto LABEL_73;
  }

  sub_10048EE40(v10, buf);
  if (!a8)
  {
    v38 = v10[9];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = asString();
      v40 = asString();
      *v74 = 136315650;
      v75 = "handOverTo";
      v76 = 2080;
      v77 = v39;
      v78 = 2080;
      v79 = v40;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: Can't handover from %s right now, cancelling handover to %s", v74, 0x20u);
    }

    goto LABEL_59;
  }

  LOBYTE(v10) = 0;
  v12 = 1;
  *a8 = 1;
LABEL_76:
  if (SBYTE7(v59) < 0)
  {
    operator delete(v58);
  }

  for (i = 0; i != -160; i -= 80)
  {
    if (*(&v86 + i + 15) < 0)
    {
      operator delete(*(&v85 + i + 8));
    }
  }

  if (v10)
  {
    return 0;
  }

  return v12;
}

void sub_10048E604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  v63 = 0;
  while (1)
  {
    if (*(&a62 + v63 + 159) < 0)
    {
      operator delete(*(&a62 + v63 + 136));
    }

    v63 -= 80;
    if (v63 == -160)
    {
      _Unwind_Resume(a1);
    }
  }
}

_DWORD *sub_10048E720@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  *a2 = result[46];
  v5 = (result + 48);
  do
  {
    v6 = v3;
    v7 = a2 + ((80 * v4) | 8);
    v8 = &v5[80 * v4];
    v9 = *(v8 + 1);
    *v7 = *v8;
    *(v7 + 1) = v9;
    *(v7 + 26) = *(v8 + 26);
    if (v8[71] < 0)
    {
      result = sub_100005F2C(v7 + 48, *(v8 + 6), *(v8 + 7));
    }

    else
    {
      *(v7 + 3) = *(v8 + 3);
      *(v7 + 8) = *(v8 + 8);
    }

    v7[72] = v8[72];
    v3 = 1;
    v4 = 1;
  }

  while ((v6 & 1) == 0);
  return result;
}

void sub_10048E7D8(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_101772008(v2, v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10048E7F4(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, __int128 *a5, uint64_t *a6)
{
  v11 = a1;
  if (a3 || (a1 = *(a1 + 96)) == 0 || (a1 = (*(*a1 + 144))(a1), (a1 & 1) != 0))
  {
    if (*(v11 + 352))
    {
      v12 = 0;
      LODWORD(v13) = 2;
    }

    else
    {
      v15 = *(v11 + 144);
      v14 = *(v11 + 152);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a5 + 24) == 1)
      {
        v16 = capabilities::ct::supports5G(a1);
        v17 = v15 ? v16 : 0;
        if (v17 == 1)
        {
          v18 = (*(*v15 + 208))(v15) ^ 1;
          if (a3 != 1)
          {
            LOBYTE(v18) = 1;
          }

          if ((v18 & 1) == 0 && sub_100094EA8(*(v11 + 136)))
          {
            v19 = sub_100094F40(*(v11 + 136));
            v21 = *(v19 + 24);
            v20 = *(v19 + 32);
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v21)
            {
              v22 = *(v11 + 72);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I HO cell->wifi: reportHandoverWwanPduSessionId", buf, 2u);
              }

              v23 = (*(*v11 + 784))(v11);
              if ((v23 & 0x80000000) == 0)
              {
                (*(*v21 + 304))(v21, v23);
                sub_10049980C(v11, v23);
              }
            }

            if (v20)
            {
              sub_100004A34(v20);
            }
          }
        }
      }

      *buf = 0;
      v53 = 0;
      v24 = a4[1];
      v50 = *a4;
      v51 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10009D4CC(v11, a3, buf);
      if (v51)
      {
        sub_100004A34(v51);
      }

      v25 = *buf;
      if (*buf)
      {
        v26 = a5[1];
        v45 = *a5;
        v46[0] = v26;
        *(v46 + 10) = *(a5 + 26);
        if (*(a5 + 71) < 0)
        {
          sub_100005F2C(&__p, *(a5 + 6), *(a5 + 7));
        }

        else
        {
          __p = a5[3];
          v48 = *(a5 + 8);
        }

        v49 = *(a5 + 72);
        sub_100491A70(v11, a3, &v45);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__p);
        }

        v27 = a5[1];
        v40 = *a5;
        v41[0] = v27;
        *(v41 + 10) = *(a5 + 26);
        if (*(a5 + 71) < 0)
        {
          sub_100005F2C(&v42, *(a5 + 6), *(a5 + 7));
        }

        else
        {
          v42 = a5[3];
          v43 = *(a5 + 8);
        }

        v44 = *(a5 + 72);
        v38 = 0;
        v39 = 0;
        v37 = 0;
        sub_100090CF8(&v37, *a6, a6[1], 0x4EC4EC4EC4EC4EC5 * (a6[1] - *a6));
        v13 = (*(*v25 + 384))(v25, a2, &v40, &v37);
        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        v12 = HIDWORD(v13);
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (v13 == 1)
        {
          if (*(a5 + 24) == 1)
          {
            v35 = 0;
            v36 = 0;
            v28 = otherContextType();
            v29 = a4[1];
            v34 = v29;
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10009D4CC(v11, v28, &v35);
            if (v34)
            {
              sub_100004A34(v34);
            }

            v30 = v35;
            if (v35 && (*(*v35 + 536))(v35) && (*(*v30 + 488))(v30))
            {
              v31 = *(v11 + 72);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                otherContextType();
                v32 = asString();
                *v54 = 136315138;
                v55 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I HO: %s stuck in preactivation, deactivating...", v54, 0xCu);
              }

              (*(*v30 + 392))(v30, 23, "CommCenter");
            }

            if (v36)
            {
              sub_100004A34(v36);
            }
          }

          LODWORD(v13) = 1;
        }
      }

      else
      {
        v12 = 4294967288;
        LODWORD(v13) = -1;
      }

      if (v53)
      {
        sub_100004A34(v53);
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(*(v11 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_10177204C();
    }

    v12 = 4;
    LODWORD(v13) = -1;
  }

  return v13 | (v12 << 32);
}

void sub_10048ED78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  v44 = *(v42 - 136);
  if (v44)
  {
    sub_100004A34(v44);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048EE40(uint64_t a1, int *a2)
{
  if (!sub_10049EFD0((a1 + 184), a2))
  {
    v4 = *(a2 + 6);
    v15 = *(a2 + 2);
    v16[0] = v4;
    *(v16 + 10) = *(a2 + 34);
    if (*(a2 + 79) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 7), *(a2 + 8));
    }

    else
    {
      __p = *(a2 + 14);
      v18 = *(a2 + 9);
    }

    v19 = *(a2 + 80);
    sub_1004914F0(a1, 0, &v15, 1);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    v5 = *(a2 + 26);
    v10 = *(a2 + 22);
    v11[0] = v5;
    *(v11 + 10) = *(a2 + 114);
    if (*(a2 + 159) < 0)
    {
      sub_100005F2C(&v12, *(a2 + 17), *(a2 + 18));
    }

    else
    {
      v12 = *(a2 + 34);
      v13 = *(a2 + 19);
    }

    v14 = *(a2 + 160);
    sub_1004914F0(a1, 1, &v10, 1);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    v6 = *a2;
    if (*(a1 + 184) != *a2)
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        v9 = asString();
        *buf = 136315650;
        v21 = "setActivatorState";
        v22 = 2080;
        v23 = v8;
        v24 = 2080;
        v25 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) active %s => %s", buf, 0x20u);
        v6 = *a2;
      }

      *(a1 + 184) = v6;
    }
  }
}

void sub_10048F028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a20 < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F064(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 144);
  v4 = *(a1 + 152);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5[0] = *a2;
    *(v5 + 12) = *(a2 + 12);
    (*(*v3 + 328))(v3, v5);
    goto LABEL_6;
  }

  if (!os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_101772080();
  if (!v4)
  {
    return;
  }

LABEL_7:
  sub_100004A34(v4);
}

void sub_10048F11C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F13C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    (*(*v2 + 688))(v2);
    goto LABEL_6;
  }

  if (!os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_1017720B4();
  if (!v3)
  {
    return;
  }

LABEL_7:
  sub_100004A34(v3);
}

void sub_10048F1D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F1F8(void *a1, int a2, void *a3)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_48;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v36[4])
  {
    sub_100004A34(*&v36[4]);
  }

  if (matched)
  {
    if (sub_100094EA8(a1[17]))
    {
      v6 = sub_100094F40(a1[17]);
      v9 = *v6;
      v7 = v6 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        v10 = a1 + 24;
        v30 = v7;
        while (1)
        {
          v12 = v8[4];
          v11 = v8[5];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v12 + 56))(v12) == a2)
          {
            v13 = a1[9];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v33 = v12;
              v34 = v11;
              if (v11)
              {
                atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v14 = asString(&v33);
              *buf = 136315394;
              *v36 = "handleDataContextDisappeared";
              *&v36[8] = 2080;
              *&v36[10] = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: %s disappeared", buf, 0x16u);
              if (v34)
              {
                sub_100004A34(v34);
              }
            }

            v15 = sub_100094F40(a1[17]);
            v17 = v15 + 1;
            v16 = *v15;
            if (*v15 != v15 + 1)
            {
              break;
            }
          }

LABEL_39:
          if (v11)
          {
            sub_100004A34(v11);
          }

          v27 = v8[1];
          if (v27)
          {
            do
            {
              v28 = v27;
              v27 = *v27;
            }

            while (v27);
          }

          else
          {
            do
            {
              v28 = v8[2];
              v20 = *v28 == v8;
              v8 = v28;
            }

            while (!v20);
          }

          v8 = v28;
          if (v28 == v30)
          {
            return;
          }
        }

        while (1)
        {
          v19 = v16[4];
          v18 = v16[5];
          if (v18)
          {
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v19)
          {
            v20 = v19 == v12;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_31;
          }

          v21 = (*(*v19 + 56))(v19);
          if (v21 > 1)
          {
            v22 = a1 + 34;
            if (*v10)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v22 = &v10[80 * v21];
          }

          if (*v22 == 1)
          {
LABEL_27:
            v23 = (*(*v19 + 56))(v19);
            v24 = a3[1];
            v32[0] = *a3;
            v32[1] = v24;
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10048F648(a1, v23, v32, 33, "CommCenter");
            if (v24)
            {
              sub_100004A34(v24);
            }
          }

LABEL_31:
          if (v18)
          {
            sub_100004A34(v18);
          }

          v25 = v16[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v16[2];
              v20 = *v26 == v16;
              v16 = v26;
            }

            while (!v20);
          }

          v16 = v26;
          if (v26 == v17)
          {
            goto LABEL_39;
          }
        }
      }
    }
  }

  else
  {
LABEL_48:
    v29 = a1[9];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v36 = "handleDataContextDisappeared";
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_10048F5DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048F648(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 8);
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = 0;
  v12 = 0;
  sub_10009D4CC(a1, a2, &v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v11)
  {
    v8 = (*(*v11 + 392))(v11, a4, a5);
  }

  else
  {
    v8 = 0;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  return v8;
}

void sub_10048F700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F730(void *a1, int a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    *v14 = "handleDataContextIPActivated";
    *&v14[8] = 2080;
    *&v14[10] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated", &v13, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v7 = a1[9];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v8 = asString();
    v13 = 136315394;
    *v14 = "handleDataContextIPActivated";
    *&v14[8] = 2080;
    *&v14[10] = v8;
    v9 = "#E %s: wrong context type: %s";
    v10 = v7;
    v11 = 22;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
    return;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_14;
  }

  (*(*a1 + 584))(&v13, a1);
  matched = DataUtils::matchPersonality();
  if (*&v14[4])
  {
    sub_100004A34(*&v14[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_14:
    v12 = a1[9];
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v13 = 136315138;
    *v14 = "handleDataContextIPActivated";
    v9 = "#E %s: method called with inactive settings";
    v10 = v12;
    v11 = 12;
    goto LABEL_16;
  }

  if (sub_100094EA8(a1[17]))
  {
    if (*(sub_100094F40(a1[17]) + 16 * a2 + 24))
    {
      v6 = *(sub_100094F40(a1[17]) + 16 * a2 + 24);
      (*(*v6 + 176))(v6);
    }
  }

  sub_10048C10C(a1, 5, 0, 0, 0);
}

void sub_10048F9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10048F9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = *(a3 + 16);
    v9[0] = *a3;
    v9[1] = v6;
    v7 = *(a3 + 40);
    v10 = *(a3 + 32);
    v11 = v7;
    v8 = *(a3 + 48);
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v4 + 616))(v4, a2, v9);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10048FA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048FAC0(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 600))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_10048FB48(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10048FB60(void *a1, unsigned int a2, unsigned int *a3, uint64_t a4, char a5, uint64_t a6, void *a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned __int8 a12)
{
  v16 = sub_100490EEC(a1, a6, buf);
  v17 = a1[9];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = asString();
    v19 = asStringBool(v16);
    v20 = asString();
    *buf = 136316162;
    *&buf[4] = "handleContextActivateError";
    *&buf[12] = 2080;
    *&buf[14] = v18;
    v67 = 2080;
    v68 = v19;
    v69 = 1024;
    v70 = a10;
    v71 = 2080;
    v72 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: %s (handover %s) contextSpecificErrorCode %d (%s)", buf, 0x30u);
  }

  a3[9] = a11;
  v21 = *(a3 + 1);
  v62[0] = *a3;
  v62[1] = v21;
  v22 = *(a3 + 5);
  v63 = *(a3 + 4);
  v64 = v22;
  v23 = *(a3 + 6);
  v65 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10048F9E8(a1, a6, v62);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *a3;
  v45 = (*(*a1 + 576))(a1, a6, 0, 0);
  v46 = a8;
  v44 = v16;
  v26 = a1[18];
  v25 = a1[19];
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v26)
  {
    v27 = a1[9];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleContextActivateError";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: active settings activate error", buf, 0xCu);
    }

    if ((*(*v26 + 368))(v26, a6, v24, a10, a11, a12))
    {
      v28 = a1[9];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleContextActivateError";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: A retry (or fallback) activation has been triggered", buf, 0xCu);
      }

      v29 = 1;
      if (!v25)
      {
        return v29;
      }

LABEL_65:
      sub_100004A34(v25);
      return v29;
    }
  }

  if (sub_100094EA8(a1[17]))
  {
    v30 = a1[14];
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v61 = *(a4 + 16);
    }

    (*(*v30 + 136))(v30, a2, v24, __p, a6, *(*a7 + 52), v45, v46);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    v48 = sub_100094F40(a1[17]);
    v31 = *v48;
    if (*v48 != v48 + 1)
    {
      do
      {
        v32 = v31[4];
        v33 = v31[5];
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v32 + 56))(v32) == a6)
        {
          if (a9 != 2)
          {
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v26)
            {
              (*(*v26 + 584))(v26, a6);
            }

            if (v25)
            {
              sub_100004A34(v25);
            }

            v34 = sub_10048FAC0(a1);
            v58 = v26;
            v59 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_10048BE74(a1, v34, a6, a9, &v58);
            if (v59)
            {
              sub_100004A34(v59);
            }
          }

          if ((a5 & 1) == 0 && (*(*v32 + 136))(v32, a2))
          {
            v35 = a1[9];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = asString();
              *buf = 136315394;
              *&buf[4] = "handleContextActivateError";
              *&buf[12] = 2080;
              *&buf[14] = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: %s network is already online, take it offline", buf, 0x16u);
            }

            v37 = a7[1];
            v56 = *a7;
            v57 = v37;
            if (v37)
            {
              atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*a1 + 712))(a1, a2, a6, &v56);
            if (v57)
            {
              sub_100004A34(v57);
            }
          }
        }

        if (v33)
        {
          sub_100004A34(v33);
        }

        v38 = v31[1];
        if (v38)
        {
          do
          {
            v39 = v38;
            v38 = *v38;
          }

          while (v38);
        }

        else
        {
          do
          {
            v39 = v31[2];
            v40 = *v39 == v31;
            v31 = v39;
          }

          while (!v40);
        }

        v31 = v39;
      }

      while (v39 != v48 + 1);
    }

    if ((a5 & 1) == 0)
    {
      v41 = a7[1];
      v54 = *a7;
      v55 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1004902A4(a1, a6);
      if (v55)
      {
        sub_100004A34(v55);
      }
    }

    sub_1000948A8(v48, buf);
    v42 = *buf;
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v42)
    {
      sub_1000948A8(v48, &v52);
      sub_10048CD40(a1, a6, &v52, v44, a2);
      if (v53)
      {
        sub_100004A34(v53);
      }
    }
  }

  v29 = 0;
  if (v25)
  {
    goto LABEL_65;
  }

  return v29;
}

void sub_1004901D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v30)
  {
    sub_100004A34(v30);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004902A4(void *a1, uint64_t a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    *v11 = "handleDataContextDeactivated";
    *&v11[8] = 2080;
    *&v11[10] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s", &v10, 0x16u);
  }

  v6 = a1[18];
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    (*(*(v6 + *(*v6 - 56)) + 16))(&v10);
    matched = DataUtils::matchPersonality();
    if (*&v11[4])
    {
      sub_100004A34(*&v11[4]);
    }

    if (matched)
    {
      v8 = a1[9];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        v10 = 136315394;
        *v11 = "handleDataContextDeactivated";
        *&v11[8] = 2080;
        *&v11[10] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: active settings deactivated for %s", &v10, 0x16u);
      }

      (*(*v6 + 376))(v6, a2);
      sub_100492120(a1, a2, 0, 0);
    }
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1004904A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004905C8(capabilities::ct *a1)
{
  if (capabilities::ct::supports5G(a1))
  {
    if ((*(*a1 + 592))(a1))
    {
      v8 = 0;
      v9 = 0;
      (*(*a1 + 584))(&v8, a1);
      if (sub_100094EA8(*(a1 + 17)))
      {
        if (*(a1 + 416))
        {
          v2 = sub_100094F40(*(a1 + 17));
          v4 = *(v2 + 24);
          v3 = *(v2 + 32);
          if (v3)
          {
            atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v4)
          {
            v5 = *(a1 + 9);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
            {
              if ((*(a1 + 416) & 1) == 0)
              {
                sub_1000D1644();
              }

              v6 = *(a1 + 103);
              *buf = 67109120;
              v11 = v6;
              _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I free PDU SessionId %d", buf, 8u);
            }

            if ((*(a1 + 416) & 1) == 0)
            {
              sub_1000D1644();
            }

            (*(*v4 + 208))(v4, *(a1 + 103));
            if (*(a1 + 416) == 1)
            {
              *(a1 + 416) = 0;
            }
          }

          if (v3)
          {
            sub_100004A34(v3);
          }
        }

        else
        {
          v7 = *(a1 + 9);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fReservedPduSessionIdForWlan already freed", buf, 2u);
          }
        }
      }

      else if (os_log_type_enabled(*(a1 + 9), OS_LOG_TYPE_ERROR))
      {
        sub_10177211C();
      }

      if (v9)
      {
        sub_100004A34(v9);
      }
    }

    else if (os_log_type_enabled(*(a1 + 9), OS_LOG_TYPE_ERROR))
    {
      sub_1017720E8();
    }
  }
}

void sub_100490814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490858(uint64_t a1, uint64_t a2)
{
  if ((capabilities::ct::supports5G(a1) & 1) == 0)
  {

    goto LABEL_12;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101772150();
    }

LABEL_12:
    sub_10000FFD0(a2, 0);
    return;
  }

  v8 = 0;
  v9 = 0;
  (*(*a1 + 584))(&v8, a1);
  if (sub_100094EA8(*(a1 + 136)))
  {
    v4 = sub_100094F40(*(a1 + 136));
    v6 = *(v4 + 24);
    v5 = *(v4 + 32);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v6)
    {
      sub_1000224C8(v10, a2);
      v7 = (*(*a1 + 72))(a1);
      (*(*v6 + 240))(v6, v10, v7);
      sub_10000FF50(v10);
    }

    if (v5)
    {
      sub_100004A34(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 72), OS_LOG_TYPE_ERROR))
    {
      sub_101772184();
    }

    sub_10000FFD0(a2, 0);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100490A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490B30(uint64_t a1, unint64_t *a2)
{
  if (*a2)
  {
    v4 = *(a1 + 136);
    (*(*(*a2 + *(**a2 - 56)) + 16))(&v9);
    v5 = sub_10048A828(v4, &v9);
    if (*&v10[4])
    {
      sub_100004A34(*&v10[4]);
    }

    sub_10049F714(v5, a2);
    v6 = *(a1 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = asString(*a2);
      (*(**a2 + 56))();
      v8 = asString();
      v9 = 136315650;
      *v10 = "registerContext";
      *&v10[8] = 2080;
      *&v10[10] = v7;
      v11 = 2080;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: %s registered with us (%s)", &v9, 0x20u);
    }
  }
}

void sub_100490CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100490CCC(uint64_t a1, const DataContextPDPInfoInterface **a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString(*a2);
    (*(**a2 + 56))();
    v10 = 136315650;
    *v11 = "unregisterContext";
    *&v11[8] = 2080;
    *&v11[10] = v5;
    v12 = 2080;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s unregistered with us (%s)", &v10, 0x20u);
  }

  v6 = *(a1 + 136);
  (*(*(*a2 + *(**a2 - 56)) + 16))(&v10);
  v7 = sub_100094EA8(v6);
  if (*&v11[4])
  {
    sub_100004A34(*&v11[4]);
  }

  if (v7)
  {
    v8 = *(a1 + 136);
    (*(*(*a2 + *(**a2 - 56)) + 16))(&v10);
    v9 = sub_100094F40(v8);
    sub_10049F7F0(v9, a2);
    if (*&v11[4])
    {
      sub_100004A34(*&v11[4]);
    }
  }
}

void sub_100490E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100490EEC(uint64_t a1, int a2, _BYTE *a3)
{
  *a3 = 0;
  if (anyContextType())
  {
    v6 = 0;
  }

  else
  {
    v6 = a2;
  }

  result = validContextType();
  if (result)
  {
    if (*(a1 + 184) == v6 && (v8 = a1 + 80 * v6, v10 = *(v8 + 192), v9 = v8 + 192, v10 == 1) && *(v9 + 24) == 1)
    {
      v11 = *(v9 + 41) ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = anyContextType();
    if (!v12 || (v11 & 1) != 0)
    {
      if ((v12 | v11))
      {
        v13 = *(a1 + 184);
        goto LABEL_19;
      }
    }

    else if (*(a1 + 184) == 1 && *(a1 + 272) == 1 && *(a1 + 296) == 1 && (*(a1 + 313) & 1) == 0)
    {
      v13 = 1;
LABEL_19:
      *a3 = *(a1 + 80 * v13 + 224);
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_10049108C(uint64_t a1, int a2)
{
  v2 = *(a1 + 352);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "setRetryScheduled";
      v8 = 2080;
      v9 = asStringBool(v2);
      v10 = 2080;
      v11 = asStringBool(v3);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) %s => %s", &v6, 0x20u);
    }

    *(a1 + 352) = v3;
  }
}

uint64_t sub_100491194(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!sub_100094EA8(*(a1 + 136)))
  {
    return 1;
  }

  v7 = sub_100094F40(*(a1 + 136));
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 == v7 + 1)
  {
    return 1;
  }

  while (1)
  {
    v11 = v9[4];
    v10 = v9[5];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v11 + 56))(v11) == a3)
    {
      v12 = *(a4 + 8);
      v19 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = sub_10049133C(a1);
      v14 = (*(*v11 + 552))(v11, v13);
      if (v19)
      {
        sub_100004A34(v19);
      }

      if ((v14 & 1) == 0)
      {
        break;
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    v15 = v9[1];
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
        v16 = v9[2];
        v17 = *v16 == v9;
        v9 = v16;
      }

      while (!v17);
    }

    v9 = v16;
    if (v16 == v8)
    {
      return 1;
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return 0;
}

void sub_100491310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10049133C(uint64_t a1)
{
  if (!sub_100094EA8(*(a1 + 136)))
  {
    return 0;
  }

  v3 = sub_100094F40(*(a1 + 136));
  v4 = v3 + 1;
  v5 = *v3;
  if (*v3 == v3 + 1)
  {
    return 0;
  }

  while (1)
  {
    v7 = v5[4];
    v6 = v5[5];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v7 + 56))(v7);
    if (!v8)
    {
      if (!*(sub_100094F40(*(a1 + 136)) + 24) || (v9 = sub_100094F40(*(a1 + 136)), v1 = (*(**(v9 + 24) + 200))(*(v9 + 24)), v1 <= 0))
      {
        v1 = (*(*v7 + 656))(v7);
      }
    }

    if (v6)
    {
      sub_100004A34(v6);
    }

    if (!v8)
    {
      break;
    }

    v10 = v5[1];
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
        v11 = v5[2];
        v12 = *v11 == v5;
        v5 = v11;
      }

      while (!v12);
    }

    v5 = v11;
    if (v11 == v4)
    {
      return 0;
    }
  }

  return v1;
}

void sub_1004914C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004914F0(uint64_t a1, int a2, __int128 *a3, int a4)
{
  if (validContextType())
  {
    if ((a4 & 1) == 0 && *a3 == 1)
    {
      v8 = a1 + 80 * a2;
      v10 = *(v8 + 192);
      v9 = v8 + 192;
      if (v10 == 1 && *(v9 + 32) == 1 && *(a3 + 24) == 1 && (a3[2] & 1) == 0)
      {
        *(a3 + 32) = 1;
      }
    }

    v11 = a1 + 192;
    v12 = a1 + 192 + 80 * a2;
    if (!sub_10049F048(v12, a3))
    {
      memset(__p, 0, sizeof(__p));
      *v47 = *v12;
      *v48 = *(v12 + 16);
      *&v48[10] = *(v12 + 26);
      if (*(v12 + 71) < 0)
      {
        sub_100005F2C(&__p[6], *(v12 + 48), *(v12 + 56));
      }

      else
      {
        *&__p[6] = *(v12 + 48);
        *&__p[22] = *(v12 + 64);
      }

      __p[30] = *(v12 + 72);
      v13 = otherContextType();
      v14 = v13;
      if (a4)
      {
        v15 = *(a1 + 184);
        if (*a3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (*a3 == 1)
        {
          v15 = a2;
          if (*(a3 + 9))
          {
            v18 = v11 + 80 * v13;
            v16 = a2;
            if (*v18 != 1)
            {
              goto LABEL_16;
            }

            v16 = a2;
            if (*(v18 + 36))
            {
              goto LABEL_16;
            }

            v15 = v14;
            v16 = a2;
            if (*(v18 + 41))
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v19 = (v11 + 80 * v13);
          v15 = 2;
          if (*v19 == 1)
          {
            v17 = 0;
            if (v19[41])
            {
              v15 = 2;
            }

            else
            {
              v15 = v13;
            }

            goto LABEL_29;
          }
        }

        if (*a3)
        {
LABEL_15:
          v16 = v15;
LABEL_16:
          v17 = *v12 ^ 1;
          v15 = v16;
LABEL_29:
          v20 = *a3;
          v21 = a3[1];
          *(v12 + 26) = *(a3 + 26);
          *v12 = v20;
          *(v12 + 16) = v21;
          std::string::operator=((v12 + 48), a3 + 2);
          *(v12 + 72) = *(a3 + 72);
          *(a1 + 184) = v15;
          if ((a4 & 1) == 0)
          {
            if (v17)
            {
              v22 = (v11 + 80 * v14);
              if (*v22 == 1 && v22[32] == 1)
              {
                *(v12 + 24) = 1;
              }

              v22[24] = 0;
            }

            if ((*v12 & 1) == 0)
            {
              *(v12 + 24) = 0;
              *(v12 + 32) = 0;
              *(v12 + 36) = 0;
              *(v12 + 40) = 0;
            }
          }

          v23 = *(a1 + 72);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v14;
            v45 = asString();
            v44 = asStringBool(v47[0]);
            v43 = asStringBool(v48[8]);
            v42 = asStringBool(v48[16]);
            v41 = asStringBool(v48[24]);
            v40 = asStringBool(v48[25]);
            v39 = asString();
            v38 = asStringBool(*v12);
            v36 = *(v12 + 8);
            v37 = *(v12 + 16);
            v35 = asStringBool(*(v12 + 24));
            v24 = asStringBool(*(v12 + 32));
            v25 = *(v12 + 36);
            v26 = asStringBool(*(v12 + 40));
            v27 = asStringBool(*(v12 + 41));
            v28 = asString();
            *buf = 136320002;
            v51 = "setActivationParams";
            v52 = 2080;
            v53 = v45;
            v54 = 2080;
            v55 = v44;
            v56 = 2080;
            v57 = *&v47[8];
            v58 = 2080;
            v59 = *v48;
            v60 = 2080;
            v61 = v43;
            v62 = 2080;
            v63 = v42;
            v64 = 1024;
            v65 = *&v48[20];
            v66 = 2080;
            v67 = v41;
            v68 = 2080;
            v69 = v40;
            v70 = 2080;
            v71 = v39;
            v72 = 2080;
            v73 = v38;
            v74 = 2080;
            v75 = v36;
            v76 = 2080;
            v77 = v37;
            v78 = 2080;
            v79 = v35;
            v80 = 2080;
            v81 = v24;
            v82 = 1024;
            v83 = v25;
            v84 = 2080;
            v85 = v26;
            v86 = 2080;
            v87 = v27;
            v88 = 2080;
            v89 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) for %s: act=<%s> r=<%s> p=<%s> h=<%s> comp=<%s> s=<%d> pr=<%s> deac=<%s> (curr %s) => act=<%s> r=<%s> p=<%s> h=<%s> comp=<%s> s=<%d> pr=<%s> deac=<%s> (curr %s)", buf, 0xC2u);
            v14 = v46;
          }

          if (v47[0] && (*v12 & 1) == 0)
          {
            v29 = (v11 + 80 * v14);
            if (*v29 == 1 && v29[24] == 1)
            {
              v30 = *(a1 + 144);
              if (v30)
              {
                (*(*v30 + 592))(v30);
              }
            }
          }

          v31 = *(a1 + 136);
          v32 = *(v31 + 8);
          for (i = *(v31 + 16); v32 != i; v32 += 72)
          {
            v34 = *(v32 + 16 * a2 + 24);
            if (v34 && (*v12 != 1 || (*(v12 + 32) & 1) != 0 || *(v12 + 40) == 1))
            {
              (*(*v34 + 224))(v34);
            }
          }

          if ((a4 & 1) == 0)
          {
            sub_100491B40(a1, a2);
          }

          if ((__p[29] & 0x80000000) != 0)
          {
            operator delete(*&__p[6]);
          }

          return;
        }
      }

      v17 = 0;
      goto LABEL_29;
    }
  }
}

void sub_100491A70(uint64_t a1, int a2, uint64_t a3)
{
  *a3 = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 36) = 0;
  v6 = *(a3 + 16);
  v7 = *a3;
  v8[0] = v6;
  *(v8 + 10) = *(a3 + 26);
  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(__p, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    *__p = *(a3 + 48);
    v10 = *(a3 + 64);
  }

  v11 = *(a3 + 72);
  sub_1004914F0(a1, a2, &v7, 0);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100491B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100491B40(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10049945C;
  v4[3] = &unk_101E4FC70;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 40));
  v3 = *(a1 + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10049F6D8;
  block[3] = &unk_101E4FEE0;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100491C50(uint64_t a1, int a2)
{
  v6 = 0;
  v5 = 0;
  v9 = 0;
  v10 = 0;
  memset(v15, 0, sizeof(v15));
  *&v2 = 0;
  *(&v2 + 1) = "";
  v3 = "CommCenter";
  v4 = 0;
  v7 = 0;
  v8 = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v14 = 0;
  v16 = 0;
  sub_1004914F0(a1, a2, &v2, 0);
  if (v16 < 0)
  {
    operator delete(__p);
  }
}

void sub_100491CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100491D00(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    v4 = a1 + 192;
    v5 = a1 + 192 + 80 * a2;
    memset(v25, 0, sizeof(v25));
    v6 = *(v5 + 16);
    v23 = *v5;
    *v24 = v6;
    *&v24[10] = *(v5 + 26);
    if (*(v5 + 71) < 0)
    {
      sub_100005F2C(&v25[3], *(v5 + 48), *(v5 + 56));
    }

    else
    {
      *&v25[3] = *(v5 + 48);
      *&v25[11] = *(v5 + 64);
    }

    LOBYTE(v25[15]) = *(v5 + 72);
    if ((v23 & 1) == 0)
    {
      v7 = *(a1 + 72);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        *buf = 136315394;
        *&buf[4] = "activationCompleted";
        *&buf[12] = 2080;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E %s: (change states) strange activator state: inactive ?! %s", buf, 0x16u);
      }

      LOBYTE(v23) = 1;
    }

    if (*(a1 + 184) != a2)
    {
      v9 = *(a1 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = asString();
        v11 = asString();
        *buf = 136315650;
        *&buf[4] = "activationCompleted";
        *&buf[12] = 2080;
        *&buf[14] = v10;
        *&buf[22] = 2080;
        v29 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E %s: !!! (change states) strange activator 'active settings' state: %s, must be %s", buf, 0x20u);
      }

      if ((*(v5 + 41) & 1) == 0)
      {
        *(a1 + 184) = a2;
      }
    }

    v24[16] = 1;
    v18 = v23;
    v19[0] = *v24;
    *(v19 + 10) = *&v24[10];
    if (SHIBYTE(v25[14]) < 0)
    {
      sub_100005F2C(&__p, *&v25[3], *&v25[7]);
    }

    else
    {
      __p = *&v25[3];
      v21 = *&v25[11];
    }

    v22 = v25[15];
    sub_1004914F0(a1, a2, &v18, 0);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    sub_100492120(a1, a2, 1, 0);
    if (*(v5 + 24) == 1)
    {
      *(v4 + 80 * otherContextType() + 24) = 0;
    }

    sub_100004AA0(buf, (a1 + 40));
    v13 = *buf;
    v12 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100492598;
    v15[3] = &unk_101E4FC10;
    v15[4] = a1;
    v15[5] = v13;
    v16 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = a2;
    v26 = 0;
    v27 = 0;
    sub_100004AA0(&v26, (a1 + 40));
    v14 = *(a1 + 56);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 1174405120;
    *&buf[16] = sub_10049F6D8;
    v29 = &unk_101E4FEE0;
    v31 = v26;
    v32 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v15;
    dispatch_async(v14, buf);
    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v27)
    {
      sub_100004A34(v27);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (SHIBYTE(v25[14]) < 0)
    {
      operator delete(*&v25[3]);
    }
  }
}

void sub_1004920C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492120(uint64_t a1, unsigned int a2, _BOOL4 a3, int a4)
{
  v5 = a1;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    v13 = v12[4];
    v29 = v12[3];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v27 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v27 = 1;
LABEL_9:
  if (v29)
  {
    v28 = v13;
    if (a4)
    {
      subscriber::makeSimSlotRange();
      v14 = v32;
      if (v32 != v33)
      {
        do
        {
          if (v34(LODWORD(v14->__vftable)))
          {
            break;
          }

          v14 = (v14 + 4);
        }

        while (v14 != v33);
        while (v14 != v33)
        {
          v15 = LODWORD(v14->__vftable);
          v16 = v5;
          v17 = *(v5 + 9);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = subscriber::asString();
            v19 = v16[32];
            v20 = asString();
            v21 = asStringBool(a3);
            *buf = 136315906;
            *&buf[4] = v18;
            *&buf[12] = 1024;
            *&buf[14] = v19;
            v36 = 2080;
            v37 = v20;
            v38 = 2080;
            v39 = v21;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I reportDataPDPActivatorState simSlot %s, pdp %d, ct %s, active %s (forced)", buf, 0x26u);
            v13 = v28;
          }

          v5 = v16;
          (*(*v29 + 896))(v29, v15, v16[32], a2, a3);
          do
          {
            v14 = (v14 + 4);
          }

          while (v14 != v33 && (v34(LODWORD(v14->__vftable)) & 1) == 0);
        }
      }
    }

    else if ((*(*v5 + 592))(v5))
    {
      v22 = *(v5 + 9);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v5 + 584))(&v32, v5);
        v23 = subscriber::asString();
        v24 = v5[32];
        v25 = asString();
        v26 = asStringBool(a3);
        *buf = 136315906;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = v24;
        v36 = 2080;
        v37 = v25;
        v38 = 2080;
        v39 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I reportDataPDPActivatorState simSlot %s, pdp %d, ct %s, active %s", buf, 0x26u);
        if (v33)
        {
          sub_100004A34(v33);
        }
      }

      (*(*v5 + 584))(buf, v5);
      (*(*v29 + 896))(v29, *(*buf + 52), v5[32], a2, a3);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10049252C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((a11 & 1) == 0)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492598(void *a1)
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
        v6 = otherContextType();
        sub_10048AFE8(v3, v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10049262C(uint64_t result, uint64_t a2)
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

void sub_100492648(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100492658(uint64_t a1)
{
  if (sub_100094EA8(*(a1 + 136)))
  {
    v2 = sub_100094F40(*(a1 + 136));
    v3 = v2 + 1;
    v4 = *v2;
    if (*v2 != v2 + 1)
    {
      do
      {
        v5 = v4[4];
        v6 = v4[5];
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v5 + 504))(v5);
        if (v6)
        {
          sub_100004A34(v6);
        }

        v7 = v4[1];
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
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
      }

      while (v8 != v3);
    }
  }
}

void sub_100492730(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100492748(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2;
      if (*v2 != v2 + 1)
      {
        do
        {
          v6 = v5[4];
          v7 = v5[5];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v8 = (*(*v6 + 480))(v6);
          if (v7)
          {
            sub_100004A34(v7);
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
              v11 = *v10 == v5;
              v5 = v10;
            }

            while (!v11);
          }

          v4 |= v8;
          v5 = v10;
        }

        while (v10 != v2 + 1);
      }

      v2 += 9;
    }

    while (v2 != v3);
  }

  return v4 & 1;
}

void sub_100492844(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100492914(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  return a1;
}

uint64_t sub_10049295C(uint64_t a1)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *(v3 + 40);
      v6 = *(v3 + 48);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        break;
      }

      v8 = 3;
      if (v6)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (v8 != 3 && v8)
      {
        return v1 & 1;
      }

      v3 += 72;
      if (v3 == v4)
      {
        goto LABEL_18;
      }
    }

    if (v7)
    {
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v1 = (*(*v7 + 432))(v7);
      if (!v6)
      {
        return v1 & 1;
      }

      sub_100004A34(v6);
      v8 = 1;
    }

    else
    {
      v8 = 0;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    sub_100004A34(v6);
    goto LABEL_12;
  }

LABEL_18:
  v1 = 0;
  return v1 & 1;
}

void sub_100492A94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492ABC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v7 = *(a3 + 8);
  v8 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_10009D4CC(a1, a2, &v9);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v9)
  {
    (*(*v9 + 496))(v9, a4, a5);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100492B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492B98(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 8);
  for (i = *(v2 + 16); v3 != i; v3 += 9)
  {
    v6 = *v3;
    if (*v3 != v3 + 1)
    {
      do
      {
        v8 = v6[4];
        v7 = v6[5];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v8 + 56))(v8) == a2)
        {
          (*(*v8 + 512))(v8);
          v9 = *(a1 + 72);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I reset state due to resetDataContext", buf, 2u);
          }

          sub_100492120(a1, a2, 0, 1);
        }

        if (v7)
        {
          sub_100004A34(v7);
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
            v12 = *v11 == v6;
            v6 = v11;
          }

          while (!v12);
        }

        v6 = v11;
      }

      while (v11 != v3 + 1);
    }
  }
}

void sub_100492D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492D5C(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100004AA0(&v17, (a1 + 40));
  v4 = v17;
  v3 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  Registry::getTimerService(&v17, *(a1 + 80));
  v5 = v17;
  sub_10000501C(__p, "BB context handover back off(resume)");
  v6 = *(a1 + 56);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100492FC8;
  aBlock[3] = &unk_101E4FC40;
  aBlock[4] = a1;
  aBlock[5] = v4;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  sub_100D23364(v5, __p, 0, 10000000, &object, &v12);
  v7 = v16;
  v16 = 0;
  v8 = *(a1 + 176);
  *(a1 + 176) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100492F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_100492FC8(void *a1)
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
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I BB context handover back off timer(resume) fired", v8, 2u);
        }

        v7 = *(v3 + 176);
        *(v3 + 176) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10049309C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a3)
  {
    if (!sub_100094EA8(*(a1 + 136)) || (v7 = sub_100094F40(*(a1 + 136)), v8 = v7 + 1, v9 = *v7, *v7 == v7 + 1))
    {
LABEL_15:
      *a4 = 0;
      a4[1] = 0;
    }

    else
    {
      while (1)
      {
        v11 = v9[4];
        v10 = v9[5];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v11 + 56))(v11) == a2)
        {
          break;
        }

        if (v10)
        {
          sub_100004A34(v10);
        }

        v12 = v9[1];
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
            v13 = v9[2];
            v14 = *v13 == v9;
            v9 = v13;
          }

          while (!v14);
        }

        v9 = v13;
        if (v13 == v8)
        {
          goto LABEL_15;
        }
      }

      *a4 = v11;
      a4[1] = v10;
    }

    return;
  }

  v36 = 0;
  v37 = 0;
  (*(*a1 + 584))(&v36, a1);
  if (!v36 || (v15 = *(v36 + 52)) == 0)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v17 = ServiceMap;
    if ((v18 & 0x8000000000000000) != 0)
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

    std::mutex::lock(ServiceMap);
    v38 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, &v38);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        if (!v24)
        {
          goto LABEL_24;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
LABEL_24:
      v15 = 0;
      if (v25)
      {
        goto LABEL_31;
      }

LABEL_30:
      sub_100004A34(v23);
      goto LABEL_31;
    }

LABEL_29:
    v15 = (*(*v24 + 808))(v24);
    if (v25)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_31:
  if (v15 <= 1)
  {
    v15 = 1;
  }

  v26 = *(a1 + 136);
  v27 = *(v26 + 8);
  v28 = *(v26 + 16);
  while (1)
  {
    if (v27 == v28)
    {
      goto LABEL_49;
    }

    if (sub_100117EDC(v27) == v15)
    {
      break;
    }

    v27 += 72;
  }

  v29 = sub_100493428(*(a1 + 136), v15);
  v30 = v29 + 1;
  v31 = *v29;
  if (*v29 == v29 + 1)
  {
LABEL_49:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_50;
  }

  while (1)
  {
    v33 = v31[4];
    v32 = v31[5];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v33 + 56))(v33) == a2)
    {
      break;
    }

    if (v32)
    {
      sub_100004A34(v32);
    }

    v34 = v31[1];
    if (v34)
    {
      do
      {
        v35 = v34;
        v34 = *v34;
      }

      while (v34);
    }

    else
    {
      do
      {
        v35 = v31[2];
        v14 = *v35 == v31;
        v31 = v35;
      }

      while (!v14);
    }

    v31 = v35;
    if (v35 == v30)
    {
      goto LABEL_49;
    }
  }

  *a4 = v33;
  a4[1] = v32;
LABEL_50:
  if (v37)
  {
    sub_100004A34(v37);
  }
}

void sub_1004933D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100493428(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v2 == v3)
  {
LABEL_4:
    sub_10176193C();
  }

  while (sub_100117EDC(v2) != a2)
  {
    v2 += 72;
    if (v2 == v3)
    {
      goto LABEL_4;
    }
  }

  return v2;
}

void sub_100493490(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[18];
  v4 = a1[19];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[21];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3)
  {
    (*(*v3 + 256))(v3);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v4)
  {

    sub_100004A34(v4);
  }
}

uint64_t sub_10049357C(uint64_t a1)
{
  if (*(a1 + 144))
  {
    v2 = 0;
    for (i = 0; i != 2; ++i)
    {
      v2 |= (*(**(a1 + 144) + 504))(*(a1 + 144), dword_1018083B0[i]);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

uint64_t sub_100493614(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 152);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v2)
  {
    v4 = 0;
    if (!v3)
    {
      return v4;
    }

    goto LABEL_5;
  }

  v4 = (*(*v2 + 72))(v2);
  if (v3)
  {
LABEL_5:
    sub_100004A34(v3);
  }

  return v4;
}

void sub_100493694(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004936C4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 392) = a2;
  *(result + 400) = a3;
  return result;
}

uint64_t sub_1004936CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 360) = a2;
  *(result + 368) = a3;
  return result;
}

uint64_t sub_1004936D4(uint64_t a1, int a2, _BOOL4 a3, uint64_t a4, BOOL *a5)
{
  v103 = a4;
  if (!capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
LABEL_18:
    v20 = 1;
    return v20 & 1;
  }

  v8 = *(a1 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "ipcInterfaceConfig";
    v105 = 2080;
    v106 = subscriber::asString();
    v107 = 2080;
    v108 = asStringBool(a3);
    v109 = 2048;
    v110 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx", buf, 0x2Au);
  }

  v101 = a1;
  v99 = (a1 + 80);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v10 = ServiceMap;
  v96 = v11;
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
  if (!v15)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v16 = v15[3];
  v17 = v15[4];
  if (!v17)
  {
LABEL_11:
    std::mutex::unlock(v10);
    v17 = 0;
    v18 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v18 = 0;
LABEL_12:
  if (v16 && (*(*v16 + 16))(v16))
  {
    v19 = *(v101 + 72);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DataShutdown: do not do ipcInterfaceConfig during a shutdown", buf, 2u);
    }

    if ((v18 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    goto LABEL_18;
  }

  if ((v18 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v21 = *(v101 + 136);
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
    if (v23 != v22)
    {
      while (1)
      {
        v24 = *v23;
        if (*v23 != v23 + 1)
        {
          break;
        }

LABEL_43:
        isValidSimSlot = subscriber::isValidSimSlot();
        v23 += 9;
        if (v23 == v22)
        {
          v34 = 1;
        }

        else
        {
          v34 = isValidSimSlot;
        }

        if (v34 == 1)
        {
          goto LABEL_47;
        }
      }

      while (1)
      {
        v25 = v24[4];
        v26 = v24[5];
        if (v26)
        {
          atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v25 && (*(*v25 + 56))(v25) == 1 && ((*(*v25 + 216))(v25) & 1) == 0)
        {
          a2 = sub_100117EDC(v23);
          v30 = *(v101 + 72);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = subscriber::asString();
            v32 = asStringBool(a3);
            *buf = 136315906;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v31;
            v107 = 2080;
            v108 = v32;
            v109 = 2048;
            v110 = v103;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (0)", buf, 0x2Au);
          }

          v27 = 0;
          if (!v26)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v27 = 1;
          if (!v26)
          {
            goto LABEL_31;
          }
        }

        sub_100004A34(v26);
LABEL_31:
        if (v27)
        {
          v28 = v24[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v24[2];
              v81 = *v29 == v24;
              v24 = v29;
            }

            while (!v81);
          }

          v24 = v29;
          if (v29 != v23 + 1)
          {
            continue;
          }
        }

        goto LABEL_43;
      }
    }
  }

LABEL_47:
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    a2 = *(v101 + 392);
    v35 = *(v101 + 72);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = subscriber::asString();
      v37 = asStringBool(a3);
      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfig";
      v105 = 2080;
      v106 = v36;
      v107 = 2080;
      v108 = v37;
      v109 = 2048;
      v110 = v103;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (1)", buf, 0x2Au);
    }
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v38 = *(v101 + 72);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = subscriber::asString();
      v40 = asStringBool(a3);
      *buf = 136315906;
      *&buf[4] = "ipcInterfaceConfig";
      v105 = 2080;
      v106 = v39;
      v107 = 2080;
      v108 = v40;
      v109 = 2048;
      v110 = v103;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: slot=%s, enable = %s, mask = 0x%llx (2)", buf, 0x2Au);
    }

    a2 = 1;
  }

  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v41 = DataUtils::otherSimSlot();
    *(v101 + 392) = v41;
    v42 = *(v101 + 136);
    v44 = *(v42 + 8);
    v43 = *(v42 + 16);
    while (v44 != v43)
    {
      if (sub_100117EDC(v44) == v41)
      {
        if (subscriber::isValidSimSlot())
        {
          goto LABEL_62;
        }

        break;
      }

      v44 += 72;
    }

    *(v101 + 392) = 0;
    *(v101 + 396) = 0;
    *(v101 + 400) = 0;
  }

LABEL_62:
  if (!a3 || *(v101 + 397) == 1 && *(v101 + 396) != 1)
  {
    goto LABEL_72;
  }

  v45 = *(v101 + 136);
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  if (v46 == v47)
  {
LABEL_69:
    v49 = *(v101 + 72);
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
LABEL_72:
      v54 = 0;
      goto LABEL_73;
    }

    v50 = subscriber::asString();
    *buf = 136315394;
    *&buf[4] = "ipcInterfaceConfig";
    v105 = 2080;
    v106 = v50;
    v51 = "#E %s: Wrong context slot: %s";
    v52 = v49;
    v53 = 22;
LABEL_71:
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, v51, buf, v53);
    goto LABEL_72;
  }

  v48 = *(v101 + 392);
  while (sub_100117EDC(v46) != v48)
  {
    v46 += 72;
    if (v46 == v47)
    {
      goto LABEL_69;
    }
  }

  v80 = *(v101 + 392);
  v81 = v103 == *(v101 + 400) && v80 == a2;
  if (v81)
  {
    v95 = *(v101 + 72);
    if (!os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    v51 = "#I %s: same slot, same config set activation";
    v52 = v95;
    v53 = 12;
    goto LABEL_71;
  }

  v82 = sub_100493428(*(v101 + 136), v80);
  v83 = v82 + 1;
  v84 = *v82;
  if (*v82 == v82 + 1)
  {
    goto LABEL_72;
  }

  v54 = 0;
  do
  {
    v86 = v84[4];
    v85 = v84[5];
    if (v85)
    {
      atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!(*(*v86 + 56))(v86))
    {
      if ((*(*v86 + 88))(v86) && (*(*v86 + 88))(v86) != 2)
      {
        v93 = *(v101 + 72);
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v86 + 88))(v86);
          v94 = asString();
          *buf = 136315138;
          *&buf[4] = v94;
          _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#N cannot restart context in state: %s", buf, 0xCu);
        }
      }

      else
      {
        v102 = 0;
        v87 = (*(*v86 + 528))(v86, 0, v101 + 400, &v102);
        v88 = *(v101 + 72);
        v89 = os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT);
        if (v87)
        {
          if (v89)
          {
            v90 = asStringBool(v102);
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v90;
            _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I %s: success (deactivation): updated=%s", buf, 0x16u);
          }

          *(v101 + 396) = 256;
        }

        else if (v89)
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#E %s: failure (0)", buf, 0xCu);
        }

        v54 = 1;
      }
    }

    if (v85)
    {
      sub_100004A34(v85);
    }

    v91 = v84[1];
    if (v91)
    {
      do
      {
        v92 = v91;
        v91 = *v91;
      }

      while (v91);
    }

    else
    {
      do
      {
        v92 = v84[2];
        v81 = *v92 == v84;
        v84 = v92;
      }

      while (!v81);
    }

    v84 = v92;
  }

  while (v92 != v83);
LABEL_73:
  v55 = sub_100493428(*(v101 + 136), a2);
  v57 = v55 + 1;
  v56 = *v55;
  if (*v55 != v55 + 1)
  {
    v58 = a3 | 0x100;
    v20 = 1;
    v97 = v54;
    do
    {
      v60 = v56[4];
      v59 = v56[5];
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v61 = (*(*v60 + 56))(v60);
      if (!v61)
      {
        v62 = (*(*v60 + 528))(v60, a3, &v103, a5);
        v63 = *(v101 + 72);
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        if (v62)
        {
          if (v64)
          {
            v65 = asStringBool(*a5);
            *buf = 136315394;
            *&buf[4] = "ipcInterfaceConfig";
            v105 = 2080;
            v106 = v65;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s: success: updated=%s", buf, 0x16u);
          }

          *(v101 + 392) = a2;
          *(v101 + 396) = v58;
          *(v101 + 400) = v103;
          if ((v54 & 1) == 0 && (!a3 || !*a5))
          {
            v20 = 1;
            goto LABEL_102;
          }

          v66 = Registry::getServiceMap(*v99);
          v67 = v66;
          v68 = v96;
          if (v96 < 0)
          {
            v69 = 5381;
            v70 = (v96 & 0x7FFFFFFFFFFFFFFFLL);
            do
            {
              v68 = v69;
              v71 = *v70++;
              v69 = (33 * v69) ^ v71;
            }

            while (v71);
          }

          std::mutex::lock(v66);
          *buf = v68;
          v72 = sub_100009510(&v67[1].__m_.__sig, buf);
          if (v72)
          {
            v73 = v72[3];
            v74 = v72[4];
            if (v74)
            {
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v67);
              atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v74);
              v75 = 0;
              if (!v73)
              {
                goto LABEL_99;
              }

              goto LABEL_97;
            }
          }

          else
          {
            v73 = 0;
          }

          std::mutex::unlock(v67);
          v74 = 0;
          v75 = 1;
          if (!v73)
          {
LABEL_99:
            if ((v75 & 1) == 0)
            {
              sub_100004A34(v74);
            }

            v20 = 1;
            v54 = v97;
            v58 = a3 | 0x100;
            goto LABEL_102;
          }

LABEL_97:
          (*(*v60 + 344))(buf, v60, 0);
          (*(*v73 + 1208))(v73, buf);
          if (SHIBYTE(v107) < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_99;
        }

        if (v64)
        {
          *buf = 136315138;
          *&buf[4] = "ipcInterfaceConfig";
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E %s: failure", buf, 0xCu);
        }

        v20 = 0;
      }

LABEL_102:
      if (v59)
      {
        sub_100004A34(v59);
      }

      if (!v61)
      {
        return v20 & 1;
      }

      v76 = v56[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = v56[2];
          v81 = *v77 == v56;
          v56 = v77;
        }

        while (!v81);
      }

      v56 = v77;
    }

    while (v77 != v57);
  }

  v78 = *(v101 + 72);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "ipcInterfaceConfig";
    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#E %s: failure: did not find context", buf, 0xCu);
  }

  v20 = 0;
  *a5 = 0;
  return v20 & 1;
}

void sub_100494404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v32)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004944A4(capabilities::ct *a1, int a2)
{
  if (capabilities::ct::supportsIPCInterfaceConfig(a1))
  {
    v25 = 0;
    sub_1004936D4(a1, a2, 0, 0, &v25);
    v4 = (*(*a1 + 576))(a1, 0, 1, 1);
    sub_1004936D4(a1, a2, 1, v4, &v25);
    v5 = sub_100493428(*(a1 + 17), a2);
    v6 = v5 + 1;
    v7 = *v5;
    if (*v5 != v5 + 1)
    {
      do
      {
        v9 = v7[4];
        v8 = v7[5];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v9 + 56))(v9))
        {
          goto LABEL_18;
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 10));
        v11 = ServiceMap;
        if (v12 < 0)
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
        __p[0] = v12;
        v16 = sub_100009510(&v11[1].__m_.__sig, __p);
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
            if (!v18)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }

        else
        {
          v18 = 0;
        }

        std::mutex::unlock(v11);
        v17 = 0;
        v19 = 1;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_15:
        (*(*v9 + 344))(__p, v9, 0);
        (*(*v18 + 1208))(v18, __p);
        if (v24 < 0)
        {
          operator delete(__p[0]);
          if (v19)
          {
            goto LABEL_18;
          }

LABEL_17:
          sub_100004A34(v17);
          goto LABEL_18;
        }

LABEL_16:
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v8)
        {
          sub_100004A34(v8);
        }

        v20 = v7[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v7[2];
            v22 = *v21 == v7;
            v7 = v21;
          }

          while (!v22);
        }

        v7 = v21;
      }

      while (v21 != v6);
    }
  }
}

void sub_100494758(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v16)
    {
LABEL_3:
      if (!v14)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (v16)
  {
    goto LABEL_3;
  }

  sub_100004A34(v15);
  if (!v14)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  sub_100004A34(v14);
  goto LABEL_5;
}

void sub_1004947A8()
{
  if (!v0)
  {
    JUMPOUT(0x100494774);
  }

  JUMPOUT(0x10049476CLL);
}

uint64_t sub_1004947B8(void *a1, uint64_t a2)
{
  v3 = a1[14];
  v4 = (*(*a1 + 72))(a1);
  v5 = *(*v3 + 200);

  return v5(v3, v4, a2);
}

uint64_t sub_10049483C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 104);
  v4 = (*(*(a1 - 8) + 72))();
  v5 = *(*v3 + 200);

  return v5(v3, v4, a2);
}

uint64_t sub_1004948C0(void *a1, uint64_t a2, int a3)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_21;
  }

  (*(*a1 + 584))(&v18, a1);
  matched = DataUtils::matchPersonality();
  if (*&v19[4])
  {
    sub_100004A34(*&v19[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_21:
    v16 = a1[9];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      *v19 = "handOverToOtherOnlineStart";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &v18, 0xCu);
    }

    goto LABEL_23;
  }

  if (!sub_100094EA8(a1[17]) || (v7 = sub_100094F40(a1[17]), v8 = v7 + 1, v9 = *v7, *v7 == v7 + 1))
  {
LABEL_23:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v10 = 0;
  do
  {
    v12 = v9[4];
    v11 = v9[5];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(*v12 + 56))(v12) != a3)
    {
      v10 |= (*(*v12 + 608))(v12, a2);
    }

    if (v11)
    {
      sub_100004A34(v11);
    }

    v13 = v9[1];
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
        v14 = v9[2];
        v15 = *v14 == v9;
        v9 = v14;
      }

      while (!v15);
    }

    v9 = v14;
  }

  while (v14 != v8);
  return v10 & 1;
}

void sub_100494B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100494B50(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_5;
  }

  (*(*a1 + 584))(&v20, a1);
  matched = DataUtils::matchPersonality();
  if (*&v21[4])
  {
    sub_100004A34(*&v21[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_5:
    v10 = a1[9];
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (a5)
    {
      if (v11)
      {
        v20 = 136315138;
        *v21 = "setActivated";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings (activate)", &v20, 0xCu);
      }

      return;
    }

    if (v11)
    {
      v20 = 136315138;
      *v21 = "setActivated";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N %s: method called with inactive settings (deactivate)", &v20, 0xCu);
    }
  }

  if (sub_100094EA8(a1[17]))
  {
    v12 = sub_100094F40(a1[17]);
    v13 = v12 + 1;
    v14 = *v12;
    if (*v12 != v12 + 1)
    {
      do
      {
        v16 = v14[4];
        v15 = v14[5];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v16 + 56))(v16) == a2)
        {
          (*(*v16 + 648))(v16, a4, a5);
        }

        if (v15)
        {
          sub_100004A34(v15);
        }

        v17 = v14[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v14[2];
            v19 = *v18 == v14;
            v14 = v18;
          }

          while (!v19);
        }

        v14 = v18;
      }

      while (v18 != v13);
    }
  }
}

void sub_100494DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100494E0C(uint64_t a1, unsigned int a2)
{
  if ((*(*a1 + 592))(a1))
  {
    v4 = *(a1 + 136);
    (*(*a1 + 584))(&buf, a1);
    v5 = sub_100094EA8(v4);
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (v5)
    {
      *&buf = a1;
      *(&buf + 1) = a2;
      (*(*a1 + 584))(&v13, a1);
      v6 = sub_1000A8F0C(a1);
      if (v14)
      {
        sub_100004A34(v14);
      }

      if (!v6)
      {
        goto LABEL_19;
      }

      v7 = *(a1 + 184);
      if (!validContextType())
      {
        goto LABEL_19;
      }

      v9 = *(a1 + 144);
      v8 = *(a1 + 152);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!v9)
        {
          sub_100004A34(v8);
LABEL_19:
          sub_1004950D8(&buf);
          return;
        }
      }

      else if (!v9)
      {
        goto LABEL_19;
      }

      v11 = *(a1 + 72);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = asString();
        *v15 = 136315138;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I active settings activate error due to %s", v15, 0xCu);
      }

      sub_1004950D8(&buf);
      (*(*v9 + 368))(v9, v7, 1, 0, 0, 0);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }

  else
  {
    v10 = *(a1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "deactivateAllDataContexts";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", &buf, 0xCu);
    }
  }
}

void sub_100495098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004950D8(unsigned int *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 136);
  (*(**a1 + 584))(&v16, *a1);
  v4 = sub_100094F40(v3);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = v6[4];
      v9 = v6[5];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = (*(*v8 + 56))(v8);
      (*(*v2 + 584))(&v14, v2);
      sub_10048F648(v2, v10, &v14, a1[2], "CommCenter");
      if (v15)
      {
        sub_100004A34(v15);
      }

      if (v9)
      {
        sub_100004A34(v9);
      }

      v11 = v6[1];
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
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != v5);
  }
}

void sub_10049525C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004952A8(void *a1, uint64_t a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "handleDataContextActivated";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s activated, reason: probation is over", buf, 0x16u);
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_31;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (matched)
  {
    v31 = sub_100490EEC(a1, a2, buf);
    v6 = a1[18];
    if (v6)
    {
      (*(*v6 + 360))(v6, a2);
    }

    if (v31)
    {
      sub_10048C10C(a1, 4, 0, 0, 0);
    }

    if (sub_100094EA8(a1[17]))
    {
      v7 = sub_100094F40(a1[17]);
      v9 = v7 + 1;
      v8 = *v7;
      if (*v7 == v7 + 1)
      {
        v10 = 0;
        v30 = 0;
      }

      else
      {
        v30 = 0;
        v10 = 0;
        do
        {
          v12 = v8[4];
          v11 = v8[5];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v12 + 56))(v12) == a2)
          {
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v10)
            {
              sub_100004A34(v10);
            }

            v10 = v11;
            v30 = v12;
          }

          if (v11)
          {
            sub_100004A34(v11);
          }

          v13 = v8[1];
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
              v14 = v8[2];
              v15 = *v14 == v8;
              v8 = v14;
            }

            while (!v15);
          }

          v8 = v14;
        }

        while (v14 != v9);
      }

      v17 = sub_100094F40(a1[17]);
      v19 = v17 + 1;
      v18 = *v17;
      if (*v17 != v17 + 1)
      {
        do
        {
          v21 = v18[4];
          v20 = v18[5];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v21 + 56))(v21) != a2)
          {
            if ((v31 & 1) != 0 || (*(*v21 + 136))(v21, 3))
            {
              v22 = a1[9];
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = asString();
                v24 = asString();
                *buf = 136315650;
                *&buf[4] = "handleDataContextActivated";
                *&buf[12] = 2080;
                *&buf[14] = v23;
                v35 = 2080;
                v36 = v24;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Handover succeeded from %s to %s", buf, 0x20u);
              }

              (*(*v21 + 616))(v21, 3);
            }

            else
            {
              v27 = a1[9];
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = asString();
                v29 = asString();
                *buf = 136315650;
                *&buf[4] = "handleDataContextActivated";
                *&buf[12] = 2080;
                *&buf[14] = v28;
                v35 = 2080;
                v36 = v29;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s: Activation succeeded on %s. Notifying other context %s", buf, 0x20u);
              }

              (*(*v30 + 600))(buf);
              (*(*v21 + 640))(v21, buf);
              if (SHIBYTE(v35) < 0)
              {
                operator delete(*buf);
              }

              if (sub_10048AE40(a1))
              {
                sub_10048C10C(a1, 0, 0, 0, 0);
              }
            }
          }

          if (v20)
          {
            sub_100004A34(v20);
          }

          v25 = v18[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v18[2];
              v15 = *v26 == v18;
              v18 = v26;
            }

            while (!v15);
          }

          v18 = v26;
        }

        while (v26 != v19);
      }

      if (v31)
      {
        (*(*a1 + 584))(&v32, a1);
        sub_10048C8BC(a1, &v32);
        if (v33)
        {
          sub_100004A34(v33);
        }
      }

      if (v10)
      {
        sub_100004A34(v10);
      }
    }
  }

  else
  {
LABEL_31:
    v16 = a1[9];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "handleDataContextActivated";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_1004958C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_100495954(void *a1, int a2)
{
  v4 = a1[9];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "notifyDataContextOtherActive";
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s is already active", buf, 0x16u);
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_27;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (matched)
  {
    if (sub_100094EA8(a1[17]))
    {
      v6 = sub_100094F40(a1[17]);
      v7 = v6 + 1;
      v8 = *v6;
      if (*v6 == v6 + 1)
      {
        v10 = 0;
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v12 = v8[4];
          v11 = v8[5];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v12 + 56))(v12) == a2)
          {
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v10)
            {
              sub_100004A34(v10);
            }

            v10 = v11;
            v9 = v12;
          }

          if (v11)
          {
            sub_100004A34(v11);
          }

          v13 = v8[1];
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
              v14 = v8[2];
              v15 = *v14 == v8;
              v8 = v14;
            }

            while (!v15);
          }

          v8 = v14;
        }

        while (v14 != v7);
      }

      v17 = sub_100094F40(a1[17]);
      v18 = v17 + 1;
      v19 = *v17;
      if (*v17 != v17 + 1)
      {
        do
        {
          v21 = v19[4];
          v20 = v19[5];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((*(*v21 + 56))(v21) != a2)
          {
            v22 = a1[9];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = asString();
              v24 = asString();
              *buf = 136315650;
              *&buf[4] = "notifyDataContextOtherActive";
              *&buf[12] = 2080;
              *&buf[14] = v23;
              v28 = 2080;
              v29 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: Notifying other context %s: %s is already active", buf, 0x20u);
            }

            (*(*v9 + 600))(buf, v9);
            (*(*v21 + 640))(v21, buf);
            if (SHIBYTE(v28) < 0)
            {
              operator delete(*buf);
            }
          }

          if (v20)
          {
            sub_100004A34(v20);
          }

          v25 = v19[1];
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v26 = v19[2];
              v15 = *v26 == v19;
              v19 = v26;
            }

            while (!v15);
          }

          v19 = v26;
        }

        while (v26 != v18);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }
    }
  }

  else
  {
LABEL_27:
    v16 = a1[9];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "notifyDataContextOtherActive";
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s: method called with inactive settings", buf, 0xCu);
    }
  }
}

void sub_100495DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100495E20(void *a1, uint64_t *a2)
{
  v4 = *(a1 + 46);
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v40 = "cleanProbationIfReady";
    *&v40[8] = 2080;
    *&v40[10] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: trying to clean probation for %s", buf, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v40 = "cleanProbationIfReady";
    v30 = "#E %s: !!! clear probation on inactive activator ?";
LABEL_50:
    v31 = v29;
    v32 = 12;
    goto LABEL_51;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_48;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v40[4])
  {
    sub_100004A34(*&v40[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_48:
    v29 = a1[9];
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v40 = "cleanProbationIfReady";
    v30 = "#E %s: method called with inactive settings";
    goto LABEL_50;
  }

  if ((sub_100094EA8(a1[17]) & 1) == 0)
  {
    v33 = a1[9];
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v34 = subscriber::asString();
    *buf = 136315394;
    *v40 = "cleanProbationIfReady";
    *&v40[8] = 2080;
    *&v40[10] = v34;
    v30 = "#E %s: Cannot find personality: %s";
    v31 = v33;
    v32 = 22;
LABEL_51:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    return;
  }

  v7 = sub_100094F40(a1[17]);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 == v7 + 1)
  {
LABEL_23:
    v16 = sub_100094F40(a1[17]);
    v17 = v16 + 1;
    v18 = *v16;
    if (*v16 != v16 + 1)
    {
      do
      {
        v19 = v18[4];
        v20 = v18[5];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v4 == (*(*v19 + 56))(v19))
        {
          if (v4 <= 1 && LOBYTE(a1[10 * v4 + 29]) == 1)
          {
            v21 = a1[9];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = asString();
              *buf = 136315394;
              *v40 = "cleanProbationIfReady";
              *&v40[8] = 2080;
              *&v40[10] = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N %s: probation: %s", buf, 0x16u);
            }

            sub_100496434(a1, v4);
          }

          else
          {
            v23 = a1[9];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = asString();
              *buf = 136315394;
              *v40 = "cleanProbationIfReady";
              *&v40[8] = 2080;
              *&v40[10] = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#N %s: Not on probation: %s", buf, 0x16u);
            }
          }
        }

        if (v20)
        {
          sub_100004A34(v20);
        }

        v25 = v18[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v18[2];
            v15 = *v26 == v18;
            v18 = v26;
          }

          while (!v15);
        }

        v18 = v26;
      }

      while (v26 != v17);
    }

    v27 = a2[1];
    v37 = *a2;
    v38 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10049652C(a1, &v37);
    v28 = v38;
    if (v38)
    {
      goto LABEL_45;
    }
  }

  else
  {
    while (1)
    {
      v10 = v9[4];
      v11 = v9[5];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v10 + 56))(v10))
      {
        v12 = a1[18];
        if (v12)
        {
          if (((*(*v12 + 512))(v12, v4) & 1) == 0)
          {
            break;
          }
        }
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v8)
      {
        goto LABEL_23;
      }
    }

    v35 = a1[9];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = asString();
      *buf = 136315394;
      *v40 = "cleanProbationIfReady";
      *&v40[8] = 2080;
      *&v40[10] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#N %s: Connection not ready for: %s", buf, 0x16u);
    }

    if (v11)
    {
      v28 = v11;
LABEL_45:
      sub_100004A34(v28);
    }
  }
}

void sub_1004963B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100496410(uint64_t a1, int a2)
{
  if (a2 > 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(a1 + 80 * a2 + 232);
  }

  return v2 & 1;
}

uint64_t sub_100496434(uint64_t a1, signed int a2)
{
  if (a2 <= 1 && *(a1 + 80 * a2 + 232) == 1)
  {
    v4 = *(a1 + 72);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "unsetProbation";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v6, 0xCu);
    }
  }

  sub_10049D8EC(a1, a2, 0, 1);
  return sub_10048C10C(a1, 13, 0, 0, 0);
}

void sub_10049652C(void *a1, uint64_t a2)
{
  v4 = *(a1 + 46);
  v5 = a1[9];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *v43 = "handleActivatedIfReady";
    *&v43[8] = 2080;
    *&v43[10] = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: %s", buf, 0x16u);
  }

  if ((validContextType() & 1) == 0)
  {
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v43 = "handleActivatedIfReady";
    v32 = "#E %s: !!! postActivated on inactive activator ?";
    goto LABEL_56;
  }

  if (!(*(*a1 + 592))(a1))
  {
    goto LABEL_54;
  }

  (*(*a1 + 584))(buf, a1);
  matched = DataUtils::matchPersonality();
  if (*&v43[4])
  {
    sub_100004A34(*&v43[4]);
  }

  if ((matched & 1) == 0)
  {
LABEL_54:
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v43 = "handleActivatedIfReady";
    v32 = "#E %s: method called with inactive settings";
    goto LABEL_56;
  }

  if ((sub_100094EA8(a1[17]) & 1) == 0)
  {
    v31 = a1[9];
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *v43 = "handleActivatedIfReady";
    v32 = "#I %s: unknown personality";
LABEL_56:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 0xCu);
    return;
  }

  v7 = sub_100094F40(a1[17]);
  v8 = v7 + 1;
  v9 = *v7;
  if (*v7 != v7 + 1)
  {
    do
    {
      v11 = v9[4];
      v10 = v9[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v11 + 56))(v11))
      {
        if ((*(*v11 + 536))(v11))
        {
          v33 = a1[9];
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          v34 = asString();
          *buf = 136315394;
          *v43 = "handleActivatedIfReady";
          *&v43[8] = 2080;
          *&v43[10] = v34;
          v35 = "#I %s: context still activating: %s";
          v36 = v33;
          v37 = 22;
LABEL_69:
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, buf, v37);
LABEL_70:
          if (v10)
          {
            sub_100004A34(v10);
          }

          return;
        }

        v12 = a1[18];
        if (v12 && ((*(*v12 + 512))(v12, v4) & 1) == 0)
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v43 = "handleActivatedIfReady";
          v35 = "#I %s: connection not ready";
LABEL_68:
          v36 = v38;
          v37 = 12;
          goto LABEL_69;
        }

        if (v4 <= 1 && LOBYTE(a1[10 * v4 + 29]) == 1)
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v43 = "handleActivatedIfReady";
          v35 = "#I %s: on probation";
          goto LABEL_68;
        }

        v13 = a1[12];
        if (v13 && (*(*v13 + 224))(v13, v4))
        {
          v38 = a1[9];
          if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          *buf = 136315138;
          *v43 = "handleActivatedIfReady";
          v35 = "#I %s: on DNS probation";
          goto LABEL_68;
        }
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v9[2];
          v16 = *v15 == v9;
          v9 = v15;
        }

        while (!v16);
      }

      v9 = v15;
    }

    while (v15 != v8);
  }

  v17 = sub_100094F40(a1[17]);
  v18 = v17 + 1;
  v19 = *v17;
  if (*v17 != v17 + 1)
  {
    v20 = &a1[10 * v4];
    while (1)
    {
      v21 = v19[4];
      v10 = v19[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v4 == (*(*v21 + 56))(v21) && *(v20 + 192) == 1)
      {
        v22 = v20 + 233;
        if (v4 < 2 || (v22 = a1 + 313, (*(a1 + 233) & 1) == 0))
        {
          if ((*v22 & 1) == 0)
          {
            break;
          }
        }
      }

      v23 = a1[9];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        (*(*v21 + 56))(v21);
        v24 = asString();
        v25 = asStringBool(*(v20 + 192));
        v26 = v20 + 233;
        if (v4 >= 2 && (v26 = a1 + 313, (*(a1 + 233) & 1) != 0))
        {
          v27 = 1;
        }

        else
        {
          v27 = *v26;
        }

        v28 = asStringBool(v27 & 1);
        *buf = 136315906;
        *v43 = "handleActivatedIfReady";
        *&v43[8] = 2080;
        *&v43[10] = v24;
        v44 = 2080;
        v45 = v25;
        v46 = 2080;
        v47 = v28;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: context does not fit the condition: contextType=%s, isActive=%s, isDeactivating=%s", buf, 0x2Au);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v29 = v19[1];
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = v19[2];
          v16 = *v30 == v19;
          v19 = v30;
        }

        while (!v16);
      }

      v19 = v30;
      if (v30 == v18)
      {
        return;
      }
    }

    v39 = a1[9];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v43 = "handleActivatedIfReady";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s: activated", buf, 0xCu);
    }

    v40 = *(a2 + 8);
    v41 = v40;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1004952A8(a1, v4);
    if (v41)
    {
      sub_100004A34(v41);
    }

    goto LABEL_70;
  }
}

void sub_100496C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_100496CC8(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = "setProbationDNS";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I %s: ", &v2, 0xCu);
  }
}

void sub_100496D70(void *a1)
{
  v2 = a1[9];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  v3 = *(a1 + 46);
  if ((validContextType() & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    v18 = "#E %s: !!! unsetProbationDNS on inactive activator ?";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
    return;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    v22[0] = "unsetProbationDNS";
    v18 = "#E %s: method called with inactive settings";
    goto LABEL_30;
  }

  v4 = a1[17];
  (*(*a1 + 584))(buf, a1);
  v5 = sub_100094EA8(v4);
  if (*(v22 + 4))
  {
    sub_100004A34(*(v22 + 4));
  }

  if (v5)
  {
    v6 = a1[17];
    (*(*a1 + 584))(buf, a1);
    v7 = sub_100094F40(v6);
    if (*(v22 + 4))
    {
      sub_100004A34(*(v22 + 4));
    }

    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        v11 = v9[4];
        v12 = v9[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v3 == (*(*v11 + 56))(v11))
        {
          v13 = a1[18];
          if (v13)
          {
            (*(*v13 + 544))(v13, v3);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v16 = *v15 == v9;
            v9 = v15;
          }

          while (!v16);
        }

        v9 = v15;
      }

      while (v15 != v8);
    }

    (*(*a1 + 584))(&v19, a1);
    sub_10049652C(a1, &v19);
    if (v20)
    {
      sub_100004A34(v20);
    }
  }
}

void sub_1004970BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100497108(void *a1, uint64_t a2)
{
  if ((validContextType() & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 136315138;
    *v20 = "reportDNSEmptyProblem";
    v18 = "#E %s: !!! reportDNSEmptyProblem on inactive activator ?";
LABEL_27:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v19, 0xCu);
    return;
  }

  if (((*(*a1 + 592))(a1) & 1) == 0)
  {
    v17 = a1[9];
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v19 = 136315138;
    *v20 = "reportDNSEmptyProblem";
    v18 = "#E %s: method called with inactive settings";
    goto LABEL_27;
  }

  v4 = a1[17];
  (*(*a1 + 584))(&v19, a1);
  v5 = sub_100094EA8(v4);
  if (*&v20[4])
  {
    sub_100004A34(*&v20[4]);
  }

  if (v5)
  {
    v6 = a1[17];
    (*(*a1 + 584))(&v19, a1);
    v7 = sub_100094F40(v6);
    if (*&v20[4])
    {
      sub_100004A34(*&v20[4]);
    }

    v10 = *v7;
    v8 = v7 + 1;
    v9 = v10;
    if (v10 != v8)
    {
      do
      {
        v11 = v9[4];
        v12 = v9[5];
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if ((*(*v11 + 56))(v11) == a2)
        {
          v13 = a1[18];
          if (v13)
          {
            (*(*v13 + 552))(v13, a2);
          }
        }

        if (v12)
        {
          sub_100004A34(v12);
        }

        v14 = v9[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v9[2];
            v16 = *v15 == v9;
            v9 = v15;
          }

          while (!v16);
        }

        v9 = v15;
      }

      while (v15 != v8);
    }
  }
}

void sub_1004973B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004973F4(uint64_t a1)
{
  result = *(a1 + 96);
  if (result)
  {
    return (*(*result + 224))();
  }

  return result;
}

uint64_t sub_100497424(uint64_t a1, unsigned int a2)
{
  if (a2 <= 1)
  {
    v2 = (a1 + 80 * a2 + 233);
LABEL_6:
    v3 = *v2;
    return v3 & 1;
  }

  if ((*(a1 + 233) & 1) == 0)
  {
    v2 = (a1 + 313);
    goto LABEL_6;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_100497464(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    return (*(*v1 + 560))();
  }

  else
  {
    return 1;
  }
}

unint64_t sub_1004974A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = 0xFFFFFFF700000000;
  v9 = *a3;
  if (!*a3)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) && !sub_1017721B8(a3, buf))
    {
      v9 = *buf;
    }

    else
    {
      __TUAssertTrigger();
      v9 = *a3;
      if (!*a3)
      {
        goto LABEL_24;
      }
    }
  }

  v10 = *(a1 + 72);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (*(*v9 + 40))(v9);
    *buf = 136315394;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: by %s", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
LABEL_17:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (!v20)
  {
LABEL_21:
    if (v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_18:
  if ((*(*a1 + 72))(a1) || (v22 = *a3 + *(**a3 - 56), v23 = (*(*v22 + 24))(v22), v23 == (*(*v20 + 792))(v20)))
  {
    LOBYTE(v20) = 0;
    goto LABEL_21;
  }

  v45 = *(a1 + 72);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = (*(**a3 + 40))();
    *buf = 136315394;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v46;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#E %s: %s does not belong to the Preferred Data SIM but it is trying to grab PDP0, this is a serious algorithm problem to be investigated", buf, 0x16u);
    if ((v21 & 1) == 0)
    {
      sub_100004A34(v19);
    }

    goto LABEL_24;
  }

  LOBYTE(v20) = 1;
  if ((v21 & 1) == 0)
  {
LABEL_22:
    sub_100004A34(v19);
  }

LABEL_23:
  if (v20)
  {
LABEL_24:
    v24 = 0xFFFFFFFFLL;
    return v24 | v8;
  }

  v203 = 0;
  v204 = 0;
  (*(*(*a3 + *(**a3 - 56)) + 16))(&v201);
  sub_10009D4CC(a1, a2, &v203);
  if (v202)
  {
    sub_100004A34(v202);
  }

  v25 = (*(**a3 + 520))(*a3, a4);
  if (!v203)
  {
    goto LABEL_178;
  }

  v26 = v25;
  v27 = a1 + 192;
  if ((*(a1 + 192) & 1) == 0 && (*(a1 + 272) & 1) == 0)
  {
    v59 = *(a1 + 160);
    if (v59)
    {
      v60 = *(a1 + 72);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "grabDataContext";
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: We stepped over somebody's else 'checkPendingGrabs' method to be called soon", buf, 0xCu);
        v59 = *(a1 + 160);
      }

      if (v59 != *a3)
      {
        v61 = (*(*v59 + 520))(v59, 999);
        v62 = *(a1 + 72);
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
        if (v26 >= v61)
        {
          if (v63)
          {
            v129 = a3[1];
            v195 = *a3;
            v196 = v129;
            if (v129)
            {
              atomic_fetch_add_explicit(&v129->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v130 = asString(&v195);
            v131 = *a3;
            v132 = *(a1 + 168);
            v193 = *(a1 + 160);
            v194 = v132;
            if (v132)
            {
              atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v133 = asString(&v193);
            v134 = *(a1 + 160);
            *buf = 136316162;
            *&buf[4] = "grabDataContext";
            *&buf[12] = 2080;
            *&buf[14] = v130;
            v206 = 2048;
            v207 = v131;
            v208 = 2080;
            v209 = v133;
            v210 = 2048;
            v211 = v134;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and higher or equal priority %s (0x%lx) is already pending, rejecting first", buf, 0x34u);
            if (v194)
            {
              sub_100004A34(v194);
            }

            if (v196)
            {
              sub_100004A34(v196);
            }
          }

          sub_100491B40(a1, a2);
          goto LABEL_178;
        }

        if (v63)
        {
          v64 = a3[1];
          v199 = *a3;
          v200 = v64;
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v65 = asString(&v199);
          v66 = *a3;
          v67 = *(a1 + 168);
          v197 = *(a1 + 160);
          v198 = v67;
          if (v67)
          {
            atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v68 = asString(&v197);
          v69 = *(a1 + 160);
          *buf = 136316162;
          *&buf[4] = "grabDataContext";
          *&buf[12] = 2080;
          *&buf[14] = v65;
          v206 = 2048;
          v207 = v66;
          v208 = 2080;
          v209 = v68;
          v210 = 2048;
          v211 = v69;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and lower-priority %s (0x%lx) is already pending, rejecting second", buf, 0x34u);
          if (v198)
          {
            sub_100004A34(v198);
          }

          if (v200)
          {
            sub_100004A34(v200);
          }
        }

        (*(**(a1 + 160) + 352))(*(a1 + 160), a2, a1 + 24);
      }

      v70 = *(a1 + 168);
      *(a1 + 160) = 0;
      *(a1 + 168) = 0;
      if (v70)
      {
        sub_100004A34(v70);
      }
    }

    v71 = *(a1 + 144);
    if (v71 == *a3)
    {
      v8 = 0;
      v24 = 1;
      goto LABEL_179;
    }

    if (v71 && (*(*v71 + 648))(v71) && (*(**(a1 + 144) + 520))(*(a1 + 144), 999) < v26)
    {
      v72 = *(a1 + 72);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        v73 = a3[1];
        v191 = *a3;
        v192 = v73;
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v74 = asString(&v191);
        v75 = *a3;
        v76 = *(a1 + 152);
        v189 = *(a1 + 144);
        v190 = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v77 = asString(&v189);
        v78 = *(a1 + 144);
        *buf = 136316162;
        *&buf[4] = "grabDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v74;
        v206 = 2048;
        v207 = v75;
        v208 = 2080;
        v209 = v77;
        v210 = 2048;
        v211 = v78;
        _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and higher priority %s (0x%lx) has pending connections, rejecting first", buf, 0x34u);
        if (v190)
        {
          sub_100004A34(v190);
        }

        if (v192)
        {
          sub_100004A34(v192);
        }
      }

      sub_10048AFE8(a1, a2);
      goto LABEL_178;
    }

    v97 = *a3;
    v96 = a3[1];
    if (v96)
    {
      atomic_fetch_add_explicit((v96 + 8), 1uLL, memory_order_relaxed);
    }

    v98 = *(a1 + 152);
    *(a1 + 144) = v97;
    *(a1 + 152) = v96;
    if (v98)
    {
      sub_100004A34(v98);
    }

    v99 = *(a1 + 72);
    if (!os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_133;
    }

    v100 = *(a1 + 152);
    v187 = *(a1 + 144);
    v188 = v100;
    if (v100)
    {
      atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v101 = asString(&v187);
    v102 = *(a1 + 144);
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v101;
    v206 = 2048;
    v207 = v102;
    _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (1)", buf, 0x20u);
    v95 = v188;
    if (!v188)
    {
      goto LABEL_133;
    }

LABEL_132:
    sub_100004A34(v95);
LABEL_133:
    v8 = 0;
    goto LABEL_134;
  }

  v28 = (a1 + 144);
  v29 = *(a1 + 144);
  if (!v29)
  {
    v47 = *(a1 + 72);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = a3[1];
      v149 = *a3;
      v150 = v48;
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = asString(&v149);
      v50 = *a3;
      *buf = 136315650;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v49;
      v206 = 2048;
      v207 = v50;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we have empty settings, assign it to the requesting settings", buf, 0x20u);
      if (v150)
      {
        sub_100004A34(v150);
      }
    }

    v52 = *a3;
    v51 = a3[1];
    if (v51)
    {
      atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
    }

    v53 = *(a1 + 152);
    *(a1 + 144) = v52;
    *(a1 + 152) = v51;
    if (v53)
    {
      sub_100004A34(v53);
    }

    v54 = *(a1 + 72);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_134;
    }

    v55 = *(a1 + 152);
    v147 = *(a1 + 144);
    v148 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = asString(&v147);
    v57 = *v28;
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v56;
    v206 = 2048;
    v207 = v57;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (3)", buf, 0x20u);
    v58 = v148;
    if (!v148)
    {
      goto LABEL_134;
    }

LABEL_103:
    sub_100004A34(v58);
LABEL_134:
    v24 = 0;
    goto LABEL_179;
  }

  if (v29 == *a3)
  {
    v79 = *(a1 + 72);
    if (!os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_134;
    }

    v80 = *(a1 + 152);
    v145 = v29;
    v146 = v80;
    if (v80)
    {
      atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v81 = asString(&v145);
    v82 = *v28;
    *buf = 136315650;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v81;
    v206 = 2048;
    v207 = v82;
    _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by it, letting it go", buf, 0x20u);
    v58 = v146;
    if (!v146)
    {
      goto LABEL_134;
    }

    goto LABEL_103;
  }

  v30 = (*(*v29 + 520))(*(a1 + 144), 999);
  v31 = *(a1 + 160);
  v144 = (a1 + 160);
  if (v31)
  {
    v32 = *a3;
    if (v31 != *a3)
    {
      v33 = (*(*v31 + 520))(v31, 999);
      v34 = *(a1 + 72);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      if (v26 < v33)
      {
        if (v35)
        {
          v36 = a3[1];
          v185 = *a3;
          v186 = v36;
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v37 = asString(&v185);
          v38 = *a3;
          v39 = *(a1 + 152);
          v183 = *(a1 + 144);
          v184 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v40 = asString(&v183);
          v41 = *(a1 + 144);
          v42 = *(a1 + 168);
          v181 = *(a1 + 160);
          v182 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = asString(&v181);
          v44 = *v144;
          *buf = 136316674;
          *&buf[4] = "grabDataContext";
          *&buf[12] = 2080;
          *&buf[14] = v37;
          v206 = 2048;
          v207 = v38;
          v208 = 2080;
          v209 = v40;
          v210 = 2048;
          v211 = v41;
          v212 = 2080;
          v213 = v43;
          v214 = 2048;
          v215 = v44;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by %s (0x%lx) and lower-priority %s (0x%lx) is pending, rejecting third and pending first", buf, 0x48u);
          if (v182)
          {
            sub_100004A34(v182);
          }

          if (v184)
          {
            sub_100004A34(v184);
          }

          if (v186)
          {
            sub_100004A34(v186);
          }
        }

        (*(**(a1 + 160) + 352))(*(a1 + 160), a2, a1 + 24);
        sub_100492914(v144, a3);
        goto LABEL_197;
      }

      if (!v35)
      {
        goto LABEL_178;
      }

      v120 = a3[1];
      v179 = *a3;
      v180 = v120;
      if (v120)
      {
        atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
      }

      v121 = asString(&v179);
      v122 = *a3;
      v123 = *(a1 + 152);
      v177 = *(a1 + 144);
      v178 = v123;
      if (v123)
      {
        atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v124 = asString(&v177);
      v125 = *(a1 + 144);
      v126 = *(a1 + 168);
      v175 = *(a1 + 160);
      v176 = v126;
      if (v126)
      {
        atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v127 = asString(&v175);
      v128 = *v144;
      *buf = 136316674;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v121;
      v206 = 2048;
      v207 = v122;
      v208 = 2080;
      v209 = v124;
      v210 = 2048;
      v211 = v125;
      v212 = 2080;
      v213 = v127;
      v214 = 2048;
      v215 = v128;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us and we are already in use by %s (0x%lx) and higher or equal priority %s (0x%lx) is pending, rejecting first", buf, 0x48u);
      if (v176)
      {
        sub_100004A34(v176);
      }

      if (v178)
      {
        sub_100004A34(v178);
      }

      v111 = v180;
      if (!v180)
      {
LABEL_178:
        v24 = 0xFFFFFFFFLL;
        goto LABEL_179;
      }

LABEL_167:
      sub_100004A34(v111);
      goto LABEL_178;
    }

    v112 = *(a1 + 72);
    if (!os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_197;
    }

    v113 = a3[1];
    v173 = v32;
    v174 = v113;
    if (v113)
    {
      atomic_fetch_add_explicit((v113 + 8), 1uLL, memory_order_relaxed);
    }

    v114 = asString(&v173);
    v115 = *a3;
    v116 = *(a1 + 152);
    v171 = *(a1 + 144);
    v172 = v116;
    if (v116)
    {
      atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v117 = asString(&v171);
    v118 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v114;
    v206 = 2048;
    v207 = v115;
    v208 = 2080;
    v209 = v117;
    v210 = 2048;
    v211 = v118;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is already pending and we are in use by %s (0x%lx), keep pending", buf, 0x34u);
    if (v172)
    {
      sub_100004A34(v172);
    }

    v119 = v174;
    if (!v174)
    {
      goto LABEL_197;
    }

    goto LABEL_196;
  }

  if (v26 == v30)
  {
    (*(*(*a3 + *(**a3 - 56)) + 16))(buf);
    (*(*(*v28 + *(**v28 - 56)) + 16))(&v169);
    matched = DataUtils::matchPersonality();
    if (v170)
    {
      sub_100004A34(v170);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (matched)
    {
      v84 = *(a1 + 72);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = *(a1 + 152);
        v167 = *(a1 + 144);
        v168 = v85;
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v86 = asString(&v167);
        v87 = *v28;
        v88 = a3[1];
        v165 = *a3;
        v166 = v88;
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v89 = asString(&v165);
        v90 = *a3;
        *buf = 136316162;
        *&buf[4] = "grabDataContext";
        *&buf[12] = 2080;
        *&buf[14] = v86;
        v206 = 2048;
        v207 = v87;
        v208 = 2080;
        v209 = v89;
        v210 = 2048;
        v211 = v90;
        _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I %s: replacing %s (0x%lx) with equal-priority %s (0x%lx)", buf, 0x34u);
        if (v166)
        {
          sub_100004A34(v166);
        }

        if (v168)
        {
          sub_100004A34(v168);
        }
      }

      (*(**(a1 + 144) + 352))(*(a1 + 144), a2, a1 + 24);
      sub_100492914((a1 + 144), a3);
      v91 = *(a1 + 72);
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_133;
      }

      v92 = *(a1 + 152);
      v163 = *(a1 + 144);
      v164 = v92;
      if (v92)
      {
        atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v93 = asString(&v163);
      v94 = *v28;
      *buf = 136315650;
      *&buf[4] = "grabDataContext";
      *&buf[12] = 2080;
      *&buf[14] = v93;
      v206 = 2048;
      v207 = v94;
      _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (0x%lx) (2)", buf, 0x20u);
      v95 = v164;
      if (!v164)
      {
        goto LABEL_133;
      }

      goto LABEL_132;
    }
  }

  v103 = *(a1 + 72);
  v104 = os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT);
  if (v26 > v30)
  {
    if (!v104)
    {
      goto LABEL_178;
    }

    v105 = a3[1];
    v153 = *a3;
    v154 = v105;
    if (v105)
    {
      atomic_fetch_add_explicit((v105 + 8), 1uLL, memory_order_relaxed);
    }

    v106 = asString(&v153);
    v107 = *a3;
    v108 = *(a1 + 152);
    v151 = *(a1 + 144);
    v152 = v108;
    if (v108)
    {
      atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v109 = asString(&v151);
    v110 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v106;
    v206 = 2048;
    v207 = v107;
    v208 = 2080;
    v209 = v109;
    v210 = 2048;
    v211 = v110;
    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us while we are in use by higher-priority %s (0x%lx), rejecting first", buf, 0x34u);
    if (v152)
    {
      sub_100004A34(v152);
    }

    v111 = v154;
    if (!v154)
    {
      goto LABEL_178;
    }

    goto LABEL_167;
  }

  if (v104)
  {
    v136 = a3[1];
    v161 = *a3;
    v162 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v137 = v103;
    v138 = asString(&v161);
    v139 = *a3;
    v140 = *(a1 + 152);
    v159 = *(a1 + 144);
    v160 = v140;
    if (v140)
    {
      atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v141 = asString(&v159);
    v142 = *v28;
    *buf = 136316162;
    *&buf[4] = "grabDataContext";
    *&buf[12] = 2080;
    *&buf[14] = v138;
    v206 = 2048;
    v207 = v139;
    v208 = 2080;
    v209 = v141;
    v210 = 2048;
    v211 = v142;
    _os_log_impl(&_mh_execute_header, v137, OS_LOG_TYPE_DEFAULT, "#I %s:  %s (0x%lx) is trying to use us while we are in use by lower-priority %s (0x%lx), pending first and disconnecting second", buf, 0x34u);
    if (v160)
    {
      sub_100004A34(v160);
    }

    if (v162)
    {
      sub_100004A34(v162);
    }
  }

  sub_100492914(v144, a3);
  if (*(v27 + 80 * a2) == 1)
  {
    (*(*a1 + 584))(&v157, a1);
    sub_10048F648(a1, a2, &v157, 25, "CommCenter");
    if (v158)
    {
      sub_100004A34(v158);
    }
  }

  if (*(v27 + 80 * otherContextType()) != 1)
  {
    goto LABEL_197;
  }

  v143 = otherContextType();
  (*(*a1 + 584))(&v155, a1);
  sub_10048F648(a1, v143, &v155, 25, "CommCenter");
  v119 = v156;
  if (!v156)
  {
    goto LABEL_197;
  }

LABEL_196:
  sub_100004A34(v119);
LABEL_197:
  v8 = 0;
  v24 = 2;
LABEL_179:
  if (v204)
  {
    sub_100004A34(v204);
  }

  return v24 | v8;
}

void sub_100498948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60)
{
  if (a56)
  {
    sub_100004A34(a56);
  }

  if (a58)
  {
    sub_100004A34(a58);
  }

  v62 = *(v60 - 184);
  if (v62)
  {
    sub_100004A34(v62);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100498BC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 96);
  if (v3)
  {
    v4 = a2[1];
    v8 = *a2;
    v9 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = (*(*v3 + 168))(v3, &v8);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  else
  {
    v6 = *(a1 + 72);
    v5 = 0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = "configureHOVirtualInterface";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#E %s: Empty pdp manager", buf, 0xCu);
      return 0;
    }
  }

  return v5;
}

void sub_100498CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100498CF4(capabilities::ct *a1, uint64_t *a2)
{
  v4 = *(a1 + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v30 = "detachDataSettings";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: ", buf, 0xCu);
  }

  sub_10049108C(a1, 0);
  v5 = a2[1];
  v28[0] = *a2;
  v28[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004991FC(a1, v28);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 20);
  if (v6)
  {
    v7 = *(a1 + 9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v30 = "detachDataSettings";
      v8 = "#I %s: we have pending settings, we can not detach this settings, to allow normal control flow in checkPendingGrabs";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
    }
  }

  else
  {
    v10 = *a2;
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *(a1 + 18);
      sub_100004A34(v9);
      if (v11 != v10)
      {
        return v6 == 0;
      }
    }

    else if (*(a1 + 18) != v10)
    {
      return v6 == 0;
    }

    for (i = 0; i != 2; ++i)
    {
      v13 = dword_1018083B0[i];
      sub_100492120(a1, v13, 0, 0);
      sub_100491C50(a1, v13);
      if (*a2)
      {
        (*(*(*a2 + *(**a2 - 56)) + 16))(&v26);
        sub_10048F648(a1, v13, &v26, 27, "CommCenter");
        if (v27)
        {
          sub_100004A34(v27);
        }
      }
    }

    if (*a2)
    {
      v14 = (*(*(*a2 + *(**a2 - 56)) + 24))(*a2 + *(**a2 - 56));
      sub_1004944A4(a1, v14);
      if (*a2)
      {
        for (j = 0; j != 2; ++j)
        {
          v16 = dword_1018083B0[j];
          (*(*(*a2 + *(**a2 - 56)) + 16))(buf);
          v17 = sub_100499374(a1, v16, buf);
          if (*&v30[4])
          {
            sub_100004A34(*&v30[4]);
          }

          v18 = *(a1 + 9);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              v20 = asString();
              *buf = 136315394;
              *v30 = "detachDataSettings";
              *&v30[8] = 2080;
              *&v30[10] = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: context %s is idle, cleaning the IP families", buf, 0x16u);
            }

            (*(*(*a2 + *(**a2 - 56)) + 16))(&v24);
            (*(*a1 + 712))(a1, 3, v16, &v24);
            if (v25)
            {
              sub_100004A34(v25);
            }
          }

          else if (v19)
          {
            v21 = asString();
            *buf = 136315394;
            *v30 = "detachDataSettings";
            *&v30[8] = 2080;
            *&v30[10] = v21;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: context %s is not idle, not cleaning the IP families", buf, 0x16u);
          }
        }
      }
    }

    v22 = *(a1 + 19);
    *(a1 + 18) = 0;
    *(a1 + 19) = 0;
    if (v22)
    {
      sub_100004A34(v22);
    }

    v7 = *(a1 + 9);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v30 = "detachDataSettings";
      v8 = "#I %s: (change states) empty active settings";
      goto LABEL_10;
    }
  }

  return v6 == 0;
}

void sub_1004991AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004991FC(void *a1, uint64_t *a2)
{
  if (!*a2 && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101772264(a2)))
  {
    __TUAssertTrigger();
  }

  v4 = a1[20];
  if (v4 && v4 == *a2)
  {
    v5 = a1[9];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[21];
      v9 = v4;
      v10 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = asString(&v9);
      *buf = 136315394;
      v12 = "cancelGrabDataContext";
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: canceling pending %s", buf, 0x16u);
      if (v10)
      {
        sub_100004A34(v10);
      }
    }

    v8 = a1[21];
    a1[20] = 0;
    a1[21] = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_100499340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100499374(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    goto LABEL_11;
  }

  v8 = 0;
  v9 = 0;
  v4 = *(a3 + 8);
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000948C4(a1, a2, &v8);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v5 = v8;
  if (v8)
  {
    v3 = (*(*v8 + 216))(v8);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v5)
  {
LABEL_11:
    v3 = 1;
  }

  return v3 & 1;
}

void sub_100499424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049945C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 160) && !*(v2 + 144) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101772308((v2 + 144))))
  {
    __TUAssertTrigger();
  }

  if ((*(*v2 + 592))(v2))
  {
    v24 = 0;
    v25 = 0;
    v3 = *(a1 + 40);
    (*(*v2 + 584))(&v22, v2);
    sub_10009D4CC(v2, v3, &v24);
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (v24 && (*(v2 + 192) & 1) == 0 && (*(v2 + 272) & 1) == 0 && *(v2 + 160))
    {
      v4 = *(v2 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 152);
        v20 = *(v2 + 144);
        v21 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v6 = asString(&v20);
        v7 = *(v2 + 168);
        v18 = *(v2 + 160);
        v19 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = asString(&v18);
        *buf = 136315650;
        v27 = "checkPendingGrabs_block_invoke";
        v28 = 2080;
        v29 = v6;
        v30 = 2080;
        v31 = v8;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s:  done with %s and have pending %s", buf, 0x20u);
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (v21)
        {
          sub_100004A34(v21);
        }
      }

      (*(**(v2 + 144) + 656))(*(v2 + 144));
      v10 = *(v2 + 160);
      v9 = *(v2 + 168);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v2 + 152);
      *(v2 + 144) = v10;
      *(v2 + 152) = v9;
      if (v11)
      {
        sub_100004A34(v11);
      }

      v12 = *(v2 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(v2 + 152);
        v16 = *(v2 + 144);
        v17 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = asString(&v16);
        *buf = 136315394;
        v27 = "checkPendingGrabs_block_invoke";
        v28 = 2080;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: (change states) new active settings %s (4)", buf, 0x16u);
        if (v17)
        {
          sub_100004A34(v17);
        }
      }

      v15 = *(v2 + 168);
      *(v2 + 160) = 0;
      *(v2 + 168) = 0;
      if (v15)
      {
        sub_100004A34(v15);
      }

      (*(**(v2 + 144) + 344))(*(v2 + 144), *(a1 + 40), v2 + 24);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }
}

void sub_1004997A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_10049980C(uint64_t a1, int a2)
{
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reservePduSessionIdForWlan: %d", v5, 8u);
  }

  *(a1 + 412) = a2;
  *(a1 + 416) = 1;
}

uint64_t sub_1004998C0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v11 = *(a3 + 8);
  v15[1] = *a3;
  v16 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  v18 = 0;
  sub_10009D4CC(a1, a2, &v17);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v12 = v17;
  if (v17)
  {
    sub_100010024(v15, a6);
    v13 = (*(*v12 + 304))(v12, a4, a5, v15, a7);
    sub_10001021C(v15);
  }

  else
  {
    v13 = 0;
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  return v13;
}