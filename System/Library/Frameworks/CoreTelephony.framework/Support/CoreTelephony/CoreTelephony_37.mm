void sub_1002548C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 == 1 && a56 < 0)
  {
    operator delete(a51);
  }

  sub_100004A34(a14);
  _Unwind_Resume(a1);
}

void *sub_1002549A0@<X0>(void *result@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(result + 41);
  v5 = *(result + 42);
  if (v4 != v5)
  {
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    if (v6 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = v4 + 320;
    while (1)
    {
      v10 = *(v9 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      if (v10 == v7)
      {
        v12 = v11 >= 0 ? v9 : *v9;
        result = memcmp(v12, v8, v7);
        if (!result)
        {
          break;
        }
      }

      v13 = v9 + 752;
      v9 += 1072;
      if (v13 == v5)
      {
        goto LABEL_22;
      }
    }

    v4 = v9 - 320;
  }

  if (v4 == v5)
  {
LABEL_22:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else if (*(v4 + 439) < 0)
  {
    v15 = *(v4 + 416);
    v16 = *(v4 + 424);

    return sub_100005F2C(a3, v15, v16);
  }

  else
  {
    v14 = *(v4 + 416);
    *(a3 + 16) = *(v4 + 432);
    *a3 = v14;
  }

  return result;
}

uint64_t sub_100254AA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 72);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v6 = *v5;
    *(a1 + 24) = *(v5 + 2);
    *(a1 + 8) = v6;
    *(a2 + 31) = 0;
    *(a2 + 8) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
    if (a1 != a2)
    {
      v8 = *(a1 + 56);
      *(a1 + 56) = 0;
      v13 = v8;
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 56) = 0;
      sub_100005978(&v13);
      v9 = *(a1 + 64);
      *(a1 + 64) = 0;
      v13 = v9;
      *(a1 + 64) = *(a2 + 64);
      *(a2 + 64) = 0;
      sub_10001021C(&v13);
    }
  }

  else
  {
    v10 = *v5;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v10;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v5 = 0;
    v11 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v11;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 64) = *(a2 + 64);
    *(a2 + 64) = 0;
    *(a1 + 72) = 1;
  }

  return a1;
}

uint64_t sub_100254BE4(uint64_t a1)
{
  sub_10001021C((a1 + 64));
  sub_100005978((a1 + 56));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100254C38(uint64_t a1)
{
  v1 = *(a1 + 336);
  if (*(a1 + 328) == v1)
  {
    return;
  }

  v3 = *(a1 + 352);
  if (v3 == v1)
  {
    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  sub_100260070(v3 + 320, __p);
  sub_100319F44(*(a1 + 352));
  (***(a1 + 48))(&v19);
  ServiceMap = Registry::getServiceMap(v19);
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
  v23 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v23);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_10:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_11:
  (*(*v12 + 88))(v12, __p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v14 = *(a1 + 352);
  v15 = *(a1 + 336);
  if (v14 + 1072 == v15)
  {
    v17 = *(a1 + 352);
  }

  else
  {
    v16 = *(a1 + 352);
    do
    {
      v17 = v16 + 1072;
      sub_10026A694(v16, (v16 + 1072));
      v18 = v16 + 2144;
      v16 += 1072;
    }

    while (v18 != v15);
    v15 = *(a1 + 336);
  }

  while (v15 != v17)
  {
    v15 -= 1072;
    sub_10027C3B4(v15);
  }

  *(a1 + 336) = v17;
  *(a1 + 352) = v14;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100254E28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100254E74(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Preflight ongoing, dont trigger", buf, 2u);
    }

    return;
  }

  v3 = *(a1 + 336);
  v4 = *(a1 + 352);
  if (v4 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 1066);
  }

  if (*(a1 + 147) != 1 || (v5) && *(a1 + 520) == 1)
  {
    v6 = *(a1 + 449);
    v7 = *(a1 + 504);
    if (v7 && CFStringGetLength(v7) >= 1)
    {
      if (*(a1 + 352) != *(a1 + 336))
      {
        v71 = 0;
        v72 = 0;
        sub_100254358(a1, a1 + 456, 6, v6, &v72, &v71);
        sub_10001021C(&v71);
        sub_100005978(&v72);
      }

      if (v6)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Delay error websheet handling", buf, 2u);
        }
      }

      else
      {
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        (***(a1 + 48))(&v69);
        Registry::getNotificationSenderFactory(buf, v69);
        v17 = *buf;
        (***(a1 + 48))(&v65);
        Registry::getTimerService(&v67, v65);
        (*(*v17 + 168))(&__p, v17, &v67, a1 + 24);
        if (v68)
        {
          sub_100004A34(v68);
        }

        if (v66)
        {
          sub_100004A34(v66);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (v70)
        {
          sub_100004A34(v70);
        }

        v69 = 0;
        v70 = 0;
        (***(a1 + 48))(buf);
        ServiceMap = Registry::getServiceMap(*buf);
        sub_100295C34(ServiceMap, &v69);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        memset(buf, 0, sizeof(buf));
        if (*(a1 + 503) < 0)
        {
          sub_100005F2C(buf, *(a1 + 480), *(a1 + 488));
        }

        else
        {
          *buf = *(a1 + 480);
          *&buf[16] = *(a1 + 496);
        }

        v65 = 0;
        sub_100010024(&v65, (a1 + 512));
        size = __p.__r_.__value_.__l.__size_;
        v64 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
        }

        v27 = v70;
        v63[0] = v69;
        v63[1] = v70;
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10005C7A4(&v62, (a1 + 504));
        sub_100010024(&v61, &v65);
        v28 = *(a1 + 146);
        v29 = *(a1 + 24);
        v60 = v29;
        if (v29)
        {
          dispatch_retain(v29);
        }

        v30 = *(a1 + 72);
        v59[0] = *(a1 + 64);
        v59[1] = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10026CEDC(&v64, v63, (a1 + 456), buf, &v62, &v61, 0, v28, &v60, v59);
        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }

        if (v29)
        {
          dispatch_release(v29);
        }

        sub_10001021C(&v61);
        sub_100005978(&v62);
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (size)
        {
          sub_100004A34(size);
        }

        sub_10001021C(&v65);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v70)
        {
          sub_100004A34(v70);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__p.__r_.__value_.__l.__size_);
        }
      }
    }

    v31 = *(a1 + 448);
    sub_10025C4D4(a1 + 448);
    if (*(a1 + 440))
    {
      sub_10025B4DC(a1 + 416, v31, v6);
      sub_10028C948(a1 + 416);
    }

    if (*(a1 + 328) == *(a1 + 336))
    {
      sub_100259FCC(a1);
    }

    return;
  }

  if (v4 == v3)
  {
    if (*(a1 + 440))
    {
      if (*(a1 + 520) == 1)
      {
        sub_10025B4DC(a1 + 416, *(a1 + 448), *(a1 + 449));
        sub_10025C4D4(a1 + 448);
      }

      else
      {
        sub_10025B4DC(a1 + 416, 1, 0);
      }

      sub_10028C948(a1 + 416);
      if (*(a1 + 328) != *(a1 + 336))
      {
        return;
      }
    }

    else if (*(a1 + 328) != v3)
    {
      return;
    }

    sub_100259FCC(a1);
  }

  else
  {
    v9 = *(a1 + 144);
    if ((v9 - 3) >= 2 && v9 != 1)
    {
      if (v9 == 2)
      {
        v10 = *(v4 + 191);
        if (v10 < 0)
        {
          v10 = *(v4 + 176);
        }

        if (v10)
        {
          v53 = 0;
          v54 = 0;
          sub_100254358(a1, v4 + 320, 4, 0, &v54, &v53);
          sub_10001021C(&v53);
          sub_100005978(&v54);
          memset(buf, 0, sizeof(buf));
          sub_100260070(v4 + 320, buf);
          memset(&__p, 0, sizeof(__p));
          v11 = sub_10026AB6C(a1, *(a1 + 352));
          v12 = (*(**(a1 + 48) + 32))(*(a1 + 48));
          sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v11, v12, *(a1 + 145), &__p);
          v13 = sub_1009314B8((a1 + 768), &__p.__r_.__value_.__l.__data_);
          if (v13)
          {
            (*(**(a1 + 48) + 312))(*(a1 + 48), buf, v13);
          }

          (***(a1 + 48))(&v65);
          sub_10014F618(v65, &v69);
          v51 = 2;
          (*(*v69 + 80))(v69, buf, &v51);
          if (v70)
          {
            sub_100004A34(v70);
          }

          if (v66)
          {
            sub_100004A34(v66);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v19 = *(v4 + 273);
          if ((v19 & 0xFE) == 2)
          {
            v20 = *(a1 + 40);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = sub_100649BB4(v19);
              v22 = sub_10064A100(*(v4 + 272));
              *buf = 136315394;
              *&buf[4] = v21;
              *&buf[12] = 2080;
              *&buf[14] = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Abort due to consent in prox flow : %s, error: %s", buf, 0x16u);
              v19 = *(v4 + 273);
            }

            if (v19 == 3)
            {
              v23 = 4;
            }

            else
            {
              v23 = 3;
            }

            sub_100319F10(v4, v23);
            if (*(v4 + 273) == 3)
            {
              v24 = 45;
            }

            else
            {
              v24 = 72;
            }

            if (*(v4 + 272) == 10)
            {
              sub_100319F10(v4, 12);
              sub_100319F28(v4, 70073);
              v24 = 70;
            }

            if ((*(a1 + 520) & 1) == 0)
            {
              buf[0] = 1;
              buf[1] = v24;
              if (*(v4 + 343) < 0)
              {
                sub_100005F2C(&buf[8], *(v4 + 320), *(v4 + 328));
              }

              else
              {
                *&buf[8] = *(v4 + 320);
                v74 = *(v4 + 336);
              }

              sub_1002549A0(a1, (v4 + 320), v75);
              v75[3] = 0;
              v75[4] = 0;
              sub_100254AA0(a1 + 448, buf);
              sub_100254BE4(buf);
            }

            v57 = 0;
            v58 = 0;
            sub_100254358(a1, v4 + 320, 11, v24, &v58, &v57);
            sub_10001021C(&v57);
            sub_100005978(&v58);
            if (*(v4 + 343) < 0)
            {
              sub_100005F2C(v55, *(v4 + 320), *(v4 + 328));
            }

            else
            {
              *v55 = *(v4 + 320);
              v56 = *(v4 + 336);
            }

            sub_100255D0C(a1, v55);
            if (SHIBYTE(v56) < 0)
            {
              operator delete(v55[0]);
            }

            sub_100254E74(a1);
          }

          else
          {

            sub_10026D814(a1, v4 + 320);
          }
        }
      }

      return;
    }

    if ((*(a1 + 146) & 1) != 0 || *(a1 + 148) == 1)
    {
      *(v4 + 908) = 1;
      v50 = 257;
      sub_10026E010(a1, v4 + 320, &v50);
      return;
    }

    v14 = *(a1 + 72);
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = *(a1 + 64);
        if (v16)
        {
          *(v4 + 908) = 1;
          v47 = 0;
          v48 = 0;
          sub_100254358(a1, v4 + 320, 2, 0, &v48, &v47);
          sub_10001021C(&v47);
          sub_100005978(&v48);
          if (*(v4 + 319) < 0)
          {
            sub_100005F2C(__dst, *(v4 + 296), *(v4 + 304));
          }

          else
          {
            *__dst = *(v4 + 296);
            v46 = *(v4 + 312);
          }

          v32 = *(v4 + 274);
          v33 = *(v4 + 282);
          if (*(v4 + 343) < 0)
          {
            sub_100005F2C(v43, *(v4 + 320), *(v4 + 328));
          }

          else
          {
            *v43 = *(v4 + 320);
            v44 = *(v4 + 336);
          }

          memset(v42, 0, sizeof(v42));
          sub_10004EFD0(v42, *(v4 + 720), *(v4 + 728), 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 728) - *(v4 + 720)) >> 3));
          v34 = *(v4 + 584);
          v35 = *(v4 + 592);
          if (*(v4 + 623) < 0)
          {
            sub_100005F2C(v40, *(v4 + 600), *(v4 + 608));
          }

          else
          {
            *v40 = *(v4 + 600);
            v41 = *(v4 + 616);
          }

          if (*(v4 + 695) < 0)
          {
            sub_100005F2C(v38, *(v4 + 672), *(v4 + 680));
          }

          else
          {
            *v38 = *(v4 + 672);
            v39 = *(v4 + 688);
          }

          if (*(v4 + 671) < 0)
          {
            sub_100005F2C(v36, *(v4 + 648), *(v4 + 656));
          }

          else
          {
            *v36 = *(v4 + 648);
            v37 = *(v4 + 664);
          }

          (*(*v16 + 16))(v16, __dst, v32, v33, v43, v42, v34, v35, v40, v38, v36);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }

          if (SHIBYTE(v39) < 0)
          {
            operator delete(v38[0]);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
          }

          *buf = v42;
          sub_1000087B4(buf);
          if (SHIBYTE(v44) < 0)
          {
            operator delete(v43[0]);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(__dst[0]);
          }

LABEL_136:
          sub_100004A34(v15);
          return;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_1017665C8(v4, (v4 + 320), v25);
    }

    v51 = 11;
    sub_100260418(a1, buf);
    v49 = 56;
    __p.__r_.__value_.__r.__words[0] = 0;
    LOWORD(v65) = 256;
    LODWORD(v69) = 70009;
    BYTE4(v69) = 1;
    sub_1002540BC(a1, v4 + 320, &v51, 0, buf, &v49, &__p, &v65, &v69, a1 + 352);
    sub_10001021C(&__p.__r_.__value_.__l.__data_);
    sub_100005978(buf);
    if (v15)
    {
      goto LABEL_136;
    }
  }
}

void sub_100255A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  *(v46 - 144) = &a30;
  sub_1000087B4((v46 - 144));
  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

void sub_100255D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 336);
  if (*(a1 + 328) == v2)
  {
    return;
  }

  v5 = sub_10025CD10((a1 + 328), a2);
  if (v2 == v5)
  {
    return;
  }

  v6 = v5;
  sub_100319F44(v5);
  __p[0] = 0;
  __p[1] = 0;
  v38 = 0;
  sub_100260070(a2, __p);
  (***(a1 + 48))(&v35);
  ServiceMap = Registry::getServiceMap(v35);
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
  v39 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v39);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_10:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_11:
  (*(*v15 + 88))(v15, __p);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v36)
  {
    sub_100004A34(v36);
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v17 = *(a1 + 336);
  v18 = *(a1 + 352);
  if (v18 == v17)
  {
    if (v6 + 1072 != v17)
    {
      do
      {
        v30 = v6 + 1072;
        sub_10026A694(v6, (v6 + 1072));
        v31 = v6 + 2144;
        v6 += 1072;
      }

      while (v31 != v17);
      v17 = *(a1 + 336);
      v6 = v30;
    }

    while (v17 != v6)
    {
      v17 -= 1072;
      sub_10027C3B4(v17);
    }

    *(a1 + 336) = v6;
  }

  else
  {
    v19 = (v18 + 320);
    v20 = *(v18 + 343);
    v21 = v20;
    v22 = *(v18 + 328);
    if ((v20 & 0x80u) == 0)
    {
      v23 = v20;
    }

    else
    {
      v23 = v22;
    }

    v24 = *(a2 + 23);
    v25 = v24;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 8);
    }

    if (v23 == v24 && (v21 >= 0 ? (v26 = v19) : (v26 = *v19), v25 >= 0 ? (v27 = a2) : (v27 = *a2), !memcmp(v26, v27, v23)))
    {
      if (v6 + 1072 == v17)
      {
        v33 = v6;
      }

      else
      {
        v32 = v6;
        do
        {
          v33 = v32 + 1072;
          sub_10026A694(v32, (v32 + 1072));
          v34 = v32 + 2144;
          v32 += 1072;
        }

        while (v34 != v17);
        v17 = *(a1 + 336);
      }

      while (v17 != v33)
      {
        v17 -= 1072;
        sub_10027C3B4(v17);
      }

      *(a1 + 336) = v33;
    }

    else
    {
      if (v6 + 1072 != v17)
      {
        do
        {
          v28 = v6 + 1072;
          sub_10026A694(v6, (v6 + 1072));
          v29 = v6 + 2144;
          v6 += 1072;
        }

        while (v29 != v17);
        v17 = *(a1 + 336);
        v6 = v28;
      }

      while (v17 != v6)
      {
        v17 -= 1072;
        sub_10027C3B4(v17);
      }

      *(a1 + 336) = v6;
      v6 = sub_10025CD10((a1 + 328), v19);
    }

    *(a1 + 352) = v6;
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100256034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100256080(uint64_t a1, uint64_t *a2, char a3, uint64_t a4)
{
  *(a1 + 144) = 2;
  *(a1 + 149) = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I start transfer session on target. proximity. %p", buf, 0xCu);
  }

  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *(a1 + 248);
    *(a1 + 240) = v8;
    *(a1 + 248) = v9;
    if (v10)
    {
      sub_100004A34(v10);
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fetching transfer plan list from source device", buf, 2u);
    }

    if (*(a1 + 848))
    {
      v12 = sub_100649C38(3);
      sub_10000501C(buf, v12);
      memset(v18, 0, sizeof(v18));
      sub_10016FB64(v18, buf, &v20, 1uLL);
      sub_100004AA0(&v16, (a1 + 8));
      v13 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
      }

      v21 = 0;
      operator new();
    }

    buf[0] = 56;
    v15 = *(a4 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15, buf);
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766640();
    }
  }

  else
  {
    buf[0] = 6;
    v14 = *(a4 + 24);
    if (!v14)
    {
      sub_100022DB4();
    }

    (*(*v14 + 48))(v14, buf);
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766674();
    }
  }
}

