uint64_t sub_10123BB40(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid slot context for ignore IMS Registration", &__p, 2u);
    }

    return 0;
  }

  v5 = *(a1 + 208);
  if (v5 == (a1 + 216))
  {
    return 0;
  }

  while (1)
  {
    PersonalityIdFromSlotId();
    v6 = *(v5 + 55);
    if (v6 >= 0)
    {
      v7 = *(v5 + 55);
    }

    else
    {
      v7 = v5[5];
    }

    v8 = HIBYTE(v40);
    v9 = SHIBYTE(v40);
    if (v40 < 0)
    {
      v8 = *(&__p + 1);
    }

    if (v7 == v8)
    {
      if (v6 >= 0)
      {
        v10 = v5 + 4;
      }

      else
      {
        v10 = v5[4];
      }

      if (v40 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v12 = memcmp(v10, p_p, v7) != 0;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_18:
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v12 = 1;
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }
    }

    operator delete(__p);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (*(v5 + 56) == 1 && *(v5 + 58) == 1)
    {
      break;
    }

LABEL_23:
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
    if (v14 == (a1 + 216))
    {
      return 0;
    }
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v20 = ServiceMap;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(ServiceMap);
  *&__p = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, &__p);
  if (v25)
  {
    v27 = v25[3];
    v26 = v25[4];
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
      v28 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v26 = 0;
  v28 = 1;
LABEL_42:
  if (v27)
  {
    v37 = 0;
    v38[0] = @"SMSSettings";
    v38[1] = @"UseIMSDuringCSCall";
    __p = 0uLL;
    v40 = 0;
    sub_10005B328(&__p, v38, &__p, 2uLL);
    (*(*v27 + 88))(&v36, v27, a2, 1, &__p, 0, 0);
    sub_10002FE1C(&v37, &v36);
    sub_10000A1EC(&v36);
    if (__p)
    {
      *(&__p + 1) = __p;
      operator delete(__p);
    }

    if (v37)
    {
      LOBYTE(__p) = 0;
      ctu::cf::assign(&__p, v37, v29);
      v30 = __p;
      v31 = *v4;
      v32 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
      v17 = v30 ^ 1u;
      if (v32)
      {
        v33 = CSIBOOLAsString(v30 ^ 1u);
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v33;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Ignore IMS Registration during CS call (carrier pref): %s", &__p, 0xCu);
      }

      sub_100045C8C(&v37);
      if ((v28 & 1) == 0)
      {
        sub_100004A34(v26);
      }

      return v17;
    }

    sub_100045C8C(&v37);
  }

  else
  {
    v34 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Failed to get carrier interface", &__p, 2u);
    }
  }

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  v35 = *v4;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Ignoring IMS Registration during active CS call", &__p, 2u);
  }

  return 1;
}

void sub_10123BF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_100045C8C(&a10);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

void sub_10123BFE4(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  *buf = &v15;
  if (!*(sub_1002D750C(a1 + 2560, &v15)[5] + 244))
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I BB not ready since Encoder unknown";
      goto LABEL_16;
    }

LABEL_17:
    v7 = 0;
    goto LABEL_19;
  }

  *buf = &v15;
  if (!*(sub_1002D750C(a1 + 2560, &v15)[5] + 285))
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I BB not ready since service state = not ready";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 244) == 2)
  {
    *buf = &v15;
    if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 285) == 1)
    {
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "#I BB not ready since encoder is 3GPP2 and only 3GPP SMS service is up";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 244) == 1)
  {
    *buf = &v15;
    if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 285) == 2)
    {
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v6 = "#I BB not ready since encoder is 3GPP and only 3GPP2 SMS service is up";
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  v7 = 1;
LABEL_19:
  *buf = &v15;
  if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 292) != v7)
  {
    *buf = &v15;
    *(sub_1002D750C(a1 + 2560, &v15)[5] + 292) = v7;
    v8 = *v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v15;
      if (*(sub_1002D750C(a1 + 2560, &v15)[5] + 292))
      {
        v9 = "up";
      }

      else
      {
        v9 = "down";
      }

      *buf = &v15;
      sub_1002D750C(a1 + 2560, &v15);
      v10 = sms::asString();
      *buf = &v15;
      v11 = sub_1002D750C(a1 + 2560, &v15);
      v12 = sms::asString(*(v11[5] + 285));
      v13 = sub_10122AA78(a1, v15);
      v14 = CSIBOOLAsString(v13);
      *buf = 136315906;
      *&buf[4] = v9;
      v17 = 2080;
      v18 = v10;
      v19 = 2080;
      v20 = v12;
      v21 = 2080;
      v22 = v14;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SMS Baseband service is: %s for encoder: %s service state: %s baseband activated: %s", buf, 0x2Au);
    }

    sub_101240EA4(a1, v15);
  }
}

uint64_t sub_10123C3F8(uint64_t a1)
{
  result = subscriber::makeSimSlotRange();
  v3 = v16;
  v4 = v17;
  if (v16 != v17)
  {
    v5 = v18;
    do
    {
      result = v18(*v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    while (v3 != v17);
    v6 = v17;
    if (v3 != v17)
    {
      v7 = (a1 + 296);
      do
      {
        v8 = *v3;
        v15 = *v3;
        v9 = *v7;
        if (!*v7)
        {
          goto LABEL_15;
        }

        v10 = (a1 + 296);
        v11 = *v7;
        do
        {
          if (*(v11 + 7) >= v8)
          {
            v10 = v11;
          }

          v11 = v11[*(v11 + 7) < v8];
        }

        while (v11);
        if (v10 == v7 || (v12 = *(v10 + 7), v8 < v12) || v12 == *(a1 + 324))
        {
LABEL_15:
          result = rest::operator==();
          if (result)
          {
            goto LABEL_27;
          }

          v9 = *v7;
          v8 = v15;
        }

        if (!v9)
        {
LABEL_31:
          sub_1000A58E4("map::at:  key not found");
        }

        while (1)
        {
          while (1)
          {
            v13 = *(v9 + 7);
            if (v13 <= v8)
            {
              break;
            }

            v9 = *v9;
            if (!v9)
            {
              goto LABEL_31;
            }
          }

          if (v13 >= v8)
          {
            break;
          }

          v9 = v9[1];
          if (!v9)
          {
            goto LABEL_31;
          }
        }

        v14 = *(v9 + 8);
        result = subscriber::isValidSimSlot();
        if (!result)
        {
          return result;
        }

        v19 = &v15;
        result = sub_1002D750C(a1 + 2560, &v15);
        *(*(result + 40) + 248) = v14;
        do
        {
LABEL_27:
          if (++v3 == v4)
          {
            break;
          }

          result = v5(*v3);
        }

        while ((result & 1) == 0);
      }

      while (v3 != v6);
    }
  }

  return result;
}

uint64_t sub_10123C598(uint64_t result, int a2)
{
  if (a2 == 2)
  {
    v29 = v2;
    v30 = v3;
    v4 = result;
    if (*(result + 2616) == 1)
    {
      result = subscriber::makeSimSlotRange();
      v5 = v24;
      v6 = v25;
      if (v24 != v25)
      {
        v7 = v26;
        do
        {
          result = v26(*v5);
          if (result)
          {
            break;
          }

          ++v5;
        }

        while (v5 != v25);
        v8 = v25;
        if (v5 != v25)
        {
          v22 = v25;
          do
          {
            v23 = *v5;
            result = (***(v4 + 2584))(*(v4 + 2584));
            if (result)
            {
              v9 = *(*(**(v4 + 48) + 16))(*(v4 + 48), v23);
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Invalidating all Cell Broadcast Messages", buf, 2u);
              }

              *buf = &v23;
              v10 = *sub_1002D750C(v4 + 2560, &v23)[5];
              *buf = &v23;
              v11 = *(sub_1002D750C(v4 + 2560, &v23)[5] + 8);
              if (v10 != v11)
              {
                while (1)
                {
                  v12 = v10[1];
                  *buf = *v10;
                  v28 = v12;
                  if (v12)
                  {
                    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
                    v13 = sub_10124CC48(buf);
                    sub_100004A34(v12);
                    if (v13)
                    {
                      break;
                    }

                    goto LABEL_17;
                  }

                  if (sub_10124CC48(buf))
                  {
                    break;
                  }

LABEL_17:
                  v10 += 2;
                  if (v10 == v11)
                  {
                    v10 = v11;
                    goto LABEL_30;
                  }
                }

                if (v10 != v11)
                {
                  for (i = v10 + 2; i != v11; i += 2)
                  {
                    *buf = *i;
                    v15 = i[1];
                    v28 = v15;
                    if (v15)
                    {
                      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
                      v16 = sub_10124CC48(buf);
                      sub_100004A34(v15);
                      if (v16)
                      {
                        continue;
                      }
                    }

                    else if (sub_10124CC48(buf))
                    {
                      continue;
                    }

                    v17 = *i;
                    *i = 0;
                    i[1] = 0;
                    v18 = v10[1];
                    *v10 = v17;
                    if (v18)
                    {
                      sub_100004A34(v18);
                    }

                    v10 += 2;
                  }
                }
              }

LABEL_30:
              *buf = &v23;
              v19 = sub_1002D750C(v4 + 2560, &v23)[5];
              *buf = &v23;
              v20 = sub_1002D750C(v4 + 2560, &v23);
              sub_101231234(v19, v10, *(v20[5] + 8));
              *buf = &v23;
              v21 = sub_1002D750C(v4 + 2560, &v23);
              sub_100021348((v21[5] + 296));
              *buf = &v23;
              result = sub_1002D750C(v4 + 2560, &v23);
              *(*(result + 40) + 592) = *(*(result + 40) + 584);
              v8 = v22;
            }

            do
            {
              if (++v5 == v6)
              {
                break;
              }

              result = v7(*v5);
            }

            while ((result & 1) == 0);
          }

          while (v5 != v8);
        }
      }
    }
  }

  return result;
}

void sub_10123C8D8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) == 0 && *(a1 + 260) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to reset", v4, 2u);
    }

    sub_10123032C(a1, 1);
  }
}

void sub_10123C95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (subscriber::isValidSimSlot())
  {
    ServiceMap = Registry::getServiceMap(*(a2 + 80));
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
      v14 = v12[3];
      v13 = v12[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_13:
        v17 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
        v18 = v17;
        if (v14)
        {
          *buf = 0;
          v24 = 0;
          (*(*v14 + 8))(buf, v14, a3);
          if (*buf)
          {
            if (*(*buf + 47) < 0)
            {
              sub_100005F2C(a1, *(*buf + 24), *(*buf + 32));
            }

            else
            {
              v19 = *(*buf + 24);
              *(a1 + 16) = *(*buf + 40);
              *a1 = v19;
            }
          }

          else
          {
            v21 = *v18;
            if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
            {
              *v22 = 0;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get Personality Info. Not updating TPMR", v22, 2u);
            }

            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
          }

          if (v24)
          {
            sub_100004A34(v24);
          }
        }

        else
        {
          v20 = *v17;
          if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get Personality Shop. Not updating TPMR", buf, 2u);
          }

          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        return;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_13;
  }

  v16 = *(a2 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid slot for account ID", buf, 2u);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void sub_10123CBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123CC14(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_10123C95C(&v37, a1, a2);
  v9 = HIBYTE(v39);
  if (v39 < 0)
  {
    v9 = v38;
  }

  if (v9)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    *buf = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, buf);
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
          goto LABEL_10;
        }

        goto LABEL_14;
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
LABEL_10:
      v20 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet. Not updating TPMR", buf, 2u);
      }

LABEL_35:
      if ((v19 & 1) == 0)
      {
        sub_100004A34(v17);
      }

      goto LABEL_37;
    }

LABEL_14:
    v40 = 0;
    *buf = a3;
    v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
    if (v21)
    {
      v22 = v40;
      v40 = v21;
      *buf = v22;
      sub_100029A48(buf);
    }

    v36 = v40;
    v40 = 0;
    sub_100029A48(&v40);
    (*(*v18 + 16))(v18, &v37, @"TPMR", v36, @"SMSControllerWalletDomain", 0, 1, 0);
    sub_100029A48(&v36);
    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Cached TPMR : %u", buf, 8u);
    }

    if (!a4)
    {
      goto LABEL_35;
    }

    v24 = Registry::getServiceMap(*(a1 + 80));
    v25 = v24;
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

    std::mutex::lock(v24);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
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
        if (v32)
        {
          goto LABEL_30;
        }

LABEL_28:
        v33 = *v8;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to get Subscriber Interface. Not updating TPMR in sim.", buf, 2u);
        }

LABEL_30:
        LOBYTE(v40) = a3;
        v44 = 0;
        v45 = 0;
        *buf = 0;
        sub_1000DCF88(buf, &v40, &v40 + 1, 1);
        sub_100004AA0(&v40, (a1 + 8));
        v34 = v41;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
        }

        memset(__p, 0, sizeof(__p));
        sub_100034C50(__p, *buf, v44, v44 - *buf);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = 0;
        operator new();
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    if (v32)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_37:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }
}

void sub_10123D0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  sub_10000FF50(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_weak(v28);
  }

  if (a26)
  {
    a27 = a26;
    operator delete(a26);
    if (v30)
    {
LABEL_7:
      if (v31)
      {
LABEL_12:
        if (a19 < 0)
        {
          operator delete(a14);
        }

        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_100004A34(v27);
      goto LABEL_12;
    }
  }

  else if (v30)
  {
    goto LABEL_7;
  }

  sub_100004A34(v29);
  if (v31)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t sub_10123D1E0(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_10123C95C(&__p, a1, a2);
  v5 = HIBYTE(v24);
  if (v24 < 0)
  {
    v5 = v23;
  }

  if (!v5)
  {
    v17 = 0;
    goto LABEL_24;
  }

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
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
LABEL_10:
    v16 = *v4;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet", buf, 2u);
    }

    v17 = 0;
    if (v15)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_100004A34(v13);
    goto LABEL_24;
  }

LABEL_17:
  *buf = 0;
  (*(*v14 + 24))(&v21, v14, &__p, @"TPMR", @"SMSControllerWalletDomain", 0, 1);
  sub_10010B240(buf, &v21);
  sub_10000A1EC(&v21);
  if (*buf)
  {
    LOBYTE(v21) = 0;
    ctu::cf::assign(&v21, *buf, v18);
    v17 = v21 + 1;
  }

  else
  {
    v19 = *v4;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to read TPMR value", &v21, 2u);
    }

    v17 = 0;
  }

  sub_100029A48(buf);
  if ((v15 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  return v17;
}

void sub_10123D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  sub_100029A48(&a16);
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10123D4A8(void *a1)
{
  v1 = a1[49];
  v2 = a1[48];
  if (v2 != v1)
  {
    v4 = a1 + 43;
    do
    {
      v5 = *v2;
      if (subscriber::isValidSimSlot())
      {
        v7 = *(v2 + 16);
        v6 = *(v2 + 24);
        if (v7 == v6)
        {
          v10 = 0;
        }

        else
        {
          v8 = v7 + 4;
          do
          {
            v9 = *(v8 - 4) - 1;
            v10 = v9 < 2;
            v11 = v9 < 2 || v8 == v6;
            v8 += 4;
          }

          while (!v11);
        }

        v17 = v5;
        if (subscriber::isValidSimSlot())
        {
          v12 = *v4;
          if (*v4)
          {
            v13 = v4;
            do
            {
              if (*(v12 + 32) >= v5)
              {
                v13 = v12;
              }

              v12 = *(v12 + 8 * (*(v12 + 32) < v5));
            }

            while (v12);
            if (v13 != v4)
            {
              v14 = !v10;
              if (*(v13 + 8) > v5)
              {
                v14 = 1;
              }

              if ((v14 & 1) == 0)
              {
                v15 = *(v13 + 41);
                if (subscriber::isSimAbsent())
                {
                  if (v15 == 1)
                  {
                    v18 = &v17;
                    v16 = sub_1002D750C((a1 + 320), &v17);
                    sub_100021348(v16[5]);
                  }
                }
              }
            }
          }
        }
      }

      v2 += 168;
    }

    while (v2 != v1);
  }
}

void sub_10123D5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2320);
  v3 = (a1 + 2328);
  if (v2 != (a1 + 2328))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_12;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 7))
      {
        goto LABEL_12;
      }

      if ((InHomeCountryStatus::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 7);
LABEL_12:
    sub_1012585EC(a1, v7, v2 + 32);
    goto LABEL_13;
  }
}

