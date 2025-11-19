uint64_t sub_101138DBC(uint64_t result)
{
  if ((*(result + 179) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cancelling receipts procedure with failure", buf, 2u);
    }

    v3 = *(v1 + 112);
    if (v3)
    {
      v4[0] = 0;
      v5 = 0;
      return sub_101148324(v3, v4, 1);
    }

    else
    {
      result = sub_101138C24(v1, 0);
      *(v1 + 178) = 0;
    }
  }

  return result;
}

void sub_101138E60(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101138FE4;
        v13[3] = &unk_101F10EA8;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101149088;
        block[3] = &unk_101F11278;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101138FE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 == 2)
  {
    if (*(a1 + 48) == 3 && (v8 = *(v2 + 176), v8 <= 2))
    {
      *(v2 + 176) = v8 + 1;
      v9 = *(v2 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = asString();
        v11 = *(v2 + 176);
        LODWORD(buf[0]) = 136315394;
        *(buf + 4) = v10;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I List notification failed with temporary error %s; retrying (retry #%d)", buf, 0x12u);
      }

      sub_101148C60(*(v2 + 112), buf, 1);
    }

    else
    {
      v12 = *(v2 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 136315138;
        *(buf + 4) = asString();
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "List notification failed with final error %s; aborting", buf, 0xCu);
      }

      v13 = *(v2 + 112);
      LOBYTE(buf[0]) = 0;
      DWORD1(buf[0]) = 0;
      sub_101148324(v13, buf, 1);
      v14 = *(a1 + 40);
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v41 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v41);
      }

      if (*(a1 + 48) == 2)
      {
        v15 = *(v2 + 180);
        v16 = *(a1 + 49);
        v17 = *(a1 + 50);
        *&buf[0] = _NSConcreteStackBlock;
        *(&buf[0] + 1) = 0x40000000;
        *&buf[1] = sub_100F6E440;
        *(&buf[1] + 1) = &unk_101EF6088;
        *&v61 = v15 | 0x700000000;
        *(&v61 + 1) = __PAIR64__(v17, v16);
        sub_100F6E294(0x800F1);
      }
    }

    return;
  }

  if (v3 != 1)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v40);
  }

  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_100034C50(&v49, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
  v4 = sub_101101278(&v49);
  v5 = v4;
  if (v4)
  {
    if (v4 == 9)
    {
      goto LABEL_69;
    }

    v6 = *(v2 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I List notification response failure", buf, 2u);
    }

    sub_1011389AC(v2, "ListNotificationRsp");
    v7 = *(v2 + 112);
    LOBYTE(buf[0]) = 0;
    DWORD1(buf[0]) = v5;
    sub_101148324(v7, buf, 1);
    goto LABEL_70;
  }

  if (*(v2 + 232) == *(v2 + 224))
  {
    goto LABEL_69;
  }

  sub_1011389AC(v2, "ListNotificationRsp");
  v46 = 0;
  v47 = 0;
  v48 = 0;
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
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(**(v2 + 208) + 24))(*(v2 + 208), &v46);
  if (v46 != v47)
  {
    __p = 0;
    v44 = 0;
    v45 = 0;
    sub_100034C50(&__p, v46, v47, v47 - v46);
    v18 = sub_1010FEA74(&__p, v2 + 328);
    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (v18)
    {
      std::string::operator=((v2 + 304), &buf[1]);
    }
  }

  v19 = *(v2 + 224);
  v20 = *(v2 + 232);
  v21 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v20 - v19) >> 4));
  if (v20 == v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  sub_10113A900(v19, v20, v22, 1);
  v23 = *(v2 + 224);
  v24 = *(v2 + 232);
  if (v24 == v23)
  {
    goto LABEL_65;
  }

  v25 = *(v2 + 224);
  v42 = v2;
  do
  {
    if (v23 == v24)
    {
      goto LABEL_61;
    }

    v26 = v23 + 32;
    v25 = v23;
    do
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v27 = v26 - 32;
      sub_100034C50(&v52, *(v26 - 32), *(v26 - 24), *(v26 - 24) - *(v26 - 32));
      if (*(v26 + 15) < 0)
      {
        sub_100005F2C(&v55, *(v26 - 8), *v26);
      }

      else
      {
        v28 = *(v26 - 8);
        v56 = *(v26 + 8);
        v55 = v28;
      }

      if (*(v26 + 39) < 0)
      {
        sub_100005F2C(&v57, *(v26 + 16), *(v26 + 24));
      }

      else
      {
        v29 = *(v26 + 16);
        v58 = *(v26 + 32);
        v57 = v29;
      }

      v59 = *(v26 + 40);
      v30 = HIBYTE(v56);
      if (v56 >= 0)
      {
        v31 = HIBYTE(v56);
      }

      else
      {
        v31 = *(&v55 + 1);
      }

      v32 = *(v23 + 47);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v23 + 32);
      }

      if (v31 == v32)
      {
        if (v56 >= 0)
        {
          v34 = &v55;
        }

        else
        {
          v34 = v55;
        }

        if (v33 >= 0)
        {
          v35 = (v23 + 24);
        }

        else
        {
          v35 = *(v23 + 24);
        }

        v36 = memcmp(v34, v35, v31) == 0;
      }

      else
      {
        v36 = 0;
      }

      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57);
        if ((v56 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else if ((v30 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      operator delete(v55);
LABEL_53:
      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      if (!v36)
      {
        goto LABEL_60;
      }

      v25 += 80;
      v26 += 80;
    }

    while (v27 + 80 != v24);
    v25 = v24;
LABEL_60:
    v2 = v42;
LABEL_61:
    v37 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v25 - v23) >> 4));
    if (v25 == v23)
    {
      v38 = 0;
    }

    else
    {
      v38 = v37;
    }

    sub_101140688(v23, v25, v38, 1);
    v24 = *(v2 + 232);
    v23 = v25;
  }

  while (v24 != v25);
LABEL_65:
  if (*(&v72 + 1))
  {
    *&v73 = *(&v72 + 1);
    operator delete(*(&v72 + 1));
  }

  sub_100E3A5D4(buf);
  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

LABEL_69:
  sub_1011488C0(*(v2 + 112), buf, 1);
LABEL_70:
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }
}

void sub_101139638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10121354C(&a32);
  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1011396E8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(exception);
      v5 = &ctu::ResultIsNotError::~ResultIsNotError;
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      v5 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    }

    __cxa_throw(exception, v4, v5);
  }

  return a1 + 8;
}

void sub_101139794(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      *(a1 + 56) = v2;
      operator delete(v2);
    }
  }

  *(a1 + 40) = 0;
}

uint64_t sub_1011397D4(uint64_t result, uint64_t a2)
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

void sub_1011397F0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101139800(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_101139984;
        v13[3] = &unk_101F10F08;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101149088;
        block[3] = &unk_101F11278;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101139984(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = *(v4 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56) - *(a1 + 48);
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Got receipt data with %lu bytes", buf, 0xCu);
      v7 = *(a1 + 40);
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v24 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v24);
        }

        v26 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v26);
      }
    }

    memset(buf, 0, sizeof(buf));
    sub_100034C50(buf, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
    sub_1011389AC(v4, "GetNotificationRsp");
    if (sub_101101E50(buf, (v4 + 256)))
    {
      v8 = *(v4 + 72);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Could not decode get notification - skipping one", v27, 2u);
      }

      ++*(v4 + 248);
      sub_1011490C4(*(v4 + 112), v27, 1);
    }

    else
    {
      std::string::operator=((v4 + 280), (*(v4 + 224) + 80 * *(v4 + 248) + 24));
      sub_101149654(*(v4 + 112), v27, 1);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    return;
  }

  v9 = *(a1 + 48);
  if (v9 > 3)
  {
    if (v9 != 11 && v9 != 4)
    {
LABEL_29:
      v20 = *(v4 + 72);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_1011396E8(v3);
        *buf = 136315138;
        *&buf[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Get notification failed with final error %s; aborting", buf, 0xCu);
      }

      v21 = *(v4 + 112);
      buf[0] = 0;
      *&buf[4] = 0;
      sub_101148324(v21, buf, 1);
      return;
    }
  }

  else if (v9 != 2)
  {
    if (v9 == 3)
    {
      v10 = *(v4 + 176);
      if (v10 <= 2)
      {
        *(v4 + 176) = v10 + 1;
        v11 = *(v4 + 72);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = asString();
          v13 = *(v4 + 176);
          *buf = 136315394;
          *&buf[4] = v12;
          *&buf[12] = 1024;
          *&buf[14] = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Get notification failed with temporary error %s; retrying (retry #%d)", buf, 0x12u);
        }

        sub_101148C60(*(v4 + 112), buf, 1);
        return;
      }
    }

    goto LABEL_29;
  }

  v15 = *(v4 + 72);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Get notification failed; skipping one", buf, 2u);
  }

  ++*(v4 + 248);
  sub_1011490C4(*(v4 + 112), buf, 1);
  v16 = *v3;
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(v22);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v25);
  }

  if (*(a1 + 48) == 2)
  {
    v17 = *(v4 + 180);
    v18 = *(a1 + 49);
    v19 = *(a1 + 50);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v29 = &unk_101EF6088;
    v30 = v17;
    v31 = 8;
    v32 = v18;
    v33 = v19;
    sub_100F6E294(0x800F1);
  }
}

void sub_101139E88(void *a1, void *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v8 = sub_10172AA80(v5, (v5 + 72), a2, 204, 2, &v29);
        if (v8 == 10)
        {
          __p = 0;
          v27 = 0;
          v28 = 0;
          sub_100034C50(&__p, v29, v30, v30 - v29);
          v24 = *(v5 + 72);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v33 = v27 - __p;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Receipt sent, returned %lu bytes", buf, 0xCu);
          }

          sub_1011389AC(v5, "ReceiptAck");
          sub_1011499EC(*(v5 + 112), buf, 1);
          if (__p)
          {
            v27 = __p;
            operator delete(__p);
          }
        }

        else if (v8 == 2)
        {
          v9 = *(v5 + 224);
          v10 = 0xCCCCCCCCCCCCCCCDLL * ((*(v5 + 232) - v9) >> 4);
          v11 = *(v5 + 248);
          if (v10 > v11)
          {
            v12 = *(v5 + 303);
            if (v12 >= 0)
            {
              v13 = *(v5 + 303);
            }

            else
            {
              v13 = *(v5 + 288);
            }

            v14 = v11 + 1;
            do
            {
              v15 = v9 + 80 * v11;
              v16 = *(v15 + 47);
              v17 = v16;
              if ((v16 & 0x80u) != 0)
              {
                v16 = *(v15 + 32);
              }

              if (v16 != v13)
              {
                break;
              }

              v20 = *(v15 + 24);
              v18 = v15 + 24;
              v19 = v20;
              v21 = (v17 >= 0 ? v18 : v19);
              v22 = v12 >= 0 ? (v5 + 280) : *(v5 + 280);
              if (memcmp(v21, v22, v13))
              {
                break;
              }

              *(v5 + 248) = v14;
              v11 = v14;
            }

            while (v10 > v14++);
          }

          sub_1011490C4(*(v5 + 112), &__p, 1);
        }

        else
        {
          v25 = *(v5 + 112);
          LOBYTE(__p) = v8;
          HIDWORD(__p) = 0;
          sub_101148324(v25, &__p, 1);
        }

        if (v29)
        {
          v30 = v29;
          operator delete(v29);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10113A0D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

void sub_10113A124(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 1174405120;
        v13[2] = sub_10113A2A8;
        v13[3] = &unk_101F10F98;
        v13[4] = v5;
        sub_100F11DD4(v14, a2);
        v8 = v5[6];
        if (!v8 || (v9 = v5[5], (v10 = std::__shared_weak_count::lock(v8)) == 0))
        {
          sub_100013CC4();
        }

        v11 = v10;
        v12 = v5[7];
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_101149088;
        block[3] = &unk_101F11278;
        block[5] = v9;
        v18 = v11;
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        block[4] = v13;
        dispatch_async(v12, block);
        if (v18)
        {
          sub_100004A34(v18);
        }

        sub_100004A34(v11);
        if (v14[0] == 1)
        {
          if (__p)
          {
            v16 = __p;
            operator delete(__p);
          }
        }

        v14[0] = 0;
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10113A2A8(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  v4 = *(a1 + 32);
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = *(v4 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v4 + 248);
      *v46 = 67109120;
      *&v46[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Receipt #%d deleted", v46, 8u);
      v7 = *v3;
      if (v7 != 1)
      {
        if (v7 == 2)
        {
          v42 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsError::ResultIsError(v42);
        }

        v45 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v45);
      }
    }

    sub_1011389AC(v4, "DeleteNotificationRsp");
    v8 = *(a1 + 40);
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v39);
      }

      v43 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v43);
    }

    if (sub_1011023B0(a1 + 48))
    {
      v9 = *(v4 + 72);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E Decoding failed - continuing anyways", v46, 2u);
      }
    }

    ++*(v4 + 248);
    return sub_101149D18(*(v4 + 112), v46, 1);
  }

  v11 = *(a1 + 48);
  if (v11 > 3)
  {
    if (v11 != 11 && v11 != 4)
    {
LABEL_43:
      v37 = *(v4 + 72);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1011396E8(v3);
        *v46 = 136315138;
        *&v46[4] = asString();
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "Receipt deletion failed with final error %s; aborting", v46, 0xCu);
      }

      v38 = *(v4 + 112);
      v46[0] = 0;
      *&v46[4] = 0;
      return sub_101148324(v38, v46, 1);
    }
  }

  else if (v11 != 2)
  {
    if (v11 == 3)
    {
      v12 = *(v4 + 176);
      if (v12 <= 2)
      {
        *(v4 + 176) = v12 + 1;
        v13 = *(v4 + 72);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = asString();
          v15 = *(v4 + 176);
          *v46 = 136315394;
          *&v46[4] = v14;
          *&v46[12] = 1024;
          *&v46[14] = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Receipt deletion failed with temporary error %s; retrying (retry #%d)", v46, 0x12u);
        }

        return sub_101148C60(*(v4 + 112), v46, 1);
      }
    }

    goto LABEL_43;
  }

  v17 = *(v4 + 72);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E Receipt deletion failed skipping this receipt", v46, 2u);
  }

  v18 = *(v4 + 224);
  v19 = 0xCCCCCCCCCCCCCCCDLL * ((*(v4 + 232) - v18) >> 4);
  v20 = *(v4 + 248);
  if (v19 > v20)
  {
    v21 = *(v4 + 303);
    if (v21 >= 0)
    {
      v22 = *(v4 + 303);
    }

    else
    {
      v22 = *(v4 + 288);
    }

    v23 = v20 + 1;
    do
    {
      v24 = v18 + 80 * v20;
      v25 = *(v24 + 47);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 32);
      }

      if (v25 != v22)
      {
        break;
      }

      v29 = *(v24 + 24);
      v27 = v24 + 24;
      v28 = v29;
      v30 = (v26 >= 0 ? v27 : v28);
      v31 = v21 >= 0 ? (v4 + 280) : *(v4 + 280);
      if (memcmp(v30, v31, v22))
      {
        break;
      }

      *(v4 + 248) = v23;
      v20 = v23;
    }

    while (v19 > v23++);
  }

  result = sub_1011490C4(*(v4 + 112), v46, 1);
  v33 = *v3;
  if (v33 != 2)
  {
    if (v33 == 1)
    {
      v40 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsNotError::ResultIsNotError(v40);
    }

    v44 = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(v44);
  }

  if (*(a1 + 48) == 2)
  {
    v34 = *(v4 + 180);
    v35 = *(a1 + 49);
    v36 = *(a1 + 50);
    *v46 = _NSConcreteStackBlock;
    *&v46[8] = 0x40000000;
    *&v46[16] = sub_100F6E440;
    v47 = &unk_101EF6088;
    v48 = v34;
    v49 = 9;
    v50 = v35;
    v51 = v36;
    return sub_100F6E294(0x800F1);
  }

  return result;
}

