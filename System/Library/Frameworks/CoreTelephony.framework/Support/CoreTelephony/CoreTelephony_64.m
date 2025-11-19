void sub_10041E368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041E40C(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 272);
  if (v2)
  {
    v3 = a1 + 272;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 == a1 + 272 || *(v3 + 32) > a2)
    {
      LOBYTE(v2) = 0;
    }

    else
    {
      LOBYTE(v2) = *(sub_1000A8C4C(a1 + 312, &v5) + 8);
    }
  }

  return v2 & 1;
}

uint64_t sub_10041E484(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v12 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v12);
  if (v7)
  {
    v8 = v7[3];
    v9 = v7[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v10 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      LODWORD(v2) = (*(*v8 + 792))(v8);
      if (v10)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
  }

  std::mutex::unlock(v2);
  v9 = 0;
  v10 = 1;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v9);
  }

LABEL_13:
  if (v8)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

void sub_10041E5A4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10041E5C0(uint64_t a1, uint64_t a2, int a3)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
  (*(*v14 + 96))(&v19, v14, a2, 1, @"MTU", 0, 0);
  sub_10006DD00(&cf, &v19);
  sub_10000A1EC(&v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (cf)
  {
    v18 = cf;
    CFRetain(cf);
    v16 = sub_10041E790((a1 + 40), a3, &v18);
    sub_100010250(&v18);
  }

  else
  {
    v16 = 0;
  }

  sub_100010250(&cf);
  return v16;
}

void sub_10041E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_100010250(&a9);
  sub_100010250(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10041E790(os_log_t *a1, int a2, CFArrayRef *a3)
{
  v51 = 0;
  Count = CFArrayGetCount(*a3);
  if (Count >= 1)
  {
    v6 = Count;
    v43 = 0;
    v7 = 0;
    while (1)
    {
      valuePtr = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(*a3, v7);
      v9 = ValueAtIndex;
      if (ValueAtIndex && (v10 = CFGetTypeID(ValueAtIndex), v10 == CFDictionaryGetTypeID()))
      {
        if (CFDictionaryContainsKey(v9, @"size") && CFDictionaryContainsKey(v9, @"technology-mask"))
        {
          Value = CFDictionaryGetValue(v9, @"technology-mask");
          v12 = Value;
          if (Value)
          {
            v13 = CFGetTypeID(Value);
            if (v13 != CFNumberGetTypeID())
            {
              v12 = 0;
            }
          }

          v14 = CFDictionaryGetValue(v9, @"size");
          v15 = v14;
          if (v14 && (v16 = CFGetTypeID(v14), TypeID = CFNumberGetTypeID(), v12) && v16 == TypeID)
          {
            if (!CFNumberGetValue(v12, kCFNumberIntType, &valuePtr))
            {
              v32 = *a1;
              if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 134217984;
              *v53 = v7;
              v27 = v32;
              v28 = "#I Item %lu couldn't retrieve from kCFTechMaskKey, continuing to next item!";
              goto LABEL_30;
            }

            if (!valuePtr)
            {
              v33 = *a1;
              if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_32;
              }

              *buf = 134218240;
              *v53 = v7;
              *&v53[8] = 1024;
              *&v53[10] = 0;
              v27 = v33;
              v28 = "#I Item %lu kCFTechMaskKey has mask = %u, continuing to next item!";
              v31 = 18;
              goto LABEL_31;
            }

            v18 = v43 | ((valuePtr & 0x10) >> 4);
            v43 = v18;
            if (a2 == 13)
            {
              if ((valuePtr & 4) == 0)
              {
                goto LABEL_17;
              }
            }

            else
            {
              *buf = 0;
              sub_10029ECB8(valuePtr, (v18 & 1) == 0, buf);
              if ((*buf & asWirelessTechnology()) == 0)
              {
LABEL_17:
                v19 = *a1;
                if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
                {
                  v47 = asWirelessTechnology();
                  WirelessTechnologyList::asString(v48, &v47);
                  if (v49 >= 0)
                  {
                    v20 = v48;
                  }

                  else
                  {
                    v20 = v48[0];
                  }

                  v21 = asString();
                  sub_10029ECEC(valuePtr, __p);
                  v22 = __p;
                  if (v46 < 0)
                  {
                    v22 = __p[0];
                  }

                  *buf = 136446722;
                  *v53 = v20;
                  *&v53[8] = 2082;
                  *&v53[10] = v21;
                  *&v53[18] = 2082;
                  *&v53[20] = v22;
                  v23 = v19;
                  v24 = "#I The current technology %{public}s (data mode:%{public}s) is not in the CB MTU mask %{public}s , continuing to next item!";
                  v25 = 32;
LABEL_47:
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, v25);
                  if (v46 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (v49 < 0)
                  {
                    operator delete(v48[0]);
                  }

                  goto LABEL_32;
                }

                goto LABEL_32;
              }
            }

            v34 = CFNumberGetValue(v15, kCFNumberIntType, &v51);
            v35 = *a1;
            v36 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
            if (!v34)
            {
              if (!v36)
              {
                goto LABEL_32;
              }

              *buf = 0;
              v27 = v35;
              v28 = "#E MTU fetching from carrier bundle was a error continuing to next item!";
              v31 = 2;
              goto LABEL_31;
            }

            if (v36)
            {
              v42 = v51;
              v47 = asWirelessTechnology();
              WirelessTechnologyList::asString(v48, &v47);
              if (v49 >= 0)
              {
                v37 = v48;
              }

              else
              {
                v37 = v48[0];
              }

              v38 = asString();
              sub_10029ECEC(valuePtr, __p);
              v39 = __p;
              if (v46 < 0)
              {
                v39 = __p[0];
              }

              *buf = 67109890;
              *v53 = v42;
              *&v53[4] = 2082;
              *&v53[6] = v37;
              *&v53[14] = 2082;
              *&v53[16] = v38;
              *&v53[24] = 2082;
              *&v53[26] = v39;
              v23 = v35;
              v24 = "#I MTU size %d found for wireless technology %{public}s (data mode:%{public}s). CB mask %{public}s";
              v25 = 38;
              goto LABEL_47;
            }
          }

          else
          {
            v30 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v53 = v7;
              v27 = v30;
              v28 = "#I Item %lu doesn't have keys kCFMTUSizeKey and kCFTechMaskKey properly formatted, continuing to next item!";
              goto LABEL_30;
            }
          }
        }

        else
        {
          v29 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *v53 = v7;
            v27 = v29;
            v28 = "#I Item %lu doesn't have keys kCFMTUSizeKey and kCFTechMaskKey , continuing to next item!";
            goto LABEL_30;
          }
        }
      }

      else
      {
        v26 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *v53 = v7;
          v27 = v26;
          v28 = "#I Item %lu is not an dictionary, continuing to next item!";
LABEL_30:
          v31 = 12;
LABEL_31:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, v31);
        }
      }

LABEL_32:
      if (v6 == ++v7)
      {
        return v51;
      }
    }
  }

  v40 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I MTU value set has zero items, using default value!", buf, 2u);
  }

  return v51;
}

void sub_10041ECE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041ED18(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5)
{
  if (a3 || !a5 || !*a4)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v10 = ServiceMap;
  if ((v11 & 0x8000000000000000) != 0)
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
  v33 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v33);
  if (!v15)
  {
    std::mutex::unlock(v10);
    return;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v10);
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v16);
    if (!v17)
    {
LABEL_35:
      sub_100004A34(v16);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v10);
    if (!v17)
    {
      return;
    }
  }

  v33 = 0;
  v34 = 0;
  sub_1004196C0(v17, &v33);
  v18 = v33;
  if (v33)
  {
    v19 = a4[1];
    v31 = *a4;
    v32 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v20 = (*(*v18 + 88))(v18, &v31, a5);
    if (v32)
    {
      sub_100004A34(v32);
    }

    if (v20)
    {
      v21 = Registry::getServiceMap(*(a1 + 56));
      v22 = v21;
      if ((v23 & 0x8000000000000000) != 0)
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

      std::mutex::lock(v21);
      v35 = v23;
      v27 = sub_100009510(&v22[1].__m_.__sig, &v35);
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
LABEL_28:
          if (v29)
          {
            (*(*v29 + 664))(v29, a2, 21, 0xFFFFFFFFLL, 0);
          }

          if ((v30 & 1) == 0)
          {
            sub_100004A34(v28);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v29 = 0;
      }

      std::mutex::unlock(v22);
      v28 = 0;
      v30 = 1;
      goto LABEL_28;
    }
  }

LABEL_32:
  if (v34)
  {
    sub_100004A34(v34);
  }

  if (v16)
  {
    goto LABEL_35;
  }
}

void sub_10041EF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041EFE8(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v13 = 0;
LABEL_13:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_14:
    v16 = 0;
    v17 = 0;
    sub_100419930(v13, &v16);
    v15 = v16;
    if (v16)
    {
      *a3 = 0;
      (*(*v15 + 88))(v15);
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FFAC();
      }

      *a3 = 0;
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_21;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176FFE8();
  }

  *a3 = 0;
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10041F188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10041F1B8(uint64_t a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = 0;
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v13 = 0;
LABEL_13:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_9;
    }

LABEL_14:
    v16 = 0;
    v17 = 0;
    sub_100419930(v13, &v16);
    v15 = v16;
    if (v16)
    {
      *a3 = 0;
      (*(*v15 + 80))(v15);
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10176FFAC();
      }

      *a3 = 0;
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    goto LABEL_21;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176FFE8();
  }

  *a3 = 0;
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10041F358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10041F388(capabilities::ct *a1)
{
  if (capabilities::ct::supportedPDPContextCount(a1) >> 32)
  {
    sub_101770024();
  }

  v1 = subscriber::simSlotAsInstance();
  return (v1 + 1) | (capabilities::ct::supportedPDPContextCount(v1) << 32);
}

void sub_10041F3D4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&v47 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v47);
  if (!v10)
  {
    std::mutex::unlock(v5);
    return;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v5);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    if (!v12)
    {
LABEL_45:
      sub_100004A34(v11);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v5);
    if (!v12)
    {
      return;
    }
  }

  v13 = (*(*v12 + 792))(v12);
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA398))
  {
    *&v47 = @"IPC";
    *(&v47 + 1) = @"IPCContext";
    qword_101FBA388 = 0;
    unk_101FBA390 = 0;
    qword_101FBA380 = 0;
    sub_10005B328(&qword_101FBA380, &v47, &v48, 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA380, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA398);
  }

  v14 = Registry::getServiceMap(*(a1 + 56));
  v15 = v14;
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

  std::mutex::lock(v14);
  *&v47 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v47);
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
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_19:
  (*(*v22 + 104))(&theDict, v22, v13, 1, &qword_101FBA380, 0, 0);
  sub_10006DD00(&v46, &theDict);
  v24 = theArray;
  theArray = v46;
  v46 = 0;
  *&v47 = v24;
  sub_100010250(&v47);
  sub_100010250(&v46);
  sub_10000A1EC(&theDict);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        *&v47 = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, &v47);
        if (theDict)
        {
          v47 = 0uLL;
          Value = CFDictionaryGetValue(theDict, @"Id");
          v28 = Value;
          if (Value)
          {
            LODWORD(v46) = 0;
            v29 = CFGetTypeID(Value);
            if (v29 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v28, v30);
            }

            LODWORD(v47) = v46;
          }

          v31 = CFDictionaryGetValue(theDict, @"MaxInterfaces");
          v32 = v31;
          if (v31)
          {
            LODWORD(v46) = 0;
            v33 = CFGetTypeID(v31);
            if (v33 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v32, v34);
            }

            DWORD1(v47) = v46;
          }

          v35 = CFDictionaryGetValue(theDict, @"MaxUlPipes");
          v36 = v35;
          if (v35)
          {
            LODWORD(v46) = 0;
            v37 = CFGetTypeID(v35);
            if (v37 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v36, v38);
            }

            DWORD2(v47) = v46;
          }

          v39 = CFDictionaryGetValue(theDict, @"MaxDlPipes");
          v40 = v39;
          if (v39)
          {
            LODWORD(v46) = 0;
            v41 = CFGetTypeID(v39);
            if (v41 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v46, v40, v42);
            }

            HIDWORD(v47) = v46;
          }

          if (v47)
          {
            v46 = &v47;
            v43 = sub_1004250DC(a2, &v47);
            *(v43 + 2) = v47;
          }
        }

        sub_10001021C(&theDict);
      }
    }
  }

  sub_100010250(&theArray);
  if (v11)
  {
    goto LABEL_45;
  }
}

void sub_10041F898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_101FBA398);
  sub_100010250(va);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10041F938(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10041F96C(void *a1@<X8>)
{
  *&__p[8] = 0u;
  *&__p[24] = 0x700000000;
  *&__p[32] = 1;
  *&__p[40] = 4;
  __p[23] = 12;
  qmemcpy(__p, "__Internet__", 12);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *&__p[44] = 256;
  v2 = sub_100422CA8(a1, __p);
  v3 = __p[23];
  a1[1] = v2;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x700000000;
  __p[23] = 13;
  qmemcpy(__p, "__Internet2__", 13);
  *&__p[32] = 1;
  *&__p[40] = 0x10100000004;
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    v5 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v5 = v4 + 48;
  }

  a1[1] = v5;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[16] = 0u;
  __p[23] = 15;
  strcpy(__p, "__LLTethering__");
  *&__p[40] = 2;
  *&__p[28] = 3;
  *&__p[32] = 0x8000000;
  v6 = a1[1];
  if (v6 >= a1[2])
  {
    v7 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v7 = v6 + 48;
  }

  a1[1] = v7;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x200000000;
  __p[23] = 13;
  qmemcpy(__p, "__Tethering__", 13);
  *&__p[32] = 16;
  *&__p[40] = 2;
  v8 = a1[1];
  if (v8 >= a1[2])
  {
    v9 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v9 = v8 + 48;
  }

  a1[1] = v9;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[24] = 0x100000000;
  __p[23] = 7;
  strcpy(__p, "__IMS__");
  *&__p[32] = 393216;
  *&__p[40] = 2;
  v10 = a1[1];
  if (v10 >= a1[2])
  {
    v11 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v11 = v10 + 48;
  }

  a1[1] = v11;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(&__p[16], 0, 32);
  __p[23] = 16;
  *__p = *"__OtherInitial__";
  *&__p[40] = 1;
  *&__p[24] = 0;
  v12 = a1[1];
  if (v12 >= a1[2])
  {
    v13 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v13 = v12 + 48;
  }

  a1[1] = v13;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  __p[23] = 12;
  qmemcpy(__p, "__LLFilter__", 12);
  *&__p[24] = 0x100000002;
  *&__p[32] = 134610944;
  *&__p[40] = 0;
  v14 = a1[1];
  if (v14 >= a1[2])
  {
    v15 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v15 = v14 + 48;
  }

  a1[1] = v15;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  memset(&__p[16], 0, 32);
  __p[23] = 15;
  strcpy(__p, "__OtherFilter__");
  *&__p[24] = 2;
  v16 = a1[1];
  if (v16 >= a1[2])
  {
    v17 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v17 = v16 + 48;
  }

  a1[1] = v17;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  __p[23] = 9;
  qmemcpy(__p, "__LLDRB__", 9);
  *&__p[24] = 0x100000001;
  *&__p[32] = 134610944;
  *&__p[40] = 0;
  v18 = a1[1];
  if (v18 >= a1[2])
  {
    v19 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v19 = v18 + 48;
  }

  a1[1] = v19;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *&__p[8] = 0u;
  *&__p[40] = 0;
  __p[23] = 12;
  qmemcpy(__p, "__OtherDRB__", 12);
  *&__p[24] = 1uLL;
  v20 = a1[1];
  if (v20 >= a1[2])
  {
    v21 = sub_100422CA8(a1, __p);
  }

  else
  {
    sub_100422C30(a1, __p);
    v21 = v20 + 48;
  }

  a1[1] = v21;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }
}