void sub_10123D6CC(uint64_t a1)
{
  if (*(a1 + 2620) == 1)
  {
    subscriber::makeSimSlotRange();
    v2 = v4;
    if (v4 != v5)
    {
      do
      {
        if (v6(*v2))
        {
          break;
        }

        ++v2;
      }

      while (v2 != v5);
      while (v2 != v5)
      {
        v3 = *v2++;
        sub_10123D780(a1, v3);
        while (v2 != v5 && (v6(*v2) & 1) == 0)
        {
          ++v2;
        }
      }
    }
  }
}

void sub_10123D780(uint64_t a1, int a2)
{
  __p = 0;
  v20 = 0;
  v21 = 0;
  sms::Controller::getDynamicMessageModes_sync(a1, a2, &__p);
  v18[0] = 1;
  v18[1] = a1 + 2392;
  v4 = *(a1 + 2432);
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 8);
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 + 5 != &__p)
  {
    v7 = v20;
    v8 = v20 - __p;
    v9 = v5[7];
    v10 = v5[5];
    if (v9 - v10 < (v20 - __p))
    {
      v11 = v8 >> 2;
      if (v10)
      {
        v5[6] = v10;
        operator delete(v10);
        v9 = 0;
        v5[5] = 0;
        v5[6] = 0;
        v5[7] = 0;
      }

      if (!(v11 >> 62))
      {
        v12 = v9 >> 1;
        if (v9 >> 1 <= v11)
        {
          v12 = v8 >> 2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        if (!(v13 >> 62))
        {
          sub_100016740((v5 + 5), v13);
        }
      }

      sub_1000CE3D4();
    }

    v14 = v5[6];
    v15 = v14 - v10;
    if (v14 - v10 >= v8)
    {
      if (v20 != __p)
      {
        memmove(v5[5], __p, v20 - __p);
      }

      v17 = &v10[v8];
    }

    else
    {
      v16 = __p + v15;
      if (v14 != v10)
      {
        memmove(v5[5], __p, v15);
        v14 = v5[6];
      }

      if (v7 != v16)
      {
        memmove(v14, v16, v7 - v16);
      }

      v17 = v14 + v7 - v16;
    }

    v5[6] = v17;
  }

  sub_10125CEC4(v18);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_10123D9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_10125CEC4(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10123D9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2344);
  v3 = (a1 + 2352);
  if (v2 != (a1 + 2352))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
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
        goto LABEL_15;
      }

      v9 = v2[5];
      v10 = v8[5];
      v11 = v8[6];
      if (v11 - v10 == v2[6] - v9)
      {
        while (v10 != v11)
        {
          if (!sub_100022D3C(&v17, v10, v9))
          {
            v7 = *(v2 + 8);
            goto LABEL_25;
          }

          v10 += 3;
          v9 += 3;
        }

        goto LABEL_17;
      }

LABEL_25:
      v13 = a1;
      v12 = (v2 + 5);
LABEL_16:
      sub_1012586F4(v13, v7, v12);
LABEL_17:
      v14 = v2[1];
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
          v15 = v2[2];
          v16 = *v15 == v2;
          v2 = v15;
        }

        while (!v16);
      }

      v2 = v15;
      if (v15 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_15:
    v12 = (v2 + 5);
    v13 = a1;
    goto LABEL_16;
  }
}

void sub_10123DAF4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *&buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
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
  v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v15 = v14;
  if (v12)
  {
    v48 = 0;
    (*(*v12 + 96))(&buf, v12, a2, 1, @"PreventDetachAfterEmergencyCallTimer", 0, 0);
    sub_10010B240(&v48, &buf);
    v16 = sub_10000A1EC(&buf);
    if (!v48)
    {
      v24 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I PreventDetachAfterEmergencyCallTimer not set in the carrier bundle. Returning!", &buf, 2u);
      }

      goto LABEL_56;
    }

    LODWORD(buf) = 0;
    ctu::cf::assign(v16, v48, v17);
    v18 = buf;
    if (!buf)
    {
      v25 = *v15;
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "PreventDetachAfterEmergencyCallTimer set to 0. Returning", &buf, 2u);
      }

      goto LABEL_56;
    }

    if (!*(a1 + 2672))
    {
      sub_10000501C(&buf, "/cc/assertions/emergency_online");
      ctu::rest::AssertionHandle::create();
      if (v50 < 0)
      {
        operator delete(buf);
      }

      v26 = v47;
      v47 = 0uLL;
      v27 = *(a1 + 2680);
      *(a1 + 2672) = v26;
      if (v27)
      {
        sub_100004A34(v27);
        if (*(&v47 + 1))
        {
          sub_100004A34(*(&v47 + 1));
        }
      }
    }

    v19 = *(a1 + 2632);
    v20 = *v15;
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      if (!v21)
      {
        goto LABEL_30;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = v18;
      v22 = "#I Prevent Detach timer re-starting for %lld secs";
    }

    else
    {
      if (!v21)
      {
        goto LABEL_30;
      }

      LODWORD(buf) = 134217984;
      *(&buf + 4) = v18;
      v22 = "#I Prevent Detach timer starting for %lld secs";
    }

    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, &buf, 0xCu);
LABEL_30:
    v28 = *(a1 + 16);
    if (!v28 || (v29 = *(a1 + 8), (v30 = std::__shared_weak_count::lock(v28)) == 0))
    {
      sub_100013CC4();
    }

    v31 = v30;
    atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v30);
    Registry::getTimerService(&buf, *(a1 + 80));
    v32 = buf;
    sub_10000501C(__p, "PreventDetachTimer");
    v33 = *(a1 + 24);
    object = v33;
    if (v33)
    {
      dispatch_retain(v33);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10123E1B4;
    aBlock[3] = &unk_101F1D588;
    aBlock[4] = a1;
    aBlock[5] = v29;
    v41 = v31;
    atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v42 = a2;
    v43 = _Block_copy(aBlock);
    sub_100D23364(v32, __p, 1, 1000000 * v18, &object, &v43);
    v34 = v47;
    *&v47 = 0;
    v35 = *(a1 + 2632);
    *(a1 + 2632) = v34;
    if (v35)
    {
      (*(*v35 + 8))(v35);
      v36 = v47;
      *&v47 = 0;
      if (v36)
      {
        (*(*v36 + 8))(v36);
      }
    }

    if (v43)
    {
      _Block_release(v43);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v46 < 0)
    {
      operator delete(__p[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    if (*(a1 + 2632))
    {
      v37 = *(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer is set to %lld secs", &buf, 0xCu);
      }

      if (*(a1 + 2720) != v18)
      {
        *(a1 + 2720) = v18;
        v38 = *(a1 + 2712);
        if (v38)
        {
          (*(*v38 + 48))(v38, a1 + 2720);
        }
      }

      v39 = *(a1 + 112);
      if (v39)
      {
        (*(*v39 + 152))(v39, a2);
      }
    }

    if (v41)
    {
      std::__shared_weak_count::__release_weak(v41);
    }

    std::__shared_weak_count::__release_weak(v31);
LABEL_56:
    sub_100029A48(&v48);
    goto LABEL_57;
  }

  v23 = *v14;
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Unable to get Carrier Settings object.", &buf, 2u);
  }

LABEL_57:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10123E0C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v26);
  sub_100029A48((v28 - 120));
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(a1);
}

void sub_10123E1B4(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Prevent Detach timer expired, releasing emergency online assertion", __p, 2u);
        }

        if (*(v3 + 2672))
        {
          v7 = *(v3 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Emergency online timer expired, releasing emergency online assertion", __p, 2u);
          }

          v8 = *(v3 + 2680);
          *(v3 + 2672) = 0u;
          if (v8)
          {
            sub_100004A34(v8);
          }
        }

        v9 = *(v3 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer is cleared", __p, 2u);
        }

        if (*(v3 + 2720) != 0.0)
        {
          *(v3 + 2720) = 0;
          v10 = *(v3 + 2712);
          if (v10)
          {
            (*(*v10 + 48))(v10, v3 + 2720);
          }
        }

        v11 = *(v3 + 2632);
        *(v3 + 2632) = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }

        v12 = *(v3 + 112);
        if (v12)
        {
          (*(*v12 + 152))(v12, *(a1 + 56));
        }

        v13 = (a1 + 56);
        __p[0] = v13;
        v14 = sub_1002D750C(v3 + 2560, v13)[5];
        sub_100009970(v14 + 560, *(v14 + 568));
        *(v14 + 560) = v14 + 568;
        *(v14 + 568) = 0u;
        v15 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v13;
          v16 = sub_1002D750C(v3 + 2560, v13);
          sub_101166E24(v16[5], __p);
          if (v19 >= 0)
          {
            v17 = __p;
          }

          else
          {
            v17 = __p[0];
          }

          *buf = 136315138;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Emergency Text Numbers %s", buf, 0xCu);
          if (v19 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10123E4D8(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v1 = v39;
  v2 = v40;
  if (v39 != v40)
  {
    v3 = v41;
    do
    {
      if (v41(*v1))
      {
        break;
      }

      ++v1;
    }

    while (v1 != v40);
    v4 = v40;
    while (v1 != v4)
    {
      v38 = *v1;
      v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
      v6 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Dumping SMS Param", buf, 2u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CSIBOOLAsString(*(a1 + 200));
        *buf = &v38;
        v8 = sub_1002D750C(a1 + 2560, &v38);
        v9 = CSIBOOLAsString(*(v8[5] + 41));
        v10 = sub_10122AA78(a1, v38);
        v11 = CSIBOOLAsString(v10);
        *buf = 136315650;
        *&buf[4] = v7;
        v44 = 2080;
        v45 = v9;
        v46 = 2080;
        v47 = v11;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fAirplaneMode: %s emergency callback mode: %s baseband activation status: %s", buf, 0x20u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v12 = sub_1002D750C(a1 + 2560, &v38);
        WirelessTechnologyList::asString(buf, (v12[5] + 240));
        v13 = buf;
        if (v46 < 0)
        {
          v13 = *buf;
        }

        v42[0] = 136315138;
        *&v42[1] = v13;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current Technologies: %s", v42, 0xCu);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(*buf);
        }

        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        sub_1002D750C(a1 + 2560, &v38);
        v14 = sms::asString();
        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Current Encoder: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        if (*(sub_1002D750C(a1 + 2560, &v38)[5] + 42))
        {
          v15 = "";
        }

        else
        {
          v15 = " not";
        }

        *buf = &v38;
        v16 = sub_1002D750C(a1 + 2560, &v38);
        v17 = CSIBOOLAsString(*(v16[5] + 294));
        v18 = sub_10123EEF8(*(a1 + 80), v38);
        *buf = 136315650;
        v19 = " not";
        if (v18)
        {
          v19 = "";
        }

        *&buf[4] = v15;
        v44 = 2080;
        v45 = v17;
        v46 = 2080;
        v47 = v19;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I We are%s IMS registered, Over Wifi(%s), and we will%s fallback to signaling on IMS send failures", buf, 0x20u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v20 = sub_1002D750C(a1 + 2560, &v38);
        v21 = " not";
        if (*(v20[5] + 72))
        {
          v21 = "";
        }

        *buf = 136315138;
        *&buf[4] = v21;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Reply address is%s being used", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = sub_10123005C(a1, v38);
        v23 = CSIBOOLAsString(v22);
        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Rat change timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v42[0] = v38;
        isValidSimSlot = subscriber::isValidSimSlot();
        if (isValidSimSlot)
        {
          *buf = v42;
          isValidSimSlot = *(sub_1002D750C(a1 + 2560, v42)[5] + 328) != 0;
        }

        v25 = CSIBOOLAsString(isValidSimSlot);
        *buf = 136315138;
        *&buf[4] = v25;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Retry wait timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v26 = CSIBOOLAsString(*(a1 + 2656) != 0);
        *buf = 136315138;
        *&buf[4] = v26;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 2G hints timer is running: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v27 = *(sub_1002D750C(a1 + 2560, &v38)[5] + 336);
        *buf = 67109120;
        *&buf[4] = v27;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I VVM data connection usable: %d", buf, 8u);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v28 = sub_1002D750C(a1 + 2560, &v38);
        v29 = CSIBOOLAsString(*(v28[5] + 292));
        *buf = 136315138;
        *&buf[4] = v29;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I BB service ready status: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v30 = sub_1002D750C(a1 + 2560, &v38);
        v31 = CSIBOOLAsString(*(v30[5] + 293));
        *buf = 136315138;
        *&buf[4] = v31;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I SMS ready status: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v32 = sub_1002D750C(a1 + 2560, &v38)[5];
        v33 = (v32 + 392);
        if (*(v32 + 415) < 0)
        {
          v33 = *v33;
        }

        *buf = 136315138;
        *&buf[4] = v33;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I VVM beacon SMSC address: %s", buf, 0xCu);
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_1012300C8(&__p, a1, v38);
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v38;
        v34 = sub_1002D750C(a1 + 2560, &v38);
        sub_101166E24(v34[5], buf);
        v35 = buf;
        if (v46 < 0)
        {
          v35 = *buf;
        }

        v42[0] = 136446210;
        *&v42[1] = v35;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Emergency text numbers %{public}s", v42, 0xCu);
        if (SHIBYTE(v46) < 0)
        {
          operator delete(*buf);
        }
      }

      do
      {
        ++v1;
      }

      while (v1 != v2 && (v3(*v1) & 1) == 0);
    }
  }
}

void sub_10123EEB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  operator delete(v30);
  _Unwind_Resume(a1);
}

uint64_t sub_10123EEF8(Registry *a1, uint64_t a2)
{
  v20 = 0;
  ServiceMap = Registry::getServiceMap(a1);
  v4 = ServiceMap;
  if (v5 < 0)
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
  __p = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    v13 = 1;
    goto LABEL_15;
  }

LABEL_10:
  v21[0] = @"SMSSettings";
  v21[1] = @"TransportFallback";
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_10005B328(&__p, v21, &v22, 2uLL);
  v21[0] = 0;
  (*(*v11 + 104))(&v16, v11, a2, 1, &__p, 0, 0);
  sub_10002FE1C(v21, &v16);
  sub_10000A1EC(&v16);
  if (v21[0])
  {
    LOBYTE(v16) = 0;
    ctu::cf::assign(&v16, v21[0], v14);
    v13 = v16;
  }

  else
  {
    v13 = 1;
  }

  sub_100045C8C(v21);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

LABEL_15:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_10001021C(&v20);
  return v13 & 1;
}