void sub_1002565E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100256700(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 144) == 2)
  {
    if (*(a1 + 240))
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v10 = a3[1];
      if (*a3 != v10)
      {
        v11 = 0;
        v12 = *a3 + 40;
        do
        {
          if (v11 >= v26)
          {
            v11 = sub_1000053A0(&v24, v12);
          }

          else
          {
            if (*(v12 + 23) < 0)
            {
              sub_100005F2C(v11, *v12, *(v12 + 8));
            }

            else
            {
              v13 = *v12;
              *(v11 + 16) = *(v12 + 16);
              *v11 = v13;
            }

            v11 += 24;
          }

          v25 = v11;
          v14 = v12 + 120;
          v12 += 160;
        }

        while (v14 != v10);
      }

      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fetching transfer plan information from source device", buf, 2u);
      }

      *(a1 + 151) = 1;
      memset(&__p, 0, sizeof(__p));
      bzero(buf, 0x430uLL);
      v37 = 4;
      v48 = 0;
      v49 = 0;
      v61 = 0;
      v62 = 0;
      v63 = 0;
      v67 = 0;
      v70 = 0;
      v71 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = 0;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
      v52 = 0u;
      memset(v53, 0, sizeof(v53));
      v50 = 0u;
      v51 = 0u;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v64 = 0u;
      v65 = 0;
      v66 = 0;
      v69 = 0;
      v68 = 0;
      v74 = 0;
      v73 = 0;
      v16 = *a3;
      v17 = a3[1] - *a3;
      v72 = 0u;
      if (v17 == 160)
      {
        *v29 = 0uLL;
        if (sub_100256EF0(a1, a2, buf, v16, a4, v29, (a1 + 824)))
        {
          std::string::operator=(&__p, v53);
        }
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v21 = (*(**(a1 + 48) + 32))(*(a1 + 48));
        sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), 0, v21, *(a1 + 145), v29);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = *v29;
      }

      if (sub_1002535E4(a1))
      {
        memset(v34, 0, sizeof(v34));
        v33 = 0u;
        v32 = 0u;
        v31 = 0u;
        v30 = 0u;
        memset(&v29[8], 0, 48);
        *v29 = a1;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v29[8], *a2, *(a2 + 8));
        }

        else
        {
          *&v29[8] = *a2;
          *&v29[24] = *(a2 + 16);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v29[32], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v29[32] = __p;
        }

        v30 = 0uLL;
        *&v31 = 0;
        sub_10004EFD0(&v30, v24, v25, 0xAAAAAAAAAAAAAAABLL * ((v25 - v24) >> 3));
        *(&v31 + 1) = 0;
        v32 = 0uLL;
        sub_10004EFD0(&v31 + 8, *a4, *(a4 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3));
        sub_100004AA0(&v27, (a1 + 8));
        v22 = *(&v27 + 1);
        v33 = v27;
        if (*(&v27 + 1))
        {
          atomic_fetch_add_explicit((*(&v27 + 1) + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v22);
        }

        sub_10000FED0(v34, a5);
        sub_100257334(v28, v29);
        v28[22] = 0;
        operator new();
      }

      sub_1000224C8(v35, a5);
      sub_10025298C(a1, a2, &v24, a4, &__p, v35);
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017666A8();
    }

    return sub_10000FFD0(a5, 0);
  }

  else
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Skip for non proximity flow", buf, 2u);
    }

    return sub_10000FFD0(a5, 1);
  }
}

void sub_100256DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  operator delete(v68);
  sub_1002574B4(&a22);
  sub_1002574B4(&a45);
  sub_10027C3B4(&a68);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  a68 = &a16;
  sub_1000087B4(&a68);
  _Unwind_Resume(a1);
}

BOOL sub_100256EF0(uint64_t a1, const std::string *a2, unint64_t a3, __int128 *a4, std::string **a5, _OWORD *a6, const std::string *a7)
{
  v12 = *(a1 + 168);
  v11 = *(a1 + 176);
  sub_100922314((a4 + 24), a3, &v34);
  v13 = &v36;
  if (*(a4 + 63) < 0)
  {
    sub_100005F2C(&v36, *(a4 + 5), *(a4 + 6));
  }

  else
  {
    v36 = *(a4 + 40);
    v37 = *(a4 + 7);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__p, *a4, *(a4 + 1));
  }

  else
  {
    __p = *a4;
    v39 = *(a4 + 2);
  }

  if (v12 == v11)
  {
    v11 = v12;
  }

  else
  {
    if (v37 >= 0)
    {
      v14 = HIBYTE(v37);
    }

    else
    {
      v14 = *(&v36 + 1);
    }

    if (v37 < 0)
    {
      v13 = v36;
    }

    v15 = v12 + 24;
    while (1)
    {
      v16 = *(v15 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v15 + 8);
      }

      if (v16 == v14)
      {
        v18 = v17 >= 0 ? v15 : *v15;
        if (!memcmp(v18, v13, v14))
        {
          break;
        }
      }

      v19 = v15 + 648;
      v15 += 672;
      if (v19 == v11)
      {
        goto LABEL_25;
      }
    }

    v11 = v15 - 24;
  }

LABEL_25:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  v20 = *(a1 + 176);
  if (v11 == v20)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017666DC();
    }
  }

  else
  {
    sub_10064B544(v11, v42);
    sub_10026A694(a3, v42);
    sub_10027C3B4(v42);
    std::string::operator=((a3 + 296), a2);
    std::string::operator=((a3 + 344), a4);
    *(a3 + 274) = *(a4 + 24);
    std::string::operator=((a3 + 320), (a4 + 40));
    if (*(a1 + 1120) == 5)
    {
      *&v42[0].__r_.__value_.__l.__data_ = 0uLL;
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v11;
        if (*(v11 + 23) < 0)
        {
          v22 = *v11;
        }

        *buf = 136315138;
        v41 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Set SourceEID for CrossPlatform transfer case %s", buf, 0xCu);
      }

      if (sub_1009222A0())
      {
        *(a3 + 274) = *&v42[0].__r_.__value_.__l.__data_;
      }
    }

    *(a3 + 584) = *a6;
    std::string::operator=((a3 + 600), a7);
    v23 = sub_10026AB6C(a1, a3);
    v24 = (*(**(a1 + 48) + 32))(*(a1 + 48));
    sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v23, v24, *(a1 + 145), v42);
    v26 = (a3 + 648);
    if (*(a3 + 671) < 0)
    {
      operator delete(*v26);
    }

    *v26 = *&v42[0].__r_.__value_.__l.__data_;
    *(a3 + 664) = *(&v42[0].__r_.__value_.__l + 2);
    CodingUtility::generateUUID(v42, v25);
    v27 = (a3 + 672);
    if (*(a3 + 695) < 0)
    {
      operator delete(*v27);
    }

    *v27 = *&v42[0].__r_.__value_.__l.__data_;
    *(a3 + 688) = *(&v42[0].__r_.__value_.__l + 2);
    if ((a3 + 720) != a5)
    {
      sub_100008234((a3 + 720), *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
    }

    if (*(a1 + 147) == 1)
    {
      v28 = *(a1 + 72);
      if (v28)
      {
        v29 = std::__shared_weak_count::lock(v28);
      }

      else
      {
        v29 = 0;
      }

      if (*(a1 + 634) == 1 && sub_10026ABF8(a1, a3))
      {
        *(a3 + 1066) = 1;
      }

      if (v29)
      {
        sub_100004A34(v29);
      }
    }
  }

  return v11 != v20;
}

void sub_1002572E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100257334(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10004EFD0(a1 + 56, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_10004EFD0(a1 + 80, *(a2 + 80), *(a2 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 112);
  *(a1 + 112) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1000224C8(a1 + 120, a2 + 120);
  return a1;
}

void sub_10025744C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v11 + 31) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002574B4(uint64_t a1)
{
  sub_10000FF50(a1 + 120);
  v2 = *(a1 + 112);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = (a1 + 80);
  sub_1000087B4(&v4);
  v4 = (a1 + 56);
  sub_1000087B4(&v4);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100257534(uint64_t a1, uint64_t a2)
{
  v122[1] = 0;
  v122[0] = 0;
  v121 = v122;
  v120 = 0;
  v119 = 0;
  v118 = &v119;
  memset(v117, 0, sizeof(v117));
  sub_1002584E0(a1, v117);
  v115 = 0;
  memset(&v116, 0, sizeof(v116));
  v113 = 0;
  v114 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v108 = 0uLL;
  v109 = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  sub_100288F04(v101, a1 + 768);
  sub_100934714(v101, &v102);
  sub_100077CD4(v101, v101[1]);
  if (*(a1 + 147) == 1)
  {
    v4 = *(a1 + 88);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 80);
        if (v7)
        {
          memset(__p, 0, 24);
          (*(*v7 + 512))(__p);
          v8 = HIBYTE(__p[2]);
          v9 = HIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v8 = __p[1];
          }

          if (v8)
          {
            sub_100073EE8(&v102, __p);
            v9 = HIBYTE(__p[2]);
          }

          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_100004A34(v6);
      }
    }
  }

  v99 = 0u;
  v100 = 0u;
  v98 = 0u;
  v10 = *(a1 + 56);
  v96 = *(a1 + 48);
  v97 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100B28DBC(&v98, a1 + 40, &v96, a2, a1 + 744);
  if (v97)
  {
    sub_100004A34(v97);
  }

  v11 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v11 != v12)
  {
    v13 = 0uLL;
    v79 = *(a1 + 200);
    while (1)
    {
      v143 = 0;
      v142 = v13;
      v141 = v13;
      v140 = v13;
      v139 = v13;
      v138 = v13;
      v137 = v13;
      v135 = v13;
      v136 = v13;
      v133 = v13;
      v134 = v13;
      v132[13] = v13;
      v132[14] = v13;
      v132[11] = v13;
      v132[12] = v13;
      v132[9] = v13;
      v132[10] = v13;
      v132[7] = v13;
      v132[8] = v13;
      v132[5] = v13;
      v132[6] = v13;
      v132[3] = v13;
      v132[4] = v13;
      v132[1] = v13;
      v132[2] = v13;
      v132[0] = v13;
      *&__str_16[32] = 0;
      *__str_16 = v13;
      *&__str_16[16] = v13;
      __str = v13;
      v93 = 0;
      v94 = 0;
      v95 = 0;
      sub_100074920(v92, &v102);
      memset(__p, 0, 24);
      memset(v91, 0, sizeof(v91));
      v14 = sub_10092DB68((a1 + 40), v11 + 24, v92, __p, v91, &v93, v132, &__str);
      *v90 = v91;
      sub_1000087B4(v90);
      *v90 = __p;
      sub_10027B2AC(v90);
      sub_100009970(v92, v92[1]);
      if (v14)
      {
        break;
      }

LABEL_141:
      __p[0] = &v93;
      sub_10027B454(__p);
      if ((__str_16[7] & 0x80000000) != 0)
      {
        operator delete(__str);
      }

      sub_100111C2C(v132);
      v11 += 56;
      v13 = 0uLL;
      if (v11 == v12)
      {
        goto LABEL_144;
      }
    }

    v15 = *(v11 + 32);
    if (v15 != *(v11 + 24))
    {
      memset(v90, 0, sizeof(v90));
      PB::Reader::Reader(v90, *(v11 + 24), v15 - *(v11 + 24));
      v127 = 0u;
      memset(__p, 0, sizeof(__p));
      sub_1006E0F18(__p);
      sub_1006E1534(__p, v90);
      if (v106 >= v107)
      {
        v16 = sub_10027C664(&v105, __p);
      }

      else
      {
        v16 = sub_1006E12FC(v106, __p) + 64;
      }

      v106 = v16;
      sub_1006E1008(__p);
    }

    v87 = 0;
    v88 = 0;
    v89 = 0;
    memset(v90, 0, 24);
    sub_1003163A0(v132, v90);
    v144 = 0uLL;
    v145 = 0;
    sub_100316428(v132, v17, &v144);
    v124 = 0;
    v123 = 0;
    v125 = 0;
    sub_1003162E0(v132, &v123);
    v18 = *(a1 + 216);
    v19 = *(a1 + 224);
    if (v18 != v19)
    {
      v20 = v18 + 95;
      do
      {
        if (sub_10016FA58(v90, (v20 - 71)) || sub_10016FA58(&v144, (v20 - 47)))
        {
          if (sub_10016FA58(&v123, (v20 - 23)))
          {
            sub_1003165A4(v132, (v20 - 23));
          }

          else
          {
            if (*(v20 - 48) < 0)
            {
              sub_100005F2C(__p, *(v20 - 71), *(v20 - 63));
            }

            else
            {
              v21 = *(v20 - 71);
              __p[2] = *(v20 - 55);
              *__p = v21;
            }

            if (*(v20 - 24) < 0)
            {
              sub_100005F2C(&__p[3], *(v20 - 47), *(v20 - 39));
            }

            else
            {
              v22 = *(v20 - 47);
              __p[5] = *(v20 - 31);
              *&__p[3] = v22;
            }

            if (*v20 < 0)
            {
              sub_100005F2C(&v127, *(v20 - 23), *(v20 - 15));
            }

            else
            {
              v23 = *(v20 - 23);
              v128 = *(v20 - 7);
              v127 = v23;
            }

            v24 = v88;
            if (v88 >= v89)
            {
              v88 = sub_10027C8C4(&v87, __p);
              if (SHIBYTE(v128) < 0)
              {
                operator delete(v127);
              }
            }

            else
            {
              v25 = *__p;
              v88[2] = __p[2];
              *v24 = v25;
              memset(__p, 0, 24);
              v26 = __p[5];
              *(v24 + 3) = *&__p[3];
              v24[5] = v26;
              memset(&__p[3], 0, 24);
              v27 = v127;
              v24[8] = v128;
              *(v24 + 3) = v27;
              v128 = 0;
              v127 = 0uLL;
              v88 = v24 + 9;
            }

            if (SHIBYTE(__p[5]) < 0)
            {
              operator delete(__p[3]);
            }

            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v28 = v20 + 105;
        v20 += 200;
      }

      while (v28 != v19);
    }

    sub_100009970(&v123, v124);
    sub_100009970(&v144, *(&v144 + 1));
    sub_100009970(v90, *&v90[8]);
    sub_10027CD10(&v108, v108.n128_i64[1], v87, v88, 0x8E38E38E38E38E39 * ((v88 - v87) >> 3));
    __p[1] = 0;
    __p[0] = 0;
    if (*&__str_16[24] != 0)
    {
      v29 = __str_16[7];
      if (__str_16[7] < 0)
      {
        v29 = *(&__str + 1);
      }

      if (v29)
      {
        __p[0] = &__str_16[24];
        v30 = sub_100289074(&v121, &__str_16[24]);
        std::string::operator=(v30 + 2, &__str);
      }
    }

    if (sub_100B28EF8(&v98, &v93))
    {
      goto LABEL_140;
    }

    v32 = v93;
    v31 = v94;
    v33 = *(a1 + 848);
    if (*(v33 + 167) < 0)
    {
      sub_100005F2C(__dst, *(v33 + 144), *(v33 + 152));
    }

    else
    {
      *__dst = *(v33 + 144);
      v86 = *(v33 + 160);
    }

    v34 = HIBYTE(v86);
    if (v32 == v31)
    {
LABEL_73:
      v42 = 0;
      if (v34 < 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v86 >= 0)
      {
        v35 = HIBYTE(v86);
      }

      else
      {
        v35 = __dst[1];
      }

      if (v86 >= 0)
      {
        v36 = __dst;
      }

      else
      {
        v36 = __dst[0];
      }

      v37 = v32 + 360;
      while (1)
      {
        v38 = *(v37 + 23);
        v39 = v38;
        if ((v38 & 0x80u) != 0)
        {
          v38 = *(v37 + 8);
        }

        if (v38 != v35)
        {
          break;
        }

        v40 = v39 >= 0 ? v37 : *v37;
        if (memcmp(v40, v36, v35))
        {
          break;
        }

        v41 = v37 + 312;
        v37 += 672;
        if (v41 == v31)
        {
          goto LABEL_73;
        }
      }

      v42 = 1;
      if (v34 < 0)
      {
LABEL_86:
        operator delete(__dst[0]);
        if (!v42)
        {
          goto LABEL_87;
        }

        goto LABEL_75;
      }
    }

    if (!v42)
    {
LABEL_87:
      if ((sub_100B29538(&v98, &v93, *(v11 + 48)) & 1) == 0)
      {
        sub_100005308(&v116, v11);
        if (v137 >= 0)
        {
          v53 = HIBYTE(v137);
        }

        else
        {
          v53 = v137;
        }

        memset(v90, 0, 24);
        sub_1000677C4(v90, v53 + 1);
        if (v90[23] >= 0)
        {
          v54 = v90;
        }

        else
        {
          v54 = *v90;
        }

        if (v53)
        {
          if (v137 >= 0)
          {
            v55 = &v136 + 8;
          }

          else
          {
            v55 = *(&v136 + 1);
          }

          memmove(v54, v55, v53);
        }

        *&v54[v53] = 58;
        if (v134 >= 0)
        {
          v56 = &v133 + 8;
        }

        else
        {
          v56 = *(&v133 + 1);
        }

        if (v134 >= 0)
        {
          v57 = HIBYTE(v134);
        }

        else
        {
          v57 = v134;
        }

        v58 = std::string::append(v90, v56, v57);
        v59 = v58->__r_.__value_.__r.__words[0];
        *&v144 = v58->__r_.__value_.__l.__size_;
        *(&v144 + 7) = *(&v58->__r_.__value_.__r.__words[1] + 7);
        v60 = HIBYTE(v58->__r_.__value_.__r.__words[2]);
        v58->__r_.__value_.__l.__size_ = 0;
        v58->__r_.__value_.__r.__words[2] = 0;
        v58->__r_.__value_.__r.__words[0] = 0;
        v61 = v114;
        if (v114 >= v115)
        {
          v63 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3);
          v64 = v63 + 1;
          if (v63 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          if (0x5555555555555556 * ((v115 - v113) >> 3) > v64)
          {
            v64 = 0x5555555555555556 * ((v115 - v113) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v115 - v113) >> 3) >= 0x555555555555555)
          {
            v65 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v65 = v64;
          }

          __p[4] = &v113;
          if (v65)
          {
            sub_100005348(&v113, v65);
          }

          v67 = 8 * ((v114 - v113) >> 3);
          *v67 = v59;
          *(v67 + 8) = v144;
          *(v67 + 15) = *(&v144 + 7);
          *(v67 + 23) = v60;
          v62 = 24 * v63 + 24;
          v68 = (24 * v63 - (v114 - v113));
          memcpy(v68, v113, v114 - v113);
          v69 = v113;
          v70 = v115;
          v113 = v68;
          v114 = v62;
          v115 = 0;
          __p[2] = v69;
          __p[3] = v70;
          __p[1] = v69;
          __p[0] = v69;
          sub_1000054E0(__p);
        }

        else
        {
          *v114 = v59;
          *(v61 + 1) = v144;
          *(v61 + 15) = *(&v144 + 7);
          v61[23] = v60;
          v62 = (v61 + 24);
        }

        v114 = v62;
        goto LABEL_138;
      }

      if (*(a1 + 144) != 1 || (*(a1 + 145) & 1) != 0 || *(a1 + 888) != 1 || (sub_100074920(v84, a1 + 864), v50 = sub_100B299D0(&v98, &v93, v84), sub_100009970(v84, v84[1]), v50))
      {
        v143 = *(v11 + 48);
        sub_1003172E0(v132, v49, &v82);
        sub_1002816F8((a1 + 168), *(a1 + 176), v82, v83, 0xCF3CF3CF3CF3CF3DLL * ((v83 - v82) >> 5));
        __p[0] = &v82;
        sub_10027B454(__p);
        v51 = v111;
        if (v111 >= v112)
        {
          v66 = sub_10027D444(&v110, &__str);
        }

        else
        {
          if ((__str_16[7] & 0x80000000) != 0)
          {
            sub_100005F2C(v111, __str, *(&__str + 1));
          }

          else
          {
            v52 = __str;
            *(v111 + 2) = *__str_16;
            *v51 = v52;
          }

          v71 = *&__str_16[8];
          *(v51 + 40) = *&__str_16[24];
          *(v51 + 24) = v71;
          v66 = (v51 + 56);
        }

        v111 = v66;
        memset(v90, 0, 24);
        sub_1003162A0(v132, v90);
        v144 = 0uLL;
        v145 = 0;
        sub_1003162E0(v132, &v144);
        v72 = v144;
        if (v144 != (&v144 + 8))
        {
          do
          {
            sub_100174FC8(&v118, v72 + 4);
            v73 = v72[1];
            if (v73)
            {
              do
              {
                v74 = v73;
                v73 = *v73;
              }

              while (v73);
            }

            else
            {
              do
              {
                v74 = v72[2];
                v75 = *v74 == v72;
                v72 = v74;
              }

              while (!v75);
            }

            v72 = v74;
          }

          while (v74 != (&v144 + 8));
        }

        v77 = v93;
        v76 = v94;
        while (v77 != v76)
        {
          bzero(__p, 0x2A0uLL);
          sub_10027D7F4(__p, v77);
          v123 = &__p[3];
          v78 = sub_100173F08(a1 + 1032, &__p[3]);
          std::string::operator=((v78 + 56), v129);
          sub_10027DF50(__p);
          v77 += 42;
        }

        sub_100009970(&v144, *(&v144 + 1));
LABEL_138:
        if ((v90[23] & 0x80000000) != 0)
        {
          operator delete(*v90);
        }
      }

LABEL_140:
      __p[0] = &v87;
      sub_10027E114(__p);
      v12 = v79;
      goto LABEL_141;
    }

LABEL_75:
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = *(a1 + 848);
      v45 = (v44 + 144);
      if (*(v44 + 167) < 0)
      {
        v45 = *v45;
      }

      v46 = &v136 + 8;
      if (v137 < 0)
      {
        v46 = *(&v136 + 1);
      }

      v47 = &v133 + 8;
      if (v134 < 0)
      {
        v47 = *(&v133 + 1);
      }

      v48 = &v138;
      if (SBYTE7(v139) < 0)
      {
        v48 = v138;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v45;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v46;
      HIWORD(__p[2]) = 2080;
      __p[3] = v47;
      LOWORD(__p[4]) = 2082;
      *(&__p[4] + 2) = v48;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I filter out non %s record. S/N:%s, name:%s, model:%{public}s", __p, 0x2Au);
    }

    goto LABEL_140;
  }

LABEL_144:
  sub_10000501C(v80, "Manatee_DownloadData_");
  sub_10092B3FC((a1 + 40), v80, &v105);
  if (v81 < 0)
  {
    operator delete(v80[0]);
  }

  sub_100258598(a1, &v116, &v113, &v108);
  if (v120)
  {
    sub_100258D38(a1 + 560, &v118);
  }

  sub_100258E10(a1 + 576, &v121);
  if (v99)
  {
    sub_100004A34(v99);
  }

  sub_100009970(&v102, v103);
  __p[0] = &v105;
  sub_10027E1BC(__p);
  __p[0] = &v108;
  sub_10027E114(__p);
  __p[0] = &v110;
  sub_10027E27C(__p);
  __p[0] = &v113;
  sub_1000087B4(__p);
  __p[0] = &v116;
  sub_1000087B4(__p);
  __p[0] = v117;
  sub_1000087B4(__p);
  sub_1000DD0AC(&v118, v119);
  sub_100045B14(&v121, v122[0]);
}

