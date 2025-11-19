uint64_t sub_10159A234(uint64_t a1)
{
  *a1 = off_101F504C8;
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v5 = (a1 + 160);
  sub_1000087B4(&v5);
  v5 = (a1 + 136);
  sub_1000087B4(&v5);
  sub_100246E7C(a1 + 104, *(a1 + 112));
  if (*(a1 + 96) == 1)
  {
    v5 = (a1 + 64);
    sub_1000087B4(&v5);
  }

  v5 = (a1 + 32);
  sub_100F75FA4(&v5);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_10159A2F8(uint64_t a1)
{
  sub_10159A234(a1);

  operator delete();
}

void sub_10159A330(uint64_t a1)
{
  sub_100008764((a1 + 136));
  sub_100008764((a1 + 160));
  theArray = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
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

  std::mutex::unlock(v3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 96))(__p, v11, *(a1 + 128), 1, @"SatelliteApps", 0, 0);
  sub_10006DD00(&theArray, __p);
  sub_10000A1EC(__p);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        *type = 0;
        *buf = CFArrayGetValueAtIndex(theArray, i);
        sub_100060DE8(type, buf);
        if (*type)
        {
          __p[0] = 0;
          __p[1] = 0;
          v52 = 0;
          memset(buf, 0, sizeof(buf));
          v56 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v52 = v56;
          v15 = HIBYTE(v56);
          if ((v56 & 0x8000000000000000) != 0)
          {
            v15 = *&buf[8];
          }

          if (v15)
          {
            v16 = *(a1 + 144);
            if (v16 >= *(a1 + 152))
            {
              v20 = sub_10016B30C(a1 + 136, __p);
            }

            else
            {
              if (SHIBYTE(v56) < 0)
              {
                sub_100005F2C(*(a1 + 144), __p[0], *&buf[8]);
              }

              else
              {
                v17 = *__p;
                *(v16 + 16) = v52;
                *v16 = v17;
              }

              v20 = v16 + 24;
              *(a1 + 144) = v16 + 24;
            }

            *(a1 + 144) = v20;
          }

          else
          {
            v19 = *(a1 + 8);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E SatelliteApps contains empty app", buf, 2u);
            }
          }

          if (SHIBYTE(v52) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E SatelliteApps does not contain string", buf, 2u);
          }
        }

        sub_100005978(type);
      }
    }
  }

  else
  {
    v21 = *(a1 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I CB section missed: SatelliteApps", buf, 2u);
    }
  }

  sub_100010250(&theArray);
  v22 = Registry::getServiceMap(*(a1 + 16));
  v23 = v22;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v22);
  *buf = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, buf);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v23);
  v29 = 0;
  v31 = 1;
LABEL_43:
  v32 = (*(*v30 + 32))(v30);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (v32)
  {
    theArray = 0;
    v33 = Registry::getServiceMap(*(a1 + 16));
    v34 = v33;
    if (v4 < 0)
    {
      v35 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v4 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    std::mutex::lock(v33);
    *buf = v4;
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
LABEL_54:
        (*(*v40 + 96))(__p, v40, *(a1 + 128), 1, @"SatelliteTestApps", 0, 0);
        sub_10006DD00(&theArray, __p);
        sub_10000A1EC(__p);
        if ((v41 & 1) == 0)
        {
          sub_100004A34(v39);
        }

        if (theArray)
        {
          v42 = CFArrayGetCount(theArray);
          if (v42 >= 1)
          {
            for (j = 0; j != v42; ++j)
            {
              *type = 0;
              *buf = CFArrayGetValueAtIndex(theArray, j);
              sub_100060DE8(type, buf);
              if (*type)
              {
                __p[0] = 0;
                __p[1] = 0;
                v52 = 0;
                memset(buf, 0, sizeof(buf));
                v56 = 0;
                ctu::cf::assign();
                *__p = *buf;
                v52 = v56;
                v44 = HIBYTE(v56);
                if ((v56 & 0x8000000000000000) != 0)
                {
                  v44 = *&buf[8];
                }

                if (v44)
                {
                  v45 = *(a1 + 168);
                  if (v45 >= *(a1 + 176))
                  {
                    v49 = sub_10016B30C(a1 + 160, __p);
                  }

                  else
                  {
                    if (SHIBYTE(v56) < 0)
                    {
                      sub_100005F2C(*(a1 + 168), __p[0], *&buf[8]);
                    }

                    else
                    {
                      v46 = *__p;
                      *(v45 + 16) = v52;
                      *v45 = v46;
                    }

                    v49 = v45 + 24;
                    *(a1 + 168) = v45 + 24;
                  }

                  *(a1 + 168) = v49;
                }

                else
                {
                  v48 = *(a1 + 8);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#E SatelliteTestApps contains empty app", buf, 2u);
                  }
                }

                if (SHIBYTE(v52) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v47 = *(a1 + 8);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#E SatelliteTestApps does not contain string", buf, 2u);
                }
              }

              sub_100005978(type);
            }
          }
        }

        else
        {
          v50 = *(a1 + 8);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I CB section missed: SatelliteTestApps", buf, 2u);
          }
        }

        sub_100010250(&theArray);
        return;
      }
    }

    else
    {
      v40 = 0;
    }

    std::mutex::unlock(v34);
    v39 = 0;
    v41 = 1;
    goto LABEL_54;
  }
}

void sub_10159A9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10159AA80(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = (a1 + 112);
  if (v1 != (a1 + 112))
  {
    while (1)
    {
      v4 = SlotIdFromPersonalityId();
      v5 = *(a1 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 55);
        v7 = (v6 & 0x80u) != 0;
        if ((v6 & 0x80u) != 0)
        {
          v6 = v1[5];
        }

        if (v7)
        {
          v8 = v1[4];
        }

        else
        {
          v8 = (v1 + 4);
        }

        if (v6)
        {
          v9 = v8;
        }

        else
        {
          v9 = "<invalid>";
        }

        v10 = subscriber::asString();
        v11 = asStringBool(*(v1 + 56));
        *buf = 136315650;
        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2080;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [Personality: %s, simSlot: %s] Satellite support processing: %s", buf, 0x20u);
      }

      if (subscriber::isValidSimSlot() && *(a1 + 128) == v4)
      {
        break;
      }

      v12 = v1[1];
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
          v13 = v1[2];
          v14 = *v13 == v1;
          v1 = v13;
        }

        while (!v14);
      }

      v1 = v13;
      if (v13 == v2)
      {
        return;
      }
    }

    buf[0] = 0;
    v22 = 0;
    sub_10082B670(a1 + 56, buf);
    if (v22 == 1)
    {
      v15 = (&v17 + 4);
      sub_1000087B4(&v15);
    }

    if (*(v1 + 56) == 1)
    {
      sub_100250034(a1 + 56, (v1 + 8));
    }
  }
}

void sub_10159AC64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10159AC70(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 104);
  if (v3 != a2)
  {
    sub_10024FE98(v3, *a2, a2 + 1);
  }

  sub_10159AA80(a1);
}

void sub_10159ACBC(uint64_t a1, int a2)
{
  if (subscriber::isValidSimSlot())
  {
    *(a1 + 128) = a2;
    sub_10159AA80(a1);

    sub_10159A330(a1);
  }

  else
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E wrong SIM: %s", &v5, 0xCu);
    }
  }
}

BOOL sub_10159ADBC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v6, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t sub_10159AE54(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_10159AE84(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 16);
  v6 = a1 + 8;
  sub_100580908(a1 + 8, *(a1 + 16));
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  v9 = *a2;
  v7 = (a2 + 1);
  v8 = v9;
  if (v9 != v7)
  {
    v10 = a3 + 1;
    while (1)
    {
      v11 = *(v8 + 55);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = v8[5];
      }

      v12 = *a3;
      v13 = !v11 || v12 == v10;
      if (!v13)
      {
        break;
      }

LABEL_21:
      v17 = v8[1];
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
          v18 = v8[2];
          v13 = *v18 == v8;
          v8 = v18;
        }

        while (!v13);
      }

      v8 = v18;
      if (v18 == v7)
      {
        return;
      }
    }

    while (1)
    {
      if ((*(v12 + 55) & 0x8000000000000000) != 0)
      {
        if (v12[5])
        {
LABEL_13:
          __p = 0uLL;
          v20 = 0;
          sub_101599734(&__p, (v12 + 4));
          v21 = v8 + 4;
          v14 = sub_100580B40(v6, v8 + 4);
          sub_100005308((v14 + 56), &__p);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p);
          }
        }
      }

      else if (*(v12 + 55))
      {
        goto LABEL_13;
      }

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
          v13 = *v16 == v12;
          v12 = v16;
        }

        while (!v13);
      }

      v12 = v16;
      if (v16 == v10)
      {
        goto LABEL_21;
      }
    }
  }
}

void sub_10159AFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10159B00C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: SIM: %s", buf, 0xCu);
    v2 = *(a1 + 8);
  }

  v3 = *(a1 + 96);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v4)
    {
      sub_1013E68CC(a1 + 56, buf);
      v5 = v44 >= 0 ? buf : *buf;
      *v39 = 136315138;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: properties: %s", v39, 0xCu);
      if (v44 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: properties: empty", buf, 2u);
  }

  v6 = *(a1 + 104);
  if (v6 != (a1 + 112))
  {
    do
    {
      if (v6[7])
      {
        v7 = *(v6 + 104);
        v8 = *(a1 + 8);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v9)
          {
            v10 = *(v6 + 55);
            v11 = (v10 & 0x80u) != 0;
            if ((v10 & 0x80u) != 0)
            {
              v10 = v6[5];
            }

            if (v11)
            {
              v12 = v6[4];
            }

            else
            {
              v12 = (v6 + 4);
            }

            if (v10)
            {
              v13 = v12;
            }

            else
            {
              v13 = "<invalid>";
            }

            sub_1013E68CC((v6 + 8), buf);
            v14 = buf;
            if (v44 < 0)
            {
              v14 = *buf;
            }

            *v39 = 136315394;
            v40 = v13;
            v41 = 2080;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I dump: personalityId = %s, properties = %s", v39, 0x16u);
            if (v44 < 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_49;
        }

        if (v9)
        {
          v22 = *(v6 + 55);
          v23 = (v22 & 0x80u) != 0;
          if ((v22 & 0x80u) != 0)
          {
            v22 = v6[5];
          }

          if (v23)
          {
            v24 = v6[4];
          }

          else
          {
            v24 = (v6 + 4);
          }

          if (v22)
          {
            v25 = v24;
          }

          else
          {
            v25 = "<invalid>";
          }

          *buf = 136315138;
          *&buf[4] = v25;
          v20 = v8;
          v21 = "#I dump: personalityId = %s, no properties";
LABEL_48:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        }
      }

      else
      {
        v15 = *(a1 + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v6 + 55);
          v17 = (v16 & 0x80u) != 0;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v6[5];
          }

          if (v17)
          {
            v18 = v6[4];
          }

          else
          {
            v18 = (v6 + 4);
          }

          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = "<invalid>";
          }

          *buf = 136315138;
          *&buf[4] = v19;
          v20 = v15;
          v21 = "#I dump: personalityId = %s, not allowed";
          goto LABEL_48;
        }
      }

LABEL_49:
      v26 = v6[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v6[2];
          v28 = *v27 == v6;
          v6 = v27;
        }

        while (!v28);
      }

      v6 = v27;
    }

    while (v27 != (a1 + 112));
  }

  v29 = *(a1 + 136);
  for (i = *(a1 + 144); v29 != i; v29 += 3)
  {
    v31 = *(a1 + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v29;
      if (*(v29 + 23) < 0)
      {
        v32 = *v29;
      }

      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I dump: carrierApp = %s", buf, 0xCu);
    }
  }

  v33 = *(a1 + 160);
  for (j = *(a1 + 168); v33 != j; v33 += 3)
  {
    v35 = *(a1 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v33;
      if (*(v33 + 23) < 0)
      {
        v36 = *v33;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I dump: testApp = %s", buf, 0xCu);
    }
  }

  v37 = *(a1 + 184);
  if (v37)
  {
    (*(*v37 + 32))(v37);
  }

  else
  {
    v38 = *(a1 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I dump: fAppEntitlementsReader is empty", buf, 2u);
    }
  }
}