void sub_10123F0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, const void *a14)
{
  sub_100045C8C(&a14);
  if (__p)
  {
    operator delete(__p);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

void sub_10123F14C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Controller - intialize()", &buf, 2u);
  }

  (*(**(a1 + 2584) + 160))(*(a1 + 2584));
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_101240DB4;
  aBlock[3] = &unk_101F1D5B8;
  aBlock[4] = a1;
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v17 = *(a1 + 24);
      v7 = v17;
      v8 = _Block_copy(v3);
      v18 = v8;
      dispatch_retain(v7);
      buf = 0u;
      v27 = 0u;
      v19[0] = v7;
      v9 = _Block_copy(v8);
      v19[1] = v9;
      dispatch_retain(v7);
      v20[0] = v7;
      v10 = _Block_copy(v9);
      v20[1] = v10;
      dispatch_retain(v7);
      v21[0] = v7;
      v11 = _Block_copy(v10);
      v21[1] = v11;
      dispatch_retain(v7);
      __p[0] = 0;
      v22[0] = v7;
      v12 = _Block_copy(v11);
      v22[1] = v12;
      dispatch_retain(v7);
      v23[0] = v7;
      v13 = _Block_copy(v12);
      v23[1] = v13;
      dispatch_retain(v7);
      v24[0] = v7;
      v14 = _Block_copy(v13);
      v24[1] = v14;
      dispatch_retain(v7);
      v28[0] = v7;
      v15 = _Block_copy(v14);
      v28[1] = v15;
      dispatch_retain(v7);
      __p[1] = v7;
      __p[2] = _Block_copy(v15);
      dispatch_retain(v7);
      sub_101258904(v28);
      sub_101258904(v24);
      sub_101258904(v23);
      __p[0] = off_101F1F9C0;
      sub_101258904(v22);
      sub_101258904(v21);
      sub_1008F22A8(__p, &v27 + 8);
      sub_100084C48(__p);
      sub_101258904(v20);
      sub_101258904(v19);
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101240A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101240DB4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  subscriber::makeSimSlotRange();
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    v6 = v12;
    do
    {
      if (v12(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v11);
    v7 = v11;
    while (v4 != v7)
    {
      v8 = *v4++;
      v9 = v8;
      v13 = &v9;
      *(sub_1002D750C(v3 + 2560, &v9)[5] + 41) = a2;
      sub_101240EA4(v3, v9);
      while (v4 != v5 && (v6(*v4) & 1) == 0)
      {
        ++v4;
      }
    }
  }
}

void sub_101240EA4(uint64_t a1, signed int a2)
{
  v41 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (subscriber::isValidSimSlot())
  {
    v5 = *(a1 + 2504);
    if (v5)
    {
      v6 = a1 + 2504;
      do
      {
        if (*(v5 + 28) >= a2)
        {
          v6 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 28) < a2));
      }

      while (v5);
      if (v6 != a1 + 2504 && *(v6 + 28) <= a2 && *(v6 + 32) == 1)
      {
        v7 = *v4;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[not-ready]";
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMS %s - Private network", buf, 0xCu);
        }

        sub_10124A0EC(a1, a2, 0);
        return;
      }
    }

    if (sub_10122AEE8(a1, a2))
    {
      v9 = *v4;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[ready]";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I SMS %s - over IMS", buf, 0xCu);
      }

      sub_10124A0EC(a1, a2, 1);
      return;
    }

    if (sub_10122AA78(a1, a2))
    {
      *buf = &v41;
      if (*(sub_1002D750C(a1 + 2560, &v41)[5] + 292) == 1)
      {
        v10 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v41;
          sub_1002D750C(a1 + 2560, &v41);
          v11 = sms::asString();
          *buf = 136315394;
          *&buf[4] = "[ready]";
          *&buf[12] = 2080;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SMS %s - over BB, encoder: %s", buf, 0x16u);
        }

        sub_10124A0EC(a1, v41, 1);
        return;
      }

      if (sub_100A7F520())
      {
        v13 = v41;
        v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), v41);
        ServiceMap = Registry::getServiceMap(*(a1 + 80));
        v16 = ServiceMap;
        v17 = "18LASDQueryInterface";
        if (("18LASDQueryInterface" & 0x8000000000000000) != 0)
        {
          v18 = ("18LASDQueryInterface" & 0x7FFFFFFFFFFFFFFFLL);
          v19 = 5381;
          do
          {
            v17 = v19;
            v20 = *v18++;
            v19 = (33 * v19) ^ v20;
          }

          while (v20);
        }

        std::mutex::lock(ServiceMap);
        *buf = v17;
        v21 = sub_100009510(&v16[1].__m_.__sig, buf);
        if (v21)
        {
          v23 = v21[3];
          v22 = v21[4];
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v16);
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v22);
            goto LABEL_40;
          }
        }

        else
        {
          v23 = 0;
        }

        std::mutex::unlock(v16);
LABEL_40:
        if (v23)
        {
          v29 = *(a1 + 16);
          if (v29)
          {
            v30 = *(a1 + 8);
            v31 = std::__shared_weak_count::lock(v29);
            if (v31)
            {
              v32 = v31;
              atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v31);
              Registry::getTimerService(&v47, *(a1 + 80));
              v33 = v47;
              sub_10000501C(__p, "2G Location hints timer");
              v34 = *(a1 + 24);
              object = v34;
              if (v34)
              {
                dispatch_retain(v34);
              }

              *buf = _NSConcreteStackBlock;
              *&buf[8] = 1174405120;
              *&buf[16] = sub_10124A698;
              v51 = &unk_101F1D758;
              *&v52 = a1;
              *(&v52 + 1) = v30;
              v53 = v32;
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v54 = v14;
              v55 = v13;
              aBlock = _Block_copy(buf);
              sub_100D23364(v33, __p, 0, 5000000, &object, &aBlock);
              v35 = v42;
              v42 = 0;
              v36 = *(a1 + 2656);
              *(a1 + 2656) = v35;
              if (v36)
              {
                (*(*v36 + 8))(v36);
                v37 = v42;
                v42 = 0;
                if (v37)
                {
                  (*(*v37 + 8))(v37);
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

              if (v46 < 0)
              {
                operator delete(__p[0]);
              }

              v38 = v48;
              if (v48)
              {
                sub_100004A34(v48);
              }

              v39 = LASDQueryInterface::_2G(v38);
              sub_10010C9B4(&v42, v39);
              atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v49 = 0;
              operator new();
            }
          }

          sub_100013CC4();
        }

        v40 = *v14;
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to get LASDQuery", buf, 2u);
        }

        sub_10124A5AC(a1);
      }

      v24 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v25 = CSIBOOLAsString(0);
        *buf = &v41;
        v26 = sub_1002D750C(a1 + 2560, &v41);
        v27 = CSIBOOLAsString(*(v26[5] + 292));
        v28 = CSIBOOLAsString(1);
        *buf = 136315906;
        *&buf[4] = "[not-ready]";
        *&buf[12] = 2080;
        *&buf[14] = v25;
        *&buf[22] = 2080;
        v51 = v27;
        LOWORD(v52) = 2080;
        *(&v52 + 2) = v28;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I SMS %s - ims: %s, bb: %s, activation: %s", buf, 0x2Au);
      }

      sub_10124A0EC(a1, v41, 0);
    }

    else
    {
      v12 = *v4;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "[not-ready]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I SMS %s - BB not activated", buf, 0xCu);
      }

      sub_10124A0EC(a1, a2, 0);
    }
  }

  else
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid slot while calculating SMS ready.", buf, 2u);
    }
  }
}

void sub_10124164C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10124172C(uint64_t a1)
{
  result = subscriber::makeSimSlotRange();
  v3 = v5;
  if (v5 != v6)
  {
    do
    {
      result = v7(*v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    while (v3 != v6);
    while (v3 != v6)
    {
      v4 = *v3;
      v8[0] = off_101F20AF0;
      v8[1] = a1;
      v8[3] = v8;
      sub_101243698(a1, v4, v8);
      result = sub_100A6EFFC(v8);
      do
      {
        if (++v3 == v6)
        {
          break;
        }

        result = v7(*v3);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void sub_10124183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100A6EFFC(va);
  _Unwind_Resume(a1);
}

void sub_101241858(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 336);
  v3 = (a1 + 344);
  if (v2 != (a1 + 344))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v2 + 8);
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_24;
          }

          v9 = *(v2 + 8);
          *v14 = *(v2 + 20);
          if (*(v2 + 71) < 0)
          {
            sub_100005F2C(&v15, v2[6], v2[7]);
          }

          else
          {
            v15 = *(v2 + 3);
            v16 = v2[8];
          }

          if (*(v2 + 95) < 0)
          {
            sub_100005F2C(&v17, v2[9], v2[10]);
          }

          else
          {
            v17 = *(v2 + 9);
            v18 = v2[11];
          }

          sub_10125E3AC(a1, v9, v14);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(v17);
          }

          v10 = &v15;
          if ((SHIBYTE(v16) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v7 = *(v2 + 8);
      }

      *v19 = *(v2 + 20);
      if (*(v2 + 71) < 0)
      {
        sub_100005F2C(&v20, v2[6], v2[7]);
      }

      else
      {
        v20 = *(v2 + 3);
        v21 = v2[8];
      }

      if (*(v2 + 95) < 0)
      {
        sub_100005F2C(&__p, v2[9], v2[10]);
      }

      else
      {
        __p = *(v2 + 9);
        v23 = v2[11];
      }

      sub_10125E3AC(a1, v7, v19);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      v10 = &v20;
      if ((SHIBYTE(v21) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(*v10);
LABEL_24:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }
}

void sub_101241A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101241AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 360);
  v3 = (a1 + 368);
  if (v2 != (a1 + 368))
  {
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = *(v2 + 8);
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          if (rest::operator==())
          {
            goto LABEL_24;
          }

          v9 = *(v2 + 8);
          if (*(v2 + 71) < 0)
          {
            sub_100005F2C(&v14, v2[6], v2[7]);
          }

          else
          {
            v14 = *(v2 + 3);
            v15 = v2[8];
          }

          if (*(v2 + 95) < 0)
          {
            sub_100005F2C(&v16, v2[9], v2[10]);
          }

          else
          {
            v16 = *(v2 + 9);
            v17 = v2[11];
          }

          sub_10125DE44(a1, v9);
          if (SHIBYTE(v17) < 0)
          {
            operator delete(v16);
          }

          v10 = &v14;
          if ((SHIBYTE(v15) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v7 = *(v2 + 8);
      }

      v18 = *(v2 + 20);
      if (*(v2 + 71) < 0)
      {
        sub_100005F2C(&v19, v2[6], v2[7]);
      }

      else
      {
        v19 = *(v2 + 3);
        v20 = v2[8];
      }

      if (*(v2 + 95) < 0)
      {
        sub_100005F2C(&__p, v2[9], v2[10]);
      }

      else
      {
        __p = *(v2 + 9);
        v22 = v2[11];
      }

      sub_10125DE44(a1, v7);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p);
      }

      v10 = &v19;
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

LABEL_23:
      operator delete(*v10);
LABEL_24:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }
}

void sub_101241CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101241D34(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 280))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v4 = *(a1 + 264);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 8) == *(v5 + 8);
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
        return;
      }
    }
  }

  else
  {
    v4 = *(a1 + 264);
  }

  v42 = (a1 + 272);
  if (v4 != (a1 + 272))
  {
    v11 = a2 + 1;
    v41 = a2 + 1;
    while (1)
    {
      v12 = *v11;
      v13 = *(v4 + 7);
      if (!*v11)
      {
        break;
      }

      v14 = v11;
      do
      {
        if (*(v12 + 28) >= v13)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 28) < v13));
      }

      while (v12);
      if (v14 == v11 || v13 < *(v14 + 7))
      {
        break;
      }

      v15 = (v4 + 4);
      if (*(v14 + 8) != *(v4 + 8))
      {
        goto LABEL_32;
      }

LABEL_58:
      v39 = v4[1];
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
          v40 = v4[2];
          v6 = *v40 == v4;
          v4 = v40;
        }

        while (!v6);
      }

      v4 = v40;
      if (v40 == v42)
      {
        return;
      }
    }

    v15 = (v4 + 4);
LABEL_32:
    v44 = *(v4 + 7);
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = asString();
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Handling RAT changed: %s", buf, 0xCu);
    }

    v19 = *v15;
    *buf = &v44;
    *(sub_1002D750C(a1 + 2560, &v44)[5] + 288) = v19;
    *buf = &v44;
    v20 = *(sub_1002D750C(a1 + 2560, &v44)[5] + 240) == 0;
    *buf = &v44;
    *(sub_1002D750C(a1 + 2560, &v44)[5] + 240) = 0;
    v21 = asWirelessTechnology();
    *buf = &v44;
    v22 = sub_1002D750C(a1 + 2560, &v44);
    *(v22[5] + 240) |= v21;
    *buf = &v44;
    if (*(sub_1002D750C(a1 + 2560, &v44)[5] + 240))
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    sub_10123AE44(a1, v44);
    sub_10123BFE4(a1, v44);
    sub_101240EA4(a1, v44);
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v31 = v30[3];
      v32 = v30[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        v33 = 0;
LABEL_45:
        (*(*v31 + 96))(&cf, v31, v44, 1, @"SuppressVMResetOnTechSwitch", kCFBooleanFalse, 0);
        v34 = cf;
        buf[0] = 0;
        if (cf)
        {
          v35 = CFGetTypeID(cf);
          if (v35 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(buf, v34, v36);
            LOBYTE(v34) = buf[0];
          }

          else
          {
            LOBYTE(v34) = 0;
          }
        }

        sub_10000A1EC(&cf);
        if ((v33 & 1) == 0)
        {
          sub_100004A34(v32);
        }

        if (v34)
        {
          v37 = *v16;
          v11 = v41;
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Suppressing the VM reset on activation of a new RAT because of the SuppressVMResetOnTechSwitch carrier bundle key", buf, 2u);
          }
        }

        else
        {
          v11 = v41;
          if (v23)
          {
            *buf = &v44;
            if (*(sub_1002D750C(a1 + 2560, &v44)[5] + 24))
            {
              *buf = &v44;
              v38 = sub_1002D750C(a1 + 2560, &v44);
              (*(**(v38[5] + 24) + 136))(*(v38[5] + 24), v44);
            }
          }
        }

        goto LABEL_58;
      }
    }

    else
    {
      v31 = 0;
    }

    std::mutex::unlock(v25);
    v32 = 0;
    v33 = 1;
    goto LABEL_45;
  }
}

void sub_10124229C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012422E0(uint64_t result)
{
  v1 = *(result + 2096);
  v2 = (result + 2104);
  if (v1 != (result + 2104))
  {
    v3 = result;
    do
    {
      v4 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v1 + 7));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = asString();
        *buf = 136315138;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband service provisioned state : %s", buf, 0xCu);
      }

      v6 = *(v1 + 7);
      v10[0] = off_101F20B70;
      v10[1] = v3;
      v10[3] = v10;
      sub_101243698(v3, v6, v10);
      result = sub_100A6EFFC(v10);
      v7 = v1[1];
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
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }

  return result;
}

