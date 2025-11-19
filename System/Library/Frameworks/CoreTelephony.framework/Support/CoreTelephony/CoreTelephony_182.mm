void sub_10156E754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, const void *a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, uint64_t a29, const void *a30)
{
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_100045C8C(&a15);
  sub_100045C8C(&a17);
  sub_100045C8C(&a19);
  sub_100045C8C(&a21);
  if (a26)
  {
    sub_100004A34(a26);
  }

  sub_100045C8C(&a28);
  sub_100045C8C(&a30);
  _Unwind_Resume(a1);
}

void sub_10156E93C(uint64_t a1, uint64_t a2)
{
  sub_101257DBC(&v27, a2);
  v4 = *(a1 + 632);
  if (v4 == (a1 + 640))
  {
    goto LABEL_65;
  }

  v5 = (a2 + 8);
  do
  {
    v6 = *v5;
    v7 = *(v4 + 8);
    if (*v5)
    {
      v8 = a2 + 8;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 != v5 && v7 >= *(v8 + 32))
      {
        if (rest::operator==())
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8);
      }
    }

    v9 = *(a1 + 240);
    if (!v9)
    {
LABEL_17:
      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = subscriber::asString();
        *v33 = 136315138;
        *&v33[4] = v25;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v33, 0xCu);
      }

      goto LABEL_19;
    }

    while (1)
    {
      v10 = *(v9 + 8);
      if (v7 >= v10)
      {
        break;
      }

LABEL_16:
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 < v7)
    {
      ++v9;
      goto LABEL_16;
    }

    v38 = 0;
    *__p = 0u;
    v37 = 0u;
    *v34 = 0u;
    v35 = 0u;
    *v33 = 0u;
    v15 = v28[0];
    if (!v28[0])
    {
      goto LABEL_34;
    }

    v16 = v28;
    do
    {
      if (*(v15 + 8) >= v7)
      {
        v16 = v15;
      }

      v15 = *&v15[8 * (*(v15 + 8) < v7)];
    }

    while (v15);
    if (v16 == v28 || v7 < *(v16 + 8))
    {
      v15 = 0;
LABEL_34:
      v17 = 0;
    }

    else
    {
      std::string::operator=(v33, (v16 + 5));
      std::string::operator=(&v34[1], (v16 + 8));
      LODWORD(__p[0]) = *(v16 + 22);
      std::string::operator=(&__p[1], v16 + 4);
      LOBYTE(v38) = *(v16 + 120);
      v17 = HIBYTE(v34[0]);
      v15 = *&v33[8];
    }

    v18 = *(v4 + 63);
    if (v18 >= 0)
    {
      v19 = *(v4 + 63);
    }

    else
    {
      v19 = v4[6];
    }

    if (v17 >= 0)
    {
      v15 = v17;
    }

    if (v19 != v15 || (v18 >= 0 ? (v20 = v4 + 5) : (v20 = v4[5]), v17 >= 0 ? (v21 = v33) : (v21 = *v33), memcmp(v20, v21, v19)))
    {
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(v34[0]) >= 0)
        {
          v23 = v33;
        }

        else
        {
          v23 = *v33;
        }

        if (*(v4 + 63) >= 0)
        {
          v24 = v4 + 5;
        }

        else
        {
          v24 = v4[5];
        }

        *buf = 136315394;
        v30 = v23;
        v31 = 2080;
        v32 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Phone Number has changed from %s -> %s", buf, 0x16u);
      }

      if (*(sub_10000BA08(*(a1 + 240), *(v4 + 8)) + 162) == 1)
      {
        *(sub_10000BA08(*(a1 + 240), *(v4 + 8)) + 162) = 0;
        sub_10156DD80(a1, *(v4 + 8));
      }
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[1]);
    }

    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(*v33);
    }

LABEL_19:
    v12 = v4[1];
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
        v13 = v4[2];
        v14 = *v13 == v4;
        v4 = v13;
      }

      while (!v14);
    }

    v4 = v13;
  }

  while (v13 != (a1 + 640));
LABEL_65:
  sub_100170380(&v27, v28[0]);
}

void sub_10156ED58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156EE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156EF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F03C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio disabled", v7, 2u);
  }

  v3 = *(a1 + 232);
  if (v3 != (a1 + 240))
  {
    do
    {
      if ((v3[25] & 1) == 0)
      {
        *(v3 + 200) = 1;
        sub_10156DD80(a1, *(v3 + 10));
      }

      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != (a1 + 240));
  }
}

void sub_10156F10C(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F63C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F72C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10157E200;
  v7[3] = &unk_101F4E438;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10157756C;
    v12 = &unk_101F4D968;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101577504;
    v12 = &unk_101F4D948;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_10156F850(void *a1, Registry **a2, NSObject **a3, uint64_t a4, uint64_t a5, void *a6)
{
  ServiceMap = Registry::getServiceMap(*a2);
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
  *__p = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, __p);
  if (!v16)
  {
    v18 = 0;
LABEL_9:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_10:
  v22 = 0;
  v23 = 0;
  PersonalityIdFromSlotId();
  (*(*v18 + 40))(&v22, v18, __p);
  if (v25 < 0)
  {
    operator delete(*__p);
  }

  if (!v22)
  {
    if (v23)
    {
      sub_100004A34(v23);
    }

LABEL_19:
    v20 = 1;
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (*(*v22 + 40))(v22, "XCAP", a5, *a6, 0, 1);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v20 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_20:
    sub_100004A34(v17);
  }

LABEL_21:
  if (v20)
  {
    v21 = *a3;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315138;
      *&__p[4] = a5;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not get SystemDeterminationManagerInterface for %s XCAP value", __p, 0xCu);
    }

    *a1 = *a6;
    *a6 = 0;
  }
}

void sub_10156FAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156FB00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10156FBF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *(v5 + 8);
      if (v6 <= a2)
      {
        if (v6 >= a2)
        {
          if (!sub_10000BA08(v4, a2)[1])
          {
            return 0;
          }

          if (!sub_10156FE88(a1) || sub_10000BA08(*(a1 + 240), a2)[1] == *(a1 + 152))
          {
            v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = sub_10000BA08(*(a1 + 240), a2);
              v12 = (*(*v11[1] + 48))(v11[1]);
              v14 = 136315138;
              v15 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing Get CLIR request to %s", &v14, 0xCu);
            }

            v13 = sub_10000BA08(*(a1 + 240), a2);
            return (*(*v13[1] + 120))(v13[1], a2);
          }

          else
          {
            v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            if (result)
            {
              LOWORD(v14) = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch CLIR value because it would trigger CSFB", &v14, 2u);
              return 0;
            }
          }

          return result;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_10156FE88(uint64_t a1)
{
  PersonalityIdFromSlotId();
  v2 = sub_100007A6C(a1 + 664, &__p);
  if (a1 + 672 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 56) & *(v2 + 57);
  }

  if (v6 < 0)
  {
    operator delete(__p);
  }

  return v3 & 1;
}

void sub_10156FEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10156FF18(uint64_t a1, unsigned int a2, int *a3, _BYTE *a4)
{
  v12 = a2;
  v11[0] = a1;
  v11[1] = &v12;
  v11[2] = a3;
  v11[3] = a4;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v7 = sub_101570284(a1, v12, a3, a4);
      return v7 & 1;
    }

    v8 = *(a1 + 32) == 0;
  }

  else
  {
    v8 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10157E574;
  v13[3] = &unk_101F4E4D8;
  v13[4] = a1 + 8;
  v13[5] = v11;
  v14 = v13;
  v9 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v8)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v9, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v9, block);
  }

  v7 = v20;
  return v7 & 1;
}

uint64_t sub_1015700B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_7:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v12, 0xCu);
    }

    return 3;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a2)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, a2)[18])
  {
    return 3;
  }

  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(*(a1 + 240), a2);
    v12 = 136315138;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User CLIR setting is known: %s", &v12, 0xCu);
  }

  v10 = *(sub_10000BA08(*(a1 + 240), a2)[18] + 1);
  if (v10 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  if (v10 == 2)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_101570284(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  *a4 = 0;
  *a3 = 3;
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v24, 0xCu);
    }

    return 0;
  }

  v9 = v6;
  while (1)
  {
    v10 = *(v9 + 8);
    if (v10 <= a2)
    {
      break;
    }

LABEL_6:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (v10 < a2)
  {
    ++v9;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v6, a2)[16])
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Network CLIR status is unknown, cannot determine value", &v24, 2u);
    }

    return 0;
  }

  *a4 = 0;
  *a3 = 3;
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(*(a1 + 240), a2);
    v24 = 136315138;
    v25 = asString();
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Network CLIR setting is known %s", &v24, 0xCu);
  }

  v12 = 0;
  v15 = *(sub_10000BA08(*(a1 + 240), a2)[16] + 1);
  v16 = 3;
  if (v15 <= 1)
  {
    *a4 = 2;
    v12 = 1;
    v16 = v15;
    goto LABEL_23;
  }

  if (v15 != 2)
  {
    if (v15 == 3)
    {
      v16 = 0;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v16 = 1;
LABEL_22:
  v12 = 1;
  *a4 = 1;
  v18 = sub_1015700B0(a1, a2);
  if (v18 == 3)
  {
LABEL_23:
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = asString();
      v24 = 136315138;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Effective CLIR setting (network) is %s", &v24, 0xCu);
    }

    v21 = v16;
  }

  else
  {
    v21 = v18;
    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = asString();
      v24 = 136315138;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Effective CLIR setting (user) is %s", &v24, 0xCu);
    }
  }

  *a3 = v21;
  return v12;
}

void sub_10157064C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101570750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100022DB4();
  }

  (*(*a3 + 48))(a3);
  v4 = *(**(a1 + 384) + 40);

  return v4();
}

uint64_t sub_1015707E0(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  LODWORD(v16) = 3;
  sub_101570284(a1, a2, &v16, &v17);
  HIDWORD(v16) = sub_1015700B0(a1, a2);
  v4 = *(a1 + 456);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 456);
  while (1)
  {
    v6 = *(v5 + 7);
    if (v6 <= a2)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
      v7 = *(v4 + 7);
      if (v7 <= a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
LABEL_25:
        sub_1000A58E4("map::at:  key not found");
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  result = rest::operator==();
  if ((result & 1) == 0)
  {
LABEL_14:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      v12 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I CLIR info is changing to effective: %s, user: %s, modifiable: %s", buf, 0x20u);
    }

    *buf = 1;
    *&buf[8] = a1 + 416;
    v13 = *(a1 + 456);
    if (!v13)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 7);
        if (v15 <= a2)
        {
          break;
        }

        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_23;
        }
      }

      if (v15 >= a2)
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v14[4] = v16;
    *(v14 + 40) = v17;
    return sub_10157EEC4(buf);
  }

  return result;
}