uint64_t sub_10159B724@<X0>(uint64_t result@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v4 = result + 16;
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = result + 16;
  do
  {
    result = sub_1000068BC((v5 + 32), a2);
    if ((result & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *(v5 + ((result >> 4) & 8));
  }

  while (v5);
  if (v7 == v4 || (result = sub_1000068BC(a2, (v7 + 32)), (result & 0x80) != 0))
  {
LABEL_11:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v8 = *(v7 + 56);
    v9 = *(v7 + 64);

    return sub_10004EFD0(a3, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  }

  return result;
}

void sub_10159B7FC(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B838(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B874(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B8B0(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B8EC(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B928(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10159B960(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10159B990(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10159B9F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BA8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BB28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F507C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BBC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BC60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BDBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10159BDE4(uint64_t a1, uint64_t a2, const char *a3, NSObject **a4)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, a3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a4;
  *(a1 + 24) = *a4;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(&v13, &v15);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v13);
  ctu::OsLogLogger::~OsLogLogger(&v13);
  ctu::OsLogContext::~OsLogContext(&v15);
  v14[0] = off_101E2B528;
  v14[1] = sub_1000A8540;
  v14[3] = v14;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v14);
  *a1 = &off_101F508D0;
  v10 = *a2;
  *(a1 + 56) = *a2;
  v11 = *(a2 + 8);
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v10 = *(a1 + 56);
  }

  *(a1 + 72) = a3;
  Registry::getNotificationSenderFactory(&v15, v10);
  (*(*v15.var0 + 80))(v15.var0);
  if (v15.var1.fRef)
  {
    sub_100004A34(v15.var1.fRef);
  }

  Registry::getNotificationSenderFactory(&v15, *(a1 + 56));
  (*(*v15.var0 + 128))(v15.var0);
  if (v15.var1.fRef)
  {
    sub_100004A34(v15.var1.fRef);
  }

  return a1;
}

void sub_10159C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000A8744(va);
  operator delete();
}

SettingsNotificationHandlerInterface *sub_10159C1CC(SettingsNotificationHandlerInterface *this)
{
  *this = &off_101F508D0;
  v2 = *(this + 13);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  SettingsNotificationHandlerInterface::~SettingsNotificationHandlerInterface(this);
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_10159C27C(SettingsNotificationHandlerInterface *a1)
{
  sub_10159C1CC(a1);

  operator delete();
}

uint64_t sub_10159C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Fetch Error", v14, 2u);
  }

  if (a2 == 1)
  {
    v9 = kCTSettingTypeCallForwarding;
    v10 = 1;
    do
    {
      if ((v10 & a4) != 0)
      {
        v14[0] = 0;
        v14[1] = 0;
        v15 = 0;
        v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v14, v11, 47, v9, v10);
        sub_10159FADC(v14, a3);
        sub_10159CEF0(v14, v12);
        sub_1000296E0(&v15);
      }

      v10 = (2 * v10);
    }

    while (v10 && v10 < 129);
  }

  return (***(a1 + 80))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Save Error", v16, 2u);
  }

  if (a2 == 1)
  {
    v11 = kCTSettingTypeCallForwarding;
    v12 = 1;
    do
    {
      if ((v12 & a4) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v16, v13, 49, v11, v12, a5);
        sub_10159FADC(v16, a3);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 8))(*(a1 + 80), a2, a3, a4, a5);
}

void sub_10159C5E8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, CSIPhoneNumber *a7)
{
  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Value Available Notification", buf, 2u);
  }

  if (a2 == 1)
  {
    v12 = kCTSettingTypeCallForwarding;
    v13 = kCTSettingEnabled;
    v14 = &kCFBooleanTrue;
    v15 = kCTSettingCallForwardingNumber;
    v27 = kCTSettingCallForwardingNoReplyTime;
    if (!a5)
    {
      v14 = &kCFBooleanFalse;
    }

    v16 = *v14;
    v17 = 1;
    do
    {
      if ((v17 & a4) != 0)
      {
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        v19 = sub_10159F9C0(v44, v18, 46, v12, v17);
        sub_10159FADC(v19, a3);
        sub_10159CDA0(v44, v13, v16);
        CSIPhoneNumber::getFullNumber(__p, a7);
        if (SHIBYTE(v42) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v48 = v42;
        }

        v46 = 0;
        if (SHIBYTE(v48) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          v50 = v48;
        }

        v51 = 0;
        if (ctu::cf::convert_copy())
        {
          v20 = v46;
          v46 = v51;
          v52[0] = v20;
          sub_100005978(v52);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(*buf);
        }

        v21 = v46;
        v43 = v46;
        v46 = 0;
        sub_100005978(&v46);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__dst);
        }

        v52[0] = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        sub_10159DBDC(v44, v15, v52);
        sub_10000A1EC(v52);
        sub_100005978(&v43);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (a3 == 2)
        {
          *&__dst = 0;
          *buf = a6;
          v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
          if (v23)
          {
            *&__dst = v23;
            *buf = 0;
            sub_100029A48(buf);
            v24 = __dst;
          }

          else
          {
            v24 = 0;
          }

          v51 = v24;
          *&__dst = 0;
          sub_100029A48(&__dst);
          *buf = v24;
          if (v24)
          {
            CFRetain(v24);
          }

          sub_10159DBDC(v44, v27, buf);
          sub_10000A1EC(buf);
          sub_100029A48(&v51);
        }

        sub_10159CEF0(v44, v22);
        sub_1000296E0(&v45);
      }

      v17 = (2 * v17);
    }

    while (v17 && v17 < 129);
  }

  v25 = *(a1 + 80);
  sub_1000AE428(v30, a7);
  (*(*v25 + 16))(v25, a2, a3, a4, a5, a6, v30);
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
}

uint64_t sub_10159CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Value Saved Notification", v16, 2u);
  }

  if (a2 == 1)
  {
    v11 = kCTSettingTypeCallForwarding;
    v12 = 1;
    do
    {
      if ((v12 & a4) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v16, v13, 48, v11, v12, a5);
        sub_10159FADC(v16, a3);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 24))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159CC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending Unconditional Call Forwarding Notification", v10, 2u);
  }

  if (a2 == 1)
  {
    v10[1] = 13;
    v10[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v11 = 0;
    v7 = &kCFBooleanFalse;
    if (a3)
    {
      v7 = &kCFBooleanTrue;
    }

    sub_10159CDA0(v10, kCTIndicatorsUnconditionalCallForwarding, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 32))(*(a1 + 80), a2, a3);
}

void sub_10159CDA0(NSObject ***a1, const void *a2, const void *a3)
{
  if (a3)
  {
    sub_10159F758(theDict, a1);
    CFDictionarySetValue(theDict[0], a2, a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a NULL object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10159CEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10159CEF0(uint64_t a1, const void *a2)
{
  ctu::cf_to_xpc(&object, *(a1 + 16), a2);
  v3 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  xpc_release(object);
  v4 = *(a1 + 8);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc_null_create();
  sub_10002A37C(v4, &object, &v5);
  xpc_release(v5);
  xpc_release(object);
  xpc_release(v3);
}

void sub_10159CFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10159CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = kCTSettingTypeCallWaiting;
    v7 = 1;
    do
    {
      if ((v7 & a3) != 0)
      {
        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v11, v8, 47, v6, v7);
        sub_10159CEF0(v11, v9);
        sub_1000296E0(&v12);
      }

      v7 = (2 * v7);
    }

    while (v7 && v7 < 129);
  }

  return (*(**(a1 + 80) + 40))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v13, v10, 49, v8, v9, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = kCTSettingEnabled;
    if (a4)
    {
      v10 = &kCFBooleanTrue;
    }

    else
    {
      v10 = &kCFBooleanFalse;
    }

    v11 = *v10;
    v12 = 1;
    do
    {
      if ((v12 & a3) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v16, v13, 46, v8, v12);
        sub_10159CDA0(v16, v9, v11);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 56))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v13, v10, 48, v8, v9, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 64))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallBarring;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v13, v10, 47, v8, v9);
        sub_10159FCBC(v13, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 72))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = 1;
    do
    {
      if ((v11 & a3) != 0)
      {
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v15, v12, 49, v10, v11, a4);
        sub_10159FCBC(v15, a5);
        sub_10159CEF0(v15, v13);
        sub_1000296E0(&v16);
      }

      v11 = (2 * v11);
    }

    while (v11 && v11 < 129);
  }

  return (*(**(a1 + 80) + 80))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = kCTSettingEnabled;
    if (a5)
    {
      v12 = &kCFBooleanTrue;
    }

    else
    {
      v12 = &kCFBooleanFalse;
    }

    v13 = *v12;
    v14 = 1;
    do
    {
      if ((v14 & a3) != 0)
      {
        v18[0] = 0;
        v18[1] = 0;
        v19 = 0;
        v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v18, v15, 46, v10, v14);
        sub_10159FCBC(v18, a4);
        sub_10159CDA0(v18, v11, v13);
        sub_10159CEF0(v18, v16);
        sub_1000296E0(&v19);
      }

      v14 = (2 * v14);
    }

    while (v14 && v14 < 129);
  }

  return (*(**(a1 + 80) + 88))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = 1;
    do
    {
      if ((v11 & a3) != 0)
      {
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v15, v12, 48, v10, v11, a4);
        sub_10159FCBC(v15, a5);
        sub_10159CEF0(v15, v13);
        sub_1000296E0(&v16);
      }

      v11 = (2 * v11);
    }

    while (v11 && v11 < 129);
  }

  return (*(**(a1 + 80) + 96))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v13, v6, 48, kCTSettingTypeSupplementaryServicePassword);
    v15 = 0;
    valuePtr = a3;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    v11 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    sub_10159DBDC(v13, kCTSettingSupplementaryServiceType, &v11);
    sub_10000A1EC(&v11);
    sub_10159CEF0(v13, v9);
    sub_100029A48(&v12);
    sub_1000296E0(&v14);
  }

  return (*(**(a1 + 80) + 104))(*(a1 + 80), a2, a3);
}

void sub_10159DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100029A48(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10159DB80(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  sub_10159CDA0(a1, kCTSettingType, a4);
  return a1;
}

void sub_10159DBDC(NSObject ***a1, const void *a2, const void **a3)
{
  if (*a3)
  {
    sub_10159F758(theDict, a1);
    CFDictionarySetValue(theDict[0], a2, *a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a invalid object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10159DCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10159DD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v13, v6, 49, kCTSettingTypeSupplementaryServicePassword);
    v15 = 0;
    valuePtr = a3;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    v11 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    sub_10159DBDC(v13, kCTSettingSupplementaryServiceType, &v11);
    sub_10000A1EC(&v11);
    sub_10159CEF0(v13, v9);
    sub_100029A48(&v12);
    sub_1000296E0(&v14);
  }

  return (*(**(a1 + 80) + 112))(*(a1 + 80), a2, a3);
}

void sub_10159DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_100029A48(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10159DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v14, v8, 46, kCTSettingTypeCallingLineIdRestriction);
    v9 = &kCTSettingCallingLineIdRestrictionDisabled;
    v10 = &kCTSettingCallingLineIdRestrictionEnabled;
    if (a3 != 1)
    {
      v10 = &kCTSettingCallingLineIdRestrictionUnknown;
    }

    if (a3)
    {
      v9 = v10;
    }

    sub_10159CDA0(v14, kCTSettingCallingLineIdRestriction, *v9);
    if (a4)
    {
      v12 = &kCTSettingCallingLineIdRestrictionModifiable;
      if (a4 != 1)
      {
        v12 = &kCTSettingCallingLineIdRestrictionNotModifiable;
      }

      sub_10159CDA0(v14, kCTSettingCallingLineIdRestrictionModification, *v12);
    }

    sub_10159CEF0(v14, v11);
    sub_1000296E0(&v15);
  }

  return (*(**(a1 + 80) + 120))(*(a1 + 80), a2, a3, a4);
}

void sub_10159E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10159E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 47, kCTSettingTypeCallingLineIdRestriction);
    if (a3)
    {
      v8 = &kCTSettingCallingLineIdRestrictionModifiable;
      if (a3 != 1)
      {
        v8 = &kCTSettingCallingLineIdRestrictionNotModifiable;
      }

      sub_10159CDA0(v10, kCTSettingCallingLineIdRestrictionModification, *v8);
    }

    sub_10159CEF0(v10, v7);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 128))(*(a1 + 80), a2, a3);
}

void sub_10159E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10159E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159E244(v9, v6, 49, kCTSettingTypeCallingLineIdRestriction, a3);
    sub_10159CEF0(v9, v7);
    sub_1000296E0(&v10);
  }

  return (*(**(a1 + 80) + 136))(*(a1 + 80), a2, a3);
}

NSObject ***sub_10159E244(NSObject ***a1, NSObject **a2, int a3, const void *a4, unsigned int a5)
{
  sub_10159DB80(a1, a2, a3, a4);
  v8 = *a2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = sub_100FE7CB4(a5);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding MMI Procedure %s", &v11, 0xCu);
  }

  v9 = sub_100FE7CD8(a5);
  sub_10159CDA0(a1, kCTSettingMMIProcedure, v9);
  return a1;
}

uint64_t sub_10159E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159E244(v9, v6, 48, kCTSettingTypeCallingLineIdRestriction, a3);
    sub_10159CEF0(v9, v7);
    sub_1000296E0(&v10);
  }

  return (*(**(a1 + 80) + 144))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E41C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 50, kCTSettingTypeCallingLineIdRestriction);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 152))(*(a1 + 80), a2);
}

uint64_t sub_10159E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v11, v6, 46, kCTSettingTypeConnectedLineIdRestriction);
    v7 = &kCTSettingConnectedLineIdRestrictionNotAvailable;
    v8 = &kCTSettingConnectedLineIdRestrictionAvailable;
    if (a3 != 1)
    {
      v8 = &kCTSettingConnectedLineIdRestrictionUnknown;
    }

    if (a3)
    {
      v7 = v8;
    }

    sub_10159CDA0(v11, kCTSettingConnectedLineIdRestriction, *v7);
    sub_10159CEF0(v11, v9);
    sub_1000296E0(&v12);
  }

  return (*(**(a1 + 80) + 160))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = &kCTSettingTypeConnectedLinePresentation;
    if (a3)
    {
      v7 = &kCTSettingTypeCallingLinePresentation;
    }

    sub_10159DB80(v10, v6, 47, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 168))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E71C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 47, kCTSettingTypeConnectedLineIdRestriction);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 176))(*(a1 + 80), a2);
}