void sub_10124245C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100A6EFFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101242478(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 328))
  {
    v3 = a2 + 1;
    v4 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v5 = *(result + 312);
    while (*(v4 + 7) == *(v5 + 7))
    {
      result = operator==();
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

  result = subscriber::makeSimSlotRange();
  v11 = v23;
  v12 = v24;
  if (v23 != v24)
  {
    v13 = v25;
    do
    {
      result = v25(*v11);
      if (result)
      {
        break;
      }

      ++v11;
    }

    while (v11 != v24);
    v14 = v24;
    if (v11 != v24)
    {
      v15 = (v2 + 320);
      do
      {
        v16 = *v11;
        v22 = *v11;
        v17 = *v15;
        if (*v15)
        {
          v18 = v2 + 320;
          v19 = *v15;
          do
          {
            if (*(v19 + 28) >= v16)
            {
              v18 = v19;
            }

            v19 = *(v19 + 8 * (*(v19 + 28) < v16));
          }

          while (v19);
          if (v18 != v15 && v16 >= *(v18 + 28))
          {
            while (1)
            {
              while (1)
              {
                v20 = *(v17 + 7);
                if (v20 <= v16)
                {
                  break;
                }

                v17 = *v17;
                if (!v17)
                {
                  goto LABEL_42;
                }
              }

              if (v20 >= v16)
              {
                break;
              }

              v17 = v17[1];
              if (!v17)
              {
LABEL_42:
                sub_1000A58E4("map::at:  key not found");
              }
            }

            v21 = ConnectionAvailabilityContainer::error();
            v26 = &v22;
            result = sub_1002D750C(v2 + 2560, &v22);
            *(*(result + 40) + 336) = v21;
          }
        }

        do
        {
          if (++v11 == v12)
          {
            break;
          }

          result = v13(*v11);
        }

        while ((result & 1) == 0);
      }

      while (v11 != v14);
    }
  }

  return result;
}

void sub_101242690(void *a1, void *a2)
{
  v3 = a1[286];
  if (a1[288] == a2[2])
  {
    v4 = a1 + 287;
    if (v3 == a1 + 287)
    {
      return;
    }

    v5 = *a2;
    v6 = a1[286];
    while (*(v6 + 8) == *(v5 + 8))
    {
      v7 = *(v6 + 63);
      if (v7 >= 0)
      {
        v8 = *(v6 + 63);
      }

      else
      {
        v8 = v6[6];
      }

      v9 = *(v5 + 63);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v5[6];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v6 + 5 : v6[5];
      v12 = v10 >= 0 ? v5 + 5 : v5[5];
      if (memcmp(v11, v12, v8))
      {
        break;
      }

      v13 = v6[1];
      v14 = v6;
      if (v13)
      {
        do
        {
          v6 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v6 = v14[2];
          v15 = *v6 == v14;
          v14 = v6;
        }

        while (!v15);
      }

      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v15 = *v17 == v5;
          v5 = v17;
        }

        while (!v15);
      }

      v5 = v17;
      if (v6 == v4)
      {
        return;
      }
    }
  }

  if (v3 != a1 + 287)
  {
    while (1)
    {
      memset(__p, 0, 32);
      LODWORD(__p[0]) = *(v3 + 8);
      if (*(v3 + 63) < 0)
      {
        sub_100005F2C(&__p[1], v3[5], v3[6]);
      }

      else
      {
        *&__p[1] = *(v3 + 5);
        __p[3] = *(v3 + 7);
      }

      if (subscriber::isValidSimSlot())
      {
        break;
      }

LABEL_59:
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      v31 = v3[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v3[2];
          v15 = *v32 == v3;
          v3 = v32;
        }

        while (!v15);
      }

      v3 = v32;
      if (v32 == a1 + 287)
      {
        return;
      }
    }

    *buf = __p;
    v18 = sub_1002D750C((a1 + 320), __p)[5];
    if ((*(v18 + 367) & 0x8000000000000000) != 0)
    {
      if (!*(v18 + 352))
      {
LABEL_39:
        *buf = __p;
        v19 = sub_1002D750C((a1 + 320), __p);
        std::string::operator=((v19[5] + 344), &__p[1]);
      }
    }

    else if (!*(v18 + 367))
    {
      goto LABEL_39;
    }

    v20 = HIBYTE(__p[3]);
    if (SHIBYTE(__p[3]) < 0)
    {
      v20 = __p[2];
    }

    if (v20)
    {
      *buf = __p;
      v21 = sub_1002D750C((a1 + 320), __p)[5];
      v22 = *(v21 + 367);
      if (v22 >= 0)
      {
        v23 = *(v21 + 367);
      }

      else
      {
        v23 = *(v21 + 352);
      }

      v24 = HIBYTE(__p[3]);
      if (SHIBYTE(__p[3]) < 0)
      {
        v24 = __p[2];
      }

      if (v23 != v24 || ((v25 = (v21 + 344), v26 = *(v21 + 344), v22 >= 0) ? (v27 = v25) : (v27 = v26), SHIBYTE(__p[3]) >= 0 ? (v28 = &__p[1]) : (v28 = __p[1]), memcmp(v27, v28, v23)))
      {
        *buf = __p;
        v29 = sub_1002D750C((a1 + 320), __p);
        std::string::operator=((v29[5] + 344), &__p[1]);
        sub_10122C574(a1, LODWORD(__p[0]));
        sub_10122AFDC(a1, __p[0]);
        v30 = a1[5];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to subscriber change", buf, 2u);
        }

        sub_10123032C(a1, 1);
      }
    }

    goto LABEL_59;
  }
}

void sub_101242A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101242A20(uint64_t a1, uint64_t *a2)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_101243980;
  v6[3] = &unk_101F1D5D8;
  v4 = *a2;
  v6[4] = a1;
  v6[5] = v4;
  sub_1000AE428(&v7, (a2 + 1));
  __p = 0;
  v19 = 0;
  v20 = 0;
  sub_100034C50(&__p, a2[21], a2[22], a2[22] - a2[21]);
  v21 = *(a2 + 96);
  v24 = 0;
  v25 = 0;
  sub_100004AA0(&v24, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v24;
  v23 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v25)
  {
    sub_100004A34(v25);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }
}

void sub_101242BD8(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_101242CC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 456);
  v3 = (a1 + 464);
  if (v2 != (a1 + 464))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
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
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_10125DA88(a1, v7);
    goto LABEL_13;
  }
}

void sub_101242D90(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(a1 + 96);
    if (v3 && sms::Model::getTextToEmergencyFlag(v3))
    {
      v4 = *(*(a1 + 96) + 8);
      v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Emergency ready", v20, 2u);
      }

      if (!sub_100A7F520())
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 2328);
      if (v6)
      {
        v7 = a1 + 2328;
        do
        {
          if (*(v6 + 28) >= v4)
          {
            v7 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 28) < v4));
        }

        while (v6);
        if (v7 != a1 + 2328 && *(v7 + 28) <= v4 && *(v7 + 32) == 1)
        {
          v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Emergency Text: In home country", buf, 2u);
          }

LABEL_17:
          sub_10123DAF4(a1, v4);
          sub_101230BE4(a1);
          return;
        }
      }

      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting home country determination timer", buf, 2u);
      }

      v11 = *(a1 + 16);
      if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
      {
        sub_100013CC4();
      }

      v14 = v13;
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      Registry::getTimerService(buf, *(a1 + 80));
      v15 = *buf;
      sub_10000501C(__p, "Home country determination");
      v16 = *(a1 + 24);
      object = v16;
      if (v16)
      {
        dispatch_retain(v16);
      }

      v20[0] = _NSConcreteStackBlock;
      v20[1] = 1174405120;
      v20[2] = sub_101243B44;
      v20[3] = &unk_101F1D608;
      v20[4] = a1;
      v20[5] = v12;
      v21 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v22 = v4;
      aBlock = _Block_copy(v20);
      sub_100D23364(v15, __p, 0, 10000000, &object, &aBlock);
      v17 = v29;
      v29 = 0;
      v18 = *(a1 + 2664);
      *(a1 + 2664) = v17;
      if (v18)
      {
        (*(*v18 + 8))(v18);
        v19 = v29;
        v29 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
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

      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28)
      {
        sub_100004A34(v28);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_weak(v21);
      }

      std::__shared_weak_count::__release_weak(v14);
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Emergency ready not successful", v20, 2u);
    }
  }
}

void sub_10124316C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    sub_100004A34(v28);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void sub_1012431D8(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/baseband_activated");
  v4[0] = off_101F205E0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124328C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1012432B8(uint64_t *result, uint64_t a2)
{
  v2 = result[320];
  v3 = result + 321;
  if (v2 != result + 321)
  {
    v5 = result;
    v6 = (a2 + 8);
    do
    {
      v7 = *(v2 + 8);
      v14 = v7;
      v8 = *v6;
      if (*v6)
      {
        v9 = v6;
        do
        {
          if (*(v8 + 28) >= v7)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v7));
        }

        while (v8);
        if (v9 != v6 && v7 >= *(v9 + 7))
        {
          v10 = *sub_1000A8C4C(a2, &v14);
          v15 = &v14;
          result = sub_1002D750C((v5 + 320), &v14);
          *(result[5] + 608) = v10;
        }
      }

      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  return result;
}

uint64_t *sub_1012433C8(uint64_t *result, uint64_t a2)
{
  v2 = result[320];
  v3 = result + 321;
  if (v2 != result + 321)
  {
    v5 = result;
    v6 = (a2 + 8);
    do
    {
      v7 = *(v2 + 8);
      v14 = v7;
      v8 = *v6;
      if (*v6)
      {
        v9 = v6;
        do
        {
          if (*(v8 + 28) >= v7)
          {
            v9 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v7));
        }

        while (v8);
        if (v9 != v6 && v7 >= *(v9 + 7))
        {
          v10 = *sub_1000A8C4C(a2, &v14);
          v15 = &v14;
          result = sub_1002D750C((v5 + 320), &v14);
          *(result[5] + 612) = v10;
        }
      }

      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
    }

    while (v12 != v3);
  }

  return result;
}

void sub_1012434D8(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/private_network_sims_active");
  v4[0] = off_101F20760;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124358C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1012435B8(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/prevent_detach_expiry_time");
  v4[0] = off_101F20960;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_10124366C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101243698(uint64_t a1, int a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v8 = ServiceMap;
  if ((v9 & 0x8000000000000000) != 0)
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
  v19 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v19);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_8:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_9:
  if ((subscriber::isValidSimSlot() & 1) == 0 && (v17 = *v6, os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid slot while handling Customer Ready", &v19, 2u);
    if (v15)
    {
LABEL_12:
      v20 = a2;
      v21 = a1;
      sub_100A72FF4(v22, a3);
      v22[7] = 0;
      operator new();
    }
  }

  else if (v15)
  {
    goto LABEL_12;
  }

  v18 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get activation interface while handling Customer Ready", &v19, 2u);
    if (v16)
    {
      return;
    }
  }

  else if (v16)
  {
    return;
  }

  sub_100004A34(v14);
}

void sub_101243934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10000FF50(va);
  sub_100A6EFFC(v9 + 16);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  _Unwind_Resume(a1);
}

void sub_101243980(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  sub_1001E0090(__p, *(a1 + 208), *(a1 + 216), *(a1 + 216) - *(a1 + 208));
  (*(*v2 + 472))(v2, *(a1 + 40), *(a1 + 44), a1 + 48, __p, a1 + 232, a1 + 233);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101243A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101243A40(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  sub_1000AE428(a1 + 48, a2 + 48);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  result = sub_100034C50(a1 + 208, *(a2 + 208), *(a2 + 216), *(a2 + 216) - *(a2 + 208));
  *(a1 + 232) = *(a2 + 232);
  return result;
}

void sub_101243AAC(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
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
    v3 = *(a1 + 56);

    operator delete(v3);
  }
}

void sub_101243B44(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v8) = 0;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Home country determination timeout", &v8, 2u);
        }

        v8 = 0uLL;
        sub_10123051C(v3, *(a1 + 56), 1, &v8);
        v7 = *(v3 + 2664);
        *(v3 + 2664) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101243C68(uint64_t a1, unsigned int a2)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  if (!*(a1 + 32))
  {
    v5 = 1;
LABEL_9:
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10125E568;
    v10[3] = &unk_101F20D40;
    v10[4] = a1 + 8;
    v10[5] = v8;
    v11 = v10;
    v6 = *(a1 + 24);
    v18 = 0;
    *buf = _NSConcreteStackBlock;
    v13 = 0x40000000;
    if (v5)
    {
      v14 = sub_1000593F4;
      v15 = &unk_101F1DB80;
      v16 = &v18;
      v17 = &v11;
      dispatch_sync(v6, buf);
    }

    else
    {
      v14 = sub_10006A350;
      v15 = &unk_101F1DBA0;
      v16 = &v18;
      v17 = &v11;
      dispatch_async_and_wait(v6, buf);
    }

    LOBYTE(isValidSimSlot) = v18;
    return isValidSimSlot & 1;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = *(a1 + 32) == 0;
    goto LABEL_9;
  }

  isValidSimSlot = subscriber::isValidSimSlot();
  if (isValidSimSlot)
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received a call to check if Service Center Address is Available", buf, 2u);
    }

    LOBYTE(isValidSimSlot) = sub_101243E5C(a1, v9);
  }

  return isValidSimSlot & 1;
}

BOOL sub_101243E5C(uint64_t a1, unsigned int a2)
{
  v7 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return 0;
  }

  *buf = &v7;
  v3 = sub_1002D750C(a1 + 2560, &v7);
  CSIPhoneNumber::getFullNumber(buf, (v3[5] + 80));
  if (v10 < 0)
  {
    v4 = v9 != 0;
    operator delete(*buf);
  }

  else
  {
    v4 = v10 != 0;
  }

  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service Center Address availability %d", buf, 8u);
  }

  return v4;
}

void sub_101243F98(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1012440A8;
  v4[3] = &unk_101F1D638;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
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

void sub_1012440A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (subscriber::isValidSimSlot())
  {
    v3 = *(a1 + 40);
    v11 = v3;
    if (subscriber::isValidSimSlot())
    {
      v4 = *(v2 + 112);
      if (v4 && ((*(*v4 + 80))(v4, v3) & 1) == 0)
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Service Center address fetch failed", &v8, 2u);
        }

        sub_10075C19C(&v8, 50);
        v7 = sub_100974768(&unk_101FCB970);
        sub_1009747AC(v7, &v8);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }

        v8 = 1;
        __p = (v2 + 2232);
        v12 = &v11;
        *(sub_100051AD8(v2 + 2264, &v11) + 32) = 1;
        sub_10125E628(&v8);
      }

      else
      {
        v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v8) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Service Center Address fetch action completed", &v8, 2u);
        }
      }
    }
  }
}

uint64_t sub_1012442A0(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  v44 = a2;
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  result = subscriber::isValidSimSlot();
  if (!result)
  {
    return result;
  }

  if (a3)
  {
    *&__p.var0 = &v44;
    v9 = sub_1002D750C(a1 + 2560, &v44)[5];
    *(v9 + 80) = *a4;
    std::string::operator=((v9 + 88), (a4 + 8));
    std::string::operator=((v9 + 112), (a4 + 32));
    v10 = *(a4 + 56);
    *(v9 + 140) = *(a4 + 60);
    *(v9 + 136) = v10;
    std::string::operator=((v9 + 144), (a4 + 64));
    v11 = *(a4 + 88);
    *(v9 + 176) = *(a4 + 96);
    *(v9 + 168) = v11;
    std::string::operator=((v9 + 184), (a4 + 104));
    std::string::operator=((v9 + 208), (a4 + 128));
    *(v9 + 232) = *(a4 + 152);
    v12 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v45 = &v44;
      v13 = sub_1002D750C(a1 + 2560, &v44);
      p_p = &__p;
      CSIPhoneNumber::getFullNumber(&__p.var0, (v13[5] + 80));
      if (__p.var2.__rep_.__s.__data_[15] < 0)
      {
        p_p = *&__p.var0;
      }

      v45 = &v44;
      v15 = sub_1002D750C(a1 + 2560, &v44);
      TypeOfAddress = CSIPhoneNumber::getTypeOfAddress((v15[5] + 80));
      *buf = 136315394;
      *&buf[4] = p_p;
      v47 = 1024;
      v48 = TypeOfAddress;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received Service Center Address %s with type %d", buf, 0x12u);
      if (__p.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&__p.var0);
      }
    }

    if (v44 == 2)
    {
      sub_10075C19C(&__p, 49);
      v24 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v24, &__p);
    }

    else
    {
      if (v44 != 1)
      {
LABEL_37:
        v25 = *(a1 + 2544);
        v26 = v44;
        *&__p.var0 = &v44;
        v27 = sub_1002D750C(a1 + 2560, &v44);
        CSIPhoneNumber::getFullNumber(v42, (v27[5] + 80));
        (*(*v25 + 152))(v25, v26, v42);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        *&__p.var0 = 1;
        __p.var2.__rep_.__l.__data_ = (a1 + 2120);
        *buf = &v44;
        *(sub_100051AD8(a1 + 2152, &v44) + 32) = 1;
        return sub_10125E690(&__p);
      }

      sub_10075C19C(&__p, 48);
      v17 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v17, &__p);
    }

    if (__p.var2.__rep_.__l.__data_)
    {
      __p.var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__data_;
      operator delete(__p.var2.__rep_.__l.__data_);
    }

    goto LABEL_37;
  }

  v18 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.var0) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I SMSC Fetch error", &__p, 2u);
  }

  CSIPhoneNumber::CSIPhoneNumber(&__p);
  *buf = &v44;
  v19 = sub_1002D750C(a1 + 2560, &v44)[5];
  *(v19 + 80) = *&__p.var0;
  if (*(v19 + 111) < 0)
  {
    operator delete(*(v19 + 88));
  }

  *(v19 + 88) = __p.var2;
  *(&__p.var2.__rep_.__l + 23) = 0;
  __p.var2.__rep_.__s.__data_[0] = 0;
  if (*(v19 + 135) < 0)
  {
    operator delete(*(v19 + 112));
  }

  *(v19 + 112) = v29;
  *(v19 + 128) = v30;
  HIBYTE(v30) = 0;
  LOBYTE(v29) = 0;
  *(v19 + 136) = v31;
  *(v19 + 140) = v32;
  if (*(v19 + 167) < 0)
  {
    operator delete(*(v19 + 144));
  }

  *(v19 + 144) = v33;
  v20 = v34;
  HIBYTE(v34) = 0;
  LOBYTE(v33) = 0;
  v21 = v35;
  *(v19 + 160) = v20;
  *(v19 + 168) = v21;
  *(v19 + 176) = v36;
  if (*(v19 + 207) < 0)
  {
    operator delete(*(v19 + 184));
  }

  *(v19 + 184) = v37;
  *(v19 + 200) = v38;
  HIBYTE(v38) = 0;
  LOBYTE(v37) = 0;
  if (*(v19 + 231) < 0)
  {
    operator delete(*(v19 + 208));
    v22 = SHIBYTE(v38);
    *(v19 + 208) = v39;
    *(v19 + 224) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    *(v19 + 232) = v41;
    if (v22 < 0)
    {
      operator delete(v37);
    }
  }

  else
  {
    *(v19 + 208) = v39;
    *(v19 + 224) = v40;
    HIBYTE(v40) = 0;
    LOBYTE(v39) = 0;
    *(v19 + 232) = v41;
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if (*(&__p.var2.__rep_.__l + 23) < 0)
  {
    operator delete(__p.var2.__rep_.__l.__data_);
  }

  sub_10075C19C(&__p, 50);
  v23 = sub_100974768(&unk_101FCB970);
  sub_1009747AC(v23, &__p);
  if (__p.var2.__rep_.__l.__data_)
  {
    __p.var2.__rep_.__l.__size_ = __p.var2.__rep_.__l.__data_;
    operator delete(__p.var2.__rep_.__l.__data_);
  }

  *&__p.var0 = 1;
  __p.var2.__rep_.__l.__data_ = (a1 + 2232);
  *buf = &v44;
  *(sub_100051AD8(a1 + 2264, &v44) + 32) = 1;
  return sub_10125E628(&__p);
}