void sub_10113A858(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_101138B08(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_10113A8AC(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10113A900(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  while (2)
  {
    v196 = a2 - 80;
    v193 = a2 - 240;
    v194 = a2 - 160;
    v6 = a1;
    v198 = a2;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = a2 - v6;
          v8 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v6) >> 4);
          a1 = v6;
          if (v8 > 2)
          {
            v9 = v6;
            switch(v8)
            {
              case 3uLL:
                sub_10113D7D8(v6, v6 + 80, v196);
                return;
              case 4uLL:
                sub_10113E16C(v6, v6 + 80, v6 + 160, v196);
                return;
              case 5uLL:
                sub_10113E75C(v6, v6 + 80, v6 + 160, v6 + 240, v196);
                return;
            }
          }

          else
          {
            if (v8 < 2)
            {
              return;
            }

            v9 = v6;
            if (v8 == 2)
            {
              v232 = 0;
              v233 = 0;
              v234 = 0;
              sub_100034C50(&v232, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
              if (*(a2 - 33) < 0)
              {
                sub_100005F2C(&v235, *(a2 - 56), *(a2 - 48));
              }

              else
              {
                v64 = *(a2 - 56);
                v236 = *(a2 - 40);
                v235 = v64;
              }

              if (*(a2 - 9) < 0)
              {
                sub_100005F2C(&v237, *(a2 - 32), *(a2 - 24));
              }

              else
              {
                v189 = *(a2 - 32);
                v238 = *(a2 - 16);
                v237 = v189;
              }

              v239 = *(a2 - 8);
              v225 = 0;
              v226 = 0;
              v224 = 0;
              sub_100034C50(&v224, *v6, *(v6 + 8), *(v6 + 8) - *v6);
              if (*(v6 + 47) < 0)
              {
                sub_100005F2C(&v227, *(v6 + 24), *(v6 + 32));
              }

              else
              {
                v190 = *(v6 + 24);
                v228 = *(v6 + 40);
                v227 = v190;
              }

              if (*(v6 + 71) < 0)
              {
                sub_100005F2C(&v229, *(v6 + 48), *(v6 + 56));
              }

              else
              {
                v191 = *(v6 + 48);
                v230 = *(v6 + 64);
                v229 = v191;
              }

              v231 = *(v6 + 72);
              v192 = sub_1000068BC(&v235, &v227);
              if (SHIBYTE(v230) < 0)
              {
                operator delete(v229);
              }

              if (SHIBYTE(v228) < 0)
              {
                operator delete(v227);
              }

              if (v224)
              {
                v225 = v224;
                operator delete(v224);
              }

              if (SHIBYTE(v238) < 0)
              {
                operator delete(v237);
              }

              if (SHIBYTE(v236) < 0)
              {
                operator delete(v235);
              }

              if (v232)
              {
                v233 = v232;
                operator delete(v232);
              }

              if (v192 < 0)
              {
                sub_1011404EC(v6, a2 - 80);
              }

              return;
            }
          }

          if (v7 <= 1919)
          {
            if (a4)
            {
              if (v9 != a2)
              {
                v65 = v9 + 80;
                if (v9 + 80 != a2)
                {
                  v66 = 0;
                  v67 = v9;
                  do
                  {
                    v68 = v65;
                    v317 = 0uLL;
                    v318 = 0;
                    sub_100034C50(&v317, *(v67 + 80), *(v67 + 88), *(v67 + 88) - *(v67 + 80));
                    if (*(v67 + 127) < 0)
                    {
                      sub_100005F2C(&v319, *(v67 + 104), *(v67 + 112));
                    }

                    else
                    {
                      v319 = *(v67 + 104);
                      v320 = *(v67 + 120);
                    }

                    if (*(v67 + 151) < 0)
                    {
                      sub_100005F2C(&v321, *(v67 + 128), *(v67 + 136));
                    }

                    else
                    {
                      v321 = *(v67 + 128);
                      v322 = *(v67 + 144);
                    }

                    LOWORD(v323) = *(v67 + 152);
                    v310 = 0;
                    v311 = 0;
                    v309 = 0;
                    sub_100034C50(&v309, *v67, *(v67 + 8), *(v67 + 8) - *v67);
                    if (*(v67 + 47) < 0)
                    {
                      sub_100005F2C(&v312, *(v67 + 24), *(v67 + 32));
                    }

                    else
                    {
                      v69 = *(v67 + 24);
                      v313 = *(v67 + 40);
                      v312 = v69;
                    }

                    if (*(v67 + 71) < 0)
                    {
                      sub_100005F2C(&v314, *(v67 + 48), *(v67 + 56));
                    }

                    else
                    {
                      v70 = *(v67 + 48);
                      v315 = *(v67 + 64);
                      v314 = v70;
                    }

                    v316 = *(v67 + 72);
                    v71 = sub_1000068BC(&v319, &v312);
                    if (SHIBYTE(v315) < 0)
                    {
                      operator delete(v314);
                    }

                    if (SHIBYTE(v313) < 0)
                    {
                      operator delete(v312);
                    }

                    if (v309)
                    {
                      v310 = v309;
                      operator delete(v309);
                    }

                    if (SHIBYTE(v322) < 0)
                    {
                      operator delete(v321);
                    }

                    if (SHIBYTE(v320) < 0)
                    {
                      operator delete(v319);
                    }

                    if (v317)
                    {
                      *(&v317 + 1) = v317;
                      operator delete(v317);
                    }

                    if (v71 < 0)
                    {
                      v308 = 0;
                      *v302 = *v68;
                      v303 = *(v67 + 96);
                      *v68 = 0;
                      *(v68 + 8) = 0;
                      *(v68 + 16) = 0;
                      __src = *(v67 + 104);
                      v305 = *(v67 + 120);
                      *(v67 + 104) = 0;
                      *(v67 + 112) = 0;
                      v306 = *(v67 + 128);
                      v307 = *(v67 + 144);
                      *(v67 + 120) = 0;
                      *(v67 + 128) = 0;
                      *(v67 + 136) = 0;
                      *(v67 + 144) = 0;
                      v72 = v66;
                      LOWORD(v308) = *(v67 + 152);
                      while (1)
                      {
                        v73 = a1 + v72;
                        sub_100015184(a1 + v72 + 80, (a1 + v72));
                        if (*(a1 + v72 + 127) < 0)
                        {
                          operator delete(*(v73 + 104));
                        }

                        *(v73 + 104) = *(v73 + 24);
                        *(v73 + 120) = *(v73 + 40);
                        *(v73 + 47) = 0;
                        *(v73 + 24) = 0;
                        if (*(v73 + 151) < 0)
                        {
                          operator delete(*(v73 + 128));
                        }

                        v74 = a1 + v72;
                        *(v73 + 128) = *(a1 + v72 + 48);
                        *(v73 + 144) = *(a1 + v72 + 64);
                        *(v74 + 71) = 0;
                        *(v74 + 48) = 0;
                        *(v74 + 152) = *(a1 + v72 + 72);
                        if (!v72)
                        {
                          v81 = a1;
                          goto LABEL_272;
                        }

                        v295 = 0;
                        v294 = 0;
                        v296 = 0;
                        sub_100034C50(&v294, v302[0], v302[1], v302[1] - v302[0]);
                        if (SHIBYTE(v305) < 0)
                        {
                          sub_100005F2C(&v297, __src, *(&__src + 1));
                        }

                        else
                        {
                          v297 = __src;
                          v298 = v305;
                        }

                        if (SHIBYTE(v307) < 0)
                        {
                          sub_100005F2C(&v299, v306, *(&v306 + 1));
                        }

                        else
                        {
                          v299 = v306;
                          v300 = v307;
                        }

                        v301 = v308;
                        v75 = a1 + v72;
                        v288 = 0;
                        v287[0] = 0;
                        v287[1] = 0;
                        sub_100034C50(v287, *(v75 - 80), *(v75 - 72), *(v75 - 72) - *(v75 - 80));
                        v76 = (a1 + v72 - 56);
                        if (*(a1 + v72 - 33) < 0)
                        {
                          v78 = a1;
                          sub_100005F2C(&v289, *v76, *(a1 + v72 - 48));
                        }

                        else
                        {
                          v77 = *v76;
                          v290 = *(v75 - 40);
                          v289 = v77;
                          v78 = a1;
                        }

                        v79 = (v78 + v72 - 32);
                        if (*(v78 + v72 - 9) < 0)
                        {
                          sub_100005F2C(&v291, *v79, *(v78 + v72 - 24));
                        }

                        else
                        {
                          v80 = *v79;
                          v292 = *(v78 + v72 - 16);
                          v291 = v80;
                        }

                        LOWORD(v293) = *(v78 + v72 - 8);
                        LOBYTE(v78) = sub_1000068BC(&v297, &v289);
                        if (SHIBYTE(v292) < 0)
                        {
                          operator delete(v291);
                        }

                        if (SHIBYTE(v290) < 0)
                        {
                          operator delete(v289);
                        }

                        if (v287[0])
                        {
                          v287[1] = v287[0];
                          operator delete(v287[0]);
                        }

                        if (SHIBYTE(v300) < 0)
                        {
                          operator delete(v299);
                        }

                        if (SHIBYTE(v298) < 0)
                        {
                          operator delete(v297);
                        }

                        LODWORD(v78) = v78;
                        if (v294)
                        {
                          v295 = v294;
                          operator delete(v294);
                        }

                        if ((v78 & 0x80000000) == 0)
                        {
                          break;
                        }

                        v72 -= 80;
                      }

                      v81 = a1 + v72;
LABEL_272:
                      v82 = *v81;
                      a2 = v198;
                      if (*v81)
                      {
                        *(v81 + 8) = v82;
                        operator delete(v82);
                        *v81 = 0;
                        *(v81 + 8) = 0;
                        *(v81 + 16) = 0;
                      }

                      *v81 = *v302;
                      *(v81 + 16) = v303;
                      v302[1] = 0;
                      v302[0] = 0;
                      v303 = 0;
                      if (*(v81 + 47) < 0)
                      {
                        operator delete(*(v74 + 24));
                      }

                      v83 = __src;
                      *(v74 + 40) = v305;
                      *(v74 + 24) = v83;
                      HIBYTE(v305) = 0;
                      LOBYTE(__src) = 0;
                      if (*(v81 + 71) < 0)
                      {
                        operator delete(*(v74 + 48));
                      }

                      v84 = v306;
                      *(v74 + 64) = v307;
                      *(v74 + 48) = v84;
                      *(v81 + 72) = v308;
                    }

                    v65 = v68 + 80;
                    v66 += 80;
                    v67 = v68;
                  }

                  while (v68 + 80 != a2);
                }
              }
            }

            else if (v9 != a2)
            {
              v172 = v9 + 80;
              if (v9 + 80 != a2)
              {
                v173 = (v9 + 152);
                do
                {
                  v174 = v172;
                  v317 = 0uLL;
                  v318 = 0;
                  sub_100034C50(&v317, *(v9 + 80), *(v9 + 88), *(v9 + 88) - *(v9 + 80));
                  if (*(v9 + 127) < 0)
                  {
                    sub_100005F2C(&v319, *(v9 + 104), *(v9 + 112));
                  }

                  else
                  {
                    v319 = *(v9 + 104);
                    v320 = *(v9 + 120);
                  }

                  if (*(v9 + 151) < 0)
                  {
                    sub_100005F2C(&v321, *(v9 + 128), *(v9 + 136));
                  }

                  else
                  {
                    v321 = *(v9 + 128);
                    v322 = *(v9 + 144);
                  }

                  LOWORD(v323) = *(v9 + 152);
                  v310 = 0;
                  v311 = 0;
                  v309 = 0;
                  sub_100034C50(&v309, *v9, *(v9 + 8), *(v9 + 8) - *v9);
                  if (*(v9 + 47) < 0)
                  {
                    sub_100005F2C(&v312, *(v9 + 24), *(v9 + 32));
                  }

                  else
                  {
                    v175 = *(v9 + 24);
                    v313 = *(v9 + 40);
                    v312 = v175;
                  }

                  if (*(v9 + 71) < 0)
                  {
                    sub_100005F2C(&v314, *(v9 + 48), *(v9 + 56));
                  }

                  else
                  {
                    v176 = *(v9 + 48);
                    v315 = *(v9 + 64);
                    v314 = v176;
                  }

                  v177 = v9;
                  v316 = *(v9 + 72);
                  v178 = sub_1000068BC(&v319, &v312);
                  if (SHIBYTE(v315) < 0)
                  {
                    operator delete(v314);
                  }

                  if (SHIBYTE(v313) < 0)
                  {
                    operator delete(v312);
                  }

                  if (v309)
                  {
                    v310 = v309;
                    operator delete(v309);
                  }

                  if (SHIBYTE(v322) < 0)
                  {
                    operator delete(v321);
                  }

                  if (SHIBYTE(v320) < 0)
                  {
                    operator delete(v319);
                  }

                  if (v317)
                  {
                    *(&v317 + 1) = v317;
                    operator delete(v317);
                  }

                  if (v178 < 0)
                  {
                    v308 = 0;
                    *v302 = *v174;
                    v303 = *(v177 + 96);
                    *v174 = 0;
                    *(v174 + 8) = 0;
                    *(v174 + 16) = 0;
                    __src = *(v177 + 104);
                    v305 = *(v177 + 120);
                    *(v177 + 104) = 0;
                    *(v177 + 112) = 0;
                    v306 = *(v177 + 128);
                    v307 = *(v177 + 144);
                    *(v177 + 120) = 0;
                    *(v177 + 128) = 0;
                    *(v177 + 136) = 0;
                    *(v177 + 144) = 0;
                    v179 = v173;
                    LOWORD(v308) = *(v177 + 152);
                    do
                    {
                      sub_100015184((v179 - 36), (v179 - 76));
                      v180 = (v179 - 24);
                      if (*(v179 - 25) < 0)
                      {
                        operator delete(*v180);
                      }

                      *v180 = *(v179 - 8);
                      *(v179 - 4) = *(v179 - 14);
                      *(v179 - 105) = 0;
                      *(v179 - 128) = 0;
                      v181 = (v179 - 12);
                      if (*(v179 - 1) < 0)
                      {
                        operator delete(*v181);
                      }

                      *v181 = *(v179 - 52);
                      *(v179 - 1) = *(v179 - 11);
                      *(v179 - 81) = 0;
                      *(v179 - 104) = 0;
                      *v179 = *(v179 - 40);
                      v295 = 0;
                      v294 = 0;
                      v296 = 0;
                      v207 = *v302;
                      sub_100034C50(&v294, v302[0], v302[1], v302[1] - v302[0]);
                      if (SHIBYTE(v305) < 0)
                      {
                        sub_100005F2C(&v297, __src, *(&__src + 1));
                      }

                      else
                      {
                        v297 = __src;
                        v298 = v305;
                      }

                      if (SHIBYTE(v307) < 0)
                      {
                        sub_100005F2C(&v299, v306, *(&v306 + 1));
                      }

                      else
                      {
                        v299 = v306;
                        v300 = v307;
                      }

                      v301 = v308;
                      v288 = 0;
                      v287[0] = 0;
                      v287[1] = 0;
                      sub_100034C50(v287, *(v179 - 29), *(v179 - 28), *(v179 - 28) - *(v179 - 29));
                      if (*(v179 - 185) < 0)
                      {
                        sub_100005F2C(&v289, *(v179 - 26), *(v179 - 25));
                      }

                      else
                      {
                        v182 = *(v179 - 13);
                        v290 = *(v179 - 24);
                        v289 = v182;
                      }

                      if (*(v179 - 161) < 0)
                      {
                        sub_100005F2C(&v291, *(v179 - 23), *(v179 - 22));
                      }

                      else
                      {
                        v183 = *(v179 - 92);
                        v292 = *(v179 - 21);
                        v291 = v183;
                      }

                      LOWORD(v293) = *(v179 - 80);
                      v184 = sub_1000068BC(&v297, &v289);
                      if (SHIBYTE(v292) < 0)
                      {
                        operator delete(v291);
                      }

                      if (SHIBYTE(v290) < 0)
                      {
                        operator delete(v289);
                      }

                      if (v287[0])
                      {
                        v287[1] = v287[0];
                        operator delete(v287[0]);
                      }

                      if (SHIBYTE(v300) < 0)
                      {
                        operator delete(v299);
                      }

                      if (SHIBYTE(v298) < 0)
                      {
                        operator delete(v297);
                      }

                      if (v294)
                      {
                        v295 = v294;
                        operator delete(v294);
                      }

                      v179 -= 40;
                    }

                    while (v184 < 0);
                    v185 = *(v179 - 9);
                    v186 = v207;
                    if (v185)
                    {
                      *(v179 - 8) = v185;
                      operator delete(v185);
                      *(v179 - 9) = 0;
                      *(v179 - 8) = 0;
                      *(v179 - 7) = 0;
                      v186 = *v302;
                    }

                    *(v179 - 36) = v186;
                    *(v179 - 7) = v303;
                    v302[1] = 0;
                    v302[0] = 0;
                    v303 = 0;
                    if (*(v179 - 25) < 0)
                    {
                      operator delete(*(v179 - 6));
                    }

                    v187 = __src;
                    *(v179 - 4) = v305;
                    *(v179 - 3) = v187;
                    HIBYTE(v305) = 0;
                    LOBYTE(__src) = 0;
                    if (*(v179 - 1) < 0)
                    {
                      operator delete(*(v179 - 3));
                    }

                    v188 = v306;
                    *(v179 - 1) = v307;
                    *(v179 - 12) = v188;
                    *v179 = v308;
                  }

                  v172 = v174 + 80;
                  v173 += 40;
                  v9 = v174;
                }

                while (v174 + 80 != a2);
              }
            }

            return;
          }

          if (!a3)
          {
            if (v9 != a2)
            {
              v85 = (v8 - 2) >> 1;
              v205 = v85;
              v86 = v6;
              do
              {
                v87 = v85;
                if (v205 >= v85)
                {
                  v201 = v85;
                  v88 = (2 * v85) | 1;
                  v89 = v86 + 80 * v88;
                  v90 = 2 * v85 + 2;
                  if (v90 < v8)
                  {
                    v317 = 0uLL;
                    v318 = 0;
                    sub_100034C50(&v317, *v89, *(v89 + 8), *(v89 + 8) - *v89);
                    if (*(v89 + 47) < 0)
                    {
                      sub_100005F2C(&v319, *(v89 + 24), *(v89 + 32));
                    }

                    else
                    {
                      v91 = *(v89 + 24);
                      v320 = *(v89 + 40);
                      v319 = v91;
                    }

                    if (*(v89 + 71) < 0)
                    {
                      sub_100005F2C(&v321, *(v89 + 48), *(v89 + 56));
                    }

                    else
                    {
                      v92 = *(v89 + 48);
                      v322 = *(v89 + 64);
                      v321 = v92;
                    }

                    LOWORD(v323) = *(v89 + 72);
                    v310 = 0;
                    v311 = 0;
                    v309 = 0;
                    sub_100034C50(&v309, *(v89 + 80), *(v89 + 88), *(v89 + 88) - *(v89 + 80));
                    if (*(v89 + 127) < 0)
                    {
                      sub_100005F2C(&v312, *(v89 + 104), *(v89 + 112));
                    }

                    else
                    {
                      v93 = *(v89 + 104);
                      v313 = *(v89 + 120);
                      v312 = v93;
                    }

                    if (*(v89 + 151) < 0)
                    {
                      sub_100005F2C(&v314, *(v89 + 128), *(v89 + 136));
                    }

                    else
                    {
                      v94 = *(v89 + 128);
                      v315 = *(v89 + 144);
                      v314 = v94;
                    }

                    v316 = *(v89 + 152);
                    LOBYTE(v95) = sub_1000068BC(&v319, &v312);
                    if (SHIBYTE(v315) < 0)
                    {
                      operator delete(v314);
                    }

                    if (SHIBYTE(v313) < 0)
                    {
                      operator delete(v312);
                    }

                    if (v309)
                    {
                      v310 = v309;
                      operator delete(v309);
                    }

                    if (SHIBYTE(v322) < 0)
                    {
                      operator delete(v321);
                    }

                    if (SHIBYTE(v320) < 0)
                    {
                      operator delete(v319);
                    }

                    v95 = v95;
                    if (v317)
                    {
                      *(&v317 + 1) = v317;
                      operator delete(v317);
                    }

                    if (v95 < 0)
                    {
                      v89 += 80;
                      v88 = v90;
                    }
                  }

                  v302[1] = 0;
                  v302[0] = 0;
                  v303 = 0;
                  sub_100034C50(v302, *v89, *(v89 + 8), *(v89 + 8) - *v89);
                  if (*(v89 + 47) < 0)
                  {
                    sub_100005F2C(&__src, *(v89 + 24), *(v89 + 32));
                  }

                  else
                  {
                    v96 = *(v89 + 24);
                    v305 = *(v89 + 40);
                    __src = v96;
                  }

                  if (*(v89 + 71) < 0)
                  {
                    sub_100005F2C(&v306, *(v89 + 48), *(v89 + 56));
                  }

                  else
                  {
                    v97 = *(v89 + 48);
                    v307 = *(v89 + 64);
                    v306 = v97;
                  }

                  v98 = v6 + 80 * v201;
                  LOWORD(v308) = *(v89 + 72);
                  v296 = 0;
                  v294 = 0;
                  v295 = 0;
                  sub_100034C50(&v294, *v98, *(v98 + 8), *(v98 + 8) - *v98);
                  if (*(v98 + 47) < 0)
                  {
                    sub_100005F2C(&v297, *(v98 + 24), *(v98 + 32));
                  }

                  else
                  {
                    v99 = *(v98 + 24);
                    v298 = *(v98 + 40);
                    v297 = v99;
                  }

                  if (*(v98 + 71) < 0)
                  {
                    sub_100005F2C(&v299, *(v98 + 48), *(v98 + 56));
                  }

                  else
                  {
                    v100 = *(v98 + 48);
                    v300 = *(v98 + 64);
                    v299 = v100;
                  }

                  v301 = *(v98 + 72);
                  v101 = sub_1000068BC(&__src, &v297);
                  if (SHIBYTE(v300) < 0)
                  {
                    operator delete(v299);
                  }

                  if (SHIBYTE(v298) < 0)
                  {
                    operator delete(v297);
                  }

                  if (v294)
                  {
                    v295 = v294;
                    operator delete(v294);
                  }

                  if (SHIBYTE(v307) < 0)
                  {
                    operator delete(v306);
                  }

                  if (SHIBYTE(v305) < 0)
                  {
                    operator delete(__src);
                  }

                  if (v302[0])
                  {
                    v302[1] = v302[0];
                    operator delete(v302[0]);
                  }

                  v102 = v101;
                  v87 = v201;
                  v86 = v6;
                  if ((v102 & 0x80000000) == 0)
                  {
                    v293 = 0;
                    *v287 = *v98;
                    v288 = *(v98 + 16);
                    *v98 = 0;
                    *(v98 + 8) = 0;
                    *(v98 + 16) = 0;
                    v103 = *(v98 + 24);
                    v290 = *(v98 + 40);
                    v289 = v103;
                    *(v98 + 32) = 0;
                    *(v98 + 40) = 0;
                    *(v98 + 24) = 0;
                    v104 = *(v98 + 48);
                    v292 = *(v98 + 64);
                    v291 = v104;
                    *(v98 + 56) = 0;
                    *(v98 + 64) = 0;
                    *(v98 + 48) = 0;
                    LOWORD(v293) = *(v98 + 72);
                    do
                    {
                      v105 = v89;
                      sub_100015184(v98, v89);
                      if (*(v98 + 47) < 0)
                      {
                        operator delete(*(v98 + 24));
                      }

                      v106 = *(v89 + 24);
                      *(v98 + 40) = *(v89 + 40);
                      *(v98 + 24) = v106;
                      *(v89 + 47) = 0;
                      *(v89 + 24) = 0;
                      if (*(v98 + 71) < 0)
                      {
                        operator delete(*(v98 + 48));
                      }

                      v107 = *(v89 + 48);
                      *(v98 + 64) = *(v89 + 64);
                      *(v98 + 48) = v107;
                      *(v89 + 71) = 0;
                      *(v89 + 48) = 0;
                      *(v98 + 72) = *(v89 + 72);
                      if (v205 < v88)
                      {
                        break;
                      }

                      v108 = 2 * v88;
                      v88 = (2 * v88) | 1;
                      v89 = v86 + 80 * v88;
                      v109 = v108 + 2;
                      if (v108 + 2 < v8)
                      {
                        v280[1] = 0;
                        v280[0] = 0;
                        v281 = 0;
                        sub_100034C50(v280, *v89, *(v89 + 8), *(v89 + 8) - *v89);
                        if (*(v89 + 47) < 0)
                        {
                          sub_100005F2C(&v282, *(v89 + 24), *(v89 + 32));
                        }

                        else
                        {
                          v110 = *(v89 + 24);
                          v283 = *(v89 + 40);
                          v282 = v110;
                        }

                        if (*(v89 + 71) < 0)
                        {
                          sub_100005F2C(&v284, *(v89 + 48), *(v89 + 56));
                        }

                        else
                        {
                          v111 = *(v89 + 48);
                          v285 = *(v89 + 64);
                          v284 = v111;
                        }

                        LOWORD(v286) = *(v89 + 72);
                        v274 = 0;
                        v272 = 0;
                        v273 = 0;
                        sub_100034C50(&v272, *(v89 + 80), *(v89 + 88), *(v89 + 88) - *(v89 + 80));
                        if (*(v89 + 127) < 0)
                        {
                          sub_100005F2C(&v275, *(v89 + 104), *(v89 + 112));
                        }

                        else
                        {
                          v112 = *(v89 + 104);
                          v276 = *(v89 + 120);
                          v275 = v112;
                        }

                        if (*(v89 + 151) < 0)
                        {
                          sub_100005F2C(&v277, *(v89 + 128), *(v89 + 136));
                        }

                        else
                        {
                          v113 = *(v89 + 128);
                          v278 = *(v89 + 144);
                          v277 = v113;
                        }

                        v279 = *(v89 + 152);
                        v114 = sub_1000068BC(&v282, &v275);
                        if (SHIBYTE(v278) < 0)
                        {
                          operator delete(v277);
                        }

                        if (SHIBYTE(v276) < 0)
                        {
                          operator delete(v275);
                        }

                        if (v272)
                        {
                          v273 = v272;
                          operator delete(v272);
                        }

                        if (SHIBYTE(v285) < 0)
                        {
                          operator delete(v284);
                        }

                        if (SHIBYTE(v283) < 0)
                        {
                          operator delete(v282);
                        }

                        if (v280[0])
                        {
                          v280[1] = v280[0];
                          operator delete(v280[0]);
                        }

                        if (v114 < 0)
                        {
                          v89 += 80;
                          v88 = v109;
                        }
                      }

                      v265 = 0;
                      v264 = 0;
                      v266 = 0;
                      sub_100034C50(&v264, *v89, *(v89 + 8), *(v89 + 8) - *v89);
                      v86 = v6;
                      if (*(v89 + 47) < 0)
                      {
                        sub_100005F2C(&v267, *(v89 + 24), *(v89 + 32));
                      }

                      else
                      {
                        v115 = *(v89 + 24);
                        v268 = *(v89 + 40);
                        v267 = v115;
                      }

                      if (*(v89 + 71) < 0)
                      {
                        sub_100005F2C(&v269, *(v89 + 48), *(v89 + 56));
                      }

                      else
                      {
                        v116 = *(v89 + 48);
                        v270 = *(v89 + 64);
                        v269 = v116;
                      }

                      v271 = *(v89 + 72);
                      v258 = 0;
                      v256 = 0;
                      v257 = 0;
                      sub_100034C50(&v256, v287[0], v287[1], v287[1] - v287[0]);
                      if (SHIBYTE(v290) < 0)
                      {
                        sub_100005F2C(&v259, v289, *(&v289 + 1));
                      }

                      else
                      {
                        v259 = v289;
                        v260 = v290;
                      }

                      if (SHIBYTE(v292) < 0)
                      {
                        sub_100005F2C(&v261, v291, *(&v291 + 1));
                      }

                      else
                      {
                        v261 = v291;
                        v262 = v292;
                      }

                      v263 = v293;
                      v117 = sub_1000068BC(&v267, &v259);
                      if (SHIBYTE(v262) < 0)
                      {
                        operator delete(v261);
                      }

                      if (SHIBYTE(v260) < 0)
                      {
                        operator delete(v259);
                      }

                      if (v256)
                      {
                        v257 = v256;
                        operator delete(v256);
                      }

                      if (SHIBYTE(v270) < 0)
                      {
                        operator delete(v269);
                      }

                      if (SHIBYTE(v268) < 0)
                      {
                        operator delete(v267);
                      }

                      if (v264)
                      {
                        v265 = v264;
                        operator delete(v264);
                      }

                      v118 = v117;
                      v98 = v105;
                    }

                    while ((v118 & 0x80000000) == 0);
                    v119 = *v105;
                    if (*v105)
                    {
                      *(v105 + 8) = v119;
                      operator delete(v119);
                      *v105 = 0;
                      *(v105 + 8) = 0;
                      *(v105 + 16) = 0;
                    }

                    *v105 = *v287;
                    *(v105 + 16) = v288;
                    if (*(v105 + 47) < 0)
                    {
                      operator delete(*(v105 + 24));
                    }

                    v120 = v289;
                    *(v105 + 40) = v290;
                    *(v105 + 24) = v120;
                    if (*(v105 + 71) < 0)
                    {
                      operator delete(*(v105 + 48));
                    }

                    v121 = v291;
                    *(v105 + 64) = v292;
                    *(v105 + 48) = v121;
                    *(v105 + 72) = v293;
                    v87 = v201;
                  }
                }

                v85 = v87 - 1;
              }

              while (v87);
              v122 = v198;
              v123 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v6) >> 4);
              do
              {
                v124 = 0;
                v286 = 0;
                v206 = v122;
                v125 = a1;
                *v280 = *a1;
                v281 = *(a1 + 16);
                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                v126 = *(a1 + 24);
                v283 = *(a1 + 40);
                v282 = v126;
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                *(a1 + 24) = 0;
                v127 = *(a1 + 48);
                v285 = *(a1 + 64);
                v284 = v127;
                *(a1 + 48) = 0;
                *(a1 + 56) = 0;
                *(a1 + 64) = 0;
                LOWORD(v286) = *(a1 + 72);
                do
                {
                  v128 = v125 + 80 * v124;
                  v129 = v128 + 80;
                  v130 = 2 * v124;
                  v124 = (2 * v124) | 1;
                  v131 = v130 + 2;
                  if (v130 + 2 < v123)
                  {
                    v317 = 0uLL;
                    v318 = 0;
                    sub_100034C50(&v317, *(v128 + 80), *(v128 + 88), *(v128 + 88) - *(v128 + 80));
                    if (*(v128 + 127) < 0)
                    {
                      sub_100005F2C(&v319, *(v128 + 104), *(v128 + 112));
                    }

                    else
                    {
                      v132 = *(v128 + 104);
                      v320 = *(v128 + 120);
                      v319 = v132;
                    }

                    if (*(v128 + 151) < 0)
                    {
                      sub_100005F2C(&v321, *(v128 + 128), *(v128 + 136));
                    }

                    else
                    {
                      v133 = *(v128 + 128);
                      v322 = *(v128 + 144);
                      v321 = v133;
                    }

                    LOWORD(v323) = *(v128 + 152);
                    v310 = 0;
                    v311 = 0;
                    v309 = 0;
                    v134 = v128 + 160;
                    sub_100034C50(&v309, *(v128 + 160), *(v128 + 168), *(v128 + 168) - *(v128 + 160));
                    if (*(v128 + 207) < 0)
                    {
                      sub_100005F2C(&v312, *(v128 + 184), *(v128 + 192));
                    }

                    else
                    {
                      v135 = *(v128 + 184);
                      v313 = *(v128 + 200);
                      v312 = v135;
                    }

                    if (*(v128 + 231) < 0)
                    {
                      sub_100005F2C(&v314, *(v128 + 208), *(v128 + 216));
                    }

                    else
                    {
                      v136 = *(v128 + 208);
                      v315 = *(v128 + 224);
                      v314 = v136;
                    }

                    v316 = *(v128 + 232);
                    v137 = sub_1000068BC(&v319, &v312);
                    if (SHIBYTE(v315) < 0)
                    {
                      operator delete(v314);
                    }

                    if (SHIBYTE(v313) < 0)
                    {
                      operator delete(v312);
                    }

                    if (v309)
                    {
                      v310 = v309;
                      operator delete(v309);
                    }

                    if (SHIBYTE(v322) < 0)
                    {
                      operator delete(v321);
                    }

                    if (SHIBYTE(v320) < 0)
                    {
                      operator delete(v319);
                    }

                    if (v317)
                    {
                      *(&v317 + 1) = v317;
                      operator delete(v317);
                    }

                    if (v137 < 0)
                    {
                      v129 = v134;
                      v124 = v131;
                    }
                  }

                  sub_100015184(v125, v129);
                  if (*(v125 + 47) < 0)
                  {
                    operator delete(*(v125 + 24));
                  }

                  v138 = *(v129 + 24);
                  *(v125 + 40) = *(v129 + 40);
                  *(v125 + 24) = v138;
                  *(v129 + 47) = 0;
                  *(v129 + 24) = 0;
                  v139 = a1;
                  if (*(v125 + 71) < 0)
                  {
                    operator delete(*(v125 + 48));
                  }

                  v140 = *(v129 + 48);
                  *(v125 + 64) = *(v129 + 64);
                  *(v125 + 48) = v140;
                  *(v129 + 71) = 0;
                  *(v129 + 48) = 0;
                  *(v125 + 72) = *(v129 + 72);
                  v125 = v129;
                }

                while (v124 <= ((v123 - 2) >> 1));
                v122 = v206 - 5;
                if (v129 == &v206[-5])
                {
                  v152 = *v129;
                  if (*v129)
                  {
                    *(v129 + 8) = v152;
                    operator delete(v152);
                    *v129 = 0;
                    *(v129 + 8) = 0;
                    *(v129 + 16) = 0;
                  }

                  *v129 = *v280;
                  *(v129 + 16) = v281;
                  v280[1] = 0;
                  v280[0] = 0;
                  v281 = 0;
                  if (*(v129 + 47) < 0)
                  {
                    operator delete(*(v129 + 24));
                  }

                  v153 = v282;
                  *(v129 + 40) = v283;
                  *(v129 + 24) = v153;
                  HIBYTE(v283) = 0;
                  LOBYTE(v282) = 0;
                  if (*(v129 + 71) < 0)
                  {
                    operator delete(*(v129 + 48));
                  }

                  v154 = v284;
                  *(v129 + 64) = v285;
                  *(v129 + 48) = v154;
                  *(v129 + 72) = v286;
                }

                else
                {
                  sub_100015184(v129, v206 - 5);
                  if (*(v129 + 47) < 0)
                  {
                    operator delete(*(v129 + 24));
                  }

                  v141 = &v206[-4].n128_u64[1];
                  v142 = *(&v206[-4] + 8);
                  *(v129 + 40) = v206[-3].n128_u64[1];
                  *(v129 + 24) = v142;
                  v206[-3].n128_u8[15] = 0;
                  v206[-4].n128_u8[8] = 0;
                  if (*(v129 + 71) < 0)
                  {
                    operator delete(*(v129 + 48));
                  }

                  v143 = v206[-2];
                  *(v129 + 64) = v206[-1].n128_u64[0];
                  *(v129 + 48) = v143;
                  v206[-1].n128_u8[7] = 0;
                  v206[-2].n128_u8[0] = 0;
                  *(v129 + 72) = v206[-1].n128_u16[4];
                  v144 = v206[-5].n128_u64[0];
                  if (v144)
                  {
                    v206[-5].n128_u64[1] = v144;
                    operator delete(v144);
                    v122->n128_u64[0] = 0;
                    v206[-5].n128_u64[1] = 0;
                    v206[-4].n128_u64[0] = 0;
                  }

                  v206[-5] = *v280;
                  v206[-4].n128_u64[0] = v281;
                  v280[1] = 0;
                  v280[0] = 0;
                  v281 = 0;
                  if (v206[-3].n128_i8[15] < 0)
                  {
                    operator delete(*v141);
                  }

                  v145 = &v206[-2];
                  v146 = v282;
                  v206[-3].n128_u64[1] = v283;
                  *v141 = v146;
                  HIBYTE(v283) = 0;
                  LOBYTE(v282) = 0;
                  if (v206[-1].n128_i8[7] < 0)
                  {
                    operator delete(*v145);
                  }

                  v147 = v284;
                  v206[-1].n128_u64[0] = v285;
                  *v145 = v147;
                  HIBYTE(v285) = 0;
                  LOBYTE(v284) = 0;
                  v206[-1].n128_u16[4] = v286;
                  v148 = v129 + 80 - a1;
                  if (v148 < 81)
                  {
                    goto LABEL_480;
                  }

                  v149 = (-2 - 0x3333333333333333 * (v148 >> 4)) >> 1;
                  v150 = a1 + 80 * v149;
                  v317 = 0uLL;
                  v318 = 0;
                  sub_100034C50(&v317, *v150, *(v150 + 8), *(v150 + 8) - *v150);
                  if (*(v150 + 47) < 0)
                  {
                    sub_100005F2C(&v319, *(v150 + 24), *(v150 + 32));
                  }

                  else
                  {
                    v151 = *(v150 + 24);
                    v320 = *(v150 + 40);
                    v319 = v151;
                  }

                  if (*(v150 + 71) < 0)
                  {
                    sub_100005F2C(&v321, *(v150 + 48), *(v150 + 56));
                  }

                  else
                  {
                    v155 = *(v150 + 48);
                    v322 = *(v150 + 64);
                    v321 = v155;
                  }

                  LOWORD(v323) = *(v150 + 72);
                  v310 = 0;
                  v311 = 0;
                  v309 = 0;
                  sub_100034C50(&v309, *v129, *(v129 + 8), *(v129 + 8) - *v129);
                  if (*(v129 + 47) < 0)
                  {
                    sub_100005F2C(&v312, *(v129 + 24), *(v129 + 32));
                  }

                  else
                  {
                    v156 = *(v129 + 24);
                    v313 = *(v129 + 40);
                    v312 = v156;
                  }

                  if (*(v129 + 71) < 0)
                  {
                    sub_100005F2C(&v314, *(v129 + 48), *(v129 + 56));
                  }

                  else
                  {
                    v157 = *(v129 + 48);
                    v315 = *(v129 + 64);
                    v314 = v157;
                  }

                  v316 = *(v129 + 72);
                  v158 = sub_1000068BC(&v319, &v312);
                  if (SHIBYTE(v315) < 0)
                  {
                    operator delete(v314);
                  }

                  if (SHIBYTE(v313) < 0)
                  {
                    operator delete(v312);
                  }

                  if (v309)
                  {
                    v310 = v309;
                    operator delete(v309);
                  }

                  if (SHIBYTE(v322) < 0)
                  {
                    operator delete(v321);
                  }

                  if (SHIBYTE(v320) < 0)
                  {
                    operator delete(v319);
                  }

                  if (v317)
                  {
                    *(&v317 + 1) = v317;
                    operator delete(v317);
                  }

                  if (v158 < 0)
                  {
                    v308 = 0;
                    *v302 = *v129;
                    v303 = *(v129 + 16);
                    *v129 = 0;
                    *(v129 + 8) = 0;
                    *(v129 + 16) = 0;
                    v160 = *(v129 + 24);
                    v305 = *(v129 + 40);
                    __src = v160;
                    *(v129 + 32) = 0;
                    *(v129 + 40) = 0;
                    *(v129 + 24) = 0;
                    v161 = *(v129 + 48);
                    v307 = *(v129 + 64);
                    v306 = v161;
                    *(v129 + 48) = 0;
                    *(v129 + 56) = 0;
                    *(v129 + 64) = 0;
                    LOWORD(v308) = *(v129 + 72);
                    do
                    {
                      v162 = v150;
                      sub_100015184(v129, v150);
                      if (*(v129 + 47) < 0)
                      {
                        operator delete(*(v129 + 24));
                      }

                      v163 = *(v150 + 24);
                      *(v129 + 40) = *(v150 + 40);
                      *(v129 + 24) = v163;
                      *(v150 + 47) = 0;
                      *(v150 + 24) = 0;
                      if (*(v129 + 71) < 0)
                      {
                        operator delete(*(v129 + 48));
                      }

                      v164 = *(v150 + 48);
                      *(v129 + 64) = *(v150 + 64);
                      *(v129 + 48) = v164;
                      *(v150 + 71) = 0;
                      *(v150 + 48) = 0;
                      *(v129 + 72) = *(v150 + 72);
                      if (!v149)
                      {
                        break;
                      }

                      v149 = (v149 - 1) >> 1;
                      v150 = v139 + 80 * v149;
                      v295 = 0;
                      v294 = 0;
                      v296 = 0;
                      sub_100034C50(&v294, *v150, *(v150 + 8), *(v150 + 8) - *v150);
                      if (*(v150 + 47) < 0)
                      {
                        sub_100005F2C(&v297, *(v150 + 24), *(v150 + 32));
                      }

                      else
                      {
                        v165 = *(v150 + 24);
                        v298 = *(v150 + 40);
                        v297 = v165;
                      }

                      if (*(v150 + 71) < 0)
                      {
                        sub_100005F2C(&v299, *(v150 + 48), *(v150 + 56));
                      }

                      else
                      {
                        v166 = *(v150 + 48);
                        v300 = *(v150 + 64);
                        v299 = v166;
                      }

                      v301 = *(v150 + 72);
                      v288 = 0;
                      v287[0] = 0;
                      v287[1] = 0;
                      sub_100034C50(v287, v302[0], v302[1], v302[1] - v302[0]);
                      if (SHIBYTE(v305) < 0)
                      {
                        sub_100005F2C(&v289, __src, *(&__src + 1));
                      }

                      else
                      {
                        v289 = __src;
                        v290 = v305;
                      }

                      if (SHIBYTE(v307) < 0)
                      {
                        sub_100005F2C(&v291, v306, *(&v306 + 1));
                      }

                      else
                      {
                        v291 = v306;
                        v292 = v307;
                      }

                      LOWORD(v293) = v308;
                      v167 = sub_1000068BC(&v297, &v289);
                      if (SHIBYTE(v292) < 0)
                      {
                        operator delete(v291);
                      }

                      if (SHIBYTE(v290) < 0)
                      {
                        operator delete(v289);
                      }

                      if (v287[0])
                      {
                        v287[1] = v287[0];
                        operator delete(v287[0]);
                      }

                      if (SHIBYTE(v300) < 0)
                      {
                        operator delete(v299);
                      }

                      if (SHIBYTE(v298) < 0)
                      {
                        operator delete(v297);
                      }

                      if (v294)
                      {
                        v295 = v294;
                        operator delete(v294);
                      }

                      v168 = v167;
                      v129 = v162;
                      v139 = a1;
                    }

                    while (v168 < 0);
                    v169 = *v162;
                    if (*v162)
                    {
                      *(v162 + 8) = v169;
                      operator delete(v169);
                      *v162 = 0;
                      *(v162 + 8) = 0;
                      *(v162 + 16) = 0;
                    }

                    *v162 = *v302;
                    *(v162 + 16) = v303;
                    v122 = v206 - 5;
                    if (*(v162 + 47) < 0)
                    {
                      operator delete(*(v162 + 24));
                    }

                    v170 = __src;
                    *(v162 + 40) = v305;
                    *(v162 + 24) = v170;
                    if (*(v162 + 71) < 0)
                    {
                      operator delete(*(v162 + 48));
                    }

                    v171 = v306;
                    *(v162 + 64) = v307;
                    *(v162 + 48) = v171;
                    *(v162 + 72) = v308;
                    if (SHIBYTE(v285) < 0)
                    {
                      operator delete(v284);
                    }
                  }

                  else
                  {
LABEL_480:
                    v122 = v206 - 5;
                  }
                }

                if (SHIBYTE(v283) < 0)
                {
                  operator delete(v282);
                }

                if (v280[0])
                {
                  operator delete(v280[0]);
                }
              }

              while (v123-- > 2);
            }

            return;
          }

          v10 = v9 + 80 * (v8 >> 1);
          if (v7 < 0x2801)
          {
            sub_10113D7D8(v9 + 80 * (v8 >> 1), v9, v196);
          }

          else
          {
            sub_10113D7D8(v9, v9 + 80 * (v8 >> 1), v196);
            v11 = 5 * (v8 >> 1);
            v12 = v9 + 80 * (v8 >> 1) - 80;
            sub_10113D7D8(v9 + 80, v12, v194);
            sub_10113D7D8(v9 + 160, v9 + 80 + 16 * v11, v193);
            sub_10113D7D8(v12, v10, v9 + 80 + 16 * v11);
            sub_1011404EC(v9, v10);
          }

          --a3;
          if (a4)
          {
            break;
          }

          v216 = 0;
          v217 = 0;
          v218 = 0;
          sub_100034C50(&v216, *(v9 - 80), *(v9 - 72), *(v9 - 72) - *(v9 - 80));
          if (*(v9 - 33) < 0)
          {
            sub_100005F2C(&v219, *(v9 - 56), *(v9 - 48));
          }

          else
          {
            v13 = *(v9 - 56);
            v220 = *(v9 - 40);
            v219 = v13;
          }

          if (*(v9 - 9) < 0)
          {
            sub_100005F2C(&v221, *(v9 - 32), *(v9 - 24));
          }

          else
          {
            v14 = *(v9 - 32);
            v222 = *(v9 - 16);
            v221 = v14;
          }

          v223 = *(v9 - 8);
          v209 = 0;
          v210 = 0;
          v208 = 0;
          sub_100034C50(&v208, *v9, *(v9 + 8), *(v9 + 8) - *v9);
          if (*(v9 + 47) < 0)
          {
            sub_100005F2C(&v211, *(v9 + 24), *(v9 + 32));
          }

          else
          {
            v15 = *(v9 + 24);
            v212 = *(v9 + 40);
            v211 = v15;
          }

          if (*(v9 + 71) < 0)
          {
            sub_100005F2C(&__p, *(v9 + 48), *(v9 + 56));
          }

          else
          {
            v16 = *(v9 + 48);
            v214 = *(v9 + 64);
            __p = v16;
          }

          v215 = *(v9 + 72);
          v17 = sub_1000068BC(&v219, &v211);
          if (SHIBYTE(v214) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v212) < 0)
          {
            operator delete(v211);
          }

          if (v208)
          {
            v209 = v208;
            operator delete(v208);
          }

          if (SHIBYTE(v222) < 0)
          {
            operator delete(v221);
          }

          if (SHIBYTE(v220) < 0)
          {
            operator delete(v219);
          }

          if (v216)
          {
            v217 = v216;
            operator delete(v216);
          }

          if (v17 < 0)
          {
            break;
          }

          v6 = sub_10113EF2C(v9, a2);
          a4 = 0;
        }

        v197 = a3;
        v18 = 0;
        v323 = 0;
        v317 = *v9;
        v318 = *(v9 + 16);
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        v19 = *(v9 + 24);
        v320 = *(v9 + 40);
        v319 = v19;
        *(v9 + 32) = 0;
        *(v9 + 40) = 0;
        *(v9 + 24) = 0;
        v20 = *(v9 + 48);
        v322 = *(v9 + 64);
        v321 = v20;
        *(v9 + 48) = 0;
        *(v9 + 56) = 0;
        *(v9 + 64) = 0;
        v203 = *(v9 + 72);
        LOWORD(v323) = v203;
        do
        {
          v21 = v9 + v18;
          v309 = 0;
          v310 = 0;
          v311 = 0;
          sub_100034C50(&v309, *(v9 + v18 + 80), *(v9 + v18 + 88), *(v9 + v18 + 88) - *(v9 + v18 + 80));
          if (*(v9 + v18 + 127) < 0)
          {
            sub_100005F2C(&v312, *(v21 + 104), *(v9 + v18 + 112));
          }

          else
          {
            v22 = *(v21 + 104);
            v313 = *(v21 + 120);
            v312 = v22;
          }

          v23 = v9 + v18;
          if (*(v9 + v18 + 151) < 0)
          {
            sub_100005F2C(&v314, *(v23 + 128), *(v23 + 136));
          }

          else
          {
            v24 = *(v23 + 128);
            v315 = *(v23 + 144);
            v314 = v24;
          }

          v316 = *(v9 + v18 + 152);
          v303 = 0;
          v302[0] = 0;
          v302[1] = 0;
          v25 = v317;
          sub_100034C50(v302, v317, *(&v317 + 1), *(&v317 + 1) - v317);
          v26 = SHIBYTE(v320);
          if (SHIBYTE(v320) < 0)
          {
            sub_100005F2C(&__src, v319, *(&v319 + 1));
          }

          else
          {
            __src = v319;
            v305 = v320;
          }

          v27 = SHIBYTE(v322);
          if (SHIBYTE(v322) < 0)
          {
            sub_100005F2C(&v306, v321, *(&v321 + 1));
          }

          else
          {
            v306 = v321;
            v307 = v322;
          }

          LOWORD(v308) = v203;
          v28 = sub_1000068BC(&v312, &__src);
          if (SHIBYTE(v307) < 0)
          {
            operator delete(v306);
          }

          if (SHIBYTE(v305) < 0)
          {
            operator delete(__src);
          }

          if (v302[0])
          {
            v302[1] = v302[0];
            operator delete(v302[0]);
          }

          if (SHIBYTE(v315) < 0)
          {
            operator delete(v314);
          }

          if (SHIBYTE(v313) < 0)
          {
            operator delete(v312);
          }

          if (v309)
          {
            v310 = v309;
            operator delete(v309);
          }

          v18 += 80;
        }

        while (v28 < 0);
        v200 = v26;
        v199 = v9 + v18;
        v29 = v198;
        if (v18 == 80)
        {
          i = v198;
          if (v199 < v198)
          {
            for (i = v196; ; i -= 80)
            {
              v295 = 0;
              v294 = 0;
              v296 = 0;
              sub_100034C50(&v294, *i, *(i + 8), *(i + 8) - *i);
              if (*(i + 47) < 0)
              {
                sub_100005F2C(&v297, *(i + 24), *(i + 32));
              }

              else
              {
                v35 = *(i + 24);
                v298 = *(i + 40);
                v297 = v35;
              }

              if (*(i + 71) < 0)
              {
                sub_100005F2C(&v299, *(i + 48), *(i + 56));
              }

              else
              {
                v36 = *(i + 48);
                v300 = *(i + 64);
                v299 = v36;
              }

              v301 = *(i + 72);
              v288 = 0;
              v287[0] = 0;
              v287[1] = 0;
              sub_100034C50(v287, v25, *(&v25 + 1), *(&v25 + 1) - v25);
              if (v200 < 0)
              {
                sub_100005F2C(&v289, v319, *(&v319 + 1));
              }

              else
              {
                v289 = v319;
                v290 = v320;
              }

              if (v27 < 0)
              {
                sub_100005F2C(&v291, v321, *(&v321 + 1));
              }

              else
              {
                v291 = v321;
                v292 = v322;
              }

              LOWORD(v293) = v203;
              v37 = sub_1000068BC(&v297, &v289);
              if (SHIBYTE(v292) < 0)
              {
                operator delete(v291);
              }

              if (SHIBYTE(v290) < 0)
              {
                operator delete(v289);
              }

              if (v287[0])
              {
                v287[1] = v287[0];
                operator delete(v287[0]);
              }

              if (SHIBYTE(v300) < 0)
              {
                operator delete(v299);
              }

              if (SHIBYTE(v298) < 0)
              {
                operator delete(v297);
              }

              if (v294)
              {
                v295 = v294;
                operator delete(v294);
              }

              if (v199 >= i || v37 < 0)
              {
                break;
              }
            }
          }
        }

        else
        {
          do
          {
            v280[1] = 0;
            v280[0] = 0;
            v281 = 0;
            i = v29 - 80;
            sub_100034C50(v280, *(v29 - 80), *(v29 - 72), *(v29 - 72) - *(v29 - 80));
            if (*(v29 - 33) < 0)
            {
              sub_100005F2C(&v282, *(v29 - 56), *(v29 - 48));
            }

            else
            {
              v31 = *(v29 - 56);
              v283 = *(v29 - 40);
              v282 = v31;
            }

            if (*(v29 - 9) < 0)
            {
              sub_100005F2C(&v284, *(v29 - 32), *(v29 - 24));
            }

            else
            {
              v32 = *(v29 - 32);
              v285 = *(v29 - 16);
              v284 = v32;
            }

            LOWORD(v286) = *(v29 - 8);
            v274 = 0;
            v272 = 0;
            v273 = 0;
            sub_100034C50(&v272, v25, *(&v25 + 1), *(&v25 + 1) - v25);
            if (v200 < 0)
            {
              sub_100005F2C(&v275, v319, *(&v319 + 1));
            }

            else
            {
              v275 = v319;
              v276 = v320;
            }

            if (v27 < 0)
            {
              sub_100005F2C(&v277, v321, *(&v321 + 1));
            }

            else
            {
              v277 = v321;
              v278 = v322;
            }

            v279 = v203;
            v33 = sub_1000068BC(&v282, &v275);
            if (SHIBYTE(v278) < 0)
            {
              operator delete(v277);
            }

            if (SHIBYTE(v276) < 0)
            {
              operator delete(v275);
            }

            if (v272)
            {
              v273 = v272;
              operator delete(v272);
            }

            if (SHIBYTE(v285) < 0)
            {
              operator delete(v284);
            }

            if (SHIBYTE(v283) < 0)
            {
              operator delete(v282);
            }

            if (v280[0])
            {
              v280[1] = v280[0];
              operator delete(v280[0]);
            }

            v34 = v33;
            v29 = i;
          }

          while ((v34 & 0x80000000) == 0);
        }

        v38 = v9 + v18;
        v204 = i;
        if (v199 >= i)
        {
          v6 = v9 + v18;
        }

        else
        {
          v6 = v9 + v18;
          v39 = i;
          do
          {
            sub_1011404EC(v6, v39);
            v40 = (v6 + 152);
            do
            {
              v265 = 0;
              v264 = 0;
              v266 = 0;
              sub_100034C50(&v264, *(v40 - 9), *(v40 - 8), *(v40 - 8) - *(v40 - 9));
              if (*(v40 - 25) < 0)
              {
                sub_100005F2C(&v267, *(v40 - 6), *(v40 - 5));
              }

              else
              {
                v41 = *(v40 - 3);
                v268 = *(v40 - 4);
                v267 = v41;
              }

              if (*(v40 - 1) < 0)
              {
                sub_100005F2C(&v269, *(v40 - 3), *(v40 - 2));
              }

              else
              {
                v42 = *(v40 - 12);
                v270 = *(v40 - 1);
                v269 = v42;
              }

              v271 = *v40;
              v258 = 0;
              v256 = 0;
              v257 = 0;
              v43 = v317;
              sub_100034C50(&v256, v317, *(&v317 + 1), *(&v317 + 1) - v317);
              v44 = SHIBYTE(v320);
              if (SHIBYTE(v320) < 0)
              {
                sub_100005F2C(&v259, v319, *(&v319 + 1));
              }

              else
              {
                v259 = v319;
                v260 = v320;
              }

              v45 = SHIBYTE(v322);
              if (SHIBYTE(v322) < 0)
              {
                sub_100005F2C(&v261, v321, *(&v321 + 1));
              }

              else
              {
                v261 = v321;
                v262 = v322;
              }

              v46 = v323;
              v263 = v323;
              v47 = sub_1000068BC(&v267, &v259);
              if (SHIBYTE(v262) < 0)
              {
                operator delete(v261);
              }

              if (SHIBYTE(v260) < 0)
              {
                operator delete(v259);
              }

              if (v256)
              {
                v257 = v256;
                operator delete(v256);
              }

              if (SHIBYTE(v270) < 0)
              {
                operator delete(v269);
              }

              if (SHIBYTE(v268) < 0)
              {
                operator delete(v267);
              }

              if (v264)
              {
                v265 = v264;
                operator delete(v264);
              }

              v40 += 40;
            }

            while (v47 < 0);
            v6 = (v40 - 76);
            v48 = v39;
            do
            {
              v248 = 0;
              v249 = 0;
              v250 = 0;
              v49 = *(v39 - 80);
              v50 = *(v39 - 72);
              v39 -= 80;
              sub_100034C50(&v248, v49, v50, v50 - v49);
              if (*(v48 - 33) < 0)
              {
                sub_100005F2C(&v251, *(v48 - 56), *(v48 - 48));
              }

              else
              {
                v51 = *(v48 - 56);
                v252 = *(v48 - 40);
                v251 = v51;
              }

              if (*(v48 - 9) < 0)
              {
                sub_100005F2C(&v253, *(v48 - 32), *(v48 - 24));
              }

              else
              {
                v52 = *(v48 - 32);
                v254 = *(v48 - 16);
                v253 = v52;
              }

              v255 = *(v48 - 8);
              v241 = 0;
              v242 = 0;
              v240 = 0;
              sub_100034C50(&v240, v43, *(&v43 + 1), *(&v43 + 1) - v43);
              if (v44 < 0)
              {
                sub_100005F2C(&v243, v319, *(&v319 + 1));
              }

              else
              {
                v243 = v319;
                v244 = v320;
              }

              if (v45 < 0)
              {
                sub_100005F2C(&v245, v321, *(&v321 + 1));
              }

              else
              {
                v245 = v321;
                v246 = v322;
              }

              v247 = v46;
              v53 = sub_1000068BC(&v251, &v243);
              if (SHIBYTE(v246) < 0)
              {
                operator delete(v245);
              }

              if (SHIBYTE(v244) < 0)
              {
                operator delete(v243);
              }

              if (v240)
              {
                v241 = v240;
                operator delete(v240);
              }

              if (SHIBYTE(v254) < 0)
              {
                operator delete(v253);
              }

              if (SHIBYTE(v252) < 0)
              {
                operator delete(v251);
              }

              if (v248)
              {
                v249 = v248;
                operator delete(v248);
              }

              v54 = v53;
              v48 = v39;
            }

            while ((v54 & 0x80000000) == 0);
          }

          while (v6 < v39);
          v9 = a1;
          v38 = v199;
        }

        v55 = (v6 - 80);
        a3 = v197;
        a2 = v198;
        if (v6 - 80 != v9)
        {
          sub_100015184(v9, (v6 - 80));
          if (*(v9 + 47) < 0)
          {
            operator delete(*(v9 + 24));
          }

          v56 = *(v6 - 56);
          *(v9 + 40) = *(v6 - 40);
          *(v9 + 24) = v56;
          *(v6 - 33) = 0;
          *(v6 - 56) = 0;
          if (*(v9 + 71) < 0)
          {
            operator delete(*(v9 + 48));
          }

          v57 = *(v6 - 32);
          *(v9 + 64) = *(v6 - 16);
          *(v9 + 48) = v57;
          *(v6 - 9) = 0;
          *(v6 - 32) = 0;
          *(v9 + 72) = *(v6 - 8);
        }

        v58 = *v55;
        if (*v55)
        {
          *(v6 - 72) = v58;
          operator delete(v58);
          *v55 = 0;
          *(v6 - 72) = 0;
          *(v6 - 64) = 0;
        }

        *(v6 - 80) = v317;
        *(v6 - 64) = v318;
        v317 = 0uLL;
        v318 = 0;
        v59 = (v6 - 56);
        if (*(v6 - 33) < 0)
        {
          operator delete(*v59);
        }

        v60 = v319;
        *(v6 - 40) = v320;
        *v59 = v60;
        HIBYTE(v320) = 0;
        LOBYTE(v319) = 0;
        v61 = (v6 - 32);
        if (*(v6 - 9) < 0)
        {
          operator delete(*v61);
        }

        v62 = v321;
        *(v6 - 16) = v322;
        *v61 = v62;
        HIBYTE(v322) = 0;
        LOBYTE(v321) = 0;
        *(v6 - 8) = v323;
        if (SHIBYTE(v322) < 0)
        {
          operator delete(v321);
        }

        if (SHIBYTE(v320) < 0)
        {
          operator delete(v319);
        }

        if (v317)
        {
          operator delete(v317);
        }

        if (v38 >= v204)
        {
          break;
        }

