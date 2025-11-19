void sub_100326CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

void *sub_100326D04(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10032FBA4(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8));
  v9 = a2[1];
  v10 = (v8 + 32 * (v7 & 0x7F));
  *v10 = *a2;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a2[2];
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  v10[2] = v11;
  result = a2[3];
  if (result)
  {
    result = _Block_copy(result);
  }

  v10[3] = result;
  ++a1[5];
  return result;
}

void sub_100326DD4(uint64_t a1)
{
  if (*(a1 + 744) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Profile install already in progress", buf, 2u);
    }
  }

  else
  {
    v26 = 0u;
    *aBlock = 0u;
    while (1)
    {
      if (!*(a1 + 736))
      {
        goto LABEL_53;
      }

      sub_10032A774(&v26, (*(*(a1 + 704) + ((*(a1 + 728) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 728) & 0x7FLL)));
      if (*(v26 + 104) - *(v26 + 96) != 24)
      {
        break;
      }

      VinylInfo::findProfile();
      if ((v30 & 1) == 0)
      {
        break;
      }

      sub_100E3A5D4(buf);
      if (aBlock[1])
      {
        buf[0] = 1;
        sub_10032A810(&aBlock[1], buf, *(a1 + 232));
      }

      sub_10032A8FC((a1 + 696));
    }

    if (!*(a1 + 736))
    {
LABEL_53:
      *(a1 + 744) = 0;
      goto LABEL_54;
    }

    *(a1 + 744) = 1;
    sub_100004AA0(buf, (a1 + 8));
    v4 = *buf;
    v3 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v5 = *(a1 + 232);
    if (*(a1 + 240) == v5)
    {
      sub_1002030E0();
    }

    v6 = *(a1 + 72);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    v9 = v26;
    v25 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1174405120;
    v19[2] = sub_10032A990;
    v19[3] = &unk_101E425C8;
    v19[4] = a1;
    v19[5] = v4;
    v20 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v9;
    v22 = *(&v26 + 1);
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v10 = aBlock[0];
    if (aBlock[0])
    {
      v10 = _Block_copy(aBlock[0]);
    }

    v23 = v10;
    v11 = aBlock[1];
    if (aBlock[1])
    {
      v11 = _Block_copy(aBlock[1]);
    }

    v24 = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1174405120;
    v14[2] = sub_10032AE08;
    v14[3] = &unk_101E425F8;
    v14[4] = a1;
    v14[5] = v4;
    v15 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v26;
    if (*(&v26 + 1))
    {
      atomic_fetch_add_explicit((*(&v26 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v12 = aBlock[0];
    if (aBlock[0])
    {
      v12 = _Block_copy(aBlock[0]);
    }

    v17 = v12;
    v13 = aBlock[1];
    if (aBlock[1])
    {
      v13 = _Block_copy(aBlock[1]);
    }

    v18 = v13;
    (*(*v6 + 40))(v6, v7, v8, &v25, v19, v14);
    if (*(&v25 + 1))
    {
      sub_100004A34(*(&v25 + 1));
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (*(&v16 + 1))
    {
      sub_100004A34(*(&v16 + 1));
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    if (v24)
    {
      _Block_release(v24);
    }

    if (v23)
    {
      _Block_release(v23);
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

LABEL_54:
    if (aBlock[1])
    {
      _Block_release(aBlock[1]);
    }

    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }

    if (*(&v26 + 1))
    {
      sub_100004A34(*(&v26 + 1));
    }
  }
}

void sub_10032719C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100327240(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t sub_100327298(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1 && (*(a1 + 744) & 1) != 0)
  {
    v5 = *(a1 + 184);
    if (v5)
    {
      v6 = *(*(*(a1 + 704) + ((*(a1 + 728) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(a1 + 728) & 0x7FLL));
      if (*(v6 + 104) - *(v6 + 96) == 24)
      {
        (*(*v5 + 80))(v5);
      }
    }
  }

  v7 = *(**(a1 + 72) + 48);

  return v7();
}

uint64_t sub_100327390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100327420;
  v7[3] = &unk_101E423A0;
  v7[4] = a5;
  return (*(*v5 + 136))(v5, a2, a3, a4, v7);
}

uint64_t sub_100327420(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (*a2 == 1)
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3 & 1);
}

uint64_t sub_10032744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100327420;
  v7[3] = &unk_101E423A0;
  v7[4] = a5;
  return (*(*v5 + 136))(v5, a2, a3, a4, v7);
}

uint64_t sub_1003274DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 72);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10032756C;
  v7[3] = &unk_101E423C8;
  v7[4] = a5;
  return (*(*v5 + 144))(v5, a2, a3, a4, v7);
}

uint64_t sub_10032756C(uint64_t a1, _BYTE *a2)
{
  v2 = *(a1 + 32);
  if (*a2 == 1)
  {
    v3 = a2[1];
  }

  else
  {
    v3 = 0;
  }

  return (*(v2 + 16))(v2, v3 & 1);
}

uint64_t sub_100327598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 24);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10032756C;
  v7[3] = &unk_101E423C8;
  v7[4] = a5;
  return (*(*v5 + 144))(v5, a2, a3, a4, v7);
}

void sub_100327628(uint64_t a1, uint64_t a2, uint64_t *a3, _WORD *a4)
{
  if (*a2)
  {
    v7 = *(a1 + 232);
    for (i = *(a1 + 240); v7 != i; v7 += 88)
    {
      if ((*a2 & 1) == 0)
      {
        sub_101761304();
      }

      if (*(v7 + 16) == *(a2 + 1) && *(v7 + 24) == *(a2 + 9))
      {
        v11 = a3[1];
        if (v11 >= a3[2])
        {
          v12 = sub_10032B838(a3, v7);
        }

        else
        {
          sub_100F11B6C(a3[1], v7);
          v12 = v11 + 88;
          a3[1] = v11 + 88;
        }

        a3[1] = v12;
      }
    }
  }

  else if ((a1 + 232) != a3)
  {
    sub_100169D44(a3, *(a1 + 232), *(a1 + 240), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
  }

  *a4 = *(a1 + 256);
}

uint64_t sub_100327734(capabilities::ct *a1)
{
  v2 = capabilities::ct::allowChinaWSKUWatchesToProvisionROWPlans(a1);
  if (!v2)
  {
    return 3;
  }

  v3 = capabilities::ct::basebandGlobalSKU(v2);
  v4 = *(a1 + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I China sku allowed to support Global (All) carriers", buf, 2u);
    }

    return 8;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I China sku allowed to support RoW carriers", v7, 2u);
    }

    return 5;
  }
}

uint64_t sub_1003277EC(capabilities::ct *a1)
{
  v2 = capabilities::ct::disallowROWWSKUWatchesToProvisionChinaPlans(a1);
  if (!v2)
  {
    return 5;
  }

  v3 = capabilities::ct::basebandGlobalSKU(v2);
  v4 = *(a1 + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Global sku not allowed to provision China carriers", buf, 2u);
    }

    return 9;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I ROW sku not allowed to provision China carriers", v7, 2u);
    }

    return 6;
  }
}

void sub_1003278A4(uint64_t a1, uint64_t a2)
{
  v52 = 0;
  *v50 = 0u;
  v51 = 0u;
  *v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  (***(a1 + 88))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  theData = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &theData);
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
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v12)
  {
    theData = 0;
    (*(*v12 + 176))(&theData, v12);
    if (theData)
    {
      if (CFDataGetLength(theData) == 16)
      {
        BytePtr = CFDataGetBytePtr(theData);
        v15 = BytePtr;
        v16 = BytePtr[8];
        if (v16 > 0x4D)
        {
          if (v16 != 82)
          {
            if (v16 == 78 && BytePtr[9] == 65 && !BytePtr[10] && !BytePtr[11])
            {
              v17 = 1;
              goto LABEL_46;
            }

            goto LABEL_47;
          }

          if (!BytePtr[9] && !BytePtr[10] && !BytePtr[11])
          {
            v26 = sub_1003277EC(a1);
            goto LABEL_42;
          }
        }

        else
        {
          if (v16 != 67)
          {
            if (v16 == 69 && BytePtr[9] == 85 && !BytePtr[10] && !BytePtr[11])
            {
              v17 = 2;
LABEL_46:
              BYTE8(v49) = v17;
              goto LABEL_50;
            }

            goto LABEL_47;
          }

          v25 = BytePtr[9];
          if (v25 == 77)
          {
            if (BytePtr[10] == 67 && BytePtr[11] == 67)
            {
              v17 = 4;
              goto LABEL_46;
            }
          }

          else if (v25 == 85 && !BytePtr[10] && !BytePtr[11])
          {
            v26 = sub_100327734(a1);
LABEL_42:
            BYTE8(v49) = v26;
            goto LABEL_50;
          }
        }

LABEL_47:
        v27 = *(a1 + 40);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        v28 = v15[9];
        v29 = v15[10];
        v30 = v15[11];
        *buf = 67109888;
        *&buf[4] = v16;
        *&buf[8] = 1024;
        *&buf[10] = v28;
        *&buf[14] = 1024;
        *&buf[16] = v29;
        *&buf[20] = 1024;
        *&buf[22] = v30;
        v20 = "#I Invalid sku data [0x%x][0x%x][0x%x][0x%x]";
        v21 = v27;
        v22 = 26;
LABEL_49:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
        goto LABEL_50;
      }

      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        Length = CFDataGetLength(theData);
        *buf = 134217984;
        *&buf[4] = Length;
        v20 = "#I Invalid sku data length: %lu";
        v21 = v23;
        v22 = 12;
        goto LABEL_49;
      }
    }

    else
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v20 = "#E no sku data";
        v21 = v19;
        v22 = 2;
        goto LABEL_49;
      }
    }

LABEL_50:
    sub_10002D760(&theData);
    goto LABEL_51;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E no gestaltutility", buf, 2u);
  }

LABEL_51:
  if ((*(a1 + 391) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 376))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (*(a1 + 391))
  {
LABEL_55:
    sub_10016C728(&v45 + 8, (a1 + 368));
  }

LABEL_56:
  if (*(a1 + 416) == 1)
  {
    buf[0] = 0;
    if (*(a1 + 415) < 0)
    {
      sub_100005F2C(&buf[8], *(a1 + 392), *(a1 + 400));
    }

    else
    {
      *&buf[8] = *(a1 + 392);
      *&buf[24] = *(a1 + 408);
    }

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  buf[0] = v31;
  sub_10016E3EC(&v47 + 8, buf);
  if (buf[0] == 1 && (buf[31] & 0x80000000) != 0)
  {
    operator delete(*&buf[8]);
  }

  HIDWORD(v51) = (*(**(a1 + 88) + 8))(*(a1 + 88));
  BYTE8(v51) = 1;
  HIDWORD(v52) = (*(**(a1 + 88) + 16))(*(a1 + 88));
  LOBYTE(v52) = 1;
  sub_10027E51C(__dst, v44);
  (*(a2 + 16))(a2, __dst);
  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (v38 == 1)
  {
    if (v40 < 0)
    {
      operator delete(v39);
    }

    v38 = 0;
  }

  if (v35 == 1)
  {
    if (v37 < 0)
    {
      operator delete(v36);
    }

    v35 = 0;
  }

  if ((v34 & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  operator delete(__dst[0]);
  if ((v13 & 1) == 0)
  {
LABEL_77:
    sub_100004A34(v11);
  }

LABEL_78:
  if (SBYTE7(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (BYTE8(v47) == 1)
  {
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    BYTE8(v47) = 0;
  }

  if (BYTE8(v45) == 1)
  {
    if (SBYTE7(v47) < 0)
    {
      operator delete(v46[0]);
    }

    BYTE8(v45) = 0;
  }

  if (SBYTE7(v45) < 0)
  {
    operator delete(v44[0]);
  }
}

void sub_100327E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10002D760(&a9);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  sub_10027E6B0(&a31);
  _Unwind_Resume(a1);
}

void sub_100327F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  (*(**(a1 + 168) + 104))(*(a1 + 168));
  if (a3)
  {
    memset(v9, 0, sizeof(v9));
    v7 = *(a4 + 24);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7, v9);
    v10 = v9;
    sub_10016BF8C(&v10);
  }

  else
  {
    v8 = *(a1 + 168);
    sub_10032FD78(v11, a4);
    (*(*v8 + 120))(v8, v11);
    sub_10032FE10(v11);
  }
}

void sub_100328058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10032FE10(va);
  _Unwind_Resume(a1);
}