void sub_100258210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  sub_100004A34(v70);
  sub_100009970(&a58, a59);
  STACK[0x560] = &a61;
  sub_10027E1BC(&STACK[0x560]);
  STACK[0x560] = &a64;
  sub_10027E114(&STACK[0x560]);
  STACK[0x560] = &a67;
  sub_10027E27C(&STACK[0x560]);
  STACK[0x560] = &a70;
  sub_1000087B4(&STACK[0x560]);
  STACK[0x560] = &STACK[0x200];
  sub_1000087B4(&STACK[0x560]);
  STACK[0x560] = &STACK[0x218];
  sub_1000087B4(&STACK[0x560]);
  sub_1000DD0AC(&STACK[0x230], STACK[0x238]);
  sub_100045B14(&STACK[0x248], STACK[0x250]);
  _Unwind_Resume(a1);
}

void sub_1002584E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 88);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(a1 + 80);
  if (!v7)
  {
    sub_100004A34(v6);
LABEL_8:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  (*(*v7 + 72))(v7);

  sub_100004A34(v6);
}

__n128 sub_100258598(uint64_t a1, std::string *a2, std::string **a3, __n128 *a4)
{
  if (*(a1 + 112))
  {
    v7 = a2->__r_.__value_.__r.__words[0];
    size = a2->__r_.__value_.__l.__size_;
    if (v7 != size)
    {
      memset(&v22, 0, sizeof(v22));
      if (&v22 != a2)
      {
        sub_100008234(&v22, v7, size, 0xAAAAAAAAAAAAAAABLL * ((size - v7) >> 3));
      }

      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D1184(*a3, a3[1], "\n\t", 2uLL, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I delete record from :\n\t%s", buf, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *buf = 0uLL;
      __p.__r_.__value_.__r.__words[0] = "CellularPlanTransferFlowController";
      sub_1001048A4();
    }

    result = *a4;
    v12 = a4->n128_u64[1];
    v13 = a4->n128_u64[0];
    if (a4->n128_u64[0] != v12)
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = "\n\t";
        *&buf[8] = 2;
        sub_100296C5C(v13, &v22);
        __p = v22;
        for (i = v13 + 72; i != v12; i += 72)
        {
          sub_100074CFC(buf, &v22);
          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v22;
          }

          else
          {
            v16 = v22.__r_.__value_.__r.__words[0];
          }

          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v17 = v22.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v16, v17);
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }

          sub_100296C5C(i, &v22);
          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v22;
          }

          else
          {
            v18 = v22.__r_.__value_.__r.__words[0];
          }

          if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v19 = v22.__r_.__value_.__l.__size_;
          }

          std::string::append(&__p, v18, v19);
          if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v22.__r_.__value_.__l.__data_);
          }
        }

        v20 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v20 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v22.__r_.__value_.__l.__data_) = 136315138;
        *(v22.__r_.__value_.__r.__words + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I deleting dangling blocklist items:\n\t%s", &v22, 0xCu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      *&__p.__r_.__value_.__l.__data_ = 0uLL;
      v22.__r_.__value_.__r.__words[0] = "CellularPlanTransferFlowController";
      sub_1001048A4();
    }
  }

  return result;
}

void sub_100258BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258D38(uint64_t a1, void *a2)
{
  v5 = 0;
  sub_100289118(a2, &v5);
  sub_10000501C(&__p, "/cc/events/iccid_to_ids_device_id_updated");
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

void sub_100258DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_100258E10(uint64_t a1, uint64_t a2)
{
  if (a1 + 32 != a2)
  {
    sub_10028943C((a1 + 32), *a2, (a2 + 8));
  }

  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void sub_100258E94(uint64_t a1, char a2, uint64_t a3)
{
  *(a1 + 149) = a2;
  v19 = 0;
  v20 = 0;
  (***(a1 + 48))(&v17);
  Registry::getTimerService(&v19, v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v5 = v19;
  if (v19)
  {
    sub_10000501C(__p, "Transfer bootstrap Timeout");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10025918C;
    v12[3] = &unk_101E35FB0;
    v12[4] = a1;
    aBlock = _Block_copy(v12);
    sub_100D23364(v5, __p, 0, 60000000, &object, &aBlock);
    v7 = v17;
    v17 = 0;
    v8 = *(a1 + 1000);
    *(a1 + 1000) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v17;
      v17 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
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

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 144) = 1;
    if (*(a1 + 896) == 1 && *(a1 + 897) == 1)
    {
      sub_1002595B0(a1);
    }

    LOBYTE(v17) = 0;
    v10 = *(a3 + 24);
    if (v10)
    {
      (*(*v10 + 48))(v10, &v17);
      goto LABEL_24;
    }

LABEL_27:
    sub_100022DB4();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766744();
  }

  LOBYTE(v17) = 56;
  v11 = *(a3 + 24);
  if (!v11)
  {
    goto LABEL_27;
  }

  (*(*v11 + 48))(v11, &v17);
LABEL_24:
  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_100259128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
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

  v23 = *(v21 - 40);
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025918C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766778();
  }

  *(v1 + 896) = 0;
  if (*(v1 + 280))
  {
    v36 = 0;
    sub_100259554(v1 + 256, &v36, 0, 5);
    sub_100010250(&v36);
    sub_1002897E8(v1 + 256);
  }

  sub_10016DBD4(v1 + 528);
  v25 = 0u;
  v27 = 0x400000000000000;
  v26 = 0u;
  *&v28[8] = 0u;
  v30 = 0;
  v31 = 0;
  v32 = 318767104;
  v35 = 0u;
  v34 = 0u;
  HIBYTE(v25) = 8;
  v24 = 0x72616C756C6C6543;
  LODWORD(v26) = 1296651109;
  v28[23] = 21;
  qmemcpy(v28, "Transfer plan listing", 21);
  strcpy(&v29[15], "i");
  *(v1 + 144) = 0;
  *v29 = *"1 min timer expired";
  v33 = 23;
  (***(v1 + 48))(&v22);
  ServiceMap = Registry::getServiceMap(v22);
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
  v37 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v37);
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
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_13:
  sub_100D9EC48(__dst, &v24);
  v39 = 0;
  (*(*v10 + 16))(v10, __dst, v38);
  sub_10010DF14(v38);
  if (v21 < 0)
  {
    operator delete(__p);
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

  if ((v13 & 0x80000000) == 0)
  {
    if (v11)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  operator delete(__dst[0]);
  if ((v11 & 1) == 0)
  {
LABEL_23:
    sub_100004A34(v9);
  }

LABEL_24:
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(*v29);
  }

  if ((v28[23] & 0x80000000) != 0)
  {
    operator delete(*v28);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }
}

uint64_t sub_100259554(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v7 = a3;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, &v7, &v6);
}

void sub_1002595B0(uint64_t a1)
{
  if ((*(a1 + 1024) & 1) == 0)
  {
    *(a1 + 1024) = 1;
    if (*(a1 + 112))
    {
      dispatch_group_create();
      operator new();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017667AC();
    }
  }
}

void sub_100259B00()
{
  if (!v0)
  {
    JUMPOUT(0x100259AF0);
  }

  JUMPOUT(0x100259AE8);
}

void sub_100259B0C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017667E0();
  }
}

void sub_100259B48(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766814();
  }
}

void sub_100259B84(uint64_t a1)
{
  *(a1 + 896) = 1;
  if (*(a1 + 897) == 1)
  {
    sub_1002595B0(a1);
  }
}

void sub_100259BA0(uint64_t a1, int a2)
{
  if (*(a1 + 897) != a2)
  {
    *(a1 + 897) = a2;
    if (*(a1 + 896) == 1 && a2 != 0)
    {
      sub_1002595B0(a1);
    }
  }
}

void *sub_100259BC8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[7];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[6];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_100259C28(uint64_t a1, uint64_t a2)
{
  (***(a1 + 48))(&v19);
  ServiceMap = Registry::getServiceMap(v19);
  v5 = ServiceMap;
  v6 = "30AKRemoteDeviceServiceInterface";
  if (("30AKRemoteDeviceServiceInterface" & 0x8000000000000000) != 0)
  {
    v7 = ("30AKRemoteDeviceServiceInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v12)
  {
    v21 = a1;
    sub_100004AA0(&v19, (a1 + 8));
    v14 = v20;
    v22 = v19;
    v23 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
    }

    sub_100295CF8(v24, a2);
    v24[7] = 0;
    operator new();
  }

  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v15 = *(a2 + 24);
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, &v16);
  sub_10028B908(&v16, v17[0]);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100259EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  sub_100296578(va1);
  sub_10026C1F4(va);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100259F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void *sub_100259F84(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100259FCC(uint64_t a1)
{
  if (*(a1 + 1121))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(a1 + 64);
        if (v4)
        {
          (*(*v4 + 88))(v4);
LABEL_12:
          sub_100004A34(v3);
          return;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766848();
    }

    if (v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I not all selected plans are executed, wait.", v6, 2u);
    }
  }
}

void sub_10025A0C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update requested.", buf, 2u);
  }

  if ((*(a1 + 149) & 1) == 0)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not required", buf, 2u);
    }

    v16 = *(a2 + 24);
    if (!v16)
    {
      sub_100022DB4();
    }

    (*(*v16 + 48))(v16);
    return;
  }

  (***(a1 + 48))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  *&v31 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v31);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_15;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_15:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_16:
  isIPad = GestaltUtilityInterface::isIPad(v13);
  if (isIPad)
  {
    v18 = capabilities::ct::defaultVinylCardTypeToGSMA(isIPad);
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v18 & 1) == 0)
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not required for non GSMA iPad", buf, 2u);
      }

      v20 = *(a2 + 24);
      if (!v20)
      {
        sub_100022DB4();
      }

      (*(*v20 + 48))(v20);
      return;
    }
  }

  else
  {
    if ((v14 & 1) == 0)
    {
      sub_100004A34(v12);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  v21 = *(a1 + 72);
  if (v21)
  {
    v22 = std::__shared_weak_count::lock(v21);
    if (v22)
    {
      v23 = *(a1 + 64);
      if (v23)
      {
        if (!(*(*v23 + 224))(v23) || *(a1 + 632) != 2)
        {
          memset(v28, 0, 24);
          sub_1009330A8((a1 + 168), v28);
          *&v31 = a1;
          sub_100004AA0(buf, (a1 + 8));
          v27 = *&buf[8];
          *(&v31 + 1) = *buf;
          v32 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v27);
          }

          sub_10009CF40(v33, a2);
          v30 = 0;
          rest::write_rest_value();
          sub_10000501C(&__p, "/cc/requests/transfer_carrier_bundle_update");
          v28[3] = v30;
          v30 = xpc_null_create();
          *buf = v31;
          v35 = v32;
          *(&v31 + 1) = 0;
          v32 = 0;
          sub_10010BE30(v36, v33);
          v36[7] = 0;
          operator new();
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle update not available over bootstrap", buf, 2u);
        }

        v25 = *(a2 + 24);
        if (!v25)
        {
          sub_100022DB4();
        }

        (*(*v25 + 48))(v25);
LABEL_48:
        sub_100004A34(v22);
        return;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176687C();
  }

  v26 = *(a2 + 24);
  if (!v26)
  {
    sub_100022DB4();
  }

  (*(*v26 + 48))(v26);
  if (v22)
  {
    goto LABEL_48;
  }
}

void sub_10025A618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025A714(uint64_t a1)
{
  if ((*(a1 + 1120) | 4) == 7)
  {
    v2 = *(a1 + 168);
    if (v2 != *(a1 + 176))
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v10 = 0;
      if (*(v2 + 239) < 0)
      {
        sub_100005F2C(__dst, *(v2 + 216), *(v2 + 224));
      }

      else
      {
        *__dst = *(v2 + 216);
        v10 = *(v2 + 232);
      }

      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = std::__shared_weak_count::lock(v3);
        if (v4)
        {
          v5 = v4;
          v6 = *(a1 + 80);
          if (v6)
          {
            if (SHIBYTE(v10) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v8 = v10;
            }

            (*(*v6 + 520))(v6, __p);
            if (SHIBYTE(v8) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100004A34(v5);
        }
      }

      if (SHIBYTE(v10) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }
}

void sub_10025A828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100004A34(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025A864(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 888) == 1)
  {
    v3 = *(a2 + 24);
    if (!v3)
    {
      sub_100022DB4();
    }

    v4 = *(*v3 + 48);

    v4();
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_100288F04(v20, a1 + 768);
    sub_100934714(v20, &v21);
    sub_100077CD4(v20, v20[1]);
    v6 = *(a1 + 192);
    v7 = *(a1 + 200);
    if (v6 == v7)
    {
      goto LABEL_29;
    }

    v8 = 0;
    do
    {
      v37 = 0;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      memset(v29, 0, sizeof(v29));
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      __p = 0u;
      memset(v19, 0, sizeof(v19));
      sub_100074920(v18, &v21);
      memset(v17, 0, sizeof(v17));
      memset(v16, 0, sizeof(v16));
      v9 = sub_10092DB68((a1 + 40), v6 + 24, v18, v17, v16, v19, v29, &__p);
      v24 = v16;
      sub_1000087B4(&v24);
      v24 = v17;
      sub_10027B2AC(&v24);
      sub_100009970(v18, v18[1]);
      if (v9)
      {
        v10 = v31 >= 0 ? HIBYTE(v31) : v31;
        if (!v10)
        {
          goto LABEL_23;
        }

        v11 = *(a1 + 767);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a1 + 752);
        }

        if (v10 != v11 || (v31 >= 0 ? (v13 = &v30 + 8) : (v13 = *(&v30 + 1)), v12 >= 0 ? (v14 = (a1 + 744)) : (v14 = *(a1 + 744)), memcmp(v13, v14, v10)))
        {
LABEL_23:
          ++v8;
        }
      }

      v17[0] = v19;
      sub_10027B454(v17);
      if (SBYTE7(v26) < 0)
      {
        operator delete(__p);
      }

      sub_100111C2C(v29);
      v6 += 56;
    }

    while (v6 != v7);
    if (!v8)
    {
LABEL_29:
      v15 = *(a2 + 24);
      if (!v15)
      {
        sub_100022DB4();
      }

      (*(*v15 + 48))(v15);
    }

    else
    {
      sub_10025ABF0((a1 + 528), a2);
    }

    sub_100009970(&v21, v22);
  }
}

void *sub_10025ABF0(void *a1, uint64_t a2)
{
  sub_10009CF40(v4, a2);
  sub_10028C630(v4, a1);
  sub_10002B644(v4);
  return a1;
}