LABEL_200:
        sub_10113A900(v9, v6 - 80, v197, a4 & 1);
        a4 = 0;
      }

      v63 = sub_10113FC80(v9, v6 - 80);
      if (sub_10113FC80(v6, v198))
      {
        break;
      }

      if (!v63)
      {
        goto LABEL_200;
      }
    }

    a2 = v6 - 80;
    if (!v63)
    {
      continue;
    }

    break;
  }
}

void sub_10113D1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a41)
  {
    operator delete(a41);
  }

  sub_10113A8AC(&a54);
  _Unwind_Resume(a1);
}

void sub_10113D7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = 0;
  v86 = 0;
  v87 = 0;
  sub_100034C50(&v85, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v88, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v88 = *(a2 + 24);
    v89 = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(&v90, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v90 = *(a2 + 48);
    v91 = *(a2 + 64);
  }

  v92 = *(a2 + 72);
  v78 = 0;
  v79 = 0;
  v77 = 0;
  sub_100034C50(&v77, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&v80, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v80 = *(a1 + 24);
    v81 = *(a1 + 40);
  }

  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(&v82, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v82 = *(a1 + 48);
    v83 = *(a1 + 64);
  }

  v84 = *(a1 + 72);
  v6 = sub_1000068BC(&v88, &v80);
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v82);
  }

  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
  }

  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v6 < 0)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    sub_100034C50(&v37, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v40, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v40 = *(a3 + 24);
      v41 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v42, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v42 = *(a3 + 48);
      v43 = *(a3 + 64);
    }

    v44 = *(a3 + 72);
    v30 = 0;
    v31 = 0;
    v29 = 0;
    sub_100034C50(&v29, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v32, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v32 = *(a2 + 24);
      v33 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&v34, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v34 = *(a2 + 48);
      v35 = *(a2 + 64);
    }

    v36 = *(a2 + 72);
    v8 = sub_1000068BC(&v40, &v32);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v9 = a1;
    if ((v8 & 0x80000000) == 0)
    {
      sub_1011404EC(a1, a2);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      sub_100034C50(&v21, *a3, *(a3 + 8), *(a3 + 8) - *a3);
      if (*(a3 + 47) < 0)
      {
        sub_100005F2C(&v24, *(a3 + 24), *(a3 + 32));
      }

      else
      {
        v24 = *(a3 + 24);
        v25 = *(a3 + 40);
      }

      if (*(a3 + 71) < 0)
      {
        sub_100005F2C(&v26, *(a3 + 48), *(a3 + 56));
      }

      else
      {
        v26 = *(a3 + 48);
        v27 = *(a3 + 64);
      }

      v28 = *(a3 + 72);
      v14 = 0;
      v15 = 0;
      v13 = 0;
      sub_100034C50(&v13, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(v16, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        *v16 = *(a2 + 24);
        v17 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(v18, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        *v18 = *(a2 + 48);
        v19 = *(a2 + 64);
      }

      v20 = *(a2 + 72);
      v12 = sub_1000068BC(&v24, v16);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24);
      }

      if (v21)
      {
        v22 = v21;
        operator delete(v21);
      }

      if ((v12 & 0x80000000) == 0)
      {
        return;
      }

      v9 = a2;
    }

    v11 = a3;
    goto LABEL_129;
  }

  v70 = 0;
  v69 = 0;
  v71 = 0;
  sub_100034C50(&v69, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(&v72, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v72 = *(a3 + 24);
    v73 = *(a3 + 40);
  }

  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(&v74, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v74 = *(a3 + 48);
    v75 = *(a3 + 64);
  }

  v76 = *(a3 + 72);
  v62 = 0;
  v63 = 0;
  v61 = 0;
  sub_100034C50(&v61, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v64, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v64 = *(a2 + 24);
    v65 = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    __p = *(a2 + 48);
    v67 = *(a2 + 64);
  }

  v68 = *(a2 + 72);
  v7 = sub_1000068BC(&v72, &v64);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v74);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v7 < 0)
  {
    sub_1011404EC(a2, a3);
    v53 = 0;
    v54 = 0;
    v55 = 0;
    sub_100034C50(&v53, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v56, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v56 = *(a2 + 24);
      v57 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&v58, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v58 = *(a2 + 48);
      v59 = *(a2 + 64);
    }

    v60 = *(a2 + 72);
    v46 = 0;
    v47 = 0;
    v45 = 0;
    sub_100034C50(&v45, *a1, *(a1 + 8), *(a1 + 8) - *a1);
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(&v48, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v48 = *(a1 + 24);
      v49 = *(a1 + 40);
    }

    if (*(a1 + 71) < 0)
    {
      sub_100005F2C(&v50, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v50 = *(a1 + 48);
      v51 = *(a1 + 64);
    }

    v52 = *(a1 + 72);
    v10 = sub_1000068BC(&v56, &v48);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50);
    }

    if (SHIBYTE(v49) < 0)
    {
      operator delete(v48);
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58);
    }

    if (SHIBYTE(v57) < 0)
    {
      operator delete(v56);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    if (v10 < 0)
    {
      v9 = a1;
      v11 = a2;
LABEL_129:
      sub_1011404EC(v9, v11);
    }
  }
}