void sub_100328094(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    v6 = a1[29];
    if (v6 == a1[30])
    {
      v12 = a1[5];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No vinyl info available", buf, 2u);
        v4 = *(a4 + 24);
        v29[0] = 2;
        v30 = 0;
        if (!v4)
        {
          sub_100022DB4();
        }
      }

      else
      {
        v29[0] = 2;
        v30 = 0;
      }

      (*(*v4 + 48))(v4, v29);
      if (v29[0] == 1)
      {
        if (v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 < 0)
        {
          operator delete(v41);
        }

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
          v11 = v31;
          goto LABEL_41;
        }
      }
    }

    else
    {
      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (*a2 == v8 && a2[1] == v7)
      {
        sub_10032FE90(v46, a4);
        v47 = 0;
        operator new();
      }

      v10 = a1[5];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "CSN mismatched", buf, 2u);
        v4 = *(a4 + 24);
        v13[0] = 2;
        v14 = 12;
        if (!v4)
        {
          sub_100022DB4();
        }
      }

      else
      {
        v13[0] = 2;
        v14 = 12;
      }

      (*(*v4 + 48))(v4, v13);
      if (v13[0] == 1)
      {
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }

        if (v16 < 0)
        {
          v11 = v15;
LABEL_41:
          operator delete(v11);
        }
      }
    }
  }
}

void sub_100328400(_Unwind_Exception *a1)
{
  sub_1003305D8(v1 - 88);
  sub_10032B980(v1 - 120);
  _Unwind_Resume(a1);
}

void sub_10032845C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184))
  {
    sub_100330658(v6, a2);
    v7 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B714();
  }

  memset(v4, 0, sizeof(v4));
  v3 = *(a2 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_1000DC8D4(&v5);
}

void sub_1003285C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_1000DEFB0(v6 - 56);
  sub_10032BA00(va);
  _Unwind_Resume(a1);
}

void sub_10032860C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100328718;
  v3[3] = &unk_101E423E8;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100328744(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100330994;
  v5[3] = &unk_101E42F98;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    a2[12] = 0u;
    a2[13] = 0u;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_100330B98;
    v10 = &unk_101E42FD8;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    a2[12] = 0u;
    a2[13] = 0u;
    a2[10] = 0u;
    a2[11] = 0u;
    a2[8] = 0u;
    a2[9] = 0u;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1003309A0;
    v10 = &unk_101E42FB8;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_100328898(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100330BEC(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003289C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

std::string *sub_1003289DC@<X0>(std::string *result@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v4 = result[9].__r_.__value_.__r.__words[2];
  if (result[10].__r_.__value_.__r.__words[0] != v4)
  {
    v5 = result;
    *a3 = *(v4 + 4);
    ctu::hex(&v8, (v4 + 16), 0x10, a2);
    v6 = v5[9].__r_.__value_.__r.__words[2];
    data = v5[10].__r_.__value_.__l.__data_;
    *(a3 + 32) = v8;
    *(a3 + 48) = v9;
    if (data == v6)
    {
      sub_1002030E0();
    }

    return std::string::operator=((a3 + 128), (v6 + 32));
  }

  return result;
}

void sub_100328A94(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100328BA0;
  v3[3] = &unk_101E42408;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_100328BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v6 = v8;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  sub_1000224C8(&v13, a3);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_100328DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    v23 = *(v21 + 16);
    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100328E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100328F80;
  v9[3] = &unk_101E42430;
  v9[5] = a1;
  v10 = 0;
  if (*a2 == 1)
  {
    v11 = *(a2 + 1);
    v10 = 1;
  }

  v9[4] = a3;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v4, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100328F74(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100328F80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v10 = 0;
  if (*(a1 + 48) == 1)
  {
    v11 = *(a1 + 49);
    v10 = 1;
  }

  sub_100327628(v2, &v10, &v6, &v5);
  v3 = *(a1 + 32);
  memset(v4, 0, sizeof(v4));
  sub_10027E628(v4, v6, v7, 0x2E8BA2E8BA2E8BA3 * ((v7 - v6) >> 3));
  (*(v3 + 16))(v3, v4);
  v9 = v4;
  sub_100112048(&v9);
  v9 = &v6;
  sub_100112048(&v9);
}

void sub_100329074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  sub_100112048(&a16);
  a16 = &a13;
  sub_100112048(&a16);
  _Unwind_Resume(a1);
}

__n128 sub_1003290A8(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    result = *(a2 + 49);
    *(a1 + 49) = result;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_1003290C8(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_1003290DC(uint64_t a1, _OWORD *a2, __int128 *a3, uint64_t a4)
{
  v18 = *a2;
  memset(v9, 0, sizeof(v9));
  sub_10004ECBC(v9, a3);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1174405120;
  v14[2] = sub_1003292C0;
  v14[3] = &unk_101E42548;
  v14[5] = a1;
  v17 = v18;
  sub_10004ECBC(v15, v9);
  v16 = a2;
  v14[4] = a4;
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 8));
  v7 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v14;
  dispatch_async(v7, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100F118F0(v15);
  return sub_100F118F0(v9);
}

void sub_100329294(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003292C0(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I debug fetch profile - auto consent", buf, 2u);
  }

  sub_100330F44();
}

void sub_1003293FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100329414(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100329528;
  v4[3] = &unk_101E424A0;
  v4[4] = v2;
  v4[5] = a2;
  v4[6] = *(a1 + 40);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (v2 + 8));
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100329528(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = *(a1 + 40);
  if ((*(v3 + 91) & 1) != 0 || *(v3 + 92) == 1)
  {
    return sub_100327298(result, **(a1 + 48), *(*(a1 + 48) + 8), 1);
  }

  return result;
}

void sub_100329568(uint64_t a1, unsigned __int8 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_100329694;
  v4[3] = &unk_101E424E8;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = 0;
  if (*a2 - 1 <= 1)
  {
    v5 = *a2;
  }

  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v2 + 8));
  v3 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10032F1F0;
  block[3] = &unk_101E42C48;
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

uint64_t sub_100329694(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = 0;
  if (*(a1 + 40) - 1 <= 1)
  {
    v4 = *(a1 + 40);
  }

  return (*(v2 + 16))(v2, &v4);
}

uint64_t sub_1003296E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 - 1) <= 1)
  {
    *(result + 40) = v2;
    *(result + 41) = *(a2 + 41);
  }

  return result;
}

void sub_100329728(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100329820(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
    if (aBlock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
    if (aBlock)
    {
LABEL_3:
      v5 = _Block_copy(aBlock);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  __p[3] = v5;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_100329994(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    _Block_copy(aBlock);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100329A8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = *a2;
  v8 = a2[1];
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v13 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v11 = *(a4 + 16);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100329BF8;
  v9[3] = &unk_101E42578;
  v9[4] = a1;
  (*(*v6 + 88))(v6, v7, v8, __dst, __p, v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_100329BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100329BF8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    v3 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176B83C(a2, v3);
    }
  }
}

void sub_100329C58(uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 232);
  v4 = a1 + 232;
  v6 = *a2;
  v7 = a2[1];
  if (v7 - *a2 != *(a1 + 240) - v5)
  {
LABEL_5:
    if (v4 != a2)
    {
      sub_100169D44(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
    }

    v8 = *(a1 + 424);
    if (v8 == 2)
    {
      v11 = *(a1 + 136);
      memset(v12, 0, sizeof(v12));
      v10 = v12;
      sub_10027E628(v12, *(a1 + 232), *(a1 + 240), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
      (*(*v11 + 24))(v11, v12, a1 + 256);
    }

    else
    {
      if (v8 != 1)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176B8CC();
        }

        goto LABEL_14;
      }

      v9 = *(a1 + 120);
      memset(v13, 0, sizeof(v13));
      v10 = v13;
      sub_10027E628(v13, *(a1 + 232), *(a1 + 240), 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 240) - *(a1 + 232)) >> 3));
      (*(*v9 + 24))(v9, v13, a1 + 256);
    }

    v14 = v10;
    sub_100112048(&v14);
LABEL_14:
    (*(**(a1 + 152) + 16))(*(a1 + 152));
    sub_100329E68();
    return;
  }

  while (v6 != v7)
  {
    if (!VinylInfo::operator==())
    {
      goto LABEL_5;
    }

    v6 += 88;
    v5 += 88;
  }
}

void sub_100329E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100112048(va);
  _Unwind_Resume(a1);
}

void sub_100329E68()
{
  sub_10000501C(&__p, "/cc/events/cellular_plan_info_changed");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_100329ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100329F10(uint64_t a1)
{
  (*(**(a1 + 152) + 16))(*(a1 + 152));

  sub_100329E68();
}

void sub_100329F6C(uint64_t a1)
{
  (*(**(a1 + 96) + 16))(*(a1 + 96));

  sub_100329E68();
}

void sub_10032A0B8(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (*(a3 + 23))
    {
      v5 = *(a1 + 72);
      v6 = *a2;
      v7 = a2[1];
      __dst = *a3;
      v20 = *(a3 + 2);
      goto LABEL_6;
    }

LABEL_8:
    v8 = *(a1 + 72);
    v9 = *a2;
    v10 = a2[1];
    v17[0] = 0;
    v17[1] = 0;
    v15[1] = 0;
    v16 = v17;
    v14 = v15;
    v15[0] = 0;
    sub_100112F20(v21, a4);
    (*(*v8 + 64))(v8, v9, v10, &v16, &v14, v21);
    sub_100112FB8(v21);
    sub_100009970(&v14, v15[0]);
    sub_100009970(&v16, v17[0]);
    return;
  }

  if (!*(a3 + 1))
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 72);
  v6 = *a2;
  v7 = a2[1];
  sub_100005F2C(&__dst, *a3, *(a3 + 1));
LABEL_6:
  sub_10011C9B0(v13, &__dst, 1);
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  sub_100112F20(v18, a4);
  (*(*v5 + 64))(v5, v6, v7, v13, &v11, v18);
  sub_100112FB8(v18);
  sub_100009970(&v11, v12[0]);
  sub_100009970(v13, v13[1]);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst);
  }
}

uint64_t sub_10032A31C(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v6 = *(a1 + 72);
  v7 = *a2;
  v8 = a2[1];
  v12 = *a3;
  if (*(a3 + 39) < 0)
  {
    sub_100005F2C(&__p, *(a3 + 2), *(a3 + 3));
  }

  else
  {
    __p = a3[1];
    v14 = *(a3 + 4);
  }

  v15 = *(a3 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_10032A49C;
  v10[3] = &unk_101E42598;
  sub_1001135B0(v11, a4);
  (*(*v6 + 72))(v6, v7, v8, &v12, v10);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  return sub_100113648(v11);
}

uint64_t sub_10032A49C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  if (*a2 - 1 <= 1)
  {
    v4 = *a2;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10032A528(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *(a1 + 232);
  if (*(a1 + 240) == v4 || (v5 = *a3) == 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B900();
    }
  }

  else
  {
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (*a2 == v7 && a2[1] == v6)
    {
      v12 = 0;
      aBlock = 0;
      v9 = a3[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = v5;
      v11 = v9;
      sub_100326D04((a1 + 696), &v10);
      sub_100326DD4(a1);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        _Block_release(v12);
      }

      if (v11)
      {
        sub_100004A34(v11);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B7DC();
    }
  }
}

void sub_10032A634(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 == a3[1])
  {
    return;
  }

  v3 = *(a1 + 424);
  if (v3 == 2)
  {
    v4 = *(a1 + 136);
    goto LABEL_6;
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 120);
LABEL_6:
    v5 = *(*v4 + 56);

    v5();
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B934();
  }
}