void sub_101244830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012448B4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v10 = a3;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a2;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      isValidSimSlot = subscriber::isValidSimSlot();
      if (isValidSimSlot)
      {
        LOBYTE(isValidSimSlot) = sub_101244A4C(a1, a2, v10);
      }

      return isValidSimSlot & 1;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10125E6F8;
  v11[3] = &unk_101F20D60;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_1000593F4;
    v15 = &unk_101F1DB80;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A350;
    v15 = &unk_101F1DBA0;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  LOBYTE(isValidSimSlot) = v18;
  return isValidSimSlot & 1;
}

uint64_t sub_101244A4C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v14 = a3;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v15 = &v14;
    v6 = sub_1002D750C(a1 + 2560, &v14);
    CSIPhoneNumber::getFullNumber(v12, (v6[5] + 80));
    if (v13 < 0)
    {
      v10 = v12[1];
      operator delete(v12[0]);
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else if (v13)
    {
LABEL_4:
      v12[0] = &v14;
      v7 = sub_1002D750C(a1 + 2560, &v14)[5];
      *a2 = *(v7 + 80);
      std::string::operator=((a2 + 8), (v7 + 88));
      std::string::operator=((a2 + 32), (v7 + 112));
      v8 = *(v7 + 140);
      *(a2 + 56) = *(v7 + 136);
      *(a2 + 60) = v8;
      std::string::operator=((a2 + 64), (v7 + 144));
      v9 = *(v7 + 176);
      *(a2 + 88) = *(v7 + 168);
      *(a2 + 96) = v9;
      std::string::operator=((a2 + 104), (v7 + 184));
      std::string::operator=((a2 + 128), (v7 + 208));
      *(a2 + 152) = *(v7 + 232);
      return 1;
    }

    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v14);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v12[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "SMSC Address is not available", v12, 2u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_101244BEC(uint64_t a1, unsigned int a2)
{
  v7 = a2;
  v6[0] = a1;
  v6[1] = &v7;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      if (subscriber::isValidSimSlot())
      {
        return sub_101244D7C(a1, v7);
      }

      else
      {
        return 300;
      }
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_10125E754;
  v8[3] = &unk_101F20D80;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v11 = sub_10125E7B4;
    v12 = &unk_101F20DA0;
    v13 = &v15;
    v14 = &v9;
    v15 = 0;
    dispatch_sync(v5, block);
  }

  else
  {
    v11 = sub_10125E7F0;
    v12 = &unk_101F20DC0;
    v13 = &v15;
    v14 = &v9;
    v15 = 0;
    dispatch_async_and_wait(v5, block);
  }

  return v15;
}

uint64_t sub_101244D7C(uint64_t a1, uint64_t a2)
{
  theDict = 0;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v15 = 1;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
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
  v15 = 0;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_10:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v14);
  (*(*v13 + 96))(&v26, v13, a2, 1, SMSCarrierBundleString, 0, 0);
  sub_100010180(&v27, &v26);
  v17 = theDict;
  theDict = v27;
  *buf = v17;
  v27 = 0;
  sub_10001021C(buf);
  sub_10001021C(&v27);
  sub_10000A1EC(&v26);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"EmergencyModeTimerForTextToEmergency");
    v19 = Value;
    v20 = 300;
    *buf = 300;
    if (!Value)
    {
      goto LABEL_17;
    }

    v21 = CFGetTypeID(Value);
    if (v21 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v19, v22);
      v20 = *buf;
      goto LABEL_17;
    }
  }

  else
  {
    v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to get Carrier interface for Text To Emergency Timer reading", buf, 2u);
    }
  }

LABEL_16:
  v20 = 300;
LABEL_17:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v24 = *v4;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Emergency Text timer value %d", buf, 8u);
  }

  sub_10001021C(&theDict);
  return v20;
}

void sub_101245050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1012450A8(uint64_t a1, uint64_t a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1012451B8;
  v5[3] = &unk_101F1D658;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1012451B8(uint64_t a1)
{
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  *v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  sub_1000AE428(v13, *(a1 + 40));
  if (subscriber::isValidSimSlot())
  {
    v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
    v4 = *(v2 + 112);
    if (v4 && ((*(*v4 + 88))(v4, *(a1 + 48), v13) & 1) == 0)
    {
      v8 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Call to set SMSC has failed", &v10, 2u);
      }

      sub_10075C19C(&v10, 52);
      v9 = sub_100974768(&unk_101FCB970);
      sub_1009747AC(v9, &v10);
      v7 = __p;
      if (__p)
      {
        v12 = __p;
        goto LABEL_14;
      }
    }

    else
    {
      v5 = *v3;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        CSIPhoneNumber::getFullNumber(&v10, *(a1 + 40));
        v6 = SHIBYTE(v12) >= 0 ? &v10 : v10;
        *buf = 136315138;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sent Set SMSC Address request to baseband with number %s", buf, 0xCu);
        if (SHIBYTE(v12) < 0)
        {
          v7 = v10;
LABEL_14:
          operator delete(v7);
        }
      }
    }
  }

  if (SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }
}

void sub_1012453E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10034F8E8(&a13);
  _Unwind_Resume(a1);
}

void sub_101245428(uint64_t a1, int a2, uint64_t a3)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
  if (subscriber::isValidSimSlot())
  {
    if (a2)
    {
      sub_10075C19C(&v5, 51);
    }

    else
    {
      sub_10075C19C(&v5, 52);
    }

    v4 = sub_100974768(&unk_101FCB970);
    sub_1009747AC(v4, &v5);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }
  }
}

void sub_1012454F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245518(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = *v8;
  v10 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    *v30 = 136315394;
    *&v30[4] = CSIBOOLAsString(a3);
    v31 = 1024;
    v32 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received voicemail Info isWaiting: %s num: %d", v30, 0x12u);
  }

  v11 = *(a1 + 392);
  v12 = *(a1 + 384);
  if (v12 == v11)
  {
    v26 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v30 = 0;
    v27 = "sims is empty. Dropping voicemail Indication...";
LABEL_26:
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v27, v30, 2u);
    return;
  }

  v13 = 0;
  do
  {
    v15 = *v12 == a2 && v12[2] == 5;
    v13 |= v15;
    v12 += 42;
  }

  while (v12 != v11);
  if ((v13 & 1) == 0)
  {
    v26 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *v30 = 0;
    v27 = "sim slot not in ready state. Dropping voicemail Indication...";
    goto LABEL_26;
  }

  if (capabilities::ct::supportsVoiceCall(v10))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v17 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    *v30 = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, v30);
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
LABEL_35:
          if ((v25 & 1) == 0)
          {
            sub_100004A34(v23);
          }

          return;
        }

LABEL_31:
        if (a4 <= 0)
        {
          v29 = 0xFFFFFFFFLL;
        }

        else
        {
          v29 = a4;
        }

        (*(*v24 + 16))(v24, a2, a3, a4 > 0, v29, 0);
        goto LABEL_35;
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
      goto LABEL_35;
    }

    goto LABEL_31;
  }

  v28 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I handleVoicemailNotification_sync: Device does not support Voicecalls, ignoring Voicemail Indication", v30, 2u);
  }
}

void sub_101245808(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245838(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_10:
    (*(*v11 + 24))(v11, a2);
  }

LABEL_11:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_101245948(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101245964(uint64_t a1, uint64_t a2, char a3, int a4, char a5)
{
  v23 = a2;
  if (subscriber::isValidSimSlot())
  {
    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    *buf = &v23;
    if (*(sub_1002D750C(a1 + 2560, &v23)[5] + 42) == 1 && (a3 & 1) == 0 && ((*buf = &v23, v11 = sub_1002D750C(a1 + 2560, &v23), !a4) && *(v11[5] + 24) == *(a1 + 128) || (*buf = &v23, v12 = sub_1002D750C(a1 + 2560, &v23), a4 == 1) && *(v12[5] + 24) == *(a1 + 112)))
    {
      v13 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        if (a4 == 1)
        {
          v14 = "Agent";
        }

        else
        {
          v14 = "Baseband";
        }

        *buf = &v23;
        if (*(sub_1002D750C(a1 + 2560, &v23)[5] + 24) == *(a1 + 128))
        {
          v15 = "Agent";
        }

        else
        {
          v15 = "Baseband";
        }

        *buf = 136315394;
        *&buf[4] = v14;
        v25 = 2080;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ignoring Registration status from wrong transport [%s] as we are currently IMS Registered on [%s]", buf, 0x16u);
      }
    }

    else
    {
      *buf = &v23;
      *(sub_1002D750C(a1 + 2560, &v23)[5] + 42) = a3;
      *buf = &v23;
      v16 = sub_1002D750C(a1 + 2560, &v23);
      if (a4 == 1 && (*(v16[5] + 42) & 1) != 0)
      {
        *buf = &v23;
        *(sub_1002D750C(a1 + 2560, &v23)[5] + 294) = a5;
      }

      sub_101229274(a1, v23);
      sub_10123AE44(a1, v23);
      v17 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v23;
        v18 = sub_1002D750C(a1 + 2560, &v23);
        v19 = CSIBOOLAsString(*(v18[5] + 42));
        *buf = &v23;
        v20 = sub_1002D750C(a1 + 2560, &v23);
        v21 = CSIBOOLAsString(*(v20[5] + 294));
        *buf = 136315394;
        *&buf[4] = v19;
        v25 = 2080;
        v26 = v21;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I IMS registered: %s, Over Wifi: %s", buf, 0x16u);
      }

      sub_101240EA4(a1, v23);
      v22 = v23;
      if (sub_101245CF8(a1, v23))
      {
        sub_10122EA90(a1, v22);
      }
    }
  }
}

BOOL sub_101245CF8(uint64_t a1, int a2)
{
  v8 = a2;
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  *buf = &v8;
  v4 = sub_1002D750C(a1 + 2560, &v8);
  if (*(v4[5] + 512) == *(v4[5] + 520) || *(a1 + 2376) != 2)
  {
    return 0;
  }

  v5 = sub_101245E20(a1);
  v6 = *v3;
  result = os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Active Call. Emergency text held.", buf, 2u);
    return 0;
  }

  if (result)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Pending messages in queue will be released.", buf, 2u);
  }

  return 1;
}

uint64_t sub_101245E20(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1 == (a1 + 216))
  {
    return 0;
  }

  while (*(v1 + 57) != 1 || (v1[7] & 1) == 0)
  {
    v2 = v1[1];
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *v2;
      }

      while (v2);
    }

    else
    {
      do
      {
        v3 = v1[2];
        v4 = *v3 == v1;
        v1 = v3;
      }

      while (!v4);
    }

    v1 = v3;
    if (v3 == (a1 + 216))
    {
      return 0;
    }
  }

  return 1;
}

void sub_101245E8C(uint64_t a1, int a2, char a3)
{
  if (subscriber::isValidSimSlot())
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_101245FBC;
    v7[3] = &unk_101F1D678;
    v7[4] = a1;
    v8 = a2;
    v9 = a3;
    v12 = 0;
    v13 = 0;
    sub_100004AA0(&v12, (a1 + 8));
    v6 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10124E2F8;
    block[3] = &unk_101F1DB30;
    block[5] = v12;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v7;
    dispatch_async(v6, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void sub_101245FBC(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 40));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sms::asString(*(a1 + 44));
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I BB service ready received: %s", buf, 0xCu);
  }

  *buf = v2;
  v6 = *(sub_1002D750C(v3 + 2560, v2)[5] + 285);
  v7 = *(a1 + 44);
  if (v6 != v7)
  {
    *buf = v2;
    *(sub_1002D750C(v3 + 2560, v2)[5] + 285) = v7;
    sub_10122C860(v3, *v2);
    sub_10123BFE4(v3, *v2);
    sms::Controller::setupBasebandForCellBroadcast_sync(v3, *v2);
    sub_1012461C0(v3, *v2);
  }

  *buf = v2;
  if (*(sub_1002D750C(v3 + 2560, v2)[5] + 285))
  {
    sub_101229274(v3, *v2);
    v8 = *v2;
    if (sub_101245CF8(v3, *v2))
    {
      sub_10122EA90(v3, v8);
    }
  }

  if (!v6)
  {
    *buf = v2;
    if (*(sub_1002D750C(v3 + 2560, v2)[5] + 293) == 1)
    {
      sub_10122EA90(v3, *v2);
    }
  }
}

void sub_1012461C0(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_101249B78;
  v4[3] = &unk_101F1D708;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
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

void sub_1012462D0(uint64_t a1, int a2)
{
  if (subscriber::isValidSimSlot())
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 0x40000000;
    v5[2] = sub_1012463F0;
    v5[3] = &unk_101F1D698;
    v5[4] = a1;
    v6 = a2;
    v9 = 0;
    v10 = 0;
    sub_100004AA0(&v9, (a1 + 8));
    v4 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10124E2F8;
    block[3] = &unk_101F1DB30;
    block[5] = v9;
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v5;
    dispatch_async(v4, block);
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

uint64_t *sub_1012463F0(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 40));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CellBroadcast service ready received", v5, 2u);
  }

  sms::Controller::setupBasebandForCellBroadcast_sync(v2, *v1);
  v6 = v1;
  result = sub_1002D750C(v2 + 2560, v1);
  *(result[5] + 295) = 1;
  return result;
}

void sub_1012464C4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v12[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, v12);
  if (v9 && (v10 = v9[4]) != 0)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v4);
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  else
  {
    std::mutex::unlock(v4);
  }

  CSIPhoneNumber::CSIPhoneNumber();
  CSIPhoneNumber::CSIPhoneNumber();
  v11 = *(a2 + 8);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12[4] = 0;
  operator new();
}