void sub_10041FE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10042303C(&__p);
  _Unwind_Resume(a1);
}

const void **sub_10041FED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  theArray = 0;
  if ((atomic_load_explicit(&qword_101FBA3B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA3B8))
  {
    __p[0] = @"IPC";
    __p[1] = @"IPCConfigSet";
    qword_101FBA3A8 = 0;
    unk_101FBA3B0 = 0;
    qword_101FBA3A0 = 0;
    sub_10005B328(&qword_101FBA3A0, __p, &__p[2], 2uLL);
    __cxa_atexit(sub_10041F938, &qword_101FBA3A0, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBA3B8);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
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
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_10:
  (*(*v14 + 104))(v42, v14, a2, 1, &qword_101FBA3A0, 0, 0);
  sub_10006DD00(&v40, v42);
  __p[0] = theArray;
  theArray = v40;
  v40 = 0;
  sub_100010250(__p);
  sub_100010250(&v40);
  sub_10000A1EC(v42);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        theDict = 0;
        __p[0] = CFArrayGetValueAtIndex(theArray, i);
        sub_100010180(&theDict, __p);
        if (theDict)
        {
          v44 = 0u;
          memset(__p, 0, sizeof(__p));
          if (CFDictionaryGetValue(theDict, @"Name"))
          {
            v40 = 0;
            v41 = 0uLL;
            ctu::cf::assign();
            v18 = v40;
            *v42 = v41;
            *&v42[7] = *(&v41 + 7);
            v19 = HIBYTE(v41);
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = v18;
            __p[1] = *v42;
            *(&__p[1] + 7) = *&v42[7];
            HIBYTE(__p[2]) = v19;
          }

          else
          {
            v19 = HIBYTE(__p[2]);
          }

          if (v19 >= 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = __p[1];
          }

          if (v20)
          {
            Value = CFDictionaryGetValue(theDict, @"DataPathType");
            v22 = Value;
            if (Value)
            {
              LODWORD(v40) = 0;
              v23 = CFGetTypeID(Value);
              if (v23 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v22, v24);
              }

              LODWORD(__p[3]) = v40;
            }

            v25 = CFDictionaryGetValue(theDict, @"ServiceMask");
            v26 = v25;
            if (v25)
            {
              v40 = 0;
              v27 = CFGetTypeID(v25);
              if (v27 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v26, v28);
              }

              *&v44 = v40;
            }

            v29 = CFDictionaryGetValue(theDict, @"TrafficTypeMask");
            v30 = v29;
            if (v29)
            {
              LODWORD(v40) = 0;
              v31 = CFGetTypeID(v29);
              if (v31 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v30, v32);
              }

              HIDWORD(__p[3]) = v40;
            }

            v33 = CFDictionaryGetValue(theDict, @"MaxQueueSets");
            v34 = v33;
            if (v33)
            {
              LODWORD(v40) = 0;
              v35 = CFGetTypeID(v33);
              if (v35 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&v40, v34, v36);
              }

              DWORD2(v44) = v40;
            }

            sub_1004203F4(a3, __p);
            LOBYTE(v19) = HIBYTE(__p[2]);
          }

          if ((v19 & 0x80) != 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10001021C(&theDict);
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_100420338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_guard_abort(&qword_101FBA3B8);
  sub_100010250(&a12);
  sub_10042303C(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1004203F4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_100423158(a1, a2);
  }

  else
  {
    sub_1004230E0(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_100420434(os_log_t *a1)
{
  v2 = capabilities::ct::supportsIPCInterfaceConfig(a1);
  if (v2)
  {
    if (ApplePDPHelperInterface::getInstance(v2))
    {
      sub_1004204AC(a1);

      sub_1004209D8(a1);
    }

    else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101770050();
    }
  }
}

void sub_1004204AC(uint64_t a1)
{
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v2 = *(a1 + 64);
  *buf = *(a1 + 56);
  *&buf[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v4 = *&v40[8];
  v3 = *v40;
  if (*v40 != *&v40[8])
  {
    v5 = *&v40[16];
    do
    {
      v6 = (*&v40[16])(*v3);
      if (v6)
      {
        break;
      }

      ++v3;
    }

    while (v3 != *&v40[8]);
    v7 = *&v40[8];
    while (v3 != v7)
    {
      *buf = 0;
      *&buf[8] = 0;
      v6 = sub_10041F388(v6);
      *buf = v6;
      *&buf[8] = v8;
      if (v6)
      {
        v42[3] = buf;
        v6 = sub_1004250DC(&v41, buf);
        *(v6 + 32) = *buf;
      }

      do
      {
        if (++v3 == v4)
        {
          break;
        }

        v6 = v5(*v3);
      }

      while ((v6 & 1) == 0);
    }
  }

  *v40 = xmmword_101802ED0;
  *buf = v40;
  v9 = sub_1004250DC(&v41, v40);
  *(v9 + 2) = *v40;
  sub_10041F3D4(a1, &v41);
  v11 = *(a1 + 392);
  v12 = (a1 + 400);
  if (v11 != (a1 + 400))
  {
    do
    {
      v13 = v42[0];
      v14 = *(v11 + 7);
      if (!v42[0])
      {
        goto LABEL_24;
      }

      v15 = v42;
      do
      {
        v16 = *(v13 + 7);
        v17 = v16 >= v14;
        v18 = v16 < v14;
        if (v17)
        {
          v15 = v13;
        }

        v13 = v13[v18];
      }

      while (v13);
      if (v15 == v42 || v14 < *(v15 + 7))
      {
LABEL_24:
        *&v40[12] = 0;
        *&v40[4] = 0;
        *v40 = v14;
        Instance = ApplePDPHelperInterface::getInstance(v10);
        v20 = (*(*Instance + 40))(Instance, v40);
        v21 = *(a1 + 40);
        if (v20)
        {
          v10 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT);
          if (v10)
          {
            v22 = *(v11 + 7);
            *buf = 136315394;
            *&buf[4] = "updateIpcContextConfiguration_sync";
            *&buf[12] = 1024;
            *&buf[14] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s: Unconfigured ipcContext %u", buf, 0x12u);
          }
        }

        else
        {
          v10 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
          if (v10)
          {
            v26 = *(v11 + 7);
            *buf = 136315394;
            *&buf[4] = "updateIpcContextConfiguration_sync";
            *&buf[12] = 1024;
            *&buf[14] = v26;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: Cannot unconfigure ipcContext %u", buf, 0x12u);
          }
        }
      }

      v23 = v11[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v11[2];
          v25 = *v24 == v11;
          v11 = v24;
        }

        while (!v25);
      }

      v11 = v24;
    }

    while (v24 != v12);
  }

  v27 = v41;
  if (v41 != v42)
  {
    while (1)
    {
      v28 = *v12;
      v29 = *(v27 + 7);
      if (!*v12)
      {
        goto LABEL_46;
      }

      v30 = a1 + 400;
      do
      {
        v31 = *(v28 + 28);
        v17 = v31 >= v29;
        v32 = v31 < v29;
        if (v17)
        {
          v30 = v28;
        }

        v28 = *(v28 + 8 * v32);
      }

      while (v28);
      if (v30 == v12 || v29 < *(v30 + 28))
      {
        goto LABEL_46;
      }

      v10 = IPCContextConfig::operator!=();
      if (v10)
      {
        break;
      }

LABEL_51:
      v37 = v27[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v27[2];
          v25 = *v38 == v27;
          v27 = v38;
        }

        while (!v25);
      }

      v27 = v38;
      if (v38 == v42)
      {
        goto LABEL_57;
      }
    }

    v29 = *(v27 + 7);
LABEL_46:
    *v40 = v29;
    *&v40[4] = 1;
    *&v40[8] = *(v27 + 36);
    *&v40[16] = *(v27 + 11);
    v33 = ApplePDPHelperInterface::getInstance(v10);
    v34 = (*(*v33 + 40))(v33, v40);
    v35 = *(a1 + 40);
    if (v34)
    {
      v10 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        v36 = *(v27 + 7);
        *buf = 136315394;
        *&buf[4] = "updateIpcContextConfiguration_sync";
        *&buf[12] = 1024;
        *&buf[14] = v36;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: Configured ipcContext %u", buf, 0x12u);
      }
    }

    else
    {
      v10 = os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR);
      if (v10)
      {
        v39 = *(v27 + 7);
        *buf = 136315394;
        *&buf[4] = "updateIpcContextConfiguration_sync";
        *&buf[12] = 1024;
        *&buf[14] = v39;
        _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%s: Cannot configure ipcContext %u", buf, 0x12u);
      }
    }

    goto LABEL_51;
  }

LABEL_57:
  if ((a1 + 392) != &v41)
  {
    sub_1004251B0((a1 + 392), v41, v42);
  }

  sub_10006DCAC(&v41, v42[0]);
}

void sub_100420994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10006DCAC(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_1004209D8(uint64_t a1)
{
  i = a1;
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  v2 = *(a1 + 64);
  *buf = *(a1 + 56);
  *&buf[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v3 = *v71;
  v4 = *&v71[8];
  v65 = i;
  if (*v71 != *&v71[8])
  {
    v5 = *&v71[16];
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = *&v71[8];
    while (v3 != v6)
    {
      v66 = *v3;
      memset(buf, 0, 24);
      sub_10041FED0(i, v66, buf);
      v69 = &v66;
      v7 = sub_1001AB974(&v67, &v66) + 5;
      if (v7 != buf)
      {
        sub_1004232BC(v7, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 4));
      }

      v70 = buf;
      sub_10042303C(&v70);
      memset(buf, 0, 24);
      sub_10041F96C(buf);
      v9 = *buf;
      v8 = *&buf[8];
      while (v9 != v8)
      {
        v69 = &v66;
        v10 = sub_1001AB974(&v67, &v66);
        sub_1004203F4((v10 + 5), v9);
        v9 += 3;
      }

      v70 = buf;
      sub_10042303C(&v70);
      ++v3;
      for (i = v65; v3 != v4; ++v3)
      {
        if (v5(*v3))
        {
          break;
        }
      }
    }
  }

  v11 = *(i + 416);
  v12 = (i + 424);
  if (v11 != (i + 424))
  {
    do
    {
      v13 = v68[0];
      if (!v68[0])
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 8);
      v15 = v68;
      do
      {
        if (*(v13 + 8) >= v14)
        {
          v15 = v13;
        }

        v13 = *&v13[8 * (*(v13 + 8) < v14)];
      }

      while (v13);
      if (v15 != v68 && v14 >= *(v15 + 8))
      {
        v20 = sub_100007DEC(&v67, v11 + 8);
        v21 = v11[5];
        v22 = v11[6];
        if (v21 != v22)
        {
          v23 = v20;
          do
          {
            v25 = *v23;
            v24 = v23[1];
            if (*v23 != v24)
            {
              v26 = *(v21 + 23);
              if (v26 >= 0)
              {
                v27 = *(v21 + 23);
              }

              else
              {
                v27 = v21[1];
              }

              while (1)
              {
                v28 = *(v25 + 23);
                v29 = v28;
                if ((v28 & 0x80u) != 0)
                {
                  v28 = *(v25 + 8);
                }

                if (v28 == v27)
                {
                  v30 = v29 >= 0 ? v25 : *v25;
                  v31 = v26 >= 0 ? v21 : *v21;
                  if (!memcmp(v30, v31, v27))
                  {
                    break;
                  }
                }

                v25 += 48;
                if (v25 == v24)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v25 == v24)
            {
LABEL_55:
              memset(v71, 0, sizeof(v71));
              v32 = subscriber::simSlotAsInstance();
              *v71 = v32 + 1;
              v71[16] = 0;
              v33 = v21;
              if (*(v21 + 23) < 0)
              {
                v33 = *v21;
              }

              *&v71[8] = v33;
              Instance = ApplePDPHelperInterface::getInstance(v32);
              v35 = (*(*Instance + 48))(Instance, v71);
              v36 = *(i + 40);
              if (v35)
              {
                if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_DEFAULT))
                {
                  v37 = v21;
                  if (*(v21 + 23) < 0)
                  {
                    v37 = *v21;
                  }

                  *buf = 136315394;
                  *&buf[4] = "updateIpcConfigSetConfiguration_sync";
                  *&buf[12] = 2080;
                  *&buf[14] = v37;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s: Unconfigured ipcConfigSet %s", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_ERROR))
              {
                v38 = v21;
                if (*(v21 + 23) < 0)
                {
                  v38 = *v21;
                }

                *buf = 136315394;
                *&buf[4] = "updateIpcConfigSetConfiguration_sync";
                *&buf[12] = 2080;
                *&buf[14] = v38;
                _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%s: Cannot unconfigure ipcConfigSet %s", buf, 0x16u);
              }
            }

            v21 += 6;
          }

          while (v21 != v22);
        }
      }

      else
      {
LABEL_27:
        v16 = *(i + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v39 = subscriber::asString();
          *v71 = 136315394;
          *&v71[4] = "updateIpcConfigSetConfiguration_sync";
          *&v71[12] = 2080;
          *&v71[14] = v39;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s: cannot find new config for %s", v71, 0x16u);
        }
      }

      v17 = v11[1];
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
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  v40 = v67;
  if (v67 != v68)
  {
    v41 = "updateIpcConfigSetConfiguration_sync";
    do
    {
      v43 = *(v40 + 5);
      v42 = *(v40 + 6);
      while (v43 != v42)
      {
        v44 = *v12;
        v45 = *(v40 + 8);
        if (!*v12)
        {
          goto LABEL_98;
        }

        v46 = v12;
        do
        {
          if (*(v44 + 32) >= v45)
          {
            v46 = v44;
          }

          v44 = *(v44 + 8 * (*(v44 + 32) < v45));
        }

        while (v44);
        if (v46 == v12 || v45 < *(v46 + 8))
        {
          goto LABEL_98;
        }

        v48 = v46[5];
        v47 = v46[6];
        if (v48 != v47)
        {
          v49 = v41;
          v50 = v43[2].i8[7];
          if (v50 >= 0)
          {
            v51 = v43[2].u8[7];
          }

          else
          {
            v51 = v43[1];
          }

          while (1)
          {
            v52 = *(v48 + 23);
            v53 = v52;
            if ((v52 & 0x80u) != 0)
            {
              v52 = *(v48 + 8);
            }

            if (v52 == v51)
            {
              v54 = v53 >= 0 ? v48 : *v48;
              v55 = v50 >= 0 ? v43 : *v43;
              if (!memcmp(v54, v55, v51))
              {
                break;
              }
            }

            v48 += 48;
            if (v48 == v47)
            {
              i = v65;
              v41 = v49;
              goto LABEL_98;
            }
          }

          i = v65;
          v41 = v49;
        }

        if (v48 == v47 || (IPCConfigSet::operator==() & 1) == 0)
        {
LABEL_98:
          memset(v71, 0, sizeof(v71));
          v56 = subscriber::simSlotAsInstance();
          *v71 = v56 + 1;
          v71[16] = 1;
          v57 = v43;
          if (v43[2].i8[7] < 0)
          {
            v57 = *v43;
          }

          *&v71[8] = v57;
          *&v71[20] = vrev64_s32(v43[3]);
          *&v71[28] = v43[5].i32[0];
          v58 = ApplePDPHelperInterface::getInstance(v56);
          v59 = (*(*v58 + 48))(v58, v71);
          v60 = *(i + 40);
          if (v59)
          {
            if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_DEFAULT))
            {
              v61 = v43;
              if (v43[2].i8[7] < 0)
              {
                v61 = *v43;
              }

              *buf = 136315394;
              *&buf[4] = v41;
              *&buf[12] = 2080;
              *&buf[14] = v61;
              _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s: Configured ipcConfigSet %s", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(*(i + 40), OS_LOG_TYPE_ERROR))
          {
            v62 = v43;
            if (v43[2].i8[7] < 0)
            {
              v62 = *v43;
            }

            *buf = 136315394;
            *&buf[4] = v41;
            *&buf[12] = 2080;
            *&buf[14] = v62;
            _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%s: Cannot configure ipcConfigSet %s", buf, 0x16u);
          }
        }

        v43 += 6;
      }

      v63 = *(v40 + 1);
      if (v63)
      {
        do
        {
          v64 = v63;
          v63 = *v63;
        }

        while (v63);
      }

      else
      {
        do
        {
          v64 = *(v40 + 2);
          v19 = *v64 == v40;
          v40 = v64;
        }

        while (!v19);
      }

      v40 = v64;
    }

    while (v64 != v68);
  }

  if ((i + 416) != &v67)
  {
    sub_100425488((i + 416), v67, v68);
  }

  sub_100423BA0(&v67, v68[0]);
}

void sub_1004211CC(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v12 = *(a1 + 424);
  if (v12)
  {
    v13 = a1 + 424;
    do
    {
      if (*(v12 + 32) >= a2)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < a2));
    }

    while (v12);
    if (v13 != a1 + 424 && *(v13 + 32) <= a2)
    {
      if ((a5 & 0x8000011) != 0)
      {
        v19 = sub_10041E484(a1);
        v20 = 0;
        if (a3)
        {
          if (v19 != a2)
          {
            v21 = sub_10041D0F0(a1);
            v20 = v21 == a2;
            if (v21 != a2)
            {
              v6 &= 0xFFFFFFFFF7FFFFEELL;
            }
          }
        }
      }

      else
      {
        v20 = 0;
      }

      for (i = *(v13 + 40); i != *(v13 + 48); i += 6)
      {
        if (*(i + 6) == a4)
        {
          v23 = i[4];
          if (!v23 || (v23 & v6) != 0)
          {
            if (*(i + 45) != 1)
            {
              v26 = *(a1 + 40);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v27 = i;
                if (*(i + 23) < 0)
                {
                  v27 = *i;
                }

                v31 = 136316162;
                *v32 = v27;
                *&v32[8] = 1024;
                *v33 = a2;
                *&v33[4] = 1024;
                *v34 = a3;
                *&v34[4] = 1024;
                *&v34[6] = a4;
                v35 = 2048;
                v36 = v6;
                v28 = "#I (2) ipcInterfaceConfig name = %{pubic}s [simSlot=%d pdpId=%d dp=%d connmask=0x%lx";
LABEL_42:
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, &v31, 0x28u);
              }

LABEL_43:
              if (*(i + 23) < 0)
              {
                sub_100005F2C(a6, *i, i[1]);
              }

              else
              {
                v30 = *i;
                *(a6 + 16) = i[2];
                *a6 = v30;
              }

              return;
            }

            if (v20 == *(i + 44))
            {
              v26 = *(a1 + 40);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v29 = i;
                if (*(i + 23) < 0)
                {
                  v29 = *i;
                }

                v31 = 136316162;
                *v32 = v29;
                *&v32[8] = 1024;
                *v33 = a2;
                *&v33[4] = 1024;
                *v34 = a3;
                *&v34[4] = 1024;
                *&v34[6] = a4;
                v35 = 2048;
                v36 = v6;
                v28 = "#I (1) ipcInterfaceConfig name = %{pubic}s [simSlot=%d pdpId=%d dp=%d connmask=0x%lx";
                goto LABEL_42;
              }

              goto LABEL_43;
            }
          }
        }
      }

      v25 = *(a1 + 40);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v31 = 136315650;
      *v32 = subscriber::asString();
      *&v32[8] = 1024;
      *v33 = a4;
      *&v33[4] = 2048;
      *v34 = v6;
      v15 = "#E There is no IPC configuration available for %s, data path %d and mask %llu";
      v16 = v25;
      v17 = 28;
      goto LABEL_10;
    }
  }

  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 136315138;
    *v32 = subscriber::asString();
    v15 = "#E There is no IPC configuration available for %s";
    v16 = v14;
    v17 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &v31, v17);
  }