void sub_101570A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10157EEC4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101570A74(void **a1, uint64_t a2)
{
  result = sub_10000BA08(a1[30], a2);
  if (result[16])
  {
    v5 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000BA08(a1[30], a2);
      v6 = asString();
      sub_10000BA08(a1[30], a2);
      *v9 = 136315394;
      *&v9[4] = v6;
      *&v9[12] = 2080;
      *&v9[14] = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing current CLIR network setting with Service Status %s, Provisioned Status %s", v9, 0x16u);
    }

    v7 = sub_10000BA08(a1[30], a2);
    v8 = v7[17];
    v7[16] = 0;
    v7[17] = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }

    (*(*a1[23] + 80))(a1[23], a2);
    sub_1015707E0(a1, a2);
    *v9 = off_101F4E5C8;
    *&v9[8] = a1;
    *&v9[16] = a2;
    v10 = v9;
    sub_101570750(a1, a2, v9);
    return sub_10002B644(v9);
  }

  return result;
}

void sub_101570C50(void **a1, uint64_t a2)
{
  v4 = sub_10000BA08(a1[30], a2);
  v7 = v4[8];
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= 1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 7) >= 2)
  {
LABEL_8:
    v8 = v5;
  }

  if (v8 == sub_10000BA08(a1[30], a2) + 8)
  {
    v13 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Could not persist Call Waiting status", buf, 2u);
    }
  }

  else
  {
    v9 = sub_10000BA08(a1[30], a2);
    v14 = 1;
    *buf = &v14;
    v10 = *(sub_10142B4C4((v9 + 7), 1) + 32);
    v11 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "OFF";
      if (v10)
      {
        v12 = "ON";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisting Call Waiting status %s", buf, 0xCu);
    }

    (*(*a1[23] + 96))(a1[23], a2, v10);
  }
}

uint64_t sub_101570E64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(**(a1 + 184) + 88))(*(a1 + 184));
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  return v5 & 1;
}

uint64_t sub_101570EB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(**(a1 + 120) + 88))(*(a1 + 120));
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  return v5 & 1;
}

uint64_t sub_101570F0C(uint64_t a1, int a2, int a3, int a4)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v9[0] = a1;
  v9[1] = &v12;
  v9[2] = &v11;
  v9[3] = &v10;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = sub_10157F058(v9);
      return v5 & 1;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10157F29C;
  v13[3] = &unk_101F4E638;
  v13[4] = a1 + 8;
  v13[5] = v9;
  v14 = v13;
  v7 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v7, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v7, block);
  }

  v5 = v20;
  return v5 & 1;
}

void sub_101571094(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 16);
  }

  v12 = a4;
  v13 = a5;
  v14 = a6;
  v10 = *(a1 + 16);
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v20, 0xCu);
    }

    return;
  }

  while (1)
  {
    v9 = *(v6 + 8);
    if (v9 <= a2)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v9 < a2)
  {
    ++v6;
    goto LABEL_6;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10000BA08(*(a1 + 240), a2);
    v14 = (*(*v13[1] + 48))(v13[1]);
    v20 = 136315138;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending fetch request to %s", &v20, 0xCu);
  }

  if (!sub_10000BA08(*(a1 + 240), a2)[1])
  {
    goto LABEL_20;
  }

  if (sub_10156FE88(a1) && sub_10000BA08(*(a1 + 240), a2)[1] != *(a1 + 152))
  {
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch Call Barring value because it would trigger CSFB", &v20, 2u);
    }

    goto LABEL_20;
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10000BA08(*(a1 + 240), a2);
    v18 = (*(*v17[1] + 48))(v17[1]);
    v20 = 136315138;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Issuing Get Call Barring request to %s", &v20, 0xCu);
  }

  v19 = sub_10000BA08(*(a1 + 240), a2);
  if (((*(*v19[1] + 80))(v19[1], a2, a3, a4) & 1) == 0)
  {
LABEL_20:
    operator new();
  }
}

uint64_t sub_1015715F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100022DB4();
  }

  (*(*a3 + 48))(a3);
  v4 = *(**(a1 + 384) + 40);

  return v4();
}

uint64_t sub_101571690(uint64_t a1, unsigned int a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v13 = a4;
  v14 = a2;
  v12 = a5;
  v11[0] = a1;
  v11[1] = &v14;
  v11[2] = a3;
  v11[3] = &v13;
  v11[4] = &v12;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v7 = sub_10157182C(a1, v14, a3, v13, v12);
      return v7 & 1;
    }

    v8 = *(a1 + 32) == 0;
  }

  else
  {
    v8 = 1;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10157F4A4;
  v15[3] = &unk_101F4E6D8;
  v15[4] = a1 + 8;
  v15[5] = v11;
  v16 = v15;
  v9 = *(a1 + 24);
  v22 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v8)
  {
    v18 = sub_100059778;
    v19 = &unk_101F4E4F8;
    v20 = &v22;
    v21 = &v16;
    dispatch_sync(v9, block);
  }

  else
  {
    v18 = sub_10006A6D4;
    v19 = &unk_101F4E518;
    v20 = &v22;
    v21 = &v16;
    dispatch_async_and_wait(v9, block);
  }

  v7 = v22;
  return v7 & 1;
}

uint64_t sub_10157182C(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  for (i = *(a1 + 240); i; i = *i)
  {
    v11 = *(i + 8);
    if (v11 <= a2)
    {
      if (v11 >= a2)
      {
        v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 67109376;
          LODWORD(v19[0]) = a4;
          WORD2(v19[0]) = 1024;
          *(v19 + 6) = a5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Retrieving from Call Barring model for type %d, class %d", &v18, 0xEu);
        }

        if (sub_10000BA08(*(a1 + 240), a2)[5])
        {
          v16 = sub_10000BA08(*(a1 + 240), a2);
          return sub_1012D883C(v16[5], a4, a5, a3);
        }

        v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (result)
        {
          LOWORD(v18) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Call barring model is not available", &v18, 2u);
          return 0;
        }

        return result;
      }

      ++i;
    }
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = 136315138;
    v19[0] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v18, 0xCu);
    return 0;
  }

  return result;
}

void sub_101571A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v13 = a5;
  v14 = a6;
  v15 = a7;
  v11 = *(a1 + 16);
  if (v11)
  {
    if (std::__shared_weak_count::lock(v11))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v12, *a4, *(a4 + 8));
  }

  else
  {
    *v12 = *a4;
    v13 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v14, *a5, *(a5 + 8));
  }

  else
  {
    *v14 = *a5;
    v15 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v17 = *(a6 + 16);
  }

  v18 = a7;
  v11 = *(a1 + 16);
  if (v11)
  {
    if (std::__shared_weak_count::lock(v11))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571E34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 63) < 0)
  {
    operator delete(*(v22 + 40));
  }

  if (*(v22 + 39) < 0)
  {
    operator delete(*(v22 + 16));
  }

  sub_10004F058(a1);
}

void sub_101571EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101571F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = *(v7 + 8);
      if (v8 <= a2)
      {
        if (v8 >= a2)
        {
          if (!sub_10000BA08(v5, a2)[1])
          {
            return 0;
          }

          if (!sub_10156FE88(a1) || sub_10000BA08(*(a1 + 240), a2)[1] == *(a1 + 152))
          {
            v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = sub_10000BA08(*(a1 + 240), a2);
              v14 = (*(*v13[1] + 48))(v13[1]);
              v16 = 136315138;
              v17 = v14;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the Call Waiting values", &v16, 0xCu);
            }

            v15 = sub_10000BA08(*(a1 + 240), a2);
            return (*(*v15[1] + 104))(v15[1], a2, a3);
          }

          else
          {
            v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            if (result)
            {
              LOWORD(v16) = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch Call Waiting value because it would trigger CSFB", &v16, 2u);
              return 0;
            }
          }

          return result;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136315138;
    v17 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v16, 0xCu);
    return 0;
  }

  return result;
}

void sub_10157223C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_101572348(uint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v11 = a4;
  v12 = a2;
  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    __TUAssertTrigger();
  }

  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = a3;
  v10[3] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_1015724F0(a1, v12, a3, v11);
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_101580A38;
  v13[3] = &unk_101F4E8F8;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  return v20;
}

BOOL sub_1015724F0(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_8:
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v26 = 136315138;
    v27 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v26, 0xCu);
    return 0;
  }

  v9 = v6;
  while (1)
  {
    v10 = *(v9 + 8);
    if (v10 <= a2)
    {
      break;
    }

LABEL_7:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 < a2)
  {
    ++v9;
    goto LABEL_7;
  }

  v13 = sub_10000BA08(v6, a2);
  v16 = v13[8];
  v14 = v13 + 8;
  v15 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v14;
  do
  {
    if (*(v15 + 28) >= a4)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 28) < a4));
  }

  while (v15);
  if (v17 == v14 || *(v17 + 7) > a4)
  {
LABEL_17:
    v17 = v14;
  }

  if (v17 == sub_10000BA08(*(a1 + 240), a2) + 8)
  {
    v25 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Could not retrieve Call Waiting value", &v26, 2u);
    return 0;
  }

  v18 = sub_10000BA08(*(a1 + 240), a2);
  v21 = v18[8];
  v19 = v18 + 8;
  v20 = v21;
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v19;
  do
  {
    if (*(v20 + 28) >= a4)
    {
      v22 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 28) < a4));
  }

  while (v20);
  if (v22 == v19 || *(v22 + 7) > a4)
  {
LABEL_26:
    v22 = v19;
  }

  *a3 = *(v22 + 32);
  v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *a3;
    v26 = 67109120;
    LODWORD(v27) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Call Waiting value %d", &v26, 8u);
  }

  return 1;
}

void sub_1015727A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015728A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_1015729AC(uint64_t a1, unsigned int a2, int *a3, int a4)
{
  v11 = a4;
  v12 = a2;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = a3;
  v10[3] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101572B38(a1, v12, a3, v11);
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1015814A0;
  v13[3] = &unk_101F4EA18;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  return v20;
}

BOOL sub_101572B38(uint64_t a1, uint64_t a2, int *a3, int a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 136315138;
    v17 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v16, 0xCu);
    return 0;
  }

  v8 = v6;
  while (1)
  {
    v9 = *(v8 + 8);
    if (v9 <= a2)
    {
      break;
    }

LABEL_6:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (v9 < a2)
  {
    ++v8;
    goto LABEL_6;
  }

  if (!a4)
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v16) = 0;
    v15 = "#I Not handling Connected Line Presentation APIs";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 2u);
    return 0;
  }

  if (!sub_10000BA08(v6, a2)[10])
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v16) = 0;
    v15 = "#I CLIP Model is not valid";
    goto LABEL_18;
  }

  *a3 = *(sub_10000BA08(*(a1 + 240), a2)[10] + 1) == 1;
  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a3;
    v16 = 67109120;
    LODWORD(v17) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Returning CLIP value: %d", &v16, 8u);
  }

  return 1;
}