void sub_101246738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_100FF5034(v31 - 104);
  sub_10034F8E8(&a9);
  sub_10034F8E8(&a29);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012467A4(uint64_t a1, uint64_t a2, int a3, CSIPhoneNumber *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v30 = a2;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    memset(&__str, 0, sizeof(__str));
    v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    CSIPhoneNumber::getFullNumber(&__p, a4);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      size = __p.__r_.__value_.__l.__size_;
      operator delete(__p.__r_.__value_.__l.__data_);
      if (size)
      {
        goto LABEL_4;
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
LABEL_4:
      CSIPhoneNumber::getFullNumber(&__p, a4);
      goto LABEL_13;
    }

    v16 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v27[0] = &v30;
      v17 = sub_1002D750C(a1 + 2560, &v30);
      CSIPhoneNumber::getFullNumber(&__p, (v17[5] + 80));
      v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I sendProactiveSms: Address not provided by SIM. Setting to Service Center Number (SMSC) - %s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    *&buf = &v30;
    v19 = sub_1002D750C(a1 + 2560, &v30);
    CSIPhoneNumber::getFullNumber(&__p, (v19[5] + 80));
LABEL_13:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str = __p;
    v20 = *(a5 + 23);
    if (v20 >= 0)
    {
      v21 = a5;
    }

    else
    {
      v21 = *a5;
    }

    if (v20 >= 0)
    {
      v22 = *(a5 + 23);
    }

    else
    {
      v22 = *(a5 + 8);
    }

    v36 = 0;
    buf = 0uLL;
    sub_1001E0D88(&buf, v21, v21 + v22, v22);
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
    sub_10123802C(v27, &buf);
    v23 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v27;
      if (v28 < 0)
      {
        v24 = v27[0];
      }

      p_str = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      v26 = *a7;
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315906;
      *(__p.__r_.__value_.__r.__words + 4) = v24;
      WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
      *(&__p.__r_.__value_.__r.__words[1] + 6) = p_str;
      HIWORD(__p.__r_.__value_.__r.__words[2]) = 1024;
      v32 = a3;
      v33 = 1024;
      v34 = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Sending Proactive SMS %s to Address - %s session %d isPackingRequired %d", &__p, 0x22u);
    }

    operator new();
  }

  return result;
}

void sub_101247200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (*(v31 - 113) < 0)
  {
    operator delete(*(v31 - 136));
  }

  sub_100004A34(v30);
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 112);
  if (v33)
  {
    *(v31 - 104) = v33;
    operator delete(v33);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101247394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = subscriber::isValidSimSlot();
  if (result)
  {
    (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
    operator new();
  }

  return result;
}

void sub_101247688(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  sub_100004A34(v1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_101247724(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 24))(v2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v4 = **(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Simulated SMS received", v5, 2u);
  }
}

void sub_1012477DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012477F4(uint64_t result, uint64_t a2)
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

void sub_101247810(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101247820(uint64_t a1, char a2)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  if (a2)
  {
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v21 = 0;
    v4 = "#I Successfully stored MWI info from SMS over IMS";
    v5 = &v21;
    v6 = v3;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
    return;
  }

  v8 = *(a1 + 32);
  v9 = os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR);
  if (v9)
  {
    *v23 = 0;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Failed to store MWI info from SMS over IMS. Set VM state anyway", v23, 2u);
  }

  if (!capabilities::ct::supportsVoiceCall(v9))
  {
    v20 = **(a1 + 40);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "#I Device does not support Voicecalls, ignoring Voicemail Indication";
    v5 = buf;
    v6 = v20;
    goto LABEL_16;
  }

  ServiceMap = Registry::getServiceMap(*(v8 + 80));
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
  v24 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v24);
  if (!v16)
  {
    v18 = 0;
LABEL_18:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_19:
    (*(*v18 + 16))(v18, *(a1 + 48), *(a1 + 56));
  }

LABEL_20:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_101247A18(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101247A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a2;
  v10 = a1;
  v77 = a2;
  v76 = 5;
  if (*(a3 + 23) >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a4;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Destination port is: %d", buf, 8u);
    v9 = v77;
  }

  cf[0] = @"SMSSettings";
  cf[1] = @"UseAlternateVVMPort";
  memset(buf, 0, 24);
  sub_10005B328(buf, cf, &v80, 2uLL);
  v68 = (v10 + 80);
  ServiceMap = Registry::getServiceMap(*(v10 + 80));
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
  cf[0] = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, cf);
  if (v20)
  {
    v21 = v20[3];
    v22 = v20[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v23 = 0;
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v22 = 0;
  v23 = 1;
  if (!v21)
  {
LABEL_12:
    v24 = 5499;
    if (v23)
    {
      goto LABEL_24;
    }

LABEL_23:
    sub_100004A34(v22);
    goto LABEL_24;
  }

LABEL_16:
  (*(*v21 + 104))(cf, v21, v9, 1, buf, kCFBooleanFalse, 0);
  v25 = cf[0];
  LOBYTE(v73) = 0;
  if (cf[0] && (v26 = CFGetTypeID(cf[0]), v26 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(&v73, v25, v27);
    if (v73)
    {
      v24 = 5496;
    }

    else
    {
      v24 = 5499;
    }
  }

  else
  {
    v24 = 5499;
  }

  sub_10000A1EC(cf);
  if ((v23 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if ((a4 - 5497) < 2 || v24 == a4)
  {
    if (v11 >= 0x400)
    {
      v30 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v11;
        *&buf[12] = 2048;
        *&buf[14] = 1024;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Got a network notification of length: %lu, max: %lu", buf, 0x16u);
      }

      v29 = 3;
      goto LABEL_162;
    }

    v73 = 0;
    sub_101249A38(&v73, a3, 0);
    if (!v73)
    {
      v54 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Failed to convert SMS body to UTF8 string which is expected", buf, 2u);
      }

      v29 = 1;
      goto LABEL_106;
    }

    v83 = 0;
    memset(buf, 0, sizeof(buf));
    NetworkNotification::NetworkNotification(buf, v73);
    v32 = NetworkNotification::type(v31);
    v33 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v34 = asString();
      LODWORD(cf[0]) = 136315138;
      *(cf + 4) = v34;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as %s", cf, 0xCu);
    }

    v29 = 0;
    if (v32 <= 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          (*(**(v10 + 2544) + 16))(*(v10 + 2544), v77, buf, a5);
          v29 = 0;
          v76 = 0;
        }
      }

      else
      {
        v29 = 2;
      }

      goto LABEL_105;
    }

    if (v32 == 2)
    {
      (*(**(v10 + 2544) + 88))(*(v10 + 2544), v77, buf);
      v29 = 0;
      v57 = 3;
    }

    else
    {
      if (v32 != 3)
      {
LABEL_105:
        NetworkNotification::~NetworkNotification(buf);
LABEL_106:
        sub_100005978(&v73);
        goto LABEL_162;
      }

      cf[0] = &v77;
      if (*(sub_1002D750C(v10 + 2560, &v77)[5] + 624) == 1)
      {
        cf[0] = &v77;
        v56 = sub_1002D750C(v10 + 2560, &v77)[5];
        *(v56 + 616) = 0;
        *(v56 + 624) = 0;
      }

      (*(**(v10 + 2544) + 24))(*(v10 + 2544), buf, v77);
      v29 = 0;
      v57 = 2;
    }

    v76 = v57;
    goto LABEL_105;
  }

  if (a4 == 7275)
  {
    v28 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Handled SUPL INIT MT SMS notification", buf, 2u);
    }

    (*(**(v10 + 2544) + 96))(*(v10 + 2544), v77, a3);
    v29 = 0;
    v76 = 4;
    goto LABEL_162;
  }

  shouldBlockCarrierMessaging = MessageCenterModel::shouldBlockCarrierMessaging(v68);
  v36 = shouldBlockCarrierMessaging;
  if (a4 == 2948)
  {
    v37 = *(a3 + 23);
    if (v37 >= 0)
    {
      v38 = a3;
    }

    else
    {
      v38 = *a3;
    }

    if (v37 >= 0)
    {
      v39 = *(a3 + 23);
    }

    else
    {
      v39 = *(a3 + 8);
    }

    v74 = 0;
    v75 = 0;
    v73 = 0;
    sub_1001E0D88(&v73, v38, v38 + v39, v39);
    __p = 0;
    v71 = 0;
    v72 = 0;
    sub_10123802C(&__p, &v73);
    v40 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if (v72 < 0)
      {
        p_p = __p;
      }

      *buf = 136642819;
      *&buf[4] = p_p;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I WAP push (as hex str): %{sensitive}s", buf, 0xCu);
    }

    if ((v36 & 1) == 0 && (*(**(v10 + 2544) + 104))(*(v10 + 2544), v77, a3, a5))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Handled WAP push as MMS notification", buf, 2u);
      }

      v29 = 0;
      v44 = 1;
LABEL_92:
      v76 = v44;
      v55 = 2;
      goto LABEL_151;
    }

    if ((*(**(v10 + 2544) + 112))(*(v10 + 2544), v77, a3))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Handled WAP push as SUPL INIT notification", buf, 2u);
      }

      v29 = 0;
      v44 = 4;
      goto LABEL_92;
    }

    if (v36)
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Messages is not installed and no default carrier messaging app is selected, dropping incoming message.", buf, 2u);
      }

      v76 = 5;
      v55 = 2;
      v29 = 2;
LABEL_151:
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__p);
      }

      if (v73)
      {
        v74 = v73;
        operator delete(v73);
      }

      if (v55)
      {
        v64 = v55 == 2;
        v10 = v42;
        if (!v64)
        {
          return v40;
        }

        goto LABEL_162;
      }

      v10 = v42;
      if (v36)
      {
        goto LABEL_159;
      }

LABEL_162:
      LOBYTE(v40) = v76;
      sms::Controller::submitNetworkNotificationMetric(v10, v77, a4, v76, v29);
      return v40;
    }

    *v78 = 0;
    sub_101249A38(v78, a3, 0);
    if (!*v78)
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Failed to convert SMS body to UTF8 string which is expected", buf, 2u);
      }

      else
      {
        v55 = 2;
      }

      v29 = 2;
      goto LABEL_150;
    }

    v83 = 0;
    memset(buf, 0, sizeof(buf));
    NetworkNotification::NetworkNotification(buf, *v78);
    if (sub_101249AA4(v10, v77, buf, a5, &v76))
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Wap push handled as either voicemail or PNR", cf, 2u);
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v55 = 2;
      }

      goto LABEL_149;
    }

    if (v11 > 4)
    {
      sub_101249A38(v69, a3, 4uLL);
      cf[0] = *v78;
      *v78 = *v69;
      *v69 = 0;
      sub_100005978(cf);
      sub_100005978(v69);
      if (*v78)
      {
        v81 = 0;
        *cf = 0u;
        v80 = 0u;
        NetworkNotification::NetworkNotification(cf, *v78);
        if (sub_101249AA4(v10, v77, cf, a5, &v76))
        {
          v42 = v10;
          v43 = v12;
          v40 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            v55 = 2;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Wap push handled as either voicemail or PNR", v69, 2u);
            v29 = 0;
          }

          else
          {
            v29 = 0;
            v55 = 2;
          }
        }

        else
        {
          v43 = v12;
          v42 = v10;
          v55 = 0;
          v29 = 2;
        }

        NetworkNotification::~NetworkNotification(cf);
        goto LABEL_149;
      }

      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v59 = "#I Failed to convert SMS body to UTF8 string which is expected";
        goto LABEL_130;
      }
    }

    else
    {
      v42 = v10;
      v43 = v12;
      v40 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(cf[0]) = 0;
        v59 = "#I WAP push too small to handle carrier specific case";
LABEL_130:
        v55 = 2;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v59, cf, 2u);
LABEL_132:
        v29 = 2;
LABEL_149:
        NetworkNotification::~NetworkNotification(buf);
LABEL_150:
        sub_100005978(v78);
        goto LABEL_151;
      }
    }

    v55 = 2;
    goto LABEL_132;
  }

  v43 = v12;
  if (shouldBlockCarrierMessaging)
  {
LABEL_159:
    v65 = *v43;
    if (os_log_type_enabled(*v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Messages is not installed and no default carrier messaging app is selected, dropping incoming message.", buf, 2u);
    }

    v76 = 5;
    v29 = 2;
    goto LABEL_162;
  }

  if (a4 != 37273)
  {
LABEL_146:
    v29 = 0;
    goto LABEL_162;
  }

  v45 = *(v10 + 2528);
  if (v45)
  {
    v46 = v10 + 2528;
    do
    {
      if (*(v45 + 28) >= v77)
      {
        v46 = v45;
      }

      v45 = *(v45 + 8 * (*(v45 + 28) < v77));
    }

    while (v45);
    if (v46 != v10 + 2528 && v77 >= *(v46 + 28) && (*sub_1000A8C4C(v10 + 2520, &v77) & 1) != 0)
    {
      cf[0] = 0;
      cf[1] = 0;
      sub_10124996C(cf, *v68);
      v47 = v10;
      v73 = 0;
      v74 = 0;
      if (cf[0] && ((*(*cf[0] + 16))(&v73), (v48 = v73) != 0))
      {
        if (a6 == 4)
        {
          __p = 0;
          v71 = 0;
          ctu::TextConverter::TextConverter(&__p);
          v49 = *(a3 + 23);
          if (v49 >= 0)
          {
            v50 = a3;
          }

          else
          {
            v50 = *a3;
          }

          if (v49 >= 0)
          {
            v51 = *(a3 + 23);
          }

          else
          {
            v51 = *(a3 + 8);
          }

          ctu::TextConverter::setSource(&__p, v50, v51);
          ctu::TextConverter::pushConversion();
          memset(buf, 0, 24);
          ctu::TextConverter::readChars(buf, &__p, 0x7FFFFFFFuLL);
          v52 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v53 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v53 = *buf;
            }

            *v78 = 136315138;
            *&v78[4] = v53;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Handling lazuli binary SMS: [%{senstive}s]", v78, 0xCu);
          }

          (*(v73->isa + 9))(v73, v77, buf);
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }

          ctu::TextConverter::~TextConverter(&__p);
        }

        else
        {
          v61 = *v12;
          if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
          {
            v62 = *(a3 + 23);
            if ((v62 & 0x80u) == 0)
            {
              v63 = a3;
            }

            else
            {
              v63 = *a3;
            }

            if ((v62 & 0x80u) != 0)
            {
              v62 = *(a3 + 8);
            }

            *buf = 136315394;
            *&buf[4] = v63;
            *&buf[12] = 2048;
            *&buf[14] = v62;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Handling lazuli SMS: [%{senstive}s] [%lu]", buf, 0x16u);
            v48 = v73;
          }

          (*(v48->isa + 9))(v48, v77, a3);
        }
      }

      else
      {
        v60 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "Failed to find lazuli manager...", buf, 2u);
        }
      }

      if (v74)
      {
        sub_100004A34(v74);
      }

      v10 = v47;
      if (cf[1])
      {
        sub_100004A34(cf[1]);
      }

      goto LABEL_146;
    }
  }

  v58 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Unhandled lazuli SMS: Feature not enabled", buf, 2u);
  }

  LOBYTE(v40) = 5;
  return v40;
}