LABEL_11:
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v31 = 67109888;
    *v32 = a2;
    *&v32[4] = 1024;
    *&v32[6] = a3;
    *v33 = 1024;
    *&v33[2] = a4;
    *v34 = 2048;
    *&v34[2] = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I (3) ipcInterfaceConfig name = empty [simSlot=%d pdpId=%d dp=%d connmask=0x%lx", &v31, 0x1Eu);
  }

  sub_10000501C(a6, "");
}

BOOL sub_10042156C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 424);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a4;
  v7 = a1 + 424;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v7 == a1 + 424 || *(v7 + 32) > a2)
  {
LABEL_8:
    v8 = *(a1 + 40);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v17 = 136315138;
    v18 = subscriber::asString();
    v10 = "#E There is no IPC configuration available for %s";
    v11 = v8;
    v12 = 12;
    goto LABEL_10;
  }

  if ((a4 & 0x8000011) != 0 && sub_10041E484(a1) != a2)
  {
    v6 &= 0xFFFFFFFFF7FFFFEELL;
  }

  for (i = *(v7 + 40); i != *(v7 + 48); i += 48)
  {
    if (!*(i + 24))
    {
      v14 = *(i + 32);
      if (!v14 || (v14 & v6) != 0)
      {
        return (*(i + 28) >> 2) & 1;
      }
    }
  }

  v16 = *(a1 + 40);
  result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    v17 = 136315394;
    v18 = subscriber::asString();
    v19 = 2048;
    v20 = v6;
    v10 = "#E There is no IPC configuration available for %s, and mask %llu";
    v11 = v16;
    v12 = 22;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v17, v12);
    return 0;
  }

  return result;
}

void sub_100421728(uint64_t a1)
{
  sub_1004235CC(a1);

  operator delete();
}

char *sub_100421760@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[359] < 0)
  {
    return sub_100005F2C(a2, *(result + 42), *(result + 43));
  }

  *a2 = *(result + 21);
  *(a2 + 16) = *(result + 44);
  return result;
}

char *sub_100421788@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[383] < 0)
  {
    return sub_100005F2C(a2, *(result + 45), *(result + 46));
  }

  *a2 = *(result + 360);
  *(a2 + 16) = *(result + 47);
  return result;
}

uint64_t sub_1004217B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1004217D0(a2, *(a1 + 288), *(a1 + 296), (*(a1 + 296) - *(a1 + 288)) >> 4);
}

uint64_t sub_1004217D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_100421838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_100421858(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_1004218E0(v7);
  return v4;
}

uint64_t sub_1004218E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