void sub_10025AC64(uint64_t a1)
{
  *(a1 + 144) = 257;
  memset(&v17, 0, sizeof(v17));
  if (*(a1 + 816) == 1)
  {
    if ((*(a1 + 815) & 0x8000000000000000) == 0)
    {
      if (!*(a1 + 815))
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if (*(a1 + 800))
    {
LABEL_6:
      std::string::operator=(&v17, (a1 + 792));
    }
  }

LABEL_7:
  *(&v15 + 1) = 0;
  v16 = 0;
  *&v15 = &v15 + 8;
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 80);
      if (v5)
      {
        (*(*v5 + 232))(&v33);
        sub_100009970(&v15, *(&v15 + 1));
        v6 = *(&v33 + 1);
        v15 = v33;
        v16 = v34;
        if (v34)
        {
          *(*(&v33 + 1) + 16) = &v15 + 8;
          *&v33 = &v33 + 8;
          *(&v33 + 1) = 0;
          *&v34 = 0;
          v6 = 0;
        }

        else
        {
          *&v15 = &v15 + 8;
        }

        sub_100009970(&v33, v6);
      }

      sub_100004A34(v4);
    }
  }

  v7 = sub_100932AC8(*(a1 + 632), *(a1 + 688), *(a1 + 633));
  v81 = 0;
  v80 = 0u;
  v79 = 0u;
  *v78 = 0u;
  v77 = 0u;
  *v76 = 0u;
  *v75 = 0u;
  v74 = 0u;
  *v73 = 0u;
  *v72 = 0u;
  v70 = 0u;
  memset(v71, 0, sizeof(v71));
  v68 = 0u;
  *v69 = 0u;
  v66 = 0u;
  *v67 = 0u;
  v64 = 0u;
  *v65 = 0u;
  v62 = 0u;
  *v63 = 0u;
  v60 = 0u;
  *v61 = 0u;
  *v59 = 0u;
  v33 = 0uLL;
  *&v34 = 0;
  v19[1] = 0;
  *&v20 = 0;
  v19[0] = &v19[1];
  v13 = 0;
  v14 = 0;
  v12 = &v13;
  sub_100928A9C((a1 + 720), (a1 + 48), (a1 + 40), &v33, (a1 + 664), a1 + 768, &v17, v19, v59, (a1 + 848), &v15, &v12, v7 | 0x100);
  sub_10016A798(&v12, v13);
  sub_10028C89C(v19, v19[1]);
  v19[0] = &v33;
  sub_100112048(v19);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
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
  v33 = 0u;
  v32 = 0;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  *v27 = 0u;
  v24 = 0u;
  *v25 = 0u;
  v22 = 0u;
  *v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  *v19 = 0u;
  sub_10027E420(v19, v59);
  LOBYTE(v32) = 1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  memset(v11, 0, sizeof(v11));
  sub_100315E40(&v33, a1 + 40, v19, v72, &v12, v11);
  v18 = v11;
  sub_1000087B4(&v18);
  v11[0] = &v12;
  sub_10027B2AC(v11);
  sub_1003172E0(&v33, v8, &v9);
  sub_1002816F8((a1 + 168), *(a1 + 176), v9, v10, 0xCF3CF3CF3CF3CF3DLL * ((v10 - v9) >> 5));
  v12 = &v9;
  sub_10027B454(&v12);
  if (v32 == 1)
  {
    v12 = v31 + 1;
    sub_100112048(&v12);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[1]);
    }

    if (SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (BYTE8(v24) == 1)
    {
      if (SBYTE7(v26) < 0)
      {
        operator delete(v25[0]);
      }

      BYTE8(v24) = 0;
    }

    if (BYTE8(v22) == 1)
    {
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23[0]);
      }

      BYTE8(v22) = 0;
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (LOBYTE(v19[0]) == 1 && SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }
  }

  sub_100111C2C(&v33);
  *&v33 = &v80;
  sub_100111D64(&v33);
  if (SBYTE7(v79) < 0)
  {
    operator delete(v78[0]);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76[1]);
  }

  if (SHIBYTE(v76[0]) < 0)
  {
    operator delete(v75[0]);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73[1]);
  }

  if (SHIBYTE(v73[0]) < 0)
  {
    operator delete(v72[0]);
  }

  *&v33 = v71 + 8;
  sub_100112048(&v33);
  if (SHIBYTE(v70) < 0)
  {
    operator delete(v69[1]);
  }

  if (SBYTE7(v68) < 0)
  {
    operator delete(v67[0]);
  }

  if (BYTE8(v64) == 1)
  {
    if (SBYTE7(v66) < 0)
    {
      operator delete(v65[0]);
    }

    BYTE8(v64) = 0;
  }

  if (BYTE8(v62) == 1)
  {
    if (SBYTE7(v64) < 0)
    {
      operator delete(v63[0]);
    }

    BYTE8(v62) = 0;
  }

  if (SBYTE7(v62) < 0)
  {
    operator delete(v61[0]);
  }

  if (LOBYTE(v59[0]) == 1 && SHIBYTE(v60) < 0)
  {
    operator delete(v59[1]);
  }

  sub_100009970(&v15, *(&v15 + 1));
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_10025B17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100004A34(v30);
  sub_100009970(&a22, a23);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10025B254(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidated", v4, 2u);
  }

  v3 = *(a1 + 248);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 151) == 1)
  {
    *(a1 + 150) = 1;
    sub_10064BEE8(a1 + 1056, 3);
    sub_10064BF04(a1 + 1056, 70003);
    sub_10025B320(a1);
    if (*(a1 + 440))
    {
      sub_10025B4DC(a1 + 416, 0, 56);
      sub_10028C948(a1 + 416);
    }
  }
}

void sub_10025B320(uint64_t a1)
{
  v2 = *(a1 + 1000);
  *(a1 + 1000) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 320))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Clear cached transfer available plans callback", v5, 2u);
    }

    v7[0] = *(a1 + 288);
    sub_1000224C8(v8, a1 + 296);
    sub_10025BC84(a1, v7);
    sub_10000FF50(v8);
    sub_10027E938(a1 + 296);
  }

  if (*(a1 + 280))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clear cached transfer plans list callback", v5, 2u);
    }

    sub_10028CC38(v6, a1 + 256);
    sub_10025B8CC(a1, v6);
    sub_1002854D4(v6);
    sub_1002897E8(a1 + 256);
  }

  if (*(a1 + 384) == 1)
  {
    if (*(a1 + 383) < 0)
    {
      operator delete(*(a1 + 360));
    }

    *(a1 + 384) = 0;
  }
}

void sub_10025B4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002854D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025B4DC(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_10025B538(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a1;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I start transfer session on target. card data. %p", buf, 0xCu);
  }

  v8 = *(a1 + 168);
  *(a1 + 144) = a3;
  *(a1 + 146) = a3 == 3;
  *(a1 + 148) = a3 == 4;
    ;
  }

  *(a1 + 176) = v8;
  sub_1003172E0(a2, v7, &v10);
  sub_1002816F8((a1 + 168), *(a1 + 176), v10, v11, 0xCF3CF3CF3CF3CF3DLL * ((v11 - v10) >> 5));
  *buf = &v10;
  sub_10027B454(buf);
}

void sub_10025B674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_10027B454(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10025B698(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Get transfer plans list request", buf, 2u);
  }

  if (*(a1 + 144) == 2)
  {
    if (!*(a1 + 240))
    {
      v8 = 0;
      sub_100259554(a2, &v8, 0, 5);
      v5 = &v8;
      return sub_100010250(v5);
    }
  }

  else if (!*(a1 + 144))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017668B0();
    }

    v9 = 0;
    sub_100259554(a2, &v9, 0, 5);
    v5 = &v9;
    return sub_100010250(v5);
  }

  if (*(a1 + 150))
  {
    sub_10028CC38(v11, a2);
    sub_10025B8CC(a1, v11);
    return sub_1002854D4(v11);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer Plan Listing callback cached", buf, 2u);
    }

    return sub_10025B858((a1 + 256), a2);
  }
}

void *sub_10025B858(void *a1, uint64_t a2)
{
  sub_10028CC38(v4, a2);
  sub_10028C9CC(v4, a1);
  sub_1002854D4(v4);
  return a1;
}

const void **sub_10025B8CC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 159) != 1)
  {
    v8 = a1;
    sub_100004AA0(&v6, (a1 + 8));
    v4 = v7;
    v9 = v6;
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    sub_10028CC38(v11, a2);
    v11[7] = 0;
    operator new();
  }

  v5 = 0;
  sub_100259554(a2, &v5, 0, 63);
  return sub_100010250(&v5);
}

void sub_10025BA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, std::__shared_weak_count *a15)
{
  sub_10002B644(v15 - 72);
  sub_1002656E8(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10025BA88(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10025BADC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 144) != 2)
  {
    if (!*(a1 + 144))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017668E4();
      }

      return sub_10000FFD0(a3, 0);
    }

    goto LABEL_7;
  }

  if (*(a1 + 240))
  {
LABEL_7:
    if (*(a1 + 150))
    {
      v9[0] = sub_100649E80(a2);
      v7 = v9;
      sub_1000224C8(&v10, a3);
      sub_10025BC84(a1, v9);
    }

    else
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Transfer Plan Available callback cached", buf, 2u);
      }

      buf[0] = sub_100649E80(a2);
      v7 = buf;
      sub_1000224C8(&v12, a3);
      sub_10027E890((a1 + 288), buf);
    }

    return sub_10000FF50((v7 + 8));
  }

  return sub_10000FFD0(a3, 0);
}

uint64_t sub_10025BC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  if (v2 == v3)
  {
LABEL_9:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v4 = *(v2 + 294);
      v5 = v4 > 0x12 || ((1 << v4) & 0x50041) == 0;
      if (v5 && v4 - 128 >= 3)
      {
        break;
      }

      v2 += 672;
      if (v2 == v3)
      {
        goto LABEL_9;
      }
    }

    v6 = 1;
  }

  return sub_10000FFD0(a2 + 8, v6);
}

void sub_10025BCE4(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t *a5, __int128 *a6, char a7, uint64_t a8)
{
  v8 = a1;
  v9 = *a3;
  v45 = *(a3 + 8);
  if (*a3 != v45)
  {
    p_p = &__p;
    do
    {
      buf = 0uLL;
      v73 = 0;
      sub_100922314((v9 + 24), a3, &buf);
      v12 = *(v8 + 168);
      v11 = *(v8 + 176);
      sub_10027E9BC(__dst, v9);
      if (SHIBYTE(v73) < 0)
      {
        sub_100005F2C(&__p, buf, *(&buf + 1));
      }

      else
      {
        __p = buf;
        v71 = v73;
      }

      v13 = HIBYTE(v71);
      if (v12 != v11)
      {
        if ((v61 & 0x80u) == 0)
        {
          v14 = v61;
        }

        else
        {
          v14 = v60[1];
        }

        if ((v61 & 0x80u) == 0)
        {
          v15 = v60;
        }

        else
        {
          v15 = v60[0];
        }

        if (v71 >= 0)
        {
          v16 = HIBYTE(v71);
        }

        else
        {
          v16 = *(&__p + 1);
        }

        if (v71 < 0)
        {
          p_p = __p;
        }

        if ((v59 & 0x80u) == 0)
        {
          v17 = v59;
        }

        else
        {
          v17 = __dst[1];
        }

        if ((v59 & 0x80u) == 0)
        {
          v18 = __dst;
        }

        else
        {
          v18 = __dst[0];
        }

        while (1)
        {
          v19 = *(v12 + 47);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v12 + 32);
          }

          if (v19 == v14)
          {
            v21 = v20 >= 0 ? (v12 + 24) : *(v12 + 24);
            if (!memcmp(v21, v15, v14))
            {
              v22 = *(v12 + 23);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = *(v12 + 8);
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v12 : *v12;
                if (!memcmp(v24, p_p, v16))
                {
                  break;
                }
              }

              v25 = *(v12 + 239);
              v26 = v25;
              if ((v25 & 0x80u) != 0)
              {
                v25 = *(v12 + 224);
              }

              if (v25 == v17)
              {
                v27 = v26 >= 0 ? (v12 + 216) : *(v12 + 216);
                if (!memcmp(v27, v18, v17))
                {
                  break;
                }
              }
            }
          }

          v12 += 672;
          if (v12 == v11)
          {
            v12 = v11;
            break;
          }
        }

        p_p = &__p;
        v8 = a1;
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }

      if (v69 < 0)
      {
        operator delete(v68);
      }

      if (v67 < 0)
      {
        operator delete(v66);
      }

      if (v65 < 0)
      {
        operator delete(v64);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (v59 < 0)
      {
        operator delete(__dst[0]);
      }

      if (v12 != *(v8 + 176))
      {
        *(v12 + 294) = 0;
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(buf);
      }

      v9 += 10;
    }

    while (v9 != v45);
  }

  sub_10025C4D4(v8 + 448);
  v28 = *(a3 + 8);
  if (*a3 != v28)
  {
    v29 = *a3 + 40;
    do
    {
      v30 = *(v8 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v29;
        if (*(v29 + 23) < 0)
        {
          v31 = *v29;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v31;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I plan(%s) is scheduled to transfer", &buf, 0xCu);
      }

      v32 = v29 + 120;
      v29 += 160;
    }

    while (v32 != v28);
  }

  *(v8 + 1121) = a4;
  v33 = *(v8 + 144);
  if ((v33 - 3) < 2)
  {
    goto LABEL_77;
  }

  if (*(v8 + 144))
  {
    if (v33 != 1)
    {
LABEL_81:
      buf = 0uLL;
      v73 = 0;
      sub_10025C538(v8, a3, a6, &buf);
      if (buf != *(&buf + 1))
      {
        v34 = *a3;
        v35 = *(a3 + 8);
        if (*a3 != v35)
        {
          do
          {
            sub_10025C600(v8, v34 + 40);
            v34 += 10;
          }

          while (v34 != v35);
        }

        sub_10025C7C4((v8 + 416), a8);
        v48 = v8;
        sub_100004AA0(&p_buf, (v8 + 8));
        v36 = v47;
        v49 = p_buf;
        v50 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v36);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v51, *a2, *(a2 + 8));
        }

        else
        {
          *v51 = *a2;
          v51[2] = *(a2 + 16);
        }

        v52 = 0uLL;
        v53 = 0;
        sub_10027EB58(&v52, buf, *(&buf + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&buf + 1) - buf) >> 5));
        memset(v54, 0, sizeof(v54));
        sub_10004EFD0(v54, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
        v55 = *a6;
        v56 = a7;
        v57 = 0;
        operator new();
      }

      sub_10025B4DC(a8, 1, 0);
      sub_100259FCC(v8);
      p_buf = &buf;
      sub_10027EE48(&p_buf);
      return;
    }

LABEL_77:
    if (0xCCCCCCCCCCCCCCCDLL * ((*(a3 + 8) - *a3) >> 5) >= 2)
    {
      if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101766918();
      }

      sub_10025B4DC(a8, 0, 6);
      return;
    }

    goto LABEL_81;
  }

  if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017668E4();
  }

  sub_10025B4DC(a8, 0, 56);
}

void sub_10025C360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  v50 = v47[3];
  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  operator delete(v47);
  sub_10025C838(&a25);
  a24 = v48 - 128;
  sub_10027EE48(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C450(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10025C4D4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    sub_10001021C((a1 + 64));
    sub_100005978((a1 + 56));
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 72) = 0;
  }
}

uint64_t sub_10025C538@<X0>(uint64_t result@<X0>, __int128 **a2@<X1>, _OWORD *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = result;
    do
    {
      result = sub_10026B260(v7, v4, a3);
      if ((result & 1) == 0)
      {
        v9 = a4[1];
        if (v9 >= a4[2])
        {
          result = sub_100282610(a4, v4);
        }

        else
        {
          sub_10027E9BC(a4[1], v4);
          result = v9 + 160;
        }

        a4[1] = result;
      }

      v4 += 10;
    }

    while (v4 != v5);
  }

  return result;
}

void sub_10025C5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_10027EE48(&a10);
  _Unwind_Resume(a1);
}

void sub_10025C600(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 904);
  v4 = *(a1 + 912);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v19 = *(a2 + 16);
  }

  v5 = HIBYTE(v19);
  if (v3 == v4)
  {
    v4 = v3;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v19 >= 0)
    {
      v6 = HIBYTE(v19);
    }

    else
    {
      v6 = __p[1];
    }

    if (v19 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v3 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v4)
      {
        goto LABEL_22;
      }
    }

    v4 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v4 != *(a1 + 912) && *(v4 + 1) == 6)
  {
    (***(a1 + 48))(&v14);
    ServiceMap = Registry::getServiceMap(v14);
    sub_100295C34(ServiceMap, &v16);
    if (v16)
    {
      (*(*v16 + 24))(v16, 4);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }
}

void sub_10025C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10025C7C4(void *a1, uint64_t a2)
{
  sub_10028CCD0(v4, a2);
  sub_10028CD68(v4, a1);
  sub_100285554(v4);
  return a1;
}

uint64_t sub_10025C838(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_1000087B4(&v4);
  v4 = (a1 + 48);
  sub_10027EE48(&v4);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10025C8A0(void *a1, uint64_t a2)
{
  v2 = a1[42];
  v3 = a1[44];
  if (v3 == v2 || a1[41] == v2)
  {
    return 1;
  }

  v6[0] = off_101E36E68;
  v6[3] = v6;
  v4 = sub_10025C968(a1, a2, v3 + 320, v6);
  sub_10028ED7C(v6);
  return v4;
}

void sub_10025C954(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Cancelling ongoing transfer", buf, 2u);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 64);
      if (v10)
      {
        v11 = sub_10025CD10((a1 + 328), a3);
        if (*(a1 + 336) == v11)
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_1017669F0();
          }

          buf[0] = 56;
          v13 = *(a4 + 24);
          if (v13)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v12 = v11;
          if (*(a1 + 352) == v11)
          {
            if ((*(v11 + 908) & 1) == 0 && (*(v11 + 909) & 1) == 0 && (*(v11 + 910) & 1) == 0 && *(a1 + 156) != 6)
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_1017669BC();
              }

              buf[0] = 5;
              sub_10028785C(a4);
              goto LABEL_20;
            }

            v16 = *(v11 + 274);
            v17 = *(v11 + 282);
            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(__dst, *a3, *(a3 + 8));
            }

            else
            {
              *__dst = *a3;
              v25 = *(a3 + 16);
            }

            v18 = *(v12 + 584);
            v19 = *(v12 + 592);
            if (*(v12 + 695) < 0)
            {
              sub_100005F2C(__p, *(v12 + 672), *(v12 + 680));
            }

            else
            {
              *__p = *(v12 + 672);
              v23 = *(v12 + 688);
            }

            (*(*v10 + 24))(v10, v16, v17, __dst, v18, v19, __p, 3);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(__dst[0]);
            }

            buf[0] = 0;
            v20 = *(a4 + 24);
            if (v20)
            {
              (*(*v20 + 48))(v20, buf);
              v15 = 1;
              goto LABEL_37;
            }
          }

          else
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10176694C();
            }

            buf[0] = 56;
            v13 = *(a4 + 24);
            if (v13)
            {
LABEL_19:
              (*(*v13 + 48))(v13, buf);
LABEL_20:
              v15 = 0;
LABEL_37:
              sub_100004A34(v9);
              return v15;
            }
          }
        }

        sub_100022DB4();
      }
    }
  }

  else
  {
    v9 = 0;
  }

  buf[0] = 56;
  v14 = *(a4 + 24);
  if (!v14)
  {
    sub_100022DB4();
  }

  (*(*v14 + 48))(v14, buf);
  v15 = 0;
  if (v9)
  {
    goto LABEL_37;
  }

  return v15;
}