uint64_t sub_10159E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 46, kCTSettingTypeConnectedLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingConnectedLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BA0 + a3);
    }

    sub_10159CDA0(v10, kCTSettingConnectedLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 184))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 46, kCTSettingTypeCallingLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingCallingLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BB8 + a3);
    }

    sub_10159CDA0(v10, kCTSettingCallingLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 192))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EA48(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 49, kCTSettingTypeCallingLinePresentation);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 208))(*(a1 + 80), a2);
}

uint64_t sub_10159EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 48, kCTSettingTypeCallingLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingCallingLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BB8 + a3);
    }

    sub_10159CDA0(v10, kCTSettingCallingLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 200))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EC4C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 47, kCTSettingTypeCallingNamePresentation);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 216))(*(a1 + 80), a2);
}

uint64_t sub_10159ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v11, v6, 46, kCTSettingTypeCallingNamePresentation);
    if (a3 == 2)
    {
      v8 = &kCTSettingCallingNamePresentationUnknown;
    }

    else if (a3 == 1)
    {
      v8 = &kCTSettingCallingNamePresentationEnabled;
    }

    else
    {
      v7 = 0;
      if (a3)
      {
LABEL_9:
        sub_10159CDA0(v11, kCTSettingCallingNamePresentation, v7);
        sub_10159CEF0(v11, v9);
        sub_1000296E0(&v12);
        return (*(**(a1 + 80) + 224))(*(a1 + 80), a2, a3);
      }

      v8 = &kCTSettingCallingNamePresentationDisabled;
    }

    v7 = *v8;
    goto LABEL_9;
  }

  return (*(**(a1 + 80) + 224))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EE68(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 30;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 240))(*(a1 + 80), a2);
}

uint64_t sub_10159EF30(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 31;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 248))(*(a1 + 80), a2);
}

uint64_t sub_10159EFF8(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 32;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 256))(*(a1 + 80), a2);
}

uint64_t sub_10159F0C8(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 33;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 264))(*(a1 + 80), a2);
}

uint64_t sub_10159F198(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberAvailable", v7, 2u);
  }

  if (a2 == 1)
  {
    v7[1] = 110;
    v7[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v8 = 0;
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 272))(*(a1 + 80), a2);
}

uint64_t sub_10159F2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberRegistrationState", v10, 2u);
  }

  if (a2 == 1)
  {
    v10[1] = 109;
    v10[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v11 = 0;
    v7 = &kCFBooleanFalse;
    if (a3)
    {
      v7 = &kCFBooleanTrue;
    }

    sub_10159CDA0(v10, kCTPhoneNumberRegistrationStateRegisteredKey, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 96) + 32))(*(a1 + 96), a2, a3);
}

uint64_t sub_10159F438(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberChanged", v7, 2u);
  }

  if (a2 == 1)
  {
    v7[1] = 76;
    v7[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v8 = 0;
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 280))(*(a1 + 80), a2);
}

uint64_t sub_10159F570(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 99;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 232))(*(a1 + 80), a2);
}

void sub_10159F73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10159F758(const void **a1, uint64_t a2)
{
  v3 = (a2 + 16);
  if (!*(a2 + 16))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = *v3;
    *v3 = Mutable;
    v7 = v5;
    sub_1000296E0(&v7);
  }

  return sub_100029714(a1, v3);
}

void sub_10159F89C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10159F970);
  __cxa_rethrow();
}

void sub_10159F8DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10159F930(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10159F970(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject ***sub_10159F9C0(NSObject ***a1, NSObject **a2, int a3, const void *a4, std::string *a5)
{
  sub_10159DB80(a1, a2, a3, a4);
  v8 = *a2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100FE7D50(a5, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v14 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding call class %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = sub_100FE7E6C(a5);
  sub_10159CDA0(a1, kCTSettingCallClass, v10);
  return a1;
}

void sub_10159FADC(NSObject ***a1, unsigned int a2)
{
  v4 = **a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = sub_100FE7EFC(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding Call Forwarding Reason %s", &v6, 0xCu);
  }

  if (a2 - 1 > 4)
  {
    v5 = &kCTSettingCallForwardingReasonUnconditional;
  }

  else
  {
    v5 = *(&off_101F50BD0 + a2 - 1);
  }

  sub_10159CDA0(a1, kCTSettingCallForwardingReason, *v5);
}

NSObject ***sub_10159FBCC(NSObject ***a1, NSObject **a2, int a3, const void *a4, std::string *a5, unsigned int a6)
{
  sub_10159F9C0(a1, a2, a3, a4, a5);
  v9 = *a2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = sub_100FE7CB4(a6);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Adding MMI Procedure %s", &v12, 0xCu);
  }

  v10 = sub_100FE7CD8(a6);
  sub_10159CDA0(a1, kCTSettingMMIProcedure, v10);
  return a1;
}

void sub_10159FCBC(NSObject ***a1, unsigned int a2)
{
  v4 = **a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = sub_100FE7F20(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding Call Barring Type %s", &v7, 0xCu);
  }

  v5 = kCTSettingCallBarringFacility;
  v6 = sub_100FE7F44(a2);
  sub_10159CDA0(a1, v5, v6);
}

void sub_10159FD94(uint64_t a1, NSObject **a2, NSObject **a3)
{
  if (objc_opt_class())
  {
    if (!*a2)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v7 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
        v8 = *a2;
        *a2 = v7;
        if (v8)
        {
          dispatch_release(v8);
        }
      }

      else
      {
        *a2 = 0;
      }
    }

    operator new();
  }

  v5 = *a3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No SystemHealthManager!", v9, 2u);
  }
}

void sub_10159FED0(uint64_t *a1)
{
  v2 = objc_opt_new();
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10159FFB8;
  v7 = &unk_101F50BF8;
  v3 = *a1;
  v8 = a1[1];
  [v2 postComponentStatusEventFor:6 status:_NSConcreteStackBlock withReply:{3221225472, sub_10159FFB8, &unk_101F50BF8, v8, v3}];

  operator delete();
}

void sub_10159FFB8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *v6;
    v8 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = *(a1 + 40);
        v10 = "Fail";
        v16 = 134218498;
        if (a2)
        {
          v10 = "Sucess";
        }

        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2112;
        v21 = v5;
        v11 = "#I SystemHealth post component status[%lld]: %s Error: %@";
        v12 = v7;
        v13 = 32;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
      }
    }

    else if (v8)
    {
      v14 = "Fail";
      v15 = *(a1 + 40);
      if (a2)
      {
        v14 = "Sucess";
      }

      v16 = 134218242;
      v17 = v15;
      v18 = 2080;
      v19 = v14;
      v11 = "#I SystemHealth post component status[%lld]: %s";
      v12 = v7;
      v13 = 22;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1015A0360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1015A0378(void *a1)
{
  v2 = [WeaLocationModule alloc];
  v3 = a1[6];
  v9 = a1[5];
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[7];
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = [(WeaLocationModule *)v2 initWithDelegate:&v9 withQueue:&object];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1015A0414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1015A0438(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_1015A0468(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1015A0978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a20;
  sub_1000087B4(&a23);
  _Unwind_Resume(a1);
}

void sub_1015A1BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_100004A34(v10);

  _Unwind_Resume(a1);
}

void sub_1015A1D74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015A1DD0()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_10020A86C, &qword_101FCADB0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1015A1E2C(uint64_t a1)
{
  *a1 = off_101F50CC0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
    notify_cancel(*(a1 + 56));
    *(a1 + 56) = -1;
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A1EA4(uint64_t a1)
{
  sub_1015A1E2C(a1);

  operator delete();
}

uint64_t sub_1015A1EDC(uint64_t a1)
{
  *a1 = off_101F50CE0;
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
  }

  v6 = (a1 + 232);
  sub_1000087B4(&v6);
  sub_1008A1148(a1 + 200);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_1015A4FC8(a1 + 96);
  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A1FA8(uint64_t a1)
{
  sub_1015A1EDC(a1);

  operator delete();
}

void *sub_1015A1FE0(void *a1)
{
  *a1 = off_101F50D00;
  sub_1015A2030(a1);
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1015A2030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    v3 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1015A5048;
    v9[3] = &unk_101E26008;
    v9[4] = v3;
    v4 = v3[2];
    if (!v4 || (v5 = v3[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      sub_100013CC4();
    }

    v7 = v6;
    v8 = v3[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10000500C;
    block[3] = &unk_101F50FF8;
    block[5] = v5;
    v11 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v9;
    dispatch_async(v8, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    sub_100004A34(v7);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1015A2170(void *a1)
{
  sub_1015A1FE0(a1);

  operator delete();
}

void sub_1015A22C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ctu::OsLogContext::~OsLogContext(va);
  if (*(v6 - 24))
  {
    dispatch_release(*(v6 - 24));
  }

  _Unwind_Resume(a1);
}

void sub_1015A269C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A26BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (v2 + 32);
  v4 = *(v2 + 24);
  if (v4 == (v2 + 32))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 getLogContext];
        v7 = *&buf[8];
      }

      else
      {
        v7 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v8 = *v8;
        }

        v9 = *(v4 + 14);
        *buf = 136446466;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "connectedServices[%{public}s]: %lu", buf, 0x16u);
      }

      v10 = *(v4 + 14);
      if ((v10 & 0x1000) != 0)
      {
        break;
      }

      v11 = v4[1];
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
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v5 |= (v10 & 0x1000) >> 12;
      v4 = v12;
      if (v12 == v3)
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v5) = 1;
  }

LABEL_20:
  pthread_mutex_lock(&stru_101FB9CA8);
  *(*(a1 + 32) + 8) = v5 & 1;
  pthread_mutex_unlock(&stru_101FB9CA8);
  v14 = *(a1 + 32);
  if (v14)
  {
    [v14 getLogContext];
    v15 = *&buf[8];
  }

  else
  {
    v15 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v5 & 1;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "_tetheringConnected: %d", buf, 8u);
  }
}

void sub_1015A28DC(uint64_t a1, void *a2)
{
  if (a2 && [a2 identifier])
  {
    [a2 identifier];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = 0u;
    v10 = 0;
    v4 = [a2 connectedServices];
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 getLogContext];
      v6 = *&buf[8];
    }

    else
    {
      v6 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v10 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "found[%{public}s]: %lu", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    *buf = __p;
    *(sub_100F15E10(v8 + 24, __p) + 56) = v4;
    (*(*(a1 + 40) + 16))();
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1015A2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A2A9C(uint64_t a1, void *a2)
{
  if (a2 && [a2 identifier])
  {
    [a2 identifier];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = 0u;
    v20 = 0;
    v4 = [a2 connectedServices];
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 getLogContext];
      v6 = *&buf[8];
    }

    else
    {
      v6 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v20 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "lost[%{public}s]: %lu", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = (v8 + 24);
    v10 = v8 + 32;
    v11 = *(v8 + 32);
    if (v11)
    {
      v12 = v8 + 32;
      do
      {
        v13 = sub_1000068BC((v11 + 32), __p);
        if ((v13 & 0x80u) == 0)
        {
          v12 = v11;
        }

        v11 = *(v11 + ((v13 >> 4) & 8));
      }

      while (v11);
      if (v12 != v10 && (sub_1000068BC(__p, (v12 + 32)) & 0x80) == 0)
      {
        v14 = *(v12 + 8);
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
          v16 = v12;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v9 == v12)
        {
          *v9 = v15;
        }

        v18 = v9[1];
        --v9[2];
        sub_100018288(v18, v12);
        if (*(v12 + 55) < 0)
        {
          operator delete(*(v12 + 32));
        }

        operator delete(v12);
      }
    }

    (*(*(a1 + 40) + 16))();
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1015A2CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A2CFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 getLogContext];
    v2 = v4;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v3);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "invalidated", &v3, 2u);
  }
}

void sub_1015A2D80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [v3 getLogContext];
    v4 = *(&v5 + 1);
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
  }

  ctu::OsLogContext::~OsLogContext(&v5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 138543362;
    *(&v5 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "activateWithCompletion error: %{public}@", &v5, 0xCu);
  }
}

void sub_1015A2F18(uint64_t a1)
{
  *a1 = off_101F50D48;
  v7 = (a1 + 136);
  sub_1000B2AF8(&v7);
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1012EED48(a1);
}

void sub_1015A2FFC(uint64_t a1)
{
  sub_1015A2F18(a1);

  operator delete();
}