void sub_101572DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_101572EB0(uint64_t a1, unsigned int a2, int *a3)
{
  v10 = a2;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101573038(a1, v10, a3);
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10158196C;
  v11[3] = &unk_101F4EAB8;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_100059778;
    v15 = &unk_101F4E4F8;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A6D4;
    v15 = &unk_101F4E518;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  return v18;
}

BOOL sub_101573038(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 240);
  if (!v5)
  {
LABEL_7:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    return 0;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v5, a2)[12])
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I COLR Model is not valid", &v14, 2u);
    return 0;
  }

  *a3 = *sub_10000BA08(*(a1 + 240), a2)[12] == 1;
  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v14 = 67109120;
    LODWORD(v15) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I COLR Model is available, filling %d", &v14, 8u);
  }

  return 1;
}

void sub_101573264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10157336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_10000BA08(*(a1 + 240), a2)[1])
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v15) = 0;
    v10 = "#I fetchCallForwarding failed, no command driver";
    goto LABEL_11;
  }

  if (sub_10156FE88(a1) && sub_10000BA08(*(a1 + 240), a2)[1] != *(a1 + 152))
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v15) = 0;
    v10 = "#I VoLTE call is active, ignoring request to fetch Call Forwarding value because it would trigger CSFB";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v15, 2u);
    return 0;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_10000BA08(*(a1 + 240), a2);
    v13 = (*(*v12[1] + 48))(v12[1]);
    v15 = 136315138;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sent the Call Forward Fetch request to %s", &v15, 0xCu);
  }

  v14 = sub_10000BA08(*(a1 + 240), a2);
  return (*(*v14[1] + 56))(v14[1], a2, a3, a4);
}

void sub_1015735C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, int a7, int a8)
{
  sub_1000AE428(&v14, a4);
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v13 = *(a1 + 16);
  if (v13)
  {
    if (std::__shared_weak_count::lock(v13))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101573760(uint64_t a1, unsigned int a2, BOOL *a3, uint64_t a4, _BYTE *a5, int a6, unsigned int a7)
{
  v17 = a6;
  v18 = a2;
  v16 = a7;
  v15[0] = a1;
  v15[1] = &v18;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = &v17;
  v15[6] = &v16;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v11 = sub_101573918(a1, v18, a3, a4, a5, v17, v16);
      return v11 & 1;
    }

    v12 = *(a1 + 32) == 0;
  }

  else
  {
    v12 = 1;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_101582C64;
  v19[3] = &unk_101F4EBD8;
  v19[4] = a1 + 8;
  v19[5] = v15;
  v20 = v19;
  v13 = *(a1 + 24);
  v26 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v12)
  {
    v22 = sub_100059778;
    v23 = &unk_101F4E4F8;
    v24 = &v26;
    v25 = &v20;
    dispatch_sync(v13, block);
  }

  else
  {
    v22 = sub_10006A6D4;
    v23 = &unk_101F4E518;
    v24 = &v26;
    v25 = &v20;
    dispatch_async_and_wait(v13, block);
  }

  v11 = v26;
  return v11 & 1;
}

uint64_t sub_101573918(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, _BYTE *a5, int a6, unsigned int a7)
{
  v9 = *(a1 + 240);
  if (v9)
  {
    v15 = v9;
    do
    {
      v16 = *(v15 + 8);
      if (v16 <= a2)
      {
        if (v16 >= a2)
        {
          v37 = 0;
          *v35 = 0u;
          v36 = 0u;
          v20 = sub_10000BA08(v9, a2);
          v21 = sub_1012D8100(v20[3], a6, a7, v35);
          v18 = v21;
          if (v21)
          {
            memset(&v34, 0, sizeof(v34));
            if (v36 >= 0)
            {
              v22 = &v35[1];
            }

            else
            {
              v22 = v35[1];
            }

            if (v36 >= 0)
            {
              v23 = HIBYTE(v36);
            }

            else
            {
              v23 = v36;
            }

            sub_1000D192C(&v34, v22, &v22[v23], v23);
            CSIPhoneNumber::CSIPhoneNumber();
            *a4 = *buf;
            if (*(a4 + 31) < 0)
            {
              operator delete(*(a4 + 8));
            }

            *(a4 + 8) = *&buf[8];
            *(a4 + 24) = v39;
            HIBYTE(v39) = 0;
            buf[8] = 0;
            if (*(a4 + 55) < 0)
            {
              operator delete(*(a4 + 32));
            }

            *(a4 + 32) = v40;
            *(a4 + 48) = v41;
            HIBYTE(v41) = 0;
            LOBYTE(v40) = 0;
            *(a4 + 56) = v42;
            *(a4 + 60) = v43;
            if (*(a4 + 87) < 0)
            {
              operator delete(*(a4 + 64));
            }

            *(a4 + 64) = v44;
            v24 = v45;
            HIBYTE(v45) = 0;
            LOBYTE(v44) = 0;
            v25 = v46;
            *(a4 + 80) = v24;
            *(a4 + 88) = v25;
            *(a4 + 96) = v47;
            if (*(a4 + 127) < 0)
            {
              operator delete(*(a4 + 104));
            }

            *(a4 + 104) = __p;
            *(a4 + 120) = v49;
            HIBYTE(v49) = 0;
            LOBYTE(__p) = 0;
            if (*(a4 + 151) < 0)
            {
              operator delete(*(a4 + 128));
              v27 = SHIBYTE(v49);
              *(a4 + 128) = v50;
              *(a4 + 144) = v51;
              HIBYTE(v51) = 0;
              LOBYTE(v50) = 0;
              *(a4 + 152) = v52;
              if (v27 < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              *(a4 + 128) = v50;
              *(a4 + 144) = v51;
              HIBYTE(v51) = 0;
              LOBYTE(v50) = 0;
              *(a4 + 152) = v52;
            }

            if (SHIBYTE(v45) < 0)
            {
              operator delete(v44);
            }

            if (SHIBYTE(v41) < 0)
            {
              operator delete(v40);
            }

            if (SHIBYTE(v39) < 0)
            {
              operator delete(*&buf[8]);
            }

            *a5 = v37;
            *a3 = BYTE1(v35[0]) == 1;
            v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              CSIPhoneNumber::getFullNumber(v32, a4);
              v29 = v33 >= 0 ? v32 : v32[0];
              v30 = *a5;
              v31 = *a3;
              *buf = 136315650;
              *&buf[4] = v29;
              *&buf[12] = 1024;
              *&buf[14] = v30;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Call Forward return values: Number '%s', Time %d, Enabled %d", buf, 0x18u);
              if (v33 < 0)
              {
                operator delete(v32[0]);
              }
            }

            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = a6;
              *&buf[8] = 1024;
              *&buf[10] = a7;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Failed to retrieve call forward setting for reason %d, class %d", buf, 0xEu);
            }
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[1]);
          }

          return v18;
        }

        ++v15;
      }

      v15 = *v15;
    }

    while (v15);
  }

  v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  return 0;
}

void sub_101573DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101573DEC(uint64_t a1, int a2)
{
  v13 = a2;
  v12[0] = a1;
  v12[1] = &v13;
  if (!*(a1 + 32))
  {
    v8 = 1;
LABEL_14:
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_101582C88;
    v14[3] = &unk_101F4EBF8;
    v14[4] = a1 + 8;
    v14[5] = v12;
    v15 = v14;
    v9 = *(a1 + 24);
    v16 = 0;
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 0x40000000;
    if (v8)
    {
      v18 = sub_100059778;
      v19 = &unk_101F4E4F8;
      v20 = &v16;
      v21 = &v15;
      dispatch_sync(v9, &block);
    }

    else
    {
      v18 = sub_10006A6D4;
      v19 = &unk_101F4E518;
      v20 = &v16;
      v21 = &v15;
      dispatch_async_and_wait(v9, &block);
    }

    v7 = v16;
    return v7 & 1;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v8 = *(a1 + 32) == 0;
    goto LABEL_14;
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    v4 = *(a1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v13 >= v5)
      {
        if (v5 >= v13)
        {
          v7 = *(sub_10000BA08(v3, v13)[3] + 48);
          return v7 & 1;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = subscriber::asString();
    LODWORD(block) = 136315138;
    *(&block + 4) = v11;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &block, 0xCu);
  }

  v7 = 0;
  return v7 & 1;
}

void sub_101574044(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_101574050(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1008C3488(&v7, a3);
  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574194(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015741AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_1015742A0(uint64_t a1, unsigned int a2, int *a3)
{
  v10 = a2;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101574428(a1, v10, a3);
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_101583440;
  v11[3] = &unk_101F4EC98;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_100059778;
    v15 = &unk_101F4E4F8;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A6D4;
    v15 = &unk_101F4E518;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  return v18;
}

BOOL sub_101574428(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 240);
  if (!v5)
  {
LABEL_7:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v13 = 136315138;
    v14 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v13, 0xCu);
    return 0;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v5, a2)[14])
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I CNAP values are unknown", &v13, 2u);
    return 0;
  }

  if (*(sub_10000BA08(*(a1 + 240), a2)[14] + 1) == 1)
  {
    v11 = *sub_10000BA08(*(a1 + 240), a2)[14] == 1;
  }

  else
  {
    v11 = 2;
  }

  *a3 = v11;
  return 1;
}

void sub_101574628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574810(uint64_t a1, unsigned int *a2)
{
  if (a2[1] != 31)
  {
    return;
  }

  v4 = *(a1 + 240);
  v5 = *a2;
  if (!v4)
  {
LABEL_7:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v39 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  while (1)
  {
    v6 = *(v4 + 8);
    if (v5 >= v6)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v6 < v5)
  {
    ++v4;
    goto LABEL_6;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v8 == v9)
  {
    v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v39 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Received SIM file %s data from SimFS with no data, ignoring", buf, 0xCu);
    }
  }

  else
  {
    v37 = 0;
    v36 = kCFBooleanFalse;
    if (kCFBooleanFalse)
    {
      CFRetain(kCFBooleanFalse);
    }

    sub_10156F850(buf, (a1 + 96), (a1 + 40), v5, "supported", &v36);
    sub_10002FE1C(&v37, buf);
    sub_10000A1EC(buf);
    sub_10000A1EC(&v36);
    buf[0] = 0;
    ctu::cf::assign(buf, v37, v10);
    v11 = buf[0];
    v34 = kCFBooleanFalse;
    v35 = 0;
    v12 = *a2;
    if (kCFBooleanFalse)
    {
      CFRetain(kCFBooleanFalse);
    }

    sub_10156F850(buf, (a1 + 96), (a1 + 40), v12, "IgnoreSimFileCFIS", &v34);
    sub_10002FE1C(&v35, buf);
    sub_10000A1EC(buf);
    sub_10000A1EC(&v34);
    buf[0] = 0;
    ctu::cf::assign(buf, v35, v13);
    v14 = buf[0];
    if (sub_10000BA08(*(a1 + 240), *a2)[1] == *(a1 + 152) || (v11 & v14) != 0)
    {
      v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = subscriber::asString();
        *buf = 136315138;
        *v39 = v22;
        v17 = "#I Ignoring SIM file %s as Call Forwarding is provisioned over XCAP";
        v18 = v21;
        v19 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      v15 = v9 - v8;
      if (((v9 - v8) & 0xF) != 0)
      {
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "#N Data size is not aligning to 16 byte record";
          v18 = v16;
          v19 = 2;
          goto LABEL_24;
        }
      }

      else
      {
        v23 = 0;
        v24 = v15 >> 4;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        v25 = (*(a2 + 1) + 1);
        while (1)
        {
          v27 = *v25;
          v25 += 16;
          v26 = v27;
          if (v27 != 255)
          {
            break;
          }

          if (v24 == ++v23)
          {
            goto LABEL_25;
          }
        }

        v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v39 = v26 & 1;
          *&v39[4] = 1024;
          *&v39[6] = v26;
          v40 = 2048;
          v41 = v23;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Read the CFU status for voice from SIM: %d with second byte: %x in record %lu", buf, 0x18u);
        }

        v29 = sub_10000BA08(*(a1 + 240), *a2);
        sub_1012D801C(v29[3], v26 & 1);
        v30 = *(a1 + 224);
        if (v30)
        {
          v31 = std::__shared_weak_count::lock(v30);
          if (v31)
          {
            v32 = v31;
            v33 = *(a1 + 216);
            if (v33)
            {
              (*(*v33 + 328))(v33, *a2);
            }

            sub_100004A34(v32);
          }
        }
      }
    }