void sub_10025CCC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_10025CD10(void *a1, const void **a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    return *a1;
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  for (i = *a1 + 320; ; i += 1072)
  {
    v7 = *(i + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(i + 8);
    }

    if (v7 == v4)
    {
      v9 = v8 >= 0 ? i : *i;
      if (!memcmp(v9, v5, v4))
      {
        break;
      }
    }

    v10 = i + 752;
    if (v10 == v2)
    {
      return v2;
    }
  }

  return i - 320;
}

void sub_10025CDB8(std::string::size_type a1, uint64_t *a2)
{
  if (*(a2 + 24) == 1)
  {
    sub_10025D834(a1, a2);
  }

  else if (!*(a2 + 24))
  {
    sub_10025CDD4(a1, a2);
  }
}

void sub_10025CDD4(std::string::size_type a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, a2[1]);
  }

  else
  {
    __str = *a2;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size < 0x15)
  {
    v7 = 0;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    std::string::basic_string(&v48, &__str, 0, 0x14uLL, &v44);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v48.__r_.__value_.__l.__size_ == 20 && *v48.__r_.__value_.__l.__data_ == 0x72616C756C6C6543 && *(v48.__r_.__value_.__r.__words[0] + 8) == 0x6E6172546E616C50 && *(v48.__r_.__value_.__r.__words[0] + 16) == 1919247987;
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    else
    {
      v7 = SHIBYTE(v48.__r_.__value_.__r.__words[2]) == 20 && v48.__r_.__value_.__r.__words[0] == 0x72616C756C6C6543 && v48.__r_.__value_.__l.__size_ == 0x6E6172546E616C50 && LODWORD(v48.__r_.__value_.__r.__words[2]) == 1919247987;
    }

    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_35:
      operator delete(__str.__r_.__value_.__l.__data_);
      if (!v7)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (!v7)
  {
    return;
  }

LABEL_36:
  v10 = *(a1 + 336);
  if (*(a1 + 328) == v10 || (v11 = *(a1 + 352), v11 == v10))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }
  }

  else
  {
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = *(a2 + 23);
    }

    else
    {
      v13 = a2[1];
    }

    v14 = *(v11 + 343);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 328);
    }

    if (v13 == v14 + 21)
    {
      if (v14)
      {
        if (v12 >= 0)
        {
          v16 = a2;
        }

        else
        {
          v16 = *a2;
        }

        v17 = v16 + 21;
        if (v15 >= 0)
        {
          v18 = (v11 + 320);
        }

        else
        {
          v18 = *(v11 + 320);
        }

        while (1)
        {
          v20 = *v17++;
          v19 = v20;
          v21 = *v18++;
          if (v19 != v21)
          {
            break;
          }

          if (!--v14)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        v22 = *(v11 + 191);
        if (v22 < 0)
        {
          v22 = *(v11 + 176);
        }

        if (!v22)
        {
          goto LABEL_74;
        }

        v23 = *(v11 + 167);
        if (v23 < 0)
        {
          v23 = *(v11 + 152);
        }

        if (v23)
        {
          theDict = 0;
          sub_10025DF80(a1, v11, &theDict);
          v24 = *(a1 + 40);
          if (theDict)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(v48.__r_.__value_.__l.__data_) = 136315394;
              *(v48.__r_.__value_.__r.__words + 4) = "";
              WORD2(v48.__r_.__value_.__r.__words[1]) = 2080;
              *(&v48.__r_.__value_.__r.__words[1] + 6) = "";
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement+Push Dictionary :", &v48, 0x16u);
            }

            v48.__r_.__value_.__r.__words[0] = off_101E36EF8;
            v48.__r_.__value_.__l.__size_ = a1;
            v49 = &v48;
            logger::CFTypeRefLogger();
            sub_100007E44(&v48);
            (***(a1 + 48))(&v44);
            sub_10014F618(v44, &v48);
            (*(*v48.__r_.__value_.__l.__data_ + 104))(v48.__r_.__value_.__r.__words[0], a2, theDict);
            if (v48.__r_.__value_.__l.__size_)
            {
              sub_100004A34(v48.__r_.__value_.__l.__size_);
            }

            if (*(&v44 + 1))
            {
              sub_100004A34(*(&v44 + 1));
            }

            v25 = *(v11 + 167);
            if (v25 < 0)
            {
              v25 = *(v11 + 152);
            }

            if (v25)
            {
              v32 = 0;
              Value = CFDictionaryGetValue(theDict, @"CarrierEntitlements");
              sub_1000101E4(&v32, Value);
              memset(&v48, 0, sizeof(v48));
              (***(a1 + 48))(&v44);
              sub_100010024(&v41, &v32);
              if (*(v11 + 23) < 0)
              {
                sub_100005F2C(__dst, *v11, *(v11 + 8));
              }

              else
              {
                v27 = *v11;
                v40 = *(v11 + 16);
                *__dst = v27;
              }

              if (*(v11 + 47) < 0)
              {
                sub_100005F2C(v37, *(v11 + 24), *(v11 + 32));
              }

              else
              {
                *v37 = *(v11 + 24);
                v38 = *(v11 + 40);
              }

              if (*(v11 + 167) < 0)
              {
                sub_100005F2C(__p, *(v11 + 144), *(v11 + 152));
              }

              else
              {
                *__p = *(v11 + 144);
                v36 = *(v11 + 160);
              }

              sub_10025E170(&v41, &v48);
              if (SHIBYTE(v36) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v38) < 0)
              {
                operator delete(v37[0]);
              }

              if (SHIBYTE(v40) < 0)
              {
                operator delete(__dst[0]);
              }

              sub_10001021C(&v41);
              if (*(&v44 + 1))
              {
                sub_100004A34(*(&v44 + 1));
              }

              (*(**(a1 + 48) + 296))(*(a1 + 48), a2, &v48);
              if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v48.__r_.__value_.__l.__data_);
              }

              sub_10001021C(&v32);
            }

            v30 = *(v11 + 191);
            if (v30 < 0)
            {
              v30 = *(v11 + 176);
            }

            if (v30)
            {
              if (*(a1 + 1120) != 5)
              {
                goto LABEL_110;
              }

              (***(a1 + 48))(&v48);
              v34 = *&v48.__r_.__value_.__l.__data_;
              *&v48.__r_.__value_.__l.__data_ = 0uLL;
              v31 = sub_1009347B8(&v34);
              if (*(&v34 + 1))
              {
                sub_100004A34(*(&v34 + 1));
              }

              if (v48.__r_.__value_.__l.__size_)
              {
                sub_100004A34(v48.__r_.__value_.__l.__size_);
              }

              if (v31)
              {
                (***(a1 + 48))(&v44);
                *&v48.__r_.__value_.__l.__data_ = v44;
                v44 = 0uLL;
                v32 = 1;
                v33 = 1;
                CarrierEntitlements::setServiceToken();
              }

              else
              {
LABEL_110:
                (***(a1 + 48))(&v44);
                *&v48.__r_.__value_.__l.__data_ = v44;
                v44 = 0uLL;
                LOBYTE(v32) = 0;
                v33 = 0;
                CarrierEntitlements::setServiceToken();
              }

              if (v48.__r_.__value_.__l.__size_)
              {
                sub_100004A34(v48.__r_.__value_.__l.__size_);
              }

              if (*(&v44 + 1))
              {
                sub_100004A34(*(&v44 + 1));
              }
            }

            (***(a1 + 48))(&v44);
            sub_10014F618(v44, &v48);
            (*(*v48.__r_.__value_.__l.__data_ + 96))(v48.__r_.__value_.__r.__words[0], a2, 1);
            if (v48.__r_.__value_.__l.__size_)
            {
              sub_100004A34(v48.__r_.__value_.__l.__size_);
            }

            if (*(&v44 + 1))
            {
              sub_100004A34(*(&v44 + 1));
            }
          }

          else
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              sub_101766A60();
            }

            v46 = 11;
            v48.__r_.__value_.__r.__words[0] = 0;
            v43 = 56;
            *&v44 = 0;
            v42 = 256;
            LODWORD(v32) = 70015;
            BYTE4(v32) = 1;
            sub_1002540BC(a1, v11 + 320, &v46, 0, &v48.__r_.__value_.__l.__data_, &v43, &v44, &v42, &v32, (a1 + 352));
            sub_10001021C(&v44);
            sub_100005978(&v48.__r_.__value_.__l.__data_);
            if (*(a1 + 384) == 1)
            {
              sub_10064BEE8(a1 + 1056, 1);
              v48.__r_.__value_.__r.__words[0] = a1 + 360;
              v29 = sub_10028EDFC(a1 + 1064, (a1 + 360));
              *(v29 + 84) = 70015;
              *(v29 + 88) = 1;
              sub_10025DD78(a1);
              sub_10025DE4C(a1);
            }
          }

          sub_10001021C(&theDict);
        }

        else
        {
LABEL_74:
          LOBYTE(v42) = 11;
          v48.__r_.__value_.__r.__words[0] = 0;
          v46 = 56;
          *&v44 = 0;
          LOWORD(theDict) = 256;
          LODWORD(v32) = 70017;
          BYTE4(v32) = 1;
          sub_1002540BC(a1, v11 + 320, &v42, 0, &v48.__r_.__value_.__l.__data_, &v46, &v44, &theDict, &v32, (a1 + 352));
          sub_10001021C(&v44);
          sub_100005978(&v48.__r_.__value_.__l.__data_);
          if (*(a1 + 384) == 1)
          {
            sub_10064BEE8(a1 + 1056, 1);
            v48.__r_.__value_.__r.__words[0] = a1 + 360;
            v28 = sub_10028EDFC(a1 + 1064, (a1 + 360));
            *(v28 + 84) = 70017;
            *(v28 + 88) = 1;
            sub_10025DD78(a1);
            sub_10025DE4C(a1);
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766A94();
          }
        }
      }
    }
  }
}

void sub_10025D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36, uint64_t a37, char a38, std::__shared_weak_count *a39, const void *a40)
{
  v42 = *(v40 - 120);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (a39)
  {
    sub_100004A34(a39);
  }

  sub_10001021C(&a40);
  _Unwind_Resume(a1);
}

void sub_10025D834(uint64_t a1, void **a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, a2[1]);
  }

  else
  {
    __str = *a2;
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size < 0x15)
  {
    v7 = 0;
    if ((*(&__str.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_35;
    }

LABEL_19:
    if (!v7)
    {
      return;
    }

    goto LABEL_36;
  }

  std::string::basic_string(&v40, &__str, 0, 0x14uLL, &buf);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = v40.__r_.__value_.__l.__size_ == 20 && *v40.__r_.__value_.__l.__data_ == 0x72616C756C6C6543 && *(v40.__r_.__value_.__r.__words[0] + 8) == 0x6E6172546E616C50 && *(v40.__r_.__value_.__r.__words[0] + 16) == 1919247987;
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  else
  {
    v7 = SHIBYTE(v40.__r_.__value_.__r.__words[2]) == 20 && v40.__r_.__value_.__r.__words[0] == 0x72616C756C6C6543 && v40.__r_.__value_.__l.__size_ == 0x6E6172546E616C50 && LODWORD(v40.__r_.__value_.__r.__words[2]) == 1919247987;
  }

  if ((*(&__str.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_19;
  }

LABEL_35:
  operator delete(__str.__r_.__value_.__l.__data_);
  if (!v7)
  {
    return;
  }

LABEL_36:
  v10 = *(a1 + 336);
  if (*(a1 + 328) == v10 || (v11 = *(a1 + 352), v11 == v10))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }
  }

  else
  {
    v12 = (v11 + 320);
    memset(&v40, 0, sizeof(v40));
    sub_100260070(v11 + 320, &v40);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = a2[1];
    }

    v15 = *(v11 + 343);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v11 + 328);
    }

    if (v14 == (v15 + 21))
    {
      if (v15)
      {
        if (v13 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = *a2;
        }

        v18 = v17 + 21;
        if (v16 >= 0)
        {
          v19 = (v11 + 320);
        }

        else
        {
          v19 = *v12;
        }

        while (1)
        {
          v21 = *v18++;
          v20 = v21;
          v22 = *v19++;
          if (v20 != v22)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_53;
          }
        }
      }

      else
      {
LABEL_53:
        if (*(a1 + 384) == 1)
        {
          v23 = *(a1 + 40);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Triggering preflight entitlements", &buf, 2u);
          }

          sub_1002601A8(a1);
        }

        else
        {
          v24 = *(a1 + 352);
          v25 = *(v24 + 191);
          if (v25 < 0)
          {
            v25 = *(v24 + 176);
          }

          if (v25)
          {
            v26 = *(v24 + 167);
            if (v26 < 0)
            {
              v26 = *(v24 + 152);
            }

            if (v26)
            {
              if (v16 < 0)
              {
                sub_100005F2C(__p, *v12, *(v11 + 328));
              }

              else
              {
                *__p = *v12;
                v31 = *(v11 + 336);
              }

              sub_1002306AC((a1 + 8), &v27);
              if (*(v11 + 343) < 0)
              {
                sub_100005F2C(&v28, *(v11 + 320), *(v11 + 328));
              }

              else
              {
                v28 = *v12;
                v29 = *(v11 + 336);
              }

              sub_100260C40(v41);
            }
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766A94();
          }

          v38 = 11;
          sub_100260418(a1, &buf);
          v36 = 56;
          v35 = 0;
          v34 = 256;
          v32 = 70018;
          v33 = 1;
          sub_1002540BC(a1, v11 + 320, &v38, 0, &buf, &v36, &v35, &v34, &v32, (a1 + 352));
          sub_10001021C(&v35);
          sub_100005978(&buf);
        }
      }
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10025DCC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v35 - 89) < 0)
  {
    operator delete(*(v35 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10025DD78(uint64_t a1)
{
  if (*(a1 + 384) == 1)
  {
    v2 = (a1 + 360);
    if (*(a1 + 383) < 0)
    {
      sub_100005F2C(__p, *(a1 + 360), *(a1 + 368));
    }

    else
    {
      *__p = *&v2->__r_.__value_.__l.__data_;
      v5 = *(a1 + 376);
    }

    sub_100255D0C(a1, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 384) == 1)
    {
      if (*(a1 + 383) < 0)
      {
        operator delete(v2->__r_.__value_.__l.__data_);
      }

      *(a1 + 384) = 0;
    }

    v3 = *(a1 + 352);
    if (v3 != *(a1 + 336))
    {
      sub_1001696A4(v2, (v3 + 320));
    }
  }
}

void sub_10025DE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025DE4C(uint64_t a1)
{
  if (*(a1 + 384))
  {
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(&__p, (a1 + 360));
    p_p = &__p;
    *(sub_10028EDFC(a1 + 1064, &__p.__r_.__value_.__l.__data_) + 82) = 1;
    if (!sub_1002760A0(a1))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101766AFC();
      }

      sub_10025DD78(a1);
      sub_10025DE4C(a1);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I No Preflight Iccid", &__p, 2u);
    }

    *(a1 + 150) = 1;
    sub_100254C38(a1);
    sub_10025B320(a1);
  }
}

void sub_10025DF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10025DF80@<X0>(const void **result@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v4 = *(a2 + 343);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 328);
  }

  if (v4)
  {
    v6 = result;
    v7 = (a2 + 320);
    if (sub_10016FA58((result + 116), (a2 + 320)))
    {
      v8 = sub_1000E20F0((v6 + 116), v7);

      return sub_100010024(a3, v8);
    }

    else
    {
      v12 = 0;
      (*(*v6[6] + 216))(&v12);
      if (v12)
      {
        *buf = v7;
        v9 = sub_1002965F8((v6 + 116), v7);
        sub_1000676D4((v9 + 56), &v12);
        *a3 = v12;
        v12 = 0;
      }

      else
      {
        v10 = v6[5];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 343) >= 0)
          {
            v11 = v7;
          }

          else
          {
            v11 = *(a2 + 320);
          }

          *buf = 136315138;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I failed loading CB for ICCID: [%s]", buf, 0xCu);
        }

        *a3 = 0;
      }

      return sub_10001021C(&v12);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_10025E170(CFDictionaryRef *a1@<X1>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*a1)
  {
    Value = CFDictionaryGetValue(*a1, @"Authentication");
    theDict = Value;
    if (Value)
    {
      CFRetain(Value);
      CFDictionaryGetValue(theDict, @"Username");
      memset(buf, 0, sizeof(buf));
      *&v10 = 0;
      ctu::cf::assign();
      v7 = 0;
      __s = 0u;
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
      v5 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_101766D78();
      }

      if (SHIBYTE(v7) < 0)
      {
        operator delete(__s);
      }
    }

    else
    {
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
      v3 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_101766DAC();
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
    v4 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_101766DE0();
    }
  }
}

void sub_10025E9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 + 23);
  sub_10001021C(&a19);
  if (v33 < 0)
  {
    operator delete(*v31);
  }

  _Unwind_Resume(a1);
}

void sub_10025EB50(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 148) == 1)
  {

    sub_10025F1D0(a1, a2);
  }

  else
  {
    v24 = 0;
    v25 = 0;
    (***(a1 + 48))(&v26);
    Registry::getTimerService(&v24, v26);
    if (*(&v26 + 1))
    {
      sub_100004A34(*(&v26 + 1));
    }

    if (v24)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
        v23 = *(a2 + 16);
      }

      sub_10025F9D8(a1, &__dst);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__dst);
      }

      v4 = *(a1 + 352);
      if (*(v4 + 23) < 0)
      {
        sub_100005F2C(v20, *v4, *(v4 + 1));
        v4 = *(a1 + 352);
      }

      else
      {
        v5 = *v4;
        v21 = *(v4 + 2);
        *v20 = v5;
      }

      if (*(v4 + 47) < 0)
      {
        sub_100005F2C(v18, *(v4 + 3), *(v4 + 4));
        v4 = *(a1 + 352);
      }

      else
      {
        *v18 = *(v4 + 24);
        v19 = *(v4 + 5);
      }

      if (*(v4 + 71) < 0)
      {
        sub_100005F2C(v16, *(v4 + 6), *(v4 + 7));
        v4 = *(a1 + 352);
      }

      else
      {
        *v16 = v4[3];
        v17 = *(v4 + 8);
      }

      if (*(v4 + 95) < 0)
      {
        sub_100005F2C(v14, *(v4 + 9), *(v4 + 10));
      }

      else
      {
        *v14 = *(v4 + 72);
        v15 = *(v4 + 11);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v13 = *(a2 + 16);
      }

      sub_10025FDE4(a1, v20, v18, v16, v14, __p);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(v18[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }

      sub_10000501C(v10, "send.tss.after.delete");
      *v7 = a1;
      sub_100004AA0(&v26, (a1 + 8));
      v6 = *(&v26 + 1);
      *&v7[8] = v26;
      if (*(&v26 + 1))
      {
        atomic_fetch_add_explicit((*(&v26 + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v6);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v8, *a2, *(a2 + 8));
      }

      else
      {
        *v8 = *a2;
        v9 = *(a2 + 16);
      }

      v30 = *v10;
      v31 = v11;
      v10[0] = 0;
      v10[1] = 0;
      v11 = 0;
      v26 = *v7;
      v27 = *&v7[16];
      if (SHIBYTE(v9) < 0)
      {
        sub_100005F2C(&v28, v8[0], v8[1]);
      }

      else
      {
        v28 = *v8;
        v29 = v9;
      }

      v32 = 0;
      operator new();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766E14();
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }
}