void sub_1015A303C(uint64_t a1)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 80);
    if ((*(v3 + 48) & 1) == 0)
    {
      handler = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_10007B170;
      v36 = &unk_101E7DAD8;
      v37 = v3;
      if (notify_register_dispatch(kSBSLockStateNotifyKey, (v3 + 56), *(v3 + 24), &handler))
      {
        v4 = *(v3 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N ScreenLockObserver: failed to register for lock state notification", &v26, 2u);
        }

        *(v3 + 56) = -1;
      }

      else
      {
        v5 = *(v3 + 56);
        v26 = 0;
        notify_get_state(v5, &v26);
        byte_101FCADB8 = v26 != 0;
        *(v3 + 48) = 1;
      }
    }

    v6 = *(a1 + 96);
    v7 = objc_autoreleasePoolPush();
    if ((*(v6 + 24) & 1) == 0)
    {
      v8 = *(v6 + 8);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_1015A59EC;
      v29 = &unk_101E26008;
      v30 = v8;
      v9 = v8[2];
      if (!v9 || (v10 = v8[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
      {
        sub_100013CC4();
      }

      v12 = v11;
      v13 = v8[3];
      handler = _NSConcreteStackBlock;
      v34 = 3321888768;
      v35 = sub_10000500C;
      v36 = &unk_101F50FF8;
      v38 = v10;
      v39 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = &v26;
      dispatch_async(v13, &handler);
      if (v39)
      {
        sub_100004A34(v39);
      }

      sub_100004A34(v12);
      *(v6 + 24) = 1;
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 104);
    if ((*(v14 + 41) & 1) == 0)
    {
      v15 = v14[1];
      if (!v15 || (v16 = *v14, (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        sub_100013CC4();
      }

      v18 = v17;
      p_shared_weak_owners = &v17->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v26 = _NSConcreteStackBlock;
      v27 = 3321888768;
      v28 = sub_1015A5B44;
      v29 = &unk_101F51288;
      v30 = v14;
      v31 = v16;
      v32 = v18;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      *(v14 + 41) = 1;
      v14[6] = tcp_connection_fallback_watcher_create();
      v20 = v14[1];
      if (!v20 || (v21 = *v14, (v22 = std::__shared_weak_count::lock(v20)) == 0))
      {
        sub_100013CC4();
      }

      v23 = v22;
      v24 = v14[2];
      handler = _NSConcreteStackBlock;
      v34 = 3321888768;
      v35 = sub_1015A5C84;
      v36 = &unk_101F512C0;
      v38 = v21;
      v39 = v23;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = &v26;
      dispatch_async(v24, &handler);
      if (v39)
      {
        sub_100004A34(v39);
      }

      sub_100004A34(v23);
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      std::__shared_weak_count::__release_weak(v18);
    }

    *(a1 + 128) = 1;
    objc_autoreleasePoolPop(v2);
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1015A3624;
    v29 = &unk_101E26008;
    v30 = a1;
    v40 = 0;
    v41 = 0;
    sub_100004AA0(&v40, (a1 + 8));
    v25 = *(a1 + 24);
    handler = _NSConcreteStackBlock;
    v34 = 3321888768;
    v35 = sub_1015A5CE8;
    v36 = &unk_101F512F8;
    v38 = v40;
    v39 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = &v26;
    dispatch_async(v25, &handler);
    if (v39)
    {
      sub_100004A34(v39);
    }

    if (v41)
    {
      sub_100004A34(v41);
    }
  }
}

void sub_1015A34AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void sub_1015A34D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || (v2 = std::__shared_weak_count::lock(v1)) == 0)
  {
    sub_100013CC4();
  }

  v3 = v2;
  p_shared_weak_owners = &v2->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v2);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  SBSRegisterDisplayIdentifiersChangedBlock();
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_weak(v3);
}

void sub_1015A35A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A35C8(uint64_t result, uint64_t a2)
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

void sub_1015A35E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

id sub_1015A35F4()
{
  v0 = +[BluetoothController sharedInstance];

  return [(BluetoothController *)v0 startWatchingForDevices];
}

void sub_1015A3624(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::createRestModuleOneTimeUseConnection(&v2, *(v1 + 48));
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100118F6C(v1 + 136);
}

void sub_1015A367C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A36A0(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    SBSRegisterDisplayIdentifiersChangedBlock();
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 80);
    if (*(v3 + 48) == 1)
    {
      *(v3 + 48) = 0;
      notify_cancel(*(v3 + 56));
      *(v3 + 56) = -1;
    }

    sub_1015A2030(*(a1 + 96));
    v4 = *(a1 + 104);
    if (*(v4 + 41) == 1)
    {
      *(v4 + 41) = 0;
      if (*(v4 + 48))
      {
        tcp_connection_fallback_watcher_destroy();
      }

      *(v4 + 48) = 0;
    }

    [+[BluetoothController sharedInstance](BluetoothController stopWatchingForDevices];
    *(a1 + 128) = 0;
    objc_autoreleasePoolPop(v2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1015A3694;
    v6[3] = &unk_101E26008;
    v6[4] = a1;
    v9 = 0;
    v10 = 0;
    sub_100004AA0(&v9, (a1 + 8));
    v5 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1015A5CE8;
    block[3] = &unk_101F512F8;
    block[5] = v9;
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v6;
    dispatch_async(v5, block);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1015A383C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (*(v3 + 24) == 1)
  {
    v4 = *(v3 + 8);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v4 + 72);
    if (v5)
    {
      context = objc_autoreleasePoolPush();
      v6 = [v5 currentLayout];
      if (v6)
      {
        v7 = [v6 elements];
        v8 = v7;
        if (v7)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = *v22;
            v18 = a2;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v22 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v21 + 1) + 8 * i);
                if ([v12 bundleIdentifier])
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v20 = 0;
                  memset(buf, 0, sizeof(buf));
                  ctu::cf::assign();
                  *__p = *buf;
                  v20 = *&buf[16];
                  v13 = *(v4 + 40);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    if (v20 >= 0)
                    {
                      v14 = __p;
                    }

                    else
                    {
                      v14 = __p[0];
                    }

                    v15 = [v12 isUIApplicationElement];
                    v16 = [v12 hasKeyboardFocus];
                    *buf = 136315906;
                    *&buf[4] = "displayApps";
                    *&buf[12] = 2080;
                    *&buf[14] = v14;
                    *&buf[22] = 1024;
                    v26 = v15;
                    v27 = 1024;
                    v28 = v16;
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: app %s (UIApplicationElement %d hasKeyboardFocus %d)", buf, 0x22u);
                    a2 = v18;
                  }

                  if ([v12 isUIApplicationElement])
                  {
                    sub_100005308(a2, __p);
                  }

                  if (SHIBYTE(v20) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v9);
          }
        }
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1015A3A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A3AF4(uint64_t a1)
{
  v1 = *(a1 + 104);
  pthread_mutex_lock(&stru_101FB9D28);
  v2 = *(v1 + 40);
  pthread_mutex_unlock(&stru_101FB9D28);
  return v2;
}

BOOL sub_1015A3B34(uint64_t a1)
{
  v1 = *(a1 + 132);
  if (v1 < 0)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"ShowRATIndicator", kCarrier1BundleId, &keyExistsAndHasValidFormat))
    {
      v3 = 1;
    }

    else
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    v1 = !v3;
    *(a1 + 132) = v1;
  }

  return v1 != 0;
}

BOOL sub_1015A3BA4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [+[BluetoothController sharedInstance](BluetoothController tetheringConnected];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_1015A3BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (*(v2 + 24) == 1)
  {
    return sub_100005574(*(v2 + 8), a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A3C18(uint64_t a1)
{
  v1 = *(*(a1 + 96) + 8);
  pthread_mutex_lock(&stru_101FB9CE8);
  v2 = *(v1 + 64);
  pthread_mutex_unlock(&stru_101FB9CE8);
  return v2;
}

uint64_t sub_1015A3C5C(uint64_t a1)
{
  v1 = *(*(a1 + 96) + 8);
  pthread_mutex_lock(&stru_101FB9CE8);
  v2 = *(v1 + 68);
  pthread_mutex_unlock(&stru_101FB9CE8);
  return v2;
}

uint64_t sub_1015A3CA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1015A5CC0;
  v5[3] = &unk_101ED7468;
  v5[4] = &v6;
  v5[5] = v1;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1015A5CD4;
  block[3] = &unk_101E26940;
  block[4] = v1 + 8;
  block[5] = &v10;
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1015A3DA0(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(*(*(a1 + 96) + 8) + 48));
  v4 = ServiceMap;
  v5 = "23ApplicationStateMonitor";
  if (("23ApplicationStateMonitor" & 0x8000000000000000) != 0)
  {
    v6 = ("23ApplicationStateMonitor" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (v9)
  {
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v12 = 1;
  if (!v10)
  {
LABEL_7:
    if (v12)
    {
      return (v10 != 0) & a2;
    }

    goto LABEL_12;
  }

LABEL_11:
  LOBYTE(a2) = sub_1006DFAC8(v10, a2);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v11);
  }

  return (v10 != 0) & a2;
}

void sub_1015A3EAC(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A3EC8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  block = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &block);
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
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_7:
    v12 = 8;
    if (v11)
    {
      return v12;
    }

    goto LABEL_15;
  }

LABEL_11:
  v15 = (*(*v10 + 808))(v10);
  v16 = a1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1015A5D24;
  v17[3] = &unk_101ED7590;
  v17[4] = a1 + 8;
  v17[5] = &v15;
  v18 = v17;
  v13 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v25 = 0;
    block = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1015A5DB0;
    v22 = &unk_101E26940;
    v23 = &v25;
    v24 = &v18;
    dispatch_async_and_wait(v13, &block);
  }

  else
  {
    v25 = 0;
    block = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1015A5D74;
    v22 = &unk_101E26940;
    v23 = &v25;
    v24 = &v18;
    dispatch_sync(v13, &block);
  }

  v12 = v25;
  if ((v11 & 1) == 0)
  {
LABEL_15:
    sub_100004A34(v9);
  }

  return v12;
}

void sub_1015A40F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A4114(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v11 = 0;
    if (v10)
    {
      return v11;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = (*(*v9 + 64))(v9);
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v8);
  }

  return v11;
}

void sub_1015A422C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A427C(uint64_t a1, char a2)
{
  v3 = *(a1 + 120);
  pthread_mutex_lock(&stru_101FB9D68);
  *(v3 + 8) = a2;

  return pthread_mutex_unlock(&stru_101FB9D68);
}

uint64_t sub_1015A42D0(uint64_t a1)
{
  v1 = *(a1 + 120);
  pthread_mutex_lock(&stru_101FB9D68);
  v2 = *(v1 + 8);
  pthread_mutex_unlock(&stru_101FB9D68);
  return v2;
}

void sub_1015A4310(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1015A4EF4()
{
  __cxa_end_catch();
  v1 = v0[9];
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_1012EED48(v0);
  operator delete();
}

void sub_1015A4F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544((v5 + 8));
  ctu::OsLogContext::~OsLogContext(va1);
  operator delete();
}

void sub_1015A4F84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1015A4F5CLL);
}

uint64_t sub_1015A4FC8(uint64_t a1)
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