LABEL_25:
    sub_100045C8C(&v35);
    sub_100045C8C(&v37);
  }
}

void sub_101574CF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_100004A34(v2);
  sub_100045C8C(va);
  sub_100045C8C(va1);
  _Unwind_Resume(a1);
}

void sub_101574D90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574E80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574F70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_101575198(uint64_t *result)
{
  v1 = result[5];
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v4 = result + 4;
  v3 = result[4];
  result[5] = v1 - 1;
  result[4] = v3 + 1;
  sub_101582088(result, 1);
  if (*(v2 + 40))
  {
    result = *(v2 + 48);
    if (!result)
    {
      return result;
    }

    v5 = *(*(v2 + 8) + 8 * (*(v2 + 32) / 0x155uLL)) + 12 * (*(v2 + 32) % 0x155uLL);
    result = (*(*result + 16))(result, *v5, *(v5 + 8));
    if (*(v2 + 40))
    {
      return result;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 40) = 0;
  v8 = (v6 - v7) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v7);
      v6 = *(v2 + 16);
      v7 = (*(v2 + 8) + 8);
      *(v2 + 8) = v7;
      v8 = (v6 - v7) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 170;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = 341;
LABEL_11:
    *v4 = v9;
  }

  if (*(v2 + 40))
  {
    sub_101582088(v2, 0);
    v11 = *(v2 + 8);
    v10 = *(v2 + 16);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 341 * ((v10 - v11) >> 3) - 1;
    }

    if ((v12 - (*(v2 + 40) + *(v2 + 32))) >= 0x155)
    {
      operator delete(*(v10 - 8));
      *(v2 + 16) -= 8;
    }
  }

  else
  {
    while (v6 != v7)
    {
      operator delete(*(v6 - 8));
      v7 = *(v2 + 8);
      v6 = *(v2 + 16) - 8;
      *(v2 + 16) = v6;
    }

    *v4 = 0;
  }

  sub_1015820E4(v2);
  v14 = *(v2 + 8);
  v13 = *(v2 + 16);
  if (v13 != v14)
  {
    *(v2 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_1015820E4(v2);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v15 = 0u;
  v16 = 0u;
  *v4 = 0;
  v4[1] = 0;
  v17 = 0uLL;
  return sub_101577438(&v15);
}

void sub_1015753A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015754C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015755E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10157570C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575820(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575940(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575A64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575B8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575C88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

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

void sub_101575EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575FC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1015760D8(uint64_t *result)
{
  v1 = result[5];
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v4 = result + 4;
  v3 = result[4];
  result[5] = v1 - 1;
  result[4] = v3 + 1;
  sub_1015883C4(result, 1);
  if (*(v2 + 40))
  {
    result = *(v2 + 48);
    if (!result)
    {
      return result;
    }

    v5 = (*(*(v2 + 8) + ((*(v2 + 32) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v2 + 32));
    result = (*(*result + 16))(result, *v5, v5[1]);
    if (*(v2 + 40))
    {
      return result;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  *(v2 + 40) = 0;
  v8 = (v6 - v7) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v7);
      v6 = *(v2 + 16);
      v7 = (*(v2 + 8) + 8);
      *(v2 + 8) = v7;
      v8 = (v6 - v7) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 128;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = 256;
LABEL_11:
    *v4 = v9;
  }

  if (*(v2 + 40))
  {
    sub_1015883C4(v2, 0);
    v11 = *(v2 + 8);
    v10 = *(v2 + 16);
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 32 * (v10 - v11) - 1;
    }

    if ((v12 - (*(v2 + 40) + *(v2 + 32))) >= 0x100)
    {
      operator delete(*(v10 - 8));
      *(v2 + 16) -= 8;
    }
  }

  else
  {
    while (v6 != v7)
    {
      operator delete(*(v6 - 8));
      v7 = *(v2 + 8);
      v6 = *(v2 + 16) - 8;
      *(v2 + 16) = v6;
    }

    *v4 = 0;
  }

  sub_101588420(v2);
  v14 = *(v2 + 8);
  v13 = *(v2 + 16);
  if (v13 != v14)
  {
    *(v2 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  sub_101588420(v2);
  *v2 = 0u;
  *(v2 + 16) = 0u;
  v15 = 0u;
  v16 = 0u;
  *v4 = 0;
  v4[1] = 0;
  v17 = 0uLL;
  return sub_101577308(&v15);
}

void sub_1015762B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015763D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015764E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015765F4(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Network saved CLIR values successfully", v2, 2u);
  }
}

void sub_101576684(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Network unable to save CLIR info, error=%s", &v2, 0xCu);
  }
}

void sub_101576758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101576870(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10157697C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Saved CLIP values successfully", v8, 2u);
  }

  v8[0] = off_101F4F898;
  v8[1] = a1;
  v8[2] = a2 | (a3 << 32);
  v8[3] = v8;
  sub_101570750(a1, a2, v8);
  return sub_10002B644(v8);
}

uint64_t sub_101576AA4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch CLIP info, error=%s", &v6, 0xCu);
  }

  *&v6 = off_101F4F918;
  *(&v6 + 1) = a1;
  v7 = a2;
  v8 = &v6;
  sub_1015715F4(a1, a2, &v6);
  return sub_10002B644(&v6);
}

void sub_101576BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101576CFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101576DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101576F10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10157700C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101577128(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101577224(uint64_t a1)
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

uint64_t sub_1015772A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_101577308(a1);
}

uint64_t sub_101577308(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1015773D4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_101577438(a1);
}

uint64_t sub_101577438(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 341;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101577504(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10157756C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1015776A0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101577774);
  __cxa_rethrow();
}

void sub_1015776E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101577734(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101577774(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1015777A0(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 400));
  v4 = *(v2 + 184);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  v6 = *(v2 + 136);
  v7 = v1[1];
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  (*(*v6 + 32))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  for (i = *(v2 + 80); i != v2 + 72; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 72));
  sub_1000FF844(&v11);
  return sub_1000049E0(&v10);
}

void sub_10157791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, dispatch_group_t a13)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_101577978(void *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/events/subscriber_sim_file_event");
  operator new();
}

void sub_101578B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, uint64_t a19, dispatch_group_t object, dispatch_group_t a21, dispatch_group_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101578E48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4D9F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101578E80(void *a1)
{
  __p[0] = 0x2800000000;
  __p[1] = 0;
  v6 = 0uLL;
  v7 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_101578F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101578F44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101578F90(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_101578FDC(void *a1)
{
  *a1 = off_101F4DA98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101579028(void *a1)
{
  *a1 = off_101F4DA98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101579094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_101579144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1015791E8(void *a1)
{
  *a1 = off_101F4DAE8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101579234(void *a1)
{
  *a1 = off_101F4DAE8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

__n128 sub_101579388(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DB28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015793C0(uint64_t a1)
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

uint64_t sub_101579444(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101579504(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DBA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101579534(uint64_t a1, xpc_object_t *a2)
{
  sub_10013E998(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v4 = *(v3 + 600);
  if (v4 != (v3 + 608))
  {
    while (1)
    {
      v18 = 0;
      v19 = 0;
      ServiceMap = Registry::getServiceMap(*(v3 + 96));
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
      if (!v11)
      {
        break;
      }

      v13 = v11[3];
      v12 = v11[4];
      if (!v12)
      {
        goto LABEL_9;
      }

      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
LABEL_10:
      (**v13)(&v18, v13, (v4 + 4));
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      if (v18 && !*(v18 + 49))
      {
        sub_10156DD80(v3, *(v18 + 52));
      }

      if (v19)
      {
        sub_100004A34(v19);
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
      if (v16 == (v3 + 608))
      {
        return;
      }
    }

    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_10;
  }
}

void sub_1015796D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015796FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015797C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DC28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015797FC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1001FCA54(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100170380(&v9, v10);
}

uint64_t sub_1015798D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101579940(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4DCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015799BC(SuppServicesDriverEventHandlerInterface *this)
{
  *this = off_101F4DCF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(this);
}

void sub_101579A18(SuppServicesDriverEventHandlerInterface *this)
{
  *this = off_101F4DCF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(this);

  operator delete();
}

void sub_101579A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = a3[1];
        v15 = *a3;
        v16 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v13 + 344))(v13, a2, &v15, a4, a5);
        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      sub_100004A34(v12);
    }
  }
}

void sub_101579B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_101579B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 352))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 360))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 368))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_101579E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 376))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_101579F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 384))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 392))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_10157A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 400))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_10157A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 408))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 416))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = a4[1];
        v13 = *a4;
        v14 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v11 + 424))(v11, a2, a3, &v13);
        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157A430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 432))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_10157A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 440))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_10157A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 448))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

uint64_t sub_10157A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, a2, a3);
  }

  else
  {
    v10 = 0;
  }

  sub_100004A34(v8);
  return v10;
}