void sub_10025F07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  v58 = v55[3];
  if (v58)
  {
    std::__shared_weak_count::__release_weak(v58);
  }

  operator delete(v55);
  sub_100260030(v56 - 176);
  if (*(v56 - 105) < 0)
  {
    operator delete(*(v56 - 128));
  }

  sub_100260030(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  v59 = *(v56 - 184);
  if (v59)
  {
    sub_100004A34(v59);
  }

  _Unwind_Resume(a1);
}

void sub_10025F1D0(uint64_t a1, uint64_t a2)
{
  v26 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v26)
  {
    v24 = 0uLL;
    v25 = 0;
    sub_100260070(a2, &v24);
    v23 = 0uLL;
    (***(a1 + 48))(&v28);
    ServiceMap = Registry::getServiceMap(v28);
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
    v27 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v27);
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
LABEL_12:
        (**v12)(&v23, v12, &v24);
        if ((v13 & 1) == 0)
        {
          sub_100004A34(v11);
        }

        if (v29)
        {
          sub_100004A34(v29);
        }

        if (v23)
        {
          v14 = *(a1 + 88);
          if (v14)
          {
            v15 = std::__shared_weak_count::lock(v14);
            if (v15 && *(a1 + 80))
            {
              sub_100004AA0(&v28, (a1 + 8));
              v16 = v29;
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v16);
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

              v30 = 0;
              operator new();
            }
          }

          else
          {
            v15 = 0;
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766E48();
          }

          v22 = 11;
          sub_100260418(a1, &v28);
          v21 = 56;
          v27 = 0;
          v20 = 256;
          v18 = 70009;
          v19 = 1;
          sub_1002540BC(a1, a2, &v22, 0, &v28, &v21, &v27, &v20, &v18, &v26);
          sub_10001021C(&v27);
          sub_100005978(&v28);
          if (v15)
          {
            sub_100004A34(v15);
          }
        }

        else
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101766E7C();
          }

          v22 = 11;
          sub_100260418(a1, &v28);
          v21 = 56;
          v27 = 0;
          v20 = 256;
          v18 = 70014;
          v19 = 1;
          sub_1002540BC(a1, a2, &v22, 0, &v28, &v21, &v27, &v20, &v18, &v26);
          sub_10001021C(&v27);
          sub_100005978(&v28);
        }

        if (*(&v23 + 1))
        {
          sub_100004A34(*(&v23 + 1));
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        return;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101766EB0();
  }
}

void sub_10025F838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (*(v37 + 71) < 0)
  {
    operator delete(*(v37 + 48));
  }

  v40 = *(v37 + 40);
  if (v40)
  {
    sub_100004A34(v40);
  }

  v41 = *(v37 + 24);
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  operator delete(v37);
  sub_100272ABC(&a11);
  sub_100004A34(v36);
  if (a36)
  {
    sub_100004A34(a36);
  }

  if (*(v38 - 161) < 0)
  {
    operator delete(*(v38 - 184));
  }

  _Unwind_Resume(a1);
}

void sub_10025F9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v4)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766F20();
    }

    LOWORD(v22[0]) = 14337;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v22[1], *a2, *(a2 + 8));
    }

    else
    {
      *&v22[1] = *a2;
      v22[3] = *(a2 + 16);
    }

    sub_1002549A0(a1, a2, &v23);
    v25 = 0;
    v26 = 0;
    sub_100254AA0(a1 + 448, v22);
    sub_10001021C(&v26);
    sub_100005978(&v25);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v22[3]) < 0)
    {
      operator delete(v22[1]);
    }

    v20 = 0;
    v21 = 0;
    sub_100254358(a1, a2, 11, 56, &v21, &v20);
    sub_10001021C(&v20);
    sub_100005978(&v21);
    sub_100254C38(a1);
    sub_100254E74(a1);
  }

  else
  {
    v5 = v4;
    memset(v22, 0, sizeof(v22));
    sub_1009CEC2C(v22);
    sub_10027F75C(v22);
    std::string::operator=(v22[2], a2);
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2;
      if (*(a2 + 23) < 0)
      {
        v7 = *a2;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I sending delete profile request for iccid: %s", &buf, 0xCu);
    }

    if (*(v5 + 695) < 0)
    {
      sub_100005F2C(__dst, *(v5 + 672), *(v5 + 680));
    }

    else
    {
      *__dst = *(v5 + 672);
      v19 = *(v5 + 688);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v16, *a2, *(a2 + 8));
    }

    else
    {
      *v16 = *a2;
      v17 = *(a2 + 16);
    }

    v8 = *(v5 + 584);
    v9 = *(v5 + 592);
    v10 = sub_100649C38(9);
    sub_10000501C(v14, v10);
    buf = 0uLL;
    v28 = 0;
    PB::Writer::Writer(&buf);
    (*(v22[0] + 3))(v22, &buf);
    __p = 0;
    v12 = 0;
    v13 = 0;
    sub_10018A52C(&__p, *(&buf + 1), buf, buf - *(&buf + 1));
    PB::Writer::~Writer(&buf);
    sub_100253ADC(a1, __dst, v16, v8, v9, v14, &__p);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }

    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_1009CECC8(v22);
  }
}

void sub_10025FD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_1009CECC8(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_10025FDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t **a6)
{
  theDict = 0;
  (*(**(a1 + 48) + 800))(&theDict);
  if (!theDict)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766FD0();
    }

    goto LABEL_15;
  }

  if (!CFDictionaryContainsKey(theDict, @"PhoneAccountTransfer"))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766F9C();
    }

    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(theDict, @"PhoneAccountTransfer");
  if (!CFDictionaryContainsKey(Value, @"DelayTimeForTSSAfterDeletion"))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a6 + 23) < 0)
      {
        a6 = *a6;
      }

      *buf = 136315138;
      v18[0] = a6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I DelayTimeForTSSAfterDeletion not present in CB entitlements for ICCID: [%s]", buf, 0xCu);
    }

LABEL_15:
    v10 = 10;
    goto LABEL_16;
  }

  v9 = CFDictionaryGetValue(Value, @"DelayTimeForTSSAfterDeletion");
  v10 = v9;
  *buf = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFNumberGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
      v10 = *buf;
    }

    else
    {
      v10 = 0;
    }
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) < 0)
    {
      a6 = *a6;
    }

    *buf = 67109378;
    LODWORD(v18[0]) = v10;
    WORD2(v18[0]) = 2080;
    *(v18 + 6) = a6;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I DelayTimeForTSSAfterDeletion is set to %d for ICCID: [%s]", buf, 0x12u);
  }

LABEL_16:
  sub_10001021C(&theDict);
  return v10;
}

void sub_10026000C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100260030(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100260070(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000501C(&v11, "CellularPlanTransfer");
  std::string::push_back(&v11, 58);
  v12 = v11;
  memset(&v11, 0, sizeof(v11));
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v7 = std::string::append(&v12, v5, v6);
  v9 = v7->__r_.__value_.__r.__words[0];
  size = v7->__r_.__value_.__l.__size_;
  v13[0] = v7->__r_.__value_.__r.__words[2];
  *(v13 + 3) = *(&v7->__r_.__value_.__r.__words[2] + 3);
  v10 = SHIBYTE(v7->__r_.__value_.__r.__words[2]);
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    sub_100005F2C(a2, v9, size);
    operator delete(v9);
  }

  else
  {
    *a2 = v9;
    *(a2 + 8) = size;
    *(a2 + 16) = v13[0];
    *(a2 + 19) = *(v13 + 3);
    *(a2 + 23) = v10;
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_100260164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  operator delete(v21);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_1002601A8(uint64_t a1)
{
  if (*(a1 + 384))
  {
    v2 = *(a1 + 352);
    if (v2 != *(a1 + 336))
    {
      if (*(v2 + 343) < 0)
      {
        sub_100005F2C(__p, *(v2 + 320), *(v2 + 328));
      }

      else
      {
        *__p = *(v2 + 320);
        v6 = *(v2 + 336);
      }

      sub_100004AA0(buf, (a1 + 8));
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      v9 = 0;
      operator new();
    }

    sub_10025DD78(a1);

    sub_10025DE4C(a1);
  }

  else
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No Preflight Iccid", buf, 2u);
    }

    sub_10025DD78(a1);
    sub_10025DE4C(a1);
  }
}

void sub_1002603D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  sub_10000FF50(&a19);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100260418(uint64_t a1@<X0>, CFStringRef *a2@<X8>)
{
  if (*(a1 + 147) == 1 || *(a1 + 352) == *(a1 + 336))
  {
    *a2 = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v5 = 0;
    (*(**(a1 + 48) + 816))(__p);
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *a2 = CFStringCreateWithCString(kCFAllocatorDefault, v3, 0x8000100u);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1002604F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026050C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_100260070(a2, v43);
  v41 = 0;
  v42 = 0;
  (***(a1 + 48))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  __str[0].__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __str);
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
  (**v14)(&v41, v14, v43);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (!v41)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766E7C();
    }

    goto LABEL_31;
  }

  v16 = sub_10025CD10((a1 + 328), a2);
  v17 = *(a1 + 40);
  if (*(a1 + 336) == v16)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767004();
    }

LABEL_31:
    v23 = 0;
    goto LABEL_72;
  }

  v18 = v16;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    v19 = a2;
    if (*(a2 + 23) < 0)
    {
      v19 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [req][ta] perform TransferAuthorization request from target side. source iccid : %s", &buf, 0xCu);
  }

  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  buf = 0u;
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  memset(__str, 0, sizeof(__str));
  sub_100269D70(a1, __str, *(a1 + 352));
  v20 = sub_10026F640(&v53 + 8, __str);
  WORD2(v53) = 257;
  *(&v63 + 1) = sub_1009325CC(v20);
  LOBYTE(v64) = 1;
  sub_100004AA0(&v27, (a1 + 8));
  v21 = v27;
  if (*(&v27 + 1))
  {
    atomic_fetch_add_explicit((*(&v27 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v21 + 1));
  }

  v27 = 0u;
  *v28 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  WORD1(v27) = 257;
  DWORD1(v27) = 15;
  BYTE8(v27) = 1;
  HIDWORD(v27) = 1;
  LOBYTE(v28[0]) = 1;
  v32 = 0;
  sub_10026F6EC(a1, 1);
  sub_10000501C(__p, "TransferAuthRequestTime");
  v50[1] = COERCE_VOID_FASTCALL_INT64void_CHARvoidvoid_(CFAbsoluteTimeGetCurrent());
  v50[0] = sub_1002983F8;
  sub_100261328(a1, a2, __p, v50);
  sub_100176638(v50);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10026AEDC(a1, a2);
  v22 = v41;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 1174405120;
  v45[2] = sub_10026FADC;
  v45[3] = &unk_101E36040;
  v45[4] = a1;
  v46 = v21;
  if (*(&v21 + 1))
  {
    atomic_fetch_add_explicit((*(&v21 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v47, *a2, *(a2 + 8));
  }

  else
  {
    v47 = *a2;
    v48 = *(a2 + 16);
  }

  sub_1000224C8(v49, a3);
  v49[4] = v18;
  v50[0] = v45;
  (*(*v22 + 208))(v22, 8, &v27, &buf, a1 + 24, v50);
  sub_10000FF50(v49);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (*(&v46 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v46 + 1));
  }

  if (v32 == 1 && SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  if (LOBYTE(v30[0]) == 1 && SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (*(&v21 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v21 + 1));
  }

  if (v40 == 1 && SHIBYTE(v39) < 0)
  {
    operator delete(*(&v38 + 1));
  }

  if (v38 == 1 && SHIBYTE(v37) < 0)
  {
    operator delete(*(&v36 + 1));
  }

  if (BYTE8(v35) == 1 && SBYTE7(v35) < 0)
  {
    operator delete(v34);
  }

  *&v27 = &__str[1];
  sub_10016C644(&v27);
  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[0].__r_.__value_.__l.__data_);
  }

  if (v63 == 1)
  {
    if (BYTE8(v62) == 1 && SBYTE7(v62) < 0)
    {
      operator delete(v61);
    }

    if (BYTE8(v60) == 1 && SBYTE7(v60) < 0)
    {
      operator delete(v59);
    }

    if (v58 == 1 && SHIBYTE(v57) < 0)
    {
      operator delete(*(&v56 + 1));
    }

    __str[0].__r_.__value_.__r.__words[0] = &v55;
    sub_10016C644(__str);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(*(&v53 + 1));
    }
  }

  if (BYTE8(v52) == 1 && SBYTE7(v52) < 0)
  {
    operator delete(buf);
  }

  v23 = 1;
LABEL_72:
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  return v23;
}

void sub_100260B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, std::__shared_weak_count *a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a59)
  {
    std::__shared_weak_count::__release_weak(a59);
  }

  sub_100270CFC(&a13);
  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  sub_100270D58(&a25);
  sub_100270DF8(&a72);
  if (a46)
  {
    sub_100004A34(a46);
  }

  if (a52 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100260CEC(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_100260D0C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }
}

void sub_100260D48(uint64_t a1, uint64_t *a2)
{
  if ((a1 + 640) != a2)
  {
    sub_100169D44(a1 + 640, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 3));
  }

  v3 = *(a1 + 328);
  v4 = *(a1 + 336);
  if (v3 == v4)
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No plan awaiting transfer", v16, 2u);
    }
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    *v16 = v17;
    do
    {
      v5 = (v3 + 624);
      if (sIsProfileInstalled())
      {
        v6 = *(a1 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v3 + 320;
          if (*(v3 + 343) < 0)
          {
            v7 = *(v3 + 320);
          }

          if (*(v3 + 647) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315394;
          v19 = v7;
          v20 = 2080;
          v21 = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I profile [%s -> %s] already installed, removing it from cached list", buf, 0x16u);
        }

        *(a1 + 153) = 0;
        sub_100005BA0(v16, (v3 + 320));
      }

      v3 += 1072;
    }

    while (v3 != v4);
    v8 = *v16;
    if (*v16 != v17)
    {
      do
      {
        if (*(v8 + 55) < 0)
        {
          sub_100005F2C(__p, v8[4], v8[5]);
        }

        else
        {
          *__p = *(v8 + 2);
          v15 = v8[6];
        }

        sub_100255D0C(a1, __p);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = v8[1];
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
            v10 = v8[2];
            v11 = *v10 == v8;
            v8 = v10;
          }

          while (!v11);
        }

        v8 = v10;
      }

      while (v10 != v17);
    }

    if (*(a1 + 328) == *(a1 + 336))
    {
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I All transfer plans handled", buf, 2u);
      }

      sub_100259FCC(a1);
    }

    sub_100009970(v16, v17[0]);
  }
}

const void **sub_100261028(const void **result, uint64_t a2, int a3)
{
  *(result + 153) = a3;
  if (a3)
  {
    v3 = 0;
    v4 = 0;
    sub_100254358(result, a2, 8, 0, &v4, &v3);
    sub_10001021C(&v3);
    return sub_100005978(&v4);
  }

  return result;
}

void sub_10026107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_100261098(uint64_t a1, uint64_t *a2)
{
  v2 = (a1 + 664);
  if (v2 != a2)
  {
    sub_100169790(v2, *a2, a2[1], 0xCF3CF3CF3CF3CF3DLL * ((a2[1] - *a2) >> 3));
  }
}

void sub_1002610E0(uint64_t a1, const std::string *a2)
{
  v2 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v6 = *(a1 + 336);
    v7 = *(a1 + 352);
    if (v7 == v6 || *(a1 + 328) == v6)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017670B4();
      }
    }

    else
    {
      if (*(v7 + 856) != 1)
      {
        goto LABEL_18;
      }

      v8 = *(v7 + 855);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v7 + 840);
      }

      if (size != v8 || (v2 >= 0 ? (v10 = a2) : (v10 = a2->__r_.__value_.__r.__words[0]), v9 >= 0 ? (v11 = (v7 + 832)) : (v11 = *(v7 + 832)), memcmp(v10, v11, size)))
      {
LABEL_18:
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = a2->__r_.__value_.__r.__words[0];
          if (v2 >= 0)
          {
            v13 = a2;
          }

          v14 = v7 + 320;
          if (*(v7 + 343) < 0)
          {
            v14 = *(v7 + 320);
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I update alt smdp with websheet result. smdp: %s, iccid: [%s]", buf, 0x16u);
        }

        sub_1001696A4((v7 + 832), a2);
        sub_10000501C(__p, "AltSmdpFqdn");
        *buf = 0;
        *&buf[8] = 0;
        if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf[8], a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
        }

        else
        {
          *&buf[8] = *&a2->__r_.__value_.__l.__data_;
          v18 = a2->__r_.__value_.__r.__words[2];
        }

        *buf = sub_100280258;
        sub_100261328(a1, v7 + 320, __p, buf);
        sub_100176638(buf);
        if (v16 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }
}

void sub_1002612F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100261328(uint64_t a1, uint64_t a2, __int128 *a3, void (**a4)(uint64_t, void, char *, void, void))
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *(a1 + 80);
      if (v10)
      {
        sub_100282A30(__p, a3, a4);
        memset(v11, 0, sizeof(v11));
        sub_1001762DC(v11, __p, &v16, 1uLL);
        (*(*v10 + 120))(v10, a2, v11);
        v12 = v11;
        sub_100176578(&v12);
        sub_100176638(&v15);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_10:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767128();
  }

  if (v9)
  {
    goto LABEL_10;
  }
}

void sub_100261470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v6 = va_arg(va1, void **);
  sub_100176578(va);
  sub_1001765FC(va1);
  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void sub_1002614B0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 336);
  v4 = *(a1 + 352);
  if (v4 == v3 || *(a1 + 328) == v3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176715C();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    if (*(v4 + 856) != 1)
    {
      goto LABEL_14;
    }

    v5 = (v4 + 832);
    if ((*(v4 + 855) & 0x80000000) == 0)
    {
      if (*(v4 + 855))
      {
        v6 = *v5;
        a2[2] = *(v4 + 848);
        *a2 = v6;
        return;
      }

      goto LABEL_14;
    }

    v7 = *(v4 + 840);
    if (!v7)
    {
LABEL_14:

      sub_100261590(a1, a2);
      return;
    }

    v8 = *v5;

    sub_100005F2C(a2, v8, v7);
  }
}

void sub_100261590(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 352) == *(a1 + 336))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101766AC8();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = *(**(a1 + 48) + 808);

    v3();
  }
}