void sub_1015A5048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];

    *(v1 + 72) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1015A50A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A50F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5134(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1015A5164(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A51B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A51F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015A5224(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::createRestModuleOneTimeUseConnection(&v6, *(v1 + 48));
  ctu::RestModule::connect();
  if (v7)
  {
    sub_100004A34(v7);
  }

  v2 = (v1 + 96);
  v9 = off_101F510F8;
  v10 = v1 + 80;
  v11 = &v9;
  if (&v9 != (v1 + 96))
  {
    v3 = *(v1 + 120);
    if (v3 == v2)
    {
      v8[1] = v1 + 80;
      v8[2] = 0;
      v8[0] = off_101F510F8;
      v11 = 0;
      ((*v3)[3])(v3, &v9);
      (*(**(v1 + 120) + 32))(*(v1 + 120));
      *(v1 + 120) = 0;
      v11 = &v9;
      (*(v8[0] + 24))(v8, v1 + 96);
      (*(v8[0] + 32))(v8);
    }

    else
    {
      *(v1 + 96) = off_101F510F8;
      *(v1 + 104) = v1 + 80;
      v11 = v3;
    }

    *(v1 + 120) = v2;
  }

  sub_1015A4FC8(&v9);
  v4 = *(v1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4, v1 + 128);
  }

  v9 = off_101F51188;
  v10 = v1 + 80;
  v11 = &v9;
  sub_1015A5690(&v9, (v1 + 200));
  sub_1008A1148(&v9);
  result = *(v1 + 224);
  if (result)
  {
    return (*(*result + 48))(result, v1 + 232);
  }

  return result;
}

void sub_1015A5490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A5530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F510F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015A555C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5618(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F51188;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015A5644(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1015A5690(void *result, void *a2)
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

void sub_1015A58F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015A5900(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A5954(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1015A5994(void *result)
{
  if (result)
  {
    v1 = result;
    ctu::OsLogLogger::~OsLogLogger((result + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_1015A59EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];

    *(v1 + 72) = 0;
  }

  v4 = *(v1 + 16);
  if (!v4 || (v5 = *(v1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    sub_100013CC4();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100004AE4;
  v9[3] = &unk_101F51258;
  v9[4] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(v1 + 72) = [[FBSDisplayLayoutMonitor alloc] initWithDisplayType:0 qualityOfService:21 handler:v9];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v7);
  objc_autoreleasePoolPop(v2);
}

void sub_1015A5AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A5B18(uint64_t result, uint64_t a2)
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

void sub_1015A5B34(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015A5B44(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && *(v3 + 41) == 1)
      {
        v6 = tcp_fallback_watcher_fallback_inuse();
        v7 = *(v3 + 32);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8[0] = 67109120;
          v8[1] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I cellular fallback is %d", v8, 8u);
        }

        pthread_mutex_lock(&stru_101FB9D28);
        *(v3 + 40) = v6;
        pthread_mutex_unlock(&stru_101FB9D28);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1015A5C58(uint64_t result, uint64_t a2)
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

void sub_1015A5C74(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1015A5C94(uint64_t result, uint64_t a2)
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

void sub_1015A5CB0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1015A5CF8(uint64_t result, uint64_t a2)
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

void sub_1015A5D14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1015A5D24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1);
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v3 != v4)
  {
    v5 = *v1;
    do
    {
      if (*v3 == v5)
      {
        break;
      }

      v3 += 42;
    }

    while (v3 != v4);
  }

  return subscriber::toSimStatus();
}

uint64_t sub_1015A5D74(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015A5DB0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1015A5DF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A5E44(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5E84(uint64_t result)
{
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

void sub_1015A5EB0(ServiceManager::Service *this)
{
  *this = off_101F51398;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015A5F0C(ServiceManager::Service *this)
{
  *this = off_101F51398;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1015A5F8C@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1015A5FCC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_1012EEE00(v2, &group);
}

void sub_1015A6034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A6084(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v26, kCtLoggingSystemName, "lazuli.cap.ctr");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v24, &v26);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v24);
  ctu::OsLogLogger::~OsLogLogger(v24);
  ctu::OsLogContext::~OsLogContext(&v26);
  *a1 = &off_101E6C190;
  v25[0] = off_101E2B528;
  v25[1] = sub_1015A65C0;
  v25[3] = v25;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v25);
  *a1 = off_101F51418;
  *(a1 + 56) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "lazuli.cap.ctr");
  v21 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 88) = 0u;
  DefaultLazuliCapabilitiesInformationMap = GetDefaultLazuliCapabilitiesInformationMap();
  sub_100F6AEDC((a1 + 136), DefaultLazuliCapabilitiesInformationMap);
  DefaultLazuliProvisioningInitializerMap = GetDefaultLazuliProvisioningInitializerMap();
  sub_10084B8C0((a1 + 160), DefaultLazuliProvisioningInitializerMap);
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  ServiceMap = Registry::getServiceMap(*a3);
  v12 = ServiceMap;
  v13 = "17TMRouterInterface";
  if (("17TMRouterInterface" & 0x8000000000000000) != 0)
  {
    v14 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v26.var0 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v26);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  std::mutex::unlock(v12);
  *(a1 + 208) = v19;
  *(a1 + 216) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v18);
  }

  *(a1 + 224) = 0;
  return a1;
}

const char *sub_1015A65C0(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "lazuli.cap.ctr.?";
  }

  else
  {
    return off_101F517C0[a1 - 1];
  }
}

uint64_t sub_1015A65E8(uint64_t a1)
{
  *a1 = off_101F51418;
  v2 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100009970(a1 + 184, *(a1 + 192));
  sub_100844464(a1 + 160, *(a1 + 168));
  sub_10006DCAC(a1 + 136, *(a1 + 144));
  sub_100009970(a1 + 112, *(a1 + 120));
  v8 = (a1 + 88);
  sub_1000212F4(&v8);
  v4 = *(a1 + 80);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  LazuliLifetimeInterface::~LazuliLifetimeInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A6710(uint64_t a1)
{
  sub_1015A65E8(a1);

  operator delete();
}

void sub_1015A6748(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Powering on", buf, 2u);
  }

  if ((ctu::RestModule::isConnected((a1 + 72)) & 1) == 0)
  {
    Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
    ctu::RestModule::connect();
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  sub_10000501C(__p, "/cc/props/lazuli_client_state");
  *buf = off_101F51680;
  v8 = a1 + 112;
  v9 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/lazuli_capabilities_information");
  operator new();
}

void sub_1015A690C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A6958(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 152))
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 136);
    while (*(v5 + 8) == *(v6 + 8) && sub_1004D0F9C((v5 + 5), (v6 + 5)))
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

  v12 = *(a1 + 136);
  if (v12 != (a1 + 144))
  {
    v13 = a2 + 1;
    while (1)
    {
      v14 = *v13;
      v15 = *(v12 + 8);
      if (!*v13)
      {
        goto LABEL_29;
      }

      v16 = a2 + 1;
      do
      {
        if (*(v14 + 32) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 32) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 8))
      {
        goto LABEL_29;
      }

      if (!sub_1004D0F9C((v16 + 5), (v12 + 5)))
      {
        break;
      }

LABEL_38:
      v22 = v12[1];
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
          v23 = v12[2];
          v9 = *v23 == v12;
          v12 = v23;
        }

        while (!v9);
      }

      v12 = v23;
      if (v23 == (a1 + 144))
      {
        return;
      }
    }

    v15 = *(v12 + 8);
LABEL_29:
    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), v15);
    v18 = *(a1 + 168);
    if (v18)
    {
      v19 = *(v12 + 8);
      v20 = a1 + 168;
      do
      {
        if (*(v18 + 32) >= v19)
        {
          v20 = v18;
        }

        v18 = *(v18 + 8 * (*(v18 + 32) < v19));
      }

      while (v18);
      if (v20 != a1 + 168 && v19 >= *(v20 + 32))
      {
        v28 = 0;
        v29 = 0;
        v24 = *(a1 + 64);
        v26 = *(a1 + 56);
        v27 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
        }

        sub_10000501C(__p, "Capabilities");
        sub_100B2FB1C();
      }
    }

    v21 = *v17;
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Missing provisioning initializer", __p, 2u);
    }

    goto LABEL_38;
  }
}

void sub_1015A6DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A6E5C(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Tearing down", v2, 2u);
  }
}

uint64_t sub_1015A6EE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Tear down complete", v4, 2u);
  }

  return ctu::RestModule::disconnect((a1 + 72));
}

void sub_1015A6F50(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dump: Capabilities search info", buf, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ======", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ======", v4, 2u);
  }
}

void sub_1015A702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DefaultLazuliDiscoverCapabilitiesInformation = GetDefaultLazuliDiscoverCapabilitiesInformation();
  v7 = *(DefaultLazuliDiscoverCapabilitiesInformation + 1);
  v15 = *DefaultLazuliDiscoverCapabilitiesInformation;
  v16 = v7;
  v17 = *(DefaultLazuliDiscoverCapabilitiesInformation + 4);
  v8 = *(a2 + 144);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = a2 + 144;
  do
  {
    if (*(v8 + 32) >= a3)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a3));
  }

  while (v8);
  if (v9 != a2 + 144 && *(v9 + 32) <= a3)
  {
    v13 = *(v9 + 56);
    *a1 = *(v9 + 40);
    *(a1 + 16) = v13;
    v12 = *(v9 + 72);
  }

  else
  {
LABEL_8:
    v10 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No discovery information found", v14, 2u);
    }

    v11 = v16;
    *a1 = v15;
    *(a1 + 16) = v11;
    v12 = v17;
  }

  *(a1 + 32) = v12;
}

void sub_1015A7140(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v37 = 0uLL;
  v38 = 0;
  sub_1009CC9A8(a4, &v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(__dst, v37, *(&v37 + 1));
  }

  else
  {
    *__dst = v37;
    v25 = v38;
  }

  v35 = 0;
  v36 = 0;
  v30[0] = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  sub_1015A7460(&v35, a2, a3);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (v31 == 1)
  {
    v12[0] = v30;
    sub_1000087B4(v12);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v7 = v35;
  if (!v35)
  {
    *a1 = 0;
    *(a1 + 112) = 0;
    goto LABEL_38;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(v12, v37, *(&v37 + 1));
  }

  else
  {
    *v12 = v37;
    v13 = v38;
  }

  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v17 = 0;
  sub_100DC1EBC(v7, v12, __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v23[0] = v25;
  *(v23 + 3) = *(&v25 + 3);
  v10 = SHIBYTE(v25);
  __dst[1] = 0;
  v25 = 0;
  __dst[0] = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (v31 == 1)
  {
    v39 = v30;
    sub_1000087B4(&v39);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (v19 == 1)
  {
    v39 = &v18;
    sub_1000087B4(&v39);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_33:
    __dst[0] = v8;
    __dst[1] = v9;
    LODWORD(v25) = v23[0];
    *(&v25 + 3) = *(v23 + 3);
    HIBYTE(v25) = v10;
    goto LABEL_36;
  }

  sub_100005F2C(__dst, v8, v9);
LABEL_36:
  *a1 = *__dst;
  v11 = v25;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 1;
  if (v10 < 0)
  {
    operator delete(v8);
  }

LABEL_38:
  if (v36)
  {
    sub_100004A34(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}

void sub_1015A7400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v25);
  v28 = *(v26 - 104);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1015A7460(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  sub_1015A7768(&v16, a2, a3);
  if (!v16)
  {
    v8 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v9 = "Failed to instantiate chat services";
    v10 = buf;
    goto LABEL_19;
  }

  v15 = 0;
  *buf = 0u;
  v14 = 0u;
  sub_1015A702C(buf, a2, a3);
  v6 = *(a2 + 168);
  if (v6)
  {
    v7 = a2 + 168;
    do
    {
      if (*(v6 + 32) >= a3)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a3));
    }

    while (v6);
    if (v7 != a2 + 168 && *(v7 + 32) <= a3)
    {
      v11 = *(a2 + 16);
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v12);
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  v8 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    v9 = "Missing provisioning initializer";
    v10 = &v18;
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_1015A7700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  std::__shared_weak_count::__release_weak(v19);
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_100004A34(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v24);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1015A7768(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  PersonalityIdFromSlotId();
  v6 = sub_100007A6C(a2 + 112, __p);
  if (a2 + 120 == v6)
  {
    v18 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_30;
    }

    v19 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v19;
    v20 = "IMS client not present for: %s";
LABEL_34:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_15;
  }

  if ((*(v6 + 56) & 1) == 0)
  {
    v18 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v23 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v23;
    v20 = "IMS client not ready for: %s";
    goto LABEL_34;
  }

  ServiceMap = Registry::getServiceMap(*(a2 + 56));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (!v13)
  {
    v15 = 0;
LABEL_17:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_18:
    *buf = 0uLL;
    (*(*v15 + 32))(buf, v15, __p);
    if (*buf)
    {
      *v24 = 0;
      v25 = 0;
      v21 = *(a2 + 64);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      sub_1003453C4(v24);
    }

    v22 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get Lazuli client", v24, 2u);
    }

    *a1 = 0;
    a1[1] = 0;
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    goto LABEL_28;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_9:
  v17 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get SD interface while discovering capabilities", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_28:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_30:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1015A7BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A7DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void *sub_1015A7DE0(uint64_t a1, uint64_t a2, __int128 *a3, _DWORD *a4)
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v8 = *(a1 + 64);
  v54 = *(a1 + 56);
  v55 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100DC26EC(v56, a2, &v54, (a1 + 24), a3);
  if (v55)
  {
    sub_100004A34(v55);
  }

  sub_100DC2C18(v53, v56);
  v10 = *(a1 + 88);
  v9 = *(a1 + 96);
  sub_100DC2C18(buf, v53);
  if (v10 == v9)
  {
LABEL_9:
    v11 = v9;
  }

  else
  {
    v11 = v10;
    while (!sub_100DC2B78(buf, *v11))
    {
      v11 += 2;
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }

    if (v11 != v9)
    {
      for (i = v11 + 2; i != v9; i += 2)
      {
        v25 = *i;
        if (!sub_100DC2B78(buf, *i))
        {
          v26 = i[1];
          *i = 0;
          i[1] = 0;
          v27 = v11[1];
          *v11 = v25;
          v11[1] = v26;
          if (v27)
          {
            sub_100004A34(v27);
          }

          v11 += 2;
        }
      }
    }
  }

  v12 = *(a1 + 96);
  if (v11 != v12)
  {
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        sub_100004A34(v13);
      }

      v12 -= 2;
    }

    *(a1 + 96) = v11;
  }

  sub_1015ADB90(buf);
  v14 = *(a1 + 96) - *(a1 + 88);
  sub_1015ADB90(v53);
  v15 = *(**(a1 + 48) + 16);
  if (v9 - v10 == v14)
  {
    v16 = *v15();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v17;
    v18 = "#I No active model for: [%{private, mask.hash}s]";
  }

  else
  {
    v16 = *v15();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v19;
    v18 = "#I Relinquishing active model for: [%{private, mask.hash}s]";
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
LABEL_29:
  if (*(a1 + 88) == *(a1 + 96))
  {
    v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Discovery timer cleared. No ongoing searches", buf, 2u);
    }

    v21 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  *v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  *__dst = 0u;
  sub_1006FB24C(__dst, a3);
  if (*a4 == 2)
  {
    v72 = 0u;
    v71 = 0u;
    *v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    *v64 = 0u;
    v63 = 0u;
    *v62 = 0u;
    memset(v61, 0, sizeof(v61));
    v60 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1015A8744(a1, a2, a3, buf);
    if (BYTE8(v72) == 1)
    {
      v45 = 0;
      *__p = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *v37 = 0u;
      v38 = 0u;
      *v35 = 0u;
      *v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *v31 = 0u;
      *v32 = 0u;
      *v30 = 0u;
      sub_1006FB24C(v30, buf);
      LODWORD(v37[0]) = v64[0];
      WORD2(v37[0]) = WORD2(v64[0]);
      sub_10006F264(&v37[1], &v64[1]);
      *(&v39 + 1) = *(&v66 + 1);
      sub_1006FB368(&v40, &v67);
      v42 = v69;
      LOBYTE(__p[0]) = v70[0];
      sub_10006F264(&__p[1], &v70[1]);
      LOBYTE(v49) = BYTE5(v37[0]);
      sub_100220FC4(&v49 + 8, &v40);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (LOBYTE(v51[0]) == 1)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *(&v49 + 1)) >> 3);
        }

        else
        {
          v23 = 0;
        }

        *v58 = 134217984;
        *&v58[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete with %zu identities", v58, 0xCu);
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(__p[1]);
      }

      if (BYTE8(v41) == 1)
      {
        *v58 = &v40;
        sub_1000087B4(v58);
      }

      if (v39 == 1 && SHIBYTE(v38) < 0)
      {
        operator delete(v37[1]);
      }

      if (SHIBYTE(v36[1]) < 0)
      {
        operator delete(v35[1]);
      }

      if (LOBYTE(v35[0]) == 1)
      {
        *v58 = &v33 + 8;
        sub_1000087B4(v58);
      }

      if (SHIBYTE(v32[1]) < 0)
      {
        operator delete(v31[1]);
      }

      if (SHIBYTE(v31[0]) < 0)
      {
        operator delete(*v30);
      }
    }

    else
    {
      v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete - no cache found.", v30, 2u);
      }
    }

    *v30 = a2;
    sub_1006FB24C(&v30[8], __dst);
    sub_1015A8918(a1 + 72, v30);
    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(v36[0]);
    }

    if (LOBYTE(v35[1]) == 1)
    {
      *v58 = &v34;
      sub_1000087B4(v58);
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v31[1]) < 0)
    {
      operator delete(*&v30[8]);
    }

    if (BYTE8(v72) == 1)
    {
      if (v72 == 1 && SHIBYTE(v71) < 0)
      {
        operator delete(v70[1]);
      }

      if (BYTE8(v68) == 1)
      {
        *v30 = &v67;
        sub_1000087B4(v30);
      }

      if (v66 == 1 && SHIBYTE(v65) < 0)
      {
        operator delete(v64[1]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[1]);
      }

      if (LOBYTE(v62[0]) == 1)
      {
        *v30 = v61 + 8;
        sub_1000087B4(v30);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[1]);
  }

  if (LOBYTE(v51[0]) == 1)
  {
    *buf = &v49 + 8;
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_1015ADB90(v56);
}