void sub_100421918(uint64_t *a1, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v211 = a2 - 1;
  v8 = a1;
  while (1)
  {
    a1 = v8;
    v9 = (a2 - v8) >> 4;
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3:
          v132 = a1[2];
          v133 = *(v132 + 148);
          v134 = *a1;
          v135 = *(*a1 + 148);
          v136 = *(a2 - 2);
          v137 = *(v136 + 148);
          if (v133 >= v135)
          {
            if (v137 >= v133)
            {
              return;
            }

            a1[2] = v136;
            *(a2 - 2) = v132;
            v195 = a1[3];
            v211 = a1 + 3;
            a1[3] = *(a2 - 1);
            *(a2 - 1) = v195;
            v196 = a1[2];
            v197 = *a1;
            if (*(v196 + 148) >= *(*a1 + 148))
            {
              return;
            }

            *a1 = v196;
            a1[2] = v197;
            v138 = a1 + 1;
          }

          else
          {
            if (v137 >= v133)
            {
              v138 = a1 + 3;
              v207 = a1[3];
              v208 = a1[1];
              *a1 = v132;
              a1[1] = v207;
              a1[2] = v134;
              a1[3] = v208;
              v209 = *(a2 - 2);
              if (*(v209 + 148) >= v135)
              {
                return;
              }

              a1[2] = v209;
            }

            else
            {
              v138 = a1 + 1;
              *a1 = v136;
            }

            *(a2 - 2) = v134;
          }

          v210 = *v138;
          *v138 = *v211;
          *v211 = v210;
          return;
        case 4:

          sub_100422600(a1, a1 + 2, a1 + 4, a2 - 2);
          return;
        case 5:
          sub_100422600(a1, a1 + 2, a1 + 4, a1 + 6);
          v117 = *(a2 - 2);
          v118 = a1[6];
          if (*(v117 + 148) < *(v118 + 148))
          {
            a1[6] = v117;
            *(a2 - 2) = v118;
            v119 = a1[7];
            a1[7] = *(a2 - 1);
            *(a2 - 1) = v119;
            v120 = a1[6];
            v121 = *(v120 + 148);
            v122 = a1[4];
            if (v121 < *(v122 + 148))
            {
              v123 = a1[5];
              v124 = a1[7];
              a1[4] = v120;
              a1[5] = v124;
              a1[6] = v122;
              a1[7] = v123;
              v125 = a1[2];
              if (v121 < *(v125 + 148))
              {
                v126 = a1[3];
                a1[2] = v120;
                a1[3] = v124;
                a1[4] = v125;
                a1[5] = v126;
                v127 = *a1;
                if (v121 < *(*a1 + 148))
                {
                  v128 = a1[1];
                  *a1 = v120;
                  a1[1] = v124;
                  a1[2] = v127;
                  a1[3] = v128;
                }
              }
            }
          }

          return;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v129 = *(a2 - 2);
        v130 = *a1;
        if (*(v129 + 148) < *(*a1 + 148))
        {
          *a1 = v129;
          *(a2 - 2) = v130;
          v131 = a1[1];
          a1[1] = *(a2 - 1);
          *(a2 - 1) = v131;
        }

        return;
      }
    }

    if (v9 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v154 = v10 >> 1;
      v155 = v10 >> 1;
      do
      {
        v156 = v155;
        if (v154 >= v155)
        {
          v157 = (2 * v155) | 1;
          v158 = &a1[2 * v157];
          if (2 * v156 + 2 >= v9)
          {
            v159 = *v158;
          }

          else
          {
            v159 = *v158;
            if (*(*v158 + 148) < *(v158[2] + 148))
            {
              v159 = v158[2];
              v158 += 2;
              v157 = 2 * v156 + 2;
            }
          }

          v160 = &a1[2 * v156];
          v161 = *v160;
          if (*(v159 + 148) >= *(*v160 + 148))
          {
            v162 = v160[1];
            *v160 = 0;
            v160[1] = 0;
            v163 = *v158;
            do
            {
              v164 = v158;
              v165 = v158[1];
              *v164 = 0;
              v164[1] = 0;
              v166 = v160[1];
              *v160 = v163;
              v160[1] = v165;
              if (v166)
              {
                sub_100004A34(v166);
              }

              if (v154 < v157)
              {
                break;
              }

              v158 = &a1[2 * ((2 * v157) | 1)];
              if (2 * v157 + 2 >= v9)
              {
                v163 = *v158;
                v157 = (2 * v157) | 1;
              }

              else
              {
                v163 = *v158;
                if (*(*v158 + 148) >= *(v158[2] + 148))
                {
                  v157 = (2 * v157) | 1;
                }

                else
                {
                  v163 = v158[2];
                  v158 += 2;
                  v157 = 2 * v157 + 2;
                }
              }

              v160 = v164;
            }

            while (*(v163 + 148) >= *(v161 + 148));
            v167 = v164[1];
            *v164 = v161;
            v164[1] = v162;
            if (v167)
            {
              sub_100004A34(v167);
            }
          }
        }

        v155 = v156 - 1;
      }

      while (v156);
      while (2)
      {
        v168 = 0;
        v169 = a2;
        v171 = *a1;
        v170 = a1[1];
        *a1 = 0;
        a1[1] = 0;
        v172 = a1;
        do
        {
          v173 = &v172[2 * v168];
          v174 = v173 + 2;
          if (2 * v168 + 2 >= v9)
          {
            v175 = *v174;
            v168 = (2 * v168) | 1;
          }

          else
          {
            v177 = v173[4];
            v176 = v173 + 4;
            v175 = v177;
            if (*(*(v176 - 2) + 148) < *(v177 + 148))
            {
              v174 = v176;
              v168 = 2 * v168 + 2;
            }

            else
            {
              v175 = *(v176 - 2);
              v168 = (2 * v168) | 1;
            }
          }

          v178 = v174[1];
          *v174 = 0;
          v174[1] = 0;
          v179 = v172[1];
          *v172 = v175;
          v172[1] = v178;
          if (v179)
          {
            sub_100004A34(v179);
          }

          v172 = v174;
        }

        while (v168 <= ((v9 - 2) >> 1));
        a2 -= 2;
        if (v174 == v169 - 2)
        {
          v194 = v174[1];
          *v174 = v171;
          v174[1] = v170;
          if (!v194)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v180 = *(v169 - 1);
          *a2 = 0;
          *(v169 - 1) = 0;
          v181 = v174[1];
          *v174 = v180;
          if (v181)
          {
            sub_100004A34(v181);
          }

          v182 = *(v169 - 1);
          *(v169 - 2) = v171;
          *(v169 - 1) = v170;
          if (v182)
          {
            sub_100004A34(v182);
          }

          v183 = ((v174 + 2) - a1) >> 4;
          v184 = v183 < 2;
          v185 = v183 - 2;
          if (v184)
          {
            goto LABEL_197;
          }

          v186 = v185 >> 1;
          v187 = &a1[2 * (v185 >> 1)];
          v188 = *v174;
          if (*(*v187 + 148) >= *(*v174 + 148))
          {
            goto LABEL_197;
          }

          v189 = v174[1];
          *v174 = 0;
          v174[1] = 0;
          v190 = *v187;
          do
          {
            v191 = v187;
            v192 = v187[1];
            *v191 = 0;
            v191[1] = 0;
            v193 = v174[1];
            *v174 = v190;
            v174[1] = v192;
            if (v193)
            {
              sub_100004A34(v193);
            }

            if (!v186)
            {
              break;
            }

            v186 = (v186 - 1) >> 1;
            v187 = &a1[2 * v186];
            v190 = *v187;
            v174 = v191;
          }

          while (*(*v187 + 148) < *(v188 + 148));
          v194 = v191[1];
          *v191 = v188;
          v191[1] = v189;
          if (!v194)
          {
LABEL_197:
            v184 = v9-- <= 2;
            if (v184)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      sub_100004A34(v194);
      goto LABEL_197;
    }

    v11 = &a1[2 * (v9 >> 1)];
    v12 = v11;
    v13 = *(a2 - 2);
    v14 = *(v13 + 148);
    if (v9 >= 0x81)
    {
      v15 = *v11;
      v16 = *(*v11 + 148);
      v17 = *a1;
      v18 = *(*a1 + 148);
      if (v16 >= v18)
      {
        if (v14 < v16)
        {
          *v11 = v13;
          *(a2 - 2) = v15;
          v25 = v11 + 1;
          v26 = v11[1];
          v11[1] = *(a2 - 1);
          *(a2 - 1) = v26;
          v27 = *a1;
          if (*(*v11 + 148) < *(*a1 + 148))
          {
            *a1 = *v11;
            v19 = a1 + 1;
            *v11 = v27;
            goto LABEL_27;
          }
        }
      }

      else
      {
        if (v14 < v16)
        {
          v19 = a1 + 1;
          *a1 = v13;
          goto LABEL_26;
        }

        v19 = v11 + 1;
        v31 = v11[1];
        v32 = a1[1];
        *a1 = v15;
        a1[1] = v31;
        *v11 = v17;
        v11[1] = v32;
        v33 = *(a2 - 2);
        if (*(v33 + 148) < v18)
        {
          *v11 = v33;
LABEL_26:
          *(a2 - 2) = v17;
          v25 = a2 - 1;
LABEL_27:
          v34 = *v19;
          *v19 = *v25;
          *v25 = v34;
        }
      }

      v35 = v11 - 2;
      v36 = *(v11 - 2);
      v37 = *(v36 + 148);
      v38 = a1[2];
      v39 = *(v38 + 148);
      v40 = *(a2 - 4);
      v41 = *(v40 + 148);
      if (v37 >= v39)
      {
        if (v41 < v37)
        {
          *v35 = v40;
          *(a2 - 4) = v36;
          v43 = v11 - 1;
          v44 = *(v11 - 1);
          *(v11 - 1) = *(a2 - 3);
          *(a2 - 3) = v44;
          v45 = a1[2];
          if (*(*v35 + 148) < *(v45 + 148))
          {
            a1[2] = *v35;
            *v35 = v45;
            v42 = a1 + 3;
            goto LABEL_40;
          }
        }
      }

      else
      {
        if (v41 < v37)
        {
          v42 = a1 + 3;
          a1[2] = v40;
          goto LABEL_39;
        }

        v42 = v11 - 1;
        v49 = *(v11 - 1);
        v50 = a1[3];
        a1[2] = v36;
        a1[3] = v49;
        *v35 = v38;
        *(v11 - 1) = v50;
        v51 = *(a2 - 4);
        if (*(v51 + 148) < v39)
        {
          *v35 = v51;
LABEL_39:
          *(a2 - 4) = v38;
          v43 = a2 - 3;
LABEL_40:
          v52 = *v42;
          *v42 = *v43;
          *v43 = v52;
        }
      }

      v55 = v11[2];
      v53 = v11 + 2;
      v54 = v55;
      v56 = *(v55 + 148);
      v57 = a1[4];
      v58 = *(v57 + 148);
      v59 = *(a2 - 6);
      v60 = *(v59 + 148);
      if (v56 >= v58)
      {
        if (v60 < v56)
        {
          *v53 = v59;
          *(a2 - 6) = v54;
          v63 = v53 + 1;
          v62 = v53[1];
          v53[1] = *(a2 - 5);
          *(a2 - 5) = v62;
          v54 = *v53;
          v64 = a1[4];
          if (*(*v53 + 148) < *(v64 + 148))
          {
            a1[4] = v54;
            *v53 = v64;
            v61 = a1 + 5;
            goto LABEL_50;
          }
        }
      }

      else
      {
        if (v60 < v56)
        {
          v61 = a1 + 5;
          a1[4] = v59;
          goto LABEL_49;
        }

        v61 = v53 + 1;
        v65 = v53[1];
        v66 = a1[5];
        a1[4] = v54;
        a1[5] = v65;
        *v53 = v57;
        v53[1] = v66;
        v67 = *(a2 - 6);
        if (*(v67 + 148) >= v58)
        {
          v54 = v57;
        }

        else
        {
          *v53 = v67;
LABEL_49:
          *(a2 - 6) = v57;
          v63 = a2 - 5;
LABEL_50:
          v68 = *v61;
          *v61 = *v63;
          *v63 = v68;
          v54 = *v53;
        }
      }

      v69 = *v12;
      v70 = *(*v12 + 148);
      v71 = *v35;
      v72 = *(*v35 + 148);
      v73 = *(v54 + 148);
      if (v70 >= v72)
      {
        if (v73 < v70)
        {
          v76 = v12 + 1;
          v77 = v12[1];
          *v12 = v54;
          v12[1] = v53[1];
          *v53 = v69;
          v53[1] = v77;
          if (v73 < v72)
          {
            *v35 = v54;
            v74 = v35 + 1;
            *v12 = v71;
            goto LABEL_60;
          }

          v69 = v54;
        }
      }

      else
      {
        if (v73 < v70)
        {
          *v35 = v54;
          v74 = v35 + 1;
          *v53 = v71;
          v75 = v53 + 1;
          goto LABEL_59;
        }

        v78 = v12[1];
        *v12 = v71;
        v79 = v35[1];
        *v35 = v69;
        v35[1] = v78;
        v12[1] = v79;
        if (v73 >= v72)
        {
          v69 = v71;
        }

        else
        {
          *v12 = v54;
          *v53 = v71;
          v75 = v53 + 1;
          v74 = v12 + 1;
LABEL_59:
          v76 = v75;
LABEL_60:
          v80 = *v74;
          *v74 = *v76;
          *v76 = v80;
          v69 = *v12;
        }
      }

      v81 = *a1;
      *a1 = v69;
      v24 = a1 + 1;
      *v12 = v81;
      v30 = v12 + 1;
      goto LABEL_62;
    }

    v20 = *a1;
    v21 = *(*a1 + 148);
    v22 = *v11;
    v23 = *(*v11 + 148);
    if (v21 >= v23)
    {
      if (v14 >= v21)
      {
        goto LABEL_63;
      }

      *a1 = v13;
      *(a2 - 2) = v20;
      v28 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v28;
      v29 = *v12;
      if (*(*a1 + 148) >= *(*v12 + 148))
      {
        goto LABEL_63;
      }

      *v12 = *a1;
      *a1 = v29;
      v24 = v12 + 1;
      v30 = a1 + 1;
    }

    else
    {
      if (v14 >= v21)
      {
        v24 = a1 + 1;
        v46 = a1[1];
        v47 = v12[1];
        *v12 = v20;
        v12[1] = v46;
        *a1 = v22;
        a1[1] = v47;
        v48 = *(a2 - 2);
        if (*(v48 + 148) >= v23)
        {
          goto LABEL_63;
        }

        *a1 = v48;
      }

      else
      {
        v24 = v11 + 1;
        *v12 = v13;
      }

      *(a2 - 2) = v22;
      v30 = a2 - 1;
    }

LABEL_62:
    v82 = *v24;
    *v24 = *v30;
    *v30 = v82;
LABEL_63:
    --a3;
    v83 = *a1;
    if ((a4 & 1) != 0 || *(*(a1 - 2) + 148) < *(v83 + 148))
    {
      v84 = 0;
      v85 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v86 = *(v83 + 148);
      do
      {
        v87 = a1[v84 + 2];
        v84 += 2;
      }

      while (*(v87 + 148) < v86);
      v88 = &a1[v84];
      v89 = a2;
      if (v84 == 2)
      {
        v89 = a2;
        do
        {
          if (v88 >= v89)
          {
            break;
          }

          v91 = *(v89 - 2);
          v89 -= 2;
        }

        while (*(v91 + 148) >= v86);
      }

      else
      {
        do
        {
          v90 = *(v89 - 2);
          v89 -= 2;
        }

        while (*(v90 + 148) >= v86);
      }

      if (v88 >= v89)
      {
        v8 = &a1[v84];
      }

      else
      {
        v92 = *v89;
        v8 = &a1[v84];
        v93 = v89;
        do
        {
          *v8 = v92;
          *v93 = v87;
          v94 = v8[1];
          v8[1] = v93[1];
          v93[1] = v94;
          do
          {
            v95 = v8[2];
            v8 += 2;
            v87 = v95;
          }

          while (*(v95 + 148) < v86);
          do
          {
            v96 = *(v93 - 2);
            v93 -= 2;
            v92 = v96;
          }

          while (*(v96 + 148) >= v86);
        }

        while (v8 < v93);
      }

      v97 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v98 = *v97;
        *v97 = 0;
        *(v8 - 1) = 0;
        v99 = a1[1];
        *a1 = v98;
        if (v99)
        {
          sub_100004A34(v99);
        }
      }

      v100 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v85;
      if (v100)
      {
        sub_100004A34(v100);
      }

      if (v88 < v89)
      {
        goto LABEL_89;
      }

      v101 = sub_100422764(a1, v8 - 2);
      if (sub_100422764(v8, a2))
      {
        a2 = v8 - 2;
        if (v101)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v101)
      {
LABEL_89:
        sub_100421918(a1, v8 - 2, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v102 = a1[1];
      *a1 = 0;
      a1[1] = 0;
      v103 = *(v83 + 148);
      if (v103 >= *(*(a2 - 2) + 148))
      {
        v105 = a1 + 2;
        do
        {
          v8 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v105 += 2;
        }

        while (v103 >= *(*v8 + 148));
      }

      else
      {
        v8 = a1;
        do
        {
          v104 = v8[2];
          v8 += 2;
        }

        while (v103 >= *(v104 + 148));
      }

      v106 = a2;
      if (v8 < a2)
      {
        v106 = a2;
        do
        {
          v107 = *(v106 - 2);
          v106 -= 2;
        }

        while (v103 < *(v107 + 148));
      }

      if (v8 < v106)
      {
        v108 = *v8;
        v109 = *v106;
        do
        {
          *v8 = v109;
          *v106 = v108;
          v110 = v8[1];
          v8[1] = v106[1];
          v106[1] = v110;
          do
          {
            v111 = v8[2];
            v8 += 2;
            v108 = v111;
          }

          while (v103 >= *(v111 + 148));
          do
          {
            v112 = *(v106 - 2);
            v106 -= 2;
            v109 = v112;
          }

          while (v103 < *(v112 + 148));
        }

        while (v8 < v106);
      }

      v113 = v8 - 2;
      if (v8 - 2 != a1)
      {
        v114 = *v113;
        *v113 = 0;
        *(v8 - 1) = 0;
        v115 = a1[1];
        *a1 = v114;
        if (v115)
        {
          sub_100004A34(v115);
        }
      }

      a4 = 0;
      v116 = *(v8 - 1);
      *(v8 - 2) = v83;
      *(v8 - 1) = v102;
      if (v116)
      {
        sub_100004A34(v116);
        a4 = 0;
      }
    }
  }

  v139 = a1 + 2;
  v141 = a1 == a2 || v139 == a2;
  if (a4)
  {
    if (!v141)
    {
      v142 = 0;
      v143 = a1;
      do
      {
        v144 = v143;
        v143 = v139;
        v145 = v144[2];
        v146 = *v144;
        if (*(v145 + 148) < *(*v144 + 148))
        {
          v147 = v144[3];
          v148 = v142;
          *v143 = 0;
          v143[1] = 0;
          while (1)
          {
            v149 = (a1 + v148);
            v150 = *(a1 + v148 + 8);
            *v149 = 0;
            v149[1] = 0;
            v151 = *(a1 + v148 + 24);
            v149[2] = v146;
            v149[3] = v150;
            if (v151)
            {
              sub_100004A34(v151);
            }

            if (!v148)
            {
              break;
            }

            v146 = *(a1 + v148 - 16);
            v148 -= 16;
            if (*(v145 + 148) >= *(v146 + 148))
            {
              v152 = (a1 + v148 + 16);
              goto LABEL_146;
            }
          }

          v152 = a1;
LABEL_146:
          v153 = v152[1];
          *v152 = v145;
          v152[1] = v147;
          if (v153)
          {
            sub_100004A34(v153);
          }
        }

        v139 = v143 + 2;
        v142 += 16;
      }

      while (v143 + 2 != a2);
    }
  }

  else if (!v141)
  {
    v198 = (a1 + 3);
    do
    {
      v199 = a1;
      a1 = v139;
      v200 = v199[2];
      v201 = *v199;
      if (*(v200 + 148) < *(*v199 + 148))
      {
        v202 = v199[3];
        v203 = v198;
        *a1 = 0;
        a1[1] = 0;
        do
        {
          v204 = *(v203 - 2);
          *(v203 - 3) = 0;
          *(v203 - 2) = 0;
          v205 = *v203;
          *(v203 - 1) = v201;
          *v203 = v204;
          if (v205)
          {
            sub_100004A34(v205);
          }

          v201 = *(v203 - 5);
          v203 -= 2;
        }

        while (*(v200 + 148) < *(v201 + 148));
        v206 = *v203;
        *(v203 - 1) = v200;
        *v203 = v202;
        if (v206)
        {
          sub_100004A34(v206);
        }
      }

      v139 = a1 + 2;
      v198 += 2;
    }

    while (a1 + 2 != a2);
  }
}

uint64_t *sub_100422600(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(*a2 + 148);
  v6 = *result;
  v7 = *a3;
  v8 = *(*a3 + 148);
  if (v5 >= *(*result + 148))
  {
    if (v8 < v5)
    {
      *a2 = v7;
      *a3 = v4;
      v11 = a2 + 1;
      v10 = a2[1];
      a2[1] = a3[1];
      a3[1] = v10;
      v12 = *result;
      if (*(*a2 + 148) < *(*result + 148))
      {
        *result = *a2;
        v9 = result + 1;
        *a2 = v12;
LABEL_10:
        v14 = *v9;
        *v9 = *v11;
        *v11 = v14;
      }
    }
  }

  else
  {
    if (v8 < v5)
    {
      v9 = result + 1;
      *result = v7;
LABEL_9:
      *a3 = v6;
      v11 = a3 + 1;
      goto LABEL_10;
    }

    *result = v4;
    *a2 = v6;
    v9 = a2 + 1;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v6 = *a2;
    if (*(*a3 + 148) < *(*a2 + 148))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  v15 = *a3;
  if (*(*a4 + 148) < *(*a3 + 148))
  {
    *a3 = *a4;
    *a4 = v15;
    v16 = a3[1];
    a3[1] = a4[1];
    a4[1] = v16;
    v17 = *a2;
    if (*(*a3 + 148) < *(*a2 + 148))
    {
      *a2 = *a3;
      *a3 = v17;
      v18 = a2[1];
      a2[1] = a3[1];
      a3[1] = v18;
      v19 = *result;
      if (*(*a2 + 148) < *(*result + 148))
      {
        *result = *a2;
        *a2 = v19;
        v20 = result[1];
        result[1] = a2[1];
        a2[1] = v20;
      }
    }
  }

  return result;
}

BOOL sub_100422764(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v20 = a1[2];
      v21 = *(v20 + 148);
      v22 = *a1;
      v23 = *(*a1 + 148);
      v24 = *(a2 - 2);
      v25 = *(v24 + 148);
      if (v21 >= v23)
      {
        if (v25 >= v21)
        {
          return 1;
        }

        a1[2] = v24;
        *(a2 - 2) = v20;
        v36 = a1 + 3;
        v35 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v35;
        v37 = a1[2];
        v38 = *a1;
        if (*(v37 + 148) >= *(*a1 + 148))
        {
          return 1;
        }

        *a1 = v37;
        a1[2] = v38;
        v26 = a1 + 1;
      }

      else
      {
        if (v25 >= v21)
        {
          v26 = a1 + 3;
          v42 = a1[3];
          v43 = a1[1];
          *a1 = v20;
          a1[1] = v42;
          a1[2] = v22;
          a1[3] = v43;
          v44 = *(a2 - 2);
          if (*(v44 + 148) >= v23)
          {
            return 1;
          }

          a1[2] = v44;
        }

        else
        {
          v26 = a1 + 1;
          *a1 = v24;
        }

        *(a2 - 2) = v22;
        v36 = a2 - 1;
      }

      v45 = *v26;
      *v26 = *v36;
      *v36 = v45;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        sub_100422600(a1, a1 + 2, a1 + 4, a1 + 6);
        v8 = *(a2 - 2);
        v9 = a1[6];
        if (*(v8 + 148) < *(v9 + 148))
        {
          a1[6] = v8;
          *(a2 - 2) = v9;
          v10 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v10;
          v11 = a1[6];
          v12 = *(v11 + 148);
          v13 = a1[4];
          if (v12 < *(v13 + 148))
          {
            v14 = a1[5];
            v15 = a1[7];
            a1[4] = v11;
            a1[5] = v15;
            a1[6] = v13;
            a1[7] = v14;
            v16 = a1[2];
            if (v12 < *(v16 + 148))
            {
              v17 = a1[3];
              a1[2] = v11;
              a1[3] = v15;
              a1[4] = v16;
              a1[5] = v17;
              v18 = *a1;
              if (v12 < *(*a1 + 148))
              {
                v19 = a1[1];
                *a1 = v11;
                a1[1] = v15;
                a1[2] = v18;
                a1[3] = v19;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    sub_100422600(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    if (*(v5 + 148) < *(*a1 + 148))
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v7 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v27 = a1 + 4;
  v28 = a1[4];
  v29 = a1[2];
  v30 = *(v29 + 148);
  v31 = *a1;
  v32 = *(*a1 + 148);
  v33 = *(v28 + 148);
  if (v30 < v32)
  {
    if (v33 >= v30)
    {
      v34 = a1 + 3;
      v46 = a1[3];
      v47 = a1[1];
      *a1 = v29;
      a1[1] = v46;
      a1[2] = v31;
      a1[3] = v47;
      if (v33 >= v32)
      {
        goto LABEL_35;
      }

      a1[2] = v28;
    }

    else
    {
      v34 = a1 + 1;
      *a1 = v28;
    }

    a1[4] = v31;
    v40 = a1 + 5;
    goto LABEL_34;
  }

  if (v33 < v30)
  {
    v40 = a1 + 3;
    v39 = a1[3];
    v41 = a1[5];
    a1[2] = v28;
    a1[3] = v41;
    a1[4] = v29;
    a1[5] = v39;
    if (v33 < v32)
    {
      *a1 = v28;
      a1[2] = v31;
      v34 = a1 + 1;
LABEL_34:
      v48 = *v34;
      *v34 = *v40;
      *v40 = v48;
    }
  }

LABEL_35:
  v49 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = *v49;
    v53 = *v27;
    if (*(*v49 + 148) < *(v53 + 148))
    {
      v54 = v49[1];
      v55 = v50;
      *v49 = 0;
      v49[1] = 0;
      while (1)
      {
        v56 = (a1 + v55);
        v57 = *(a1 + v55 + 40);
        v56[4] = 0;
        v56[5] = 0;
        v58 = *(a1 + v55 + 56);
        v56[6] = v53;
        v56[7] = v57;
        if (v58)
        {
          sub_100004A34(v58);
        }

        if (v55 == -32)
        {
          break;
        }

        v53 = *(a1 + v55 + 16);
        v55 -= 16;
        if (*(v52 + 148) >= *(v53 + 148))
        {
          v59 = (a1 + v55 + 48);
          goto LABEL_45;
        }
      }

      v59 = a1;
LABEL_45:
      v60 = v59[1];
      *v59 = v52;
      v59[1] = v54;
      if (v60)
      {
        sub_100004A34(v60);
      }

      if (++v51 == 8)
      {
        return v49 + 2 == a2;
      }
    }

    v27 = v49;
    v50 += 16;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_100422B08(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

__int128 *sub_100422B44(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        sub_100004A34(v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100422BB0(uint64_t a1)
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

__n128 sub_100422C30(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 38) = *(a2 + 38);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100422CA8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100422E0C(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 38) = *(a2 + 38);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_100422E64(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100422FA8(&v18);
  return v17;
}

void sub_100422DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100422FA8(va);
  _Unwind_Resume(a1);
}

void sub_100422E0C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100422E64(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 38) = *(v6 + 38);
      *(a4 + 24) = v8;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 3;
    }
  }

  return sub_100422F28(v10);
}

uint64_t sub_100422F28(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100422F60(a1);
  }

  return a1;
}

void sub_100422F60(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 25);
    v1 -= 6;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_100422FA8(uint64_t a1)
{
  sub_100422FE0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100422FE0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 6;
      *(a1 + 16) = v2 - 6;
      if (*(v2 - 25) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10042303C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100423090(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100423090(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 25);
    v3 -= 6;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__n128 sub_1004230E0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 38) = *(a2 + 38);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_100423158(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_100422E0C(a1, v6);
  }

  v7 = 48 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
    v9 = v19;
    v10 = v20;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  v11 = *(a2 + 24);
  *(v7 + 38) = *(a2 + 38);
  *(v7 + 24) = v11;
  *&v20 = v10 + 48;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_100422E64(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_100422FA8(&v18);
  return v17;
}

void sub_1004232A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100422FA8(va);
  _Unwind_Resume(a1);
}

void sub_1004232BC(uint64_t *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_100423470(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_1004234B0(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 4) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(v8, v6);
        v14 = *(&v6[1].__r_.__value_.__r.__words[1] + 6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 38) = v14;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      v15 = *(v11 - 25);
      v11 -= 6;
      if (v15 < 0)
      {
        operator delete(*v11);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (v11 + __str - v8);
    if (v11 != v8)
    {
      do
      {
        std::string::operator=(v8, v6);
        v13 = *(&v6[1].__r_.__value_.__r.__words[1] + 6);
        *(v8 + 24) = *&v6[1].__r_.__value_.__l.__data_;
        *(v8 + 38) = v13;
        v6 += 2;
        v8 += 48;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = sub_1004234FC(a1, v12, a3, v11);
  }
}

void sub_100423470(uint64_t a1)
{
  if (*a1)
  {
    sub_100423090(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1004234B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100422E0C(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1004234FC(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      *(v4 + 38) = *(v6 + 38);
      *(v4 + 24) = v9;
      v6 += 3;
      v4 = v8 + 48;
      v14 = v8 + 48;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_100422F28(v11);
  return v4;
}

void sub_1004235CC(uint64_t a1)
{
  *a1 = off_101E4BEB0;
  v2 = *(a1 + 448);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_100423BA0(a1 + 416, *(a1 + 424));
  sub_10006DCAC(a1 + 392, *(a1 + 400));
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  sub_10006DCAC(a1 + 312, *(a1 + 320));
  v6 = (a1 + 288);
  sub_1000212F4(&v6);
  sub_100423B38(a1 + 264, *(a1 + 272));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 96));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  PDPConfigInterface::~PDPConfigInterface(a1);
}

void sub_100423764(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100423838);
  __cxa_rethrow();
}

void sub_1004237A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004237F8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100423838(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100423864(ServiceManager::Service *this)
{
  *this = off_101E4C0E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1004238C0(ServiceManager::Service *this)
{
  *this = off_101E4C0E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_100423940@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_100423980(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_1004187B4(v2, &v4);
  }

  sub_1004187B4(v2, &v4);
}

uint64_t sub_100423A38(std::mutex *this, uint64_t *a2)
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

void sub_100423B38(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100423B38(a1, *a2);
    sub_100423B38(a1, *(a2 + 1));
    v4 = (a2 + 104);
    sub_1000212F4(&v4);
    std::mutex::~mutex((a2 + 40));
    operator delete(a2);
  }
}

void sub_100423BA0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100423BA0(a1, *a2);
    sub_100423BA0(a1, *(a2 + 1));
    v4 = (a2 + 40);
    sub_10042303C(&v4);
    operator delete(a2);
  }
}

uint64_t *sub_100423C00(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *sub_100423CEC(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t *sub_100423DC4(void **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  ServiceMap = Registry::getServiceMap(*(*v1 + 56));
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
  group = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &group);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_10:
  v13 = v1[1];
  group = v13;
  if (v13)
  {
    dispatch_retain(v13);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  (*(*v11 + 32))(v11, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_16:
  v14 = *(v2 + 384);
  if (v14 != -1)
  {
    notify_cancel(v14);
    *(v2 + 384) = -1;
  }

  v15 = *(v2 + 288);
  for (i = *(v2 + 296); v15 != i; v15 += 2)
  {
    v17 = *v15;
    v18 = v15[1];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 48))(v17);
    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  ctu::RestModule::disconnect((v2 + 72));
  v19 = *(v2 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: shut down !", buf, 2u);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_1000FF844(&v22);
  return sub_1000049E0(&v21);
}

void sub_100423FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100424048(uint64_t **a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = v1[1];
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_100417F80(v2);
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
  object = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &object);
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
        goto LABEL_19;
      }

      goto LABEL_14;
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
    goto LABEL_19;
  }

LABEL_14:
  v14 = v1[1];
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
    dispatch_group_enter(v14);
  }

  (*(*v12 + 16))(v12, &object);
  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

LABEL_19:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_1000FF844(&v17);
  return sub_1000049E0(&v16);
}

void sub_1004241E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t object, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10042424C(uint64_t *a1)
{
  v1 = *a1;
  v43 = a1;
  v44 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 2 ...", buf, 2u);
  }

  sub_100418918(v2);
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: start 3 ...", buf, 2u);
  }

  *buf = 0;
  v49 = 0;
  v50 = 0;
  v5 = *(v2 + 264);
  if (v5 != (v2 + 272))
  {
    v6 = 0;
    do
    {
      if (v6 >= v50)
      {
        v7 = *buf;
        v8 = v6 - *buf;
        v9 = (v6 - *buf) >> 2;
        v10 = v9 + 1;
        if ((v9 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v11 = v50 - *buf;
        if ((v50 - *buf) >> 1 > v10)
        {
          v10 = v11 >> 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_100016740(buf, v12);
        }

        v13 = (v6 - *buf) >> 2;
        v14 = (4 * v9);
        v15 = (4 * v9 - 4 * v13);
        *v14 = *(v5 + 8);
        v6 = v14 + 1;
        memcpy(v15, v7, v8);
        v16 = *buf;
        *buf = v15;
        v49 = v6;
        v50 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6++ = *(v5 + 8);
      }

      v49 = v6;
      v17 = v5[1];
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
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != (v2 + 272));
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 56));
  v21 = ServiceMap;
  if (v22 < 0)
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
  __p = v22;
  v26 = sub_100009510(&v21[1].__m_.__sig, &__p);
  if (v26)
  {
    v28 = v26[3];
    v27 = v26[4];
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v21);
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v27);
      v42 = 0;
      if (!v28)
      {
        goto LABEL_39;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v28 = 0;
  }

  std::mutex::unlock(v21);
  v27 = 0;
  v42 = 1;
  if (!v28)
  {
    goto LABEL_39;
  }

LABEL_34:
  (*(*v28 + 24))(v28);
  v29 = *buf;
  v30 = v49;
  while (v29 != v30)
  {
    sub_100419790(v28, &__p);
    (*(*__p + 64))(__p);
    if (v46)
    {
      sub_100004A34(v46);
    }

    ++v29;
  }

LABEL_39:
  v31 = *buf;
  for (i = v49; v31 != i; ++v31)
  {
    if (v28)
    {
      sub_1004196C0(v28, &__p);
      v33 = (*(*__p + 80))(__p);
      if (v46)
      {
        sub_100004A34(v46);
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v31);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      WirelessTechnologyAsString();
      v35 = v47 >= 0 ? &__p : __p;
      *v51 = 136315138;
      v52 = v35;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Default wireless technology is %s", v51, 0xCu);
      if (v47 < 0)
      {
        operator delete(__p);
      }
    }

    sub_100419D84(v2, *v31, v33, 0);
  }

  v36 = *(v2 + 288);
  for (j = *(v2 + 296); v36 != j; v36 += 2)
  {
    v38 = *v36;
    v39 = v36[1];
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v38 + 40))(v38);
    if (v39)
    {
      sub_100004A34(v39);
    }
  }

  sub_10042481C();
  v40 = *(v2 + 40);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I DarwinPDPConfig: started !", &__p, 2u);
  }

  if ((v42 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (*buf)
  {
    v49 = *buf;
    operator delete(*buf);
  }

  sub_10032EAB4(&v44);
  return sub_1000049E0(&v43);
}

void sub_10042477C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042481C()
{
  sub_10000501C(&__p, "/cc/events/pdpConfig_started");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_10042488C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1004248BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    v2 = (v1 + 8);
    sub_1000212F4(&v2);
    operator delete();
  }

  return result;
}

void sub_10042492C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  for (i = a1[2]; v3 != i; v3 += 16)
  {
    v5 = *v3;
    v6 = *(v3 + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *v5;
    if (*(a1 + 56) == 1)
    {
      v8 = (v7 + 256);
    }

    else
    {
      v8 = (v7 + 264);
    }

    (*v8)(v5);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(__p, a1[4], a1[5]);
  }

  else
  {
    *__p = *(a1 + 2);
    __p[2] = a1[6];
  }

  v10 = *(a1 + 56);
  v11[0] = 0;
  v11[1] = 0;
  sub_100004AA0(v11, (v2 + 8));
  operator new();
}

uint64_t *sub_100424B3C(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 440) - 1;
  *(v2 + 440) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v5 = *v5;
    }

    v6 = asStringBool(*(v1 + 32));
    *buf = 136315906;
    *&buf[4] = "ipcInterfaceConfigReset";
    v23 = 1024;
    v24 = v3;
    v25 = 2080;
    v26 = v5;
    v27 = 2080;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s cycle completed: fResetStarted = %u (reason %s, start %s)", buf, 0x26u);
  }

  if (!*(v2 + 448) && os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017700D0();
  }

  if (!*(v2 + 440))
  {
    v7 = *(v2 + 448);
    *(v2 + 448) = 0;
    if (v7)
    {
      dispatch_release(v7);
    }

    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "ipcInterfaceConfigReset";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s queue destroyed", buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
        if (!v17)
        {
LABEL_24:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          goto LABEL_26;
        }

LABEL_22:
        sub_10000501C(buf, "Ended reset of interfaces");
        (*(*v17 + 1160))(v17, 3, buf, 0);
        if (SBYTE3(v26) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_24;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_26:
  sub_1003023A8(&v21);
  return sub_1000049E0(&v20);
}

void *sub_100424E40(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDictionaryGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t sub_100424EAC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100424F44(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100424FC4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  sub_10009A268(*v1, *(v1 + 8), v6);
  v2 = *(v1 + 40);
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  v7 = v6;
  sub_1000212F4(&v7);
  sub_10042508C(&v5);
  return sub_1000049E0(&v4);
}

void sub_100425058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10042508C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10042508C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100422BB0(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t *sub_1004250DC(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t **sub_1004251B0(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          *(v8 + 2) = *(v9 + 2);
          sub_10042531C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10042538C();
  }

  return result;
}

void sub_100425308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10042531C(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v3, v5, a2);
  return a2;
}

void sub_100425438(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    sub_10042303C(&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

uint64_t **sub_100425488(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v15[0] = v8 + 4;
          v15[1] = v8 + 5;
          sub_1004255FC(v15, (v9 + 4));
          sub_1001723F0(v5, v14);
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          v8 = v14;
          if (v14)
          {
            v11 = a2 == a3;
          }

          else
          {
            v11 = 1;
          }

          v9 = a2;
        }

        while (!v11);
      }
    }

    result = sub_100425658(&v12);
  }

  if (a2 != a3)
  {
    sub_1004256B0();
  }

  return result;
}

void sub_1004255E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100425658(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1004255FC(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  *v4 = *a2;
  if (v3 != (a2 + 8))
  {
    sub_1004232BC(v3, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 4));
  }

  return a1;
}

uint64_t sub_100425658(uint64_t a1)
{
  sub_100423BA0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100423BA0(*a1, v2);
  }

  return a1;
}

void sub_1004257D4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100425438(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1004257F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004234B0(result, a4);
  }

  return result;
}

void sub_100425858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10042303C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100425878(uint64_t a1, NSObject **a2, void *a3, char a4)
{
  *a1 = &off_101EA11D8;
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "probe.http");
  sub_100425974((a1 + 8), a2, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101E4C1A0;
  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = a4;
  *(a1 + 65) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return a1;
}

void sub_100425950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_100425974(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1004259DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100425A04(void *a1)
{
  *a1 = off_101E4C1A0;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  TMKXPCServer.shutdown()();
}

void sub_100425A8C(void *a1)
{
  sub_100425A04(a1);

  operator delete();
}

void sub_100425AC4(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 48) + 24))(buf);
  v4 = *buf;
  memset(buf, 0, sizeof(buf));
  v5 = *(a1 + 96);
  *(a1 + 88) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(a1 + 88))
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
LABEL_5:
    sub_100004AA0(buf, (a1 + 8));
    v7 = *buf;
    v6 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
    }

    (*(**(a1 + 88) + 8))(*(a1 + 88), *(a1 + 24));
    v8 = *(a1 + 88);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100425DE0;
    v15[3] = &unk_101E4C1C8;
    v15[4] = a1;
    v15[5] = v7;
    v16 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1000224C8(v17, a2);
    (*(*v8 + 16))(v8, v15);
    if (*(a1 + 64) == 1)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I starting probe", buf, 2u);
      }

      *(a1 + 65) = 0;
      v10 = *(a1 + 88);
      __p[1] = 0;
      v13 = 0;
      __p[0] = 0;
      (*(*v10 + 40))(v10, __p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      sub_100426074(a1);
    }

    sub_10000FF50(v17);
    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    return;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E Unable to allocate request", buf, 2u);
  }

  sub_10000FFD0(a2, 0);
}