void sub_100261644(uint64_t a1@<X0>, uint64_t **a2@<X1>, const std::string *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (v12)
  {
    sub_1002610E0(a1, a5);
  }

  else
  {
    sub_1002614B0(a1, buf);
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    *a5 = *buf;
    *(a5 + 16) = *&buf[16];
  }

  v13 = *(a1 + 336);
  v14 = *(a1 + 352);
  if (v14 != v13 && *(a1 + 328) != v13)
  {
    v49 = 0;
    __dst[1] = 0;
    v48 = 0;
    __dst[0] = 0;
    v15 = *(a2 + 23);
    if (v15 < 0)
    {
      v15 = a2[1];
    }

    v16 = (v14 + 320);
    if (v15)
    {
      v16 = a2;
    }

    if (*(v16 + 23) < 0)
    {
      sub_100005F2C(__dst, *v16, v16[1]);
    }

    else
    {
      *__dst = *v16;
      v48 = v16[2];
    }

    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = a6;
      v20 = SHIBYTE(v48);
      v21 = __dst[0];
      v22 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
      v23 = a3->__r_.__value_.__r.__words[0];
      v24 = sub_100649E24(a4);
      if (v22 >= 0)
      {
        v25 = a3;
      }

      else
      {
        v25 = v23;
      }

      *buf = 136315650;
      v26 = __dst;
      if (v20 < 0)
      {
        v26 = v21;
      }

      *&buf[4] = v26;
      *&buf[12] = 2080;
      *&buf[14] = v25;
      *&buf[22] = 2080;
      v53 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I websheet result for iccid: [%s]. target iccid: [%s], state: %s", buf, 0x20u);
      a6 = v19;
    }

    sub_100261C64(a1, __dst, a3);
    if (a4 == 1)
    {
      v27 = 7;
      v49 = 7;
    }

    else if (a4 == 4)
    {
      v49 = 9;
      v51 = 0;
      sub_100261D1C(a1, 2, 4, v50);
      sub_10028ED7C(v50);
      v27 = 9;
    }

    else
    {
      v27 = 8;
      v49 = 8;
      *(a1 + 153) = 1;
    }

    v45 = 0;
    v46 = 0;
    sub_100254358(a1, __dst, v27, 0, &v46, &v45);
    sub_10001021C(&v45);
    sub_100005978(&v46);
    v28 = *(a1 + 904);
    v29 = *(a1 + 912);
    if (SHIBYTE(v48) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v44 = v48;
    }

    v30 = HIBYTE(v44);
    if (v28 == v29)
    {
LABEL_52:
      v38 = 0;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (SHIBYTE(v44) >= 0)
      {
        v31 = HIBYTE(v44);
      }

      else
      {
        v31 = __p[1];
      }

      if (SHIBYTE(v44) >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      v33 = v28 + 432;
      while (1)
      {
        v34 = *(v33 + 23);
        v35 = v34;
        if ((v34 & 0x80u) != 0)
        {
          v34 = *(v33 + 8);
        }

        if (v31 == v34)
        {
          v36 = v35 >= 0 ? v33 : *v33;
          if (!memcmp(v32, v36, v31))
          {
            break;
          }
        }

        v37 = v33 + 848;
        v33 += 1280;
        if (v37 == v29)
        {
          goto LABEL_52;
        }
      }

      v38 = 1;
      if ((v30 & 0x80) == 0)
      {
        goto LABEL_54;
      }
    }

    operator delete(__p[0]);
LABEL_54:
    v39 = sub_10025CD10((a1 + 328), __dst);
    if (*(a1 + 336) != v39)
    {
      buf[0] = 2;
      sub_100261ECC(a1, buf, &v49, v39, v38, *(v39 + 700));
      if (a4 == 4 || a4 == 1)
      {
        sub_10000501C(&v42, "TransferSimServiceResponse");
        *buf = 0;
        *&buf[8] = 0;
        sub_10028FAA8();
      }
    }

    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(a6, *a5, *(a5 + 8));
    }

    else
    {
      *a6 = *a5;
      *(a6 + 16) = *(a5 + 16);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v40 = a3;
    }

    else
    {
      v40 = a3->__r_.__value_.__r.__words[0];
    }

    v41 = sub_100649E24(a4);
    *buf = 136315650;
    *&buf[4] = a2;
    *&buf[12] = 2080;
    *&buf[14] = v40;
    *&buf[22] = 2080;
    v53 = v41;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "websheet callback. source iccid: %s, target iccid: %s, state: %s. no ongoing transfer plan.", buf, 0x20u);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(a6, *a5, *(a5 + 8));
  }

  else
  {
    *a6 = *a5;
    *(a6 + 16) = *(a5 + 16);
  }
}

void sub_100261BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37)
{
  sub_10028ED7C(&a37);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100261C64(uint64_t a1, const void **a2, const std::string *a3)
{
  v4 = *(a1 + 336);
  if (*(a1 + 328) == v4)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767200();
    }
  }

  else
  {
    v6 = sub_10025CD10((a1 + 328), a2);
    if (v4 == v6)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101767190();
      }
    }

    else
    {
      v7 = (v6 + 624);

      std::string::operator=(v7, a3);
    }
  }
}

void sub_100261D1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v8 = std::__shared_weak_count::lock(v6);
      if (v8)
      {
        v9 = *(a1 + 64);
        if (v9)
        {
          sub_100293290(v13, a4);
          (*(*v9 + 72))(v9, a3, v13);
          sub_10028ED7C(v13);
LABEL_14:
          sub_100004A34(v8);
          return;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767234();
    }

    v11 = *(a4 + 24);
    if (v11)
    {
      v12 = 4;
      (*(*v11 + 48))(v11, &v12);
    }

    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(a4 + 24);
    if (v10)
    {
      v12 = 4;
      (*(*v10 + 48))(v10, &v12);
    }
  }
}

void sub_100261E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028ED7C(va);
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

void sub_100261ECC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3, __int128 *a4, char a5, int a6)
{
  if (*a2)
  {
    v7 = *(a1 + 72);
    if (v7)
    {
      v13 = std::__shared_weak_count::lock(v7);
      if (v13)
      {
        v14 = *(a1 + 64);
        if (v14)
        {
          v15 = *(a1 + 88);
          if (v15)
          {
            v16 = std::__shared_weak_count::lock(v15);
            if (v16)
            {
              v17 = *(a1 + 80);
              if (v17)
              {
                v86 = v16;
                v18 = (*(*v17 + 448))(*(a1 + 80));
                bzero(v142, 0x508uLL);
                (*(*v17 + 168))(v142, v17, a4 + 20);
                v19 = *(a4 + 240);
                __p = 0uLL;
                v138 = 0;
                if (*(a4 + 439) < 0)
                {
                  sub_100005F2C(&__p, *(a4 + 52), *(a4 + 53));
                }

                else
                {
                  __p = a4[26];
                  v138 = *(a4 + 54);
                }

                v20 = HIBYTE(v138);
                if (v138 < 0)
                {
                  v20 = *(&__p + 1);
                }

                if (!v20)
                {
                  (*(**(a1 + 48) + 160))(&__dst);
                  if (SHIBYTE(v138) < 0)
                  {
                    operator delete(__p);
                  }

                  __p = __dst;
                  v138 = v114;
                }

                if (*(a1 + 147))
                {
                  v21 = 1;
                }

                else
                {
                  v21 = 2;
                }

                v84 = v21;
                v85 = v18;
                v22 = 0uLL;
                v135 = 0u;
                v136 = 0u;
                v83 = v14;
                v82 = v19;
                if (*(a4 + 912) == 1)
                {
                  v23 = *(a4 + 911);
                  *&__dst = sub_10064BE90(v23);
                  sub_100184AD0(&v135, &__dst);
                  v24 = 1;
                  v22 = 0uLL;
                }

                else
                {
                  v23 = 0;
                  v24 = 0;
                }

                v25 = a4 + 229;
                v133 = v22;
                v134 = v22;
                if (*(a4 + 920) == 1 && (*v25 - 70000) < 0x99D57)
                {
                  *&__dst = sub_10064A12C(*v25);
                  sub_100184AD0(&v133, &__dst);
                }

                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v127 = 0u;
                v128 = 0u;
                v125 = 0u;
                v126 = 0u;
                v123 = 0u;
                v124 = 0u;
                v121 = 0u;
                v122 = 0u;
                memset(v120, 0, sizeof(v120));
                v119 = 0u;
                v117 = 0u;
                memset(v118, 0, sizeof(v118));
                memset(v116, 0, sizeof(v116));
                v114 = 0u;
                v115 = 0u;
                __dst = 0u;
                if (SHIBYTE(v138) < 0)
                {
                  sub_100005F2C(&__dst, __p, *(&__p + 1));
                }

                else
                {
                  __dst = __p;
                  *&v114 = v138;
                }

                BYTE8(v114) = *a2;
                BYTE9(v114) = v84;
                v26 = *a3;
                BYTE10(v114) = v26 == 8;
                BYTE11(v114) = v26 == 9;
                BYTE12(v114) = *(a4 + 440);
                BYTE13(v114) = a5;
                BYTE14(v114) = *(a1 + 145);
                HIBYTE(v114) = *(a4 + 441);
                LOBYTE(v115) = v85;
                DWORD1(v115) = v23;
                BYTE8(v115) = v24;
                v27 = *v25;
                LOBYTE(v116[0]) = *(a4 + 920);
                HIDWORD(v115) = v27;
                sub_10006F264(&v110, (a4 + 1000));
                v16 = v86;
                sub_10006F264(v107, (a4 + 1032));
                v28 = sub_10093128C(&v110, v107, &v116[1]);
                WORD4(v117) = v82 | ((v82 != 0) << 8);
                if (*(a1 + 145))
                {
                  v29 = 4;
                }

                else
                {
                  v29 = sub_100931584(*(a1 + 144));
                }

                BYTE10(v117) = v29;
                v30 = (*(*v83 + 224))(v83, v28);
                BYTE11(v117) = sub_100932A98(v30, *(a1 + 632));
                BYTE12(v117) = *(a1 + 1120) != 5;
                BYTE13(v117) = v144 & v143;
                v118[0] = a6;
                sub_10006F264(&v118[2], &v135);
                sub_10006F264(&v118[10], &v133);
                *(&v119 + 1) = *(a4 + 116);
                LOBYTE(v120[0]) = *(a4 + 936);
                v31 = (a4 + 59);
                if (*(a4 + 967) < 0)
                {
                  sub_100005F2C(&v120[1], *(a4 + 118), *(a4 + 119));
                }

                else
                {
                  *&v120[1] = *v31;
                  v120[3] = *(a4 + 120);
                }

                LODWORD(v121) = *(a4 + 242);
                BYTE4(v121) = *(a4 + 972);
                *(&v121 + 1) = *(a4 + 122);
                LOBYTE(v122) = *(a4 + 984);
                BYTE8(v122) = sub_1009315A8(*(a1 + 1120));
                if (*(a4 + 319) < 0)
                {
                  sub_100005F2C(&v123, *(a4 + 37), *(a4 + 38));
                }

                else
                {
                  v123 = *(a4 + 296);
                  *&v124 = *(a4 + 39);
                }

                BYTE8(v124) = 1;
                if (*(a4 + 23) < 0)
                {
                  sub_100005F2C(&v125, *a4, *(a4 + 1));
                }

                else
                {
                  v125 = *a4;
                  *&v126 = *(a4 + 2);
                }

                BYTE8(v126) = 1;
                if (*(a4 + 47) < 0)
                {
                  sub_100005F2C(&v127, *(a4 + 3), *(a4 + 4));
                }

                else
                {
                  v127 = *(a4 + 24);
                  *&v128 = *(a4 + 5);
                }

                BYTE8(v128) = 1;
                if (*(a4 + 71) < 0)
                {
                  sub_100005F2C(&v129, *(a4 + 6), *(a4 + 7));
                }

                else
                {
                  v129 = a4[3];
                  *&v130 = *(a4 + 8);
                }

                BYTE8(v130) = 1;
                if (*(a4 + 95) < 0)
                {
                  sub_100005F2C(&v131, *(a4 + 9), *(a4 + 10));
                }

                else
                {
                  v131 = *(a4 + 72);
                  *&v132 = *(a4 + 11);
                }

                BYTE8(v132) = 1;
                if (v109 == 1 && v108 < 0)
                {
                  operator delete(v107[0]);
                }

                if (v112 == 1 && v111 < 0)
                {
                  operator delete(v110.n128_u64[0]);
                }

                (*(*v83 + 104))(v83, &__dst);
                if (*a2 != 1)
                {
                  goto LABEL_189;
                }

                v105[0] = 0;
                v105[1] = 0;
                v106 = 0;
                v32 = CSIBOOLAsString(BYTE14(v114));
                sub_10000501C(v105, v32);
                v102 = 0;
                v103 = 0;
                v104 = 0;
                v33 = CSIBOOLAsString(BYTE12(v117));
                sub_10000501C(&v102, v33);
                v99 = 0;
                v100 = 0;
                v101 = 0;
                v34 = CSIBOOLAsString(v115);
                sub_10000501C(&v99, v34);
                v97 = 0uLL;
                v98 = 0;
                std::operator+<char>();
                v35 = std::string::append(&v93, ", isNative:", 0xBuLL);
                v36 = *&v35->__r_.__value_.__l.__data_;
                v94.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
                *&v94.__r_.__value_.__l.__data_ = v36;
                v35->__r_.__value_.__l.__size_ = 0;
                v35->__r_.__value_.__r.__words[2] = 0;
                v35->__r_.__value_.__r.__words[0] = 0;
                if (v104 >= 0)
                {
                  v37 = &v102;
                }

                else
                {
                  v37 = v102;
                }

                if (v104 >= 0)
                {
                  v38 = HIBYTE(v104);
                }

                else
                {
                  v38 = v103;
                }

                v39 = std::string::append(&v94, v37, v38);
                v40 = *&v39->__r_.__value_.__l.__data_;
                v95.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
                *&v95.__r_.__value_.__l.__data_ = v40;
                v39->__r_.__value_.__l.__size_ = 0;
                v39->__r_.__value_.__r.__words[2] = 0;
                v39->__r_.__value_.__r.__words[0] = 0;
                v41 = std::string::append(&v95, ", isSimultaneous:", 0x11uLL);
                v42 = *&v41->__r_.__value_.__l.__data_;
                v96.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
                *&v96.__r_.__value_.__l.__data_ = v42;
                v41->__r_.__value_.__l.__size_ = 0;
                v41->__r_.__value_.__r.__words[2] = 0;
                v41->__r_.__value_.__r.__words[0] = 0;
                if (v101 >= 0)
                {
                  v43 = &v99;
                }

                else
                {
                  v43 = v99;
                }

                if (v101 >= 0)
                {
                  v44 = HIBYTE(v101);
                }

                else
                {
                  v44 = v100;
                }

                v45 = std::string::append(&v96, v43, v44);
                v46 = *&v45->__r_.__value_.__l.__data_;
                v98 = v45->__r_.__value_.__r.__words[2];
                v97 = v46;
                v45->__r_.__value_.__l.__size_ = 0;
                v45->__r_.__value_.__r.__words[2] = 0;
                v45->__r_.__value_.__r.__words[0] = 0;
                if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v96.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v95.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v94.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v93.__r_.__value_.__l.__data_);
                }

                memset(&v96, 0, sizeof(v96));
                sub_10000501C(&v96, "Empty");
                if (v117 == 1)
                {
                  std::string::operator=(&v96, &v116[1]);
                }

                else if (LOBYTE(v116[0]) == 1)
                {
                  if ((HIDWORD(v115) - 70000) >= 0x99D57)
                  {
                    std::to_string(&v95, HIDWORD(v115));
                    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v96.__r_.__value_.__l.__data_);
                    }

                    v96 = v95;
                  }

                  else
                  {
                    v47 = sub_10064A12C(SHIDWORD(v115));
                    sub_100016890(&v96, v47);
                  }
                }

                memset(&v95, 0, sizeof(v95));
                sub_10000501C(&v95, "Empty");
                if (BYTE8(v115) == 1)
                {
                  if (DWORD1(v115) > 0xC)
                  {
                    std::to_string(&v94, DWORD1(v115));
                    if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v95.__r_.__value_.__l.__data_);
                    }

                    v95 = v94;
                  }

                  else
                  {
                    v48 = sub_10064BE90(BYTE4(v115));
                    sub_100016890(&v95, v48);
                  }
                }

                memset(&v94, 0, sizeof(v94));
                if (*(a4 + 967) < 0)
                {
                  v50 = *(a4 + 119);
                  if (v50)
                  {
                    v49 = v83;
                    sub_100005F2C(&v94, *v31, v50);
                    goto LABEL_107;
                  }
                }

                else if (*(a4 + 967))
                {
                  v49 = v83;
                  *&v94.__r_.__value_.__l.__data_ = *v31;
                  v94.__r_.__value_.__r.__words[2] = *(a4 + 120);
LABEL_107:
                  memset(&v93, 0, sizeof(v93));
                  if ((SBYTE7(v114) & 0x80u) == 0)
                  {
                    v51 = BYTE7(v114);
                  }

                  else
                  {
                    v51 = *(&__dst + 1);
                  }

                  memset(&v87, 0, sizeof(v87));
                  sub_1000677C4(&v87, v51 + 2);
                  if ((v87.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v52 = &v87;
                  }

                  else
                  {
                    v52 = v87.__r_.__value_.__r.__words[0];
                  }

                  if (v51)
                  {
                    if ((SBYTE7(v114) & 0x80u) == 0)
                    {
                      p_dst = &__dst;
                    }

                    else
                    {
                      p_dst = __dst;
                    }

                    memmove(v52, p_dst, v51);
                  }

                  strcpy(v52 + v51, ", ");
                  v54 = sub_10064BE1C(BYTE9(v114));
                  v55 = strlen(v54);
                  v56 = std::string::append(&v87, v54, v55);
                  v57 = *&v56->__r_.__value_.__l.__data_;
                  v88.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
                  *&v88.__r_.__value_.__l.__data_ = v57;
                  v56->__r_.__value_.__l.__size_ = 0;
                  v56->__r_.__value_.__r.__words[2] = 0;
                  v56->__r_.__value_.__r.__words[0] = 0;
                  v58 = std::string::append(&v88, ", errorCode:", 0xCuLL);
                  v59 = *&v58->__r_.__value_.__l.__data_;
                  v89.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
                  *&v89.__r_.__value_.__l.__data_ = v59;
                  v58->__r_.__value_.__l.__size_ = 0;
                  v58->__r_.__value_.__r.__words[2] = 0;
                  v58->__r_.__value_.__r.__words[0] = 0;
                  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v60 = &v96;
                  }

                  else
                  {
                    v60 = v96.__r_.__value_.__r.__words[0];
                  }

                  if ((v96.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(v96.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = v96.__r_.__value_.__l.__size_;
                  }

                  v62 = std::string::append(&v89, v60, size);
                  v63 = *&v62->__r_.__value_.__l.__data_;
                  v90.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
                  *&v90.__r_.__value_.__l.__data_ = v63;
                  v62->__r_.__value_.__l.__size_ = 0;
                  v62->__r_.__value_.__r.__words[2] = 0;
                  v62->__r_.__value_.__r.__words[0] = 0;
                  v64 = std::string::append(&v90, ", failureReason:", 0x10uLL);
                  v65 = *&v64->__r_.__value_.__l.__data_;
                  v141.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
                  *&v141.__r_.__value_.__l.__data_ = v65;
                  v64->__r_.__value_.__l.__size_ = 0;
                  v64->__r_.__value_.__r.__words[2] = 0;
                  v64->__r_.__value_.__r.__words[0] = 0;
                  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v66 = &v95;
                  }

                  else
                  {
                    v66 = v95.__r_.__value_.__r.__words[0];
                  }

                  if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v67 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v67 = v95.__r_.__value_.__l.__size_;
                  }

                  v68 = std::string::append(&v141, v66, v67);
                  v69 = *&v68->__r_.__value_.__l.__data_;
                  v91.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
                  *&v91.__r_.__value_.__l.__data_ = v69;
                  v68->__r_.__value_.__l.__size_ = 0;
                  v68->__r_.__value_.__r.__words[2] = 0;
                  v68->__r_.__value_.__r.__words[0] = 0;
                  v70 = std::string::append(&v91, ", httpErrorType:", 0x10uLL);
                  v71 = *&v70->__r_.__value_.__l.__data_;
                  v92.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
                  *&v92.__r_.__value_.__l.__data_ = v71;
                  v70->__r_.__value_.__l.__size_ = 0;
                  v70->__r_.__value_.__r.__words[2] = 0;
                  v70->__r_.__value_.__r.__words[0] = 0;
                  if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v72 = &v94;
                  }

                  else
                  {
                    v72 = v94.__r_.__value_.__r.__words[0];
                  }

                  if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v73 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v73 = v94.__r_.__value_.__l.__size_;
                  }

                  v74 = std::string::append(&v92, v72, v73);
                  v75 = *&v74->__r_.__value_.__l.__data_;
                  v93.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
                  *&v93.__r_.__value_.__l.__data_ = v75;
                  v74->__r_.__value_.__l.__size_ = 0;
                  v74->__r_.__value_.__r.__words[2] = 0;
                  v74->__r_.__value_.__r.__words[0] = 0;
                  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v92.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v91.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v141.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v90.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v89.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v88.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v88.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v87.__r_.__value_.__l.__data_);
                  }

                  memset(&v92, 0, sizeof(v92));
                  sub_10000501C(&v92, "eSIM iOS");
                  v76 = *(a1 + 848);
                  if (v76)
                  {
                    v77 = *(v76 + 167);
                    if (v77 < 0)
                    {
                      v77 = *(v76 + 152);
                    }

                    if (v77)
                    {
                      std::operator+<char>();
                      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v92.__r_.__value_.__l.__data_);
                      }

                      v92 = v91;
                    }
                  }

                  memset(&v91, 0, sizeof(v91));
                  if (*(a4 + 271) < 0)
                  {
                    sub_100005F2C(&v91, *(a4 + 31), *(a4 + 32));
                  }

                  else
                  {
                    v91 = *(a4 + 248);
                  }

                  v78 = HIBYTE(v91.__r_.__value_.__r.__words[2]);
                  v79 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
                  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v78 = v91.__r_.__value_.__l.__size_;
                  }

                  if (v78)
                  {
                    v80 = *(a1 + 40);
                    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                    {
                      v81 = v91.__r_.__value_.__r.__words[0];
                      if (v79 >= 0)
                      {
                        v81 = &v91;
                      }

                      LODWORD(v141.__r_.__value_.__l.__data_) = 136315138;
                      *(v141.__r_.__value_.__r.__words + 4) = v81;
                      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I ABC group ID : %s", &v141, 0xCu);
                    }
                  }

                  sub_10000501C(&v141, "Cellular");
                  v140 = 0;
                  (*(*v49 + 208))(v49, &v141, &v92, &v97, &v93, 0, &v91, v139);
                  sub_10010DF14(v139);
                  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v141.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v91.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v92.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v93.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v94.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v95.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v96.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v98) < 0)
                  {
                    operator delete(v97);
                  }

                  if (SHIBYTE(v101) < 0)
                  {
                    operator delete(v99);
                  }

                  if (SHIBYTE(v104) < 0)
                  {
                    operator delete(v102);
                  }

                  if (SHIBYTE(v106) < 0)
                  {
                    operator delete(v105[0]);
                  }