void sub_1015A8650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1006A291C(&a11);
  if (LOBYTE(STACK[0x5D8]) == 1)
  {
    sub_1006A291C(&STACK[0x4E0]);
  }

  sub_10067AA50(&a43);
  sub_1015ADB90(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_1015A8730()
{
  if (STACK[0x328])
  {
    sub_100004A34(STACK[0x328]);
  }

  JUMPOUT(0x1015A8728);
}

void sub_1015A8744(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === read-cached-capabilities: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_1015A7460(buf, a1, a2);
  if (*buf)
  {
    sub_100DCB4B0(*buf, a4);
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Bailing out of read cached capabilities", v11, 2u);
    }

    *a4 = 0;
    a4[248] = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1015A88F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A8918(uint64_t a1, int *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/events/lazuli_chatbot_discovery_complete");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1015A89AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1015A89F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 141558275;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I === discover-capabilities for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  PersonalityIdFromSlotId();
  v8 = sub_100007A6C(a1 + 184, __p);
  if (a1 + 192 == v8)
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    if (*(a3 + 23) >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    *buf = 141558275;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v10;
    v11 = "#I IMS not available while searching for: [%{private, mask.hash}s]";
    goto LABEL_19;
  }

  if (*(v8 + 56) == 1)
  {
    *v16 = 0;
    v17 = 0;
    sub_1015A7C94();
  }

  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    *buf = 141558275;
    v19 = 1752392040;
    v20 = 2081;
    v21 = v12;
    v11 = "#I IMS not registered while searching for: [%{private, mask.hash}s]";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
  }

LABEL_20:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1015A9254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32)
  {
    sub_100004A34(a32);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A9388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(v2 + 96) - *(v2 + 88)) >> 4;
          v9 = 134217984;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Discovery timer expired. Clearing a total of [%zu] models", &v9, 0xCu);
        }

        sub_100021348((v2 + 88));
      }

      sub_100004A34(v5);
    }
  }

  result = *(v2 + 224);
  *(v2 + 224) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_1015A94D8(uint64_t result, uint64_t a2)
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

void sub_1015A94F4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1015A9504(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  if (*a4 == -1)
  {
    return 0x100000004;
  }

  v48 = 0;
  memset(v47, 0, sizeof(v47));
  sub_1015A702C(v47, a1, a2);
  if (!v48)
  {
    v45[0] = 0;
    v45[1] = 0;
    v46 = 0;
    PersonalityIdFromSlotId();
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v15 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
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
        v23 = 0;
        if (!v22)
        {
LABEL_17:
          if ((v23 & 1) == 0)
          {
            sub_100004A34(v21);
          }

          v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a3 + 23);
            v26 = *a3;
            v27 = Lazuli::asString();
            if (v25 >= 0)
            {
              v28 = a3;
            }

            else
            {
              v28 = v26;
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v28;
            *&buf[22] = 2080;
            v50 = v27;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Fetch remote capabilities for: [%{private, mask.hash}s] : %s", buf, 0x20u);
          }

          v29 = *a4;
          if ((*a4 | 2) == 2)
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            *v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            *v60 = 0u;
            *v58 = 0u;
            v56 = 0u;
            memset(v57, 0, sizeof(v57));
            memset(v55, 0, sizeof(v55));
            sub_1015A8744(a1, a2, a3, v55);
            if (BYTE8(v68) == 1)
            {
              v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Capabilities found in cache", buf, 2u);
              }

              v31 = *(a5 + 23);
              if ((v31 & 0x80u) != 0)
              {
                v31 = *(a5 + 8);
              }

              if (v31)
              {
                *buf = a2;
                sub_100B42500(&buf[8], v55);
                if (*(a5 + 23) < 0)
                {
                  sub_100005F2C(v53, *a5, *(a5 + 8));
                }

                else
                {
                  *v53 = *a5;
                  v53[2] = *(a5 + 16);
                }

                sub_1006FB24C(v54, a3);
                v54[14] = a1;
                v42 = *(a1 + 16);
                if (v42 && std::__shared_weak_count::lock(v42))
                {
                  operator new();
                }

                sub_100013CC4();
              }

              if (BYTE8(v68) == 1)
              {
                if (v68 == 1 && SHIBYTE(v67) < 0)
                {
                  operator delete(v66[1]);
                }

                if (BYTE8(v64) == 1)
                {
                  *buf = &v63;
                  sub_1000087B4(buf);
                }

                if (v62 == 1 && SHIBYTE(v61) < 0)
                {
                  operator delete(v60[1]);
                }

                if (SHIBYTE(v59) < 0)
                {
                  operator delete(v58[1]);
                }

                if (LOBYTE(v58[0]) == 1)
                {
                  *buf = v57 + 8;
                  sub_1000087B4(buf);
                }

                if (SHIBYTE(v56) < 0)
                {
                  operator delete(*&v55[24]);
                }

                if (v55[23] < 0)
                {
                  operator delete(*v55);
                }
              }

              goto LABEL_89;
            }

            v29 = *a4;
          }

          if ((v29 - 1) < 2)
          {
            memset(buf, 0, sizeof(buf));
            PersonalityIdFromSlotId();
            v32 = sub_100007A6C(a1 + 184, buf);
            if (a1 + 192 == v32)
            {
              v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              if (*(a3 + 23) >= 0)
              {
                v38 = a3;
              }

              else
              {
                v38 = *a3;
              }

              *v55 = 141558275;
              *&v55[4] = 1752392040;
              *&v55[12] = 2081;
              *&v55[14] = v38;
              v39 = "#I IMS not available while searching for: [%{private, mask.hash}s]";
            }

            else
            {
              if (*(v32 + 56) == 1)
              {
                sub_1015A7C94();
              }

              v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              *v55 = 141558275;
              *&v55[4] = 1752392040;
              *&v55[12] = 2081;
              *&v55[14] = v40;
              v39 = "#I IMS not registered while searching for: [%{private, mask.hash}s]";
            }

            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v39, v55, 0x16u);
LABEL_61:
            v11 = &_mh_execute_header;
            v12 = 1;
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_90;
          }

          if (v29)
          {
            v35 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = Lazuli::asString();
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Unhandled type for discovery: [%{private, mask.hash}s]", buf, 0x16u);
            }

            v11 = &_mh_execute_header;
            v12 = 4;
            goto LABEL_90;
          }

          v33 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Nothing found in cache for destination: [%{private, mask.hash}s]", buf, 0x16u);
          }

          if (*(a5 + 23) < 0)
          {
            v43 = *(a5 + 8);
            if (v43)
            {
              *buf = a2;
              sub_100005F2C(&buf[8], *a5, v43);
              goto LABEL_86;
            }
          }

          else if (*(a5 + 23))
          {
            *buf = a2;
            *&buf[8] = *a5;
            v50 = *(a5 + 16);
LABEL_86:
            sub_1006FB24C(v51, a3);
            v52 = a1;
            v44 = *(a1 + 16);
            if (v44 && std::__shared_weak_count::lock(v44))
            {
              operator new();
            }

            sub_100013CC4();
          }

LABEL_89:
          v11 = 0;
          v12 = 0;
LABEL_90:
          if (SHIBYTE(v46) < 0)
          {
            operator delete(v45[0]);
          }

          return v12 | v11;
        }

LABEL_16:
        (*(*v22 + 320))(v22, v45);
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v41 = Lazuli::asString();
    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Discovery via options not supported: %s", buf, 0xCu);
  }

  v11 = &_mh_execute_header;
  v12 = 7;
  return v12 | v11;
}

void sub_1015AA540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (STACK[0x298])
  {
    sub_100004A34(STACK[0x298]);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015AA754(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(v2 + 96) - *(v2 + 88)) >> 4;
          v9 = 134217984;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Discovery timer expired. Clearing total searches: %zu", &v9, 0xCu);
        }

        sub_100021348((v2 + 88));
      }

      sub_100004A34(v5);
    }
  }

  result = *(v2 + 224);
  *(v2 + 224) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1015AA8A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I === chatbot-found: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_1015A7460(buf, a1, a2);
  if (*buf)
  {
    sub_100DCA3D4(*buf, 1);
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bailing out of chatbot found", v9, 2u);
    }
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1015AAA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015AAA64(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v9;
    *&buf[22] = 2160;
    v18 = 1752392040;
    LOWORD(v19) = 2081;
    *(&v19 + 2) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === chatbot-identity-updated: [%{private, mask.hash}s] ==> [%{private, mask.hash}s] ===", buf, 0x2Au);
  }

  v14 = 0;
  v15 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(buf, *a3, a3[1]);
  }

  else
  {
    *buf = *a3;
    *&buf[16] = a3[2];
  }

  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v19 = 0uLL;
  v18 = 0;
  v20 = 0;
  sub_1015A7460(&v14, a1, a2);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (v22 == 1)
  {
    v16 = &v21;
    sub_1000087B4(&v16);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v11 = v14;
  if (v14)
  {
    sub_100DCAC2C(v14, a4);
    sub_100DCA3D4(v11, 1);
    v12 = *(a1 + 208);
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(buf, *a3, a3[1]);
    }

    else
    {
      *buf = *a3;
      *&buf[16] = a3[2];
    }

    v21 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    __p = 0;
    v19 = 0uLL;
    v18 = 0;
    v20 = 0;
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(&v26, *a4, *(a4 + 8));
    }

    else
    {
      v26 = *a4;
      v27 = *(a4 + 16);
    }

    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v31 = 0;
    v37 = 1;
    (*(*v12 + 392))(v12, a2, buf);
    sub_100B42620(buf);
  }

  else
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Bailing out of chatbot identity updated", buf, 2u);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1015AADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10067AA50(va);
  if (a4)
  {
    sub_100004A34(a4);
  }

  _Unwind_Resume(a1);
}

void sub_1015AAE0C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    *buf = 141558275;
    v18 = 1752392040;
    v19 = 2081;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === get-normalized-destination for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  v15 = 0;
  v16 = 0;
  sub_1015A7460(&v15, a1, a2);
  v10 = v15;
  v11 = *(**(a1 + 48) + 16);
  if (v15)
  {
    v12 = *v11();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      *buf = 141558275;
      v18 = 1752392040;
      v19 = 2081;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Handling destination with updated capabilities: [%{private, mask.hash}s]", buf, 0x16u);
    }

    a3 = (v10 + 184);
  }

  else
  {
    v14 = *v11();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Bailing out of read normalizing destination", buf, 2u);
    }
  }

  sub_1006FB24C(a4, a3);
  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1015AB038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015AB060(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1)
    {
      v3 = (a1 + 56);
      sub_1000087B4(&v3);
    }

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

void sub_1015AB0E4(uint64_t a1, uint64_t a2, void **a3)
{
  v52 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1015A702C(v59, a1, a2);
  if (v60)
  {
    v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = Lazuli::asString();
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Ignoring capabilities response. Discovery not supported: %s", buf, 0xCu);
    }

    return;
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  memset(v55, 0, sizeof(v55));
  v7 = *a3;
  v54 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v54 = xpc_null_create();
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  memset(&__str, 0, sizeof(__str));
  __dst[0] = &v54;
  v51 = ims::lazuli::kRemoteUri;
  __dst[1] = ims::lazuli::kRemoteUri;
  sub_100006354(__dst, &object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  sub_100C17E6C(&__str, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(object);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v92 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1009CC9A8(&__str, __dst);
  sub_100C17E6C(__p, __dst);
  sub_1015A7140(buf, a1, a2, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v96 & 1) == 0)
  {
    LOBYTE(v55[0]) = 0;
    LOBYTE(v58) = 0;
    goto LABEL_157;
  }

  object = 0uLL;
  v73 = 0;
  if (buf[23] < 0)
  {
    sub_100005F2C(&object, *buf, *&buf[8]);
  }

  else
  {
    object = *buf;
    v73 = *&buf[16];
  }

  v9 = HIBYTE(v73);
  if (v73 < 0)
  {
    v9 = *(&object + 1);
  }

  if (!v9)
  {
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__dst, &v54);
      v14 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
      *__p = 141558787;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v51;
      *&__p[22] = 2160;
      *&__p[24] = 1752392040;
      *&__p[32] = 2081;
      *&__p[34] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Unable to extract URI: Invalid key [%{private, mask.hash}s] from [%{private, mask.hash}s]", __p, 0x2Au);
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    goto LABEL_33;
  }

  sub_100C17E6C(__p, &object);
  v10 = sub_100C176C8(__p);
  v11 = v10;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v11)
    {
LABEL_25:
      v12 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = v51;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Anonymous options received: Invalid key [%s]", __p, 0xCu);
      }