void sub_10113DF58(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  if (a2)
  {
    operator delete(a2);
  }

  sub_10113A8AC(va);
  _Unwind_Resume(a1);
}

void sub_10113E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10113D7D8(a1, a2, a3);
  v51 = 0;
  v52 = 0;
  v53 = 0;
  sub_100034C50(&v51, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  if (*(a4 + 47) < 0)
  {
    sub_100005F2C(&v54, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v54 = *(a4 + 24);
    v55 = *(a4 + 40);
  }

  if (*(a4 + 71) < 0)
  {
    sub_100005F2C(&v56, *(a4 + 48), *(a4 + 56));
  }

  else
  {
    v56 = *(a4 + 48);
    v57 = *(a4 + 64);
  }

  v58 = *(a4 + 72);
  v44 = 0;
  v45 = 0;
  v43 = 0;
  sub_100034C50(&v43, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(&v46, *(a3 + 24), *(a3 + 32));
  }

  else
  {
    v46 = *(a3 + 24);
    v47 = *(a3 + 40);
  }

  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(&v48, *(a3 + 48), *(a3 + 56));
  }

  else
  {
    v48 = *(a3 + 48);
    v49 = *(a3 + 64);
  }

  v50 = *(a3 + 72);
  v8 = sub_1000068BC(&v54, &v46);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }

  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v55) < 0)
  {
    operator delete(v54);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v8 < 0)
  {
    sub_1011404EC(a3, a4);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    sub_100034C50(&v35, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v38, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v38 = *(a3 + 24);
      v39 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v40, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v40 = *(a3 + 48);
      v41 = *(a3 + 64);
    }

    v42 = *(a3 + 72);
    v28 = 0;
    v29 = 0;
    v27 = 0;
    sub_100034C50(&v27, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v30, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v30 = *(a2 + 24);
      v31 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      __p = *(a2 + 48);
      v33 = *(a2 + 64);
    }

    v34 = *(a2 + 72);
    v9 = sub_1000068BC(&v38, &v30);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    if (v27)
    {
      v28 = v27;
      operator delete(v27);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v9 < 0)
    {
      sub_1011404EC(a2, a3);
      v19 = 0;
      v20 = 0;
      v21 = 0;
      sub_100034C50(&v19, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v22, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v22 = *(a2 + 24);
        v23 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(&v24, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v24 = *(a2 + 48);
        v25 = *(a2 + 64);
      }

      v26 = *(a2 + 72);
      v12 = 0;
      v13 = 0;
      v11 = 0;
      sub_100034C50(&v11, *a1, *(a1 + 8), *(a1 + 8) - *a1);
      if (*(a1 + 47) < 0)
      {
        sub_100005F2C(v14, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        *v14 = *(a1 + 24);
        v15 = *(a1 + 40);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(v16, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *v16 = *(a1 + 48);
        v17 = *(a1 + 64);
      }

      v18 = *(a1 + 72);
      v10 = sub_1000068BC(&v22, v14);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(v24);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }

      if (v19)
      {
        v20 = v19;
        operator delete(v19);
      }

      if (v10 < 0)
      {
        sub_1011404EC(a1, a2);
      }
    }
  }
}

void sub_10113E618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  sub_10113A8AC(&a22);
  _Unwind_Resume(a1);
}

void sub_10113E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10113E16C(a1, a2, a3, a4);
  v70 = 0;
  v71 = 0;
  v72 = 0;
  sub_100034C50(&v70, *a5, *(a5 + 8), *(a5 + 8) - *a5);
  if (*(a5 + 47) < 0)
  {
    sub_100005F2C(&v73, *(a5 + 24), *(a5 + 32));
  }

  else
  {
    v73 = *(a5 + 24);
    v74 = *(a5 + 40);
  }

  if (*(a5 + 71) < 0)
  {
    sub_100005F2C(&v75, *(a5 + 48), *(a5 + 56));
  }

  else
  {
    v75 = *(a5 + 48);
    v76 = *(a5 + 64);
  }

  v77 = *(a5 + 72);
  v63 = 0;
  v64 = 0;
  v62 = 0;
  sub_100034C50(&v62, *a4, *(a4 + 8), *(a4 + 8) - *a4);
  if (*(a4 + 47) < 0)
  {
    sub_100005F2C(&v65, *(a4 + 24), *(a4 + 32));
  }

  else
  {
    v65 = *(a4 + 24);
    v66 = *(a4 + 40);
  }

  if (*(a4 + 71) < 0)
  {
    sub_100005F2C(&v67, *(a4 + 48), *(a4 + 56));
  }

  else
  {
    v67 = *(a4 + 48);
    v68 = *(a4 + 64);
  }

  v69 = *(a4 + 72);
  v10 = sub_1000068BC(&v73, &v65);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (SHIBYTE(v76) < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v10 < 0)
  {
    sub_1011404EC(a4, a5);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    sub_100034C50(&v54, *a4, *(a4 + 8), *(a4 + 8) - *a4);
    if (*(a4 + 47) < 0)
    {
      sub_100005F2C(&v57, *(a4 + 24), *(a4 + 32));
    }

    else
    {
      v57 = *(a4 + 24);
      v58 = *(a4 + 40);
    }

    if (*(a4 + 71) < 0)
    {
      sub_100005F2C(&v59, *(a4 + 48), *(a4 + 56));
    }

    else
    {
      v59 = *(a4 + 48);
      v60 = *(a4 + 64);
    }

    v61 = *(a4 + 72);
    v47 = 0;
    v48 = 0;
    v46 = 0;
    sub_100034C50(&v46, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v49, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v49 = *(a3 + 24);
      v50 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&__p, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      __p = *(a3 + 48);
      v52 = *(a3 + 64);
    }

    v53 = *(a3 + 72);
    v11 = sub_1000068BC(&v57, &v49);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (v11 < 0)
    {
      sub_1011404EC(a3, a4);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      sub_100034C50(&v38, *a3, *(a3 + 8), *(a3 + 8) - *a3);
      if (*(a3 + 47) < 0)
      {
        sub_100005F2C(&v41, *(a3 + 24), *(a3 + 32));
      }

      else
      {
        v41 = *(a3 + 24);
        v42 = *(a3 + 40);
      }

      if (*(a3 + 71) < 0)
      {
        sub_100005F2C(&v43, *(a3 + 48), *(a3 + 56));
      }

      else
      {
        v43 = *(a3 + 48);
        v44 = *(a3 + 64);
      }

      v45 = *(a3 + 72);
      v31 = 0;
      v32 = 0;
      v30 = 0;
      sub_100034C50(&v30, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v33, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v33 = *(a2 + 24);
        v34 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(&v35, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v35 = *(a2 + 48);
        v36 = *(a2 + 64);
      }

      v37 = *(a2 + 72);
      v12 = sub_1000068BC(&v41, &v33);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(v35);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33);
      }

      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(v43);
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v12 < 0)
      {
        sub_1011404EC(a2, a3);
        v22 = 0;
        v23 = 0;
        v24 = 0;
        sub_100034C50(&v22, *a2, *(a2 + 8), *(a2 + 8) - *a2);
        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(&v25, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          v25 = *(a2 + 24);
          v26 = *(a2 + 40);
        }

        if (*(a2 + 71) < 0)
        {
          sub_100005F2C(&v27, *(a2 + 48), *(a2 + 56));
        }

        else
        {
          v27 = *(a2 + 48);
          v28 = *(a2 + 64);
        }

        v29 = *(a2 + 72);
        v15 = 0;
        v16 = 0;
        v14 = 0;
        sub_100034C50(&v14, *a1, *(a1 + 8), *(a1 + 8) - *a1);
        if (*(a1 + 47) < 0)
        {
          sub_100005F2C(v17, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *v17 = *(a1 + 24);
          v18 = *(a1 + 40);
        }

        if (*(a1 + 71) < 0)
        {
          sub_100005F2C(v19, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          *v19 = *(a1 + 48);
          v20 = *(a1 + 64);
        }

        v21 = *(a1 + 72);
        v13 = sub_1000068BC(&v25, v17);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(v27);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }

        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        if (v13 < 0)
        {
          sub_1011404EC(a1, a2);
        }
      }
    }
  }
}