void sub_100425D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  sub_10000FF50(v25 + 56);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100425DE0(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_23:
        sub_100004A34(v7);
        return;
      }

      v8 = *a2;
      v9 = *(v5 + 40);
      if (*a2)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v8 + 16))(v8);
          ctu::Http::asString();
          v10 = (*(**a2 + 24))();
          v11 = __p;
          if (v15 < 0)
          {
            v11 = __p[0];
          }

          *buf = 136315394;
          v17 = v11;
          v18 = 1024;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I got probe response, result: %s, respone: %d", buf, 0x12u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          v8 = *a2;
        }

        if ((*(*v8 + 24))(v8) == 200)
        {
          v12 = 1;
LABEL_22:
          sub_10000FFD0((a1 + 7), v12);
          goto LABEL_23;
        }

        if ((*(**a2 + 24))() == -1 && (*(v5 + 64) & 1) == 0 && *(v5 + 65) == 1)
        {
          v13 = *(v5 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Data has changed during request, re-attempt", __p, 2u);
          }

          sub_100426074(v5);
          goto LABEL_23;
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_101770150(v9);
      }

      v12 = 0;
      goto LABEL_22;
    }
  }
}

void sub_100426074(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I waiting till we have data", buf, 2u);
  }

  (*(**(a1 + 48) + 32))(buf);
  v3 = *buf;
  v11 = 12;
  strcpy(__p, "probe: timer");
  v4 = (*(**(a1 + 48) + 40))(*(a1 + 48));
  v5 = *(a1 + 24);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100426498;
  v7[3] = &unk_101E4C1F8;
  v7[4] = a1;
  aBlock = _Block_copy(v7);
  sub_100D23364(v3, __p, 1, 1000000 * v4, &object, &aBlock);
  sub_10039C50C((a1 + 72), &v14);
  v6 = v14;
  v14 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_100426264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = *(v21 - 40);
  *(v21 - 40) = 0;
  if (v23)
  {
    sub_10176B574(v23);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v24 = *(v21 - 56);
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004262CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a1 + 56, a2 + 56);
}