void sub_10032A6E0(uint64_t a1)
{
  v2 = *(a1 + 424);
  if (v2 == 2)
  {
    v3 = *(a1 + 136);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 120);
LABEL_5:
    v4 = *(*v3 + 80);

    v4();
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B968();
  }
}

void *sub_10032A774(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a2[2];
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = a1[2];
  a1[2] = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = a2[3];
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  v10 = a1[3];
  a1[3] = v9;
  if (v10)
  {
    _Block_release(v10);
  }

  return a1;
}

void sub_10032A810(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v3 = *a1;
  v4[0] = 1;
  v4[1] = *a2;
  sub_100F11B6C(&v7, a3);
  v6[0] = 1;
  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_10032A8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016A858(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10032A8FC(int64x2_t *a1)
{
  v2 = (*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F));
  v3 = v2[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = v2[2];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = v2[1];
  if (v5)
  {
    sub_100004A34(v5);
  }

  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_100331AC4(a1, 1);
}

void sub_10032A990(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 32);
  v10 = v8;
  v4 = *(a1 + 48);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 64);
  v12 = *(a1 + 56);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  aBlock = v6;
  v7 = *(a1 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v15 = v7;
  v16 = 0;
  if (*a2 == 1)
  {
    sub_100F11F00(&v17, a2 + 8);
    v18 = 0;
    v19 = 0uLL;
    sub_100034C50(&v18, *(a2 + 224), *(a2 + 232), *(a2 + 232) - *(a2 + 224));
    v16 = 1;
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v8 + 8));
  operator new();
}

void sub_10032ACBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_100E3A5D4(v18 + 64);
  sub_100327240((v17 + 24));
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(a1);
}

void *sub_10032AD1C(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[8];
  a1[7] = a2[7];
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[9];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  a1[9] = v6;
  result = a2[10];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[10] = result;
  return result;
}

void sub_10032AD98(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[6];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10032AE08(uint64_t a1, unsigned __int8 *a2, _BYTE *a3)
{
  v9 = *(a1 + 32);
  v11 = v9;
  v5 = *(a1 + 48);
  v12 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v14, (a3 + 8));
    v13 = 1;
  }

  v6 = *(a1 + 64);
  v15 = *(a1 + 56);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v8 = *(a1 + 80);
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v18 = v8;
  v19 = 0;
  if (*a2 - 1 <= 1)
  {
    v19 = *a2;
  }

  v10[0] = 0;
  v10[1] = 0;
  sub_100004AA0(v10, (v9 + 8));
  operator new();
}

void sub_10032B0A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032B0E8(uint64_t a1)
{
  *(a1 + 152) = 0;
  v2 = *(a1 + 144);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 112) == 1)
    {
      v7 = (a1 + 88);
      sub_100112120(&v7);
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10032B190(uint64_t a1)
{
  sub_10032BB00(a1);

  operator delete();
}

void sub_10032B1D0(uint64_t a1)
{
  sub_10032BB00(a1 - 48);

  operator delete();
}

void sub_10032B214(uint64_t a1)
{
  sub_10032BB00(a1 - 56);

  operator delete();
}

void sub_10032B258(uint64_t a1)
{
  sub_10032BB00(a1 - 64);

  operator delete();
}

uint64_t sub_10032B294(uint64_t a1, char *a2, __int128 *a3)
{
  sub_10000501C(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_10032B2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10032B304(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 120) != 1)
  {
    v5 = *(a2 + 95);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 80);
    }

    if (!v5)
    {
      return 0;
    }

    v6 = (a2 + 72);
    if (*(a1 + 88) == 1)
    {
      v7 = a1[8];
      for (i = a1[9]; v7 != i; v7 += 216)
      {
        if ((*(v7 + 39) & 0x8000000000000000) != 0)
        {
          if (*(v7 + 24))
          {
LABEL_14:
            __p[0] = 0;
            __p[1] = 0;
            v48 = 0;
            sub_10092CDF4(v7 + 16, __p);
            v9 = HIBYTE(v48);
            v10 = HIBYTE(v48);
            v11 = __p[1];
            if (v48 >= 0)
            {
              v12 = (__p + HIBYTE(v48));
            }

            else
            {
              v12 = (__p[0] + __p[1]);
            }

            if (v48 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            if (v13 != v12)
            {
              do
              {
                *v13 = __tolower(*v13);
                v13 = (v13 + 1);
              }

              while (v13 != v12);
              v9 = HIBYTE(v48);
              v11 = __p[1];
              v10 = HIBYTE(v48);
            }

            v14 = *(a2 + 95);
            if (v14 >= 0)
            {
              v15 = *(a2 + 95);
            }

            else
            {
              v15 = *(a2 + 80);
            }

            if (v10 < 0)
            {
              v9 = v11;
            }

            if (v15 == v9)
            {
              if (v14 >= 0)
              {
                v16 = (a2 + 72);
              }

              else
              {
                v16 = *v6;
              }

              if (v10 >= 0)
              {
                v17 = __p;
              }

              else
              {
                v17 = __p[0];
              }

              v18 = memcmp(v16, v17, v15) != 0;
              if (v10 < 0)
              {
LABEL_38:
                operator delete(__p[0]);
              }
            }

            else
            {
              v18 = 1;
              if (v10 < 0)
              {
                goto LABEL_38;
              }
            }

            if (!v18)
            {
              return 1;
            }
          }
        }

        else if (*(v7 + 39))
        {
          goto LABEL_14;
        }
      }
    }

    v19 = *(v2 + 704);
    if (*(v2 + 712) == v19)
    {
      return 0;
    }

    v20 = *(v2 + 728);
    v21 = (v19 + 8 * (v20 >> 7));
    v22 = *v21;
    v23 = *v21 + 32 * (v20 & 0x7F);
    v24 = *(v19 + (((*(v2 + 736) + v20) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(v2 + 736) + v20) & 0x7F);
    if (v23 == v24)
    {
      return 0;
    }

    while (*(*v23 + 104) - *(*v23 + 96) != 24)
    {
LABEL_89:
      v23 += 32;
      if (v23 - v22 == 4096)
      {
        v43 = v21[1];
        ++v21;
        v22 = v43;
        v23 = v43;
      }

      if (v23 == v24)
      {
        return 0;
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    v48 = 0;
    v25 = *(*v23 + 96);
    if (*(v25 + 23) < 0)
    {
      sub_100005F2C(__p, *v25, *(v25 + 1));
    }

    else
    {
      v26 = *v25;
      v48 = *(v25 + 2);
      *__p = v26;
    }

    v27 = *(a2 + 95);
    if (v27 >= 0)
    {
      v28 = *(a2 + 95);
    }

    else
    {
      v28 = *(a2 + 80);
    }

    v29 = HIBYTE(v48);
    v30 = HIBYTE(v48);
    if (v48 < 0)
    {
      v29 = __p[1];
    }

    if (v28 == v29)
    {
      v31 = v27 >= 0 ? (a2 + 72) : *v6;
      v32 = v48 >= 0 ? __p : __p[0];
      if (!memcmp(v31, v32, v28))
      {
        v42 = 0;
        if ((v30 & 0x80) == 0)
        {
          goto LABEL_87;
        }

        goto LABEL_86;
      }
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    sub_10092CDF4(__p, &v44);
    v33 = HIBYTE(v46);
    v34 = HIBYTE(v46);
    v35 = v45;
    if (v46 >= 0)
    {
      v36 = &v44 + HIBYTE(v46);
    }

    else
    {
      v36 = v44 + v45;
    }

    if (v46 >= 0)
    {
      v37 = &v44;
    }

    else
    {
      v37 = v44;
    }

    if (v37 != v36)
    {
      do
      {
        *v37 = __tolower(*v37);
        ++v37;
      }

      while (v37 != v36);
      v33 = HIBYTE(v46);
      v35 = v45;
      v34 = HIBYTE(v46);
    }

    v38 = *(a2 + 95);
    if (v38 >= 0)
    {
      v39 = *(a2 + 95);
    }

    else
    {
      v39 = *(a2 + 80);
    }

    if (v34 < 0)
    {
      v33 = v35;
    }

    if (v39 == v33)
    {
      if (v38 >= 0)
      {
        v40 = (a2 + 72);
      }

      else
      {
        v40 = *v6;
      }

      if (v34 >= 0)
      {
        v41 = &v44;
      }

      else
      {
        v41 = v44;
      }

      v42 = memcmp(v40, v41, v39) != 0;
      if ((v34 & 0x80) == 0)
      {
LABEL_85:
        if ((v48 & 0x8000000000000000) == 0)
        {
LABEL_87:
          if (!v42)
          {
            return 1;
          }

          v22 = *v21;
          goto LABEL_89;
        }

LABEL_86:
        operator delete(__p[0]);
        goto LABEL_87;
      }
    }

    else
    {
      v42 = 1;
      if ((v34 & 0x80) == 0)
      {
        goto LABEL_85;
      }
    }

    operator delete(v44);
    goto LABEL_85;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176B99C();
  }

  return 1;
}

void sub_10032B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10032B6D8(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void sub_10032B710(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      sub_10032B7C4(v4++);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v9 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v9;
  v10 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
}

void sub_10032B7C4(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_10032B7E8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_10032B7C4((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10032B838(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10011DBFC(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_100F11B6C(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10011DC58(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10011DD24(&v13);
  return v12;
}

void sub_10032B96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10011DD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10032B980(uint64_t a1)
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

uint64_t sub_10032BA00(uint64_t a1)
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

uint64_t sub_10032BA80(uint64_t a1)
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

uint64_t sub_10032BB00(uint64_t a1)
{
  *a1 = off_101E41F48;
  *(a1 + 48) = off_101E42110;
  *(a1 + 56) = off_101E421B0;
  v2 = (a1 + 64);
  *(a1 + 64) = off_101E42228;
  v17 = (a1 + 752);
  sub_10032BCFC(&v17);
  sub_10032BD80((a1 + 696));
  v3 = *(a1 + 688);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 672);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10006DCAC(a1 + 640, *(a1 + 648));
  sub_100DB14E0(a1 + 424);
  if (*(a1 + 416) == 1 && *(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  sub_1000EFBF0(a1 + 304);
  v17 = (a1 + 280);
  sub_1000B2AF8(&v17);
  v5 = *(a1 + 272);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v17 = (a1 + 232);
  sub_100112048(&v17);
  v6 = *(a1 + 224);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 208);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 176);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 160);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 128);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 112);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    sub_100004A34(v15);
  }

  CellularPlanSubscriptionControllerDelegate::~CellularPlanSubscriptionControllerDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10032BCFC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_10032B7C4(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10032BD80(void *a1)
{
  sub_10032BDD8(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_10001BD44(a1);
}

void sub_10032BDD8(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 3);
        if (v9)
        {
          _Block_release(v9);
        }

        v10 = *(v7 + 2);
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v7 + 1);
        if (v11)
        {
          sub_100004A34(v11);
        }

        v7 += 32;
        if (v7 - *v6 == 4096)
        {
          v12 = v6[1];
          ++v6;
          v7 = v12;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v13 = v3 - v2;
  if (v13 >= 3)
  {
    do
    {
      operator delete(*v2);
      v14 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v13 = (v14 - v2) >> 3;
    }

    while (v13 > 2);
  }

  if (v13 == 1)
  {
    v15 = 64;
  }

  else
  {
    if (v13 != 2)
    {
      return;
    }

    v15 = 128;
  }

  a1[4] = v15;
}

void sub_10032BF84(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10032C058);
  __cxa_rethrow();
}

void sub_10032BFC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10032C018(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032C058(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10032C0F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42780;
  a2[1] = v2;
  return result;
}

void sub_10032C120(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_10032C208(&v4, a2);
  sub_100288F04(v3, &v4);
  sub_10032C4B0(v2, v3);
  sub_100077CD4(v3, v3[1]);
  sub_100077CD4(&v4, v5[0]);
}

void sub_10032C190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100077CD4(&a9, a10);
  sub_100077CD4(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10032C1BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032C208(uint64_t a1, xpc_object_t *a2)
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

  sub_100077CD4(a1, *(a1 + 8));
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
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032C4F4(object, &v6);
        xpc_release(v6);
        sub_10032C6EC(a1, object);
        if (SHIBYTE(v8) < 0)
        {
          operator delete(object[1]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_10032C40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

std::string *sub_10032C4B0(std::string *result, uint64_t a2)
{
  v4 = *(a2 + 8);
  v2 = a2 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= 1)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < 1));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= 1)
    {
      return std::string::operator=(result, (v5 + 40));
    }
  }

  return result;
}

void sub_10032C4F4(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    __p = &object;
    v13 = "first";
    sub_100006354(&__p, v10);
    type = xpc_get_type(v10[0]);
    if (type == &_xpc_type_string)
    {
      LODWORD(v7[0]) = *a1;
      ctu::rest::detail::read_enum_string_value(v7, v10, v6);
      *a1 = v7[0];
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(v10, 0, v6);
    }

    xpc_release(v10[0]);
    v7[0] = &object;
    v7[1] = "second";
    sub_100006354(v7, &v8);
    __p = 0;
    v13 = 0;
    v14 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v10;
    *(a1 + 24) = v11;
    xpc_release(v8);
  }

  xpc_release(object);
}

void sub_10032C688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032C6EC(uint64_t a1, int *a2)
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

uint64_t sub_10032C840(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42800;
  a2[1] = v2;
  return result;
}

uint64_t sub_10032C874(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032C9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032CA5C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032CA9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032CAE8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10032CC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032CD00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032CD40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032CD8C(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  sub_10032CF1C(&v16, a2);
  v11 = 0;
  LOWORD(v11) = *v3;
  v4 = *(v3 + 24);
  *v12 = *(v3 + 8);
  v13 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v5 = *(v3 + 32);
  v15 = *(v3 + 48);
  *__p = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    v17[2] = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101156868(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a1[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_10032D3A4(&v16, v17);
}

void sub_10032CEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10032D3A4(va, v6);
  sub_1000EFBF0(va1);
  sub_10032D3A4(v2 - 56, *(v2 - 48));
  _Unwind_Resume(a1);
}

void sub_10032CF1C(uint64_t a1, xpc_object_t *a2)
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

  sub_10032D3A4(a1, *(a1 + 8));
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

    sub_100008EA4(&v13, object, 0);
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

    sub_100008EA4(v12, object, count);
    xpc_release(object[0]);
    for (i = v14; i != v12[1] || v13 != v12[0]; i = ++v14)
    {
      v11 = 0;
      object[0] = &v13;
      object[1] = i;
      sub_10003EAD4(object, &v11);
      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        *object = xmmword_1017F2920;
        v8 = 0u;
        v9 = 0u;
        v10 = 0u;
        v6 = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032D1F0(object, &v6);
        xpc_release(v6);
        sub_10032D458(a1, object);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(*(&v9 + 1));
        }

        if (SBYTE7(v9) < 0)
        {
          operator delete(v8);
        }
      }

      xpc_release(v11);
    }

    xpc_release(v12[0]);
    xpc_release(v13);
  }

  xpc_release(v3);
}

void sub_10032D154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v14 - 64));
  xpc_release(v13);
  _Unwind_Resume(a1);
}