void sub_10113ED80(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  if (a2)
  {
    operator delete(a2);
  }

  sub_10113A8AC(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10113EF2C(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  *&v125[8] = *(a1 + 8);
  v5 = *&v125[8];
  *a1 = 0;
  *(a1 + 8) = 0;
  v126 = *(a1 + 24);
  v6 = *(a1 + 40);
  *v125 = v4;
  v127 = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v128 = *(a1 + 48);
  v129 = *(a1 + 64);
  v130 = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  LOWORD(v130) = *(a1 + 72);
  v117 = 0;
  v118 = 0;
  v119 = 0;
  sub_100034C50(&v117, v4, v5, v5 - v4);
  if (SHIBYTE(v127) < 0)
  {
    sub_100005F2C(&v120, v126, *(&v126 + 1));
  }

  else
  {
    v120 = v126;
    v121 = v127;
  }

  if (SHIBYTE(v129) < 0)
  {
    sub_100005F2C(&v122, v128, *(&v128 + 1));
  }

  else
  {
    v122 = v128;
    v123 = v129;
  }

  v124 = v130;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  sub_100034C50(&v109, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
  if (*(a2 - 33) < 0)
  {
    sub_100005F2C(&v112, *(a2 - 56), *(a2 - 48));
  }

  else
  {
    v112 = *(a2 - 56);
    v113 = *(a2 - 40);
  }

  if (*(a2 - 9) < 0)
  {
    sub_100005F2C(&__p, *(a2 - 32), *(a2 - 24));
  }

  else
  {
    __p = *(a2 - 32);
    v115 = *(a2 - 16);
  }

  v116 = *(a2 - 8);
  v7 = sub_1000068BC(&v120, &v112);
  if (SHIBYTE(v115) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v113) < 0)
  {
    operator delete(v112);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (SHIBYTE(v123) < 0)
  {
    operator delete(v122);
  }

  if (SHIBYTE(v121) < 0)
  {
    operator delete(v120);
  }

  if (v117)
  {
    v118 = v117;
    operator delete(v117);
  }

  if (v7 < 0)
  {
    v10 = (a1 + 152);
    do
    {
      v102 = 0;
      v101 = 0;
      v103 = 0;
      sub_100034C50(&v101, *v125, *&v125[8], *&v125[8] - *v125);
      if (SHIBYTE(v127) < 0)
      {
        sub_100005F2C(&v104, v126, *(&v126 + 1));
      }

      else
      {
        v104 = v126;
        v105 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v106, v128, *(&v128 + 1));
      }

      else
      {
        v106 = v128;
        v107 = v129;
      }

      v108 = v130;
      v95 = 0;
      v93 = 0;
      v94 = 0;
      sub_100034C50(&v93, *(v10 - 9), *(v10 - 8), *(v10 - 8) - *(v10 - 9));
      if (*(v10 - 25) < 0)
      {
        sub_100005F2C(&v96, *(v10 - 6), *(v10 - 5));
      }

      else
      {
        v96 = *(v10 - 3);
        v97 = *(v10 - 4);
      }

      if (*(v10 - 1) < 0)
      {
        sub_100005F2C(&v98, *(v10 - 3), *(v10 - 2));
      }

      else
      {
        v98 = *(v10 - 12);
        v99 = *(v10 - 1);
      }

      v100 = *v10;
      v11 = sub_1000068BC(&v104, &v96);
      if (SHIBYTE(v99) < 0)
      {
        operator delete(v98);
      }

      if (SHIBYTE(v97) < 0)
      {
        operator delete(v96);
      }

      if (v93)
      {
        v94 = v93;
        operator delete(v93);
      }

      if (SHIBYTE(v107) < 0)
      {
        operator delete(v106);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(v104);
      }

      if (v101)
      {
        v102 = v101;
        operator delete(v101);
      }

      v10 += 40;
    }

    while ((v11 & 0x80000000) == 0);
    i = (v10 - 76);
  }

  else
  {
    for (i = a1 + 80; i < a2; i += 80)
    {
      v86 = 0;
      v85 = 0;
      v87 = 0;
      sub_100034C50(&v85, *v125, *&v125[8], *&v125[8] - *v125);
      if (SHIBYTE(v127) < 0)
      {
        sub_100005F2C(&v88, v126, *(&v126 + 1));
      }

      else
      {
        v88 = v126;
        v89 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v90, v128, *(&v128 + 1));
      }

      else
      {
        v90 = v128;
        v91 = v129;
      }

      v92 = v130;
      v78 = 0;
      v79 = 0;
      v77 = 0;
      sub_100034C50(&v77, *i, *(i + 8), *(i + 8) - *i);
      if (*(i + 47) < 0)
      {
        sub_100005F2C(&v80, *(i + 24), *(i + 32));
      }

      else
      {
        v80 = *(i + 24);
        v81 = *(i + 40);
      }

      if (*(i + 71) < 0)
      {
        sub_100005F2C(&v82, *(i + 48), *(i + 56));
      }

      else
      {
        v82 = *(i + 48);
        v83 = *(i + 64);
      }

      v84 = *(i + 72);
      v9 = sub_1000068BC(&v88, &v80);
      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82);
      }

      if (SHIBYTE(v81) < 0)
      {
        operator delete(v80);
      }

      if (v77)
      {
        v78 = v77;
        operator delete(v77);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(v88);
      }

      if (v85)
      {
        v86 = v85;
        operator delete(v85);
      }

      if (v9 < 0)
      {
        break;
      }
    }
  }

  if (i < a2)
  {
    do
    {
      v69 = 0;
      v70 = 0;
      v71 = 0;
      sub_100034C50(&v69, *v125, *&v125[8], *&v125[8] - *v125);
      if (SHIBYTE(v127) < 0)
      {
        sub_100005F2C(&v72, v126, *(&v126 + 1));
      }

      else
      {
        v72 = v126;
        v73 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v74, v128, *(&v128 + 1));
      }

      else
      {
        v74 = v128;
        v75 = v129;
      }

      v76 = v130;
      v62 = 0;
      v63 = 0;
      v61 = 0;
      sub_100034C50(&v61, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
      if (*(a2 - 33) < 0)
      {
        sub_100005F2C(&v64, *(a2 - 56), *(a2 - 48));
      }

      else
      {
        v64 = *(a2 - 56);
        v65 = *(a2 - 40);
      }

      if (*(a2 - 9) < 0)
      {
        sub_100005F2C(&v66, *(a2 - 32), *(a2 - 24));
      }

      else
      {
        v66 = *(a2 - 32);
        v67 = *(a2 - 16);
      }

      v68 = *(a2 - 8);
      v12 = sub_1000068BC(&v72, &v64);
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(v64);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v69)
      {
        v70 = v69;
        operator delete(v69);
      }

      a2 -= 80;
    }

    while (v12 < 0);
  }

  while (i < a2)
  {
    sub_1011404EC(i, a2);
    v13 = (i + 152);
    do
    {
      v53 = 0;
      v54 = 0;
      v55 = 0;
      sub_100034C50(&v53, *v125, *&v125[8], *&v125[8] - *v125);
      if (SHIBYTE(v127) < 0)
      {
        sub_100005F2C(&v56, v126, *(&v126 + 1));
      }

      else
      {
        v56 = v126;
        v57 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v58, v128, *(&v128 + 1));
      }

      else
      {
        v58 = v128;
        v59 = v129;
      }

      v60 = v130;
      v46 = 0;
      v47 = 0;
      v45 = 0;
      sub_100034C50(&v45, *(v13 - 9), *(v13 - 8), *(v13 - 8) - *(v13 - 9));
      if (*(v13 - 25) < 0)
      {
        sub_100005F2C(&v48, *(v13 - 6), *(v13 - 5));
      }

      else
      {
        v14 = *(v13 - 3);
        v49 = *(v13 - 4);
        v48 = v14;
      }

      if (*(v13 - 1) < 0)
      {
        sub_100005F2C(&v50, *(v13 - 3), *(v13 - 2));
      }

      else
      {
        v15 = *(v13 - 12);
        v51 = *(v13 - 1);
        v50 = v15;
      }

      v52 = *v13;
      v16 = sub_1000068BC(&v56, &v48);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56);
      }

      if (v53)
      {
        v54 = v53;
        operator delete(v53);
      }

      v13 += 40;
    }

    while ((v16 & 0x80000000) == 0);
    i = (v13 - 76);
    do
    {
      v37 = 0;
      v38 = 0;
      v39 = 0;
      sub_100034C50(&v37, *v125, *&v125[8], *&v125[8] - *v125);
      if (SHIBYTE(v127) < 0)
      {
        sub_100005F2C(&v40, v126, *(&v126 + 1));
      }

      else
      {
        v40 = v126;
        v41 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v42, v128, *(&v128 + 1));
      }

      else
      {
        v42 = v128;
        v43 = v129;
      }

      v44 = v130;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      sub_100034C50(&v29, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
      if (*(a2 - 33) < 0)
      {
        sub_100005F2C(&v32, *(a2 - 56), *(a2 - 48));
      }

      else
      {
        v17 = *(a2 - 56);
        v33 = *(a2 - 40);
        v32 = v17;
      }

      if (*(a2 - 9) < 0)
      {
        sub_100005F2C(&v34, *(a2 - 32), *(a2 - 24));
      }

      else
      {
        v18 = *(a2 - 32);
        v35 = *(a2 - 16);
        v34 = v18;
      }

      v36 = *(a2 - 8);
      v19 = sub_1000068BC(&v40, &v32);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (v29)
      {
        v30 = v29;
        operator delete(v29);
      }

      if (SHIBYTE(v43) < 0)
      {
        operator delete(v42);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      a2 -= 80;
    }

    while (v19 < 0);
  }

  v20 = (i - 80);
  if (i - 80 != a1)
  {
    sub_100015184(a1, (i - 80));
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v21 = *(i - 56);
    *(a1 + 40) = *(i - 40);
    *(a1 + 24) = v21;
    *(i - 33) = 0;
    *(i - 56) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v22 = *(i - 32);
    *(a1 + 64) = *(i - 16);
    *(a1 + 48) = v22;
    *(i - 9) = 0;
    *(i - 32) = 0;
    *(a1 + 72) = *(i - 8);
  }

  v23 = *v20;
  if (*v20)
  {
    *(i - 72) = v23;
    operator delete(v23);
    *v20 = 0;
    *(i - 72) = 0;
    *(i - 64) = 0;
  }

  *(i - 80) = *v125;
  *(i - 64) = *&v125[16];
  memset(v125, 0, sizeof(v125));
  v24 = (i - 56);
  if (*(i - 33) < 0)
  {
    operator delete(*v24);
  }

  v25 = v126;
  *(i - 40) = v127;
  *v24 = v25;
  HIBYTE(v127) = 0;
  LOBYTE(v126) = 0;
  v26 = (i - 32);
  if (*(i - 9) < 0)
  {
    operator delete(*v26);
  }

  v27 = v128;
  *(i - 16) = v129;
  *v26 = v27;
  HIBYTE(v129) = 0;
  LOBYTE(v128) = 0;
  *(i - 8) = v130;
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v128);
  }

  if (SHIBYTE(v127) < 0)
  {
    operator delete(v126);
  }

  if (*v125)
  {
    *&v125[8] = *v125;
    operator delete(*v125);
  }

  return i;
}

void sub_10113F9E0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  v3 = STACK[0x320];
  if (STACK[0x320])
  {
    STACK[0x328] = v3;
    operator delete(v3);
  }

  sub_10113A8AC(v1 - 240);
  sub_10113A8AC(v1 - 160);
  _Unwind_Resume(a1);
}

BOOL sub_10113FC80(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 4);
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 80);
        v6 = *(v2 - 72);
        v74 = 0;
        v75 = 0;
        v76 = 0;
        sub_100034C50(&v74, v5, v6, v6 - v5);
        if (*(v2 - 33) < 0)
        {
          sub_100005F2C(&v77, *(v2 - 56), *(v2 - 48));
        }

        else
        {
          v77 = *(v2 - 56);
          v78 = *(v2 - 40);
        }

        if (*(v2 - 9) < 0)
        {
          sub_100005F2C(&v79, *(v2 - 32), *(v2 - 24));
        }

        else
        {
          v79 = *(v2 - 32);
          v80 = *(v2 - 16);
        }

        v81 = *(v2 - 8);
        v67 = 0;
        v68 = 0;
        v66 = 0;
        sub_100034C50(&v66, *a1, *(a1 + 8), *(a1 + 8) - *a1);
        if (*(a1 + 47) < 0)
        {
          sub_100005F2C(&v69, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v69 = *(a1 + 24);
          v70 = *(a1 + 40);
        }

        if (*(a1 + 71) < 0)
        {
          sub_100005F2C(&v71, *(a1 + 48), *(a1 + 56));
        }

        else
        {
          v71 = *(a1 + 48);
          v72 = *(a1 + 64);
        }

        v73 = *(a1 + 72);
        v23 = sub_1000068BC(&v77, &v69);
        if (SHIBYTE(v72) < 0)
        {
          operator delete(v71);
        }

        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69);
        }

        if (v66)
        {
          v67 = v66;
          operator delete(v66);
        }

        if (SHIBYTE(v80) < 0)
        {
          operator delete(v79);
        }

        if (SHIBYTE(v78) < 0)
        {
          operator delete(v77);
        }

        if (v74)
        {
          v75 = v74;
          operator delete(v74);
        }

        if (v23 < 0)
        {
          sub_1011404EC(a1, v2 - 80);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_10113D7D8(a1, a1 + 80, a2 - 80);
      return 1;
    case 4:
      sub_10113E16C(a1, a1 + 80, a1 + 160, a2 - 80);
      return 1;
    case 5:
      sub_10113E75C(a1, a1 + 80, a1 + 160, a1 + 240, a2 - 80);
      return 1;
  }

LABEL_11:
  v7 = a1 + 160;
  sub_10113D7D8(a1, a1 + 80, a1 + 160);
  v8 = a1 + 240;
  if (a1 + 240 == v2)
  {
    return 1;
  }

  v9 = 0;
  v26 = 0;
  v25 = v2;
  while (1)
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_100034C50(&v58, *v8, *(v8 + 8), *(v8 + 8) - *v8);
    if (*(v8 + 47) < 0)
    {
      sub_100005F2C(&v61, *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v61 = *(v8 + 24);
      v62 = *(v8 + 40);
    }

    if (*(v8 + 71) < 0)
    {
      sub_100005F2C(&v63, *(v8 + 48), *(v8 + 56));
    }

    else
    {
      v63 = *(v8 + 48);
      v64 = *(v8 + 64);
    }

    v65 = *(v8 + 72);
    v51 = 0;
    v52 = 0;
    v50 = 0;
    sub_100034C50(&v50, *v7, *(v7 + 8), *(v7 + 8) - *v7);
    if (*(v7 + 47) < 0)
    {
      sub_100005F2C(&v53, *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v10 = *(v7 + 24);
      v54 = *(v7 + 40);
      v53 = v10;
    }

    if (*(v7 + 71) < 0)
    {
      sub_100005F2C(&__p, *(v7 + 48), *(v7 + 56));
    }

    else
    {
      v11 = *(v7 + 48);
      v56 = *(v7 + 64);
      __p = v11;
    }

    v57 = *(v7 + 72);
    v12 = sub_1000068BC(&v61, &v53);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v12 < 0)
    {
      v43 = *v8;
      v13 = *(v8 + 16);
      v49 = 0;
      v44 = v13;
      *v8 = 0;
      *(v8 + 8) = 0;
      v45 = *(v8 + 24);
      v46 = *(v8 + 40);
      *(v8 + 16) = 0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      v47 = *(v8 + 48);
      v48 = *(v8 + 64);
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      LOWORD(v49) = *(v8 + 72);
      v14 = v9;
      *(v8 + 48) = 0;
      while (1)
      {
        v15 = a1 + v14;
        sub_100015184(a1 + v14 + 240, (a1 + v14 + 160));
        v16 = (a1 + v14 + 264);
        if (*(a1 + v14 + 287) < 0)
        {
          operator delete(*v16);
        }

        *v16 = *(v15 + 184);
        *(v15 + 280) = *(v15 + 200);
        *(v15 + 207) = 0;
        *(v15 + 184) = 0;
        if (*(v15 + 311) < 0)
        {
          operator delete(*(v15 + 288));
        }

        v17 = a1 + v14;
        *(v15 + 288) = *(a1 + v14 + 208);
        *(v15 + 304) = *(a1 + v14 + 224);
        *(v17 + 231) = 0;
        *(v17 + 208) = 0;
        *(v17 + 312) = *(a1 + v14 + 232);
        if (v14 == -160)
        {
          v21 = a1;
          goto LABEL_72;
        }

        v35 = 0;
        v36 = 0;
        v37 = 0;
        sub_100034C50(&v35, v43, *(&v43 + 1), *(&v43 + 1) - v43);
        if (SHIBYTE(v46) < 0)
        {
          sub_100005F2C(&v38, v45, *(&v45 + 1));
        }

        else
        {
          v38 = v45;
          v39 = v46;
        }

        if (SHIBYTE(v48) < 0)
        {
          sub_100005F2C(&v40, v47, *(&v47 + 1));
        }

        else
        {
          v40 = v47;
          v41 = v48;
        }

        v42 = v49;
        v18 = a1 + v14;
        v28 = 0;
        v29 = 0;
        v27 = 0;
        sub_100034C50(&v27, *(a1 + v14 + 80), *(a1 + v14 + 88), *(a1 + v14 + 88) - *(a1 + v14 + 80));
        if (*(a1 + v14 + 127) < 0)
        {
          sub_100005F2C(&v30, *(v18 + 104), *(a1 + v14 + 112));
        }

        else
        {
          v30 = *(v18 + 104);
          v31 = *(v18 + 120);
        }

        v19 = a1 + v14;
        if (*(a1 + v14 + 151) < 0)
        {
          sub_100005F2C(&v32, *(v19 + 128), *(v19 + 136));
        }

        else
        {
          v32 = *(v19 + 128);
          v33 = *(v19 + 144);
        }

        v34 = *(a1 + v14 + 152);
        v20 = sub_1000068BC(&v38, &v30);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        if (v27)
        {
          v28 = v27;
          operator delete(v27);
        }

        if (SHIBYTE(v41) < 0)
        {
          operator delete(v40);
        }

        if (SHIBYTE(v39) < 0)
        {
          operator delete(v38);
        }

        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        v14 -= 80;
      }

      v21 = a1 + v14 + 160;
LABEL_72:
      v22 = *v21;
      v2 = v25;
      if (*v21)
      {
        *(v21 + 8) = v22;
        operator delete(v22);
        *v21 = 0;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
      }

      *v21 = v43;
      *(v21 + 16) = v44;
      v44 = 0;
      v43 = 0uLL;
      if (*(v21 + 47) < 0)
      {
        operator delete(*(v17 + 184));
      }

      *(v17 + 200) = v46;
      *(v17 + 184) = v45;
      HIBYTE(v46) = 0;
      LOBYTE(v45) = 0;
      if (*(v21 + 71) < 0)
      {
        operator delete(*(v17 + 208));
      }

      *(v17 + 208) = v47;
      *(v17 + 224) = v48;
      *(v21 + 72) = v49;
      if (++v26 == 8)
      {
        return v8 + 80 == v25;
      }
    }

    v7 = v8;
    v9 += 80;
    v8 += 80;
    if (v8 == v2)
    {
      return 1;
    }
  }
}

void sub_101140394(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  v3 = *(v1 - 248);
  if (v3)
  {
    *(v1 - 240) = v3;
    operator delete(v3);
  }

  sub_10113A8AC(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_1011404EC(uint64_t a1, uint64_t a2)
{
  v15 = *a1;
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = a1 + 24;
  v5 = *(a1 + 24);
  *v17 = *(a1 + 32);
  *&v17[7] = *(a1 + 39);
  v7 = *(a1 + 47);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v9 = a1 + 48;
  v8 = *(a1 + 48);
  *&v16[7] = *(a1 + 63);
  *v16 = *(a1 + 56);
  v10 = *(a1 + 71);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v11 = *(a1 + 72);
  sub_100015184(a1, a2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v12 = *(a2 + 24);
  *(v6 + 16) = *(a2 + 40);
  *v6 = v12;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*v9);
  }

  v13 = *(a2 + 48);
  *(v9 + 16) = *(a2 + 64);
  *v9 = v13;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  v14 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v14;
    operator delete(v14);
  }

  *a2 = v15;
  *(a2 + 16) = v4;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = *v17;
  *(a2 + 39) = *&v17[7];
  *(a2 + 47) = v7;
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  *(a2 + 48) = v8;
  *(a2 + 56) = *v16;
  *(a2 + 63) = *&v16[7];
  *(a2 + 71) = v10;
  *(a2 + 72) = v11;
}