void sub_100426310(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426328(uint64_t a1)
{
  sub_10000FF50(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100426374(uint64_t a1, int a2)
{
  if (*(a1 + 64) != a2)
  {
    *(a1 + 65) = 1;
  }

  *(a1 + 64) = a2;
  if (a2 && *(a1 + 72))
  {
    v3 = *(a1 + 80);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I start probe on getting data mode", buf, 2u);
    }

    *(a1 + 65) = 0;
    v5 = *(a1 + 88);
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    (*(*v5 + 40))(v5, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100426454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426498(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start request on timer expiry", buf, 2u);
  }

  *(v1 + 65) = 0;
  v3 = *(v1 + 88);
  __p[1] = 0;
  v5 = 0;
  __p[0] = 0;
  (*(*v3 + 40))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100426544(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_100426560(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "overlay unknown";
  }

  else
  {
    return off_101E4C398[a1];
  }
}

uint64_t sub_100426584(uint64_t a1)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v3 + v4;
  if (v4 >= 29)
  {
    v6 = v4;
    v7 = v3;
    do
    {
      v8 = memchr(v7, 100, v6 - 28);
      if (!v8)
      {
        break;
      }

      if (*v8 == 0x6D2B656369766564 && v8[1] == 0x746C756D2B6F6E76 && v8[2] == 0x61632B65646F6D69 && *(v8 + 21) == 0x726569727261632BLL)
      {
        if (v8 != v3)
        {
          break;
        }

        return 7;
      }

      v7 = v8 + 1;
      v6 = v5 - v7;
    }

    while (v5 - v7 >= 29);
  }

  if (v4 >= 22)
  {
    v12 = v4;
    v13 = v3;
    do
    {
      v14 = memchr(v13, 109, v12 - 21);
      if (!v14)
      {
        break;
      }

      if (*v14 == 0x6C756D2B6F6E766DLL && v14[1] == 0x632B65646F6D6974 && *(v14 + 14) == 0x726569727261632BLL)
      {
        if (v14 == v3)
        {
          return 6;
        }

        break;
      }

      v13 = v14 + 1;
      v12 = v5 - v13;
    }

    while (v5 - v13 >= 22);
    if (v4 >= 24)
    {
      v17 = v4;
      v18 = v3;
      do
      {
        v19 = memchr(v18, 100, v17 - 23);
        if (!v19)
        {
          break;
        }

        if (*v19 == 0x6D2B656369766564 && v19[1] == 0x65646F6D69746C75 && v19[2] == 0x726569727261632BLL)
        {
          if (v19 != v3)
          {
            break;
          }

          return 3;
        }

        v18 = v19 + 1;
        v17 = v5 - v18;
      }

      while (v5 - v18 >= 24);
    }
  }

  if (v4 >= 19)
  {
    v22 = v4;
    v23 = v3;
    do
    {
      v24 = memchr(v23, 100, v22 - 18);
      if (!v24)
      {
        break;
      }

      if (*v24 == 0x6D2B656369766564 && v24[1] == 0x727261632B6F6E76 && *(v24 + 11) == 0x726569727261632BLL)
      {
        if (v24 != v3)
        {
          break;
        }

        return 5;
      }

      v23 = v24 + 1;
      v22 = v5 - v23;
    }

    while (v5 - v23 >= 19);
  }

  if (v4 >= 17)
  {
    v27 = v4;
    v28 = v3;
    do
    {
      v29 = memchr(v28, 109, v27 - 16);
      if (!v29)
      {
        break;
      }

      if (*v29 == 0x646F6D69746C756DLL && v29[1] == 0x6569727261632B65 && *(v29 + 16) == 114)
      {
        if (v29 != v3)
        {
          break;
        }

        return 2;
      }

      v28 = v29 + 1;
      v27 = v5 - v28;
    }

    while (v5 - v28 >= 17);
  }

  if (v4 >= 14)
  {
    v32 = v4;
    v33 = v3;
    do
    {
      v34 = memchr(v33, 100, v32 - 13);
      if (!v34)
      {
        break;
      }

      if (*v34 == 0x632B656369766564 && *(v34 + 6) == 0x726569727261632BLL)
      {
        if (v34 != v3)
        {
          break;
        }

        return 1;
      }

      v33 = v34 + 1;
      v32 = v5 - v33;
    }

    while (v5 - v33 >= 14);
  }

  if (v4 >= 12)
  {
    v36 = v4;
    v37 = v3;
    do
    {
      v38 = memchr(v37, 109, v36 - 11);
      if (!v38)
      {
        break;
      }

      if (*v38 == 0x7261632B6F6E766DLL && v38[2] == 1919248754)
      {
        if (v38 == v3)
        {
          return 4;
        }

        break;
      }

      v37 = v38 + 1;
      v36 = v5 - v37;
    }

    while (v5 - v37 >= 12);
    v40 = v4;
    v41 = v3;
    do
    {
      v42 = memchr(v41, 103, v40 - 11);
      if (!v42)
      {
        break;
      }

      if (*v42 == 0x7261632B616D7367 && v42[2] == 1919248754)
      {
        if (v42 == v3)
        {
          return 8;
        }

        break;
      }

      v41 = v42 + 1;
      v40 = v5 - v41;
    }

    while (v5 - v41 >= 12);
    if (v4 >= 19)
    {
      v45 = v3;
      do
      {
        v46 = memchr(v45, 100, v4 - 18);
        if (!v46)
        {
          break;
        }

        if (*v46 == 0x672B656369766564 && v46[1] == 0x727261632B616D73 && *(v46 + 11) == 0x726569727261632BLL)
        {
          if (v46 != v3)
          {
            break;
          }

          return 9;
        }

        v45 = v46 + 1;
        v4 = v5 - v45;
      }

      while (v5 - v45 >= 19);
    }
  }

  if (!sub_1003D9A94(a1, "multimode+gsma+carrier", 0))
  {
    return 10;
  }

  if (!sub_1003D9A94(a1, "device+multimode+gsma+carrier", 0))
  {
    return 11;
  }

  if (!sub_1003D9A94(a1, "mvno+gsma+carrier", 0))
  {
    return 12;
  }

  if (!sub_1003D9A94(a1, "device+mvno+gsma+carrier", 0))
  {
    return 13;
  }

  if (!sub_1003D9A94(a1, "mvno+multimode+gsma+carrier", 0))
  {
    return 14;
  }

  if (sub_1003D9A94(a1, "device+mvno+multimode+gsma+carrier", 0))
  {
    return 0;
  }

  return 15;
}

uint64_t sub_100426AC8(int a1, int a2)
{
  if ((a2 ^ a1) == 2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  if (a1 == a2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

BOOL sub_100426AE4()
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  getGSMAOverlayKey(&v11);
  __p = 0;
  v9 = 0;
  v10 = 0;
  getGSMAOverlayKey(&__p);
  v0 = HIBYTE(v13);
  if (v13 >= 0)
  {
    v1 = HIBYTE(v13);
  }

  else
  {
    v1 = v12;
  }

  v2 = HIBYTE(v10);
  v3 = SHIBYTE(v10);
  if (v10 < 0)
  {
    v2 = v9;
  }

  if (v1 == v2)
  {
    if (v13 >= 0)
    {
      v4 = &v11;
    }

    else
    {
      v4 = v11;
    }

    if (v10 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v6 = memcmp(v4, p_p, v1) != 0;
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 1;
    if ((SHIBYTE(v10) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  operator delete(__p);
  v0 = HIBYTE(v13);
LABEL_17:
  if (v0 < 0)
  {
    operator delete(v11);
  }

  return v6;
}

void sub_100426BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426BDC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  memset(v1, 0, sizeof(v1));
  ctu::tokenize();
  v2 = v1;
  sub_1000087B4(&v2);
}

void sub_100426D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000087B4(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100426D4C(os_log_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I currentCarrierFile: %s - matchedCarrierFile: %s", buf, 0x16u);
  }

  memset(buf, 0, sizeof(buf));
  sub_100426BDC(buf);
  __p = 0;
  v21 = 0;
  v22 = 0;
  sub_100426BDC(&__p);
  v9 = *a1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v10 = *buf;
    }

    p_p = &__p;
    if (v22 < 0)
    {
      p_p = __p;
    }

    *v23 = 136315394;
    v24 = v10;
    v25 = 2080;
    v26 = p_p;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I current key: %s - matched key: %s", v23, 0x16u);
  }

  v12 = buf[23];
  if ((buf[23] & 0x80u) == 0)
  {
    v13 = buf[23];
  }

  else
  {
    v13 = *&buf[8];
  }

  v14 = HIBYTE(v22);
  v15 = SHIBYTE(v22);
  if (v22 < 0)
  {
    v14 = v21;
  }

  if (v13 == v14)
  {
    if ((buf[23] & 0x80u) == 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    if (v22 >= 0)
    {
      v17 = &__p;
    }

    else
    {
      v17 = __p;
    }

    v18 = memcmp(v16, v17, v13) != 0;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v18 = 1;
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  operator delete(__p);
  v12 = buf[23];
LABEL_31:
  if ((v12 & 0x80) != 0)
  {
    operator delete(*buf);
  }

  return v18;
}

void sub_100426F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100426F74(os_log_t *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2[23] >= 0)
  {
    v5 = a2[23];
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    if ((ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && (ctu::starts_with() & 1) == 0 && !ctu::starts_with())
    {
      v34 = *a1;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v35;
        v15 = "#I There is no overlay for the carrier file: %s";
        v16 = v34;
        v17 = 12;
        goto LABEL_33;
      }

      return;
    }

    v37 = a1;
    v6 = kPlistExtension;
    v7 = a2[23];
    v8 = *a2;
    v9 = *(a2 + 1);
    if (v7 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (v7 >= 0)
    {
      v11 = a2[23];
    }

    else
    {
      v11 = *(a2 + 1);
    }

    v12 = strlen(kPlistExtension);
    if (v12)
    {
      v13 = v12;
      if (v11 < v12)
      {
        goto LABEL_28;
      }

      v19 = &v10[v11];
      v20 = *kPlistExtension;
      v21 = v10;
      while (1)
      {
        if (v11 - v13 == -1)
        {
          goto LABEL_28;
        }

        v22 = memchr(v21, v20, v11 - v13 + 1);
        if (!v22)
        {
          goto LABEL_28;
        }

        v23 = v22;
        if (!memcmp(v22, v6, v13))
        {
          break;
        }

        v21 = v23 + 1;
        v11 = v19 - (v23 + 1);
        if (v11 < v13)
        {
          goto LABEL_28;
        }
      }

      if (v23 == v19 || (v18 = v23 - v10, v18 == -1))
      {
LABEL_28:
        v14 = *v37;
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v15 = "#I plist extension is not present in the carrier file name";
LABEL_32:
          v16 = v14;
          v17 = 2;
LABEL_33:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, &buf, v17);
          return;
        }

        return;
      }
    }

    else
    {
      v18 = 0;
    }

    memset(&buf, 0, sizeof(buf));
    if (v7 < 0)
    {
      sub_100005F2C(&buf, v8, v9);
    }

    else
    {
      buf = *a2;
    }

    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v24 = v37;
      if (buf.__r_.__value_.__l.__size_ >= v18)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
        buf.__r_.__value_.__l.__size_ = v18;
        goto LABEL_49;
      }
    }

    else
    {
      v24 = v37;
      if (v18 <= SHIBYTE(buf.__r_.__value_.__r.__words[2]))
      {
        *(&buf.__r_.__value_.__s + 23) = v18;
        p_buf = &buf;
LABEL_49:
        p_buf->__r_.__value_.__s.__data_[v18] = 0;
        size = buf.__r_.__value_.__l.__size_;
        v26 = buf.__r_.__value_.__r.__words[0];
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v26 = &buf;
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        if (size)
        {
          v28 = 0;
          v29 = ~size;
          v30 = v26 + size - 1;
          while (v29 != -1)
          {
            v31 = *(v30 + v28);
            ++v29;
            --v28;
            if (v31 == 43)
            {
              if (!v29)
              {
                break;
              }

              if (v28 != -1)
              {
                std::string::basic_string(&v38, &buf, -v29, 0xFFFFFFFFFFFFFFFFLL, &v39);
                *a3 = v38;
                goto LABEL_61;
              }

              v32 = *v24;
              if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v38.__r_.__value_.__l.__data_) = 0;
                v33 = "#I _ is the last character in the string, cannot get the version";
                goto LABEL_60;
              }

              goto LABEL_61;
            }
          }
        }

        v32 = *v24;
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v38.__r_.__value_.__l.__data_) = 0;
          v33 = "#I _ is missing from the carrier file";
LABEL_60:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v33, &v38, 2u);
        }

LABEL_61:
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    sub_10013C334();
  }

  v14 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v15 = "#I Carrier file name is empty?";
    goto LABEL_32;
  }
}

void sub_100427578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1004275A0(os_log_t *a1, char *a2, char *a3)
{
  memset(&__src, 0, sizeof(__src));
  sub_100426F74(a1, a2, &__src);
  v6 = HIBYTE(__src.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(__src.__r_.__value_.__r.__words[2]);
  size = __src.__r_.__value_.__l.__size_;
  if ((__src.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __src.__r_.__value_.__l.__size_;
  }

  if (!v6)
  {
    v12 = *a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Current carrier file does not have version: %s", &buf, 0xCu);
    }

    v14 = 0;
    if ((v7 & 0x80) != 0)
    {
      goto LABEL_67;
    }

    return v14;
  }

  memset(&v30, 0, sizeof(v30));
  sub_100426F74(a1, a3, &v30);
  v9 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(v30.__r_.__value_.__r.__words[2]);
  v11 = v30.__r_.__value_.__l.__size_;
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v30.__r_.__value_.__l.__size_;
  }

  if (!v9)
  {
    v15 = *a1;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Matched carrier file does not have version: %s", &buf, 0xCu);
    }

    v14 = 0;
    if ((v10 & 0x80) != 0)
    {
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  v29 = 0;
  if (v7 < 0)
  {
    sub_100005F2C(&__dst, __src.__r_.__value_.__l.__data_, size);
  }

  else
  {
    __dst = __src;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v32 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v17 = v32;
    v32 = v34;
    v35 = v17;
    sub_100005978(&v35);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v29 = v32;
  v32 = 0;
  sub_100005978(&v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_38:
    v26 = v30;
    goto LABEL_41;
  }

  sub_100005F2C(&v26, v30.__r_.__value_.__l.__data_, v11);
LABEL_41:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  v32 = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v32;
    v32 = v34;
    v35 = v18;
    sub_100005978(&v35);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v19 = v32;
  v27 = v32;
  v32 = 0;
  sub_100005978(&v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v20 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    p_src = __src.__r_.__value_.__r.__words[0];
    if (v7 >= 0)
    {
      p_src = &__src;
    }

    v22 = v30.__r_.__value_.__r.__words[0];
    if (v10 >= 0)
    {
      v22 = &v30;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = p_src;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Versions in the plist files (%{public}s, %{public}s)", &buf, 0x16u);
  }

  v23 = _CompareBundleVersionStrings(v29, v19);
  v14 = v23 == -1;
  if (v23 == -1)
  {
    v24 = *a1;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I New version is higher", &buf, 2u);
    }
  }

  sub_100005978(&v27);
  sub_100005978(&v29);
  if ((*(&v30.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_65:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

LABEL_66:
  if ((*(&__src.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_67:
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_100427A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, const void *a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, const void *a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100005978(&a36);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a23);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

const char *sub_100427B34(unsigned int a1)
{
  if (a1 > 4)
  {
    return "???";
  }

  else
  {
    return off_101E4C418[a1];
  }
}

uint64_t sub_100427B58(uint64_t a1, uint64_t a2, const void **a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(&buf, &__p);
  ctu::OsLogLogger::OsLogLogger(a1, &buf);
  ctu::OsLogLogger::~OsLogLogger(&buf);
  ctu::OsLogContext::~OsLogContext(&__p);
  v14 = *a2;
  *(a1 + 8) = *a2;
  v15 = *(a2 + 8);
  *(a1 + 16) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v14);
  *(a1 + 40) = a4;
  sub_100010024((a1 + 48), a3);
  *(a1 + 56) = 0;
  v16 = (a1 + 56);
  sub_100BE9B38(a1 + 64, a2);
  sub_100BE9B38(a1 + 248, a2);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  if (!*a3)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Received base bundle matching info is invalid", &__p, 2u);
    }

    return a1;
  }

  sub_100010024(&v35, a3);
  v17 = sub_1004280A0(a6, &v35, a1 + 64, 0);
  sub_10001021C(&v35);
  if (v17)
  {
    v18 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_100BEB0C0(a1 + 64, &__p);
      v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Found the base bundle successfully with name %s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_100463AE0((a1 + 64), &buf);
    v20 = strlen("/carrier.plist");
    v21 = std::string::append(&buf, "/carrier.plist", v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    sub_100BEA10C(a1 + 64, &__p);
  }

  else
  {
    sub_100010024(&v33, a3);
    v24 = sub_1004280A0(a7, &v33, a1 + 64, 1);
    sub_10001021C(&v33);
    v25 = *a1;
    v26 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (!v24)
    {
      if (v26)
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Failed to find a bundle", &__p, 2u);
      }

      goto LABEL_28;
    }

    if (v26)
    {
      sub_100BEB0C0(a1 + 64, &__p);
      v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Found the base bundle successfully with name %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    sub_100463AE0((a1 + 64), &buf);
    v28 = strlen("/carrier.plist");
    v29 = std::string::append(&buf, "/carrier.plist", v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    sub_100BEA10C(a1 + 64, &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_28:
  sub_100BEB088((a1 + 64), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    size = __p.__r_.__value_.__l.__size_;
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!size)
    {
      return a1;
    }
  }

  else if (!*(&__p.__r_.__value_.__s + 23))
  {
    return a1;
  }

  sub_1004280F4(a1, (a1 + 64), &buf.__r_.__value_.__l.__data_);
  if (v16 != &buf)
  {
    __p.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__r.__words[0];
    v16->__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
    buf.__r_.__value_.__r.__words[0] = 0;
    sub_10001021C(&__p.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&buf.__r_.__value_.__l.__data_);
  return a1;
}

void sub_100427F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 479) < 0)
  {
    operator delete(*(v23 + 456));
  }

  if (*(v23 + 455) < 0)
  {
    operator delete(*(v23 + 432));
  }

  sub_100BE9E54(v23 + 248);
  sub_100BE9E54(v24 + 1);
  sub_10001021C(v24);
  sub_10001021C((v23 + 48));
  v26 = *(v23 + 32);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    sub_100004A34(v27);
  }

  ctu::OsLogLogger::~OsLogLogger(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_1004280A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

void sub_1004280F4(uint64_t a1@<X0>, char *a2@<X1>, const void **a3@<X8>)
{
  sub_100BEB088(a2, __p);
  sub_1009F7DEC(a1, (a1 + 8), __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100428150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100428170(uint64_t a1, uint64_t a2, const void **a3, int a4, char a5, char *a6)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(v16, &v15);
  ctu::OsLogLogger::OsLogLogger(a1, v16);
  ctu::OsLogLogger::~OsLogLogger(v16);
  ctu::OsLogContext::~OsLogContext(&v15);
  v12 = *a2;
  v13 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    v12 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v12);
  *(a1 + 40) = sub_100BEB0B0(a6) | a4;
  sub_100010024((a1 + 48), a3);
  sub_1004280F4(a1, a6, (a1 + 56));
  sub_100BE9D24(a1 + 64, a6);
  sub_100BE9D24(a1 + 248, a6);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  return a1;
}

void sub_10042827C(_Unwind_Exception *a1)
{
  sub_100BE9E54(v1 + 64);
  sub_10001021C((v1 + 56));
  sub_10001021C((v1 + 48));
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100428304(uint64_t a1, uint64_t a2, const void **a3, int a4, char a5, char *a6, uint64_t a7)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "cb.overlay");
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger(a1, v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  v14 = *a2;
  v15 = *(a2 + 8);
  *(a1 + 8) = *a2;
  *(a1 + 16) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    v14 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 24), v14);
  *(a1 + 40) = sub_100BEB0B0(a6) | a4;
  sub_100010024((a1 + 48), a3);
  sub_1004280F4(a1, a6, (a1 + 56));
  sub_100BE9D24(a1 + 64, a6);
  sub_100BE9D24(a1 + 248, a7);
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 480) = a5;
  return a1;
}

void sub_10042841C(_Unwind_Exception *a1)
{
  sub_100BE9E54(v1 + 64);
  sub_10001021C((v1 + 56));
  sub_10001021C((v1 + 48));
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger(v1);
  _Unwind_Resume(a1);
}

void sub_1004284A4(uint64_t a1)
{
  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  sub_100BE9E54(a1 + 248);
  sub_100BE9E54(a1 + 64);
  sub_10001021C((a1 + 56));
  sub_10001021C((a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger(a1);
}

void sub_100428534(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100BEB0C0(a1 + 64, &buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    size = buf.__r_.__value_.__l.__size_;
    operator delete(buf.__r_.__value_.__l.__data_);
    if (size)
    {
      goto LABEL_8;
    }
  }

  else if (*(&buf.__r_.__value_.__s + 23))
  {
    goto LABEL_8;
  }

  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I There is no valid carrier bundle name", &buf, 2u);
  }

  __TUAssertTrigger();
LABEL_8:
  v6 = *(a1 + 40) - 1;
  if (v6 > 0xE)
  {
    v7 = "carrier";
  }

  else
  {
    v7 = off_101E4C440[v6];
  }

  sub_10000501C(&v52, v7);
  std::string::push_back(&v52, 43);
  v44 = v52;
  memset(&v52, 0, sizeof(v52));
  sub_100BEB0C0(a1 + 64, &__p);
  if (v43 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v43 >= 0)
  {
    v9 = HIBYTE(v43);
  }

  else
  {
    v9 = v42;
  }

  v10 = std::string::append(&v44, p_p, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v53, 43);
  buf = v53;
  memset(&v53, 0, sizeof(v53));
  v12 = *(a1 + 455);
  if (v12 >= 0)
  {
    v13 = (a1 + 432);
  }

  else
  {
    v13 = *(a1 + 432);
  }

  if (v12 >= 0)
  {
    v14 = *(a1 + 455);
  }

  else
  {
    v14 = *(a1 + 440);
  }

  v15 = std::string::append(&buf, v13, v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  *&v50 = v15->__r_.__value_.__l.__size_;
  *(&v50 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v18 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    operator delete(*v18);
  }

  v19 = v50;
  *(a1 + 456) = v16;
  *(a1 + 464) = v19;
  *(a1 + 471) = *(&v50 + 7);
  *(a1 + 479) = v17;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  v20 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v21 = (a1 + 456);
    if (*(a1 + 479) < 0)
    {
      v21 = *v18;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Overridden filename prefix: %s", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  sub_100BEB088((a1 + 64), &buf);
  v22 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    LODWORD(v53.__r_.__value_.__l.__data_) = 136315138;
    *(v53.__r_.__value_.__r.__words + 4) = p_buf;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Current carrier file path name: %s", &v53, 0xCu);
  }

  memset(&v53, 0, sizeof(v53));
  sub_100428D4C(a1, &v53);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = buf.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    v25 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    v26 = memchr(v25, 43, v24);
    if (v26)
    {
      if (v26 - v25 != -1)
      {
        memset(&v44, 0, sizeof(v44));
        (*(**(a1 + 24) + 120))(&v52);
        ctu::tokenize();
        if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v52.__r_.__value_.__l.__data_);
        }

        memset(&v52, 0, sizeof(v52));
        (*(**(a1 + 24) + 120))(&__p);
        ctu::tokenize();
        if (SHIBYTE(v43) < 0)
        {
          operator delete(__p);
        }

        v27 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0]) >> 3));
        if (v44.__r_.__value_.__l.__size_ == v44.__r_.__value_.__r.__words[0])
        {
          v28 = 0;
        }

        else
        {
          v28 = v27;
        }

        sub_10042C4EC(v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_, &v50, v28, 1);
        v29 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v52.__r_.__value_.__l.__size_ - v52.__r_.__value_.__r.__words[0]) >> 3));
        if (v52.__r_.__value_.__l.__size_ == v52.__r_.__value_.__r.__words[0])
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        sub_10042C4EC(v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_, &v50, v30, 1);
        __p = 0;
        v42 = 0;
        v43 = 0;
        sub_10016FCA8(&__p, 0xAAAAAAAAAAAAAAABLL * ((v44.__r_.__value_.__l.__size_ - v44.__r_.__value_.__r.__words[0]) >> 3));
        v40 = a2;
        v48 = v44.__r_.__value_.__l.__size_;
        v49 = v44.__r_.__value_.__r.__words[0];
        v46 = v52.__r_.__value_.__l.__size_;
        v47 = v52.__r_.__value_.__r.__words[0];
        v45 = __p;
        sub_10042E00C(&v49, &v48, &v47, &v46, &v45);
        v32 = v31;
        v33 = __p;
        if (__p != v31)
        {
          do
          {
            v34 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v33;
              if (*(v33 + 23) < 0)
              {
                v35 = *v33;
              }

              LODWORD(v50) = 136446210;
              *(&v50 + 4) = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Adding the extra identifier %{public}s to the file name", &v50, 0xCu);
            }

            sub_100428E24(43, v33, &v50);
            if ((v51 & 0x80u) == 0)
            {
              v36 = &v50;
            }

            else
            {
              v36 = v50;
            }

            if ((v51 & 0x80u) == 0)
            {
              v37 = v51;
            }

            else
            {
              v37 = *(&v50 + 1);
            }

            std::string::append((a1 + 456), v36, v37);
            if (v51 < 0)
            {
              operator delete(v50);
            }

            v33 += 3;
          }

          while (v33 != v32);
        }

        *&v50 = &__p;
        sub_1000087B4(&v50);
        __p = &v52;
        sub_1000087B4(&__p);
        v52.__r_.__value_.__r.__words[0] = &v44;
        sub_1000087B4(&v52);
        a2 = v40;
      }
    }
  }

  v38 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_100428D4C(a1, &v44);
    v39 = (v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v44 : v44.__r_.__value_.__r.__words[0];
    LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
    *(v52.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Overridden carrier file path name: %s", &v52, 0xCu);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 479) < 0)
  {
    sub_100005F2C(a2, *v18, *(a1 + 464));
  }

  else
  {
    *a2 = *v18;
    *(a2 + 16) = *(a1 + 472);
  }

  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_100428BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void ***__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void **p_p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void **a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  p_p = &__p;
  sub_1000087B4(&p_p);
  __p = &a40;
  sub_1000087B4(&__p);
  a40 = &a20;
  sub_1000087B4(&a40);
  if (*(v45 - 137) < 0)
  {
    operator delete(*(v45 - 160));
  }

  if (*(v45 - 105) < 0)
  {
    operator delete(*(v45 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_100428D4C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10042A360(a1, &v8);
  sub_10042A4D0(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_100428DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100428E24@<X0>(char a1@<W0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a2 + 23);
  v7 = a2[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1000677C4(a3, v8 + 1);
  if (*(result + 23) >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  *v10 = a1;
  v11 = v10 + 1;
  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    result = memmove(v11, v12, v8);
  }

  *(v11 + v8) = 0;
  return result;
}

uint64_t sub_100428EBC(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_100428D4C(a1, &__p);
  v3 = (*(*v2 + 88))(v2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v4 = *a1;
  v5 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      sub_100428D4C(a1, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v10 = p_p;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Overridden file %s already exists, not generating again", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (v5)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Overridden file does not exist", &__p, 2u);
  }

  return v3 ^ 1u;
}

void sub_100429014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429038(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v28 = &v28;
  v29 = &v28;
  v30 = 0;
  if ((*(**(a1 + 24) + 88))(*(a1 + 24)))
  {
    v6 = *(a1 + 24);
    (*(*v6 + 136))(__p, v6, a2);
    v7 = (*(*v6 + 96))(v6, __p, &v28, 0);
    v8 = v7;
    if (v32 < 0)
    {
      operator delete(*__p);
      if (v8)
      {
        goto LABEL_37;
      }
    }

    else if (v7)
    {
      goto LABEL_37;
    }

    v9 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      if (a3[23] >= 0)
      {
        v10 = a3;
      }

      else
      {
        v10 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Going through the contents in the directory searching for pattern %s", __p, 0xCu);
    }

    for (i = v29; i != &v28; i = i[1])
    {
      v12 = *(i + 39);
      if (v12 < 0)
      {
        v13 = i[2];
        v14 = i[3];
      }

      else
      {
        v13 = (i + 2);
        v14 = *(i + 39);
      }

      v15 = a3[23];
      if (v15 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      if (v15 >= 0)
      {
        v17 = a3[23];
      }

      else
      {
        v17 = *(a3 + 1);
      }

      if (v17)
      {
        if (v14 >= v17)
        {
          v18 = &v13[v14];
          v19 = *v16;
          v20 = v13;
          do
          {
            v21 = v14 - v17;
            if (v21 == -1)
            {
              break;
            }

            v22 = memchr(v20, v19, v21 + 1);
            if (!v22)
            {
              break;
            }

            v23 = v22;
            if (!memcmp(v22, v16, v17))
            {
              if (v23 == v18 || v23 != v13)
              {
                break;
              }

              goto LABEL_31;
            }

            v20 = v23 + 1;
            v14 = v18 - (v23 + 1);
          }

          while (v14 >= v17);
        }
      }

      else
      {
LABEL_31:
        v24 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v25 = i + 2;
          if ((v12 & 0x80000000) != 0)
          {
            v25 = i[2];
          }

          *__p = 136315138;
          *&__p[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Removing file %s", __p, 0xCu);
        }

        (*(a4 + 16))(a4, i + 2);
      }
    }
  }

LABEL_37:
  sub_10042E114(&v28);
}

void sub_100429314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10042E114(&a14);
  _Unwind_Resume(a1);
}

BOOL sub_100429348(uint64_t a1, uint64_t a2)
{
  sub_100429C60(&__p);
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 0x40000000;
  v40[2] = sub_100429CF0;
  v40[3] = &unk_101E4C2C0;
  v40[4] = a1;
  sub_100429038(a1, &__p, (a1 + 456), v40);
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
  }

  err = 0;
  memset(&v38, 0, sizeof(v38));
  sub_100429DE0(a1, &v38);
  v4 = (*(**(a1 + 24) + 192))(*(a1 + 24), &v38, a2, &err);
  v5 = *a1;
  if (v4)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_100429DE0(a1, &__p);
      v6 = (__p.st_gid & 0x80000000) == 0 ? &__p : *&__p.st_dev;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I The overridden file was successfully written to %s", &buf, 0xCu);
      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }
    }

    v36 = 0;
    v37 = 0;
    Registry::getMobileHelper(&v36, *(a1 + 8));
    v7 = v36;
    if (!v36)
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_1017702CC();
      }

      v14 = 0;
      goto LABEL_70;
    }

    p_p = &__p;
    sub_100429C60(&__p);
    if ((__p.st_gid & 0x80000000) != 0)
    {
      p_p = *&__p.st_dev;
    }

    sub_10042A360(a1, &buf);
    v9 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v10 = buf.__r_.__value_.__r.__words[0];
    sub_10042A4D0(a1, &v41);
    if (v9 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = v10;
    }

    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v41;
    }

    else
    {
      v12 = v41.__r_.__value_.__r.__words[0];
    }

    v13 = (*(*v7 + 56))(v7, p_p, p_buf, v12);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    v14 = v13 == 0;
    v15 = *a1;
    v16 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v16)
      {
        sub_100429DE0(a1, &buf);
        v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        v18 = buf.__r_.__value_.__r.__words[0];
        sub_100428D4C(a1, &v41);
        v19 = &buf;
        if (v17 < 0)
        {
          v19 = v18;
        }

        if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v41;
        }

        else
        {
          v20 = v41.__r_.__value_.__r.__words[0];
        }

        __p.st_dev = 136315650;
        *&__p.st_mode = v19;
        WORD2(__p.st_ino) = 2080;
        *(&__p.st_ino + 6) = v20;
        HIWORD(__p.st_gid) = 1024;
        __p.st_rdev = v13;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#N Could not copy %s to %s. Error: %d", &__p, 0x1Cu);
        if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v41.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      sub_10000501C(&__p, "NA");
      sub_10000501C(&buf, "mobile");
      sub_100A08E30(a1, &__p, v13, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.st_gid) < 0)
      {
        operator delete(*&__p.st_dev);
      }

      (*(**(a1 + 24) + 120))(&__p);
      sub_10000501C(&buf, "NA");
      sub_100429EB8(a1, &__p, &buf, v13, 2u);
    }

    else
    {
      if (!v16)
      {
LABEL_68:
        v31 = *(a1 + 24);
        sub_100429DE0(a1, &__p);
        (*(*v31 + 112))(v31, &__p);
        if (SHIBYTE(__p.st_gid) < 0)
        {
          operator delete(*&__p.st_dev);
        }

LABEL_70:
        if (v37)
        {
          sub_100004A34(v37);
        }

        goto LABEL_86;
      }

      sub_100429DE0(a1, &__p);
      st_gid_high = SHIBYTE(__p.st_gid);
      v28 = *&__p.st_dev;
      sub_100428D4C(a1, &buf);
      v29 = &__p;
      if (st_gid_high < 0)
      {
        v29 = v28;
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &buf;
      }

      else
      {
        v30 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 136315394;
      *(v41.__r_.__value_.__r.__words + 4) = v29;
      WORD2(v41.__r_.__value_.__r.__words[1]) = 2080;
      *(&v41.__r_.__value_.__r.__words[1] + 6) = v30;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Moving %s to %s Succeeded", &v41, 0x16u);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.st_gid) < 0)
    {
      operator delete(*&__p.st_dev);
    }

    goto LABEL_68;
  }

  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_101770194();
  }

  if (err)
  {
    CFErrorGetDomain(err);
    memset(&__p, 0, 24);
    ctu::cf::assign();
    *&buf.__r_.__value_.__l.__data_ = *&__p.st_dev;
    buf.__r_.__value_.__r.__words[2] = *&__p.st_uid;
    Code = CFErrorGetCode(err);
    v22 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017701C8(&v38, &err, v22);
    }

    memset(&__p, 0, sizeof(__p));
    sub_100429C60(&v41);
    if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v41;
    }

    else
    {
      v23 = v41.__r_.__value_.__r.__words[0];
    }

    v24 = stat(v23, &__p);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v25 = *a1;
    v26 = *a1;
    if (v24)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_101770264();
      }
    }

    else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v41.__r_.__value_.__l.__data_) = 67240704;
      HIDWORD(v41.__r_.__value_.__r.__words[0]) = __p.st_mode;
      LOWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      *(&v41.__r_.__value_.__r.__words[1] + 2) = __p.st_uid;
      HIWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      LODWORD(v41.__r_.__value_.__r.__words[2]) = __p.st_gid;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Printing stats for overlay folder : mode: %{public}o, user id: %{public}u, group id: %{public}u", &v41, 0x14u);
    }

    WirelessUserDirectory = _GetWirelessUserDirectory();
    v33 = stat(WirelessUserDirectory, &__p);
    v34 = *a1;
    if (v33)
    {
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        sub_101770298();
      }
    }

    else if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v41.__r_.__value_.__l.__data_) = 67240704;
      HIDWORD(v41.__r_.__value_.__r.__words[0]) = __p.st_mode;
      LOWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      *(&v41.__r_.__value_.__r.__words[1] + 2) = __p.st_uid;
      HIWORD(v41.__r_.__value_.__r.__words[1]) = 1026;
      LODWORD(v41.__r_.__value_.__r.__words[2]) = __p.st_gid;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Printing stats for wireless user folder : mode: %{public}o, user id: %{public}u, group id: %{public}u", &v41, 0x14u);
    }

    (*(**(a1 + 24) + 120))(&v41);
    sub_100429EB8(a1, &v41, &buf, Code, 1u);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    sub_10000501C(&v41, "wireless");
    sub_100A08E30(a1, &buf, Code, &v41);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v14 = 0;