void sub_10032D1F0(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10032D350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_10032D3A4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10032D3A4(a1, *a2);
    sub_10032D3A4(a1, a2[1]);
    sub_10032D400((a2 + 4));

    operator delete(a2);
  }
}

void sub_10032D400(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

uint64_t *sub_10032D458(uint64_t a1, int *a2)
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

uint64_t sub_10032D574(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10032D400(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10032D69C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032D74C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42980;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032D784(void *a1)
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

uint64_t sub_10032D7CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032D904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032D9B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42A00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032D9F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032DA40(uint64_t *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v4 = *a1;
  v26 = 0uLL;
  v27 = 0;
  rest::read_rest_value(&v26, a2, a3);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  *&v18[16] = 0u;
  v19 = 0u;
  *v18 = 0u;
  v18[0] = *v4;
  v5 = *(v4 + 24);
  *&v18[8] = *(v4 + 8);
  *&v18[24] = v5;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 8) = 0;
  v6 = *(v4 + 48);
  v19 = *(v4 + 32);
  *&v20[0] = v6;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 32) = 0;
  v7 = *(v4 + 56);
  *(&v20[1] + 1) = *(v4 + 72);
  *(v20 + 8) = v7;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  v8 = *(v4 + 80);
  *&v22[0] = *(v4 + 96);
  v21 = v8;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  *(v4 + 96) = 0;
  v9 = *(v4 + 104);
  *(&v22[1] + 1) = *(v4 + 120);
  *(v22 + 8) = v9;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  v10 = *(v4 + 128);
  *&v24[0] = *(v4 + 144);
  v23 = v10;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  v11 = *(v4 + 152);
  *(&v24[1] + 1) = *(v4 + 168);
  *(v24 + 8) = v11;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  *(v4 + 168) = 0;
  LOWORD(v24[2]) = *(v4 + 176);
  v12 = *(v4 + 184);
  *(&v24[3] + 1) = *(v4 + 200);
  *(&v24[2] + 8) = v12;
  *(v4 + 184) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  LOBYTE(v25) = *(v4 + 208);
  v16 = v26;
  v17 = v27;
  v26 = 0uLL;
  v27 = 0;
  sub_101058BEC(v4, &v16);
  v28 = &v16;
  sub_10032DC68(&v28);
  if (rest::operator!=())
  {
    v13 = a1[2];
    v14 = a1[3];
    v15 = (a1[1] + (v14 >> 1));
    if (v14)
    {
      v13 = *(*v15 + v13);
    }

    v13(v15);
  }

  sub_100DB14E0(v18);
  *v18 = &v26;
  sub_10032DC68(v18);
}

void sub_10032DC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  *(v14 - 40) = v13;
  sub_10032DC68((v14 - 40));
  sub_100DB14E0(&a13);
  a13 = (v14 - 64);
  sub_10032DC68(&a13);
  _Unwind_Resume(a1);
}

void sub_10032DC68(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100DB14E0(v4 - 216);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10032DDD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032DE88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42A80;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10032DEC0(void *a1, xpc_object_t *a2)
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

  sub_10032DFE4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10032DF98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032DFE4(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v28, object, 0);
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

    sub_100008EA4(v27, object, count);
    xpc_release(object[0]);
    for (i = v29; i != v27[1] || v28 != v27[0]; i = ++v29)
    {
      v26 = 0;
      object[0] = &v28;
      object[1] = i;
      sub_10003EAD4(object, &v26);
      if (xpc_get_type(v26) == &_xpc_type_dictionary)
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
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
        *object = 0u;
        v8 = 0u;
        ConnectionAvailabilityContainer::ConnectionAvailabilityContainer((object + 4));
        v6 = v26;
        if (v26)
        {
          xpc_retain(v26);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10032E2AC(object, &v6);
        xpc_release(v6);
        sub_10032E460(a1, object);
      }

      xpc_release(v26);
    }

    xpc_release(v27[0]);
    xpc_release(v28);
  }

  xpc_release(v3);
}