LABEL_189:
                  sub_10028290C(&__dst);
                  if (BYTE8(v134) == 1 && SBYTE7(v134) < 0)
                  {
                    operator delete(v133);
                  }

                  if (BYTE8(v136) == 1 && SBYTE7(v136) < 0)
                  {
                    operator delete(v135);
                  }

                  if (SHIBYTE(v138) < 0)
                  {
                    operator delete(__p);
                  }

                  if (v144 == 1)
                  {
                    sub_1002813D0(v142);
                  }

LABEL_199:
                  sub_100004A34(v16);
LABEL_200:
                  sub_100004A34(v13);
                  return;
                }

                v49 = v83;
                sub_10000501C(&v94, "Empty");
                goto LABEL_107;
              }
            }
          }

          else
          {
            v16 = 0;
          }

          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101767268();
          }

          if (!v16)
          {
            goto LABEL_200;
          }

          goto LABEL_199;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176729C();
    }

    if (v13)
    {
      goto LABEL_200;
    }
  }
}

void sub_100262D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a54 < 0)
  {
    operator delete(__p);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  sub_10028290C(&STACK[0x200]);
  if (LOBYTE(STACK[0x3A8]) == 1 && SLOBYTE(STACK[0x3A7]) < 0)
  {
    operator delete(STACK[0x390]);
  }

  if (LOBYTE(STACK[0x3C8]) == 1 && SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3E7]) < 0)
  {
    operator delete(STACK[0x3D0]);
  }

  if (LOBYTE(STACK[0x930]) == 1)
  {
    sub_1002813D0(&STACK[0x430]);
  }

  sub_100004A34(a13);
  sub_100004A34(v74);
  _Unwind_Resume(a1);
}

void sub_100263174(uint64_t a1, int a2)
{
  v2 = *(a1 + 336);
  v3 = *(a1 + 352);
  if (v3 != v2 && *(a1 + 328) != v2)
  {
    if ((a2 & 1) != 0 || (*(a1 + 153) & 1) != 0 || *(a1 + 156) != 6)
    {
      v15 = *(a1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = "enter";
        if (!a2)
        {
          v16 = "exit";
        }

        v17 = (v3 + 320);
        if (*(v3 + 343) < 0)
        {
          v17 = *v17;
        }

        *buf = 136315394;
        v21 = v16;
        v22 = 2080;
        v23 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s websheet for iccid: %s", buf, 0x16u);
      }
    }

    else
    {
      v6 = (*(**(a1 + 48) + 104))(*(a1 + 48));
      v7 = *(a1 + 88);
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = *(a1 + 80);
          if (v10 && (!v6 || (*(*v10 + 440))(v10)))
          {
            v11 = *(a1 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = *(a1 + 352);
              v13 = (v12 + 320);
              if (*(v12 + 343) < 0)
              {
                v13 = *v13;
              }

              *buf = 136315138;
              v21 = v13;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I clear websheet based transfer:%s", buf, 0xCu);
            }

            v14 = *(a1 + 352);
            v18 = 0;
            v19 = 0;
            sub_100254358(a1, v14 + 320, 11, 45, &v19, &v18);
            sub_10001021C(&v18);
            sub_100005978(&v19);
            sub_100254C38(a1);
            sub_100254E74(a1);
          }

          sub_100004A34(v9);
        }
      }
    }
  }
}

void sub_1002633AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

BOOL sub_1002633D8(void *a1)
{
  v1 = a1[41];
  v2 = a1[42];
  if (v1 != v2)
  {
    v4 = v1 + 40;
    do
    {
      v5 = a1[5];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v4;
        if (*(v4 + 23) < 0)
        {
          v6 = *v4;
        }

        *buf = 136315138;
        v10 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I source iccid: %s", buf, 0xCu);
      }

      v7 = v4 + 94;
      v4 += 134;
    }

    while (v7 != v2);
  }

  return v1 != v2;
}

BOOL sub_1002634D4(uint64_t a1)
{
  v1 = *(a1 + 440);
  if (v1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transfer Entitlements ongoing", v4, 2u);
    }
  }

  return v1 != 0;
}

uint64_t sub_100263544(uint64_t a1)
{
  if (*(a1 + 155))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(a1 + 154);
  }

  return v1 & 1;
}

void sub_100263560(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = sub_100649BE0(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I EndPoint Type: %s", &v8, 0xCu);
  }

  if (a2 == 2)
  {
    sub_100254C38(a1);
    *(a1 + 144) = 0;
    v5 = *(a1 + 248);
    *(a1 + 240) = 0;
    *(a1 + 248) = 0;
    if (v5)
    {
      sub_100004A34(v5);
    }

    *(a1 + 146) = 0;
    *(a1 + 148) = 0;
    v7 = *(a1 + 168);
      ;
    }

    *(a1 + 176) = v7;
    sub_10028FCD4(a1 + 576);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017672D0(a2);
  }
}

uint64_t sub_10026368C(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }

  return 0;
}

uint64_t sub_1002636CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }

  v5[0] = 0;
  v6 = 0;
  result = sub_100263768(a3, v5, 17);
  if (v6 == 1)
  {
    return sub_100111F5C(v5);
  }

  return result;
}

void sub_100263748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a46 == 1)
  {
    sub_100111F5C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100263768(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1002637BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }

  v6[0] = 0;
  v7 = 0;
  result = sub_100263768(a4, v6, 17);
  if (v7 == 1)
  {
    return sub_100111F5C(v6);
  }

  return result;
}

void sub_100263838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  if (a46 == 1)
  {
    sub_100111F5C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100263858(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }

  return 0;
}

void sub_100263898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v10[2] = *(a2 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  sub_10027EEF0(v12, a5);
  v13 = 0;
  if (*a6 - 1 <= 1)
  {
    v13 = *a6;
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100004AA0(v14, (a1 + 8));
  operator new();
}

void sub_100263AD4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 31) < 0)
  {
    operator delete(*v23);
  }

  sub_10004F058(a1);
}

void sub_100263B48(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_10025CD10((a1 + 328), a3);
  if (*(a1 + 336) == v9)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767358();
    }
  }

  else
  {
    v10 = *(a2 + 23);
    if (v10 >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = a2[1];
    }

    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = (v9 + 672);
    v13 = *(v9 + 695);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v9 + 680);
    }

    if (v11 == v13 && (v10 >= 0 ? (v15 = a2) : (v15 = *a2), v14 >= 0 ? (v16 = v12) : (v16 = *v12), !memcmp(v15, v16, v11)))
    {
LABEL_27:
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_100649BB4(a5);
        if (*(a3 + 23) >= 0)
        {
          v22 = a3;
        }

        else
        {
          v22 = *a3;
        }

        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I consent state [%s] received - plan [%s]", buf, 0x16u);
      }

      v40 = 0;
      v41 = 0;
      sub_100254358(a1, a3, 3, 0, &v41, &v40);
      sub_10001021C(&v40);
      sub_100005978(&v41);
      v38 = 0;
      v39 = 0;
      (***(a1 + 48))(buf);
      Registry::getTimerService(&v38, *buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v38)
      {
        memset(buf, 0, sizeof(buf));
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(buf, *a3, *(a3 + 8));
        }

        else
        {
          *buf = *a3;
          *&buf[16] = *(a3 + 16);
        }

        sub_100004AA0(&v42, (a1 + 8));
        v24 = v42;
        v23 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
        }

        v25 = v38;
        sub_10000501C(__p, "Transfer profile indication wait timer");
        v26 = *(a1 + 24);
        object = v26;
        if (v26)
        {
          dispatch_retain(v26);
        }

        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_1002640E8;
        aBlock[3] = &unk_101E35FD0;
        aBlock[4] = a1;
        aBlock[5] = v24;
        v31 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (buf[23] < 0)
        {
          sub_100005F2C(&v32, *buf, *&buf[8]);
        }

        else
        {
          v32 = *buf;
          v33 = *&buf[16];
        }

        v34 = _Block_copy(aBlock);
        sub_100D23364(v25, __p, 0, 120000000, &object, &v34);
        v27 = v42;
        v42 = 0;
        v28 = *(a1 + 1008);
        *(a1 + 1008) = v27;
        if (v28)
        {
          (*(*v28 + 8))(v28);
          v29 = v42;
          v42 = 0;
          if (v29)
          {
            (*(*v29 + 8))(v29);
          }
        }

        if (v34)
        {
          _Block_release(v34);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (v31)
        {
          std::__shared_weak_count::__release_weak(v31);
        }

        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101766E14();
      }

      if (v39)
      {
        sub_100004A34(v39);
      }
    }

    else
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = *a2;
        if (v10 >= 0)
        {
          v18 = a2;
        }

        if (v14 < 0)
        {
          v12 = *v12;
        }

        if (*(a3 + 23) >= 0)
        {
          v19 = a3;
        }

        else
        {
          v19 = *a3;
        }

        *buf = 136315650;
        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = v12;
        *&buf[22] = 2080;
        v45 = v19;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "uuid mismatched : %s != %s, source iccid : %s. drop transfer consent indication", buf, 0x20u);
      }
    }
  }
}

void sub_100264008(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (*(v38 - 105) < 0)
  {
    operator delete(*(v38 - 128));
  }

  if (a32)
  {
    sub_100004A34(a32);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002640E8(uint64_t a1)
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
        if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_1017673C8();
        }

        if (*(a1 + 79) < 0)
        {
          sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
        }

        else
        {
          *__p = *(a1 + 56);
          v6 = *(a1 + 72);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

char *sub_100264290(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1002642F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026430C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_100264360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }

  v5[0] = 0;
  v10 = 0;
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v5);
  if (v10 == 1)
  {
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7 < 0)
    {
      operator delete(v6);
    }
  }
}

void sub_100264428(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767080();
  }
}

uint64_t sub_100264464(uint64_t a1, uint64_t a2)
{
  sub_1002644E8(a1 + 864, a2);
  result = *(a1 + 552);
  if (result && *(a1 + 888) == 1)
  {
    (*(*result + 48))(result);

    return sub_10016DBD4(a1 + 528);
  }

  return result;
}

uint64_t sub_1002644E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1001730B8(a1, *a2, (a2 + 8));
    }
  }

  else
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_100264548(uint64_t a1, uint64_t a2, const void **a3, void *a4, uint64_t *a5, uint64_t a6, unsigned __int8 *a7)
{
  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a4 + 23) >= 0)
    {
      v14 = a4;
    }

    else
    {
      v14 = *a4;
    }

    v19 = 136315138;
    v20 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Received generic transfer payload ind. type: %s", &v19, 0xCu);
  }

  if (*(a1 + 336) == sub_10025CD10((a1 + 328), a3))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017674BC();
    }
  }

  else
  {
    v15 = *(a2 + 23);
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 8);
    }

    if (v15)
    {
      if (*a7 == 2)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_1017673FC(a7);
        }
      }

      else
      {
        v16 = sub_100649C38(13);
        v17 = strlen(v16);
        v18 = *(a4 + 23);
        if (v18 < 0)
        {
          if (v17 != a4[1])
          {
            return;
          }

          if (v17 == -1)
          {
            sub_10013C334();
          }

          a4 = *a4;
        }

        else if (v17 != v18)
        {
          return;
        }

        if (!memcmp(a4, v16, v17))
        {
          sub_100264734(a1, a5);
        }
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101767488();
    }
  }
}

void sub_100264728(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100264734(uint64_t a1, uint64_t *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0;
  v7 = 0;
  __p = 0;
  sub_100034C50(&__p, *a2, a2[1], a2[1] - *a2);
  memset(v12, 0, sizeof(v12));
  PB::Reader::Reader(v12, __p, v6 - __p);
  v11[0] = 0;
  v11[1] = 0;
  sub_100BE2338(v11);
  if (sub_100BE242C(v11, v12))
  {
    sub_100BE2394(&v8, v11);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    LOBYTE(v8) = 0;
  }

  LOBYTE(v10) = v3;
  PB::Base::~Base(v11);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v10 == 1 && (v9 & 0x100000000) != 0)
  {
    if (v9)
    {
      *&v12[0] = 0;
      sub_100930308(v9 == 3, v12);
      v4 = *&v12[0];
      if (*&v12[0])
      {
        CFRetain(*&v12[0]);
      }

      sub_100252C7C(a1, &v4);
      sub_10001021C(&v4);
      sub_10001021C(v12);
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176752C();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767560();
  }

  if (v10 == 1)
  {
    PB::Base::~Base(&v8);
  }
}

void sub_1002648A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  sub_10001021C(&a10);
  sub_10001021C((v20 - 48));
  if (a16 == 1)
  {
    PB::Base::~Base(&a14);
  }

  _Unwind_Resume(a1);
}

void sub_100264904(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767594();
  }
}

void sub_100264940(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a4 + 8);
  }

  if (v5)
  {
    v6 = a4;
    v9 = sub_10025CD10((a1 + 328), a3);
    if (*(a1 + 336) == v9)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017675C8();
      }
    }

    else
    {
      v10 = *(a2 + 23);
      if (v10 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = a2[1];
      }

      if (!v11)
      {
        goto LABEL_32;
      }

      v12 = (v9 + 672);
      v13 = *(v9 + 695);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v9 + 680);
      }

      if (v11 == v13 && (v10 >= 0 ? (v15 = a2) : (v15 = *a2), v14 >= 0 ? (v16 = v12) : (v16 = *v12), !memcmp(v15, v16, v11)))
      {
LABEL_32:
        v20 = sub_100649C38(10);
        v21 = strlen(v20);
        v22 = *(v6 + 23);
        if (v22 < 0)
        {
          if (v21 != v6[1])
          {
            return;
          }

          if (v21 == -1)
          {
            sub_10013C334();
          }

          v6 = *v6;
        }

        else if (v21 != v22)
        {
          return;
        }

        if (!memcmp(v6, v20, v21))
        {

          sub_100264BB8(a1, a3);
        }
      }

      else
      {
        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = *a2;
          if (v10 >= 0)
          {
            v18 = a2;
          }

          if (v14 < 0)
          {
            v12 = *v12;
          }

          if (*(a3 + 23) >= 0)
          {
            v19 = a3;
          }

          else
          {
            v19 = *a3;
          }

          v23 = 136315650;
          v24 = v18;
          v25 = 2080;
          v26 = v12;
          v27 = 2080;
          v28 = v19;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "uuid mismatched : %s != %s, source iccid : %s. drop tr.rsp", &v23, 0x20u);
        }
      }
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767638();
  }
}