LABEL_86:
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  sub_1003A5A8C(&err);
  return v14;
}

void sub_100429B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 < 0)
  {
    operator delete(v36);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1003A5A8C(&a18);
  _Unwind_Resume(a1);
}

void sub_100429C40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100429C30);
}

void sub_100429C60(std::string *a1@<X8>)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/", 9uLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_100429CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429CF0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 24);
  sub_100429C60(&v9);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::append(&v9, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v11 = v7->__r_.__value_.__r.__words[2];
  *__p = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 112))(v3, __p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100429DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429DE0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_100429C60(&v8);
  sub_10042A4D0(a1, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_100429E84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100429EB8(uint64_t a1, const char *a2, const char *a3, unsigned int a4, unsigned int a5)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
LABEL_9:
  v20 = *a1;
  if (v18)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      if (a3[23] >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      *buf = 136446978;
      *&buf[4] = v21;
      *&buf[12] = 2082;
      *&buf[14] = v22;
      v39 = 1026;
      v40 = a4;
      v41 = 1024;
      v42 = a5;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on write failure for overlay file %{public}s. Error domain: %{public}s and error code: %{public}d, error location: %d", buf, 0x22u);
    }

    v37 = 0;
    v23 = xpc_dictionary_create(0, 0, 0);
    v24 = v23;
    if (v23)
    {
      v37 = v23;
    }

    else
    {
      v24 = xpc_null_create();
      v37 = v24;
      if (!v24)
      {
        v25 = xpc_null_create();
        v24 = 0;
        goto LABEL_27;
      }
    }

    if (xpc_get_type(v24) == &_xpc_type_dictionary)
    {
      xpc_retain(v24);
LABEL_28:
      xpc_release(v24);
      v35 = xpc_int64_create(a4);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "error_code";
      sub_10000F688(buf, &v35, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v35);
      v35 = 0;
      if (a3[23] >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = *a3;
      }

      v33 = xpc_string_create(v26);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "error_domain";
      sub_10000F688(buf, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
      if (a2[23] >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      v31 = xpc_string_create(v27);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "overlay_file_name";
      sub_10000F688(buf, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      v29 = xpc_int64_create(a5);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      *buf = &v37;
      *&buf[8] = "directory_name";
      sub_10000F688(buf, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v28 = v37;
      v29 = 0;
      if (v37)
      {
        xpc_retain(v37);
      }

      else
      {
        v28 = xpc_null_create();
      }

      (*(*v18 + 16))(v18, "commCenterBundleOverlayFileWriteFailure", &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v37);
      goto LABEL_46;
    }

    v25 = xpc_null_create();
LABEL_27:
    v37 = v25;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_101770300();
  }

LABEL_46:
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }
}

void sub_10042A360(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 480) - 5 > 1)
  {
    v8 = sub_100357A48();
    sub_10000501C(&v10, v8);
    v9 = strlen(kUserCBDir);
    v5 = std::string::append(&v10, kUserCBDir, v9);
  }

  else
  {
    v3 = sub_100357A48();
    sub_10000501C(&v10, v3);
    v4 = strlen(kUserCountryBundleDir);
    v5 = std::string::append(&v10, kUserCountryBundleDir, v4);
  }

  v6 = *&v5->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v11, "Overlay/", 8uLL);
  *a2 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_10042A494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10042A4D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10042A614((a1 + 456), 43, &v12);
  sub_10042A6B0(a1, __p);
  if ((v11 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v5 = v11;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::string::append(&v12, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = strlen(kPlistExtension);
  v9 = std::string::append(&v13, kPlistExtension, v8);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_10042A5C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10042A614@<X0>(const void **a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 23);
  v7 = a1[1];
  a3[1] = 0;
  a3[2] = 0;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *a3 = 0;
  result = sub_1000677C4(a3, v8 + 1);
  if (*(result + 23) >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    result = memmove(v10, v11, v8);
  }

  v12 = &v10[v8];
  *v12 = a2;
  v12[1] = 0;
  return result;
}

const void **sub_10042A6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  sub_100BEB15C(a1 + 64, &v4);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a2 = v5;
  *(a2 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_10042A714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10042A740(uint64_t a1, const void **a2, uint64_t a3, const void **a4, const void **a5, CFDictionaryRef *a6, const void **a7, char *a8, char a9)
{
  *a1 = off_101E4C2F0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  v16 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v17 = *a3;
  *(a1 + 40) = *a3;
  v18 = *(a3 + 8);
  *(a1 + 48) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    v17 = *a3;
  }

  Registry::getFileSystemInterface((a1 + 56), v17);
  sub_100010024((a1 + 72), a4);
  sub_100010024((a1 + 80), a5);
  *(a1 + 88) = 0;
  v19 = (a1 + 88);
  sub_10005C7A4((a1 + 96), a7);
  *(a1 + 104) = 0;
  v20 = (a1 + 104);
  if (a9)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v37 = 0;
    sub_100463AE0(a8, &v42);
    v21 = std::string::append(&v42, "/supported_devices.plist", 0x18uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    *&v37 = *(&v21->__r_.__value_.__l + 2);
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if ((*(**(a1 + 56) + 88))(*(a1 + 56), __p))
    {
      *buf = 0;
      sub_1009F7DEC(*(a1 + 8), (a1 + 40), __p, buf);
      if (*buf && CFDictionaryContainsKey(*buf, @"SupportedSIMOverrides"))
      {
        theDict = CFDictionaryGetValue(*buf, @"SupportedSIMOverrides");
        v42.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&v42, &theDict);
        v23 = *v20;
        *v20 = v42.__r_.__value_.__r.__words[0];
        v42.__r_.__value_.__r.__words[0] = v23;
        sub_10001021C(&v42.__r_.__value_.__l.__data_);
      }

      sub_10001021C(buf);
    }

    if (SBYTE7(v37) < 0)
    {
      operator delete(__p[0]);
    }
  }

  theDict = 0;
  sub_10042ACBC(a1, &theDict);
  if (theDict)
  {
    Value = CFDictionaryGetValue(*a6, qword_101FCB6F0);
    v25 = Value;
    if (Value && (v26 = CFGetTypeID(Value), v26 == CFStringGetTypeID()))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      *key = 0u;
      *__p = 0u;
      sub_10042B1F4(*a6, a2, (a1 + 40), v25, theDict, 1, __p);
      if (key[1])
      {
        memset(&v42, 0, sizeof(v42));
        ctu::cf::assign();
        *buf = v42.__r_.__value_.__l.__size_;
        v27 = v42.__r_.__value_.__r.__words[0];
        *&buf[7] = *(&v42.__r_.__value_.__r.__words[1] + 7);
        v28 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
        if (*(a1 + 39) < 0)
        {
          operator delete(*v16);
        }

        v29 = *buf;
        *(a1 + 16) = v27;
        *(a1 + 24) = v29;
        *(a1 + 31) = *&buf[7];
        *(a1 + 39) = v28;
        *buf = CFDictionaryGetValue(theDict, key[1]);
        v42.__r_.__value_.__r.__words[0] = 0;
        sub_100010180(&v42, buf);
        v30 = *v19;
        *v19 = v42.__r_.__value_.__r.__words[0];
        v42.__r_.__value_.__r.__words[0] = v30;
        sub_10001021C(&v42.__r_.__value_.__l.__data_);
      }

      else
      {
        v34 = **(a1 + 8);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v42.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I There is no match to perform Multimode overlay", &v42, 2u);
        }
      }

      if (*(&v40 + 1))
      {
        sub_100004A34(*(&v40 + 1));
      }

      sub_100005978(&key[1]);
      if (key[0])
      {
        sub_100004A34(key[0]);
      }

      sub_100005978(__p);
    }

    else
    {
      v31 = **(a1 + 8);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Failed to find IMSI in the overlay matching info", __p, 2u);
      }
    }
  }

  else
  {
    v32 = **(a1 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v37 = 0;
      ctu::cf::assign();
      *&v42.__r_.__value_.__l.__data_ = *__p;
      v42.__r_.__value_.__r.__words[2] = v37;
      v33 = &v42;
      if (SBYTE7(v37) < 0)
      {
        v33 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I There is no merged %s overlay configuration", buf, 0xCu);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_10001021C(&theDict);
  return a1;
}