void sub_1012488B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, std::__shared_weak_count *a27)
{
  if (*(v27 - 121) < 0)
  {
    operator delete(*(v27 - 144));
  }

  ctu::TextConverter::~TextConverter(&__p);
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1012489F8(uint64_t a1, int a2)
{
  v10 = a2;
  __p[0] = &v10;
  if (*(sub_1002D750C(a1 + 2560, &v10)[5] + 624) != 1)
  {
    return 0;
  }

  Registry::getTimerService(__p, *(a1 + 80));
  v3 = (**__p[0])(__p[0]);
  v9.__locale_ = &v10;
  v4 = v3 - *(sub_1002D750C(a1 + 2560, &v10)[5] + 616);
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v5 = v4 < 180000000000;
  v6 = v4 < 180000000000;
  if (v5)
  {
    sub_1001C7FB0(&v9, "^REG-RESP\\?v=[235];r=\\d+;n=\\+\\d+;s=[0-9A-Za-z]+$", 0);
  }

  __p[0] = &v10;
  v7 = sub_1002D750C(a1 + 2560, &v10)[5];
  *(v7 + 616) = 0;
  *(v7 + 624) = 0;
  return v6;
}

void sub_101248BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1001C3924(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101248BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v76 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v12 = ServiceMap;
  v14 = v13;
  if (v13 < 0)
  {
    v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
  v18 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v18)
  {
    v20 = 0;
    goto LABEL_10;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
LABEL_10:
    std::mutex::unlock(v12);
    v19 = 0;
    v21 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
LABEL_11:
  *buf = &v76;
  if (!*(sub_1002D750C(a1 + 2560, &v76)[5] + 336) || (*buf = &v76, *(sub_1002D750C(a1 + 2560, &v76)[5] + 294) == 1))
  {
    valuePtr = -1;
    number = 0;
    if (!v20)
    {
      v73 = 0;
LABEL_46:
      sub_100005978(&v73);
      sub_100029A48(&number);
      goto LABEL_47;
    }

    (*(*v20 + 96))(&v73, v20, v76, 1, @"VMSMFilterProtocolID", 0, 0);
    sub_10010B240(__p, &v73);
    *buf = number;
    number = __p[0];
    __p[0] = 0;
    sub_100029A48(buf);
    sub_100029A48(__p);
    sub_10000A1EC(&v73);
    if (number && CFNumberGetValue(number, kCFNumberIntType, &valuePtr) && valuePtr == a5)
    {
      v69 = a3;
      v23 = *v10;
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Protocol identifier filter matched", buf, 2u);
      }

      goto LABEL_55;
    }

    v73 = 0;
    v24 = Registry::getServiceMap(*(a1 + 80));
    v25 = v24;
    v26 = v13;
    if (v13 < 0)
    {
      v27 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(v24);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
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
        goto LABEL_28;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
LABEL_28:
    (*(*v32 + 96))(&v72, v32, v76, 1, @"VMSMFilterNumber", 0, 0);
    sub_100060DE8(__p, &v72);
    *buf = v73;
    v73 = __p[0];
    __p[0] = 0;
    sub_100005978(buf);
    sub_100005978(__p);
    sub_10000A1EC(&v72);
    if ((v33 & 1) == 0)
    {
      sub_100004A34(v31);
    }

    if (v73)
    {
      v69 = a3;
      memset(buf, 0, sizeof(buf));
      v78 = 0;
      ctu::cf::assign();
      v71 = v78;
      *__p = *buf;
      v34 = *(a4 + 23);
      if (v34 >= 0)
      {
        v35 = *(a4 + 23);
      }

      else
      {
        v35 = *(a4 + 8);
      }

      v36 = HIBYTE(v71);
      v37 = SHIBYTE(v71);
      if (v71 < 0)
      {
        v36 = __p[1];
      }

      if (v35 == v36)
      {
        v38 = v34 >= 0 ? a4 : *a4;
        v39 = __p[0];
        v40 = v71 >= 0 ? __p : __p[0];
        if (!memcmp(v38, v40, v35))
        {
          v42 = *v10;
          if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Address filter matched", buf, 2u);
          }

          if (v37 < 0)
          {
            operator delete(v39);
          }

          sub_100005978(&v73);
LABEL_55:
          sub_100029A48(&number);
          __p[0] = 0;
          v43 = Registry::getServiceMap(*(a1 + 80));
          v44 = v43;
          if (v13 < 0)
          {
            v45 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
            v46 = 5381;
            do
            {
              v13 = v46;
              v47 = *v45++;
              v46 = (33 * v46) ^ v47;
            }

            while (v47);
          }

          std::mutex::lock(v43);
          *buf = v13;
          v48 = sub_100009510(&v44[1].__m_.__sig, buf);
          if (v48)
          {
            v50 = v48[3];
            v49 = v48[4];
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v44);
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v49);
              v51 = 0;
              goto LABEL_63;
            }
          }

          else
          {
            v50 = 0;
          }

          std::mutex::unlock(v44);
          v49 = 0;
          v51 = 1;
LABEL_63:
          (*(*v50 + 96))(&v73, v50, v76, 1, @"VMSMFilterContents", 0, 0);
          sub_100060DE8(&number, &v73);
          *buf = __p[0];
          __p[0] = number;
          number = 0;
          sub_100005978(buf);
          sub_100005978(&number);
          sub_10000A1EC(&v73);
          if ((v51 & 1) == 0)
          {
            sub_100004A34(v49);
          }

          number = 0;
          if (*(v69 + 23) >= 0)
          {
            v52 = v69;
          }

          else
          {
            v52 = *v69;
          }

          v53 = CFStringCreateWithCString(kCFAllocatorDefault, v52, 0x8000100u);
          number = v53;
          if (v53)
          {
            if (!__p[0] || (*(v69 + 23) >= 0 ? (v54.length = *(v69 + 23)) : (v54.length = *(v69 + 8)), v54.location = 0, CFStringFindWithOptions(v53, __p[0], v54, 0, 0)))
            {
              v55 = v10;
              v56 = Registry::getServiceMap(*(a1 + 80));
              v57 = v56;
              if (v58 < 0)
              {
                v59 = (v58 & 0x7FFFFFFFFFFFFFFFLL);
                v60 = 5381;
                do
                {
                  v58 = v60;
                  v61 = *v59++;
                  v60 = (33 * v60) ^ v61;
                }

                while (v61);
              }

              std::mutex::lock(v56);
              *buf = v58;
              v62 = sub_100009510(&v57[1].__m_.__sig, buf);
              if (v62)
              {
                v64 = v62[3];
                v63 = v62[4];
                if (v63)
                {
                  atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v57);
                  atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v63);
                  v65 = 0;
                  goto LABEL_84;
                }
              }

              else
              {
                v64 = 0;
              }

              std::mutex::unlock(v57);
              v63 = 0;
              v65 = 1;
LABEL_84:
              if (v64 && ((*(*v64 + 80))(v64, v76) & 1) != 0)
              {
                v22 = 1;
              }

              else
              {
                v68 = *v55;
                v22 = 0;
                if (os_log_type_enabled(*v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I VVM not supported", buf, 2u);
                  v22 = 0;
                }
              }

              if ((v65 & 1) == 0)
              {
                sub_100004A34(v63);
              }

LABEL_95:
              sub_100005978(&number);
              sub_100005978(__p);
              if (v21)
              {
                return v22;
              }

              goto LABEL_48;
            }

            v66 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v67 = "#I Content filter not matched";
              goto LABEL_93;
            }
          }

          else
          {
            v66 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v67 = "#I Failed to convert SMS body to UTF8 string which is expected";
LABEL_93:
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
            }
          }

          v22 = 0;
          goto LABEL_95;
        }
      }

      if (v37 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_46;
  }

LABEL_47:
  v22 = 0;
  if ((v21 & 1) == 0)
  {
LABEL_48:
    sub_100004A34(v19);
  }

  return v22;
}

void sub_1012493E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, const void *a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  sub_100005978(&a21);
  sub_100005978(&a11);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1012494DC()
{
  if (v0)
  {
    JUMPOUT(0x1012494D0);
  }

  JUMPOUT(0x1012494C8);
}

BOOL sub_1012494E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sms::Controller::getDynamicMessageModes_sync(a1, a2, &v38);
  memset(&__p, 0, sizeof(__p));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v7 = v6;
  v8 = v38;
  if (v38 != v39)
  {
    while (*v8 != 2)
    {
      if (++v8 == v39)
      {
        goto LABEL_16;
      }
    }
  }

  if (v8 == v39)
  {
LABEL_16:
    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Device doesn't support restricted MT SMS mode", buf, 2u);
    }

    goto LABEL_18;
  }

  if (*(a1 + 2728) != 0.0)
  {
LABEL_18:
    v20 = 1;
    goto LABEL_19;
  }

  theArray = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
      goto LABEL_26;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_26:
  (*(*v17 + 96))(v33, v17, a2, 1, @"CarrierOverridesSmsSupportWhitelist", 0, 0);
  sub_10006DD00(&theArray, v33);
  sub_10000A1EC(v33);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  v22 = theArray;
  if (theArray)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      if (__p.__r_.__value_.__l.__size_)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
LABEL_36:
        if (p_p->__r_.__value_.__s.__data_[0] == 43)
        {
          std::string::erase(&__p, 0, 1uLL);
          v22 = theArray;
        }
      }
    }

    else if (*(&__p.__r_.__value_.__s + 23))
    {
      p_p = &__p;
      goto LABEL_36;
    }

    Count = CFArrayGetCount(v22);
    if (Count >= 1)
    {
      v26 = 0;
      while (1)
      {
        v35 = 0;
        *buf = CFArrayGetValueAtIndex(theArray, v26);
        sub_100060DE8(&v35, buf);
        memset(buf, 0, sizeof(buf));
        v42 = 0;
        ctu::cf::assign();
        v34 = v42;
        *v33 = *buf;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        v28 = HIBYTE(v34);
        v29 = SHIBYTE(v34);
        if (v34 < 0)
        {
          v28 = v33[1];
        }

        if (size == v28)
        {
          break;
        }

        v32 = 0;
        if (SHIBYTE(v34) < 0)
        {
          goto LABEL_55;
        }

LABEL_56:
        sub_100005978(&v35);
        if (v32)
        {
          goto LABEL_60;
        }

        if (Count == ++v26)
        {
          v26 = Count;
          goto LABEL_60;
        }
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &__p;
      }

      else
      {
        v30 = __p.__r_.__value_.__r.__words[0];
      }

      if (v34 >= 0)
      {
        v31 = v33;
      }

      else
      {
        v31 = v33[0];
      }

      v32 = memcmp(v30, v31, size) == 0;
      if ((v29 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_55:
      operator delete(v33[0]);
      goto LABEL_56;
    }

    v26 = 0;
LABEL_60:
    v20 = v26 != Count;
    goto LABEL_61;
  }

  v24 = *v7;
  v20 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Key CarrierOverridesSmsSupportWhitelist absent in the bundle", buf, 2u);
    v20 = 0;
  }

LABEL_61:
  sub_100010250(&theArray);
LABEL_19:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  return v20;
}

void sub_1012498D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100010250(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10124996C(void *a1, Registry *this)
{
  ServiceMap = Registry::getServiceMap(this);
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
  *a1 = v11;
  a1[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

CFStringRef sub_101249A38(CFStringRef *a1, const char *a2, unint64_t a3)
{
  v4 = a2[23];
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a2 + 1) <= a3)
    {
LABEL_7:
      result = 0;
      goto LABEL_8;
    }

    a2 = *a2;
  }

  else if (v4 <= a3)
  {
    goto LABEL_7;
  }

  result = CFStringCreateWithCString(kCFAllocatorDefault, &a2[a3], 0x8000100u);
LABEL_8:
  *a1 = result;
  return result;
}

uint64_t sub_101249AA4(uint64_t a1, uint64_t a2, NetworkNotification *this, uint64_t a4, char *a5)
{
  v10 = NetworkNotification::type(this);
  if (v10 == 3)
  {
    result = (*(**(a1 + 2544) + 24))(*(a1 + 2544), this, a2);
    v12 = 2;
    goto LABEL_5;
  }

  if (v10 == 1)
  {
    result = (*(**(a1 + 2544) + 16))(*(a1 + 2544), a2, this, a4);
    v12 = 0;
LABEL_5:
    *a5 = v12;
    return result;
  }

  return 0;
}

void sub_101249B88(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (!v3 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    sub_100013CC4();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v6);
  Registry::getTimerService(&v20, *(a1 + 80));
  v8 = v20;
  sub_10000501C(__p, "SMS Hold timer");
  v9 = *(a1 + 24);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_101249DCC;
  v13[3] = &unk_101F1D728;
  v13[4] = a1;
  v13[5] = v5;
  v14 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = a2;
  aBlock = _Block_copy(v13);
  sub_100D23364(v8, __p, 0, 30000000, &object, &aBlock);
  v10 = v22;
  v22 = 0;
  v11 = *(a1 + 2648);
  *(a1 + 2648) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
    v12 = v22;
    v22 = 0;
    if (v12)
    {
      (*(*v12 + 8))(v12);
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

  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_101249D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 64);
  if (v27)
  {
    sub_100004A34(v27);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void sub_101249DCC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v7 = *(a1 + 56);
        v6 = (a1 + 56);
        v8 = (*(**(v3 + 48) + 16))(*(v3 + 48), v7);
        v9 = *(v3 + 2456);
        if (v9)
        {
          v10 = *v6;
          v11 = v3 + 2456;
          do
          {
            if (*(v9 + 28) >= v10)
            {
              v11 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v10));
          }

          while (v9);
          if (v11 != v3 + 2456 && v10 >= *(v11 + 28))
          {
            v12 = *(v11 + 32);
            *buf = v6;
            v13 = *(sub_1002D750C(v3 + 2560, v6)[5] + 608);
            v14 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1002D750C(v3 + 2560, v6);
              *buf = 136315394;
              *&buf[4] = asString();
              v25 = 2080;
              v26 = asString();
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I SMS international roaming conditions changed %s ==> %s", buf, 0x16u);
            }

            if (v12 != v13)
            {
              goto LABEL_24;
            }
          }
        }

        v15 = *(v3 + 2480);
        if (v15)
        {
          v16 = *v6;
          v17 = v3 + 2480;
          do
          {
            if (*(v15 + 28) >= v16)
            {
              v17 = v15;
            }

            v15 = *(v15 + 8 * (*(v15 + 28) < v16));
          }

          while (v15);
          if (v17 != v3 + 2480 && v16 >= *(v17 + 28))
          {
            v18 = *(v17 + 32);
            *buf = v6;
            v19 = *(sub_1002D750C(v3 + 2560, v6)[5] + 612);
            v20 = *v8;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = sub_1002D750C(v3 + 2560, v6);
              v22 = CSIBOOLAsString(*(v21[5] + 612));
              v23 = CSIBOOLAsString(*(v17 + 32));
              *buf = 136315394;
              *&buf[4] = v22;
              v25 = 2080;
              v26 = v23;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I SMS domestic roaming conditions changed %s ==> %s", buf, 0x16u);
            }

            if (v18 != v19)
            {
LABEL_24:
              (*(**(v3 + 2544) + 56))(*(v3 + 2544), *v6, 1);
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t *sub_10124A0EC(uint64_t a1, unsigned int a2, int a3)
{
  v30 = a2;
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  *buf = &v30;
  result = sub_1002D750C(a1 + 2560, &v30);
  if (*(result[5] + 293) != a3)
  {
    v7 = *v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v30;
      v8 = sub_1002D750C(a1 + 2560, &v30);
      v9 = "[not-ready]";
      if (*(v8[5] + 293))
      {
        v10 = "[ready]";
      }

      else
      {
        v10 = "[not-ready]";
      }

      if (a3)
      {
        v9 = "[ready]";
      }

      *buf = 136315394;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMS changing from %s -> %s", buf, 0x16u);
    }

    *buf = &v30;
    *(sub_1002D750C(a1 + 2560, &v30)[5] + 293) = a3;
    v29[0] = 1;
    v29[1] = a1 + 2176;
    *buf = &v30;
    v11 = *(sub_1002D750C(a1 + 2560, &v30)[5] + 293);
    *buf = &v30;
    *(sub_100051AD8(a1 + 2208, &v30) + 32) = v11;
    v12 = *(a1 + 2544);
    v13 = v30;
    *buf = &v30;
    v14 = sub_1002D750C(a1 + 2560, &v30);
    (*(*v12 + 48))(v12, v13, *(v14[5] + 293));
    *buf = &v30;
    if (*(sub_1002D750C(a1 + 2560, &v30)[5] + 293) != 1)
    {
      return sub_10125F660(v29);
    }

    v15 = v30;
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), v30);
    __p = 0;
    v32 = 0;
    v33 = 0;
    sub_10123C95C(&__p, a1, v15);
    v17 = HIBYTE(v33);
    if (v33 < 0)
    {
      v17 = v32;
    }

    if (!v17)
    {
LABEL_26:
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      sub_101249B88(a1, v30);
      return sub_10125F660(v29);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v19 = ServiceMap;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(ServiceMap);
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
          goto LABEL_19;
        }

        goto LABEL_23;
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
LABEL_19:
      v28 = *v16;
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to get Subscriber Interface. Not updating TPMR in sim while refreshing TPMR", buf, 2u);
      }

      goto LABEL_24;
    }