void sub_10032E21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 80));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_10032E2AC(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    read_rest_value((a1 + 1), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10032E40C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032E460(uint64_t a1, int *a2)
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

void sub_10032E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10032E6C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E42B00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10032E700(void *a1)
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

uint64_t sub_10032E748(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10032E794(std::mutex *this, uint64_t *a2)
{
  v4 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v5 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t sub_10032E8CC(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  v2 = (a1 + 24);
  v2[15] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  sub_100F11798(v2);
  return a1;
}

void sub_10032E990(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E42B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10032E9F0(uint64_t **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 232);
  if (*(*v1 + 240) == v3)
  {
    sub_1002030E0();
  }

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = v1[2];
  v10[0] = v1[1];
  v10[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100326898(v2, v4, v5, v10, &stru_101E42BE0, &stru_101E42C20);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10032EAB4(&v9);
  return sub_1000049E0(&v8);
}

void sub_10032EA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10032EAB4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10032EAB4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10032EB10(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 48 * a3;
    do
    {
      sub_10032EB8C(a1, a2);
      a2 += 6;
      v5 -= 48;
    }

    while (v5);
  }

  return a1;
}

const void **sub_10032EB8C(void *a1, const void **a2)
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
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_10032EDF4();
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

void sub_10032EDE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

void sub_10032EE70()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10032EEE8();
}

void sub_10032EED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10018D7F8(va);
  _Unwind_Resume(a1);
}

const void **sub_10032EF8C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000D3314(a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = sub_10032EFF0(a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  sub_10032F13C(a1, v2);
  return v2;
}

const void **sub_10032EFF0(uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (sub_100022D3C(a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_10011CF40(a1, v18);
  }

  return 0;
}

uint64_t *sub_10032F13C(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t sub_10032F200(uint64_t result, uint64_t a2)
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

void sub_10032F21C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10032F29C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E42C88;
  a2[1] = v2;
  return result;
}

void sub_10032F2C8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I sim connectivity probe finished : %d", v9, 8u);
  }

  v5 = v3[94];
  v6 = v3[95];
  if (v5 != v6)
  {
    do
    {
      (*(*v5++ + 2))();
    }

    while (v5 != v6);
    v6 = v3[95];
    v5 = v3[94];
  }

  while (v6 != v5)
  {
    sub_10032B7C4(--v6);
  }

  v3[95] = v5;
  v7 = v3[86];
  v3[85] = 0;
  v3[86] = 0;
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v3[84];
  v3[83] = 0;
  v3[84] = 0;
  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10032F3F8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E42CE8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10032F444(void *a1)
{
  *a1 = off_101E42D08;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F494(void *a1)
{
  *a1 = off_101E42D08;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032F574(uint64_t a1, void *a2)
{
  *a2 = off_101E42D08;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032F5CC(const void **a1)
{
  sub_10032F6AC(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032F608(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 1 >= 2)
  {
    v3 = *(a1 + 8);
    v5 = 0;
  }

  else
  {
    v2 = a2[1];
    v3 = *(a1 + 8);
    LOBYTE(v5) = *a2;
    HIBYTE(v5) = v2;
  }

  return (*(v3 + 16))(v3, &v5);
}

uint64_t sub_10032F660(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032F6AC(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10032F6D0(void *a1)
{
  *a1 = off_101E42D98;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F720(void *a1)
{
  *a1 = off_101E42D98;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032F800(uint64_t a1, void *a2)
{
  *a2 = off_101E42D98;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032F858(const void **a1)
{
  sub_10032F938(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032F894(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 1 >= 2)
  {
    v3 = *(a1 + 8);
    v5 = 0;
  }

  else
  {
    v2 = a2[1];
    v3 = *(a1 + 8);
    LOBYTE(v5) = *a2;
    HIBYTE(v5) = v2;
  }

  return (*(v3 + 16))(v3, &v5);
}

uint64_t sub_10032F8EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032F938(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10032F95C(void *a1)
{
  *a1 = off_101E42E18;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10032F9AC(void *a1)
{
  *a1 = off_101E42E18;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_10032FA8C(uint64_t a1, void *a2)
{
  *a2 = off_101E42E18;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_10032FAE4(const void **a1)
{
  sub_10032FB80(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10032FB34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10032FB80(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10032FBA4(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_1000FB8B8(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_100129284(a1, &v10);
}

void sub_10032FD2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10032FD78(uint64_t a1, uint64_t a2)
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

uint64_t sub_10032FE10(uint64_t a1)
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

uint64_t sub_10032FE90(uint64_t a1, uint64_t a2)
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

void *sub_10032FF28(void *a1)
{
  *a1 = off_101E42E98;
  sub_10032B980((a1 + 1));
  return a1;
}

void sub_10032FF6C(void *a1)
{
  *a1 = off_101E42E98;
  sub_10032B980((a1 + 1));

  operator delete();
}

void sub_10033007C(void *a1)
{
  sub_10032B980(a1 + 8);

  operator delete(a1);
}

void sub_1003300B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1003304F8(v7, a2);
  if (v22 == 1)
  {
    v37[0] = 0;
    sub_100330430(v37, v7);
    v4 = *(a1 + 32);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, v37);
    if (v37[0] == 1)
    {
      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }

      if (v42 < 0)
      {
        operator delete(v41);
      }

      if (v40 < 0)
      {
        operator delete(v39);
      }

      if ((v38[23] & 0x80000000) != 0)
      {
        v5 = v38;
LABEL_34:
        operator delete(*v5);
      }
    }
  }

  else
  {
    v23[0] = 2;
    v23[8] = 3;
    v6 = *(a1 + 32);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, v23, v3);
    if (v23[0] == 1)
    {
      if (v36 < 0)
      {
        operator delete(__p);
      }

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
        operator delete(v25);
      }

      if ((v24[23] & 0x80000000) != 0)
      {
        v5 = v24;
        goto LABEL_34;
      }
    }
  }

  if (v22 == 1)
  {
    if (v21 < 0)
    {
      operator delete(v20);
    }

    if (v19 < 0)
    {
      operator delete(v18);
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
}

void sub_100330310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 - 232) == 1)
  {
    sub_10011289C(v38 - 224);
  }

  if (a34 == 1)
  {
    sub_10011289C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100330364(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003303B0(uint64_t a1, uint64_t a2)
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

std::string *sub_100330430(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    *(a1 + 8) = *a2;
    std::string::operator=((a1 + 16), (a2 + 8));
    std::string::operator=((a1 + 40), (a2 + 32));
    *(a1 + 64) = *(a2 + 56);
    std::string::operator=((a1 + 72), (a2 + 64));
    std::string::operator=((a1 + 96), (a2 + 88));
    std::string::operator=((a1 + 120), (a2 + 112));
    std::string::operator=((a1 + 144), (a2 + 136));
    result = std::string::operator=((a1 + 168), (a2 + 160));
    *(a1 + 192) = *(a2 + 184);
  }

  else
  {
    *a1 = 1;
    v5 = a1 + 8;

    return sub_10016A078(v5, a2);
  }

  return result;
}

__n128 sub_1003304F8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 192) = 0;
  if (*(a2 + 192) == 1)
  {
    *a1 = *a2;
    v2 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v2;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v3 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = *(a2 + 56);
    v4 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v4;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 88) = 0;
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v7;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 152) = 0;
    result = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 160) = result;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 176) = 0;
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = 1;
  }

  return result;
}

uint64_t sub_1003305D8(uint64_t a1)
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

uint64_t sub_100330658(uint64_t a1, uint64_t a2)
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

void *sub_1003306F0(void *a1)
{
  *a1 = off_101E42F28;
  sub_10032BA00((a1 + 1));
  return a1;
}

void sub_100330734(void *a1)
{
  *a1 = off_101E42F28;
  sub_10032BA00((a1 + 1));

  operator delete();
}

void sub_100330844(void *a1)
{
  sub_10032BA00(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100330880(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_1003308C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100330914(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003309A0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v3);
  sub_1003309F4(*(a1 + 32), v3);
  return sub_100FBB8C8(v3);
}

uint64_t sub_1003309F4(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 8);
  *a1 = *a2;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  v5 = *v4;
  *(a1 + 24) = *(v4 + 2);
  *(a1 + 8) = v5;
  *(a2 + 31) = 0;
  *(a2 + 8) = 0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *(a2 + 55) = 0;
  *(a2 + 32) = 0;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v8 = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = v8;
  *(a2 + 103) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v9 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v9;
  *(a2 + 127) = 0;
  *(a2 + 104) = 0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v10;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v11 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v11;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v12 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v12;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  v13 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v13;
  *(a2 + 223) = 0;
  *(a2 + 200) = 0;
  return a1;
}

uint64_t sub_100330B98(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(v3);
  sub_1003309F4(*(a1 + 32), v3);
  return sub_100FBB8C8(v3);
}

uint64_t sub_100330BEC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100330C84(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100330D04(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v3 = *a1;
  v6 = a1;
  v7 = v3;
  sub_1003289DC(*v3, a3, v8);
  v4 = *(v3 + 32);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v8);
  sub_100FBB8C8(v8);
  sub_100330DB8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100330D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100330DB8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100330DB8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10032BA80(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_100330E08(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1[1])
      {
        v6 = (*(**(v3 + 168) + 48))(*(v3 + 168), v1 + 3);
        if (v1[9])
        {
          sub_10000FFD0((v1 + 6), v6);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_100330ED8(&v9);
  return sub_1000049E0(&v8);
}

void sub_100330EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100330ED8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100330ED8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 48);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100330FB0(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E42B80;
  sub_10004ECBC((a1 + 24), a2);
  return a1;
}

uint64_t *sub_10033100C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  (*(**(*v1 + 168) + 112))(*(*v1 + 168));
  (*(**(v2 + 168) + 40))(&v7);
  v6 = 0;
  sub_100331140(v1 + 1, &v7);
  sub_100010250(&v7);
  sub_1003310E8(&v5);
  return sub_1000049E0(&v4);
}

void sub_1003310BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_100010250(&a12);
  sub_1003310E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003310E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete();
  }

  return result;
}

const void **sub_100331140(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  return sub_100010250(&v4);
}

void sub_100331190(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003311A4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *(*v1 + 168);
  v13[0] = 0;
  v13[1] = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v11 = *(v1 + 24);
    __p = v3;
  }

  v12 = 1;
  v4 = *(v1 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v8[0] = off_101E43008;
  v8[1] = v4;
  v7[1] = 0;
  v8[3] = v8;
  (*(*v2 + 72))(v2, v13, v9, v8);
  sub_100113648(v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  sub_100331320(v7);
  return sub_1000049E0(&v6);
}

void sub_1003312CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100331320(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331320(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      _Block_release(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

const void **sub_100331388(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_1003313BC(void *a1)
{
  *a1 = off_101E43008;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10033140C(void *a1)
{
  *a1 = off_101E43008;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_1003314EC(uint64_t a1, void *a2)
{
  *a2 = off_101E43008;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void sub_100331544(const void **a1)
{
  sub_1003315E0(a1 + 1);

  operator delete(a1);
}

uint64_t sub_100331594(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003315E0(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t *sub_100331604(uint64_t **a1)
{
  v1 = *a1;
  v6 = a1;
  v7[0] = v1;
  v2 = *v1;
  v3 = *(*v1 + 168);
  v12[0] = 0;
  v12[16] = 0;
  sub_1013F05F4(v9);
  v7[1] = v2;
  v4 = v1[1];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v8[0] = off_101E43088;
  v8[1] = v2;
  v7[2] = 0;
  v8[2] = v4;
  v8[3] = v8;
  (*(*v3 + 80))(v3, v12, v9, v8);
  sub_100113648(v8);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  sub_100331764(v7);
  return sub_1000049E0(&v6);
}

void sub_100331710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100331764(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1003317BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void *sub_1003317F0(void *a1)
{
  *a1 = off_101E43088;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100331840(void *a1)
{
  *a1 = off_101E43088;
  v1 = a1[2];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100331920(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  result = *(a1 + 16);
  *a2 = off_101E43088;
  a2[1] = v4;
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void sub_100331978(void *a1)
{
  sub_100331AA0(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1003319B4(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1 && (a2[1] & 1) != 0)
  {
    v3 = *(*(a1 + 16) + 16);

    return v3();
  }

  else
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176B9D0();
    }

    return (*(*(a1 + 16) + 16))();
  }
}

uint64_t sub_100331A54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100331AA0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_100331AC4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x80)
  {
    a2 = 1;
  }

  if (v2 < 0x100)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 128;
  }

  return v4 ^ 1u;
}

uint64_t *sub_100331B24(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8) && *(v1 + 56) == 1)
      {
        v6 = *(v1 + 40);
        if (v6)
        {
          (*(v6 + 16))(v6, v1 + 64);
          if ((*(v1 + 56) & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
          }
        }

        (*(**(v3 + 168) + 56))(*(v3 + 168), v1 + 80, *(*(v1 + 24) + 146));
      }

      sub_100004A34(v5);
    }
  }

  sub_100331C38(&v9);
  return sub_1000049E0(&v8);
}

void sub_100331C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100331C38(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331C38(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1001123EC((v1 + 56));
    v2 = *(v1 + 48);
    if (v2)
    {
      _Block_release(v2);
    }

    v3 = *(v1 + 40);
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = *(v1 + 32);
    if (v4)
    {
      sub_100004A34(v4);
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100331CC0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        if (*(v1 + 144))
        {
          sub_100331E10((v1 + 144), (v1 + 152), (v1 + 24));
        }

        *(v3 + 744) = 0;
        sub_10032A8FC((v3 + 696));
        if (*(v1 + 152) == 1)
        {
          v6 = *(v3 + 184);
          if (v6)
          {
            if (*(*(v1 + 120) + 104) - *(*(v1 + 120) + 96) == 24)
            {
              (*(*v6 + 88))(v6);
            }
          }
        }

        sub_100326DD4(v3);
      }

      sub_100004A34(v5);
    }
  }

  sub_100331DC8(&v9);
  return sub_1000049E0(&v8);
}

void sub_100331DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100331DC8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100331DC8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10032B0E8(v2);
    operator delete();
  }

  return a1;
}

void sub_100331E10(uint64_t *a1, unsigned __int8 *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = 0;
  if (*a2 - 1 <= 1)
  {
    v4 = *a2;
  }

  v6[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v7, (a3 + 8));
    v6[0] = 1;
  }

  (*(v3 + 16))(v3, &v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100331F1C()
{
  if ((atomic_load_explicit(&qword_101FBA248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA248))
  {
    sub_100331FC4(qword_101FBA228);
  }

  qword_101FCB730 = qword_101FBA228;
}

void sub_100331FC4(void *a1)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  createPlatformPropertyStore(a1 + 3);
}

void sub_100332014(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v3)
  {
    sub_10176BA04(v3);
  }

  sub_1000DD0AC(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100332044(uint64_t a1)
{
  std::mutex::lock(&stru_101FB1BC0);
  sub_1000DD0AC(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  createPlatformPropertyStore(&v2);
}

uint64_t sub_100332160(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v3 = *(a1 + 24);
    byte_101FCB738 = 1;
    *(a1 + 24) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  else
  {
    byte_101FCB738 = 1;
  }

  sub_1000DD0AC(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10033220C(uint64_t **a1, void **a2)
{
  std::mutex::lock(&stru_101FB1BC0);
  v4 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v4)
  {
    if (!(*(*a1[3] + 32))(a1[3], a2))
    {
      v5 = 0;
      goto LABEL_6;
    }

    sub_1000194D8(a1, v4);
    sub_1000DD108((v4 + 4));
    operator delete(v4);
  }

  v5 = 1;
LABEL_6:
  std::mutex::unlock(&stru_101FB1BC0);
  return v5;
}

uint64_t sub_1003322E4(uint64_t a1)
{
  std::mutex::lock(&stru_101FB1BC0);
  v2 = (*(**(a1 + 24) + 40))(*(a1 + 24));
  if (v2)
  {
    sub_1000DD0AC(a1, *(a1 + 8));
    *a1 = a1 + 8;
    *(a1 + 16) = 0;
    *(a1 + 8) = 0;
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v2;
}

uint64_t sub_10033238C(uint64_t a1, std::string *this, const std::string *a3)
{
  if (std::string::find(this, 61, 0) != -1)
  {
    __TUAssertTrigger();
  }

  std::mutex::lock(&stru_101FB1BC0);
  v6 = (*(**(a1 + 24) + 16))(*(a1 + 24), this, a3);
  if (v6)
  {
    v7 = sub_100173F08(a1, &this->__r_.__value_.__l.__data_);
    std::string::operator=((v7 + 56), a3);
  }

  std::mutex::unlock(&stru_101FB1BC0);
  return v6;
}

BOOL sub_1003324A4(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 intValue];
  }

  return v5 != 0;
}

BOOL sub_100332500(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 unsignedIntValue];
  }

  return v5 != 0;
}

BOOL sub_10033255C(void *a1, uint64_t a2, void *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 unsignedLongLongValue];
  }

  return v5 != 0;
}

BOOL sub_1003325B8(void *a1, uint64_t a2, _DWORD *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 floatValue];
    *a3 = v6;
  }

  return v5 != 0;
}

BOOL sub_100332614(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    *a3 = [v4 BOOLValue];
  }

  return v5 != 0;
}

BOOL sub_100332670(void *a1, uint64_t a2, std::string *a3)
{
  v4 = [a1 valueForKey:a2];
  v5 = v4;
  if (v4)
  {
    sub_100016890(a3, [v4 UTF8String]);
  }

  return v5 != 0;
}

void sub_10033271C(id a1)
{
  v1 = objc_alloc_init(CTLocationManager);
  v2 = qword_101FBA250;
  qword_101FBA250 = v1;
}

void sub_100332AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CTLocationManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_100332C08(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 33) ^ 1 | (v2 != *(a1 + 32));
  if ((*(a1 + 33) ^ 1) & 1 | (v2 != *(a1 + 32)))
  {
    *(a1 + 32) = v2 | 0x100;
    v4 = *(a1 + 24);
    if (v4)
    {
      (*(*v4 + 48))(v4);
    }
  }

  return v3 & 1;
}

uint64_t sub_1003336BC(uint64_t a1)
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

id sub_10033373C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [CLLocationManager alloc];
  v3 = [NSBundle bundleWithIdentifier:@"com.apple.CoreTelephony"];
  v4 = [v2 initWithEffectiveBundle:v3 delegate:*v1 onQueue:*(*v1 + 40)];
  v5 = *(*v1 + 8);
  *(*v1 + 8) = v4;

  [*(*v1 + 8) setDistanceFilter:kCLDistanceFilterNone];
  v6 = *(*v1 + 8);

  return [v6 setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
}

id **sub_100333804(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    operator delete();
  }

  return result;
}

id **sub_100333854(id *a1)
{
  v2 = a1;
  [*a1 fetchLocationServiceEnabled];
  return sub_100333804(&v2);
}

void sub_10033388C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100333804(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003338A0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1003338FC(uint64_t a1)
{
  v12 = a1;
  v1 = *a1;
  if (!*(*a1 + 56))
  {
    v3 = **(v1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setting Registry & RestModule", buf, 2u);
      v1 = *a1;
    }

    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(v1 + 64);
    *(v1 + 56) = v5;
    *(v1 + 64) = v4;
    if (v6)
    {
      sub_100004A34(v6);
    }

    sub_10000501C(buf, "CTLocationManager");
    v7 = *(*a1 + 40);
    v14 = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    object = 0;
    ctu::RestModule::RestModule();
    v8 = *a1;
    v9 = v17;
    v17 = 0uLL;
    v10 = *(v8 + 80);
    *(v8 + 72) = v9;
    if (v10)
    {
      sub_100004A34(v10);
      if (*(&v17 + 1))
      {
        sub_100004A34(*(&v17 + 1));
      }
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14)
    {
      dispatch_release(v14);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
    }

    Registry::createRestModuleOneTimeUseConnection(&v17, *(a1 + 8));
    ctu::RestModule::connect();
    if (*(&v17 + 1))
    {
      sub_100004A34(*(&v17 + 1));
    }

    sub_100333AB8((*a1 + 88), *a1 + 72);
  }

  return sub_1003338A0(&v12);
}

void sub_100333A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = *(v16 - 40);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1003338A0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100333AB8(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100333B1C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100333B1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E43138;
  v5[1] = v3;
  v5[3] = v5;
  sub_100333DB0(v5, a1);
  sub_1003336BC(v5);
  return a1;
}

uint64_t sub_100333C20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E43138;
  a2[1] = v2;
  return result;
}

uint64_t sub_100333C54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100333CA0(uint64_t a1, BOOL *a2)
{
  if (!a2[1] || (v2 = xpc_BOOL_create(*a2)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/location_service_enabled");
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

void sub_100333D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100333DB0(void *result, void *a2)
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

void sub_100334010(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10033401C(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  if ((*(*v1 + 49) & 1) == 0)
  {
    sub_10176BA3C();
  }

  v4 = **(v2 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v2 + 48))
    {
      v5 = "True";
    }

    else
    {
      v5 = "False";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I using cached locationServiceEnabled: %s", &v6, 0xCu);
    v2 = *v1;
  }

  **(a1 + 32) = *(v2 + 48);
}

atomic_uint **sub_100334104(uint64_t *a1, double a2, double a3)
{
  v25 = a3;
  v26 = a2;
  v24 = 0uLL;
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
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_10010049C(a1, &v29, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v28[0] = v8;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
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
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = &v26;
  v49 = &v25;
  v50 = 0;
  v51 = 0;
  v9 = sub_100100000(&v24);
  v23[0] = &v29;
  v23[1] = a1;
  v23[2] = sub_100101E74(v9);
  v10 = sub_100100000(&v24);
  v11 = sub_10004AA88((v10 + 16));
  v12 = sub_100100000(&v24);
  v13 = *(sub_100101E74(v12) + 8);
  v14 = sub_100100000(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_100101E74(v14);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_1003344F8(&v21);
  v15 = sub_100100000(&v24);
  v16 = sub_100101E74(v15);
  v17 = sub_100100000(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_100101E74(v17);
  *&v20 = &v29;
  *(&v20 + 1) = *(&v19 + 1);
  sub_1003344F8(&v19);
  v28[0] = v21;
  v28[1] = v22;
  v27[0] = v19;
  v27[1] = v20;
  sub_100334380(v11, v28, v27);
  sub_1003348C0(v23);
  sub_100334AA4(&v29);
  return sub_10004A724(&v24 + 1);
}

void sub_10033432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

void sub_100334380(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_100334408(a2);
    *a2 = *(*a2 + 8);
    sub_1003344F8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_100334408(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003344A8((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1003344A8(uint64_t a1, uint64_t *a2)
{
  v2 = sub_100100178(a2);
  v3 = (sub_100100E90((v2 + 32)) + 24);

  return sub_100102810(v3);
}

void sub_1003344F8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_100334758((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_100100178((*a1 + 16));
      sub_10033479C(v4, &v14, (a1[2] + 8));
      v5 = sub_100100178((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_100100178((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_100334758((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10033471C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100334758(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10033479C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_100100E90(result + 4); ; i += 6)
    {
      result = sub_100100E90(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_10033489C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003348C0(uint64_t a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_100334904(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_100334904(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100100000(a1);
  if (sub_100101E74(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100100000(a1);
    v8 = *(sub_100101E74(v7) + 8);
    sub_100100384(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

uint64_t sub_100334AA4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_100334B7C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100334B9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100334BE0(uint64_t *a1, uint64_t a2)
{
  v24 = a2;
  v23 = 0uLL;
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
  v3 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v27, v3);
  v4 = a1[1];
  if (v4)
  {
    if (atomic_load_explicit((v4 + 8), memory_order_acquire) == 1)
    {
      sub_100334E58(a1, &v27, 0, 1);
    }

    v5 = *a1;
    v6 = a1[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
    v5 = *a1;
  }

  v7 = v23;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  v26[0] = v7;
  sub_10004A724(v26 + 1);
  sub_10004A704(*(&v38 + 1));
  sub_10004A6B0(&v27);
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
  v27 = 0u;
  v42 = 0;
  v43 = 10;
  v44 = &v27 + 8;
  v45 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v24;
  v8 = sub_100334EF0(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_100335140(v8);
  v9 = sub_100334EF0(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_100334EF0(&v23);
  v12 = *(sub_100335140(v11) + 8);
  v13 = sub_100334EF0(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_100335140(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_100335390(&v20);
  v14 = sub_100334EF0(&v23);
  v15 = sub_100335140(v14);
  v16 = sub_100334EF0(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_100335140(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_100335390(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_100335184(v10, v26, v25);
  sub_100335758(v22);
  sub_100336010(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_100334E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_100334E58(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100334EF0(a1);
  v10 = sub_100335140(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100334EF0(a1);
    v11 = *(sub_100335140(v12) + 8);
  }

  v14 = v11;
  return sub_100334F34(a1, a2, a3, &v14, a4);
}

uint64_t sub_100334EF0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100334F34(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100334EF0(a1);
  result = sub_100335140(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10033504C(v10 + 2);
        sub_100335090(v15, a2);
        v10 = v22;
      }

      if (*(sub_10033504C(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100334EF0(a1);
        v18 = sub_100335140(v17);
        v19 = sub_10033504C(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100334EF0(a1);
      result = sub_100335140(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_10033504C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100335090(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003350FC(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1003350FC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_100335140(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100335184(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10033520C(a2);
    *a2 = *(*a2 + 8);
    sub_100335390(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10033520C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1003352AC((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1003352AC(uint64_t a1, uint64_t *a2)
{
  v2 = sub_10033504C(a2);
  v3 = (sub_1003350FC((v2 + 32)) + 24);

  return sub_1003352F8(v3);
}

uint64_t sub_1003352F8(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_100335390(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1003355F0((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10033504C((*a1 + 16));
      sub_100335634(v4, &v14, (a1[2] + 8));
      v5 = sub_10033504C((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_10033504C((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1000821A0(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1003355F0((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1003355B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003355F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100335634(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1003350FC(result + 4); ; i += 6)
    {
      result = sub_1003350FC(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_100335734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335758(uint64_t a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_10033579C(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_10033579C(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100334EF0(a1);
  if (sub_100335140(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100334EF0(a1);
    v8 = *(sub_100335140(v7) + 8);
    sub_100334F34(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10033593C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1003359E0(&v2, a2);
}

uint64_t sub_10033599C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003359E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100335A4C(&v2);
}

void sub_100335ABC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100335AFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_100335C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100335DA0(a1, a2);
  sub_100335E0C((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_100335DA0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100335E0C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100335E74(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100335EE0(&v2);
}

void sub_100335F50(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100335F90(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_100336010(uint64_t a1)
{
  v2 = *(a1 + 288);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 288), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1003360E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100336108(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10033614C(uint64_t *a1, int a2, int a3)
{
  v25 = a3;
  v26 = a2;
  v24 = 0uLL;
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
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v4);
  v5 = a1[1];
  if (v5)
  {
    if (atomic_load_explicit((v5 + 8), memory_order_acquire) == 1)
    {
      sub_1003363C8(a1, &v29, 0, 1);
    }

    v6 = *a1;
    v7 = a1[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v7 = 0;
    v6 = *a1;
  }

  v8 = v24;
  *&v24 = v6;
  *(&v24 + 1) = v7;
  v28[0] = v8;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
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
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = &v26;
  v49 = &v25;
  v50 = 0;
  v51 = 0;
  v9 = sub_100336460(&v24);
  v23[0] = &v29;
  v23[1] = a1;
  v23[2] = sub_1003366B0(v9);
  v10 = sub_100336460(&v24);
  v11 = sub_10004AA88((v10 + 16));
  v12 = sub_100336460(&v24);
  v13 = *(sub_1003366B0(v12) + 8);
  v14 = sub_100336460(&v24);
  *&v21 = v13;
  *(&v21 + 1) = sub_1003366B0(v14);
  *&v22 = &v29;
  *(&v22 + 1) = *(&v21 + 1);
  sub_100336904(&v21);
  v15 = sub_100336460(&v24);
  v16 = sub_1003366B0(v15);
  v17 = sub_100336460(&v24);
  *&v19 = v16;
  *(&v19 + 1) = sub_1003366B0(v17);
  *&v20 = &v29;
  *(&v20 + 1) = *(&v19 + 1);
  sub_100336904(&v19);
  v28[0] = v21;
  v28[1] = v22;
  v27[0] = v19;
  v27[1] = v20;
  sub_1003366F4(v11, v28, v27);
  sub_100336CCC(v23);
  sub_100337584(&v29);
  return sub_10004A724(&v24 + 1);
}

void sub_100336374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1003363C8(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100336460(a1);
  v10 = sub_1003366B0(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100336460(a1);
    v11 = *(sub_1003366B0(v12) + 8);
  }

  v14 = v11;
  return sub_1003364A4(a1, a2, a3, &v14, a4);
}

uint64_t sub_100336460(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1003364A4(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100336460(a1);
  result = sub_1003366B0(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1003365BC(v10 + 2);
        sub_100336600(v15, a2);
        v10 = v22;
      }

      if (*(sub_1003365BC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100336460(a1);
        v18 = sub_1003366B0(v17);
        v19 = sub_1003365BC(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100336460(a1);
      result = sub_1003366B0(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1003365BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100336600(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10033666C(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_10033666C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1003366B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003366F4(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10033677C(a2);
    *a2 = *(*a2 + 8);
    sub_100336904(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10033677C(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10033681C((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_10033681C(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1003365BC(a2);
  v3 = (sub_10033666C((v2 + 32)) + 24);

  return sub_10033686C(v3);
}

uint64_t sub_10033686C(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_100336904(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_100336B64((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1003365BC((*a1 + 16));
      sub_100336BA8(v4, &v14, (a1[2] + 8));
      v5 = sub_1003365BC((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1003365BC((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_100336B64((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_100336B28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100336B64(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100336BA8(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10033666C(result + 4); ; i += 6)
    {
      result = sub_10033666C(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_100336CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100336CCC(uint64_t a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_100336D10(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_100336D10(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100336460(a1);
  if (sub_1003366B0(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100336460(a1);
    v8 = *(sub_1003366B0(v7) + 8);
    sub_1003364A4(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_100336EB0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100336F54(&v2, a2);
}

uint64_t sub_100336F10(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100336F54(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100336FC0(&v2);
}

void sub_100337030(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100337070(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10033718C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100337314(a1, a2);
  sub_100337380((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_100337314(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_100337380(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1003373E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100337454(&v2);
}

void sub_1003374C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100337504(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_100337584(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10033765C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10033767C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_10033770C(void *a1)
{
  *a1 = off_101EA5640;
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "pdp");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101E43348;
  a1[3] = 0;
  a1[2] = a1 + 3;
  a1[7] = 0;
  a1[6] = 0;
  a1[4] = 0;
  a1[5] = a1 + 6;
  return a1;
}

void sub_1003377D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_100337808(uint64_t a1)
{
  *a1 = off_101E43348;
  sub_1000686E8(a1 + 40, *(a1 + 48));
  sub_1000686E8(a1 + 16, *(a1 + 24));
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10033787C(uint64_t a1)
{
  sub_100337808(a1);

  operator delete();
}

uint64_t sub_1003378B4(uint64_t result, unsigned int a2, char a3)
{
  if (a3)
  {
    v3 = *(result + 24);
    if (!v3)
    {
      goto LABEL_10;
    }

    v4 = result + 24;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 == result + 24 || *(v4 + 32) > a2)
    {
LABEL_10:
      v8[0] = 0;
      v8[1] = 0;
      sub_100068240();
    }
  }

  else
  {
    LODWORD(v8[0]) = a2;
    return sub_100337E64(result + 16, v8);
  }

  return result;
}

void sub_100337A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100337A34(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100337A6C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100337AA8(void *a1)
{
  *a1 = off_101E43438;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100337AF4(void *a1)
{
  *a1 = off_101E43438;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void *sub_100337BD4(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E43438;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_100337C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_100337C24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100337C70(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100337DD8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100337C70(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100337DF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_100337E64(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_100337ED4(a1, v4);
  return 1;
}

uint64_t *sub_100337ED4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000194D8(a1, a2);
  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100337F18(uint64_t a1, void *a2, unsigned int a3, NSObject **a4, uint64_t a5)
{
  *a1 = off_101E65E90;
  v10 = kCtLoggingSystemName;
  v11 = sub_100338044(a3);
  ctu::OsLogContext::OsLogContext(&v14, v10, v11);
  sub_100338068((a1 + 8), a4, &v14);
  ctu::OsLogContext::~OsLogContext(&v14);
  *a1 = off_101E434C8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v12 = a2[1];
  *(a1 + 64) = *a2;
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a3;
  *(a1 + 88) = a5;
  *(a1 + 96) = v11;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 130) = 0u;
  return a1;
}

void sub_100338020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

const char *sub_100338044(unsigned int a1)
{
  if (a1 > 9)
  {
    return "DATA.Collocation:N:";
  }

  else
  {
    return off_101E437D0[a1];
  }
}

void *sub_100338068(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1003380D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1003380F4(uint64_t a1)
{
  *a1 = off_101E434C8;
  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = (a1 + 152);
  sub_1000087B4(&v5);
  v3 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  TMKXPCServer.shutdown()();
}

uint64_t sub_1003381D4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "init";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s: init", &v5, 0xCu);
  }

  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  v4 = 120000;
  if (!*(a1 + 80))
  {
    v4 = 300000;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = v4;
  return result;
}

void sub_1003389C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100338FC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 88);
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 24))(v3, a2, &v5);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10033903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100339054()
{
  v0 = 0;
  v1 = 0;
  sub_100338F40();
}

void sub_100339290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003392DC(uint64_t a1, const char *a2, uint64_t a3, const char *a4, uint64_t a5, int a6, int a7, const char *a8, int64_t value, int64_t a10, unsigned int a11, BOOL a12, int64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v24 = ServiceMap;
  if (v25 < 0)
  {
    v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(ServiceMap);
  *&string = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, &string);
  v30 = a2;
  if (!v29)
  {
    v32 = 0;
    goto LABEL_10;
  }

  v31 = v29[4];
  if (!v31)
  {
    v32 = v29[3];
LABEL_10:
    std::mutex::unlock(v24);
    v31 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_183;
    }

LABEL_11:
    v83 = v33;
    v151 = 0;
    v34 = xpc_dictionary_create(0, 0, 0);
    v35 = v34;
    if (v34)
    {
      v151 = v34;
    }

    else
    {
      v35 = xpc_null_create();
      v151 = v35;
      if (!v35)
      {
        v36 = xpc_null_create();
        v35 = 0;
        goto LABEL_18;
      }
    }

    if (xpc_get_type(v35) == &_xpc_type_dictionary)
    {
      xpc_retain(v35);
      goto LABEL_19;
    }

    v36 = xpc_null_create();
LABEL_18:
    v151 = v36;
LABEL_19:
    xpc_release(v35);
    if (v30[23] < 0)
    {
      v30 = *v30;
    }

    v149 = xpc_string_create(v30);
    if (!v149)
    {
      v149 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "activateReason";
    sub_10000F688(&string, &v149, &v150);
    xpc_release(v150);
    v150 = 0;
    xpc_release(v149);
    v149 = 0;
    object = xpc_uint64_create(a3);
    if (!object)
    {
      object = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "activatingTime";
    sub_10000F688(&string, &object, &v148);
    xpc_release(v148);
    v148 = 0;
    xpc_release(object);
    object = 0;
    v37 = a4;
    if (a4[23] < 0)
    {
      v37 = *a4;
    }

    v145 = xpc_string_create(v37);
    if (!v145)
    {
      v145 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "apn";
    sub_10000F688(&string, &v145, &v146);
    xpc_release(v146);
    v146 = 0;
    xpc_release(v145);
    v145 = 0;
    v143 = xpc_uint64_create(a5);
    if (!v143)
    {
      v143 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "connectionMasks";
    sub_10000F688(&string, &v143, &v144);
    xpc_release(v144);
    v144 = 0;
    xpc_release(v143);
    v143 = 0;
    v141 = xpc_int64_create(a6);
    if (!v141)
    {
      v141 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "contextId";
    sub_10000F688(&string, &v141, &v142);
    xpc_release(v142);
    v142 = 0;
    xpc_release(v141);
    v141 = 0;
    v139 = xpc_int64_create(a7);
    if (!v139)
    {
      v139 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "contextType";
    sub_10000F688(&string, &v139, &v140);
    xpc_release(v140);
    v140 = 0;
    xpc_release(v139);
    v139 = 0;
    if (a8[23] < 0)
    {
      a8 = *a8;
    }

    v137 = xpc_string_create(a8);
    if (!v137)
    {
      v137 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "csiError";
    sub_10000F688(&string, &v137, &v138);
    xpc_release(v138);
    v138 = 0;
    xpc_release(v137);
    v137 = 0;
    v135 = xpc_int64_create(value);
    if (!v135)
    {
      v135 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "ipFamily";
    sub_10000F688(&string, &v135, &v136);
    xpc_release(v136);
    v136 = 0;
    xpc_release(v135);
    v135 = 0;
    v133 = xpc_int64_create(HIDWORD(value));
    if (!v133)
    {
      v133 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "rat";
    sub_10000F688(&string, &v133, &v134);
    xpc_release(v134);
    v134 = 0;
    xpc_release(v133);
    v133 = 0;
    v131 = xpc_int64_create(a10);
    if (!v131)
    {
      v131 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "requestedIpFamily";
    sub_10000F688(&string, &v131, &v132);
    xpc_release(v132);
    v132 = 0;
    xpc_release(v131);
    v131 = 0;
    v129 = xpc_int64_create(SHIDWORD(a10));
    if (!v129)
    {
      v129 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "result";
    sub_10000F688(&string, &v129, &v130);
    xpc_release(v130);
    v130 = 0;
    xpc_release(v129);
    v129 = 0;
    v38 = subscriber::simSlotAsInstance();
    v127 = xpc_int64_create(v38);
    if (!v127)
    {
      v127 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "subs_id";
    sub_10000F688(&string, &v127, &v128);
    xpc_release(v128);
    v128 = 0;
    xpc_release(v127);
    v127 = 0;
    v125 = xpc_BOOL_create(a12);
    if (!v125)
    {
      v125 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "success";
    sub_10000F688(&string, &v125, &v126);
    xpc_release(v126);
    v126 = 0;
    xpc_release(v125);
    v125 = 0;
    v123 = xpc_int64_create(a13);
    if (!v123)
    {
      v123 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "transportType";
    sub_10000F688(&string, &v123, &v124);
    xpc_release(v124);
    v124 = 0;
    xpc_release(v123);
    v39 = a14;
    v123 = 0;
    if (*(a14 + 23) < 0)
    {
      v39 = *a14;
    }

    v121 = xpc_string_create(v39);
    if (!v121)
    {
      v121 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "wdsReason";
    sub_10000F688(&string, &v121, &v122);
    xpc_release(v122);
    v122 = 0;
    xpc_release(v121);
    v40 = a15;
    v121 = 0;
    if (*(a15 + 23) < 0)
    {
      v40 = *a15;
    }

    v119 = xpc_string_create(v40);
    if (!v119)
    {
      v119 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "wdsReasonType";
    sub_10000F688(&string, &v119, &v120);
    xpc_release(v120);
    v120 = 0;
    xpc_release(v119);
    v119 = 0;
    v117 = xpc_int64_create(a16);
    if (!v117)
    {
      v117 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "epdgIpFamily";
    sub_10000F688(&string, &v117, &v118);
    xpc_release(v118);
    v118 = 0;
    xpc_release(v117);
    v117 = 0;
    v41 = isSliceMask(a5);
    v115 = xpc_BOOL_create(v41);
    if (!v115)
    {
      v115 = xpc_null_create();
    }

    *&string = &v151;
    *(&string + 1) = "nwslice";
    sub_10000F688(&string, &v115, &v116);
    xpc_release(v116);
    v116 = 0;
    xpc_release(v115);
    v115 = 0;
    if (!v41)
    {
      goto LABEL_178;
    }

    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    string = 0u;
    v106 = 0u;
    v42 = Registry::getServiceMap(*(a1 + 64));
    v43 = v42;
    if (v44 < 0)
    {
      v45 = (v44 & 0x7FFFFFFFFFFFFFFFLL);
      v46 = 5381;
      do
      {
        v44 = v46;
        v47 = *v45++;
        v46 = (33 * v46) ^ v47;
      }

      while (v47);
    }

    std::mutex::lock(v42);
    *buf = v44;
    v48 = sub_100009510(&v43[1].__m_.__sig, buf);
    if (v48)
    {
      v49 = v48[3];
      v50 = v48[4];
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v43);
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        v51 = v50;
        sub_100004A34(v50);
        v52 = 0;
        if (!v49)
        {
          goto LABEL_80;
        }

        goto LABEL_75;
      }
    }

    else
    {
      v49 = 0;
    }

    std::mutex::unlock(v43);
    v51 = 0;
    v52 = 1;
    if (!v49)
    {
      goto LABEL_80;
    }

LABEL_75:
    v53 = (*(*v49 + 904))(v49);
    if (v53)
    {
      v54 = 28;
      do
      {
        if ((ConnectionTypeToMask() & a5) != 0)
        {
          v55 = (*(*v53 + 80))(v53, a11, v54);
          (*(*v53 + 136))(v53, a11, v55, &string);
        }

        v54 = (v54 + 1);
      }

      while (v54 != 36);
    }

LABEL_80:
    if (SBYTE7(v106) < 0)
    {
      if (*(&string + 1))
      {
        v56 = string;
LABEL_85:
        v103 = xpc_string_create(v56);
        if (!v103)
        {
          v103 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "bundleid";
        sub_10000F688(buf, &v103, &v104);
        xpc_release(v104);
        v104 = 0;
        xpc_release(v103);
        v103 = 0;
        if (DWORD2(v106))
        {
          v101 = xpc_int64_create(DWORD2(v106));
          if (!v101)
          {
            v101 = xpc_null_create();
          }

          *buf = &v151;
          *&buf[8] = "trafficClass";
          sub_10000F688(buf, &v101, &v102);
          xpc_release(v102);
          v102 = 0;
          xpc_release(v101);
          v101 = 0;
        }

        if (SBYTE7(v108) < 0)
        {
          if (!*(&v107 + 1))
          {
            goto LABEL_102;
          }

          v57 = v107;
        }

        else
        {
          v57 = &v107;
          if (!BYTE7(v108))
          {
            goto LABEL_102;
          }
        }

        v99 = xpc_string_create(v57);
        if (!v99)
        {
          v99 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "dnn";
        sub_10000F688(buf, &v99, &v100);
        xpc_release(v100);
        v100 = 0;
        xpc_release(v99);
        v99 = 0;
LABEL_102:
        if (SHIBYTE(v109) < 0)
        {
          if (!v109)
          {
            goto LABEL_110;
          }

          v61 = *(&v108 + 1);
        }

        else
        {
          v61 = &v108 + 8;
          if (!HIBYTE(v109))
          {
            goto LABEL_110;
          }
        }

        v97 = xpc_string_create(v61);
        if (!v97)
        {
          v97 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "genres";
        sub_10000F688(buf, &v97, &v98);
        xpc_release(v98);
        v98 = 0;
        xpc_release(v97);
        v97 = 0;
LABEL_110:
        if (SBYTE7(v111) < 0)
        {
          if (!*(&v110 + 1))
          {
            goto LABEL_118;
          }

          v62 = v110;
        }

        else
        {
          v62 = &v110;
          if (!BYTE7(v111))
          {
            goto LABEL_118;
          }
        }

        v95 = xpc_string_create(v62);
        if (!v95)
        {
          v95 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "sliceTrafficInfo";
        sub_10000F688(buf, &v95, &v96);
        xpc_release(v96);
        v96 = 0;
        xpc_release(v95);
        v95 = 0;
LABEL_118:
        v93 = xpc_BOOL_create(SBYTE8(v111));
        if (!v93)
        {
          v93 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "is_vpn_active";
        sub_10000F688(buf, &v93, &v94);
        xpc_release(v94);
        v94 = 0;
        xpc_release(v93);
        v93 = 0;
        v91 = xpc_BOOL_create(SBYTE9(v111));
        if (!v91)
        {
          v91 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "is_app_using_ids";
        sub_10000F688(buf, &v91, &v92);
        xpc_release(v92);
        v92 = 0;
        xpc_release(v91);
        v91 = 0;
        if (SBYTE7(v113) < 0)
        {
          if (!*(&v112 + 1))
          {
            goto LABEL_130;
          }

          v63 = v112;
        }

        else
        {
          v63 = &v112;
          if (!BYTE7(v113))
          {
            goto LABEL_130;
          }
        }

        v89 = xpc_string_create(v63);
        if (!v89)
        {
          v89 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "slicing_type";
        sub_10000F688(buf, &v89, &v90);
        xpc_release(v90);
        v90 = 0;
        xpc_release(v89);
        v89 = 0;
LABEL_130:
        v64 = &v113 + 8;
        if (SHIBYTE(v114) < 0)
        {
          if (!v114)
          {
LABEL_138:
            if (!a7)
            {
              v86[11] = 0;
              v86[12] = 0;
              sub_100338A90();
            }

            v65 = a4;
            v66 = *(a1 + 40);
            v67 = os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT);
            v60 = 0;
            if (v67)
            {
              v79 = v52;
              v80 = v51;
              v82 = v32;
              v85 = v31;
              v68 = asStringBool(1);
              if ((SBYTE7(v106) & 0x80u) == 0)
              {
                p_string = &string;
              }

              else
              {
                p_string = string;
              }

              if ((SBYTE7(v108) & 0x80u) == 0)
              {
                v70 = &v107;
              }

              else
              {
                v70 = v107;
              }

              if (*(v65 + 23) < 0)
              {
                v71 = *v65;
              }

              else
              {
                v71 = v65;
              }

              v72 = DWORD2(v106);
              if (v109 >= 0)
              {
                v73 = &v108 + 8;
              }

              else
              {
                v73 = *(&v108 + 1);
              }

              if ((SBYTE7(v111) & 0x80u) == 0)
              {
                v74 = &v110;
              }

              else
              {
                v74 = v110;
              }

              v75 = asStringBool(SBYTE8(v111));
              v76 = asStringBool(SBYTE9(v111));
              v77 = &v112;
              if (SBYTE7(v113) < 0)
              {
                v77 = v112;
              }

              v78 = &v113 + 8;
              if (v114 < 0)
              {
                v78 = *(&v113 + 1);
              }

              *buf = 136318210;
              *&buf[4] = v68;
              *&buf[12] = 2080;
              *&buf[14] = p_string;
              v153 = 1024;
              v154 = v72;
              v155 = 2080;
              v156 = v70;
              v157 = 2080;
              v158 = v71;
              v159 = 2080;
              v160 = v73;
              v161 = 2080;
              v162 = v74;
              v163 = 2080;
              v164 = v75;
              v165 = 2080;
              v166 = v76;
              v167 = 2080;
              v168 = v77;
              v169 = 2080;
              v170 = v78;
              v171 = 1024;
              v172 = 255;
              v173 = 1024;
              v174 = 0xFFFFFF;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I submitCoreAnalyticsCCPDPContextActEndMetric for 5G Slice: nwslice=%s bundleid=%s tc=%u dnn=%s apn=%s genres=%s sliceTrafficInfo=%s isVpnActive=%s isAppUsingIds=%s slicingType=%s managedSliceType=%s snssai_sst=%u snssai_sd=%u", buf, 0x78u);
              v60 = 0;
              v31 = v85;
              v32 = v82;
              v51 = v80;
              v52 = v79;
            }

            goto LABEL_162;
          }

          v64 = *(&v113 + 1);
        }

        else if (!HIBYTE(v114))
        {
          goto LABEL_138;
        }

        v87 = xpc_string_create(v64);
        if (!v87)
        {
          v87 = xpc_null_create();
        }

        *buf = &v151;
        *&buf[8] = "managed_slice_type";
        sub_10000F688(buf, &v87, &v88);
        xpc_release(v88);
        v88 = 0;
        xpc_release(v87);
        v87 = 0;
        goto LABEL_138;
      }
    }

    else if (BYTE7(v106))
    {
      v56 = &string;
      goto LABEL_85;
    }

    v58 = v31;
    v59 = *(a1 + 40);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I submitCoreAnalyticsCCPDPContextActEndMetric for 5G Slice: cancel metrics for pending slice activation", buf, 2u);
    }

    v60 = 1;
    v31 = v58;
LABEL_162:
    if ((v52 & 1) == 0)
    {
      sub_100004A34(v51);
    }

    if (SHIBYTE(v114) < 0)
    {
      operator delete(*(&v113 + 1));
    }

    if (SBYTE7(v113) < 0)
    {
      operator delete(v112);
    }

    if (SBYTE7(v111) < 0)
    {
      operator delete(v110);
    }

    if (SHIBYTE(v109) < 0)
    {
      operator delete(*(&v108 + 1));
    }

    if (SBYTE7(v108) < 0)
    {
      operator delete(v107);
    }

    if (SBYTE7(v106) < 0)
    {
      operator delete(string);
      if (v60)
      {
        goto LABEL_176;
      }
    }

    else if (v60)
    {
LABEL_176:
      xpc_release(v151);
LABEL_182:
      v33 = v83;
      goto LABEL_183;
    }

LABEL_178:
    v86[0] = v151;
    if (v151)
    {
      xpc_retain(v151);
    }

    else
    {
      v86[0] = xpc_null_create();
    }

    (*(*v32 + 16))(v32, "metricCCPDPContextActEnd", v86);
    xpc_release(v86[0]);
    v86[0] = 0;
    xpc_release(v151);
    goto LABEL_182;
  }

  v81 = v29[3];
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v24);
  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = a2;
  v32 = v81;
  sub_100004A34(v31);
  v33 = 0;
  if (v81)
  {
    goto LABEL_11;
  }

LABEL_183:
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v31);
  }
}