void sub_101140688(unint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v278 = a2 - 160;
  v279 = a2 - 80;
  v277 = a2 - 240;
  v7 = a1;
  v281 = a2;
  while (1)
  {
    v8 = v7;
    v9 = a2 - v7;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - v7) >> 4);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:
          sub_1011439D4(v7, v7 + 80, v279);
          return;
        case 4:
          sub_101144498(v7, v7 + 80, v7 + 160, v279);
          return;
        case 5:
          sub_101144B34(v7, v7 + 80, v7 + 160, v7 + 240, v279);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v314 = 0;
        v315 = 0;
        v316 = 0;
        sub_100034C50(&v314, *(a2 - 80), *(a2 - 72), *(a2 - 72) - *(a2 - 80));
        if (*(a2 - 33) < 0)
        {
          sub_100005F2C(&v317, *(a2 - 56), *(a2 - 48));
        }

        else
        {
          v101 = *(a2 - 56);
          v318 = *(a2 - 40);
          v317 = v101;
        }

        if (*(a2 - 9) < 0)
        {
          sub_100005F2C(&v319, *(a2 - 32), *(a2 - 24));
        }

        else
        {
          v268 = *(a2 - 32);
          v320 = *(a2 - 16);
          v319 = v268;
        }

        v321 = *(a2 - 8);
        v307 = 0;
        v308 = 0;
        v306 = 0;
        sub_100034C50(&v306, *v7, *(v7 + 8), *(v7 + 8) - *v7);
        if (*(v7 + 47) < 0)
        {
          sub_100005F2C(&v309, *(v7 + 24), *(v7 + 32));
        }

        else
        {
          v269 = *(v7 + 24);
          v310 = *(v7 + 40);
          v309 = v269;
        }

        if (*(v7 + 71) < 0)
        {
          sub_100005F2C(&v311, *(v7 + 48), *(v7 + 56));
        }

        else
        {
          v270 = *(v7 + 48);
          v312 = *(v7 + 64);
          v311 = v270;
        }

        v313 = *(v7 + 72);
        v271 = v314;
        v272 = v306;
        if (v307 - v306 >= v315 - v314)
        {
          v273 = v315 - v314;
        }

        else
        {
          v273 = v307 - v306;
        }

        if (v273 < 1)
        {
LABEL_761:
          v276 = v315 - v314 < v307 - v306;
        }

        else
        {
          while (1)
          {
            v274 = *v271;
            v275 = *v272;
            if (v274 != v275)
            {
              break;
            }

            ++v271;
            ++v272;
            if (!--v273)
            {
              goto LABEL_761;
            }
          }

          v276 = v274 < v275;
        }

        if (SHIBYTE(v312) < 0)
        {
          operator delete(v311);
        }

        if (SHIBYTE(v310) < 0)
        {
          operator delete(v309);
        }

        if (v306)
        {
          v307 = v306;
          operator delete(v306);
        }

        if (SHIBYTE(v320) < 0)
        {
          operator delete(v319);
        }

        if (SHIBYTE(v318) < 0)
        {
          operator delete(v317);
        }

        if (v314)
        {
          v315 = v314;
          operator delete(v314);
        }

        if (v276)
        {
          sub_1011404EC(v7, a2 - 80);
        }

        return;
      }
    }

    v285 = v7;
    if (v9 <= 1919)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == a2)
      {
        return;
      }

      v127 = (v10 - 2) >> 1;
      v287 = v127;
      while (1)
      {
        v128 = v127;
        if (v287 < v127)
        {
          goto LABEL_510;
        }

        v129 = (2 * v127) | 1;
        v130 = v8 + 80 * v129;
        if (2 * v127 + 2 >= v10)
        {
          goto LABEL_394;
        }

        v399 = 0uLL;
        v400 = 0;
        sub_100034C50(&v399, *v130, *(v130 + 8), *(v130 + 8) - *v130);
        if (*(v130 + 47) < 0)
        {
          sub_100005F2C(&v401, *(v130 + 24), *(v130 + 32));
        }

        else
        {
          v131 = *(v130 + 24);
          v402 = *(v130 + 40);
          v401 = v131;
        }

        if (*(v130 + 71) < 0)
        {
          sub_100005F2C(&v403, *(v130 + 48), *(v130 + 56));
        }

        else
        {
          v132 = *(v130 + 48);
          v404 = *(v130 + 64);
          v403 = v132;
        }

        LOWORD(v405) = *(v130 + 72);
        v392 = 0;
        v393 = 0;
        v391 = 0;
        sub_100034C50(&v391, *(v130 + 80), *(v130 + 88), *(v130 + 88) - *(v130 + 80));
        if (*(v130 + 127) < 0)
        {
          sub_100005F2C(&v394, *(v130 + 104), *(v130 + 112));
        }

        else
        {
          v133 = *(v130 + 104);
          v395 = *(v130 + 120);
          v394 = v133;
        }

        if (*(v130 + 151) < 0)
        {
          sub_100005F2C(&v396, *(v130 + 128), *(v130 + 136));
        }

        else
        {
          v134 = *(v130 + 128);
          v397 = *(v130 + 144);
          v396 = v134;
        }

        v398 = *(v130 + 152);
        v135 = v399;
        v136 = v391;
        v137 = v392 - v391 >= *(&v399 + 1) - v399 ? *(&v399 + 1) - v399 : v392 - v391;
        if (v137 < 1)
        {
LABEL_379:
          v140 = *(&v399 + 1) - v399 < v392 - v391;
        }

        else
        {
          while (1)
          {
            v138 = *v135;
            v139 = *v136;
            if (v138 != v139)
            {
              break;
            }

            ++v135;
            ++v136;
            if (!--v137)
            {
              goto LABEL_379;
            }
          }

          v140 = v138 < v139;
        }

        if (SHIBYTE(v397) < 0)
        {
          operator delete(v396);
        }

        if (SHIBYTE(v395) < 0)
        {
          operator delete(v394);
        }

        if (v391)
        {
          v392 = v391;
          operator delete(v391);
        }

        if (SHIBYTE(v404) < 0)
        {
          operator delete(v403);
        }

        if (SHIBYTE(v402) < 0)
        {
          operator delete(v401);
        }

        if (!v399)
        {
          break;
        }

        *(&v399 + 1) = v399;
        operator delete(v399);
        if (v140)
        {
          goto LABEL_393;
        }

LABEL_394:
        v384[1] = 0;
        v384[0] = 0;
        v385 = 0;
        sub_100034C50(v384, *v130, *(v130 + 8), *(v130 + 8) - *v130);
        if (*(v130 + 47) < 0)
        {
          sub_100005F2C(&__src, *(v130 + 24), *(v130 + 32));
        }

        else
        {
          v141 = *(v130 + 24);
          v387 = *(v130 + 40);
          __src = v141;
        }

        if (*(v130 + 71) < 0)
        {
          sub_100005F2C(&v388, *(v130 + 48), *(v130 + 56));
        }

        else
        {
          v142 = *(v130 + 48);
          v389 = *(v130 + 64);
          v388 = v142;
        }

        v143 = v8 + 80 * v128;
        LOWORD(v390) = *(v130 + 72);
        v378 = 0;
        v376 = 0;
        v377 = 0;
        sub_100034C50(&v376, *v143, *(v143 + 8), *(v143 + 8) - *v143);
        if (*(v143 + 47) < 0)
        {
          sub_100005F2C(&v379, *(v143 + 24), *(v143 + 32));
        }

        else
        {
          v144 = *(v143 + 24);
          v380 = *(v143 + 40);
          v379 = v144;
        }

        if (*(v143 + 71) < 0)
        {
          sub_100005F2C(&v381, *(v143 + 48), *(v143 + 56));
        }

        else
        {
          v145 = *(v143 + 48);
          v382 = *(v143 + 64);
          v381 = v145;
        }

        v383 = *(v143 + 72);
        v146 = v384[0];
        v147 = v376;
        if (v377 - v376 >= v384[1] - v384[0])
        {
          v148 = v384[1] - v384[0];
        }

        else
        {
          v148 = v377 - v376;
        }

        if (v148 < 1)
        {
LABEL_412:
          v151 = v384[1] - v384[0] < v377 - v376;
        }

        else
        {
          while (1)
          {
            v149 = *v146;
            v150 = *v147;
            if (v149 != v150)
            {
              break;
            }

            ++v146;
            ++v147;
            if (!--v148)
            {
              goto LABEL_412;
            }
          }

          v151 = v149 < v150;
        }

        if (SHIBYTE(v382) < 0)
        {
          operator delete(v381);
        }

        if (SHIBYTE(v380) < 0)
        {
          operator delete(v379);
        }

        if (v376)
        {
          v377 = v376;
          operator delete(v376);
        }

        if (SHIBYTE(v389) < 0)
        {
          operator delete(v388);
        }

        if (SHIBYTE(v387) < 0)
        {
          operator delete(__src);
        }

        if (v384[0])
        {
          v384[1] = v384[0];
          operator delete(v384[0]);
        }

        if (!v151)
        {
          v284 = v128;
          v375 = 0;
          *v369 = *v143;
          v370 = *(v143 + 16);
          *v143 = 0;
          *(v143 + 8) = 0;
          *(v143 + 16) = 0;
          v152 = *(v143 + 24);
          v372 = *(v143 + 40);
          v371 = v152;
          *(v143 + 32) = 0;
          *(v143 + 40) = 0;
          *(v143 + 24) = 0;
          v153 = *(v143 + 48);
          v374 = *(v143 + 64);
          v373 = v153;
          *(v143 + 56) = 0;
          *(v143 + 64) = 0;
          *(v143 + 48) = 0;
          LOWORD(v375) = *(v143 + 72);
          while (1)
          {
            v154 = v130;
            sub_100015184(v143, v130);
            if (*(v143 + 47) < 0)
            {
              operator delete(*(v143 + 24));
            }

            v155 = *(v130 + 24);
            *(v143 + 40) = *(v130 + 40);
            *(v143 + 24) = v155;
            *(v130 + 47) = 0;
            *(v130 + 24) = 0;
            if (*(v143 + 71) < 0)
            {
              operator delete(*(v143 + 48));
            }

            v156 = *(v130 + 48);
            *(v143 + 64) = *(v130 + 64);
            *(v143 + 48) = v156;
            *(v130 + 71) = 0;
            *(v130 + 48) = 0;
            *(v143 + 72) = *(v130 + 72);
            if (v287 < v129)
            {
LABEL_503:
              v177 = *v154;
              if (*v154)
              {
                *(v154 + 8) = v177;
                operator delete(v177);
                *v154 = 0;
                *(v154 + 8) = 0;
                *(v154 + 16) = 0;
              }

              *v154 = *v369;
              *(v154 + 16) = v370;
              if (*(v154 + 47) < 0)
              {
                operator delete(*(v154 + 24));
              }

              v178 = v371;
              *(v154 + 40) = v372;
              *(v154 + 24) = v178;
              v128 = v284;
              if (*(v154 + 71) < 0)
              {
                operator delete(*(v154 + 48));
              }

              v179 = v373;
              *(v154 + 64) = v374;
              *(v154 + 48) = v179;
              *(v154 + 72) = v375;
              break;
            }

            v157 = 2 * v129;
            v129 = (2 * v129) | 1;
            v130 = v8 + 80 * v129;
            v158 = v157 + 2;
            if (v157 + 2 < v10)
            {
              v362[1] = 0;
              v362[0] = 0;
              v363 = 0;
              sub_100034C50(v362, *v130, *(v130 + 8), *(v130 + 8) - *v130);
              if (*(v130 + 47) < 0)
              {
                sub_100005F2C(&v364, *(v130 + 24), *(v130 + 32));
              }

              else
              {
                v159 = *(v130 + 24);
                v365 = *(v130 + 40);
                v364 = v159;
              }

              if (*(v130 + 71) < 0)
              {
                sub_100005F2C(&v366, *(v130 + 48), *(v130 + 56));
              }

              else
              {
                v160 = *(v130 + 48);
                v367 = *(v130 + 64);
                v366 = v160;
              }

              LOWORD(v368) = *(v130 + 72);
              v356 = 0;
              v354 = 0;
              v355 = 0;
              sub_100034C50(&v354, *(v130 + 80), *(v130 + 88), *(v130 + 88) - *(v130 + 80));
              if (*(v130 + 127) < 0)
              {
                sub_100005F2C(&v357, *(v130 + 104), *(v130 + 112));
              }

              else
              {
                v161 = *(v130 + 104);
                v358 = *(v130 + 120);
                v357 = v161;
              }

              if (*(v130 + 151) < 0)
              {
                sub_100005F2C(&v359, *(v130 + 128), *(v130 + 136));
              }

              else
              {
                v162 = *(v130 + 128);
                v360 = *(v130 + 144);
                v359 = v162;
              }

              v361 = *(v130 + 152);
              v163 = v362[0];
              v164 = v354;
              if (v355 - v354 >= v362[1] - v362[0])
              {
                v165 = v362[1] - v362[0];
              }

              else
              {
                v165 = v355 - v354;
              }

              if (v165 < 1)
              {
LABEL_452:
                v168 = v362[1] - v362[0] < v355 - v354;
              }

              else
              {
                while (1)
                {
                  v166 = *v163;
                  v167 = *v164;
                  if (v166 != v167)
                  {
                    break;
                  }

                  ++v163;
                  ++v164;
                  if (!--v165)
                  {
                    goto LABEL_452;
                  }
                }

                v168 = v166 < v167;
              }

              if (SHIBYTE(v360) < 0)
              {
                operator delete(v359);
              }

              if (SHIBYTE(v358) < 0)
              {
                operator delete(v357);
              }

              if (v354)
              {
                v355 = v354;
                operator delete(v354);
              }

              if (SHIBYTE(v367) < 0)
              {
                operator delete(v366);
              }

              if (SHIBYTE(v365) < 0)
              {
                operator delete(v364);
              }

              if (!v362[0])
              {
                if (!v168)
                {
                  goto LABEL_467;
                }

LABEL_466:
                v130 += 80;
                v129 = v158;
                goto LABEL_467;
              }

              v362[1] = v362[0];
              operator delete(v362[0]);
              if (v168)
              {
                goto LABEL_466;
              }
            }

LABEL_467:
            v347 = 0;
            v346 = 0;
            v348 = 0;
            sub_100034C50(&v346, *v130, *(v130 + 8), *(v130 + 8) - *v130);
            v8 = v7;
            if (*(v130 + 47) < 0)
            {
              sub_100005F2C(&v349, *(v130 + 24), *(v130 + 32));
            }

            else
            {
              v169 = *(v130 + 24);
              v350 = *(v130 + 40);
              v349 = v169;
            }

            if (*(v130 + 71) < 0)
            {
              sub_100005F2C(&v351, *(v130 + 48), *(v130 + 56));
            }

            else
            {
              v170 = *(v130 + 48);
              v352 = *(v130 + 64);
              v351 = v170;
            }

            v353 = *(v130 + 72);
            v340 = 0;
            v338 = 0;
            v339 = 0;
            sub_100034C50(&v338, v369[0], v369[1], v369[1] - v369[0]);
            if (SHIBYTE(v372) < 0)
            {
              sub_100005F2C(&v341, v371, *(&v371 + 1));
            }

            else
            {
              v341 = v371;
              v342 = v372;
            }

            if (SHIBYTE(v374) < 0)
            {
              sub_100005F2C(&v343, v373, *(&v373 + 1));
            }

            else
            {
              v343 = v373;
              v344 = v374;
            }

            v345 = v375;
            v171 = v346;
            v172 = v338;
            if (v339 - v338 >= v347 - v346)
            {
              v173 = v347 - v346;
            }

            else
            {
              v173 = v339 - v338;
            }

            if (v173 < 1)
            {
LABEL_485:
              v176 = v347 - v346 < v339 - v338;
            }

            else
            {
              while (1)
              {
                v174 = *v171;
                v175 = *v172;
                if (v174 != v175)
                {
                  break;
                }

                ++v171;
                ++v172;
                if (!--v173)
                {
                  goto LABEL_485;
                }
              }

              v176 = v174 < v175;
            }

            if (SHIBYTE(v344) < 0)
            {
              operator delete(v343);
            }

            if (SHIBYTE(v342) < 0)
            {
              operator delete(v341);
            }

            if (v338)
            {
              v339 = v338;
              operator delete(v338);
            }

            if (SHIBYTE(v352) < 0)
            {
              operator delete(v351);
            }

            if (SHIBYTE(v350) < 0)
            {
              operator delete(v349);
            }

            if (v346)
            {
              v347 = v346;
              operator delete(v346);
            }

            v143 = v154;
            if (v176)
            {
              goto LABEL_503;
            }
          }
        }

LABEL_510:
        v127 = v128 - 1;
        if (!v128)
        {
          v180 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 4);
          v181 = v281;
          while (1)
          {
            v182 = 0;
            v368 = 0;
            v288 = v181;
            *v362 = *v8;
            v363 = *(v8 + 16);
            *v8 = 0;
            *(v8 + 8) = 0;
            *(v8 + 16) = 0;
            v183 = *(v8 + 24);
            v365 = *(v8 + 40);
            v364 = v183;
            *(v8 + 32) = 0;
            *(v8 + 40) = 0;
            *(v8 + 24) = 0;
            v184 = *(v8 + 48);
            v367 = *(v8 + 64);
            v366 = v184;
            *(v8 + 48) = 0;
            *(v8 + 56) = 0;
            *(v8 + 64) = 0;
            v185 = v8;
            LOWORD(v368) = *(v8 + 72);
            do
            {
              v186 = v185 + 80 * v182;
              v187 = v186 + 80;
              v188 = 2 * v182;
              v182 = (2 * v182) | 1;
              v189 = v188 + 2;
              if (v188 + 2 >= v180)
              {
                goto LABEL_549;
              }

              v399 = 0uLL;
              v400 = 0;
              sub_100034C50(&v399, *(v186 + 80), *(v186 + 88), *(v186 + 88) - *(v186 + 80));
              if (*(v186 + 127) < 0)
              {
                sub_100005F2C(&v401, *(v186 + 104), *(v186 + 112));
              }

              else
              {
                v190 = *(v186 + 104);
                v402 = *(v186 + 120);
                v401 = v190;
              }

              if (*(v186 + 151) < 0)
              {
                sub_100005F2C(&v403, *(v186 + 128), *(v186 + 136));
              }

              else
              {
                v191 = *(v186 + 128);
                v404 = *(v186 + 144);
                v403 = v191;
              }

              LOWORD(v405) = *(v186 + 152);
              v392 = 0;
              v393 = 0;
              v391 = 0;
              v192 = v186 + 160;
              sub_100034C50(&v391, *(v186 + 160), *(v186 + 168), *(v186 + 168) - *(v186 + 160));
              if (*(v186 + 207) < 0)
              {
                sub_100005F2C(&v394, *(v186 + 184), *(v186 + 192));
              }

              else
              {
                v193 = *(v186 + 184);
                v395 = *(v186 + 200);
                v394 = v193;
              }

              if (*(v186 + 231) < 0)
              {
                sub_100005F2C(&v396, *(v186 + 208), *(v186 + 216));
              }

              else
              {
                v194 = *(v186 + 208);
                v397 = *(v186 + 224);
                v396 = v194;
              }

              v398 = *(v186 + 232);
              v195 = v399;
              v196 = v391;
              if (v392 - v391 >= *(&v399 + 1) - v399)
              {
                v197 = *(&v399 + 1) - v399;
              }

              else
              {
                v197 = v392 - v391;
              }

              if (v197 < 1)
              {
LABEL_534:
                v200 = *(&v399 + 1) - v399 < v392 - v391;
              }

              else
              {
                while (1)
                {
                  v198 = *v195;
                  v199 = *v196;
                  if (v198 != v199)
                  {
                    break;
                  }

                  ++v195;
                  ++v196;
                  if (!--v197)
                  {
                    goto LABEL_534;
                  }
                }

                v200 = v198 < v199;
              }

              if (SHIBYTE(v397) < 0)
              {
                operator delete(v396);
              }

              if (SHIBYTE(v395) < 0)
              {
                operator delete(v394);
              }

              if (v391)
              {
                v392 = v391;
                operator delete(v391);
              }

              if (SHIBYTE(v404) < 0)
              {
                operator delete(v403);
              }

              if (SHIBYTE(v402) < 0)
              {
                operator delete(v401);
              }

              if (v399)
              {
                *(&v399 + 1) = v399;
                operator delete(v399);
                if (!v200)
                {
                  goto LABEL_549;
                }

LABEL_548:
                v187 = v192;
                v182 = v189;
                goto LABEL_549;
              }

              if (v200)
              {
                goto LABEL_548;
              }

LABEL_549:
              sub_100015184(v185, v187);
              if (*(v185 + 47) < 0)
              {
                operator delete(*(v185 + 24));
              }

              v201 = *(v187 + 24);
              *(v185 + 40) = *(v187 + 40);
              *(v185 + 24) = v201;
              *(v187 + 47) = 0;
              *(v187 + 24) = 0;
              if (*(v185 + 71) < 0)
              {
                operator delete(*(v185 + 48));
              }

              v202 = *(v187 + 48);
              *(v185 + 64) = *(v187 + 64);
              *(v185 + 48) = v202;
              *(v187 + 71) = 0;
              *(v187 + 48) = 0;
              *(v185 + 72) = *(v187 + 72);
              v185 = v187;
            }

            while (v182 <= ((v180 - 2) >> 1));
            v181 = v288 - 5;
            if (v187 == &v288[-5])
            {
              v214 = *v187;
              v8 = v7;
              if (*v187)
              {
                *(v187 + 8) = v214;
                operator delete(v214);
                *v187 = 0;
                *(v187 + 8) = 0;
                *(v187 + 16) = 0;
              }

              *v187 = *v362;
              *(v187 + 16) = v363;
              v362[1] = 0;
              v362[0] = 0;
              v363 = 0;
              if (*(v187 + 47) < 0)
              {
                operator delete(*(v187 + 24));
              }

              v215 = v364;
              *(v187 + 40) = v365;
              *(v187 + 24) = v215;
              HIBYTE(v365) = 0;
              LOBYTE(v364) = 0;
              if (*(v187 + 71) < 0)
              {
                operator delete(*(v187 + 48));
              }

              v216 = v366;
              *(v187 + 64) = v367;
              *(v187 + 48) = v216;
              *(v187 + 72) = v368;
            }

            else
            {
              sub_100015184(v187, v288 - 5);
              v8 = v7;
              if (*(v187 + 47) < 0)
              {
                operator delete(*(v187 + 24));
              }

              v203 = &v288[-4].n128_u64[1];
              v204 = *(&v288[-4] + 8);
              *(v187 + 40) = v288[-3].n128_u64[1];
              *(v187 + 24) = v204;
              v288[-3].n128_u8[15] = 0;
              v288[-4].n128_u8[8] = 0;
              if (*(v187 + 71) < 0)
              {
                operator delete(*(v187 + 48));
              }

              v205 = v288[-2];
              *(v187 + 64) = v288[-1].n128_u64[0];
              *(v187 + 48) = v205;
              v288[-1].n128_u8[7] = 0;
              v288[-2].n128_u8[0] = 0;
              *(v187 + 72) = v288[-1].n128_u16[4];
              v206 = v288[-5].n128_u64[0];
              if (v206)
              {
                v288[-5].n128_u64[1] = v206;
                operator delete(v206);
                v181->n128_u64[0] = 0;
                v288[-5].n128_u64[1] = 0;
                v288[-4].n128_u64[0] = 0;
              }

              v288[-5] = *v362;
              v288[-4].n128_u64[0] = v363;
              v362[1] = 0;
              v362[0] = 0;
              v363 = 0;
              if (v288[-3].n128_i8[15] < 0)
              {
                operator delete(*v203);
              }

              v207 = &v288[-2];
              v208 = v364;
              v288[-3].n128_u64[1] = v365;
              *v203 = v208;
              HIBYTE(v365) = 0;
              LOBYTE(v364) = 0;
              if (v288[-1].n128_i8[7] < 0)
              {
                operator delete(*v207);
              }

              v209 = v366;
              v288[-1].n128_u64[0] = v367;
              *v207 = v209;
              HIBYTE(v367) = 0;
              LOBYTE(v366) = 0;
              v288[-1].n128_u16[4] = v368;
              v210 = v187 + 80 - v7;
              if (v210 >= 81)
              {
                v211 = (-2 - 0x3333333333333333 * (v210 >> 4)) >> 1;
                v212 = v7 + 80 * v211;
                v399 = 0uLL;
                v400 = 0;
                sub_100034C50(&v399, *v212, *(v212 + 8), *(v212 + 8) - *v212);
                if (*(v212 + 47) < 0)
                {
                  sub_100005F2C(&v401, *(v212 + 24), *(v212 + 32));
                }

                else
                {
                  v213 = *(v212 + 24);
                  v402 = *(v212 + 40);
                  v401 = v213;
                }

                if (*(v212 + 71) < 0)
                {
                  sub_100005F2C(&v403, *(v212 + 48), *(v212 + 56));
                }

                else
                {
                  v217 = *(v212 + 48);
                  v404 = *(v212 + 64);
                  v403 = v217;
                }

                LOWORD(v405) = *(v212 + 72);
                v392 = 0;
                v393 = 0;
                v391 = 0;
                sub_100034C50(&v391, *v187, *(v187 + 8), *(v187 + 8) - *v187);
                if (*(v187 + 47) < 0)
                {
                  sub_100005F2C(&v394, *(v187 + 24), *(v187 + 32));
                }

                else
                {
                  v218 = *(v187 + 24);
                  v395 = *(v187 + 40);
                  v394 = v218;
                }

                if (*(v187 + 71) < 0)
                {
                  sub_100005F2C(&v396, *(v187 + 48), *(v187 + 56));
                }

                else
                {
                  v219 = *(v187 + 48);
                  v397 = *(v187 + 64);
                  v396 = v219;
                }

                v398 = *(v187 + 72);
                v220 = v399;
                v221 = v391;
                if (v392 - v391 >= *(&v399 + 1) - v399)
                {
                  v222 = *(&v399 + 1) - v399;
                }

                else
                {
                  v222 = v392 - v391;
                }

                if (v222 < 1)
                {
LABEL_594:
                  v225 = *(&v399 + 1) - v399 < v392 - v391;
                }

                else
                {
                  while (1)
                  {
                    v223 = *v220;
                    v224 = *v221;
                    if (v223 != v224)
                    {
                      break;
                    }

                    ++v220;
                    ++v221;
                    if (!--v222)
                    {
                      goto LABEL_594;
                    }
                  }

                  v225 = v223 < v224;
                }

                if (SHIBYTE(v397) < 0)
                {
                  operator delete(v396);
                }

                if (SHIBYTE(v395) < 0)
                {
                  operator delete(v394);
                }

                if (v391)
                {
                  v392 = v391;
                  operator delete(v391);
                }

                if (SHIBYTE(v404) < 0)
                {
                  operator delete(v403);
                }

                if (SHIBYTE(v402) < 0)
                {
                  operator delete(v401);
                }

                if (v399)
                {
                  *(&v399 + 1) = v399;
                  operator delete(v399);
                }

                if (v225)
                {
                  v390 = 0;
                  *v384 = *v187;
                  v385 = *(v187 + 16);
                  *v187 = 0;
                  *(v187 + 8) = 0;
                  *(v187 + 16) = 0;
                  v226 = *(v187 + 24);
                  v387 = *(v187 + 40);
                  __src = v226;
                  *(v187 + 32) = 0;
                  *(v187 + 40) = 0;
                  *(v187 + 24) = 0;
                  v227 = *(v187 + 48);
                  v389 = *(v187 + 64);
                  v388 = v227;
                  *(v187 + 48) = 0;
                  *(v187 + 56) = 0;
                  *(v187 + 64) = 0;
                  LOWORD(v390) = *(v187 + 72);
                  do
                  {
                    v228 = v212;
                    sub_100015184(v187, v212);
                    if (*(v187 + 47) < 0)
                    {
                      operator delete(*(v187 + 24));
                    }

                    v229 = *(v212 + 24);
                    *(v187 + 40) = *(v212 + 40);
                    *(v187 + 24) = v229;
                    *(v212 + 47) = 0;
                    *(v212 + 24) = 0;
                    if (*(v187 + 71) < 0)
                    {
                      operator delete(*(v187 + 48));
                    }

                    v230 = *(v212 + 48);
                    *(v187 + 64) = *(v212 + 64);
                    *(v187 + 48) = v230;
                    *(v212 + 71) = 0;
                    *(v212 + 48) = 0;
                    *(v187 + 72) = *(v212 + 72);
                    if (!v211)
                    {
                      break;
                    }

                    v211 = (v211 - 1) >> 1;
                    v212 = v7 + 80 * v211;
                    v377 = 0;
                    v376 = 0;
                    v378 = 0;
                    sub_100034C50(&v376, *v212, *(v212 + 8), *(v212 + 8) - *v212);
                    if (*(v212 + 47) < 0)
                    {
                      sub_100005F2C(&v379, *(v212 + 24), *(v212 + 32));
                    }

                    else
                    {
                      v231 = *(v212 + 24);
                      v380 = *(v212 + 40);
                      v379 = v231;
                    }

                    if (*(v212 + 71) < 0)
                    {
                      sub_100005F2C(&v381, *(v212 + 48), *(v212 + 56));
                    }

                    else
                    {
                      v232 = *(v212 + 48);
                      v382 = *(v212 + 64);
                      v381 = v232;
                    }

                    v383 = *(v212 + 72);
                    v370 = 0;
                    v369[0] = 0;
                    v369[1] = 0;
                    sub_100034C50(v369, v384[0], v384[1], v384[1] - v384[0]);
                    if (SHIBYTE(v387) < 0)
                    {
                      sub_100005F2C(&v371, __src, *(&__src + 1));
                    }

                    else
                    {
                      v371 = __src;
                      v372 = v387;
                    }

                    if (SHIBYTE(v389) < 0)
                    {
                      sub_100005F2C(&v373, v388, *(&v388 + 1));
                    }

                    else
                    {
                      v373 = v388;
                      v374 = v389;
                    }

                    LOWORD(v375) = v390;
                    v233 = v376;
                    v234 = v369[0];
                    v235 = v369[1] - v369[0] >= v377 - v376 ? v377 - v376 : v369[1] - v369[0];
                    if (v235 < 1)
                    {
LABEL_633:
                      v238 = v377 - v376 < v369[1] - v369[0];
                    }

                    else
                    {
                      while (1)
                      {
                        v236 = *v233;
                        v237 = *v234;
                        if (v236 != v237)
                        {
                          break;
                        }

                        ++v233;
                        ++v234;
                        if (!--v235)
                        {
                          goto LABEL_633;
                        }
                      }

                      v238 = v236 < v237;
                    }

                    if (SHIBYTE(v374) < 0)
                    {
                      operator delete(v373);
                    }

                    if (SHIBYTE(v372) < 0)
                    {
                      operator delete(v371);
                    }

                    if (v369[0])
                    {
                      v369[1] = v369[0];
                      operator delete(v369[0]);
                    }

                    if (SHIBYTE(v382) < 0)
                    {
                      operator delete(v381);
                    }

                    if (SHIBYTE(v380) < 0)
                    {
                      operator delete(v379);
                    }

                    if (v376)
                    {
                      v377 = v376;
                      operator delete(v376);
                    }

                    v187 = v228;
                  }

                  while (v238);
                  v239 = *v228;
                  if (*v228)
                  {
                    *(v228 + 8) = v239;
                    operator delete(v239);
                    *v228 = 0;
                    *(v228 + 8) = 0;
                    *(v228 + 16) = 0;
                  }

                  *v228 = *v384;
                  *(v228 + 16) = v385;
                  if (*(v228 + 47) < 0)
                  {
                    operator delete(*(v228 + 24));
                  }

                  v240 = __src;
                  *(v228 + 40) = v387;
                  *(v228 + 24) = v240;
                  v181 = v288 - 5;
                  if (*(v228 + 71) < 0)
                  {
                    operator delete(*(v228 + 48));
                  }

                  v241 = v388;
                  *(v228 + 64) = v389;
                  *(v228 + 48) = v241;
                  *(v228 + 72) = v390;
                  if (SHIBYTE(v367) < 0)
                  {
                    operator delete(v366);
                  }
                }
              }
            }

            if (SHIBYTE(v365) < 0)
            {
              operator delete(v364);
            }

            if (v362[0])
            {
              operator delete(v362[0]);
            }

            if (v180-- <= 2)
            {
              return;
            }
          }
        }
      }

      if (!v140)
      {
        goto LABEL_394;
      }