LABEL_33:
      LOBYTE(v55[0]) = 0;
      LOBYTE(v58) = 0;
      goto LABEL_146;
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  *__p = &v54;
  *&__p[8] = ims::lazuli::kRemoteIdentityList;
  sub_100006354(__p, __dst);
  v15 = xpc_null_create();
  v16 = __dst[0];
  if (__dst[0] && xpc_get_type(__dst[0]) == &_xpc_type_array)
  {
    xpc_retain(v16);
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (xpc_get_type(v16) != &_xpc_type_array)
  {
    if (v15)
    {
      xpc_retain(v15);
      v17 = v15;
    }

    else
    {
      v17 = xpc_null_create();
    }

    xpc_release(v16);
    v16 = v17;
  }

  xpc_release(v15);
  xpc_release(__dst[0]);
  v70 = 0;
  __src = 0;
  v71 = 0;
  *__p = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *__p = xpc_null_create();
  }

  sub_100008EA4(&v67, __p, 0);
  xpc_release(*__p);
  *__p = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *__p = xpc_null_create();
  }

  if (xpc_get_type(v16) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v16);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v66, __p, count);
  xpc_release(*__p);
  v19 = v68;
  v50 = v8;
  while (v19 != v66[1] || v67 != v66[0])
  {
    v65 = 0;
    *__p = &v67;
    *&__p[8] = v19;
    sub_100008EF0(__p, &v65);
    v89 = 0uLL;
    v90 = 0;
    memset(__p, 0, 24);
    xpc::dyn_cast_or_default();
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v90) < 0)
    {
      if (!*(&v89 + 1))
      {
        goto LABEL_129;
      }

      v64 = 0;
      v63 = 0;
      sub_100005F2C(__p, v89, *(&v89 + 1));
    }

    else
    {
      if (!HIBYTE(v90))
      {
        goto LABEL_130;
      }

      v64 = 0;
      v63 = 0;
      *__p = v89;
      *&__p[16] = v90;
    }

    __p[56] = 0;
    LOBYTE(v87) = 0;
    v88 = 0uLL;
    *(&v87 + 1) = 0;
    memset(&__p[24], 0, 25);
    sub_1015A7460(&v63, a1, a2);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*(&v87 + 1));
    }

    if (v87 == 1)
    {
      __dst[0] = &__p[56];
      sub_1000087B4(__dst);
    }

    if ((__p[47] & 0x80000000) != 0)
    {
      operator delete(*&__p[24]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    __s[1] = 0;
    __s[0] = 0;
    v62 = 0;
    v20 = v63;
    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(__dst, v89, *(&v89 + 1));
    }

    else
    {
      *__dst = v89;
      __dst[2] = v90;
    }

    LOBYTE(v81) = 0;
    v82 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    v80 = 0;
    sub_100DC1EBC(v20, __dst, __p);
    sub_100C17E6C(__s, __p);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*(&v87 + 1));
    }

    if (v87 == 1)
    {
      v74 = &__p[56];
      sub_1000087B4(&v74);
    }

    if ((__p[47] & 0x80000000) != 0)
    {
      operator delete(*&__p[24]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(v83);
    }

    if (v82 == 1)
    {
      v74 = &v81;
      sub_1000087B4(&v74);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v77);
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    if (sub_100C176C8(__s))
    {
      v21 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *__p = 0;
      v22 = v21;
      v23 = "#I Ignoring anonymous identity for alternate reference";
LABEL_109:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, __p, 2u);
      goto LABEL_124;
    }

    sub_1009CC9A8(__s, __p);
    v24 = __p[23];
    if (__p[23] >= 0)
    {
      v25 = __p[23];
    }

    else
    {
      v25 = *&__p[8];
    }

    v26 = HIBYTE(v73);
    if (v73 < 0)
    {
      v26 = *(&object + 1);
    }

    if (v25 == v26)
    {
      if (__p[23] >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      if (v73 >= 0)
      {
        p_object = &object;
      }

      else
      {
        p_object = object;
      }

      v29 = memcmp(v27, p_object, v25) == 0;
      if ((v24 & 0x80000000) == 0)
      {
LABEL_106:
        if (v29)
        {
          goto LABEL_107;
        }

        goto LABEL_112;
      }
    }

    else
    {
      v29 = 0;
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_106;
      }
    }

    operator delete(*__p);
    if (v29)
    {
LABEL_107:
      v30 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *__p = 0;
      v22 = v30;
      v23 = "#I Ignoring own identity for alternate reference";
      goto LABEL_109;
    }

LABEL_112:
    sub_1009CC9A8(__s, __dst);
    v31 = v70;
    if (v70 >= v71)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v70 - __src) >> 3);
      v34 = v33 + 1;
      if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      if (0x5555555555555556 * ((v71 - __src) >> 3) > v34)
      {
        v34 = 0x5555555555555556 * ((v71 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v71 - __src) >> 3) >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v34;
      }

      *&__p[32] = &__src;
      if (v35)
      {
        sub_100005348(&__src, v35);
      }

      v36 = 8 * ((v70 - __src) >> 3);
      v37 = *__dst;
      *(v36 + 16) = __dst[2];
      *v36 = v37;
      memset(__dst, 0, sizeof(__dst));
      v38 = (24 * v33 + 24);
      v39 = (24 * v33 - (v70 - __src));
      memcpy((v36 - (v70 - __src)), __src, v70 - __src);
      v40 = __src;
      v41 = v71;
      __src = v39;
      v70 = v38;
      v71 = 0;
      *&__p[16] = v40;
      *&__p[24] = v41;
      *&__p[8] = v40;
      *__p = v40;
      sub_1000054E0(__p);
      v70 = v38;
      v8 = v50;
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      v32 = *__dst;
      v70[2] = __dst[2];
      *v31 = v32;
      v70 = v31 + 3;
    }

LABEL_124:
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__s[0]);
    }

    if (v64)
    {
      sub_100004A34(v64);
    }

    if (SHIBYTE(v90) < 0)
    {
LABEL_129:
      operator delete(v89);
    }

LABEL_130:
    xpc_release(v65);
    v19 = ++v68;
  }

  xpc_release(v66[0]);
  xpc_release(v67);
  v42 = v70;
  v43 = __src;
  if (v70 != __src)
  {
    v44 = *v8;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(v43, v42, ", ", 2uLL, __p);
      v45 = __p[23] >= 0 ? __p : *__p;
      LODWORD(__dst[0]) = 141558275;
      *(__dst + 4) = 1752392040;
      WORD2(__dst[1]) = 2081;
      *(&__dst[1] + 6) = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Additional identities: [%{private, mask.hash}s]", __dst, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (SHIBYTE(v73) < 0)
  {
    sub_100005F2C(__p, object, *(&object + 1));
  }

  else
  {
    *__p = object;
    *&__p[16] = v73;
  }

  memset(&__p[56], 0, 24);
  memset(&__p[24], 0, 25);
  sub_10004EFD0(&__p[56], __src, v70, 0xAAAAAAAAAAAAAAABLL * ((v70 - __src) >> 3));
  LOBYTE(v87) = 1;
  v55[0] = *__p;
  v46 = *&__p[16];
  memset(__p, 0, 48);
  *(&v55[1] + 8) = *&__p[24];
  *&v55[1] = v46;
  *(&v55[2] + 1) = *&__p[40];
  LOBYTE(v55[3]) = __p[48];
  *(&v55[3] + 8) = *&__p[56];
  *(&v55[4] + 1) = *&__p[72];
  memset(&__p[56], 0, 24);
  LOBYTE(v56) = 1;
  *(&v56 + 1) = 0;
  v57 = 0uLL;
  v88 = 0uLL;
  *(&v87 + 1) = 0;
  LOBYTE(v58) = 1;
  __dst[0] = &__p[56];
  sub_1000087B4(__dst);
  if ((__p[47] & 0x80000000) != 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *__p = &__src;
  sub_1000087B4(__p);
  xpc_release(v16);
LABEL_146:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(object);
  }

  if (v96)
  {
    if (SHIBYTE(v95) < 0)
    {
      operator delete(*(&v94 + 1));
    }

    if (v94 == 1)
    {
      *__p = &v93[8];
      sub_1000087B4(__p);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_157:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  xpc_release(v54);
  v54 = 0;
  if (v58)
  {
    v87 = 0u;
    v88 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_1006FB24C(__p, v55);
    v47 = *v52;
    if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEFAULT))
    {
      v48 = __p;
      if (__p[23] < 0)
      {
        v48 = *__p;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Capabilities response from: [%{private, mask.hash}s]", buf, 0x16u);
    }

    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    sub_1015A7C94();
  }

  v49 = *v52;
  if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Unhandled capabilities response", buf, 2u);
  }

  if (v58 == 1)
  {
    if (SHIBYTE(v57) < 0)
    {
      operator delete(*(&v56 + 1));
    }

    if (v56 == 1)
    {
      *buf = &v55[3] + 8;
      sub_1000087B4(buf);
    }

    if (SHIBYTE(v55[2]) < 0)
    {
      operator delete(*(&v55[1] + 1));
    }

    if (SBYTE7(v55[1]) < 0)
    {
      operator delete(*&v55[0]);
    }
  }
}

void sub_1015ACB58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015AD10C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v47 = 0;
  v48 = 0;
  sub_1015A7768(&v47, a1, a2);
  v7 = v47;
  if (v47)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_1015A702C(v45, a1, a2);
    v8 = *(a1 + 168);
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = a1 + 168;
    do
    {
      if (*(v8 + 32) >= a2)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < a2));
    }

    while (v8);
    if (v9 == a1 + 168 || *(v9 + 32) > a2)
    {
LABEL_9:
      v10 = *v6;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing provisioning initializer", buf, 2u);
      }
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
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *buf = 0u;
    v11 = *(a1 + 64);
    v18[0] = *(a1 + 56);
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 8);
      v14 = std::__shared_weak_count::lock(v12);
      if (v14)
      {
        v17[0] = v13;
        v17[1] = v14;
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16[0] = v7;
        v16[1] = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100DC18F4(buf, a2, v18, (a1 + 24), a3, v17, v16, v45);
      }
    }

    sub_100013CC4();
  }

  v15 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to instantiate chat services during delete chat", buf, 2u);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }
}

void sub_1015AD384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_1015ADB90(&a17);
  v19 = *(v17 - 72);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void sub_1015AD3E0(void *a1, uint64_t a2, uint64_t a3)
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

  __p[3] = a1;
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015AD53C(void *a1, uint64_t a2, uint64_t a3)
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

  __p[3] = a1;
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015AD698(uint64_t a1)
{
  __p[5] = 0;
  __p[6] = 0;
  v1 = *(a1 + 64);
  __p[3] = *(a1 + 56);
  __p[4] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(v1 + 1, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "Capabilities");
  sub_100B2FB1C();
}

void sub_1015AD740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 24);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015AD780(void *a1, uint64_t a2, __int128 *a3)
{
  sub_1006FB24C(v5, a3);
  v5[14] = a1;
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015AD8E4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3[15] = 0;
  v3[16] = 0;
  sub_1006FB24C(v3, a3);
  sub_1015A7C94();
}

void sub_1015ADA1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015ADA44(void *a1, uint64_t a2, uint64_t a3)
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

  __p[3] = a1;
  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void *sub_1015ADB90(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 376);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v9 = (a1 + 328);
  sub_10005AAF8(&v9);
  v4 = *(a1 + 320);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1)
  {
    v9 = (a1 + 240);
    sub_1000087B4(&v9);
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    v9 = (a1 + 128);
    sub_1000087B4(&v9);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  return sub_1000C0544(a1);
}

void *sub_1015ADD8C(void *a1, dispatch_object_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F51630;
  sub_1015ADE84((a1 + 3), a2, a3);
  return a1;
}