void sub_10157A774(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 464))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 472))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 480))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 488))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AA84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 496))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 504))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157AC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 512))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 520))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AD94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 528))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 536))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AF20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 544))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        (*(*v9 + 552))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10157B0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10157B0DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10157B12C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10157B274(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10157B2A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10157B2F4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *(*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = subscriber::asString();
          v12 = sub_10000BA08(*(v9 + 240), a2);
          v13 = (*(*v12[1] + 48))(v12[1]);
          v15 = 136315394;
          v16 = v11;
          v17 = 2080;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing request of %s to %s to save the Call Waiting values", &v15, 0x16u);
        }

        v14 = sub_10000BA08(*(v9 + 240), a2);
        (*(*v14[1] + 112))(v14[1], a2, HIDWORD(a2) & 1, a3, HIDWORD(a3));
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157B49C(uint64_t **a1)
{
  v7 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  sub_10156CCEC(v1);
  subscriber::makeSimSlotRange();
  v3 = *buf;
  v4 = v9;
  if (*buf != v9)
  {
    v5 = v10;
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = v9;
    while (v3 != v6)
    {
      sub_10156DD80(v1, *v3);
      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
    }
  }

  (*(**(v1 + 184) + 24))(*(v1 + 184));
  (*(**(v1 + 136) + 16))(*(v1 + 136));
  operator delete();
}

void sub_10157B658(void *a1)
{
  if (a1)
  {
    sub_10157B658(*a1);
    sub_10157B658(a1[1]);
    sub_10157B6AC((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_10157B6AC(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100034450(*(a1 + 64));
  v7 = *(a1 + 48);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

uint64_t sub_10157B738(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10157B6AC(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10157B7F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4DEE8;
  a2[1] = v2;
  return result;
}

void sub_10157B820(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
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
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/clir_infos");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_10157BAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10157BBA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157BC68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DF78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157BCA0(void *a1, xpc_object_t *a2)
{
  v12 = 0;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v12 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v12 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  v8 = a1[2];
  v9 = a1[3];
  v10 = (a1[1] + (v9 >> 1));
  if (v9)
  {
    v8 = *(*v10 + v8);
  }

  return v8(v10, &v12);
}

uint64_t sub_10157BD88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157BE50(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DFF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157BE88(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157BF60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C028(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E078;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C060(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1001A904C(&v9, v10);
}

uint64_t sub_10157C138(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C200(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E0F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C238(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1009DE138(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157C310(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C3D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C410(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_10157C4E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157C5A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4E1F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10157C5D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C6A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E278;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C6D8(void *a1, xpc_object_t *a2)
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

uint64_t sub_10157C7B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C878(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E2F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157C8B0(void *a1)
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

uint64_t sub_10157C8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10157C9C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E378;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10157C9F8(void *a1)
{
  *__p = 0u;
  v6 = 0u;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (SBYTE7(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10157CA8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10157CAA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10157CAF4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = v5 + 56;
        if (!v5)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v7);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v7);
      }

      (*(*v2 + 48))(group, v2, &object, &v14);
      v11 = *group;
      group[0] = 0;
      group[1] = 0;
      v12 = *(v1 + 192);
      *(v1 + 184) = v11;
      if (v12)
      {
        sub_100004A34(v12);
        if (group[1])
        {
          sub_100004A34(group[1]);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v13 = *(v1 + 184);
      group[0] = 0;
      (*(*v13 + 16))(v13, group);
      if (group[0])
      {
        dispatch_group_leave(group[0]);
        if (group[0])
        {
          dispatch_release(group[0]);
        }
      }

      (*(**(v1 + 184) + 24))(*(v1 + 184));
      sub_10156CCEC(v1);
      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_10157CCC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  operator delete();
}

void sub_10157CD28(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 128);
  v3 = *(*a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = *(v1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        v10 = v5 + 56;
        if (!v5)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v7);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v7);
      }

      (*(*v2 + 40))(group, v2, &object, &v14);
      v11 = *group;
      group[0] = 0;
      group[1] = 0;
      v12 = *(v1 + 192);
      *(v1 + 184) = v11;
      if (v12)
      {
        sub_100004A34(v12);
        if (group[1])
        {
          sub_100004A34(group[1]);
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_weak(v15);
      }

      if (object)
      {
        dispatch_release(object);
      }

      v13 = *(v1 + 184);
      group[0] = 0;
      (*(*v13 + 16))(v13, group);
      if (group[0])
      {
        dispatch_group_leave(group[0]);
        if (group[0])
        {
          dispatch_release(group[0]);
        }
      }

      (*(**(v1 + 184) + 24))(*(v1 + 184));
      sub_10156CCEC(v1);
      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_10157CEF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  operator delete();
}

void sub_10157CF5C(uint64_t **a1)
{
  v9 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = *(v1 + 3);
          *(sub_10000BA08(v3, v4) + 161) = v8 == 2;
          *(sub_10000BA08(*(v2 + 240), *(v1 + 2)) + 160) = 1;
          sub_10156DD80(v2, *(v1 + 2));
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_10157D0F4(uint64_t **a1)
{
  v11 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = sub_10000BA08(v3, v4);
          if (*(v8 + 165) != *(v1 + 12))
          {
            v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = CSIBOOLAsString(*(v1 + 12));
              *buf = 136315138;
              v13 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I UT Connection: [Available:%s]", buf, 0xCu);
            }

            *(v8 + 165) = *(v1 + 6);
            sub_10156DD80(v2, *(v1 + 2));
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

void sub_10157D304(uint64_t **a1)
{
  v10 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          if (*(sub_10000BA08(v3, v4) + 167) != *(v1 + 12))
          {
            v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = CSIBOOLAsString(*(v1 + 12));
              *buf = 136315138;
              v12 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I EmLoc Connection: [Available:%s]", buf, 0xCu);
            }

            *(sub_10000BA08(*(v2 + 240), *(v1 + 2)) + 167) = *(v1 + 6);
            sub_10156DD80(v2, *(v1 + 2));
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

uint64_t *sub_10157D51C(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 96));
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
  *buf = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, buf);
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
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_11:
      (*(*v12 + 112))(v12);
      v50 = 0;
      sub_10000501C(buf, "SettingsModel::fCLIRStatus");
      v15 = (*(*v12 + 24))(v12, buf, &v50);
      v16 = v15;
      if (v53 < 0)
      {
        operator delete(*buf);
        if ((v16 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      v17 = *(v2 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "SettingsModel::fCLIRStatus";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
      }

      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(v2 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
  }

LABEL_18:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v18 = Registry::getServiceMap(*(v2 + 96));
  v19 = v18;
  v20 = v5;
  if (v5 < 0)
  {
    v21 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  *buf = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, buf);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v19);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      if (!v26)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v19);
  v25 = 0;
  v27 = 1;
  if (!v26)
  {
LABEL_26:
    v28 = *(v2 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_30:
  (*(*v26 + 112))(v26);
  LOBYTE(v51) = 0;
  sub_10000501C(buf, "SettingsModel::fCallWaitingStatus");
  v29 = (*(*v26 + 32))(v26, buf, &v51);
  v30 = v29;
  if (v53 < 0)
  {
    operator delete(*buf);
    if ((v30 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if ((v29 & 1) == 0)
  {
    goto LABEL_41;
  }

  v31 = *(v2 + 40);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "SettingsModel::fCallWaitingStatus";
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
  }

  if ((*(**(v2 + 184) + 96))(*(v2 + 184), 1, v51))
  {
    sub_10156D3B4(v2, 1);
    sub_10000501C(buf, "SettingsModel::fCallWaitingStatus");
    (*(*v26 + 96))(v26, buf);
    if (v53 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v32 = *(v2 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "SettingsModel::fCallWaitingStatus";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#N Failed to migrate %s property", buf, 0xCu);
    }
  }

LABEL_41:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v33 = Registry::getServiceMap(*(v2 + 96));
  v34 = v33;
  if (v5 < 0)
  {
    v35 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v5 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  std::mutex::lock(v33);
  *buf = v5;
  v38 = sub_100009510(&v34[1].__m_.__sig, buf);
  if (v38)
  {
    v40 = v38[3];
    v39 = v38[4];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v34);
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v39);
      v41 = 0;
      if (!v40)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v40 = 0;
  }

  std::mutex::unlock(v34);
  v39 = 0;
  v41 = 1;
  if (!v40)
  {
LABEL_49:
    v42 = *(v2 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "CSIPersistentPropertiesInterface is not set!", buf, 2u);
    }

    goto LABEL_64;
  }

LABEL_53:
  (*(*v40 + 112))(v40);
  LOBYTE(v51) = 0;
  sub_10000501C(buf, "SettingsModel::fAutoAnswer");
  v43 = (*(*v40 + 32))(v40, buf, &v51);
  v44 = v43;
  if (v53 < 0)
  {
    operator delete(*buf);
    if ((v44 & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  else if ((v43 & 1) == 0)
  {
    goto LABEL_64;
  }

  v45 = *(v2 + 40);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "SettingsModel::fAutoAnswer";
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Migrating %s property", buf, 0xCu);
  }

  if ((*(**(v2 + 184) + 120))(*(v2 + 184), 1, v51))
  {
    sub_10156D894(v2, 1);
    sub_10000501C(buf, "SettingsModel::fAutoAnswer");
    (*(*v40 + 96))(v40, buf);
    if (v53 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v46 = *(v2 + 40);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "SettingsModel::fAutoAnswer";
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#N Failed to migrate %s property", buf, 0xCu);
    }
  }

LABEL_64:
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  sub_1000FF844(&v49);
  return sub_1000049E0(&v48);
}

void sub_10157DDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10157DEE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4E3F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10157DF44(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156CE14(v2, v3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10157DFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157DFDC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v9 = v5;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156D0E4(v2, v3, &v9);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1001FF3DC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10157E04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10157E074(void ****a1)
{
  v1 = a1;
  sub_10156D3B4(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E0F8(uint64_t **a1)
{
  v1 = a1;
  sub_10156D894(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E17C(uint64_t **a1)
{
  v1 = a1;
  sub_10156DD80(**a1, *(*a1 + 2));
  operator delete();
}

void sub_10157E200(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v5 = v3[2];
  v6 = *(*v3 + 240);
  if (v6)
  {
    v7 = *(*v3 + 240);
    do
    {
      v8 = *(v7 + 8);
      if (v8 <= v5)
      {
        if (v8 >= v5)
        {
          v10 = sub_10000BA08(v6, v5);
          v11 = v10[2];
          *a2 = v10[1];
          a2[1] = v11;
          if (v11)
          {
            atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v9 = *(*(**(v4 + 48) + 16))(*(v4 + 48), v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v12, 0xCu);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_10157E338(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  if ((sub_10156FBF0(v2, *(*a1 + 2)) & 1) == 0)
  {
    v3 = *(v1 + 2);
    v5[0] = off_101F4E468;
    v5[1] = v2;
    v5[2] = v3;
    v5[3] = v5;
    sub_1015715F4(v2, v3, v5);
    sub_10002B644(v5);
  }

  operator delete();
}

void sub_10157E414(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10157E4BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E468;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157E528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10157E588(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v2 + 240);
    do
    {
      v7 = *(v6 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          if (sub_10000BA08(v4, v3)[1])
          {
            v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = sub_10000BA08(*(v2 + 240), v3);
              v11 = (*(*v10[1] + 48))(v10[1]);
              *buf = 136315138;
              *&buf[4] = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Issuing set CLIR request to %s", buf, 0xCu);
            }

            v12 = sub_10000BA08(*(v2 + 240), v3);
            (*(*v12[1] + 160))(v12[1], v3, v5);
          }

          v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v5;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Saving CLIR value %d internally", buf, 8u);
          }

          v14 = *(v2 + 240);
          if (!v14)
          {
LABEL_21:
            v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = subscriber::asString();
              *buf = 136315138;
              *&buf[4] = v18;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
            }

            goto LABEL_51;
          }

          v15 = *(v2 + 240);
          while (1)
          {
            v16 = *(v15 + 8);
            if (v16 <= v3)
            {
              if (v16 >= v3)
              {
                if (!sub_10000BA08(v14, v3)[18])
                {
                  v19 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I CLIR Model was not initialized, initializing it", buf, 2u);
                  }

                  sub_10000BA08(*(v2 + 240), v3);
                  operator new();
                }

                if (v5 > 1)
                {
                  if (v5 == 2)
                  {
                    v24 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Presentation Permanent", buf, 2u);
                    }

                    v21 = 1;
                  }

                  else
                  {
                    if (v5 != 3)
                    {
                      goto LABEL_44;
                    }

                    v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    v21 = 0;
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Presentation Not Provisioned", buf, 2u);
                      v21 = 0;
                    }
                  }
                }

                else
                {
                  if (v5)
                  {
                    if (v5 == 1)
                    {
                      v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        v21 = 2;
                        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Presentation Restricted", buf, 2u);
                      }

                      else
                      {
                        v21 = 2;
                      }

                      goto LABEL_43;
                    }

LABEL_44:
                    v25 = sub_10000BA08(*(v2 + 240), v3)[18];
                    v26 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
                    if (v25)
                    {
                      if (v27)
                      {
                        sub_10000BA08(*(v2 + 240), v3);
                        v28 = asString();
                        sub_10000BA08(*(v2 + 240), v3);
                        v29 = asString();
                        *buf = 136315394;
                        *&buf[4] = v28;
                        *&buf[12] = 2080;
                        *&buf[14] = v29;
                        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Persisting CLIR user setting with Service Status %s, Provisioned Status %s", buf, 0x16u);
                      }

                      v30 = *(v2 + 184);
                      v31 = sub_10000BA08(*(v2 + 240), v3);
                      (*(*v30 + 48))(v30, v3, v31 + 18);
                    }

                    else if (v27)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I CLIR Model is invalid", buf, 2u);
                    }

                    sub_1015707E0(v2, v3);
LABEL_51:
                    *buf = off_101F4E548;
                    *&buf[8] = v2;
                    *&buf[16] = v3;
                    v33 = buf;
                    (*(**(v2 + 112) + 184))(*(v2 + 112), v3, 0);
                    (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 0);
                    sub_10002B644(buf);
LABEL_52:
                    operator delete();
                  }

                  v23 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Presentation Allowed", buf, 2u);
                  }

                  v21 = 3;
                }

LABEL_43:
                *(sub_10000BA08(*(v2 + 240), v3)[18] + 1) = v21;
                goto LABEL_44;
              }

              ++v15;
            }

            v15 = *v15;
            if (!v15)
            {
              goto LABEL_21;
            }
          }
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_52;
}

void sub_10157ED58(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10157EE0C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157EE78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157EEC4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

__n128 sub_10157EFA4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E5C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10157F00C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157F058(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(*a1 + 240);
  v5 = *v2;
  if (!v4)
  {
LABEL_7:
    v8 = *(*(**(v3 + 48) + 16))(*(v3 + 48), v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return 0;
  }

  v6 = v4;
  while (1)
  {
    v7 = *(v6 + 8);
    if (v5 >= v7)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v7 < v5)
  {
    ++v6;
    goto LABEL_6;
  }

  v14 = 0;
  if (!sub_10000BA08(v4, v5)[5])
  {
    v13 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *a1[1]);
    v9 = 0;
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      return v9;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Call barring values are not available", buf, 2u);
    return 0;
  }

  v11 = sub_10000BA08(*(v3 + 240), *a1[1]);
  v9 = sub_1012D883C(v11[5], *a1[2], *a1[3], &v14);
  v12 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *a1[1]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v16) = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call Barring value availability %d", buf, 8u);
  }

  return v9;
}

uint64_t *sub_10157F2A4(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_101571220(*v1, *(v1 + 8), *(v1 + 40), *(v1 + 44));
  sub_10157F30C(&v4);
  return sub_1000049E0(&v3);
}

void sub_10157F2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10157F30C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157F30C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

__n128 sub_10157F3E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E668;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10157F458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10157F4C4(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 240);
  if (!v4)
  {
LABEL_7:
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(v1 + 40);
  v7 = *(v1 + 44);
  v8 = *(*v1 + 240);
  v9 = *(v1 + 48);
  while (1)
  {
    v10 = *(v8 + 8);
    if (v10 <= v3)
    {
      break;
    }

LABEL_6:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (v10 < v3)
  {
    ++v8;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, *(v1 + 8))[1])
  {
    goto LABEL_18;
  }

  if (sub_10156FE88(v2) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
  {
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring the request to save Call Barring value because it would trigger CSFB", buf, 2u);
    }

    goto LABEL_18;
  }

  v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_10000BA08(*(v2 + 240), v3);
    v16 = (*(*v15[1] + 48))(v15[1]);
    *buf = 136315138;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Issuing Set Call Barring request to %s", buf, 0xCu);
  }

  v17 = sub_10000BA08(*(v2 + 240), v3);
  if (((*(*v17[1] + 88))(v17[1], v3, v6, v7, v1 + 16, v5, v9) & 1) == 0)
  {
LABEL_18:
    operator new();
  }

LABEL_9:
  sub_10157F880(&v19);
  return sub_1000049E0(&v18);
}

void sub_10157F854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002B644(&a11);
  sub_10157F880(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157F880(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

__n128 sub_10157F958(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E708;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10157F9D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10157FA1C(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(*v1 + 240);
  if (!v4)
  {
LABEL_7:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(*v1 + 240);
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= v3)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v7 < v3)
  {
    ++v6;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, *(v1 + 8))[1])
  {
    goto LABEL_14;
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = sub_10000BA08(*(v2 + 240), v3);
    v12 = (*(*v11[1] + 48))(v11[1]);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing Set Call Barring request to %s", &buf, 0xCu);
  }

  v13 = sub_10000BA08(*(v2 + 240), v3);
  if (((*(*v13[1] + 96))(v13[1], v3, v5, v1 + 16, v1 + 40, v1 + 64) & 1) == 0)
  {
LABEL_14:
    *&buf = off_101F4E788;
    *(&buf + 1) = v2;
    v19 = v3 | (v5 << 32);
    p_buf = &buf;
    v14 = *(v2 + 112);
    v15 = sub_10157FEE8(v5);
    (*(*v14 + 152))(v14, v3, v15);
    (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 1);
    sub_10002B644(&buf);
  }

LABEL_9:
  sub_10157FD18(&v17);
  return sub_1000049E0(&v16);
}

void sub_10157FCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002B644(&a11);
  sub_10157FD18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10157FD18(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

__n128 sub_10157FE04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E788;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10157FE34(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 152);

  return v4(v1, v2, v3);
}

uint64_t sub_10157FE9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10157FEE8(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return asc_101992EEE[a1];
  }
}

void sub_10157FF08(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  if ((sub_101571F9C(v2, *(*a1 + 2), *(*a1 + 3)) & 1) == 0)
  {
    v3 = v1[1];
    v5[0] = off_101F4E808;
    v5[1] = v2;
    v5[2] = v3;
    v5[3] = v5;
    sub_1015715F4(v2, v3, v5);
    sub_10002B644(v5);
  }

  operator delete();
}

void sub_10157FFE0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101580084(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E808;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015800E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580134(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (!v4)
  {
LABEL_7:
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_9;
  }

  v5 = *(v1 + 12);
  v6 = *(v2 + 240);
  v7 = *(v1 + 4);
  v8 = *(v1 + 5);
  while (1)
  {
    v9 = *(v6 + 8);
    if (v9 <= v3)
    {
      if (v9 >= v3)
      {
        if (sub_10000BA08(v4, v3)[1])
        {
          if (sub_10156FE88(v2) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
          {
            v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v14 = "#I VoLTE call is active, ignoring the request to save Call Waiting value because it would trigger CSFB";
              goto LABEL_27;
            }

            goto LABEL_9;
          }

          v15 = &_mh_execute_header;
          if (!v5)
          {
            v15 = 0;
          }

          v16 = v15 | v3;
          v17 = v7 | (v8 << 32);
          v18 = *(v2 + 360);
          if (v18 > 1)
          {
            v24 = (*(*(v2 + 328) + (((v18 + *(v2 + 352) - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v18 + *(v2 + 352) - 1));
            *v24 = v16;
            v24[1] = v17;
            v25 = *(v2 + 360);
          }

          else
          {
            v32 = v16;
            v19 = *(v2 + 336);
            v20 = *(v2 + 328);
            if (v19 == v20)
            {
              v21 = 0;
            }

            else
            {
              v21 = 32 * (v19 - v20) - 1;
            }

            v22 = *(v2 + 352);
            v23 = v22 + v18;
            if (v21 == v23)
            {
              if (v22 < 0x100)
              {
                v26 = *(v2 + 344);
                v27 = *(v2 + 320);
                if (v19 - v20 < (v26 - v27))
                {
                  operator new();
                }

                if (v26 == v27)
                {
                  v28 = 1;
                }

                else
                {
                  v28 = (v26 - v27) >> 2;
                }

                sub_100EF4E80(v28);
              }

              *(v2 + 352) = v22 - 256;
              *&buf = *v20;
              *(v2 + 328) = v20 + 8;
              sub_1010F098C((v2 + 320), &buf);
              v20 = *(v2 + 328);
              v23 = *(v2 + 360) + *(v2 + 352);
            }

            v29 = (*&v20[(v23 >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * v23);
            *v29 = v32;
            v29[1] = v17;
            v25 = *(v2 + 360) + 1;
            *(v2 + 360) = v25;
          }

          if (v25 == 1)
          {
            v30 = *(v2 + 368);
            if (v30)
            {
              v31 = (*(*(v2 + 328) + ((*(v2 + 352) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(v2 + 352));
              (*(*v30 + 16))(v30, *v31, v31[1]);
            }
          }
        }

        else
        {
          v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            v14 = "#I Save call waiting failed, no command driver";
LABEL_27:
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, &buf, 2u);
          }

LABEL_9:
          v11 = *(v1 + 2);
          v12 = v11 | (*(v1 + 4) << 32);
          *&buf = off_101F4E888;
          *(&buf + 1) = v2;
          v34 = v12;
          p_buf = &buf;
          sub_1015715F4(v2, v11, &buf);
          sub_10002B644(&buf);
        }

        operator delete();
      }

      ++v6;
    }

    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }
}

void sub_1015808AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  operator delete(v17);
  if (v16)
  {
    operator delete(v16);
  }

  operator delete();
}

__n128 sub_101580984(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015809EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580A50(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if (v4)
          {
            if (v8)
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Handling Calling Line Presentation APIs", &buf, 2u);
            }

            if (!sub_10000BA08(*(v1 + 240), v2)[1])
            {
              goto LABEL_25;
            }

            if (sub_10156FE88(v1) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
            {
              v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                v9 = "#I VoLTE call is active, ignoring request to fetch CLIP value because it would trigger CSFB";
                goto LABEL_21;
              }

              goto LABEL_25;
            }

            v10 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = sub_10000BA08(*(v1 + 240), v2);
              v12 = (*(*v11[1] + 48))(v11[1]);
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the CLIP Fetch", &buf, 0xCu);
            }

            v13 = sub_10000BA08(*(v1 + 240), v2);
            if (((*(*v13[1] + 128))(v13[1], v2) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            if (v8)
            {
              LOWORD(buf) = 0;
              v9 = "#I Not handling Connected Line Presentation APIs";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &buf, 2u);
            }

LABEL_25:
            *&buf = off_101F4E928;
            *(&buf + 1) = v1;
            v15 = v2 | (v4 << 32);
            p_buf = &buf;
            (*(**(v1 + 112) + 208))(*(v1 + 112), v2, v4);
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_10:
          operator delete();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_10;
}

void sub_101580E34(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101580EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E928;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101580F48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101580F94(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (!v4)
  {
LABEL_8:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_10;
  }

  v6 = v1[3];
  v5 = v1[4];
  while (1)
  {
    v7 = *(v4 + 8);
    if (v7 <= v3)
    {
      if (v7 >= v3)
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (v11)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Handling Calling Line Presentation APIs", &buf, 2u);
          }

          if (!sub_10000BA08(*(v2 + 240), v3)[1])
          {
            goto LABEL_10;
          }

          if (sub_10156FE88(v2) && sub_10000BA08(*(v2 + 240), v3)[1] != *(v2 + 152))
          {
            v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v13 = "#I VoLTE call is active, ignoring request to save CLIP value because it would trigger CSFB";
              v14 = v12;
              goto LABEL_22;
            }

            goto LABEL_10;
          }

          v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = sub_10000BA08(*(v2 + 240), v3);
            v17 = (*(*v16[1] + 48))(v16[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to save CLIP", &buf, 0xCu);
          }

          v18 = sub_10000BA08(*(v2 + 240), v3);
          if (((*(*v18[1] + 152))(v18[1], v3, v5) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v11)
          {
            LOWORD(buf) = 0;
            v13 = "#I Not handling Connected Line Presentation APIs";
            v14 = v10;
LABEL_22:
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, 2u);
          }

LABEL_10:
          v9 = v1[2];
          *&buf = off_101F4E9A8;
          *(&buf + 1) = v2;
          v20 = v9;
          p_buf = &buf;
          sub_1015715F4(v2, v9, &buf);
          sub_10002B644(&buf);
        }

        operator delete();
      }

      ++v4;
    }

    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void sub_101581338(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015813EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4E9A8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101581454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015814B8(uint64_t **a1)
{
  v12 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(v1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          if (!sub_10000BA08(v3, v2)[1])
          {
            goto LABEL_18;
          }

          if (sub_10156FE88(v1) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
          {
            v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch COLR value because it would trigger CSFB", &buf, 2u);
            }

            goto LABEL_18;
          }

          v8 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = sub_10000BA08(*(v1 + 240), v2);
            v10 = (*(*v9[1] + 48))(v9[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the COLR Fetch", &buf, 0xCu);
          }

          v11 = sub_10000BA08(*(v1 + 240), v2);
          if (((*(*v11[1] + 136))(v11[1], v2) & 1) == 0)
          {
LABEL_18:
            *&buf = off_101F4EA48;
            *(&buf + 1) = v1;
            v14 = v2;
            p_buf = &buf;
            (*(**(v1 + 112) + 216))(*(v1 + 112), v2);
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_9:
          operator delete();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_101581804(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015818B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EA48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101581920(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101581980(uint64_t **a1)
{
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(*a1 + 4);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v1)
      {
        if (v5 >= v1)
        {
          v7 = *(v2 + 296);
          if (v7 <= 5)
          {
            v8 = *(v2 + 272);
            v9 = *(v2 + 264);
            if (v8 == v9)
            {
              v10 = 0;
            }

            else
            {
              v10 = 341 * ((v8 - v9) >> 3) - 1;
            }

            v11 = *(v2 + 288);
            v12 = v11 + v7;
            if (v10 == v11 + v7)
            {
              if (v11 < 0x155)
              {
                v13 = *(v2 + 280);
                v14 = *(v2 + 256);
                if (v8 - v9 < (v13 - v14))
                {
                  operator new();
                }

                if (v13 == v14)
                {
                  v15 = 1;
                }

                else
                {
                  v15 = (v13 - v14) >> 2;
                }

                sub_100EF4E80(v15);
              }

              *(v2 + 288) = v11 - 341;
              *buf = *v9;
              *(v2 + 264) = v9 + 8;
              sub_1010F098C((v2 + 256), buf);
              v9 = *(v2 + 264);
              v12 = *(v2 + 296) + *(v2 + 288);
            }

            v16 = *&v9[8 * (v12 / 0x155)] + 12 * (v12 % 0x155);
            *v16 = v1;
            *(v16 + 8) = v4;
            v17 = *(v2 + 296);
            *(v2 + 296) = v17 + 1;
            if (!v17)
            {
              v18 = *(v2 + 304);
              if (v18)
              {
                v19 = *(*(v2 + 264) + 8 * (*(v2 + 288) / 0x155uLL)) + 12 * (*(v2 + 288) % 0x155uLL);
                (*(*v18 + 16))(v18, *v19, *(v19 + 8));
              }
            }
          }

          v20 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = *(v2 + 296);
            *buf = 134217984;
            *&buf[4] = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Processed call forward fetch request, queue size is now %zu", buf, 0xCu);
          }

LABEL_9:
          operator delete();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_101582034(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  operator delete(v13);
  if (v12)
  {
    operator delete(v12);
  }

  operator delete();
}

void sub_101582088(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x155)
  {
    a2 = 1;
  }

  if (v3 > 0x2A9 || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 341;
  }
}

void sub_1015820E4(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100EF4E80((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1015821C0(uint64_t **a1)
{
  v6 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 3);
  v4 = *(*a1 + 4);
  v5 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Call Forward Fetch is going ahead for Request - Reason %d, Call Class 0x%04X", buf, 0xEu);
  }

  if ((sub_10157336C(v1, v2, v3, v4) & 1) == 0)
  {
    operator new();
  }

  operator delete();
}

void sub_101582350(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158240C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EAE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101582480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015824CC(uint64_t *a1)
{
  v1 = *a1;
  v31 = a1;
  v32 = v1;
  v2 = *v1;
  v3 = *(*v1 + 240);
  if (!v3)
  {
    v4 = *(v1 + 8);
LABEL_9:
    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      buf.var0 = 136315138;
      *&buf.var1 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_11;
  }

  v4 = *(v1 + 8);
  v5 = *(*v1 + 240);
  while (1)
  {
    v6 = *(v5 + 8);
    if (v4 >= v6)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (v6 < v4)
  {
    ++v5;
    goto LABEL_6;
  }

  v9 = *(v1 + 176);
  v10 = *(v1 + 180);
  v11 = v10 > 5;
  v12 = (1 << v10) & 0x34;
  if (!v11 && v12 != 0 && *(v1 + 12) == 1 && v9 == 0)
  {
    if (sub_10000BA08(v3, v4)[1] == *(v2 + 152))
    {
      v9 = 0;
    }

    else
    {
      v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(v1 + 180);
        buf.var0 = 67109120;
        buf.var1 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I The call forward reason is '%d', but no reply time provided, assuming 20 seconds", &buf, 8u);
      }

      v9 = 20;
    }
  }

  v17 = *(v1 + 8);
  v18 = *(v1 + 12);
  sub_1000AE428(&buf, v1 + 16);
  v19 = *(v1 + 180);
  v20 = *(v1 + 184);
  v21 = *(v1 + 188);
  if (sub_10000BA08(*(v2 + 240), v17)[1])
  {
    if (sub_10156FE88(v2) && sub_10000BA08(*(v2 + 240), v17)[1] != *(v2 + 152))
    {
      v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        v23 = "#I VoLTE call is active, ignoring the request to save Call Forward value because it would trigger CSFB";
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v24 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = sub_10000BA08(*(v2 + 240), v17);
      v26 = (*(*v25[1] + 48))(v25[1]);
      CSIPhoneNumber::getFullNumber(__p, &buf);
      v27 = __p;
      if (v34 < 0)
      {
        v27 = __p[0];
      }

      *v44 = 136316674;
      v45 = v26;
      v46 = 1024;
      v47 = v18;
      v48 = 2080;
      v49 = v27;
      v50 = 1024;
      v51 = v19;
      v52 = 1024;
      v53 = v20;
      v54 = 1024;
      v55 = v9;
      v56 = 1024;
      v57 = v21;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Sent the request to save Call Forward to %s with enabled %d, number %s, reason %d, class %d, Reply Timer %d, MMI Procedure %d", v44, 0x34u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v28 = sub_10000BA08(*(v2 + 240), v17);
    if ((5 * ((205 * v9) >> 10)) >= 0x1Eu)
    {
      v29 = 30;
    }

    else
    {
      v29 = (5 * ((205 * v9) >> 10));
    }

    v30 = (*(*v28[1] + 64))(v28[1], v17, v18, &buf, v19, v20, v29, v21);
  }

  else
  {
    v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      v23 = "#I SetCallForwarding failed, no command driver";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, v44, 2u);
    }

LABEL_43:
    v30 = 0;
  }

  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (*(&buf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(buf.var2.__rep_.__l.__data_);
  }

  if ((v30 & 1) == 0)
  {
    operator new();
  }

LABEL_11:
  sub_101582A88(&v32);
  return sub_1000049E0(&v31);
}

void sub_101582A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10002B644(v2 - 176);
  sub_101582A88(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101582A88(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 167) < 0)
    {
      operator delete(*(v1 + 144));
    }

    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return result;
}

__n128 sub_101582BA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101582C18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101582C88(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*v1 + 30);
  v3 = *v1[1];
  if (v2)
  {
    v4 = *(*v1 + 30);
    do
    {
      v5 = *(v4 + 8);
      if (v3 >= v5)
      {
        if (v5 >= v3)
        {
          v7 = *(sub_10000BA08(v2, v3)[3] + 48);
          return v7 & 1;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(*v1 + 6) + 16))(*(*v1 + 6), v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315138;
    v10 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v9, 0xCu);
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t *sub_101582DA8(unsigned int **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 240);
  if (v3)
  {
    v4 = v1[2];
    v5 = *(*v1 + 240);
    do
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  else
  {
    v4 = v1[2];
  }

  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v13 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  sub_100632604((v1 + 4), 256);
  v3 = *(v2 + 240);
  LODWORD(v4) = v1[2];
LABEL_12:
  v8 = sub_10000BA08(v3, v4);
  sub_100632604((v1 + 4), *(v8[3] + 48) | 0x100);
  sub_1006325B4(&v11);
  return sub_1000049E0(&v10);
}

void sub_101582EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1006325B4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101582F18(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(v1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          if (sub_10000BA08(v3, v2)[1])
          {
            if (sub_10156FE88(v1) && sub_10000BA08(*(v1 + 240), v2)[1] != *(v1 + 152))
            {
              v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                v8 = "#I VoLTE call is active, ignoring request to fetch Calling Name Presentation because it would trigger CSFB";
                goto LABEL_21;
              }

              goto LABEL_22;
            }

            v9 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = sub_10000BA08(*(v1 + 240), v2);
              v11 = (*(*v10[1] + 48))(v10[1]);
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sent the Calling Name Presentation Fetch request to %s", &buf, 0xCu);
            }

            v12 = sub_10000BA08(*(v1 + 240), v2);
            if (((*(*v12[1] + 144))(v12[1], v2) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              v8 = "#I fetch CNAP failed, no command driver";
LABEL_21:
              _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &buf, 2u);
            }

LABEL_22:
            *&buf = off_101F4EC28;
            *(&buf + 1) = v1;
            v14 = v2;
            p_buf = &buf;
            (*(**(v1 + 112) + 256))();
            (*(**(v1 + 384) + 40))(*(v1 + 384), v2, 1);
            sub_10002B644(&buf);
          }

LABEL_9:
          operator delete();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_1015832D0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101583384(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EC28;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015833F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101583454(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = v2[30];
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = v2[30];
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          if (sub_10000BA08(v3, v4)[1])
          {
            if (!sub_10156FE88(v2) || sub_10000BA08(v2[30], *(v1 + 2))[1] == v2[19])
            {
              (*(*v2[17] + 168))(v2[17], *(v1 + 2), *(v1 + 12));
              (*(*v2[19] + 168))(v2[19], *(v1 + 2), *(v1 + 12));
              v9 = *(v1 + 2);
              v10 = *(v1 + 12);
              v11 = *(*(*v2[6] + 16))(v2[6], v9);
              if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                v12 = "OFF";
                if (v10)
                {
                  v12 = "ON";
                }

                *buf = 136315138;
                v14 = v12;
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisting Auto Answer status %s", buf, 0xCu);
              }

              (*(*v2[23] + 120))(v2[23], v9, v10);
            }

            else
            {
              v8 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to enable Auto Answer Mode", buf, 2u);
              }
            }
          }

          goto LABEL_11;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(*v2[6] + 16))(v2[6], v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_11:
  operator delete();
}

void sub_10158378C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    while (1)
    {
      v5 = *(v3 + 8);
      if (v4 >= v5)
      {
        if (v5 >= v4)
        {
          v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48));
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I New SIM Info available, restoring the Call Forward Settings", &buf, 2u);
          }

          ServiceMap = Registry::getServiceMap(*(v2 + 96));
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
          *&buf = v10;
          v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
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
LABEL_20:
                v18 = *(v2 + 40);
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf) = 0;
                  _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Subscriber sim controller not found.", &buf, 2u);
                }

                goto LABEL_38;
              }

LABEL_24:
              v29 = 0;
              buf = 0uLL;
              (*(*v16 + 200))(v16, *(v1 + 2), 0, &buf);
              v19 = sub_10000BA08(*(v2 + 240), *(v1 + 2));
              sub_1012D8A1C(v19[3]);
              v20 = HIBYTE(v29);
              if (v29 < 0)
              {
                v20 = *(&buf + 1);
              }

              if (v20)
              {
                v21 = sub_10000BA08(*(v2 + 240), *(v1 + 2));
                if (sub_1012D8BFC(v21[3], &buf))
                {
                  v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v27 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I ICCID has changed, resetting CLIR network info if available", v27, 2u);
                  }

                  sub_101570A74(v2, *(v1 + 2));
                }
              }

              v23 = *(v2 + 224);
              if (v23)
              {
                v24 = std::__shared_weak_count::lock(v23);
                if (v24)
                {
                  v25 = v24;
                  v26 = *(v2 + 216);
                  if (v26)
                  {
                    (*(*v26 + 328))(v26, *(v1 + 2));
                  }

                  sub_100004A34(v25);
                }
              }

              if (SHIBYTE(v29) < 0)
              {
                operator delete(buf);
              }

LABEL_38:
              if ((v17 & 1) == 0)
              {
                sub_100004A34(v15);
              }

LABEL_11:
              operator delete();
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
            goto LABEL_20;
          }

          goto LABEL_24;
        }

        ++v3;
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_11;
}

void sub_101583B7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_100004A34(v19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

void sub_101583BF0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(v1 + 2);
    v5 = *(v2 + 240);
    while (1)
    {
      v6 = *(v5 + 8);
      if (v4 >= v6)
      {
        if (v6 >= v4)
        {
          v8 = *(v2 + 112);
          v9 = sub_10000BA08(v3, *(v1 + 2));
          (*(*v8 + 48))(v8, v4, *(v9[3] + 48));
          goto LABEL_12;
        }

        ++v5;
      }

      v5 = *v5;
      if (!v5)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = *(v1 + 2);
LABEL_9:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v11 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_101583D98(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 384) + 40))(*(**a1 + 384), *(*a1 + 8), 0);
  operator delete();
}

void sub_101583E44(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 384) + 40))(*(**a1 + 384), *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

uint64_t *sub_101583EEC(uint64_t *a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 240);
  if (v6)
  {
    v7 = *(v1 + 32);
    v8 = *(v1 + 36);
    do
    {
      v9 = *(v6 + 8);
      if (v9 <= v3)
      {
        if (v9 >= v3)
        {
          v11 = 0;
          if (*v4 != v4[1])
          {
            v12 = *v4 + 8;
            do
            {
              v13 = v12 - 8;
              v14 = sub_10000BA08(*(v2 + 240), v3)[3];
              v15 = *(v12 - 6);
              *buf = *(v12 - 8);
              buf[2] = v15;
              if (*(v12 + 23) < 0)
              {
                sub_100005F2C(&__p[4], *v12, *(v12 + 8));
              }

              else
              {
                v16 = *v12;
                v38 = *(v12 + 16);
                *&__p[4] = v16;
              }

              v39 = *(v12 + 24);
              sub_1012D7E00(v14, v7, buf);
              if (SHIBYTE(v38) < 0)
              {
                operator delete(*&__p[4]);
              }

              v11 = *(v12 - 6) | v11;
              v12 += 40;
            }

            while (v13 + 40 != v4[1]);
          }

          v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 67109120;
            v31 = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Classes covered are %d", v30, 8u);
          }

          if (!v8)
          {
            v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *v30 = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", v30, 2u);
            }

            v8 = 255;
          }

          v19 = 0;
          while (1)
          {
            v20 = 1 << v19;
            v21 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *v27 = 67109376;
              *&v27[4] = 1 << v19;
              v28 = 1024;
              v29 = v8;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Checking for service class %d and call class in the request: %d", v27, 0xEu);
            }

            if ((v20 & v8) != 0 && (v20 & v11) == 0)
            {
              v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *v27 = 67109120;
                *&v27[4] = 1 << v19;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Baseband response does not contain information on class %d, assuming inactive", v27, 8u);
              }

              v23 = sub_10000BA08(*(v2 + 240), v3)[3];
              *v30 = 0;
              v30[2] = 1 << v19;
              v33 = 0;
              v34 = 0;
              v32 = 0;
              v35 = 0;
              sub_1012D7E00(v23, v7, v30);
              if (SHIBYTE(v34) < 0)
              {
                operator delete(v32);
              }
            }

            if (++v19 == 8)
            {
              operator new();
            }
          }
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *__p = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1001FF5D4(&v26);
  return sub_1000049E0(&v25);
}

void sub_101584474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10002B644(&a17);
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_1001FF5D4(&a16);
  sub_1000049E0(&a15);
  _Unwind_Resume(a1);
}

__n128 sub_10158456C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4ECC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_1015845A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = 1;
  do
  {
    if ((v4 & v3) != 0)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      memset(&v22, 0, sizeof(v22));
      CSIPhoneNumber::CSIPhoneNumber(&v22);
      v21 = 0;
      if (sub_101573918(v2, *(a1 + 20), &v21 + 1, &v22, &v21, *(a1 + 24), v4))
      {
        v5 = *(v2 + 112);
        v6 = *(a1 + 20);
        v7 = *(a1 + 24);
        v8 = HIBYTE(v21);
        v9 = v21;
        sub_1000AE428(v10, &v22);
        (*(*v5 + 32))(v5, v6, v7, v4, v8, v9, v10);
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }

        if (v12 < 0)
        {
          operator delete(v11);
        }
      }

      if (SBYTE7(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(*(&v27 + 1));
      }

      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

      if (SBYTE7(v24) < 0)
      {
        operator delete(v23);
      }

      if (*(&v22.var2.__rep_.__l + 23) < 0)
      {
        operator delete(v22.var2.__rep_.__l.__data_);
      }
    }

    v4 = (2 * v4);
  }

  while (v4 && v4 < 129);
}

void sub_101584758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10034F8E8(&a10);
  sub_10034F8E8(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_10158477C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101584840(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4ED48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101584874(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 112);
  v3 = *(a1 + 16);
  v4 = *(sub_10000BA08(*(v1 + 240), v3)[3] + 48);
  v5 = *(*v2 + 48);

  return v5(v2, v3, v4);
}

uint64_t sub_1015848E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101584934(uint64_t **a1)
{
  v14 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 3);
  v5 = *(*a1 + 4);
  v4 = *(*a1 + 5);
  v6 = *(*a1 + 24);
  v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315138;
    buf_4 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch call forwarding info, error=%s", &buf, 0xCu);
  }

  v8 = *(v1 + 240);
  if (v8)
  {
    v9 = *(v1 + 240);
    do
    {
      v10 = *(v9 + 8);
      if (v10 <= v2)
      {
        if (v10 >= v2)
        {
          if (v6 != 1 || (v4 - 21) > 1 || (*(sub_10000BA08(v8, v2) + 160) = 0, sub_10156DD80(v1, v2), (sub_10157336C(v1, v2, v3, v5) & 1) == 0))
          {
            if (!v5)
            {
              v12 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", &buf, 2u);
              }
            }

            operator new();
          }

LABEL_11:
          operator delete();
        }

        ++v9;
      }

      v9 = *v9;
    }

    while (v9);
  }

  v11 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v13 = subscriber::asString();
    buf = 136315138;
    buf_4 = v13;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_11;
}