LABEL_393:
      v130 += 80;
      v129 = 2 * v128 + 2;
      goto LABEL_394;
    }

    v11 = v10 >> 1;
    v12 = v7 + 80 * (v10 >> 1);
    if (v9 < 0x2801)
    {
      sub_1011439D4(v12, v7, v279);
    }

    else
    {
      sub_1011439D4(v7, v12, v279);
      v13 = 5 * v11;
      v14 = v7 + 16 * v13 - 80;
      sub_1011439D4(v8 + 80, v14, v278);
      sub_1011439D4(v8 + 160, v8 + 80 + 16 * v13, v277);
      sub_1011439D4(v14, v12, v8 + 80 + 16 * v13);
      sub_1011404EC(v8, v12);
    }

    --a3;
    if (a4)
    {
      goto LABEL_55;
    }

    v298 = 0;
    v299 = 0;
    v300 = 0;
    sub_100034C50(&v298, *(v8 - 80), *(v8 - 72), *(v8 - 72) - *(v8 - 80));
    if (*(v8 - 33) < 0)
    {
      sub_100005F2C(&v301, *(v8 - 56), *(v8 - 48));
    }

    else
    {
      v15 = *(v8 - 56);
      v302 = *(v8 - 40);
      v301 = v15;
    }

    if (*(v8 - 9) < 0)
    {
      sub_100005F2C(&v303, *(v8 - 32), *(v8 - 24));
    }

    else
    {
      v16 = *(v8 - 32);
      v304 = *(v8 - 16);
      v303 = v16;
    }

    v305 = *(v8 - 8);
    v291 = 0;
    v292 = 0;
    v290 = 0;
    sub_100034C50(&v290, *v8, *(v8 + 8), *(v8 + 8) - *v8);
    if (*(v8 + 47) < 0)
    {
      sub_100005F2C(&v293, *(v8 + 24), *(v8 + 32));
    }

    else
    {
      v17 = *(v8 + 24);
      v294 = *(v8 + 40);
      v293 = v17;
    }

    if (*(v8 + 71) < 0)
    {
      sub_100005F2C(&__p, *(v8 + 48), *(v8 + 56));
    }

    else
    {
      v18 = *(v8 + 48);
      v296 = *(v8 + 64);
      __p = v18;
    }

    v297 = *(v8 + 72);
    v19 = v298;
    v20 = v290;
    v21 = v299 - v298;
    v22 = v291 - v290;
    v23 = v291 - v290 >= v299 - v298 ? v299 - v298 : v291 - v290;
    if (v23 < 1)
    {
LABEL_33:
      v26 = v21 < v22 ? -1 : 1;
      v27 = v21 == v22 ? 0 : v26;
    }

    else
    {
      while (1)
      {
        v24 = *v19;
        v25 = *v20;
        if (v24 != v25)
        {
          break;
        }

        ++v19;
        ++v20;
        if (!--v23)
        {
          goto LABEL_33;
        }
      }

      v27 = v24 < v25 ? -1 : 1;
    }

    if (SHIBYTE(v296) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v294) < 0)
    {
      operator delete(v293);
    }

    if (v290)
    {
      v291 = v290;
      operator delete(v290);
    }

    if (SHIBYTE(v304) < 0)
    {
      operator delete(v303);
    }

    if (SHIBYTE(v302) < 0)
    {
      operator delete(v301);
    }

    if (v298)
    {
      v299 = v298;
      operator delete(v298);
    }

    if (v27 < 0)
    {
LABEL_55:
      v283 = a3;
      v405 = 0;
      v399 = *v8;
      v400 = *(v8 + 16);
      *v8 = 0;
      *(v8 + 8) = 0;
      *(v8 + 16) = 0;
      v28 = *(v8 + 24);
      v402 = *(v8 + 40);
      v401 = v28;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 24) = 0;
      v29 = *(v8 + 48);
      v404 = *(v8 + 64);
      v403 = v29;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      v30 = v8;
      v31 = *(v8 + 72);
      LOWORD(v405) = v31;
      do
      {
        v32 = v30;
        v33 = *(v30 + 80);
        v391 = 0;
        v392 = 0;
        v393 = 0;
        v286 = v30 + 80;
        sub_100034C50(&v391, v33, *(v30 + 88), *(v30 + 88) - v33);
        if (*(v32 + 127) < 0)
        {
          sub_100005F2C(&v394, *(v32 + 104), *(v32 + 112));
        }

        else
        {
          v394 = *(v32 + 104);
          v395 = *(v32 + 120);
        }

        if (*(v32 + 151) < 0)
        {
          sub_100005F2C(&v396, *(v32 + 128), *(v32 + 136));
        }

        else
        {
          v396 = *(v32 + 128);
          v397 = *(v32 + 144);
        }

        v398 = *(v32 + 152);
        v385 = 0;
        v384[0] = 0;
        v384[1] = 0;
        v34 = v399;
        sub_100034C50(v384, v399, *(&v399 + 1), *(&v399 + 1) - v399);
        v35 = SHIBYTE(v402);
        if (SHIBYTE(v402) < 0)
        {
          sub_100005F2C(&__src, v401, *(&v401 + 1));
        }

        else
        {
          __src = v401;
          v387 = v402;
        }

        v36 = SHIBYTE(v404);
        if (SHIBYTE(v404) < 0)
        {
          sub_100005F2C(&v388, v403, *(&v403 + 1));
        }

        else
        {
          v388 = v403;
          v389 = v404;
        }

        LOWORD(v390) = v31;
        v37 = v391;
        v38 = v384[0];
        if (v384[1] - v384[0] >= v392 - v391)
        {
          v39 = v392 - v391;
        }

        else
        {
          v39 = v384[1] - v384[0];
        }

        if (v39 < 1)
        {
LABEL_74:
          v42 = v392 - v391 < v384[1] - v384[0];
        }

        else
        {
          while (1)
          {
            v40 = *v37;
            v41 = *v38;
            if (v40 != v41)
            {
              break;
            }

            ++v37;
            ++v38;
            if (!--v39)
            {
              goto LABEL_74;
            }
          }

          v42 = v40 < v41;
        }

        if (SHIBYTE(v389) < 0)
        {
          operator delete(v388);
        }

        if (SHIBYTE(v387) < 0)
        {
          operator delete(__src);
        }

        if (v384[0])
        {
          v384[1] = v384[0];
          operator delete(v384[0]);
        }

        if (SHIBYTE(v397) < 0)
        {
          operator delete(v396);
        }

        if (SHIBYTE(v395) < 0)
        {
          operator delete(v394);
        }

        if (v391)
        {
          v392 = v391;
          operator delete(v391);
        }

        v30 = v286;
      }

      while (v42);
      v43 = a2;
      if (v32 == v285)
      {
        v53 = a2;
        if (v286 < a2)
        {
          v54 = a2;
          while (1)
          {
            v377 = 0;
            v376 = 0;
            v378 = 0;
            v55 = v54 - 80;
            sub_100034C50(&v376, *(v54 - 80), *(v54 - 72), *(v54 - 72) - *(v54 - 80));
            if (*(v54 - 33) < 0)
            {
              sub_100005F2C(&v379, *(v54 - 56), *(v54 - 48));
            }

            else
            {
              v56 = *(v54 - 56);
              v380 = *(v54 - 40);
              v379 = v56;
            }

            if (*(v54 - 9) < 0)
            {
              sub_100005F2C(&v381, *(v54 - 32), *(v54 - 24));
            }

            else
            {
              v57 = *(v54 - 32);
              v382 = *(v54 - 16);
              v381 = v57;
            }

            v383 = *(v54 - 8);
            v370 = 0;
            v369[0] = 0;
            v369[1] = 0;
            sub_100034C50(v369, v34, *(&v34 + 1), *(&v34 + 1) - v34);
            if (v35 < 0)
            {
              sub_100005F2C(&v371, v401, *(&v401 + 1));
            }

            else
            {
              v371 = v401;
              v372 = v402;
            }

            if (v36 < 0)
            {
              sub_100005F2C(&v373, v403, *(&v403 + 1));
            }

            else
            {
              v373 = v403;
              v374 = v404;
            }

            LOWORD(v375) = v31;
            v58 = v376;
            v59 = v369[0];
            v60 = v377 - v376;
            v61 = v369[1] - v369[0];
            v62 = v369[1] - v369[0] >= v377 - v376 ? v377 - v376 : v369[1] - v369[0];
            if (v62 < 1)
            {
LABEL_144:
              v65 = v60 < v61 ? -1 : 1;
              v66 = v60 == v61 ? 0 : v65;
            }

            else
            {
              while (1)
              {
                v63 = *v58;
                v64 = *v59;
                if (v63 != v64)
                {
                  break;
                }

                ++v58;
                ++v59;
                if (!--v62)
                {
                  goto LABEL_144;
                }
              }

              v66 = v63 < v64 ? -1 : 1;
            }

            if (SHIBYTE(v374) < 0)
            {
              operator delete(v373);
            }

            if (SHIBYTE(v372) < 0)
            {
              operator delete(v371);
            }

            if (v369[0])
            {
              v369[1] = v369[0];
              operator delete(v369[0]);
            }

            if (SHIBYTE(v382) < 0)
            {
              operator delete(v381);
            }

            if (SHIBYTE(v380) < 0)
            {
              operator delete(v379);
            }

            if (v376)
            {
              v377 = v376;
              operator delete(v376);
            }

            if (v286 >= v55)
            {
              break;
            }

            v54 -= 80;
            v53 = v55;
            if (v66 < 0)
            {
              goto LABEL_169;
            }
          }

          v53 = v54 - 80;
        }
      }

      else
      {
        do
        {
          v362[1] = 0;
          v362[0] = 0;
          v363 = 0;
          v44 = v43 - 80;
          sub_100034C50(v362, *(v43 - 80), *(v43 - 72), *(v43 - 72) - *(v43 - 80));
          if (*(v43 - 33) < 0)
          {
            sub_100005F2C(&v364, *(v43 - 56), *(v43 - 48));
          }

          else
          {
            v45 = *(v43 - 56);
            v365 = *(v43 - 40);
            v364 = v45;
          }

          if (*(v43 - 9) < 0)
          {
            sub_100005F2C(&v366, *(v43 - 32), *(v43 - 24));
          }

          else
          {
            v46 = *(v43 - 32);
            v367 = *(v43 - 16);
            v366 = v46;
          }

          LOWORD(v368) = *(v43 - 8);
          v356 = 0;
          v354 = 0;
          v355 = 0;
          sub_100034C50(&v354, v34, *(&v34 + 1), *(&v34 + 1) - v34);
          if (v35 < 0)
          {
            sub_100005F2C(&v357, v401, *(&v401 + 1));
          }

          else
          {
            v357 = v401;
            v358 = v402;
          }

          if (v36 < 0)
          {
            sub_100005F2C(&v359, v403, *(&v403 + 1));
          }

          else
          {
            v359 = v403;
            v360 = v404;
          }

          v361 = v31;
          v47 = v362[0];
          v48 = v354;
          if (v355 - v354 >= v362[1] - v362[0])
          {
            v49 = v362[1] - v362[0];
          }

          else
          {
            v49 = v355 - v354;
          }

          if (v49 < 1)
          {
LABEL_108:
            v52 = v362[1] - v362[0] < v355 - v354;
          }

          else
          {
            while (1)
            {
              v50 = *v47;
              v51 = *v48;
              if (v50 != v51)
              {
                break;
              }

              ++v47;
              ++v48;
              if (!--v49)
              {
                goto LABEL_108;
              }
            }

            v52 = v50 < v51;
          }

          if (SHIBYTE(v360) < 0)
          {
            operator delete(v359);
          }

          if (SHIBYTE(v358) < 0)
          {
            operator delete(v357);
          }

          if (v354)
          {
            v355 = v354;
            operator delete(v354);
          }

          if (SHIBYTE(v367) < 0)
          {
            operator delete(v366);
          }

          if (SHIBYTE(v365) < 0)
          {
            operator delete(v364);
          }

          if (v362[0])
          {
            v362[1] = v362[0];
            operator delete(v362[0]);
          }

          v43 -= 80;
          v53 = v44;
        }

        while (!v52);
      }