void sub_1015ADE08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F51630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015ADE84(uint64_t a1, dispatch_object_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1015A6084(a1, a2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_1015ADEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015ADF68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F51680;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015ADF9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015AE064(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F51700;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015AE09C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v5 = (v3 + 1);
  v4 = v3[1];
  v19 = *v3;
  v20 = v4;
  if (v3[2])
  {
    v4[2] = &v20;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v19 = &v20;
  }

  v6 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  sub_10006DCAC(v3, v3[1]);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v27, object, 0);
    xpc_release(object[0]);
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v6);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v26, object, count);
    xpc_release(object[0]);
    for (i = v28; ; i = ++v28)
    {
      if (i == v26[1] && v27 == v26[0])
      {
        xpc_release(v26[0]);
        xpc_release(v27);
        goto LABEL_47;
      }

      v25 = 0;
      object[0] = &v27;
      object[1] = i;
      sub_10003EAD4(object, &v25);
      if (xpc_get_type(v25) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_45:
      xpc_release(v25);
    }

    v23 = 0u;
    v24 = 0u;
    *object = 0u;
    DWORD2(v24) = -1;
    v9 = v25;
    if (v25)
    {
      xpc_retain(v25);
      v32 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v32 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
      v10 = v9;
LABEL_30:
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v29 = &v32;
        v30 = "first";
        sub_100006354(&v29, v31);
        type = xpc_get_type(*v31);
        if (type == &_xpc_type_string)
        {
          v33[0] = object[0];
          ctu::rest::detail::read_enum_string_value(v33, v31, v12);
          LODWORD(object[0]) = v33[0];
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          LODWORD(object[0]) = xpc::dyn_cast_or_default(v31, 0, v12);
        }

        xpc_release(*v31);
        v29 = &v32;
        v30 = "second";
        sub_100006354(&v29, v31);
        read_rest_value(&object[1], v31);
        xpc_release(*v31);
        v10 = v32;
      }

      xpc_release(v10);
      xpc_release(v9);
      v13 = *v5;
      if (!*v5)
      {
LABEL_44:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= SLODWORD(object[0]))
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_44;
          }
        }

        if (v15 >= SLODWORD(object[0]))
        {
          goto LABEL_45;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_44;
        }
      }
    }

    v10 = xpc_null_create();
LABEL_29:
    v32 = v10;
    goto LABEL_30;
  }

LABEL_47:
  xpc_release(v6);
  v16 = a1[3];
  v17 = a1[4];
  v18 = (a1[2] + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v18 + v16);
  }

  v16(v18, &v19);
  sub_10006DCAC(&v19, v20);
}

void sub_1015AE4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23)
{
  xpc_release(object);
  object = 0;
  xpc_release(a23);
  xpc_release(v23);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1015AE5EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015AE658(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F51780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015AE6B8(void *a1, std::mutex *this)
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
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t *sub_1015AE77C(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  if ((v1[64] & 1) == 0)
  {
    sub_1000D1644();
  }

  v2 = *(*(v1 + 50) + 208);
  v3 = *v1;
  sub_1006FB24C(__dst, (v1 + 2));
  v21 = v1[30];
  v22 = *(v1 + 62);
  sub_10006F264(&v23, v1 + 8);
  v26 = *(v1 + 20);
  sub_1006FB368(v27, (v1 + 42));
  v4 = *(v1 + 50);
  v29 = *(v1 + 216);
  v28 = v4;
  sub_10006F264(&v30, v1 + 14);
  v33 = 1;
  LOBYTE(v8) = 1;
  BYTE4(v8) = 0;
  v9 = 0;
  if (*(v1 + 287) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 33), *(v1 + 34));
  }

  else
  {
    __p = *(v1 + 66);
    v11 = *(v1 + 35);
  }

  v12 = 0;
  v13 = 0;
  (*(*v2 + 376))(v2, v3, v1 + 72, __dst, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (v33 == 1)
  {
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (v27[24] == 1)
    {
      v8 = v27;
      sub_1000087B4(&v8);
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18[24] == 1)
    {
      v8 = v18;
      sub_1000087B4(&v8);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  sub_1015AEA34(&v7);
  return sub_1000049E0(&v6);
}

void sub_1015AE990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a54 == 1)
  {
    sub_1006A291C(&a20);
  }

  sub_1015AEA34(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AEA34(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 399) < 0)
    {
      operator delete(*(v1 + 376));
    }

    if (*(v1 + 368) == 1)
    {
      v2 = (v1 + 344);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 335) < 0)
    {
      operator delete(*(v1 + 312));
    }

    if (*(v1 + 311) < 0)
    {
      operator delete(*(v1 + 288));
    }

    if (*(v1 + 287) < 0)
    {
      operator delete(*(v1 + 264));
    }

    if (*(v1 + 256) == 1)
    {
      sub_1006A291C(v1 + 8);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1015AEAF4(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(*(v1 + 18) + 208);
  v3 = *v1;
  LOBYTE(v14) = 0;
  v28 = 0;
  LOBYTE(v8) = 1;
  BYTE4(v8) = 0;
  v9 = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v4 = *(v1 + 2);
    v11 = *(v1 + 3);
    __p = v4;
  }

  v12 = 0;
  v13 = 0;
  (*(*v2 + 376))(v2, v3, v1 + 8, &v14, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (v28 == 1)
  {
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v24[24] == 1)
    {
      v8 = v24;
      sub_1000087B4(&v8);
    }

    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18[24] == 1)
    {
      v8 = v18;
      sub_1000087B4(&v8);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

  sub_1015AECDC(&v7);
  return sub_1000049E0(&v6);
}

void sub_1015AEC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a51 == 1)
  {
    sub_1006A291C(&a20);
  }

  sub_1015AECDC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AECDC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 112) == 1)
    {
      v2 = (v1 + 88);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1015AED88(unsigned int **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 4);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 2;
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I === discover-on-404 for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  memset(buf, 0, sizeof(buf));
  v5 = (v1 + 2);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v6 = *v5;
    *&buf[16] = *(v1 + 3);
    *buf = v6;
  }

  BYTE8(v17[0]) = 0;
  LOBYTE(v18) = 0;
  v19 = 0uLL;
  *(&v18 + 1) = 0;
  v16 = 0uLL;
  *&buf[24] = 0;
  LOBYTE(v17[0]) = 0;
  sub_1015AD10C(v2, *v1, buf);
  v7 = *v1;
  v13 = 1;
  memset(__p, 0, 24);
  v8 = sub_1015A9504(v2, v7, buf, &v13, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (HIDWORD(v8))
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v5 = *v5;
      }

      LODWORD(__p[0]) = 141558275;
      *(__p + 4) = 1752392040;
      WORD2(__p[1]) = 2081;
      *(&__p[1] + 6) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Discovery failure for: [%{private, mask.hash}s]", __p, 0x16u);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(*(&v18 + 1));
  }

  if (v18 == 1)
  {
    __p[0] = v17 + 8;
    sub_1000087B4(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  sub_1015AF07C(&v12);
  return sub_1000049E0(&v11);
}

void sub_1015AF034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_10067AA50(&a20);
  sub_1015AF07C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AF07C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1015AF0D4(unsigned int **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *(v1 + 4);
  (*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *v23 = 0u;
  *v24 = 0u;
  v3 = *v1;
  v4 = (v1 + 2);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v5 = *v4;
    *&buf[16] = *(v1 + 3);
    *buf = v5;
  }

  BYTE8(v41[0]) = 0;
  LOBYTE(v42) = 0;
  v43 = 0uLL;
  *(&v42 + 1) = 0;
  v40 = 0uLL;
  *&buf[24] = 0;
  LOBYTE(v41[0]) = 0;
  sub_1015A8744(v2, v3, buf, v23);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  if (v42 == 1)
  {
    __p = v41 + 8;
    sub_1000087B4(&__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (BYTE8(v37) == 1 && BYTE8(v31) == 1)
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1 + 2;
      if (*(v1 + 31) < 0)
      {
        v7 = *v4;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cache alredy present for: [%{private, mask.hash}s]. Skipping discovery", buf, 0x16u);
    }

    __p = 0;
    v21 = 0;
    v8 = *v1;
    if (*(v1 + 31) < 0)
    {
      sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
    }

    else
    {
      v9 = *v4;
      *&buf[16] = *(v1 + 3);
      *buf = v9;
    }

    BYTE8(v41[0]) = 0;
    LOBYTE(v42) = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    v40 = 0uLL;
    *&buf[24] = 0;
    LOBYTE(v41[0]) = 0;
    sub_1015A7460(&__p, v2, v8);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(*(&v42 + 1));
    }

    if (v42 == 1)
    {
      v38 = v41 + 1;
      sub_1000087B4(&v38);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (__p)
    {
      *buf = 0;
      sub_100DCA984(__p, buf);
    }

    else
    {
      v16 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Bailing out of discovery on message reception", buf, 2u);
      }
    }

    if (v21)
    {
      sub_100004A34(v21);
    }
  }

  else
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v1 + 2;
      if (*(v1 + 31) < 0)
      {
        v11 = *v4;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting discovery upon message received for: [%{private, mask.hash}s]", buf, 0x16u);
    }

    v42 = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v1 + 31) < 0)
    {
      sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
    }

    else
    {
      v12 = *v4;
      *&buf[16] = *(v1 + 3);
      *buf = v12;
    }

    BYTE8(v41[0]) = 0;
    LOBYTE(v42) = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    v40 = 0uLL;
    *&buf[24] = 0;
    LOBYTE(v41[0]) = 0;
    v13 = *v1;
    LODWORD(v38) = 1;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v14 = sub_1015A9504(v2, v13, buf, &v38, &__p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (HIDWORD(v14))
    {
      v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Fetch failed", &__p, 2u);
      }
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(*(&v42 + 1));
    }

    if (v42 == 1)
    {
      __p = v41 + 8;
      sub_1000087B4(&__p);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  if (BYTE8(v37) == 1)
  {
    if (v37 == 1 && SHIBYTE(v36) < 0)
    {
      operator delete(v35[1]);
    }

    if (BYTE8(v33) == 1)
    {
      *buf = &v32;
      sub_1000087B4(buf);
    }

    if (v31 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(v29[1]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[1]);
    }

    if (LOBYTE(v27[0]) == 1)
    {
      *buf = v26 + 8;
      sub_1000087B4(buf);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (SHIBYTE(v24[0]) < 0)
    {
      operator delete(v23[0]);
    }
  }

  sub_1015AF07C(&v19);
  return sub_1000049E0(&v18);
}

void sub_1015AF6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a49 == 1)
  {
    sub_1006A291C(&a18);
  }

  sub_1015AF07C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AF77C(unsigned int **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *(v1 + 15);
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
  v38 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = 0u;
  v35 = 0u;
  sub_1015A8744(v2, *v1, v1 + 1, &v34);
  if (BYTE8(v48) != 1)
  {
    v6 = *v1;
    *buf = 1;
    __dst = 0uLL;
    *&v20 = 0;
    sub_1015A9504(v2, v6, (v1 + 2), buf, &__dst);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__dst);
    }

    v7 = *v1;
    LODWORD(__dst) = 2;
    sub_1015AD8E4(v2, v7, (v1 + 2));
  }

  v33 = 0;
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
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  __dst = 0u;
  sub_1006FB24C(&__dst, &v34);
  LODWORD(v25) = v40;
  WORD2(v25) = WORD2(v40);
  sub_10006F264(&v25 + 8, (&v40 + 8));
  *(&v27 + 1) = *(&v42 + 1);
  sub_1006FB368(&v28, &v43);
  v30 = v45;
  LOBYTE(v31) = v46;
  sub_10006F264(&v31 + 8, (&v46 + 8));
  v18 = 0u;
  v16 = 0u;
  *__p = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  *v13 = 0u;
  sub_1006FB24C(v12, (v1 + 2));
  LOBYTE(v15) = BYTE5(v25);
  sub_100220FC4(&v15 + 8, &v28);
  memset(&v11, 0, sizeof(v11));
  sub_10000501C(&v11, "(nil)");
  if (LOBYTE(__p[0]) == 1 && v16 != *(&v15 + 1))
  {
    std::string::operator=(&v11, *(&v15 + 1));
  }

  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v12;
    if (SHIBYTE(v13[0]) < 0)
    {
      v4 = v12[0];
    }

    v5 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v4;
    v51 = 2160;
    v52 = 1752392040;
    LOWORD(v53[0]) = 2081;
    *(v53 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete from cache: [%{private, mask.hash}s] => [%{private, mask.hash}s]", buf, 0x2Au);
  }

  *buf = *v1;
  sub_1006FB24C(&buf[8], v12);
  sub_1015A8918(v2 + 72, buf);
  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55[24] == 1)
  {
    v49 = v55;
    sub_1000087B4(&v49);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1)
  {
    *buf = &v15 + 8;
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  if (SHIBYTE(v13[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (v33 == 1 && SHIBYTE(v32) < 0)
  {
    operator delete(*(&v31 + 1));
  }

  if (BYTE8(v29) == 1)
  {
    *buf = &v28;
    sub_1000087B4(buf);
  }

  if (v27 == 1 && SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*(&v23 + 1));
  }

  if (v23 == 1)
  {
    *buf = &v22[8];
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(__dst);
  }

  if (BYTE8(v48) == 1)
  {
    if (v48 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(*(&v46 + 1));
    }

    if (BYTE8(v44) == 1)
    {
      *&__dst = &v43;
      sub_1000087B4(&__dst);
    }

    if (v42 == 1 && SHIBYTE(v41) < 0)
    {
      operator delete(*(&v40 + 1));
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*(&v38 + 1));
    }

    if (v38 == 1)
    {
      *&__dst = &v37[8];
      sub_1000087B4(&__dst);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*(&v35 + 1));
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }
  }

  sub_1015AFD8C(&v10);
  return sub_1000049E0(&v9);
}

void sub_1015AFC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10067AA50(&a18);
  sub_1006A291C(&a32);
  if (LOBYTE(STACK[0x298]) == 1)
  {
    sub_1006A291C(&a64);
  }

  sub_1015AFD8C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AFD8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    if (*(v1 + 88) == 1)
    {
      v2 = (v1 + 64);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}