LABEL_23:
    *buf = off_101F1F950;
    *&buf[8] = a1;
    *&buf[16] = v15;
    v35 = buf;
    (*(*v26 + 184))(v26, v15, 36, buf);
    sub_1011C6C1C(buf);
LABEL_24:
    if ((v27 & 1) == 0)
    {
      sub_100004A34(v25);
    }

    goto LABEL_26;
  }

  return result;
}

void sub_10124A54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1011C6C1C(&a18);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10125F660(&a9);
  _Unwind_Resume(a1);
}

void sub_10124A5AC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_10124A698(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v3 + 2656);
        *(v3 + 2656) = 0;
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }

        v6 = **(a1 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 2G location hint timer expiry", v7, 2u);
        }

        sub_10124A5AC(v3);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10124A770(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      if (subscriber::isValidSimSlot())
      {
        block[0] = &v8;
        v3 = *(sub_1002D750C(a1 + 2560, &v8)[5] + 293);
      }

      else
      {
        v3 = 0;
      }

      return v3 & 1;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10126029C;
  v9[3] = &unk_101F21120;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(a1 + 24);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_1000593F4;
    v13 = &unk_101F1DB80;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A350;
    v13 = &unk_101F1DBA0;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  v3 = v16;
  return v3 & 1;
}

uint64_t sub_10124A924(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      if (subscriber::isValidSimSlot())
      {
        block[0] = &v8;
        v3 = *(sub_1002D750C(a1 + 2560, &v8)[5] + 295);
      }

      else
      {
        v3 = 0;
      }

      return v3 & 1;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10126030C;
  v9[3] = &unk_101F21140;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(a1 + 24);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_1000593F4;
    v13 = &unk_101F1DB80;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A350;
    v13 = &unk_101F1DBA0;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  v3 = v16;
  return v3 & 1;
}

void sub_10124AAD8(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void sub_10124AAF0(uint64_t a1, unsigned int a2, int a3)
{
  v20 = a2;
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = CSIBOOLAsString(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Emergency session intent: %s", buf, 0xCu);
  }

  if (!a3)
  {
    return;
  }

  *buf = &v20;
  if ((*(sub_1002D750C(a1 + 2560, &v20)[5] + 294) & 1) == 0)
  {
    v7 = *v5;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "#I Ims not over Wifi, no further actions required";
    goto LABEL_10;
  }

  if (sub_101229660(a1, v20))
  {
    v7 = *v5;
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "#I Carrier preference to use Wifi for Emergency Text.";
    goto LABEL_10;
  }

  if (!sub_101245E20(a1))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
        goto LABEL_23;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
LABEL_23:
    if (v17)
    {
      (*(*v17 + 56))(v17, v20, 1);
    }

    else
    {
      v19 = *v5;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get Emergency manager interface", buf, 2u);
        if (v18)
        {
          return;
        }

LABEL_27:
        sub_100004A34(v16);
        return;
      }
    }

    if (v18)
    {
      return;
    }

    goto LABEL_27;
  }

  v7 = *v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v8 = "#I Active Call. Not handling Emergency Text intent.";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }
}

void sub_10124ADE0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10124AE10(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v3 = 1;
      if (*(a1 + 2620) == 1)
      {
        block[0] = &v8;
        if (*(sub_1002D750C(a1 + 2560, &v8)[5] + 294) == 1)
        {
          block[0] = &v8;
          if (*(sub_1002D750C(a1 + 2560, &v8)[5] + 42) == 1 && (*(a1 + 200) & 1) != 0)
          {
            return 0;
          }
        }
      }

      return v3;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10126037C;
  v9[3] = &unk_101F21160;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(a1 + 24);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_1000593F4;
    v13 = &unk_101F1DB80;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A350;
    v13 = &unk_101F1DBA0;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  return v16;
}

void sub_10124B008(uint64_t a1, unsigned int a2, unsigned __int8 a3)
{
  v8 = a2;
  v7 = a3;
  v6[0] = a1;
  v6[1] = &v8;
  v6[2] = &v7;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      sub_10124AAF0(a1, v8, v7);
      return;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_101260428;
  block[3] = &unk_101F21180;
  block[4] = a1 + 8;
  block[5] = v6;
  v5 = *(a1 + 24);
  if (v4)
  {
    dispatch_sync(v5, block);
  }

  else
  {
    dispatch_async_and_wait(v5, block);
  }
}

void sub_10124B0F0(uint64_t a1)
{
  sub_10124CD28(a1);

  operator delete();
}

void sub_10124B128()
{
  if (byte_101FCA418 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA438, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA438))
  {
    sub_1012500E0();
    __cxa_atexit(sub_1012500B4, qword_101FCA6B0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA438);
  }
}

void sub_10124B1F4()
{
  if (byte_101FCA419 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA440))
  {
    sub_101250CF0();
    __cxa_atexit(sub_101250CC4, qword_101FCA6D0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA440);
  }
}

void sub_10124B2C0()
{
  if (byte_101FCA41A == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA448))
  {
    sub_10125116C();
    __cxa_atexit(sub_101251140, qword_101FCA530, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA448);
  }
}

void sub_10124B38C()
{
  if (byte_101FCA41B == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA450))
  {
    sub_1012512C0();
    __cxa_atexit(sub_101251294, qword_101FCA6F0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA450);
  }
}

void sub_10124B458()
{
  if (byte_101FCA41C == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA458, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA458))
  {
    sub_1012515C8();
    __cxa_atexit(sub_10125159C, qword_101FCA548, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA458);
  }
}

void sub_10124B524()
{
  if (byte_101FCA41D == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA460))
  {
    sub_101251738();
    __cxa_atexit(sub_10125170C, qword_101FCA710, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA460);
  }
}

void sub_10124B5F0()
{
  if (byte_101FCA41E == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA468))
  {
    sub_101251CC0();
    __cxa_atexit(sub_101251C94, qword_101FCA730, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA468);
  }
}

void sub_10124B6BC()
{
  if (byte_101FCA41F == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA470))
  {
    sub_10125202C();
    __cxa_atexit(sub_101252000, qword_101FCA560, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA470);
  }
}

void sub_10124B788()
{
  if (byte_101FCA420 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA478))
  {
    sub_1012521A0();
    __cxa_atexit(sub_101252174, qword_101FCA578, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA478);
  }
}

void sub_10124B854()
{
  if (byte_101FCA421 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA480))
  {
    sub_10125231C();
    __cxa_atexit(sub_1012522F0, qword_101FCA750, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA480);
  }
}

void sub_10124B920()
{
  if (byte_101FCA422 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA488))
  {
    sub_101252724();
    __cxa_atexit(sub_1012526F8, qword_101FCA590, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA488);
  }
}

void sub_10124B9EC()
{
  if (byte_101FCA423 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA490))
  {
    sub_1012528A0();
    __cxa_atexit(sub_101252874, qword_101FCA5A8, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA490);
  }
}

void sub_10124BAB8()
{
  if (byte_101FCA424 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA498))
  {
    sub_101252AB8();
    __cxa_atexit(sub_101252A8C, qword_101FCA770, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA498);
  }
}

void sub_10124BB84()
{
  if (byte_101FCA425 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4A0))
  {
    sub_101253A10();
    __cxa_atexit(sub_1012539E4, qword_101FCA790, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4A0);
  }
}

void sub_10124BC50()
{
  if (byte_101FCA426 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4A8))
  {
    sub_101253E40();
    __cxa_atexit(sub_101253E14, qword_101FCA5C0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4A8);
  }
}

void sub_10124BD1C()
{
  if (byte_101FCA427 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4B0))
  {
    sub_101253F94();
    __cxa_atexit(sub_101253F68, qword_101FCA7B0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4B0);
  }
}

void sub_10124BDE8()
{
  if (byte_101FCA428 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4B8))
  {
    sub_1012545AC();
    __cxa_atexit(sub_101254580, qword_101FCA7D0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4B8);
  }
}

void sub_10124BEB4()
{
  if (byte_101FCA429 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4C0))
  {
    sub_1012548B4();
    __cxa_atexit(sub_101254888, qword_101FCA5D8, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4C0);
  }
}

void sub_10124BF80()
{
  if (byte_101FCA42A == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4C8))
  {
    sub_101254A24();
    __cxa_atexit(sub_1012549F8, qword_101FCA5F0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4C8);
  }
}

void sub_10124C04C()
{
  if (byte_101FCA42B == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4D0))
  {
    sub_101254B78();
    __cxa_atexit(sub_101254B4C, qword_101FCA7F0, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4D0);
  }
}

void sub_10124C118()
{
  if (byte_101FCA42C == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4D8))
  {
    sub_101254F70();
    __cxa_atexit(sub_101254F44, qword_101FCA608, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4D8);
  }
}

void sub_10124C1E4()
{
  if (byte_101FCA42D == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4E0))
  {
    sub_1012550D8();
    __cxa_atexit(sub_1012550AC, qword_101FCA810, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4E0);
  }
}

void sub_10124C2B0()
{
  if (byte_101FCA42E == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4E8))
  {
    sub_101255788();
    __cxa_atexit(sub_10125575C, qword_101FCA620, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4E8);
  }
}

void sub_10124C37C()
{
  if (byte_101FCA42F == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4F0))
  {
    sub_101255904();
    __cxa_atexit(sub_1012558D8, qword_101FCA830, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4F0);
  }
}

void sub_10124C448()
{
  if (byte_101FCA430 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA4F8))
  {
    sub_101255D5C();
    __cxa_atexit(sub_101255D30, qword_101FCA850, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA4F8);
  }
}

void sub_10124C514()
{
  if (byte_101FCA431 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA500))
  {
    sub_101256180();
    __cxa_atexit(sub_101256154, qword_101FCA638, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA500);
  }
}

void sub_10124C5E0()
{
  if (byte_101FCA432 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA508))
  {
    sub_1012562D4();
    __cxa_atexit(sub_1012562A8, qword_101FCA650, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA508);
  }
}

void sub_10124C6AC()
{
  if (byte_101FCA433 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA510))
  {
    sub_101256450();
    __cxa_atexit(sub_101256424, qword_101FCA668, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA510);
  }
}

void sub_10124C778()
{
  if (byte_101FCA434 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA518))
  {
    sub_1012567E4();
    __cxa_atexit(sub_1012567B8, qword_101FCA870, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA518);
  }
}

void sub_10124C844()
{
  if (byte_101FCA435 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA520))
  {
    sub_101256EE8();
    __cxa_atexit(sub_101256EBC, qword_101FCA680, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA520);
  }
}

void sub_10124C910()
{
  if (byte_101FCA436 == 1)
  {
    __assert_rtn("get_instance", "singleton.hpp", 167, "! is_destroyed()");
  }

  if ((atomic_load_explicit(&qword_101FCA528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA528))
  {
    sub_101257034();
    __cxa_atexit(sub_101257008, qword_101FCA698, &_mh_execute_header);

    __cxa_guard_release(&qword_101FCA528);
  }
}

uint64_t sub_10124C9DC(uint64_t a1)
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

uint64_t sub_10124CA5C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

uint64_t sub_10124CB1C(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        sub_100004A34(v7);
      }

      ++v5;
      a3 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

void sub_10124CB80(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10124CBC8(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 2);
      *a3 = v6;
      *(v5 + 1) = 0;
      *(v5 + 2) = 0;
      *v5 = 0;
      *(a3 + 24) = *(v5 + 6);
      v5 += 2;
      a3 += 32;
    }

    while (v5 != a2);
    do
    {
      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v4 += 2;
    }

    while (v4 != a2);
  }
}

BOOL sub_10124CC48(uint64_t a1)
{
  v1 = *(*a1 + 208);
  if (v1)
  {
    v3 = os_log_create(kCtLoggingSystemName, "cbs");
    v6 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*a1 + 208);
      *buf = 67109120;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Partial Message with timestamp: %u is being erased", buf, 8u);
    }

    sub_10000639C(&v6);
  }

  return v1 != 0;
}

uint64_t sub_10124CD28(uint64_t a1)
{
  *a1 = off_101F1D2B0;
  v2 = *(a1 + 2752);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100AE7BC0(a1 + 2688);
  v3 = *(a1 + 2680);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 2664);
  *(a1 + 2664) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 2656);
  *(a1 + 2656) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 2648);
  *(a1 + 2648) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 2640);
  *(a1 + 2640) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 2632);
  *(a1 + 2632) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 2608);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 2592);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_100D92208(*(a1 + 2568));
  v11 = *(a1 + 2552);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_10006DCAC(a1 + 2520, *(a1 + 2528));
  sub_10006DCAC(a1 + 2496, *(a1 + 2504));
  sub_10006DCAC(a1 + 2472, *(a1 + 2480));
  sub_10006DCAC(a1 + 2448, *(a1 + 2456));
  sub_10004EC58(a1 + 2424, *(a1 + 2432));
  sub_10124C9DC(a1 + 2392);
  EmergencyMode::~EmergencyMode((a1 + 2368));
  sub_1001A918C(a1 + 2344, *(a1 + 2352));
  sub_10006DCAC(a1 + 2320, *(a1 + 2328));
  sub_100077CD4(a1 + 2288, *(a1 + 2296));
  sub_10006DCAC(a1 + 2264, *(a1 + 2272));
  sub_10031D330(a1 + 2232);
  sub_10006DCAC(a1 + 2208, *(a1 + 2216));
  sub_10031D330(a1 + 2176);
  sub_10006DCAC(a1 + 2152, *(a1 + 2160));
  sub_10031D330(a1 + 2120);
  sub_10006DCAC(a1 + 2096, *(a1 + 2104));
  sub_10004543C(a1 + 1288);
  sub_10004543C(a1 + 480);
  sub_10004C4EC(a1 + 456, *(a1 + 464));
  sub_100170380(a1 + 432, *(a1 + 440));
  sub_100077CD4(a1 + 408, *(a1 + 416));
  v19 = (a1 + 384);
  sub_1000B2AF8(&v19);
  sub_10032D3A4(a1 + 360, *(a1 + 368));
  sub_10032D3A4(a1 + 336, *(a1 + 344));
  sub_10006DCAC(a1 + 312, *(a1 + 320));
  sub_10006DCAC(a1 + 288, *(a1 + 296));
  sub_10006DCAC(a1 + 264, *(a1 + 272));
  sub_10006DCAC(a1 + 232, *(a1 + 240));
  sub_100009970(a1 + 208, *(a1 + 216));
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 136);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 120);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 104);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_1000FEFCC((a1 + 56));
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  SmsControllerInterface::~SmsControllerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10124D0C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10124D114(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10124D154(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_10124D180(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10124D2A4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_10124D2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1D918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10124D330(uint64_t a1)
{
  v2 = *(a1 + 608);
  if (v2)
  {
    *(a1 + 616) = v2;
    operator delete(v2);
  }

  sub_100009970(a1 + 584, *(a1 + 592));
  sub_100009970(a1 + 560, *(a1 + 568));
  v7 = (a1 + 536);
  sub_1000212F4(&v7);
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  v3 = *(a1 + 392);
  if (v3)
  {
    *(a1 + 400) = v3;
    operator delete(v3);
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v4 = *(a1 + 352);
  *(a1 + 352) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = (a1 + 320);
  sub_1000212F4(&v7);
  sub_10006DCAC(a1 + 280, *(a1 + 288));
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = (a1 + 24);
  sub_1000212F4(&v7);
}