LABEL_169:
      v7 = v286;
      v282 = v53;
      if (v286 < v53)
      {
        v67 = v53;
        do
        {
          sub_1011404EC(v7, v67);
          v68 = v7;
          do
          {
            v69 = *(v7 + 80);
            v70 = *(v7 + 88);
            v7 += 80;
            v347 = 0;
            v346 = 0;
            v348 = 0;
            sub_100034C50(&v346, v69, v70, v70 - v69);
            if (*(v68 + 127) < 0)
            {
              sub_100005F2C(&v349, *(v68 + 104), *(v68 + 112));
            }

            else
            {
              v349 = *(v68 + 104);
              v350 = *(v68 + 120);
            }

            if (*(v68 + 151) < 0)
            {
              sub_100005F2C(&v351, *(v68 + 128), *(v68 + 136));
            }

            else
            {
              v351 = *(v68 + 128);
              v352 = *(v68 + 144);
            }

            v353 = *(v68 + 152);
            v340 = 0;
            v338 = 0;
            v339 = 0;
            v71 = v399;
            sub_100034C50(&v338, v399, *(&v399 + 1), *(&v399 + 1) - v399);
            v72 = SHIBYTE(v402);
            if (SHIBYTE(v402) < 0)
            {
              sub_100005F2C(&v341, v401, *(&v401 + 1));
            }

            else
            {
              v341 = v401;
              v342 = v402;
            }

            v73 = SHIBYTE(v404);
            if (SHIBYTE(v404) < 0)
            {
              sub_100005F2C(&v343, v403, *(&v403 + 1));
            }

            else
            {
              v343 = v403;
              v344 = v404;
            }

            v74 = v405;
            v345 = v405;
            v75 = v346;
            v76 = v338;
            if (v339 - v338 >= v347 - v346)
            {
              v77 = v347 - v346;
            }

            else
            {
              v77 = v339 - v338;
            }

            if (v77 < 1)
            {
LABEL_190:
              v80 = v347 - v346 < v339 - v338;
            }

            else
            {
              while (1)
              {
                v78 = *v75;
                v79 = *v76;
                if (v78 != v79)
                {
                  break;
                }

                ++v75;
                ++v76;
                if (!--v77)
                {
                  goto LABEL_190;
                }
              }

              v80 = v78 < v79;
            }

            if (SHIBYTE(v344) < 0)
            {
              operator delete(v343);
            }

            if (SHIBYTE(v342) < 0)
            {
              operator delete(v341);
            }

            if (v338)
            {
              v339 = v338;
              operator delete(v338);
            }

            if (SHIBYTE(v352) < 0)
            {
              operator delete(v351);
            }

            if (SHIBYTE(v350) < 0)
            {
              operator delete(v349);
            }

            if (v346)
            {
              v347 = v346;
              operator delete(v346);
            }

            v68 = v7;
          }

          while (v80);
          v81 = v67;
          do
          {
            v330 = 0;
            v331 = 0;
            v332 = 0;
            v82 = *(v67 - 80);
            v83 = *(v67 - 72);
            v67 -= 80;
            sub_100034C50(&v330, v82, v83, v83 - v82);
            if (*(v81 - 33) < 0)
            {
              sub_100005F2C(&v333, *(v81 - 56), *(v81 - 48));
            }

            else
            {
              v84 = *(v81 - 56);
              v334 = *(v81 - 40);
              v333 = v84;
            }

            if (*(v81 - 9) < 0)
            {
              sub_100005F2C(&v335, *(v81 - 32), *(v81 - 24));
            }

            else
            {
              v85 = *(v81 - 32);
              v336 = *(v81 - 16);
              v335 = v85;
            }

            v337 = *(v81 - 8);
            v323 = 0;
            v324 = 0;
            v322 = 0;
            sub_100034C50(&v322, v71, *(&v71 + 1), *(&v71 + 1) - v71);
            if (v72 < 0)
            {
              sub_100005F2C(&v325, v401, *(&v401 + 1));
            }

            else
            {
              v325 = v401;
              v326 = v402;
            }

            if (v73 < 0)
            {
              sub_100005F2C(&v327, v403, *(&v403 + 1));
            }

            else
            {
              v327 = v403;
              v328 = v404;
            }

            v329 = v74;
            v86 = v330;
            v87 = v322;
            if (v323 - v322 >= v331 - v330)
            {
              v88 = v331 - v330;
            }

            else
            {
              v88 = v323 - v322;
            }

            if (v88 < 1)
            {
LABEL_224:
              v91 = v331 - v330 < v323 - v322;
            }

            else
            {
              while (1)
              {
                v89 = *v86;
                v90 = *v87;
                if (v89 != v90)
                {
                  break;
                }

                ++v86;
                ++v87;
                if (!--v88)
                {
                  goto LABEL_224;
                }
              }

              v91 = v89 < v90;
            }

            if (SHIBYTE(v328) < 0)
            {
              operator delete(v327);
            }

            if (SHIBYTE(v326) < 0)
            {
              operator delete(v325);
            }

            if (v322)
            {
              v323 = v322;
              operator delete(v322);
            }

            if (SHIBYTE(v336) < 0)
            {
              operator delete(v335);
            }

            if (SHIBYTE(v334) < 0)
            {
              operator delete(v333);
            }

            if (v330)
            {
              v331 = v330;
              operator delete(v330);
            }

            v81 = v67;
          }

          while (!v91);
        }

        while (v7 < v67);
      }

      v92 = (v7 - 80);
      a1 = v285;
      a2 = v281;
      if (v7 - 80 != v285)
      {
        sub_100015184(v285, (v7 - 80));
        if (*(v285 + 47) < 0)
        {
          operator delete(*(v285 + 24));
        }

        v93 = *(v7 - 56);
        *(v285 + 40) = *(v7 - 40);
        *(v285 + 24) = v93;
        *(v7 - 33) = 0;
        *(v7 - 56) = 0;
        if (*(v285 + 71) < 0)
        {
          operator delete(*(v285 + 48));
        }

        v94 = *(v7 - 32);
        *(v285 + 64) = *(v7 - 16);
        *(v285 + 48) = v94;
        *(v7 - 9) = 0;
        *(v7 - 32) = 0;
        *(v285 + 72) = *(v7 - 8);
      }

      v95 = *v92;
      if (*v92)
      {
        *(v7 - 72) = v95;
        operator delete(v95);
        *v92 = 0;
        *(v7 - 72) = 0;
        *(v7 - 64) = 0;
      }

      *(v7 - 80) = v399;
      *(v7 - 64) = v400;
      v399 = 0uLL;
      v400 = 0;
      v96 = (v7 - 56);
      a3 = v283;
      if (*(v7 - 33) < 0)
      {
        operator delete(*v96);
      }

      v97 = v401;
      *(v7 - 40) = v402;
      *v96 = v97;
      HIBYTE(v402) = 0;
      LOBYTE(v401) = 0;
      v98 = (v7 - 32);
      if (*(v7 - 9) < 0)
      {
        operator delete(*v98);
      }

      v99 = v403;
      *(v7 - 16) = v404;
      *v98 = v99;
      HIBYTE(v404) = 0;
      LOBYTE(v403) = 0;
      *(v7 - 8) = v405;
      if (SHIBYTE(v404) < 0)
      {
        operator delete(v403);
      }

      if (SHIBYTE(v402) < 0)
      {
        operator delete(v401);
      }

      if (v399)
      {
        operator delete(v399);
      }

      if (v286 < v282)
      {
LABEL_261:
        sub_101140688(v285, v7 - 80, v283, a4 & 1);
        a4 = 0;
      }

      else
      {
        v100 = sub_1011462C4(v285, v7 - 80);
        if (sub_1011462C4(v7, v281))
        {
          a2 = v7 - 80;
          if (v100)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v100)
        {
          goto LABEL_261;
        }
      }
    }

    else
    {
      v7 = sub_1011453F4(v8, a2);
      a4 = 0;
    }
  }

  if (a4)
  {
    if (v7 != a2)
    {
      v102 = v7 + 80;
      if (v7 + 80 != a2)
      {
        v103 = v7;
        do
        {
          v104 = v102;
          v399 = 0uLL;
          v400 = 0;
          sub_100034C50(&v399, *(v103 + 80), *(v103 + 88), *(v103 + 88) - *(v103 + 80));
          if (*(v103 + 127) < 0)
          {
            sub_100005F2C(&v401, *(v103 + 104), *(v103 + 112));
          }

          else
          {
            v401 = *(v103 + 104);
            v402 = *(v103 + 120);
          }

          if (*(v103 + 151) < 0)
          {
            sub_100005F2C(&v403, *(v103 + 128), *(v103 + 136));
          }

          else
          {
            v403 = *(v103 + 128);
            v404 = *(v103 + 144);
          }

          LOWORD(v405) = *(v103 + 152);
          v392 = 0;
          v393 = 0;
          v391 = 0;
          sub_100034C50(&v391, *v103, *(v103 + 8), *(v103 + 8) - *v103);
          if (*(v103 + 47) < 0)
          {
            sub_100005F2C(&v394, *(v103 + 24), *(v103 + 32));
          }

          else
          {
            v105 = *(v103 + 24);
            v395 = *(v103 + 40);
            v394 = v105;
          }

          if (*(v103 + 71) < 0)
          {
            sub_100005F2C(&v396, *(v103 + 48), *(v103 + 56));
          }

          else
          {
            v106 = *(v103 + 48);
            v397 = *(v103 + 64);
            v396 = v106;
          }

          v398 = *(v103 + 72);
          v107 = v399;
          v108 = v391;
          if (v392 - v391 >= *(&v399 + 1) - v399)
          {
            v109 = *(&v399 + 1) - v399;
          }

          else
          {
            v109 = v392 - v391;
          }

          if (v109 < 1)
          {
LABEL_292:
            v112 = *(&v399 + 1) - v399 < v392 - v391;
          }

          else
          {
            while (1)
            {
              v110 = *v107;
              v111 = *v108;
              if (v110 != v111)
              {
                break;
              }

              ++v107;
              ++v108;
              if (!--v109)
              {
                goto LABEL_292;
              }
            }

            v112 = v110 < v111;
          }

          if (SHIBYTE(v397) < 0)
          {
            operator delete(v396);
          }

          if (SHIBYTE(v395) < 0)
          {
            operator delete(v394);
          }

          if (v391)
          {
            v392 = v391;
            operator delete(v391);
          }

          if (SHIBYTE(v404) < 0)
          {
            operator delete(v403);
          }

          if (SHIBYTE(v402) < 0)
          {
            operator delete(v401);
          }

          if (v399)
          {
            *(&v399 + 1) = v399;
            operator delete(v399);
          }

          if (v112)
          {
            v390 = 0;
            *v384 = *v104;
            v385 = *(v103 + 96);
            *v104 = 0;
            *(v104 + 8) = 0;
            *(v104 + 16) = 0;
            __src = *(v103 + 104);
            v387 = *(v103 + 120);
            *(v103 + 104) = 0;
            *(v103 + 112) = 0;
            v388 = *(v103 + 128);
            v389 = *(v103 + 144);
            *(v103 + 120) = 0;
            *(v103 + 128) = 0;
            LOWORD(v390) = *(v103 + 152);
            v113 = v104;
            *(v103 + 136) = 0;
            *(v103 + 144) = 0;
            while (1)
            {
              v114 = v103;
              sub_100015184(v113, v103);
              if (*(v113 + 47) < 0)
              {
                operator delete(*(v113 + 24));
              }

              *(v113 + 24) = *(v103 + 24);
              *(v113 + 40) = *(v103 + 40);
              *(v103 + 47) = 0;
              *(v103 + 24) = 0;
              if (*(v113 + 71) < 0)
              {
                operator delete(*(v113 + 48));
              }

              *(v113 + 48) = *(v103 + 48);
              *(v113 + 64) = *(v103 + 64);
              *(v103 + 71) = 0;
              *(v103 + 48) = 0;
              *(v113 + 72) = *(v103 + 72);
              if (v103 == v285)
              {
                break;
              }

              v377 = 0;
              v376 = 0;
              v378 = 0;
              sub_100034C50(&v376, v384[0], v384[1], v384[1] - v384[0]);
              if (SHIBYTE(v387) < 0)
              {
                sub_100005F2C(&v379, __src, *(&__src + 1));
              }

              else
              {
                v379 = __src;
                v380 = v387;
              }

              if (SHIBYTE(v389) < 0)
              {
                sub_100005F2C(&v381, v388, *(&v388 + 1));
              }

              else
              {
                v381 = v388;
                v382 = v389;
              }

              v383 = v390;
              v370 = 0;
              v369[0] = 0;
              v369[1] = 0;
              v103 -= 80;
              sub_100034C50(v369, *(v114 - 80), *(v114 - 72), *(v114 - 72) - *(v114 - 80));
              if (*(v114 - 33) < 0)
              {
                sub_100005F2C(&v371, *(v114 - 56), *(v114 - 48));
              }

              else
              {
                v115 = *(v114 - 56);
                v372 = *(v114 - 40);
                v371 = v115;
              }

              if (*(v114 - 9) < 0)
              {
                sub_100005F2C(&v373, *(v114 - 32), *(v114 - 24));
              }

              else
              {
                v116 = *(v114 - 32);
                v374 = *(v114 - 16);
                v373 = v116;
              }

              LOWORD(v375) = *(v114 - 8);
              v117 = v376;
              v118 = v369[0];
              if (v369[1] - v369[0] >= v377 - v376)
              {
                v119 = v377 - v376;
              }

              else
              {
                v119 = v369[1] - v369[0];
              }

              if (v119 < 1)
              {
LABEL_331:
                v122 = v377 - v376 < v369[1] - v369[0];
              }

              else
              {
                while (1)
                {
                  v120 = *v117;
                  v121 = *v118;
                  if (v120 != v121)
                  {
                    break;
                  }

                  ++v117;
                  ++v118;
                  if (!--v119)
                  {
                    goto LABEL_331;
                  }
                }

                v122 = v120 < v121;
              }

              if (SHIBYTE(v374) < 0)
              {
                operator delete(v373);
              }

              if (SHIBYTE(v372) < 0)
              {
                operator delete(v371);
              }

              if (v369[0])
              {
                v369[1] = v369[0];
                operator delete(v369[0]);
              }

              if (SHIBYTE(v382) < 0)
              {
                operator delete(v381);
              }

              if (SHIBYTE(v380) < 0)
              {
                operator delete(v379);
              }

              if (v376)
              {
                v377 = v376;
                operator delete(v376);
              }

              v113 = v114;
              if (!v122)
              {
                v123 = v114;
                goto LABEL_348;
              }
            }

            v123 = v285;
LABEL_348:
            v124 = *v123;
            if (*v123)
            {
              *(v123 + 8) = v124;
              operator delete(v124);
              *v123 = 0;
              *(v123 + 8) = 0;
              *(v123 + 16) = 0;
            }

            *v123 = *v384;
            *(v123 + 16) = v385;
            v384[1] = 0;
            v384[0] = 0;
            v385 = 0;
            if (*(v123 + 47) < 0)
            {
              operator delete(*(v114 + 24));
            }

            v125 = __src;
            *(v114 + 40) = v387;
            *(v114 + 24) = v125;
            HIBYTE(v387) = 0;
            LOBYTE(__src) = 0;
            if (*(v123 + 71) < 0)
            {
              operator delete(*(v114 + 48));
            }

            v126 = v388;
            *(v114 + 64) = v389;
            *(v114 + 48) = v126;
            *(v123 + 72) = v390;
            a2 = v281;
          }

          v102 = v104 + 80;
          v103 = v104;
        }

        while (v104 + 80 != a2);
      }
    }
  }

  else if (v7 != a2)
  {
    v243 = v7 + 80;
    if (v7 + 80 != a2)
    {
      do
      {
        v244 = v243;
        v399 = 0uLL;
        v400 = 0;
        sub_100034C50(&v399, *(v8 + 80), *(v8 + 88), *(v8 + 88) - *(v8 + 80));
        if (*(v8 + 127) < 0)
        {
          sub_100005F2C(&v401, *(v8 + 104), *(v8 + 112));
        }

        else
        {
          v401 = *(v8 + 104);
          v402 = *(v8 + 120);
        }

        if (*(v8 + 151) < 0)
        {
          sub_100005F2C(&v403, *(v8 + 128), *(v8 + 136));
        }

        else
        {
          v403 = *(v8 + 128);
          v404 = *(v8 + 144);
        }

        LOWORD(v405) = *(v8 + 152);
        v392 = 0;
        v393 = 0;
        v391 = 0;
        sub_100034C50(&v391, *v8, *(v8 + 8), *(v8 + 8) - *v8);
        if (*(v8 + 47) < 0)
        {
          sub_100005F2C(&v394, *(v8 + 24), *(v8 + 32));
        }

        else
        {
          v245 = *(v8 + 24);
          v395 = *(v8 + 40);
          v394 = v245;
        }

        if (*(v8 + 71) < 0)
        {
          sub_100005F2C(&v396, *(v8 + 48), *(v8 + 56));
        }

        else
        {
          v246 = *(v8 + 48);
          v397 = *(v8 + 64);
          v396 = v246;
        }

        v398 = *(v8 + 72);
        v247 = v399;
        v248 = v391;
        if (v392 - v391 >= *(&v399 + 1) - v399)
        {
          v249 = *(&v399 + 1) - v399;
        }

        else
        {
          v249 = v392 - v391;
        }

        if (v249 < 1)
        {
LABEL_683:
          v252 = *(&v399 + 1) - v399 < v392 - v391;
        }

        else
        {
          while (1)
          {
            v250 = *v247;
            v251 = *v248;
            if (v250 != v251)
            {
              break;
            }

            ++v247;
            ++v248;
            if (!--v249)
            {
              goto LABEL_683;
            }
          }

          v252 = v250 < v251;
        }

        if (SHIBYTE(v397) < 0)
        {
          operator delete(v396);
        }

        if (SHIBYTE(v395) < 0)
        {
          operator delete(v394);
        }

        if (v391)
        {
          v392 = v391;
          operator delete(v391);
        }

        if (SHIBYTE(v404) < 0)
        {
          operator delete(v403);
        }

        if (SHIBYTE(v402) < 0)
        {
          operator delete(v401);
        }

        if (v399)
        {
          *(&v399 + 1) = v399;
          operator delete(v399);
        }

        if (v252)
        {
          v390 = 0;
          *v384 = *v244;
          v385 = *(v8 + 96);
          *v244 = 0;
          *(v244 + 8) = 0;
          *(v244 + 16) = 0;
          __src = *(v8 + 104);
          v387 = *(v8 + 120);
          *(v8 + 104) = 0;
          *(v8 + 112) = 0;
          v388 = *(v8 + 128);
          v389 = *(v8 + 144);
          *(v8 + 120) = 0;
          *(v8 + 128) = 0;
          LOWORD(v390) = *(v8 + 152);
          v253 = v244;
          *(v8 + 136) = 0;
          *(v8 + 144) = 0;
          do
          {
            v254 = v8;
            sub_100015184(v253, v8);
            if (*(v253 + 47) < 0)
            {
              operator delete(*(v253 + 24));
            }

            *(v253 + 24) = *(v8 + 24);
            *(v253 + 40) = *(v8 + 40);
            *(v8 + 47) = 0;
            *(v8 + 24) = 0;
            if (*(v253 + 71) < 0)
            {
              operator delete(*(v253 + 48));
            }

            *(v253 + 48) = *(v8 + 48);
            *(v253 + 64) = *(v8 + 64);
            *(v8 + 71) = 0;
            *(v8 + 48) = 0;
            *(v253 + 72) = *(v8 + 72);
            v378 = 0;
            v376 = 0;
            v377 = 0;
            v289 = *v384;
            sub_100034C50(&v376, v384[0], v384[1], v384[1] - v384[0]);
            if (SHIBYTE(v387) < 0)
            {
              sub_100005F2C(&v379, __src, *(&__src + 1));
            }

            else
            {
              v379 = __src;
              v380 = v387;
            }

            if (SHIBYTE(v389) < 0)
            {
              sub_100005F2C(&v381, v388, *(&v388 + 1));
            }

            else
            {
              v381 = v388;
              v382 = v389;
            }

            v383 = v390;
            v370 = 0;
            v369[0] = 0;
            v369[1] = 0;
            v255 = *(v8 - 80);
            v256 = *(v8 - 72);
            v8 -= 80;
            sub_100034C50(v369, v255, v256, v256 - v255);
            if (*(v254 - 33) < 0)
            {
              sub_100005F2C(&v371, *(v254 - 56), *(v254 - 48));
            }

            else
            {
              v257 = *(v254 - 56);
              v372 = *(v254 - 40);
              v371 = v257;
            }

            if (*(v254 - 9) < 0)
            {
              sub_100005F2C(&v373, *(v254 - 32), *(v254 - 24));
            }

            else
            {
              v258 = *(v254 - 32);
              v374 = *(v254 - 16);
              v373 = v258;
            }

            LOWORD(v375) = *(v254 - 8);
            v259 = v376;
            v260 = v369[0];
            if (v369[1] - v369[0] >= v377 - v376)
            {
              v261 = v377 - v376;
            }

            else
            {
              v261 = v369[1] - v369[0];
            }

            if (v261 < 1)
            {
LABEL_721:
              v264 = v377 - v376 < v369[1] - v369[0];
            }

            else
            {
              while (1)
              {
                v262 = *v259;
                v263 = *v260;
                if (v262 != v263)
                {
                  break;
                }

                ++v259;
                ++v260;
                if (!--v261)
                {
                  goto LABEL_721;
                }
              }

              v264 = v262 < v263;
            }

            if (SHIBYTE(v374) < 0)
            {
              operator delete(v373);
            }

            if (SHIBYTE(v372) < 0)
            {
              operator delete(v371);
            }

            if (v369[0])
            {
              v369[1] = v369[0];
              operator delete(v369[0]);
            }

            if (SHIBYTE(v382) < 0)
            {
              operator delete(v381);
            }

            if (SHIBYTE(v380) < 0)
            {
              operator delete(v379);
            }

            if (v376)
            {
              v377 = v376;
              operator delete(v376);
            }

            v253 = v254;
          }

          while (v264);
          v265 = *v254;
          if (*v254)
          {
            *(v254 + 8) = v265;
            operator delete(v265);
            *v254 = 0;
            *(v254 + 8) = 0;
            *(v254 + 16) = 0;
            v289 = *v384;
          }

          *v254 = v289;
          *(v254 + 16) = v385;
          v384[1] = 0;
          v384[0] = 0;
          v385 = 0;
          a2 = v281;
          if (*(v254 + 47) < 0)
          {
            operator delete(*(v254 + 24));
          }

          v266 = __src;
          *(v254 + 40) = v387;
          *(v254 + 24) = v266;
          HIBYTE(v387) = 0;
          LOBYTE(__src) = 0;
          if (*(v254 + 71) < 0)
          {
            operator delete(*(v254 + 48));
          }

          v267 = v388;
          *(v254 + 64) = v389;
          *(v254 + 48) = v267;
          *(v254 + 72) = v390;
        }

        v243 = v244 + 80;
        v8 = v244;
      }

      while (v244 + 80 != a2);
    }
  }
}

void sub_1011433AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a39)
  {
    operator delete(a39);
  }

  sub_10113A8AC(&a52);
  _Unwind_Resume(a1);
}

void sub_1011439D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v110 = 0;
  v111 = 0;
  v112 = 0;
  sub_100034C50(&v110, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v113, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v113 = *(a2 + 24);
    v114 = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(&v115, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v115 = *(a2 + 48);
    v116 = *(a2 + 64);
  }

  v117 = *(a2 + 72);
  v103 = 0;
  v104 = 0;
  v102 = 0;
  sub_100034C50(&v102, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&v105, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v105 = *(a1 + 24);
    v106 = *(a1 + 40);
  }

  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(&v107, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v107 = *(a1 + 48);
    v108 = *(a1 + 64);
  }

  v109 = *(a1 + 72);
  v6 = v110;
  v7 = v102;
  if (v103 - v102 >= v111 - v110)
  {
    v8 = v111 - v110;
  }

  else
  {
    v8 = v103 - v102;
  }

  if (v8 < 1)
  {
LABEL_19:
    v11 = v111 - v110 < v103 - v102;
  }

  else
  {
    while (1)
    {
      v9 = *v6;
      v10 = *v7;
      if (v9 != v10)
      {
        break;
      }

      ++v6;
      ++v7;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }

    v11 = v9 < v10;
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }

  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115);
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v11)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    sub_100034C50(&v62, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v65, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v65 = *(a3 + 24);
      v66 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v67, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v67 = *(a3 + 48);
      v68 = *(a3 + 64);
    }

    v69 = *(a3 + 72);
    v55 = 0;
    v56 = 0;
    v54 = 0;
    sub_100034C50(&v54, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v57, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v57 = *(a2 + 24);
      v58 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&__p, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      __p = *(a2 + 48);
      v60 = *(a2 + 64);
    }

    v61 = *(a2 + 72);
    v12 = v62;
    v13 = v54;
    if (v55 - v54 >= v63 - v62)
    {
      v14 = v63 - v62;
    }

    else
    {
      v14 = v55 - v54;
    }

    if (v14 < 1)
    {
LABEL_63:
      v17 = v63 - v62 < v55 - v54;
    }

    else
    {
      while (1)
      {
        v15 = *v12;
        v16 = *v13;
        if (v15 != v16)
        {
          break;
        }

        ++v12;
        ++v13;
        if (!--v14)
        {
          goto LABEL_63;
        }
      }

      v17 = v15 < v16;
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (v54)
    {
      v55 = v54;
      operator delete(v54);
    }

    if (SHIBYTE(v68) < 0)
    {
      operator delete(v67);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (v62)
    {
      v63 = v62;
      operator delete(v62);
    }

    v24 = a1;
    if (v17)
    {
      goto LABEL_153;
    }

    sub_1011404EC(a1, a2);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    sub_100034C50(&v46, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v49, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v49 = *(a3 + 24);
      v50 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v51, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v51 = *(a3 + 48);
      v52 = *(a3 + 64);
    }

    v53 = *(a3 + 72);
    v39 = 0;
    v40 = 0;
    v38 = 0;
    sub_100034C50(&v38, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(v41, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *v41 = *(a2 + 24);
      v42 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(v43, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      *v43 = *(a2 + 48);
      v44 = *(a2 + 64);
    }

    v45 = *(a2 + 72);
    v25 = v46;
    v26 = v38;
    if (v39 - v38 >= v47 - v46)
    {
      v27 = v47 - v46;
    }

    else
    {
      v27 = v39 - v38;
    }

    if (v27 < 1)
    {
LABEL_129:
      v30 = v47 - v46 < v39 - v38;
    }

    else
    {
      while (1)
      {
        v28 = *v25;
        v29 = *v26;
        if (v28 != v29)
        {
          break;
        }

        ++v25;
        ++v26;
        if (!--v27)
        {
          goto LABEL_129;
        }
      }

      v30 = v28 < v29;
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v41[0]);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }

    if (v30)
    {
      v24 = a2;
LABEL_153:
      v37 = a3;
LABEL_169:
      sub_1011404EC(v24, v37);
    }
  }

  else
  {
    v95 = 0;
    v94 = 0;
    v96 = 0;
    sub_100034C50(&v94, *a3, *(a3 + 8), *(a3 + 8) - *a3);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v97, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v97 = *(a3 + 24);
      v98 = *(a3 + 40);
    }

    if (*(a3 + 71) < 0)
    {
      sub_100005F2C(&v99, *(a3 + 48), *(a3 + 56));
    }

    else
    {
      v99 = *(a3 + 48);
      v100 = *(a3 + 64);
    }

    v101 = *(a3 + 72);
    v87 = 0;
    v88 = 0;
    v86 = 0;
    sub_100034C50(&v86, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(&v89, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v89 = *(a2 + 24);
      v90 = *(a2 + 40);
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C(&v91, *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v91 = *(a2 + 48);
      v92 = *(a2 + 64);
    }

    v93 = *(a2 + 72);
    v18 = v94;
    v19 = v86;
    if (v87 - v86 >= v95 - v94)
    {
      v20 = v95 - v94;
    }

    else
    {
      v20 = v87 - v86;
    }

    if (v20 < 1)
    {
LABEL_71:
      v23 = v95 - v94 < v87 - v86;
    }

    else
    {
      while (1)
      {
        v21 = *v18;
        v22 = *v19;
        if (v21 != v22)
        {
          break;
        }

        ++v18;
        ++v19;
        if (!--v20)
        {
          goto LABEL_71;
        }
      }

      v23 = v21 < v22;
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91);
    }

    if (SHIBYTE(v90) < 0)
    {
      operator delete(v89);
    }

    if (v86)
    {
      v87 = v86;
      operator delete(v86);
    }

    if (SHIBYTE(v100) < 0)
    {
      operator delete(v99);
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(v97);
    }

    if (v94)
    {
      v95 = v94;
      operator delete(v94);
    }

    if (v23)
    {
      sub_1011404EC(a2, a3);
      v78 = 0;
      v79 = 0;
      v80 = 0;
      sub_100034C50(&v78, *a2, *(a2 + 8), *(a2 + 8) - *a2);
      if (*(a2 + 47) < 0)
      {
        sub_100005F2C(&v81, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v81 = *(a2 + 24);
        v82 = *(a2 + 40);
      }

      if (*(a2 + 71) < 0)
      {
        sub_100005F2C(&v83, *(a2 + 48), *(a2 + 56));
      }

      else
      {
        v83 = *(a2 + 48);
        v84 = *(a2 + 64);
      }

      v85 = *(a2 + 72);
      v71 = 0;
      v72 = 0;
      v70 = 0;
      sub_100034C50(&v70, *a1, *(a1 + 8), *(a1 + 8) - *a1);
      if (*(a1 + 47) < 0)
      {
        sub_100005F2C(&v73, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v73 = *(a1 + 24);
        v74 = *(a1 + 40);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(&v75, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        v75 = *(a1 + 48);
        v76 = *(a1 + 64);
      }

      v77 = *(a1 + 72);
      v31 = v78;
      v32 = v70;
      v33 = v71 - v70 >= v79 - v78 ? v79 - v78 : v71 - v70;
      if (v33 < 1)
      {
LABEL_137:
        v36 = v79 - v78 < v71 - v70;
      }

      else
      {
        while (1)
        {
          v34 = *v31;
          v35 = *v32;
          if (v34 != v35)
          {
            break;
          }

          ++v31;
          ++v32;
          if (!--v33)
          {
            goto LABEL_137;
          }
        }

        v36 = v34 < v35;
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(v75);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(v73);
      }

      if (v70)
      {
        v71 = v70;
        operator delete(v70);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83);
      }

      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81);
      }

      if (v78)
      {
        v79 = v78;
        operator delete(v78);
      }

      if (v36)
      {
        v24 = a1;
        v37 = a2;
        goto LABEL_169;
      }
    }
  }
}