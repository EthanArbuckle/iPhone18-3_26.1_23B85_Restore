void sub_1002749B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, const void *a61, const void *a62)
{
  sub_100004A34(v62);
  sub_1000296E0(&a61);
  sub_100005978(&a62);
  _Unwind_Resume(a1);
}

uint64_t sub_100274E2C(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v3 = a1;
    sub_10016C644(&v3);
  }

  return a1;
}

uint64_t sub_100274ED4(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

char *sub_100274F14(char *result, uint64_t a2)
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

void sub_100274F78(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100274F90(uint64_t a1)
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

std::string *sub_100274FE4@<X0>(uint64_t a1@<X0>, const std::string *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 32) = 0u;
  v7 = (a4 + 32);
  *(a4 + 336) = 0;
  *(a4 + 304) = 0u;
  *(a4 + 320) = 0u;
  *(a4 + 272) = 0u;
  *(a4 + 288) = 0u;
  *(a4 + 240) = 0u;
  *(a4 + 256) = 0u;
  *(a4 + 208) = 0u;
  *(a4 + 224) = 0u;
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  sub_100922314((a1 + 274), a3, &v13);
  *(a4 + 56) = v13;
  *(a4 + 72) = v14;
  std::string::operator=((a4 + 112), (a1 + 392));
  sub_10016C728((a4 + 136), (a1 + 392));
  v8 = *(a4 + 88);
  if (v8 >= *(a4 + 96))
  {
    v10 = sub_100283FE4((a4 + 80), a1 + 320, (a1 + 344));
  }

  else
  {
    sub_100284144(*(a4 + 88), a1 + 320, (a1 + 344));
    v10 = v8 + 88;
  }

  *(a4 + 88) = v10;
  sub_100922314((a1 + 584), v9, &v13);
  if (*(a4 + 223) < 0)
  {
    operator delete(*(a4 + 200));
  }

  *(a4 + 200) = v13;
  *(a4 + 216) = v14;
  std::string::operator=((a4 + 256), (a1 + 600));
  sub_10016C728((a4 + 280), (a1 + 600));
  v11 = *(a4 + 232);
  if (v11 >= *(a4 + 240))
  {
    result = sub_100283FE4((a4 + 224), a1 + 624, (a1 + 648));
  }

  else
  {
    sub_100284144(*(a4 + 232), a1 + 624, (a1 + 648));
    result = (v11 + 88);
  }

  *(a4 + 232) = result;
  if (a2[1].__r_.__value_.__s.__data_[0] == 1)
  {
    return std::string::operator=(v7, a2);
  }

  return result;
}

void sub_10027517C(_Unwind_Exception *a1)
{
  *(v1 + 232) = v2;
  sub_10016F298(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002751B0(uint64_t a1)
{
  sub_1000296E0((a1 + 56));
  sub_100005978((a1 + 40));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1002751F4(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 123) != 1 || (*(a3 + 122) & 1) != 0 || *(a3 + 48) != 1)
  {
    return 0;
  }

  v3 = *(a3 + 47);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 32);
  }

  if (v3 && *(a3 + 80) == 1)
  {
    return sub_10026A3FC(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_100275244(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *(a1 + 352);
  if (v4 == *(a1 + 336))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768510();
    }
  }

  else
  {
    v5 = (v4 + 320);
    if (*(a2 + 123) == 1 && *(a2 + 122) != 1)
    {
      if (*(a2 + 48) != 1)
      {
        goto LABEL_33;
      }

      v6 = *(a2 + 47);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 32);
      }

      if (v6 && (*(a2 + 80) & 1) != 0)
      {
        if (*sub_10027640C(a1))
        {
          *(a1 + 155) = 1;
          sub_10026F6EC(a1, 1);
          v14 = sub_1002764FC(a1, (v4 + 320));
          memset(v13, 0, sizeof(v13));
          sub_100284F98(v13, a3);
          v8 = *(a1 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = v4 + 320;
            if (*(v4 + 343) < 0)
            {
              v9 = *v5;
            }

            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [req][tsspost] perform TransferSIM post request with WebServiceRequest. source iccid : %s", buf, 0xCu);
          }

          sub_1002306AC((a1 + 8), &v10);
          if (*(v4 + 343) < 0)
          {
            sub_100005F2C(&v11, *(v4 + 320), *(v4 + 328));
          }

          else
          {
            v11 = *v5;
            v12 = *(v4 + 336);
          }

          sub_10027690C(v19);
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101768440();
        }

        v18 = 11;
        v13[0] = 0;
        v17 = 56;
        *buf = 0;
        v16 = 256;
        v14 = 70013;
        v15 = 1;
        sub_1002540BC(a1, v4 + 320, &v18, 0, v13, &v17, buf, &v16, &v14, (a1 + 352));
      }

      else
      {
LABEL_33:
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_1017684A8();
        }

        v18 = 11;
        v13[0] = 0;
        v17 = 52;
        *buf = 0;
        v16 = 263;
        v14 = 70088;
        v15 = 1;
        sub_1002540BC(a1, v4 + 320, &v18, 0, v13, &v17, buf, &v16, &v14, (a1 + 352));
      }
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017684DC();
      }

      v18 = 11;
      v13[0] = 0;
      v17 = 52;
      *buf = 0;
      v16 = 263;
      v14 = 70087;
      v15 = 1;
      sub_1002540BC(a1, v4 + 320, &v18, 0, v13, &v17, buf, &v16, &v14, (a1 + 352));
    }

    sub_10001021C(buf);
    sub_100005978(v13);
  }
}

void sub_1002756AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a35)
  {
    std::__shared_weak_count::__release_weak(a35);
  }

  sub_100283ED8(&a39);
  _Unwind_Resume(a1);
}

void sub_10027572C(uint64_t a1)
{
  if (*(a1 + 147))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(a1 + 1056) = v2;
  v3 = *(a1 + 168);
  for (i = *(a1 + 176); v3 != i; v3 += 28)
  {
    v8[0] = v3 + 1;
    v5 = sub_10028EDFC(a1 + 1064, &v3[1].__r_.__value_.__l.__data_);
    std::string::operator=((v5 + 56), v3 + 6);
    v6 = v3[12].__r_.__value_.__s.__data_[6];
    v8[0] = v3 + 1;
    *(sub_10028EDFC(a1 + 1064, &v3[1].__r_.__value_.__l.__data_) + 80) = v6;
    v7 = v3[12].__r_.__value_.__s.__data_[1];
    v8[0] = v3 + 1;
    *(sub_10028EDFC(a1 + 1064, &v3[1].__r_.__value_.__l.__data_) + 81) = v7;
  }

  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (a1 + 8));
  operator new();
}

uint64_t sub_1002758B8(uint64_t a1)
{
  if (*(a1 + 144) != 2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I No preflight in non proximity flow", buf, 2u);
    }

    return 0;
  }

  if (*(a1 + 168) == *(a1 + 176))
  {
    return 0;
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v3 = *(a1 + 328);
    ;
  }

  *(a1 + 336) = v3;
  *(a1 + 352) = v3;
  v5 = *(a1 + 640);
  v6 = *(a1 + 648);
  if (v5 != v6)
  {
    while (*(v5 + 4) != 2)
    {
      v5 += 88;
      if (v5 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_17:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (*(v5 + 12) != 3)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      sub_101768544();
    }

    return 0;
  }

  v98 = *(v5 + 16);
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_1002584E0(a1, &v38);
  __dst[0] = 0;
  __dst[1] = 0;
  v37 = 0;
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  if (v8 == v7)
  {
    sub_1002030E0();
  }

  if (*(v7 + 455) < 0)
  {
    sub_100005F2C(__dst, *(v7 + 432), *(v7 + 440));
    v7 = *(a1 + 168);
    v8 = *(a1 + 176);
  }

  else
  {
    *__dst = *(v7 + 432);
    v37 = *(v7 + 448);
  }

  for (; v7 != v8; v7 += 672)
  {
    if (*(v7 + 289) != 1)
    {
      continue;
    }

    if ((*(v7 + 263) & 0x8000000000000000) != 0)
    {
      if (!*(v7 + 248))
      {
        goto LABEL_49;
      }
    }

    else if (!*(v7 + 263))
    {
      goto LABEL_49;
    }

    if ((*(v7 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(v7 + 176))
      {
LABEL_49:
        v20 = *(a1 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = (v7 + 24);
          if (*(v7 + 47) < 0)
          {
            v21 = *v21;
          }

          *buf = 136315138;
          *&buf[4] = v21;
          v22 = v20;
          v23 = "#I No transfer credentials available for plan : %s";
LABEL_53:
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 0xCu);
          continue;
        }

        continue;
      }
    }

    else if (!*(v7 + 191))
    {
      goto LABEL_49;
    }

    v11 = v38;
    v12 = v39;
    v13 = (v7 + 24);
    if (v38 != v39)
    {
      v14 = *(v7 + 47);
      if (v14 >= 0)
      {
        v15 = *(v7 + 47);
      }

      else
      {
        v15 = *(v7 + 32);
      }

      if (v14 >= 0)
      {
        v16 = (v7 + 24);
      }

      else
      {
        v16 = *(v7 + 24);
      }

      while (1)
      {
        v17 = *(v11 + 23);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v11 + 8);
        }

        if (v17 == v15)
        {
          v19 = v18 >= 0 ? v11 : *v11;
          if (!memcmp(v19, v16, v15))
          {
            break;
          }
        }

        v11 += 24;
        if (v11 == v12)
        {
          goto LABEL_59;
        }
      }
    }

    if (v11 != v12)
    {
      v24 = *(a1 + 40);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        continue;
      }

      if (*(v7 + 47) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      v22 = v24;
      v23 = "#I Skip preflight for OnDeviceTransferred plan : %s";
      goto LABEL_53;
    }

LABEL_59:
    v25 = *(v7 + 455);
    if (v25 >= 0)
    {
      v26 = *(v7 + 455);
    }

    else
    {
      v26 = *(v7 + 440);
    }

    v27 = HIBYTE(v37);
    if (v37 < 0)
    {
      v27 = __dst[1];
    }

    if (v26 != v27 || (v25 >= 0 ? (v28 = (v7 + 432)) : (v28 = *(v7 + 432)), v37 >= 0 ? (v29 = __dst) : (v29 = __dst[0]), memcmp(v28, v29, v26)))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101768578();
      }

LABEL_106:
      v9 = 0;
      goto LABEL_107;
    }

    v97 = 0uLL;
    if (sub_1009222A0())
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      memset(v90, 0, sizeof(v90));
      if (*(v7 + 239) < 0)
      {
        sub_100005F2C(v90, *(v7 + 216), *(v7 + 224));
      }

      else
      {
        v90[0] = *(v7 + 216);
        *&v90[1] = *(v7 + 232);
      }

      *(&v90[1] + 8) = v97;
      if (*(v7 + 47) < 0)
      {
        sub_100005F2C(&v90[2] + 8, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v30 = *v13;
        *(&v90[3] + 1) = *(v7 + 40);
        *(&v90[2] + 8) = v30;
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      bzero(buf, 0x430uLL);
      buf[273] = 4;
      v54 = 0;
      v55 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v76 = 0;
      v79 = 0;
      v80 = 0;
      v85 = 0;
      v86 = 0;
      v87 = 0;
      v88 = 0;
      v89 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0;
      v62 = 0;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v63 = 0;
      v64 = 0;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      v75 = 0;
      v77 = 0;
      v78 = 0;
      v81 = 0;
      v82 = 0;
      v84 = 0;
      v83 = 0;
      memset(&__p, 0, sizeof(__p));
      memset(v35, 0, sizeof(v35));
      v31 = sub_100256EF0(a1, &__p, buf, v90, v35, &v98, (a1 + 824));
      v41 = v35;
      sub_1000087B4(&v41);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v31)
      {
        sub_100276054(a1 + 328, buf);
      }

      else
      {
        v32 = *(a1 + 40);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v7 + 47) < 0)
          {
            v13 = *v13;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = v13;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Unable to create transfer plan : %s", &__p, 0xCu);
        }
      }

      sub_10027C3B4(buf);
      if (SHIBYTE(v96) < 0)
      {
        operator delete(*(&v95 + 1));
      }

      if (SBYTE7(v95) < 0)
      {
        operator delete(v94);
      }

      if (SHIBYTE(v93) < 0)
      {
        operator delete(*(&v92 + 1));
      }

      if (SBYTE7(v92) < 0)
      {
        operator delete(v91);
      }

      if (SHIBYTE(v90[3]) < 0)
      {
        operator delete(*(&v90[2] + 1));
      }

      if (SBYTE7(v90[1]) < 0)
      {
        operator delete(*&v90[0]);
      }
    }
  }

  v33 = *(a1 + 328);
  if (v33 == *(a1 + 336))
  {
    v34 = *(a1 + 40);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I no active plan to preflight", buf, 2u);
    }

    goto LABEL_106;
  }

  *(a1 + 352) = v33;
  sub_1001696A4((a1 + 360), (v33 + 320));
  v9 = 1;
LABEL_107:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__dst[0]);
  }

  *buf = &v38;
  sub_1000087B4(buf);
  return v9;
}

void sub_100275FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  a34 = &a26;
  sub_1000087B4(&a34);
  _Unwind_Resume(a1);
}

uint64_t sub_100276054(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    v4 = sub_10028470C(a1, a2);
  }

  else
  {
    v4 = sub_100284850(v3, a2) + 1072;
  }

  *(a1 + 8) = v4;
  return v4 - 1072;
}

BOOL sub_1002760A0(uint64_t a1)
{
  if ((*(a1 + 384) & 1) == 0)
  {
    v16 = *(a1 + 40);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I No Preflight Iccid", buf, 2u);
    return 0;
  }

  v2 = *(a1 + 352);
  if (v2 == *(a1 + 336))
  {
    return 0;
  }

  if ((*(v2 + 191) & 0x8000000000000000) == 0)
  {
    if (*(v2 + 191))
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (!*(v2 + 176))
  {
LABEL_16:
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1017685AC(v2, (v2 + 320), v18);
    }

    *buf = a1 + 360;
    v19 = sub_10028EDFC(a1 + 1064, (a1 + 360));
    *(v19 + 84) = 70019;
    *(v19 + 88) = 1;
    sub_100319F44(*(a1 + 352));
    return 0;
  }

LABEL_5:
  *buf = 0;
  v24 = 0;
  v25 = 0;
  sub_100260070(v2 + 320, buf);
  memset(&__p, 0, sizeof(__p));
  v3 = sub_10026AB6C(a1, *(a1 + 352));
  v4 = (*(**(a1 + 48) + 32))(*(a1 + 48));
  sub_100930AFC((a1 + 768), (a1 + 664), (a1 + 640), v3, v4, *(a1 + 145), &__p);
  v5 = sub_1009314B8((a1 + 768), &__p.__r_.__value_.__l.__data_);
  if (v5)
  {
    (*(**(a1 + 48) + 312))(*(a1 + 48), buf, v5);
  }

  (***(a1 + 48))(&v20);
  ServiceMap = Registry::getServiceMap(v20);
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
  v26 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v26);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_21:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_22;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_22:
  LOBYTE(v26) = 2;
  (*(*v14 + 80))(v14, buf, &v26);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(*buf);
  }

  return 1;
}

void sub_1002763A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027640C(uint64_t a1)
{
  v1 = a1 + 96;
  if (!*(a1 + 96))
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      (*(*v4 + 632))(&v7);
      v5 = v7;
      v7 = 0uLL;
      v6 = *(a1 + 104);
      *(a1 + 96) = v5;
      if (v6)
      {
        sub_100004A34(v6);
        if (*(&v7 + 1))
        {
          sub_100004A34(*(&v7 + 1));
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1002764A8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1002764FC(uint64_t a1, const void **a2)
{
  v3 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v3)
  {
    return 60;
  }

  v4 = v3;
  if (*(v3 + 904) == 1)
  {
    return *(v3 + 900);
  }

  v11 = 0;
  v12 = 0;
  sub_1002691B4(a1, v3, &v11);
  if (v11)
  {
    cf = 0;
    sub_100A83764(v11, @"TransferWebservicesTimeout", &cf);
    v6 = cf;
    if (cf)
    {
      v13 = 0;
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v13, v6, v8);
        v5 = v13;
      }

      else
      {
        v5 = 0;
      }

      *(v4 + 900) = v5;
      *(v4 + 904) = 1;
    }

    else
    {
      v5 = 60;
    }

    sub_10000A1EC(&cf);
  }

  else
  {
    v5 = 60;
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  return v5;
}

void sub_100276600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100276628(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  sub_100299F2C(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100276670(uint64_t a1, const void **a2, uint64_t a3, int a4)
{
  if (a4 != 6013 || *(a3 + 585) != 1 || (*(a3 + 584) & 1) != 0 || *(a3 + 480) != 1)
  {
    return 0;
  }

  v4 = *(a3 + 479);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a3 + 464);
  }

  if (v4 && *(a3 + 512) == 1)
  {
    return sub_10026A3FC(a1, a2);
  }

  else
  {
    return 0;
  }
}

void sub_1002766CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 480) == 1)
  {
    if (*(a4 + 479) < 0)
    {
      operator delete(*(a4 + 456));
    }

    *(a4 + 480) = 0;
  }

  if (*(a4 + 512) == 1)
  {
    if (*(a4 + 511) < 0)
    {
      operator delete(*(a4 + 488));
    }

    *(a4 + 512) = 0;
  }

  if (*(a4 + 1) == 1)
  {
    *(a4 + 1) = 0;
  }

  if (*(a4 + 544) == 1)
  {
    if (*(a4 + 543) < 0)
    {
      operator delete(*(a4 + 520));
    }

    *(a4 + 544) = 0;
  }

  if (*(a4 + 576) == 1)
  {
    if (*(a4 + 575) < 0)
    {
      operator delete(*(a4 + 552));
    }

    *(a4 + 576) = 0;
  }

  if (*(a3 + 272))
  {
    v8 = *(a1 + 40);
    if (*(a3 + 1))
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        v10 = 136315394;
        v11 = a2;
        v12 = 2080;
        v13 = entitlements::asString();
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I plan(%s) got transfer type from post request : %s", &v10, 0x16u);
        if ((*(a3 + 1) & 1) == 0)
        {
          sub_1000D1644();
        }
      }

      if (!*a3)
      {
        if (*(a3 + 44) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10176868C();
        }

        if (*(a3 + 72) == 1)
        {
          v9 = *(a1 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_101768704(a3, (a3 + 48), v9);
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_101768658();
      }

      *a3 = 256;
    }

    entitlements::TransferAuthorizationResponse::convert();
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768624();
  }
}

void sub_1002769B8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1002769D8(uint64_t a1, const void **a2, entitlements::TransferSIMViaWebServiceResponse *a3, int a4)
{
  *(a1 + 155) = 0;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [resp][tsspost] processing TransferSIM post response: %s", buf, 0xCu);
  }

  v10 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v10)
  {
    v11 = v10;
    v32 = 0u;
    memset(v31, 0, sizeof(v31));
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    *&buf[8] = 0u;
    *buf = a1;
    sub_100285238(&buf[8], a3);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v31[1], *a2, a2[1]);
    }

    else
    {
      *&v31[1] = *a2;
      v31[3] = a2[2];
    }

    LODWORD(v32) = a4;
    *(&v32 + 1) = v11;
    if (*(a3 + 160) == 1 && (entitlements::TransferSIMViaWebServiceResponse::success(a3) & 1) != 0)
    {
      sub_10000501C(__p, "TransferSimServiceViaWebServiceResponse");
      v18 = 0;
      v19 = 0;
      sub_10029D384();
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, a2[1]);
    }

    else
    {
      *__dst = *a2;
      v17 = a2[2];
    }

    if (*(a3 + 160) == 1)
    {
      entitlements::TransferSIMViaWebServiceResponse::success(a3);
    }

    __p[3] = *buf;
    sub_100285238(v13, &buf[8]);
    if (SHIBYTE(v31[3]) < 0)
    {
      sub_100005F2C(v14, v31[1], v31[2]);
    }

    else
    {
      *v14 = *&v31[1];
      v14[2] = v31[3];
    }

    v15 = v32;
    v20 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101767190();
  }
}

void sub_100276F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100274E2C(va);
  sub_100277094(&STACK[0x200]);
  _Unwind_Resume(a1);
}

uint64_t sub_100276FF0(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

uint64_t sub_100277094(uint64_t a1)
{
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 40) == 1 && *(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }
  }

  return a1;
}

const void **sub_100277148@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  theDict = 0;
  sub_100A83764(a1, @"TransferMetadata", buf);
  sub_100010180(&theDict, buf);
  sub_10000A1EC(buf);
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"OnDeviceActivation");
    memset(buf, 0, sizeof(buf));
    v17 = 0;
    ctu::cf::assign();
    v14 = v17;
    *__p = *buf;
    v3 = HIBYTE(v17);
    v4 = HIBYTE(v17);
    if ((v17 & 0x8000000000000000) != 0)
    {
      v3 = *&buf[8];
    }

    if (v3)
    {
      v5 = a2[1];
      if (v5 >= a2[2])
      {
        v8 = sub_10016B30C(a2, __p);
      }

      else
      {
        if (SHIBYTE(v17) < 0)
        {
          sub_100005F2C(a2[1], __p[0], *&buf[8]);
        }

        else
        {
          v6 = *__p;
          *(v5 + 16) = v14;
          *v5 = v6;
        }

        v8 = v5 + 24;
      }

      a2[1] = v8;
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
      v9 = *&buf[8];
      ctu::OsLogContext::~OsLogContext(buf);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
      v4 = HIBYTE(v14);
      if (v10)
      {
        v11 = __p;
        if (v14 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "TransferMetadata with OnDeviceActivation [%s]", buf, 0xCu);
        v4 = HIBYTE(v14);
      }
    }

    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
    v7 = *&buf[8];
    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10176877C();
    }
  }

  return sub_10001021C(&theDict);
}

void sub_100277340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  v23 = v22;
  v21[1] = v23;
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a15);
  __p = v21;
  sub_1000087B4(&__p);
  _Unwind_Resume(a1);
}

void sub_1002773C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v4)
  {
    v5 = v4;
    v6 = *(v4 + 1064);
    if (v6 == 4)
    {
      return;
    }

    if (*(a1 + 148) == 1)
    {
      *(v4 + 1064) = 0;
LABEL_5:
      if ((*(v4 + 440) & 1) != 0 || !(*(**(a1 + 48) + 1024))(*(a1 + 48), v4, v4 + 24, v4 + 48, v4 + 72, a2))
      {

        sub_10025F1D0(a1, a2);
      }

      else
      {

        sub_10025EB50(a1, a2);
      }

      return;
    }

    v7 = *(v4 + 1065);
    if (v6 == 1)
    {
      if (v7 == 1)
      {
        if (*(v4 + 23) < 0)
        {
          sub_100005F2C(&__dst, *v4, *(v4 + 8));
        }

        else
        {
          v8 = *v4;
          v29 = *(v4 + 16);
          __dst = v8;
        }

        if (*(v5 + 47) < 0)
        {
          sub_100005F2C(&v26, *(v5 + 24), *(v5 + 32));
        }

        else
        {
          v26 = *(v5 + 24);
          v27 = *(v5 + 40);
        }

        if (*(v5 + 71) < 0)
        {
          sub_100005F2C(&v24, *(v5 + 48), *(v5 + 56));
        }

        else
        {
          v24 = *(v5 + 48);
          v25 = *(v5 + 64);
        }

        if (*(v5 + 95) < 0)
        {
          sub_100005F2C(v22, *(v5 + 72), *(v5 + 80));
        }

        else
        {
          *v22 = *(v5 + 72);
          v23 = *(v5 + 88);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v21 = *(a2 + 16);
        }

        v10 = sub_10026C6C4(a1, &__dst, &v26, &v24, v22, __p);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(v22[0]);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(v24);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(__dst);
        }

        v11 = *(a2 + 23);
        if (v10)
        {
          if (v11 < 0)
          {
            sub_100005F2C(&v18, *a2, *(a2 + 8));
          }

          else
          {
            v18 = *a2;
            v19 = *(a2 + 16);
          }

          sub_100277840(a1, &v18, 5);
          if ((SHIBYTE(v19) & 0x80000000) == 0)
          {
            return;
          }

          v9 = v18;
        }

        else
        {
          if (v11 < 0)
          {
            sub_100005F2C(v16, *a2, *(a2 + 8));
          }

          else
          {
            *v16 = *a2;
            v17 = *(a2 + 16);
          }

          sub_100277840(a1, v16, 2);
          if ((SHIBYTE(v17) & 0x80000000) == 0)
          {
            return;
          }

          v9 = v16[0];
        }
      }

      else
      {
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(&v14, *a2, *(a2 + 8));
        }

        else
        {
          v14 = *a2;
          v15 = *(a2 + 16);
        }

        sub_100277840(a1, &v14, 2);
        if ((SHIBYTE(v15) & 0x80000000) == 0)
        {
          return;
        }

        v9 = v14;
      }
    }

    else
    {
      if (v7 != 1)
      {
        goto LABEL_5;
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v12, *a2, *(a2 + 8));
      }

      else
      {
        v12 = *a2;
        v13 = *(a2 + 16);
      }

      sub_100277840(a1, &v12, 5);
      if ((SHIBYTE(v13) & 0x80000000) == 0)
      {
        return;
      }

      v9 = v12;
    }

    operator delete(v9);
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017687B0();
  }
}

void sub_100277770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 - 105) < 0)
  {
    operator delete(*(v49 - 128));
  }

  if (*(v49 - 73) < 0)
  {
    operator delete(*(v49 - 96));
  }

  if (*(v49 - 41) < 0)
  {
    operator delete(*(v49 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_100277840(uint64_t a1, uint64_t a2, int a3)
{
  v49 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) != v49)
  {
    v47[0] = 0;
    v47[1] = 0;
    v48 = 0;
    sub_100260070(a2, v47);
    v45 = 0;
    v46 = 0;
    (***(a1 + 48))(buf);
    ServiceMap = Registry::getServiceMap(*buf);
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
LABEL_12:
        (**v14)(&v45, v14, v47);
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v16 = *(a1 + 40);
        if (v45)
        {
          if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
          {
            v17 = entitlements::asString();
            v18 = a2;
            if (*(a2 + 23) < 0)
            {
              v18 = *a2;
            }

            *buf = 136446466;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [req][ta] perform TransferAuthorization [%{public}s] request from target side. source iccid : %s", buf, 0x16u);
          }

          v64 = 0;
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
          v51 = 0u;
          memset(buf, 0, sizeof(buf));
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          memset(__str, 0, sizeof(__str));
          sub_100269D70(a1, __str, *(a1 + 352));
          v19 = sub_10026F640(&v51 + 8, __str);
          *(&v61 + 1) = sub_1009325CC(v19);
          LOBYTE(v62) = 1;
          if (a3 == 5)
          {
            LOWORD(v51) = 257;
          }

          else if (a3 == 2)
          {
            WORD1(v51) = 257;
          }

          sub_100004AA0(&v29, (a1 + 8));
          v20 = v29;
          if (*(&v29 + 1))
          {
            atomic_fetch_add_explicit((*(&v29 + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(*(&v20 + 1));
          }

          v29 = 0u;
          *v30 = 0u;
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          WORD1(v29) = 257;
          DWORD1(v29) = 15;
          BYTE8(v29) = 1;
          HIDWORD(v29) = 1;
          LOBYTE(v30[0]) = 1;
          sub_10026F6EC(a1, 1);
          sub_10026AEDC(a1, a2);
          v21 = v45;
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 1174405120;
          v22[2] = sub_100277F94;
          v22[3] = &unk_101E360A0;
          v22[4] = a1;
          v23 = v20;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&__p, *a2, *(a2 + 8));
          }

          else
          {
            __p = *a2;
            v25 = *(a2 + 16);
          }

          v27 = a3;
          v26 = v49;
          v28 = v22;
          (*(*v21 + 208))(v21, 8, &v29, buf, a1 + 24, &v28);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p);
          }

          if (*(&v23 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v23 + 1));
          }

          if (v34 == 1 && SHIBYTE(v33) < 0)
          {
            operator delete(*(&v32 + 1));
          }

          if (v32 == 1 && SHIBYTE(v31) < 0)
          {
            operator delete(v30[1]);
          }

          if (*(&v20 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v20 + 1));
          }

          if (v42 == 1 && SHIBYTE(v41) < 0)
          {
            operator delete(*(&v40 + 1));
          }

          if (v40 == 1 && SHIBYTE(v39) < 0)
          {
            operator delete(*(&v38 + 1));
          }

          if (BYTE8(v37) == 1 && SBYTE7(v37) < 0)
          {
            operator delete(v36);
          }

          *&v29 = &__str[1];
          sub_10016C644(&v29);
          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          if (v61 == 1)
          {
            if (BYTE8(v60) == 1 && SBYTE7(v60) < 0)
            {
              operator delete(v59);
            }

            if (BYTE8(v58) == 1 && SBYTE7(v58) < 0)
            {
              operator delete(v57);
            }

            if (v56 == 1 && SHIBYTE(v55) < 0)
            {
              operator delete(*(&v54 + 1));
            }

            __str[0].__r_.__value_.__r.__words[0] = &v53;
            sub_10016C644(__str);
            if (SHIBYTE(v52) < 0)
            {
              operator delete(*(&v51 + 1));
            }
          }

          if (buf[24] == 1 && buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_101766E7C();
          }

          v44 = 11;
          *buf = 0;
          v43 = 4;
          __str[0].__r_.__value_.__r.__words[0] = 0;
          LOWORD(v28) = 256;
          LODWORD(v29) = 70014;
          BYTE4(v29) = 1;
          sub_1002540BC(a1, a2, &v44, 1, buf, &v43, &__str[0].__r_.__value_.__l.__data_, &v28, &v29, &v49);
          sub_10001021C(&__str[0].__r_.__value_.__l.__data_);
          sub_100005978(buf);
        }

        if (v46)
        {
          sub_100004A34(v46);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
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
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768820();
  }
}

void sub_100277EA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  sub_100270CFC(&a25);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  sub_100270D58(&a37);
  sub_100270DF8(&a66);
  if (a58)
  {
    sub_100004A34(a58);
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100277F94(uint64_t a1, int **a2, int a3, int a4)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    v9 = *(a1 + 32);
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (!*(a1 + 40))
      {
LABEL_26:
        sub_100004A34(v11);
        return;
      }

      sub_10026F6EC(v9, 0);
      v12 = *a2;
      if (a3)
      {
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = *(v12 + 3);
        if (v13)
        {
          bzero(v29, 0x250uLL);
          sub_100283910(v29, v13);
          v14 = **a2;
          buf[0] = v9;
          if (*(a1 + 79) < 0)
          {
            sub_100005F2C(&buf[1], *(a1 + 56), *(a1 + 64));
          }

          else
          {
            *&buf[1] = *(a1 + 56);
            v34 = *(a1 + 72);
          }

          sub_100283910(&v35, v29);
          v37 = *(a1 + 88);
          v38 = v14;
          v30[0] = 0;
          v30[1] = 0;
          sub_100004AA0(v30, v9 + 1);
          operator new();
        }
      }

      else if (!v12)
      {
        goto LABEL_14;
      }

      sub_10026AF7C(v9, (a1 + 56), v12 + 1);
      v15 = **a2;
      if (v15 != 6000 && v15 != 6013)
      {
        v16 = sub_10025CD10(v9 + 41, (a1 + 56));
        if (v9[42] != v16)
        {
          *(v16 + 976) = v15;
          *(v16 + 984) = 1;
        }
      }

LABEL_14:
      v17 = v9[5];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = entitlements::asString();
        if (*a2)
        {
          v25 = "";
        }

        else
        {
          v25 = "No Response.";
        }

        v26 = sub_100A38E30(a4);
        if (*a2)
        {
          v27 = sub_100531604(**a2);
        }

        else
        {
          v27 = "";
        }

        LODWORD(buf[0]) = 136446978;
        *(buf + 4) = v24;
        WORD2(buf[1]) = 2080;
        *(&buf[1] + 6) = v25;
        HIWORD(buf[2]) = 2080;
        v34 = v26;
        v35 = 2080;
        v36 = v27;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "TA request [%{public}s] failed. %s EventCause: [%s], response status: [%s]", buf, 0x2Au);
      }

      if (a4 == 1)
      {
        v20 = sub_100932AF0(*(a1 + 88), 1, 1);
      }

      else
      {
        if (a4 != 3)
        {
          v22 = v9[5];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = entitlements::asString();
            LODWORD(buf[0]) = 136446210;
            *(buf + 4) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I No TA [%{public}s] response due to internal error", buf, 0xCu);
          }

          v20 = sub_100932AF0(*(a1 + 88), 0, 0);
          v21 = 0;
          v31[0] = 56;
          goto LABEL_25;
        }

        v18 = v9[5];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = entitlements::asString();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Invalid TA [%{public}s] response by carrier", buf, 0xCu);
        }

        v20 = sub_100932AF0(*(a1 + 88), 1, 0);
      }

      v31[0] = 52;
      v21 = 7;
LABEL_25:
      v28 = 11;
      buf[0] = 0;
      v29[0] = 0;
      v32[0] = v21;
      v32[1] = 1;
      LODWORD(v30[0]) = v20;
      BYTE4(v30[0]) = 1;
      sub_1002540BC(v9, a1 + 56, &v28, 1, buf, v31, v29, v32, v30, (a1 + 80));
      sub_10001021C(v29);
      sub_100005978(buf);
      goto LABEL_26;
    }
  }
}

void sub_100278444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100283CE0(va);
  sub_100004A34(v5);
  _Unwind_Resume(a1);
}

void sub_1002784C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (entitlements::isWebServiceRequest())
    {
      v11 = "post";
    }

    else
    {
      v11 = "";
    }

    v12 = entitlements::asString();
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    *buf = 136446722;
    *&buf[4] = v11;
    *&buf[12] = 2082;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    *&buf[24] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [resp][ta%{public}s] processing TransferAuthorization [%{public}s] response. source iccid : %s", buf, 0x20u);
  }

  v14 = sub_10025CD10((a1 + 328), a2);
  v39 = v14;
  if (*(a1 + 336) == v14)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    v15 = v14;
    if (*(a3 + 544) == 1)
    {
      if ((*(a3 + 543) & 0x8000000000000000) != 0)
      {
        if (*(a3 + 528))
        {
          goto LABEL_13;
        }
      }

      else if (*(a3 + 543))
      {
LABEL_13:
        v16 = (a3 + 520);
        memset(&v38, 0, sizeof(v38));
        sub_10026EB60(a1, a2, (a3 + 520), &v38);
        v37 = sub_10093103C(&v38);
        v17 = sub_100932AF0(a4, 1, 0);
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          isWebServiceRequest = entitlements::isWebServiceRequest();
          v20 = entitlements::asString();
          v21 = "post";
          if (!isWebServiceRequest)
          {
            v21 = "";
          }

          v22 = a3 + 520;
          if (*(a3 + 543) < 0)
          {
            v22 = v16->__r_.__value_.__r.__words[0];
          }

          if (*(a2 + 23) >= 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = *a2;
          }

          *buf = 136446978;
          *&buf[4] = v21;
          *&buf[12] = 2080;
          *&buf[14] = v20;
          *&buf[22] = 2082;
          *&buf[24] = v22;
          LOWORD(v46) = 2080;
          *(&v46 + 2) = v23;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Carrier error-code in TA%{public}s [%s] response: %{public}s for source iccid:%s", buf, 0x2Au);
        }

        v36 = 0;
        if ((*(a1 + 147) & 1) == 0 && *(a3 + 576) == 1)
        {
          if (*(a3 + 575) < 0)
          {
            sub_100005F2C(__src, *(a3 + 552), *(a3 + 560));
          }

          else
          {
            *__src = *(a3 + 552);
            v34 = *(a3 + 568);
          }

          if (SHIBYTE(v34) < 0)
          {
            sub_100005F2C(v41, __src[0], __src[1]);
          }

          else
          {
            *v41 = *__src;
            v42 = v34;
          }

          v40 = 0;
          if (SHIBYTE(v42) < 0)
          {
            sub_100005F2C(buf, v41[0], v41[1]);
          }

          else
          {
            *buf = *v41;
            *&buf[16] = v42;
          }

          v43 = 0;
          if (ctu::cf::convert_copy())
          {
            v26 = v40;
            v40 = v43;
            v44[0] = v26;
            sub_100005978(v44);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v27 = v40;
          v40 = 0;
          sub_100005978(&v40);
          if (SHIBYTE(v42) < 0)
          {
            operator delete(v41[0]);
          }

          *buf = v36;
          v36 = v27;
          v35 = 0;
          sub_100005978(buf);
          sub_100005978(&v35);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__src[0]);
          }
        }

        sub_1001696A4((v15 + 1032), &v38);
        sub_1001696A4((v15 + 1000), v16);
        LOBYTE(v43) = 11;
        *buf = 0;
        LOWORD(v44[0]) = 263;
        LODWORD(v41[0]) = v17;
        BYTE4(v41[0]) = 1;
        sub_1002540BC(a1, a2, &v43, 1, &v36, &v37, buf, v44, v41, &v39);
        sub_10001021C(buf);
        sub_100005978(&v36);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        return;
      }
    }

    if (sub_100276670(a1, a2, a3, a5))
    {
      v59 = 0u;
      v58 = 0u;
      if (a4 == 2)
      {
        v24 = 3;
      }

      else
      {
        v24 = 6;
      }

      v57 = 0uLL;
      v56 = 0uLL;
      v55 = 0uLL;
      v54 = 0uLL;
      v53 = 0uLL;
      v52 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      memset(buf, 0, sizeof(buf));
      sub_1001696A4(buf, (a3 + 488));
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__dst, *a2, *(a2 + 8));
      }

      else
      {
        *__dst = *a2;
        v32 = *(a2 + 16);
      }

      if (*(a3 + 480))
      {
        sub_100004AA0(v41, (a1 + 8));
        v25 = v41[1];
        if (v41[1])
        {
          atomic_fetch_add_explicit(v41[1] + 2, 1uLL, memory_order_relaxed);
          sub_100004A34(v25);
        }

        sub_100283910(&v28, a3);
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          __p[2] = *(a2 + 16);
        }

        __p[3] = v15;
        v30 = v24;
        v44[8] = 0;
        operator new();
      }

      sub_1000D1644();
    }

    if ((a4 & 0xFFFFFFFE) == 2)
    {
      sub_100278D24(a1, a2, a3);
    }

    else
    {
      sub_100278FA4(a1, a2, a3);
    }
  }
}

void sub_100278B98(_Unwind_Exception *a1)
{
  sub_100005978(&STACK[0x318]);
  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_100005978(&STACK[0x2E8]);
  if (SLOBYTE(STACK[0x30F]) < 0)
  {
    operator delete(STACK[0x2F8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100278CDC(uint64_t a1)
{
  if (*(a1 + 639) < 0)
  {
    operator delete(*(a1 + 616));
  }

  sub_100283CE0(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100278D24(uint64_t a1, const void **a2, uint64_t a3)
{
  v6 = sub_10025CD10((a1 + 328), a2);
  v26 = v6;
  if (*(a1 + 336) == v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    if (*(a3 + 360) != 1)
    {
      goto LABEL_33;
    }

    v7 = *(a3 + 287);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 272);
    }

    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = *(a3 + 311);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a3 + 296);
    }

    if (!v8)
    {
      goto LABEL_33;
    }

    v10 = *(a3 + 359);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a3 + 344);
    }

    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = *(a3 + 335);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 320);
    }

    if (v11)
    {
      v13 = v6;
      if (v9 < 0)
      {
        sub_100005F2C(&__dst, *(a3 + 288), *(a3 + 296));
        v12 = *(a3 + 335);
      }

      else
      {
        __dst = *(a3 + 288);
        v15 = *(a3 + 304);
      }

      if (v12 < 0)
      {
        sub_100005F2C(&v16, *(a3 + 312), *(a3 + 320));
      }

      else
      {
        v16 = *(a3 + 312);
        v17 = *(a3 + 328);
      }

      if (*(a3 + 359) < 0)
      {
        sub_100005F2C(&v18, *(a3 + 336), *(a3 + 344));
      }

      else
      {
        v18 = *(a3 + 336);
        v19 = *(a3 + 352);
      }

      sub_1000D1E08(v13 + 448, &__dst);
      sub_1000CFBA0(&__dst);
      sub_1002793A8(a1, a2, (a3 + 264));
    }

    else
    {
LABEL_33:
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017688C4();
      }

      v25 = 11;
      v24 = 52;
      v23 = 0;
      v22 = 263;
      v20 = 70070;
      v21 = 1;
      *&__dst = 0;
      sub_1002540BC(a1, a2, &v25, 1, &__dst, &v24, &v23, &v22, &v20, &v26);
      sub_10001021C(&v23);
      sub_100005978(&__dst);
    }
  }
}

void sub_100278F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100278FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025CD10((a1 + 328), a2);
  v34 = v6;
  if (*(a1 + 336) == v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    if (*(a3 + 448) == 1)
    {
      v7 = *(a3 + 415);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(a3 + 400);
      }

      if (v7)
      {
        v9 = *(a3 + 439);
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(a3 + 424);
        }

        if (v9)
        {
          v10 = v6;
          v11 = *(a3 + 391);
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(a3 + 376);
          }

          if (!v11)
          {
            goto LABEL_14;
          }

          if (sub_10092FC04((a3 + 368)))
          {
            v8 = *(a3 + 415);
LABEL_14:
            if (v8 < 0)
            {
              sub_100005F2C(&__dst, *(a3 + 392), *(a3 + 400));
            }

            else
            {
              __dst = *(a3 + 392);
              v25 = *(a3 + 408);
            }

            if (*(a3 + 439) < 0)
            {
              sub_100005F2C(&v26, *(a3 + 416), *(a3 + 424));
            }

            else
            {
              v26 = *(a3 + 416);
              v27 = *(a3 + 432);
            }

            sub_100279484(v10 + 528, &__dst);
            if (SHIBYTE(v27) < 0)
            {
              operator delete(v26);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(__dst);
            }

            if (*(v10 + 23) < 0)
            {
              sub_100005F2C(v22, *v10, *(v10 + 8));
            }

            else
            {
              v12 = *v10;
              v23 = *(v10 + 16);
              *v22 = v12;
            }

            if (*(v10 + 47) < 0)
            {
              sub_100005F2C(v20, *(v10 + 24), *(v10 + 32));
            }

            else
            {
              *v20 = *(v10 + 24);
              v21 = *(v10 + 40);
            }

            if (*(v10 + 71) < 0)
            {
              sub_100005F2C(v18, *(v10 + 48), *(v10 + 56));
            }

            else
            {
              *v18 = *(v10 + 48);
              v19 = *(v10 + 64);
            }

            if (*(v10 + 95) < 0)
            {
              sub_100005F2C(v16, *(v10 + 72), *(v10 + 80));
            }

            else
            {
              *v16 = *(v10 + 72);
              v17 = *(v10 + 88);
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(__p, *a2, *(a2 + 8));
            }

            else
            {
              *__p = *a2;
              v15 = *(a2 + 16);
            }

            v13 = sub_10026C478(a1, v22, v20, v18, v16, __p);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
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

            if (SHIBYTE(v23) < 0)
            {
              operator delete(v22[0]);
            }

            sub_100279544(a1, a2, v13, (a3 + 368));
            return;
          }
        }
      }
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017688F8();
    }

    v33 = 11;
    *&__dst = 0;
    v32 = 52;
    v31 = 0;
    v30 = 263;
    v28 = 70069;
    v29 = 1;
    sub_1002540BC(a1, a2, &v33, 1, &__dst, &v32, &v31, &v30, &v28, &v34);
    sub_10001021C(&v31);
    sub_100005978(&__dst);
  }
}

void sub_1002792F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002793A8(uint64_t a1, const void **a2, uint64_t *a3)
{
  v6 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v6)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    *(v6 + 1064) = 2;
    cf = 0;
    sub_10092FED8(a2, a3, &cf);
    v7 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    sub_100252C7C(a1, &v7);
    sub_10001021C(&v7);
    sub_10001021C(&cf);
  }
}

void sub_100279468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100279484(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v7 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v7;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_100279544(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v8)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    v9 = v8;
    cf = 0;
    sub_100930038(a2, a4, (v8 + 416), a3, &cf);
    v10 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    sub_100252C7C(a1, &v10);
    sub_10001021C(&v10);
    if (*(v9 + 1065) == 1)
    {
      sub_10025329C(a1, 0);
    }

    *(v9 + 1065) = 2;
    sub_10001021C(&cf);
  }
}

void sub_100279630(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_100279658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = entitlements::asString();
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 136446466;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [resp][tapost][%{public}s] source iccid : %s", buf, 0x16u);
  }

  v13 = sub_10025CD10((a1 + 328), a2);
  v31 = v13;
  if (*(a1 + 336) != v13)
  {
    if (*(a3 + 272))
    {
      if (*(a3 + 44) == 1)
      {
        v14 = v13;
        memset(&v30, 0, sizeof(v30));
        std::to_string(&v30, *(a3 + 40));
        memset(&v29, 0, sizeof(v29));
        sub_10026EB60(a1, a2, &v30.__r_.__value_.__l.__data_, &v29);
        v28 = sub_10093103C(&v29);
        v15 = sub_100932AF0(a4, 1, 0);
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = entitlements::asString();
          v18 = &v30;
          if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v18 = v30.__r_.__value_.__r.__words[0];
          }

          if (*(a2 + 23) >= 0)
          {
            v19 = a2;
          }

          else
          {
            v19 = *a2;
          }

          *buf = 136446722;
          *&buf[4] = v17;
          *&buf[12] = 2082;
          *&buf[14] = v18;
          *&buf[22] = 2080;
          v38 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E Carrier error-code in TA [%{public}s] response: %{public}s for source iccid:%s", buf, 0x20u);
        }

        v27 = 0;
        if ((*(a1 + 147) & 1) == 0 && *(a3 + 72) == 1)
        {
          if (*(a3 + 71) < 0)
          {
            sub_100005F2C(__dst, *(a3 + 48), *(a3 + 56));
          }

          else
          {
            *__dst = *(a3 + 48);
            v25 = *(a3 + 64);
          }

          if (SHIBYTE(v25) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v34 = v25;
          }

          v32 = 0;
          if (SHIBYTE(v34) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v34;
          }

          v35 = 0;
          if (ctu::cf::convert_copy())
          {
            v22 = v32;
            v32 = v35;
            v36 = v22;
            sub_100005978(&v36);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v23 = v32;
          v32 = 0;
          sub_100005978(&v32);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = v27;
          v26 = 0;
          v27 = v23;
          sub_100005978(buf);
          sub_100005978(&v26);
          if (SHIBYTE(v25) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        sub_1001696A4((v14 + 1032), &v29);
        sub_1001696A4((v14 + 1000), &v30);
        LOBYTE(v32) = 11;
        *buf = 0;
        __p[0] = 0;
        LOWORD(v35) = 263;
        LODWORD(v36) = v15;
        BYTE4(v36) = 1;
        sub_1002540BC(a1, a2, &v32, 1, buf, &v28, __p, &v35, &v36, &v31);
        sub_10001021C(__p);
        sub_100005978(buf);
        sub_100005978(&v27);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }
      }

      else if (a4 == 7)
      {
        sub_100279C84(a1, a2, a3);
      }

      else
      {
        sub_1002773C4(a1, a2);
      }

      return;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10176892C(a4, a5);
    }

    if (a5 == 1)
    {
      v20 = sub_100932AF0(a4, 1, 1);
    }

    else
    {
      if (a5 != 3)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101768A5C();
        }

        v20 = sub_100932AF0(a4, 0, 0);
        v21 = 0;
        LOBYTE(v36) = 56;
        goto LABEL_36;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017689D8();
      }

      v20 = sub_100932AF0(a4, 1, 0);
    }

    LOBYTE(v36) = 52;
    v21 = 7;
LABEL_36:
    LOBYTE(v35) = 11;
    *buf = 0;
    __p[0] = 0;
    v29.__r_.__value_.__s.__data_[0] = v21;
    v29.__r_.__value_.__s.__data_[1] = 1;
    LODWORD(v30.__r_.__value_.__l.__data_) = v20;
    v30.__r_.__value_.__s.__data_[4] = 1;
    sub_1002540BC(a1, a2, &v35, 1, buf, &v36, __p, &v29, &v30, &v31);
    sub_10001021C(__p);
    sub_100005978(buf);
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768334();
  }
}

void sub_100279BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void *a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_100005978(&a33);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100005978(&a18);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void sub_100279C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10025CD10((a1 + 328), a2);
  v34 = v6;
  if (*(a1 + 336) != v6)
  {
    if (*(a3 + 264))
    {
      v7 = v6;
      v8 = *(a3 + 256);
      if (v8 == 1)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      *(v6 + 1065) = v9;
      v10 = *(a1 + 40);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v8 == 1)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Valid OTP", buf, 2u);
        }

        *(v7 + 910) = 0;
        *buf = 0;
        sub_100930234(3, buf);
        v15 = *buf;
        if (*buf)
        {
          CFRetain(*buf);
        }

        sub_100252C7C(a1, &v15);
        sub_10001021C(&v15);
        sub_10025329C(a1, 1);
        sub_1002773C4(a1, a2);
LABEL_28:
        sub_10001021C(buf);
        return;
      }

      if (v11)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Invalid OTP", buf, 2u);
        v8 = *(a3 + 256);
      }

      if (v8 != 2)
      {
        *buf = 0;
        sub_100930234(4, buf);
        v16 = *buf;
        if (*buf)
        {
          CFRetain(*buf);
        }

        sub_100252C7C(a1, &v16);
        sub_10001021C(&v16);
        goto LABEL_28;
      }

      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I OTP retry not allowed", buf, 2u);
      }

      if (*(v7 + 23) < 0)
      {
        sub_100005F2C(__dst, *v7, *(v7 + 8));
      }

      else
      {
        v13 = *v7;
        v26 = *(v7 + 16);
        *__dst = v13;
      }

      if (*(v7 + 47) < 0)
      {
        sub_100005F2C(v23, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        *v23 = *(v7 + 24);
        v24 = *(v7 + 40);
      }

      if (*(v7 + 71) < 0)
      {
        sub_100005F2C(v21, *(v7 + 48), *(v7 + 56));
      }

      else
      {
        *v21 = *(v7 + 48);
        v22 = *(v7 + 64);
      }

      if (*(v7 + 95) < 0)
      {
        sub_100005F2C(v19, *(v7 + 72), *(v7 + 80));
      }

      else
      {
        *v19 = *(v7 + 72);
        v20 = *(v7 + 88);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v18 = *(a2 + 16);
      }

      if (sub_10026C478(a1, __dst, v23, v21, v19, __p))
      {
        v14 = 67;
      }

      else
      {
        v14 = 65;
      }

      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(__dst[0]);
      }

      v33 = v14;
      v31 = 11;
      *buf = 0;
      v30 = 0;
      v29 = 267;
      v27 = 70061;
      v28 = 1;
      sub_1002540BC(a1, a2, &v31, 1, buf, &v33, &v30, &v29, &v27, &v34);
    }

    else
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101768AE0();
      }

      v33 = 11;
      *buf = 0;
      v31 = 52;
      v30 = 0;
      v29 = 263;
      v27 = 70069;
      v28 = 1;
      sub_1002540BC(a1, a2, &v33, 1, buf, &v31, &v30, &v29, &v27, &v34);
    }

    sub_10001021C(&v30);
    sub_100005978(buf);
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768334();
  }
}

void sub_10027A0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027A180(uint64_t a1, uint64_t a2)
{
  v4 = sub_10025CD10((a1 + 328), a2);
  if (*(a1 + 336) == v4)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else
  {
    ++*(v4 + 700);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v6 = *(a2 + 16);
    }

    sub_100277840(a1, __p, 5);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_10027A238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027A254(uint64_t a1, const void **a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Declined";
    if (a3)
    {
      v7 = "Accepted";
    }

    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    *buf = 136446466;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Tc %{public}s by user for iccid: %s", buf, 0x16u);
  }

  v9 = sub_10025CD10((a1 + 328), a2);
  v35 = v9;
  if (*(a1 + 336) != v9)
  {
    v10 = v9;
    if (a3)
    {
      *(v9 + 1064) = 3;
      v11 = "agree";
      v12 = 472;
    }

    else
    {
      if (*(a1 + 144) == 1)
      {
        v13 = *(a1 + 72);
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = *(a1 + 64);
            if (v16)
            {
              v17 = *(v10 + 274);
              v18 = *(v10 + 282);
              if (*(a2 + 23) < 0)
              {
                v19 = *(v10 + 274);
                sub_100005F2C(&__dst, *a2, a2[1]);
                v17 = v19;
              }

              else
              {
                __dst = *a2;
                v34 = a2[2];
              }

              v20 = *(v10 + 584);
              v21 = *(v10 + 592);
              if (*(v10 + 695) < 0)
              {
                v26 = v18;
                v22 = v17;
                sub_100005F2C(&__p, *(v10 + 672), *(v10 + 680));
                v17 = v22;
                v18 = v26;
              }

              else
              {
                __p = *(v10 + 672);
                v32 = *(v10 + 688);
              }

              (*(*v16 + 24))(v16, v17, v18, &__dst, v20, v21, &__p, 3);
              if (SHIBYTE(v32) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v34) < 0)
              {
                operator delete(__dst);
              }
            }

            sub_100004A34(v15);
          }
        }
      }

      *(v10 + 1064) = 4;
      v11 = "disagree";
      v12 = 496;
    }

    memset(&v30, 0, sizeof(v30));
    v23 = v10 + v12;
    if (*(v23 + 23) < 0)
    {
      sub_100005F2C(&v30, *v23, *(v23 + 8));
    }

    else
    {
      v24 = *v23;
      v30.__r_.__value_.__r.__words[2] = *(v23 + 16);
      *&v30.__r_.__value_.__l.__data_ = v24;
    }

    memset(v47, 0, sizeof(v47));
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1001696A4(v47, v11);
    sub_1001696A4(v46, &v30);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v29, *a2, a2[1]);
    }

    else
    {
      *v29 = *a2;
      v29[2] = a2[2];
    }

    sub_100004AA0(&v36, (a1 + 8));
    v25 = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v27, *a2, a2[1]);
    }

    else
    {
      *v27 = *a2;
      v27[2] = a2[2];
    }

    v27[3] = v10;
    v28 = a3;
    v38 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768334();
  }
}

void sub_10027A790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, std::__shared_weak_count *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v71);
  _Unwind_Resume(a1);
}

void sub_10027A884(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I User entered OTP", buf, 2u);
  }

  v7 = sub_10025CD10((a1 + 328), a2);
  v35 = v7;
  if (*(a1 + 336) == v7)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101768334();
    }
  }

  else if (a3[1].__r_.__value_.__s.__data_[0])
  {
    v8 = v7;
    v9 = *(v7 + 704) + 1;
    *(v7 + 704) = v9;
    if (v9 < 0xB)
    {
      memset(v18, 0, sizeof(v18));
      memset(v17, 0, sizeof(v17));
      memset(buf, 0, sizeof(buf));
      sub_10012BF3C(v17, a3);
      sub_1001696A4(v18, v8 + 23);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v15, *a2, *(a2 + 8));
      }

      else
      {
        *v15 = *a2;
        v15[2] = *(a2 + 16);
      }

      sub_100004AA0(&v36, (a1 + 8));
      v13 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v14, *a2, *(a2 + 8));
      }

      else
      {
        *v14 = *a2;
        v14[2] = *(a2 + 16);
      }

      v14[3] = v8;
      v38 = 0;
      operator new();
    }

    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Max otp submissions reached.", buf, 2u);
    }

    if (*(v8 + 23) < 0)
    {
      sub_100005F2C(&__dst, *v8, v8[1]);
    }

    else
    {
      v11 = *v8;
      v28 = v8[2];
      __dst = v11;
    }

    if (*(v8 + 47) < 0)
    {
      sub_100005F2C(&v25, v8[3], v8[4]);
    }

    else
    {
      v25 = *(v8 + 3);
      v26 = v8[5];
    }

    if (*(v8 + 71) < 0)
    {
      sub_100005F2C(&v23, v8[6], v8[7]);
    }

    else
    {
      v23 = *(v8 + 3);
      v24 = v8[8];
    }

    if (*(v8 + 95) < 0)
    {
      sub_100005F2C(&v21, v8[9], v8[10]);
    }

    else
    {
      v21 = *(v8 + 9);
      v22 = v8[11];
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__p, *a2, *(a2 + 8));
    }

    else
    {
      __p = *a2;
      v20 = *(a2 + 16);
    }

    if (sub_10026C478(a1, &__dst, &v25, &v23, &v21, &__p))
    {
      v12 = 67;
    }

    else
    {
      v12 = 65;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v23);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst);
    }

    v34 = v12;
    v33 = 11;
    *&buf[0] = 0;
    v36 = 0;
    v32 = 267;
    v30 = 70061;
    v31 = 1;
    sub_1002540BC(a1, a2, &v33, 1, buf, &v34, &v36, &v32, &v30, &v35);
    sub_10001021C(&v36);
    sub_100005978(buf);
  }

  else
  {
    v34 = 11;
    *&buf[0] = 0;
    v33 = 66;
    v36 = 0;
    v32 = 260;
    v30 = 70098;
    v31 = 1;
    sub_1002540BC(a1, a2, &v34, 1, buf, &v33, &v36, &v32, &v30, &v35);
    sub_10001021C(&v36);
    sub_100005978(buf);
    *&buf[0] = 0;
    sub_100930234(5, buf);
    v29 = *&buf[0];
    if (*&buf[0])
    {
      CFRetain(*&buf[0]);
    }

    sub_100252C7C(a1, &v29);
    sub_10001021C(&v29);
    sub_10001021C(buf);
  }
}

void sub_10027AE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, uint64_t a61, char a62)
{
  v64 = v62[3];
  if (v64)
  {
    std::__shared_weak_count::__release_weak(v64);
  }

  operator delete(v62);
  sub_100260030(&a47);
  if (a60 < 0)
  {
    operator delete(__p);
  }

  sub_100283ED8(&a62);
  _Unwind_Resume(a1);
}

uint64_t *sub_10027AF64(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  *a1 = *a3;
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = a1[1];
    a1[2] = a2;
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        v8 = *a1;
        if (*a1)
        {
          v9 = *a1[2];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I assert bootstrap for transfer", v11, 2u);
          }

          (*(*v8 + 96))(v8, 1);
        }

        sub_100004A34(v7);
      }
    }
  }

  else
  {
    a1[2] = a2;
  }

  return a1;
}

void sub_10027B04C(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_10027B06C(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = *a1[2];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I de-assert bootstrap for transfer", v9, 2u);
        }

        (*(*v5 + 96))(v5, 0);
      }

      sub_100004A34(v4);
    }

    v7 = a1[1];
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  return a1;
}

uint64_t sub_10027B148(uint64_t a1)
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

uint64_t sub_10027B1C8(uint64_t a1)
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
  }

  return a1;
}

void sub_10027B228(void ***a1)
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
        v4 = sub_10027C3B4(v4 - 1072);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10027B2AC(void ***a1)
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
        v4 = sub_10027B330(v4 - 200);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10027B330(uint64_t a1)
{
  if (*(a1 + 192) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027B3D0(void ***a1)
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
        v4 -= 56;
        sub_1001E0640(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10027B454(void ***a1)
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
        v4 = sub_10027DF50(v4 - 672);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10027B4D8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10027B4D8(a1, *a2);
    sub_10027B4D8(a1, *(a2 + 1));
    if (a2[120] == 1 && a2[119] < 0)
    {
      operator delete(*(a2 + 12));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10027B568(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x33333333333334)
  {
    sub_10027B5B4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10027B5B4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x33333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10027B60C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10027B690(a4, v6);
      v6 += 80;
      a4 += 1280;
      v7 -= 1280;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_10027B66C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 1280;
    do
    {
      v4 = sub_1002813D0(v4) - 1280;
      v2 += 1280;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027B690(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  sub_100DFEE00((a1 + 144), a2 + 9);
  if (*(a2 + 215) < 0)
  {
    sub_100005F2C((a1 + 192), *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v10 = a2[12];
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 192) = v10;
  }

  if (*(a2 + 239) < 0)
  {
    sub_100005F2C((a1 + 216), *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v11 = *(a2 + 216);
    *(a1 + 232) = *(a2 + 29);
    *(a1 + 216) = v11;
  }

  if (*(a2 + 263) < 0)
  {
    sub_100005F2C((a1 + 240), *(a2 + 30), *(a2 + 31));
  }

  else
  {
    v12 = a2[15];
    *(a1 + 256) = *(a2 + 32);
    *(a1 + 240) = v12;
  }

  if (*(a2 + 287) < 0)
  {
    sub_100005F2C((a1 + 264), *(a2 + 33), *(a2 + 34));
  }

  else
  {
    v13 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 35);
    *(a1 + 264) = v13;
  }

  if (*(a2 + 311) < 0)
  {
    sub_100005F2C((a1 + 288), *(a2 + 36), *(a2 + 37));
  }

  else
  {
    v14 = a2[18];
    *(a1 + 304) = *(a2 + 38);
    *(a1 + 288) = v14;
  }

  if (*(a2 + 335) < 0)
  {
    sub_100005F2C((a1 + 312), *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v15 = *(a2 + 312);
    *(a1 + 328) = *(a2 + 41);
    *(a1 + 312) = v15;
  }

  if (*(a2 + 359) < 0)
  {
    sub_100005F2C((a1 + 336), *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v16 = a2[21];
    *(a1 + 352) = *(a2 + 44);
    *(a1 + 336) = v16;
  }

  if (*(a2 + 383) < 0)
  {
    sub_100005F2C((a1 + 360), *(a2 + 45), *(a2 + 46));
  }

  else
  {
    v17 = *(a2 + 360);
    *(a1 + 376) = *(a2 + 47);
    *(a1 + 360) = v17;
  }

  if (*(a2 + 407) < 0)
  {
    sub_100005F2C((a1 + 384), *(a2 + 48), *(a2 + 49));
  }

  else
  {
    v18 = a2[24];
    *(a1 + 400) = *(a2 + 50);
    *(a1 + 384) = v18;
  }

  if (*(a2 + 431) < 0)
  {
    sub_100005F2C((a1 + 408), *(a2 + 51), *(a2 + 52));
  }

  else
  {
    v19 = *(a2 + 408);
    *(a1 + 424) = *(a2 + 53);
    *(a1 + 408) = v19;
  }

  if (*(a2 + 455) < 0)
  {
    sub_100005F2C((a1 + 432), *(a2 + 54), *(a2 + 55));
  }

  else
  {
    v20 = a2[27];
    *(a1 + 448) = *(a2 + 56);
    *(a1 + 432) = v20;
  }

  if (*(a2 + 479) < 0)
  {
    sub_100005F2C((a1 + 456), *(a2 + 57), *(a2 + 58));
  }

  else
  {
    v21 = *(a2 + 456);
    *(a1 + 472) = *(a2 + 59);
    *(a1 + 456) = v21;
  }

  if (*(a2 + 503) < 0)
  {
    sub_100005F2C((a1 + 480), *(a2 + 60), *(a2 + 61));
  }

  else
  {
    v22 = a2[30];
    *(a1 + 496) = *(a2 + 62);
    *(a1 + 480) = v22;
  }

  if (*(a2 + 527) < 0)
  {
    sub_100005F2C((a1 + 504), *(a2 + 63), *(a2 + 64));
  }

  else
  {
    v23 = *(a2 + 504);
    *(a1 + 520) = *(a2 + 65);
    *(a1 + 504) = v23;
  }

  sub_10027BEC4((a1 + 528), (a2 + 33));
  sub_100285238((a1 + 688), (a2 + 43));
  if (*(a2 + 879) < 0)
  {
    sub_100005F2C((a1 + 856), *(a2 + 107), *(a2 + 108));
  }

  else
  {
    v24 = *(a2 + 856);
    *(a1 + 872) = *(a2 + 109);
    *(a1 + 856) = v24;
  }

  sub_10006F264(a1 + 880, a2 + 55);
  v25 = a2[57];
  *(a1 + 928) = *(a2 + 464);
  *(a1 + 912) = v25;
  if (*(a2 + 959) < 0)
  {
    sub_100005F2C((a1 + 936), *(a2 + 117), *(a2 + 118));
  }

  else
  {
    v26 = *(a2 + 936);
    *(a1 + 952) = *(a2 + 119);
    *(a1 + 936) = v26;
  }

  if (*(a2 + 983) < 0)
  {
    sub_100005F2C((a1 + 960), *(a2 + 120), *(a2 + 121));
  }

  else
  {
    v27 = a2[60];
    *(a1 + 976) = *(a2 + 122);
    *(a1 + 960) = v27;
  }

  *(a1 + 984) = *(a2 + 984);
  sub_10027BF2C((a1 + 992), a2 + 62);
  v28 = a2[70];
  v29 = a2[71];
  *(a1 + 1152) = *(a2 + 144);
  *(a1 + 1136) = v29;
  *(a1 + 1120) = v28;
  *(a1 + 1160) = *(a2 + 145);
  v30 = *(a2 + 146);
  *(a1 + 1168) = v30;
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1176) = *(a2 + 147);
  v31 = *(a2 + 148);
  *(a1 + 1184) = v31;
  if (v31)
  {
    atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1192) = *(a2 + 149);
  v32 = *(a2 + 150);
  *(a1 + 1200) = v32;
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1208) = *(a2 + 151);
  v33 = *(a2 + 152);
  *(a1 + 1216) = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  v34 = *(a2 + 612);
  *(a1 + 1226) = *(a2 + 1226);
  *(a1 + 1224) = v34;
  *(a1 + 1232) = *(a2 + 154);
  v35 = *(a2 + 155);
  *(a1 + 1240) = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10009CF40(a1 + 1248, (a2 + 78));
  return a1;
}

void sub_10027BBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  if (*(v12 + 959) < 0)
  {
    operator delete(*v13);
  }

  if (*(v12 + 904) == 1 && *(v12 + 903) < 0)
  {
    operator delete(*v18);
  }

  if (*(v12 + 879) < 0)
  {
    operator delete(*v17);
  }

  sub_100276FF0(v12 + 688);
  sub_100274E2C(v12 + 528);
  if (*(v12 + 527) < 0)
  {
    operator delete(*v16);
  }

  if (*(v12 + 503) < 0)
  {
    operator delete(*(v12 + 480));
  }

  if (*(v12 + 479) < 0)
  {
    operator delete(*v15);
  }

  if (*(v12 + 455) < 0)
  {
    operator delete(*(v12 + 432));
  }

  if (*(v12 + 431) < 0)
  {
    operator delete(*v14);
  }

  if (*(v12 + 407) < 0)
  {
    operator delete(*(v12 + 384));
  }

  if (*(v12 + 383) < 0)
  {
    operator delete(*a10);
  }

  if (*(v12 + 359) < 0)
  {
    operator delete(*(v12 + 336));
  }

  if (*(v12 + 335) < 0)
  {
    operator delete(*a11);
  }

  if (*(v12 + 311) < 0)
  {
    operator delete(*(v12 + 288));
  }

  if (*(v12 + 287) < 0)
  {
    operator delete(*a12);
  }

  if (*(v12 + 263) < 0)
  {
    operator delete(*(v12 + 240));
  }

  if (*(v12 + 239) < 0)
  {
    operator delete(*(v12 + 216));
  }

  if (*(v12 + 215) < 0)
  {
    operator delete(*(v12 + 192));
  }

  sub_1000D6F38(v12 + 144);
  if (*(v12 + 143) < 0)
  {
    operator delete(*(v12 + 120));
  }

  if (*(v12 + 119) < 0)
  {
    operator delete(*(v12 + 96));
  }

  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
  }

  if (*(v12 + 71) < 0)
  {
    operator delete(*(v12 + 48));
  }

  if (*(v12 + 47) < 0)
  {
    operator delete(*(v12 + 24));
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_10027BEC4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[152] = 0;
  if (*(a2 + 152) == 1)
  {
    sub_100282340(a1, a2);
    a1[152] = 1;
  }

  return a1;
}

void sub_10027BF0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 152) == 1)
  {
    sub_10026BE9C(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10027BF2C(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[120] = 0;
  if (*(a2 + 120) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    v5 = *(a2 + 24);
    *(__dst + 40) = *(a2 + 40);
    *(__dst + 24) = v5;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(__dst + 104) = *(a2 + 104);
    *(__dst + 88) = v8;
    *(__dst + 72) = v7;
    *(__dst + 56) = v6;
    __dst[120] = 1;
  }

  return __dst;
}

void sub_10027BFC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 120) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10027BFE8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_10027DF50(v3 - 672);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char *sub_10027C048(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10027D7F4(__dst, v6);
      v6 += 42;
      __dst += 672;
      v7 -= 672;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10027C0A8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 672;
    do
    {
      v4 = sub_10027DF50(v4) - 672;
      v2 += 672;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027C0CC(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  std::string::operator=((a1 + 168), (a2 + 168));
  std::string::operator=((a1 + 192), (a2 + 192));
  std::string::operator=((a1 + 216), (a2 + 216));
  std::string::operator=((a1 + 240), (a2 + 240));
  std::string::operator=((a1 + 264), (a2 + 264));
  v4 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v4;
  std::string::operator=((a1 + 312), (a2 + 312));
  std::string::operator=((a1 + 336), (a2 + 336));
  std::string::operator=((a1 + 360), (a2 + 360));
  std::string::operator=((a1 + 384), (a2 + 384));
  std::string::operator=((a1 + 408), (a2 + 408));
  std::string::operator=((a1 + 432), (a2 + 432));
  std::string::operator=((a1 + 456), (a2 + 456));
  std::string::operator=((a1 + 480), (a2 + 480));
  std::string::operator=((a1 + 504), (a2 + 504));
  std::string::operator=((a1 + 528), (a2 + 528));
  std::string::operator=((a1 + 552), (a2 + 552));
  std::string::operator=((a1 + 576), (a2 + 576));
  std::string::operator=((a1 + 600), (a2 + 600));
  std::string::operator=((a1 + 624), (a2 + 624));
  v5 = *(a2 + 664);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 664) = v5;
  return a1;
}

void sub_10027C24C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x61861861861862)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10027C2A8(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_1002813D0(v3 - 1280);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10027C308(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (*(a1 + 24))
    {

      sub_100173768(a1, a2);
    }
  }

  else if (*(a1 + 24))
  {
    sub_100009970(a1, *(a1 + 8));
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = *a2;
    v3 = (a2 + 8);
    v4 = *(a2 + 8);
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = *(a2 + 16);
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      *(a2 + 16) = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }
}

uint64_t sub_10027C3B4(uint64_t a1)
{
  if (*(a1 + 1056) == 1 && *(a1 + 1055) < 0)
  {
    operator delete(*(a1 + 1032));
  }

  if (*(a1 + 1024) == 1 && *(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 895) < 0)
  {
    operator delete(*(a1 + 872));
  }

  if (*(a1 + 856) == 1 && *(a1 + 855) < 0)
  {
    operator delete(*(a1 + 832));
  }

  if (*(a1 + 824) == 1 && *(a1 + 823) < 0)
  {
    operator delete(*(a1 + 800));
  }

  if (*(a1 + 792) == 1 && *(a1 + 791) < 0)
  {
    operator delete(*(a1 + 768));
  }

  v3 = (a1 + 744);
  sub_10016C644(&v3);
  v3 = (a1 + 720);
  sub_1000087B4(&v3);
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 576) == 1)
  {
    if (*(a1 + 575) < 0)
    {
      operator delete(*(a1 + 552));
    }

    if (*(a1 + 551) < 0)
    {
      operator delete(*(a1 + 528));
    }
  }

  if (*(a1 + 520) == 1)
  {
    if (*(a1 + 519) < 0)
    {
      operator delete(*(a1 + 496));
    }

    if (*(a1 + 495) < 0)
    {
      operator delete(*(a1 + 472));
    }

    if (*(a1 + 471) < 0)
    {
      operator delete(*(a1 + 448));
    }
  }

  if (*(a1 + 439) < 0)
  {
    operator delete(*(a1 + 416));
  }

  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
  }

  if (*(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10027C664(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 5 > v3)
  {
    v3 = v6 >> 5;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFC0)
  {
    v7 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_10027C770(a1, v7);
  }

  v14 = 0;
  v15 = v2 << 6;
  sub_1006E12FC(v2 << 6, a2);
  v16 = ((v2 << 6) + 64);
  v8 = *(a1 + 8);
  v9 = (v2 << 6) + *a1 - v8;
  sub_10027C7B8(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10027C858(&v14);
  return v13;
}

void sub_10027C75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027C858(va);
  _Unwind_Resume(a1);
}

void sub_10027C770(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_10027C7B8(uint64_t a1, void (***a2)(void), void (***a3)(void), uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_1006E1404(a4, v7);
      v7 += 8;
      a4 = v8 + 64;
    }

    while (v7 != a3);
    if (v6 != a3)
    {
      v9 = v6;
      v10 = v6;
      do
      {
        v11 = *v10;
        v10 += 8;
        (*v11)(v6);
        v9 += 8;
        v6 = v10;
      }

      while (v10 != a3);
    }
  }
}

uint64_t sub_10027C858(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 64);
    *(a1 + 16) = i - 64;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10027C8C4(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_10027CA44(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *&v19 = 72 * v2 + 72;
  v11 = a1[1];
  v12 = 72 * v2 + *a1 - v11;
  sub_10027CAA0(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10027CC90(&v17);
  return v16;
}

void sub_10027CA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027CC90(va);
  _Unwind_Resume(a1);
}

void sub_10027CA44(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10027CAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v7 += 72;
      a4 += 72;
    }

    while (v7 != a3);
    v15 = a4;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      sub_10027CB9C(a1, v5);
      v5 += 72;
    }
  }

  return sub_10027CC04(v12);
}

void sub_10027CB9C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10027CC04(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10027CC3C(a1);
  }

  return a1;
}

void sub_10027CC3C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 72;
      sub_10027CB9C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_10027CC90(uint64_t a1)
{
  sub_10027CCC8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027CCC8(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    sub_10027CB9C(v5, v4 - 72);
  }
}

std::string *sub_10027CD10(uint64_t *a1, uint64_t a2, std::string *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 3)) >= a5)
      {
        v18 = 3 * a5;
        sub_10027CEF0(a1, a2, a1[1], a2 + 72 * a5);
        v17 = &a3[v18];
      }

      else
      {
        a1[1] = sub_10027D194(a1, (a3 + v16), a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        sub_10027CEF0(a1, v5, v10, &v5[3 * a5]);
        v17 = (a3 + v16);
      }

      sub_10027D3C8(&v20, a3, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 3);
    if (v12 > 0x38E38E38E38E38ELL)
    {
      sub_1000CE3D4();
    }

    v13 = a2 - v11;
    v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x1C71C71C71C71C7)
    {
      v15 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v15 = v12;
    }

    v24 = a1;
    if (v15)
    {
      sub_10027CA44(a1, v15);
    }

    v20 = 0;
    v21 = 8 * (v13 >> 3);
    v22 = v21;
    v23 = 0;
    sub_10027CF98(&v20, a3, a5);
    v5 = sub_10027D0D8(a1, &v20, v5);
    sub_10027CC90(&v20);
  }

  return v5;
}

uint64_t sub_10027CEF0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      v10 = *v9;
      *(v8 + 16) = *(v9 + 16);
      *v8 = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = *(v9 + 24);
      *(v8 + 40) = *(v9 + 40);
      *(v8 + 24) = v11;
      *(v9 + 32) = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0;
      v12 = *(v9 + 48);
      *(v8 + 64) = *(v9 + 64);
      *(v8 + 48) = v12;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      *(v9 + 48) = 0;
      v9 += 72;
      v8 += 72;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_10027D2D0(&v14, a2, v7, v6);
}

void *sub_10027CF98(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = 0;
    v7 = v4 + 72 * a3;
    v8 = 72 * a3;
    do
    {
      result = (v4 + v6);
      v9 = (a2 + v6);
      if (*(a2 + v6 + 23) < 0)
      {
        result = sub_100005F2C(result, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        result[2] = *(v9 + 2);
        *result = v10;
      }

      v11 = v4 + v6;
      v12 = a2 + v6;
      if (*(a2 + v6 + 47) < 0)
      {
        result = sub_100005F2C((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v14 = v4 + v6;
      v15 = a2 + v6;
      if (*(a2 + v6 + 71) < 0)
      {
        result = sub_100005F2C((v14 + 48), *(v15 + 48), *(v15 + 56));
      }

      else
      {
        v16 = *(v15 + 48);
        *(v14 + 64) = *(v15 + 64);
        *(v14 + 48) = v16;
      }

      v6 += 72;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = result[2];
  }

  v3[2] = v7;
  return result;
}

void sub_10027D08C(_Unwind_Exception *exception_object)
{
  if (*(v2 + v3 + 23) < 0)
  {
    operator delete(*(v2 + v3));
  }

  *(v1 + 16) = v2 + v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_10027D0D8(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  sub_10027CAA0(a1, a3, a1[1], a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += a1[1] - a3;
  a1[1] = a3;
  v9 = v8 + v7 - a3;
  sub_10027CAA0(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

char *sub_10027D194(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
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
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_100005F2C(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      if (*(v6 + 71) < 0)
      {
        sub_100005F2C(v4 + 48, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v9 = v6[3];
        *(v4 + 8) = *(v6 + 8);
        *(v4 + 3) = v9;
      }

      v6 = (v6 + 72);
      v4 = v14 + 72;
      v14 += 72;
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10027CC04(v11);
  return v4;
}

void sub_10027D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_10027CC04(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10027D2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = (a4 - 72);
      if (*(a4 - 49) < 0)
      {
        operator delete(*v8);
      }

      v9 = v7 - 72;
      v10 = *(v7 - 72);
      *(a4 - 56) = *(v7 - 56);
      *v8 = v10;
      *(v7 - 49) = 0;
      *(v7 - 72) = 0;
      v11 = (a4 - 48);
      if (*(a4 - 25) < 0)
      {
        operator delete(*v11);
      }

      v12 = *(v7 - 48);
      *(a4 - 32) = *(v7 - 32);
      *v11 = v12;
      *(v7 - 25) = 0;
      *(v7 - 48) = 0;
      v13 = (a4 - 24);
      if (*(a4 - 1) < 0)
      {
        operator delete(*v13);
      }

      v14 = *(v7 - 24);
      *(a4 - 8) = *(v7 - 8);
      *v13 = v14;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      a4 -= 72;
      v7 -= 72;
    }

    while (v9 != a2);
  }

  return a3;
}

std::string *sub_10027D3C8(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    this += 3;
    v5 += 3;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_10027D444(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    sub_10027D5C0(a1, v6);
  }

  v7 = 56 * v2;
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
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v11;
  *&v20 = v10 + 56;
  v12 = *(a1 + 8);
  v13 = v9 + *a1 - v12;
  sub_10027D61C(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_10027D760(&v18);
  return v17;
}

void sub_10027D5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027D760(va);
  _Unwind_Resume(a1);
}

void sub_10027D5C0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10027D61C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      v6 = (v6 + 56);
      a4 += 56;
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

      v5 = (v5 + 56);
    }
  }

  return sub_10027D6E0(v10);
}

uint64_t sub_10027D6E0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10027D718(a1);
  }

  return a1;
}

void sub_10027D718(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 33);
    v1 -= 7;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_10027D760(uint64_t a1)
{
  sub_10027D798(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027D798(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 7;
      *(a1 + 16) = v2 - 7;
      if (*(v2 - 33) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

char *sub_10027D7F4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    sub_100005F2C(__dst + 192, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = a2[12];
    *(__dst + 26) = *(a2 + 26);
    *(__dst + 12) = v12;
  }

  if (*(a2 + 239) < 0)
  {
    sub_100005F2C(__dst + 216, *(a2 + 27), *(a2 + 28));
  }

  else
  {
    v13 = *(a2 + 216);
    *(__dst + 29) = *(a2 + 29);
    *(__dst + 216) = v13;
  }

  if (*(a2 + 263) < 0)
  {
    sub_100005F2C(__dst + 240, *(a2 + 30), *(a2 + 31));
  }

  else
  {
    v14 = a2[15];
    *(__dst + 32) = *(a2 + 32);
    *(__dst + 15) = v14;
  }

  if (*(a2 + 287) < 0)
  {
    sub_100005F2C(__dst + 264, *(a2 + 33), *(a2 + 34));
  }

  else
  {
    v15 = *(a2 + 264);
    *(__dst + 35) = *(a2 + 35);
    *(__dst + 264) = v15;
  }

  v16 = a2[18];
  *(__dst + 38) = *(a2 + 38);
  *(__dst + 18) = v16;
  if (*(a2 + 335) < 0)
  {
    sub_100005F2C(__dst + 312, *(a2 + 39), *(a2 + 40));
  }

  else
  {
    v17 = *(a2 + 312);
    *(__dst + 41) = *(a2 + 41);
    *(__dst + 312) = v17;
  }

  if (*(a2 + 359) < 0)
  {
    sub_100005F2C(__dst + 336, *(a2 + 42), *(a2 + 43));
  }

  else
  {
    v18 = a2[21];
    *(__dst + 44) = *(a2 + 44);
    *(__dst + 21) = v18;
  }

  if (*(a2 + 383) < 0)
  {
    sub_100005F2C(__dst + 360, *(a2 + 45), *(a2 + 46));
  }

  else
  {
    v19 = *(a2 + 360);
    *(__dst + 47) = *(a2 + 47);
    *(__dst + 360) = v19;
  }

  if (*(a2 + 407) < 0)
  {
    sub_100005F2C(__dst + 384, *(a2 + 48), *(a2 + 49));
  }

  else
  {
    v20 = a2[24];
    *(__dst + 50) = *(a2 + 50);
    *(__dst + 24) = v20;
  }

  if (*(a2 + 431) < 0)
  {
    sub_100005F2C(__dst + 408, *(a2 + 51), *(a2 + 52));
  }

  else
  {
    v21 = *(a2 + 408);
    *(__dst + 53) = *(a2 + 53);
    *(__dst + 408) = v21;
  }

  if (*(a2 + 455) < 0)
  {
    sub_100005F2C(__dst + 432, *(a2 + 54), *(a2 + 55));
  }

  else
  {
    v22 = a2[27];
    *(__dst + 56) = *(a2 + 56);
    *(__dst + 27) = v22;
  }

  if (*(a2 + 479) < 0)
  {
    sub_100005F2C(__dst + 456, *(a2 + 57), *(a2 + 58));
  }

  else
  {
    v23 = *(a2 + 456);
    *(__dst + 59) = *(a2 + 59);
    *(__dst + 456) = v23;
  }

  if (*(a2 + 503) < 0)
  {
    sub_100005F2C(__dst + 480, *(a2 + 60), *(a2 + 61));
  }

  else
  {
    v24 = a2[30];
    *(__dst + 62) = *(a2 + 62);
    *(__dst + 30) = v24;
  }

  if (*(a2 + 527) < 0)
  {
    sub_100005F2C(__dst + 504, *(a2 + 63), *(a2 + 64));
  }

  else
  {
    v25 = *(a2 + 504);
    *(__dst + 65) = *(a2 + 65);
    *(__dst + 504) = v25;
  }

  if (*(a2 + 551) < 0)
  {
    sub_100005F2C(__dst + 528, *(a2 + 66), *(a2 + 67));
  }

  else
  {
    v26 = a2[33];
    *(__dst + 68) = *(a2 + 68);
    *(__dst + 33) = v26;
  }

  if (*(a2 + 575) < 0)
  {
    sub_100005F2C(__dst + 552, *(a2 + 69), *(a2 + 70));
  }

  else
  {
    v27 = *(a2 + 552);
    *(__dst + 71) = *(a2 + 71);
    *(__dst + 552) = v27;
  }

  if (*(a2 + 599) < 0)
  {
    sub_100005F2C(__dst + 576, *(a2 + 72), *(a2 + 73));
  }

  else
  {
    v28 = a2[36];
    *(__dst + 74) = *(a2 + 74);
    *(__dst + 36) = v28;
  }

  if (*(a2 + 623) < 0)
  {
    sub_100005F2C(__dst + 600, *(a2 + 75), *(a2 + 76));
  }

  else
  {
    v29 = *(a2 + 600);
    *(__dst + 77) = *(a2 + 77);
    *(__dst + 600) = v29;
  }

  v30 = __dst + 624;
  if (*(a2 + 647) < 0)
  {
    sub_100005F2C(v30, *(a2 + 78), *(a2 + 79));
  }

  else
  {
    v31 = a2[39];
    *(__dst + 80) = *(a2 + 80);
    *v30 = v31;
  }

  v32 = *(a2 + 648);
  __dst[664] = *(a2 + 664);
  *(__dst + 648) = v32;
  return __dst;
}

void sub_10027DCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10)
{
  if (*(v10 + 623) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 599) < 0)
  {
    operator delete(*v11);
  }

  if (*(v10 + 575) < 0)
  {
    operator delete(*v18);
  }

  if (*(v10 + 551) < 0)
  {
    operator delete(*v17);
  }

  if (*(v10 + 527) < 0)
  {
    operator delete(*v16);
  }

  if (*(v10 + 503) < 0)
  {
    operator delete(*(v10 + 480));
  }

  if (*(v10 + 479) < 0)
  {
    operator delete(*v15);
  }

  if (*(v10 + 455) < 0)
  {
    operator delete(*(v10 + 432));
  }

  if (*(v10 + 431) < 0)
  {
    operator delete(*v14);
  }

  if (*(v10 + 407) < 0)
  {
    operator delete(*(v10 + 384));
  }

  if (*(v10 + 383) < 0)
  {
    operator delete(*v13);
  }

  if (*(v10 + 359) < 0)
  {
    operator delete(*(v10 + 336));
  }

  if (*(v10 + 335) < 0)
  {
    operator delete(*a9);
  }

  if (*(v10 + 287) < 0)
  {
    operator delete(*a10);
  }

  if (*(v10 + 263) < 0)
  {
    operator delete(*(v10 + 240));
  }

  if (*(v10 + 239) < 0)
  {
    operator delete(*(v10 + 216));
  }

  if (*(v10 + 215) < 0)
  {
    operator delete(*(v10 + 192));
  }

  if (*(v10 + 191) < 0)
  {
    operator delete(*(v10 + 168));
  }

  if (*(v10 + 167) < 0)
  {
    operator delete(*(v10 + 144));
  }

  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  if (*(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  if (*(v10 + 71) < 0)
  {
    operator delete(*(v10 + 48));
  }

  if (*(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027DF50(uint64_t a1)
{
  if (*(a1 + 647) < 0)
  {
    operator delete(*(a1 + 624));
  }

  if (*(a1 + 623) < 0)
  {
    operator delete(*(a1 + 600));
  }

  if (*(a1 + 599) < 0)
  {
    operator delete(*(a1 + 576));
  }

  if (*(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  if (*(a1 + 551) < 0)
  {
    operator delete(*(a1 + 528));
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10027E114(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10027E168(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10027E168(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10027CB9C(a1, i))
  {
    i -= 72;
  }

  *(a1 + 8) = a2;
}

void sub_10027E1BC(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 64;
      v7 = v4 - 64;
      v8 = v4 - 64;
      do
      {
        v9 = *v8;
        v8 -= 64;
        (*v9)(v7);
        v6 -= 64;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10027E27C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10027E2D0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10027E2D0(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 33);
    v3 -= 7;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_10027E320(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10027E374(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10027E374(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 72;
    do
    {
      if (*(v4 + 71) < 0)
      {
        operator delete(*(v4 + 48));
      }

      if (*(v4 + 47) < 0)
      {
        operator delete(*(v4 + 24));
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 24));
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 48));
      }

      if (*(v4 - 49) < 0)
      {
        operator delete(*(v4 - 72));
      }

      v5 = v4 - 72;
      v4 -= 144;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_10027E420(uint64_t a1, uint64_t a2)
{
  v4 = sub_10016E9C0(a1, a2);
  sub_10027E51C((v4 + 32), (a2 + 32));
  if (*(a2 + 191) < 0)
  {
    sub_100005F2C((a1 + 168), *(a2 + 168), *(a2 + 176));
  }

  else
  {
    v5 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v5;
  }

  v6 = *(a2 + 192);
  *(a1 + 200) = 0;
  *(a1 + 192) = v6;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_10027E628(a1 + 200, *(a2 + 200), *(a2 + 208), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 208) - *(a2 + 200)) >> 3));
  v7 = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 224) = v7;
  return a1;
}

void sub_10027E4C8(_Unwind_Exception *a1)
{
  sub_10027E6B0(v1 + 32);
  if (*v1 == 1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    *v1 = 0;
  }

  _Unwind_Resume(a1);
}

char *sub_10027E51C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10016E9C0((__dst + 24), a2 + 24);
  sub_10016E9C0((__dst + 56), a2 + 56);
  __dst[88] = *(a2 + 88);
  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v5 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v5;
  }

  *(__dst + 120) = *(a2 + 120);
  return __dst;
}

void sub_10027E5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    *(v1 + 56) = 0;
  }

  if (*(v1 + 24) == 1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    *(v1 + 24) = 0;
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027E628(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100169F28(result, a4);
  }

  return result;
}

void sub_10027E690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100112048(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10027E6B0(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 56) = 0;
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10027E734(uint64_t a1)
{
  v3 = (a1 + 200);
  sub_100112048(&v3);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 88) = 0;
  }

  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    *(a1 + 56) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_10027E800(uint64_t a1)
{
  v3 = (a1 + 368);
  sub_100111D64(&v3);
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  return sub_10027E734(a1);
}

uint64_t sub_10027E8B4(uint64_t a1, uint64_t a2)
{
  sub_10027E938(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10027E938(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

char *sub_10027E9BC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C(__dst + 40, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(__dst + 7) = *(a2 + 7);
    *(__dst + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(__dst + 10) = *(a2 + 10);
    *(__dst + 4) = v6;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C(__dst + 88, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v7 = *(a2 + 88);
    *(__dst + 13) = *(a2 + 13);
    *(__dst + 88) = v7;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C(__dst + 112, *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v8 = a2[7];
    *(__dst + 16) = *(a2 + 16);
    *(__dst + 7) = v8;
  }

  if (*(a2 + 159) < 0)
  {
    sub_100005F2C(__dst + 136, *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v9 = *(a2 + 136);
    *(__dst + 19) = *(a2 + 19);
    *(__dst + 136) = v9;
  }

  return __dst;
}

void sub_10027EADC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027EB58(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10027EBE0(result, a4);
  }

  return result;
}

void sub_10027EBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027EE48(&a9);
  _Unwind_Resume(a1);
}

void sub_10027EBE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    sub_10027EC2C(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10027EC2C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_10027EC84(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10027E9BC(v4, v6);
      v6 += 10;
      v4 = v11 + 160;
      v11 += 160;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10027ED24(v8);
  return v4;
}

uint64_t sub_10027ED24(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10027ED5C(a1);
  }

  return a1;
}

void sub_10027ED5C(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 160;
      sub_10027EDB0(v5, v3);
    }

    while (v3 != v4);
  }
}

void sub_10027EDB0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 159) < 0)
  {
    operator delete(*(a2 + 136));
  }

  if (*(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  if (*(a2 + 111) < 0)
  {
    operator delete(*(a2 + 88));
  }

  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_10027EE48(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10027EE9C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10027EE9C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_10027EDB0(a1, i))
  {
    i -= 160;
  }

  *(a1 + 8) = a2;
}

char *sub_10027EEF0(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[288] = 0;
  if (*(a2 + 288) == 1)
  {
    sub_10027EF58(__dst, a2);
    __dst[288] = 1;
  }

  return __dst;
}

void sub_10027EF38(_Unwind_Exception *exception_object)
{
  if (*(v1 + 288) == 1)
  {
    sub_100111F5C(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10027EF58(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 12) = *(a2 + 12);
  sub_10006F264((__dst + 32), a2 + 2);
  sub_10006F264((__dst + 64), a2 + 4);
  sub_10006F264((__dst + 96), a2 + 6);
  sub_10006F264((__dst + 128), a2 + 8);
  sub_10006F264((__dst + 160), a2 + 10);
  *(__dst + 96) = *(a2 + 96);
  if (*(a2 + 223) < 0)
  {
    sub_100005F2C(__dst + 200, *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v5 = *(a2 + 200);
    *(__dst + 27) = *(a2 + 27);
    *(__dst + 200) = v5;
  }

  v6 = *(a2 + 112);
  __dst[226] = *(a2 + 226);
  *(__dst + 112) = v6;
  sub_10006F264((__dst + 232), (a2 + 232));
  v7 = *(a2 + 264);
  *(__dst + 140) = *(a2 + 140);
  *(__dst + 264) = v7;
  return __dst;
}

void sub_10027F050(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F138(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1001763B4(a1, v6);
  }

  v14 = 0;
  v15 = 56 * v2;
  v16 = (56 * v2);
  v7 = sub_10000501C((56 * v2), *a2);
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  v7[32] = *(a2 + 8);
  *(v7 + 3) = sub_100176214;
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_10027F29C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10027F36C(&v14);
  return v13;
}

void sub_10027F288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027F36C(va);
  _Unwind_Resume(a1);
}

void sub_10027F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = (a4 + 24);
    v7 = a2;
    do
    {
      v8 = *v7;
      *(v6 - 1) = *(v7 + 16);
      *(v6 - 3) = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = sub_10027F324(v6, (v7 + 24));
      v7 += 56;
      v6 = v9 + 7;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      sub_100176528(v5);
      v5 += 56;
    }
  }
}

void *sub_10027F324(void *a1, void (**a2)(uint64_t))
{
  *a1 = 0;
  a1[1] = 0;
  if (*a2)
  {
    (*a2)(2);
  }

  return a1;
}

uint64_t sub_10027F36C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_100176528(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10027F3BC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1001763B4(a1, v6);
  }

  v15 = 0;
  v16 = 56 * v2;
  v17 = (56 * v2);
  v7 = sub_10000501C((56 * v2), *a2);
  v7[3] = 0;
  v7[4] = 0;
  v8 = *(a2 + 8);
  v7[6] = *(a2 + 24);
  *(v7 + 2) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v7[3] = sub_100280258;
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_10027F29C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_10027F36C(&v15);
  return v14;
}

void sub_10027F51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027F36C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10027F530(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_1001763B4(a1, v6);
  }

  v14 = 0;
  v15 = 56 * v2;
  v16 = (56 * v2);
  v7 = sub_10000501C((56 * v2), *a2);
  *(v7 + 3) = 0;
  *(v7 + 4) = 0;
  *(v7 + 2) = *(a2 + 8);
  *(v7 + 3) = sub_10027F694;
  *&v16 = v16 + 56;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  sub_10027F29C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10027F36C(&v14);
  return v13;
}

void sub_10027F680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027F36C(va);
  _Unwind_Resume(a1);
}

_UNKNOWN **sub_10027F694(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_10027F694;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_10027F694;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_1017E4160;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027F75C(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10027F7D0(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_10027F834(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  v9 = *(a2 + 60);
  *(__dst + 16) = 0;
  *(__dst + 60) = v9;
  *(__dst + 17) = 0;
  *(__dst + 18) = 0;
  sub_10027F9D0((__dst + 128), *(a2 + 16), *(a2 + 17), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 17) - *(a2 + 16)) >> 4));
  return __dst;
}

void sub_10027F954(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10027F9D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10027FA58(result, a4);
  }

  return result;
}

void sub_10027FA38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100111D64(&a9);
  _Unwind_Resume(a1);
}

void sub_10027FA58(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_10027FAA4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10027FAA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10027FAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 56;
    do
    {
      v7 = v6 - 56;
      *v4 = *(v6 - 56);
      if (*(v6 - 25) < 0)
      {
        sub_100005F2C((v4 + 8), *(v6 - 48), *(v6 - 40));
      }

      else
      {
        v8 = *(v6 - 48);
        *(v4 + 24) = *(v6 - 32);
        *(v4 + 8) = v8;
      }

      if (*(v6 - 1) < 0)
      {
        sub_100005F2C((v4 + 32), *(v6 - 24), *(v6 - 16));
      }

      else
      {
        v9 = *(v6 - 24);
        *(v4 + 48) = *(v6 - 8);
        *(v4 + 32) = v9;
      }

      sub_10027FC3C((v4 + 56), v6);
      v4 = v14 + 80;
      v14 += 80;
      v6 += 80;
    }

    while (v7 + 80 != a3);
  }

  LOBYTE(v12) = 1;
  sub_10028004C(v11);
  return v4;
}

void sub_10027FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 31) < 0)
  {
    operator delete(*v10);
  }

  sub_10028004C(&a9);
  _Unwind_Resume(a1);
}

void *sub_10027FC3C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10027FC94(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10027FC94(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10027FD1C(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10027FD1C(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_10027FDBC();
  }

  return v3;
}

uint64_t sub_10027FE34(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100111E80(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *sub_10027FE80(_BYTE *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_10027FEF8(__dst + 24, (a2 + 24));
  return __dst;
}

void sub_10027FEDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10027FEF8(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_100DFEE00(__dst + 24, (a2 + 24));
  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v5 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v5;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v6 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v6;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v7 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v7;
  }

  sub_10027EF58(__dst + 144, a2 + 9);
  return __dst;
}

void sub_10027FFD8(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_1000D6F38(v1 + 24);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028004C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100280098(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100280098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      sub_100111E24(v6 - 24, *(v6 - 16));
      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 48));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 72));
      }

      v6 -= 80;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100280100(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v3 = (a1 + 128);
    sub_100111D64(&v3);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
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

uint64_t sub_100280198(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028021C(result, a4);
  }

  return result;
}

void sub_10028021C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_10027C770(a1, a2);
  }

  sub_1000CE3D4();
}

_UNKNOWN **sub_100280258(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
      }

      if (a4)
      {
      }

      else
      {
        v7 = a5 == &unk_1017E41A4;
      }

      if (v7)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    v9 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a3 = sub_100280258;
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
LABEL_11:
      operator delete(v8);
    }

LABEL_12:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a3 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v11;
  }

  result = 0;
  *a3 = sub_100280258;
  return result;
}

_BYTE *sub_10028036C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1280] = 0;
  if (*(a2 + 1280) == 1)
  {
    sub_10027B690(a1, a2);
    a1[1280] = 1;
  }

  return a1;
}

void sub_1002803B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 1280) == 1)
  {
    sub_1002813D0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002803D4(uint64_t *a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  v6 = (a1[1] - *a1) >> 7;
  v7 = v6 + 1;
  if ((v6 + 1) >> 57)
  {
    sub_1000CE3D4();
  }

  v10 = a1[2] - *a1;
  if (v10 >> 6 > v7)
  {
    v7 = v10 >> 6;
  }

  if (v10 >= 0x7FFFFFFFFFFFFF80)
  {
    v11 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v7;
  }

  v21 = a1;
  if (v11)
  {
    sub_1000DD224(a1, v11);
  }

  v18 = 0;
  v19 = v6 << 7;
  sub_100280514(v6 << 7, a2, a3, a4, a5, a6);
  v20 = ((v6 << 7) + 128);
  v12 = a1[1];
  v13 = (v6 << 7) + *a1 - v12;
  sub_100280664(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  sub_1002808CC(&v18);
  return v17;
}

void sub_100280500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002808CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100280514(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, __int128 *a6)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 32), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 48) = *(a3 + 2);
    *(a1 + 32) = v10;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v11;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 80), *a5, *(a5 + 1));
  }

  else
  {
    v12 = *a5;
    *(a1 + 96) = *(a5 + 2);
    *(a1 + 80) = v12;
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 104), *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    *(a1 + 120) = *(a6 + 2);
    *(a1 + 104) = v13;
  }

  return a1;
}

void sub_1002805F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100280664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    v5 = a2;
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      *v8 = 0;
      *(v8 + 24) = 0;
      if (*(a2 + v7 + 24) == 1)
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
        *(v9 + 1) = 0;
        *(v9 + 2) = 0;
        *v9 = 0;
        *(v8 + 24) = 1;
      }

      v11 = v9[2];
      *(v8 + 48) = *(v9 + 6);
      *(v8 + 32) = v11;
      *(v9 + 5) = 0;
      *(v9 + 6) = 0;
      *(v9 + 4) = 0;
      v12 = *(v9 + 56);
      *(v8 + 72) = *(v9 + 9);
      *(v8 + 56) = v12;
      *(v9 + 8) = 0;
      *(v9 + 9) = 0;
      *(v9 + 7) = 0;
      v13 = v9[5];
      *(v8 + 96) = *(v9 + 12);
      *(v8 + 80) = v13;
      *(v9 + 11) = 0;
      *(v9 + 12) = 0;
      *(v9 + 10) = 0;
      v14 = *(v9 + 104);
      *(v8 + 120) = *(v9 + 15);
      *(v8 + 104) = v14;
      *(v9 + 13) = 0;
      *(v9 + 14) = 0;
      *(v9 + 15) = 0;
      v7 += 128;
    }

    while (a2 + v7 != a3);
    v19 = a4 + v7;
    LOBYTE(v17) = 1;
    while (v5 != a3)
    {
      sub_1002807B8(a1, v5);
      v5 += 128;
    }
  }

  return sub_1000DD30C(v16);
}

void sub_1002807B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 24) == 1 && *(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_10028084C(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
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

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002808CC(uint64_t a1)
{
  sub_100280904(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100280904(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 128;
    sub_1002807B8(v5, v4 - 128);
  }
}

void *sub_10028094C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 24) = 0;
  *(__dst + 48) = 0;
  *(__dst + 56) = 0;
  *(__dst + 80) = 0;
  *(__dst + 44) = 0;
  return __dst;
}

void sub_1002809B0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_10016D77C(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100280AFC(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_100280D3C(&v14, __str, a3, v8);
    sub_100280DC0(a1, v12);
  }

  else
  {
    sub_100280D3C(&v13, __str, (__str + v11), v8);
    a1[1] = sub_100280B48(a1, (__str + v11), a3, a1[1]);
  }
}

void sub_100280AFC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_100280E54(a1, a2);
  }

  sub_1000CE3D4();
}

void *sub_100280B48(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
      }

      sub_10006F264((v4 + 3), (v6 + 24));
      sub_10006F264((v4 + 7), (v6 + 56));
      *(v4 + 44) = *(v6 + 44);
      v6 += 6;
      v4 = v12 + 96;
      v12 += 96;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_100280C60(v9);
  return v4;
}

uint64_t sub_100280C60(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100280CAC(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100280CAC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 16) == 1 && *(v6 - 17) < 0)
      {
        operator delete(*(v6 - 5));
      }

      if (*(v6 - 48) == 1 && *(v6 - 49) < 0)
      {
        operator delete(*(v6 - 9));
      }

      v7 = v6 - 12;
      if (*(v6 - 73) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 12;
    }

    while (v7 != a5);
  }
}

std::string *sub_100280D3C(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    sub_10012BF3C(this + 1, v5 + 1);
    sub_10012BF3C((this + 56), (v5 + 56));
    LOWORD(this[3].__r_.__value_.__r.__words[2]) = v5[3].__r_.__value_.__r.__words[2];
    this += 4;
    v5 += 4;
  }

  while (v5 != v6);
  return v6;
}

void sub_100280DC0(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 16) == 1 && *(v4 - 17) < 0)
      {
        operator delete(*(v4 - 5));
      }

      if (*(v4 - 48) == 1 && *(v4 - 49) < 0)
      {
        operator delete(*(v4 - 9));
      }

      v5 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 12;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_100280E54(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100280EAC(uint64_t a1)
{
  if (*(a1 + 336) == 1)
  {
    if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
    {
      operator delete(*(a1 + 304));
    }

    v3 = (a1 + 280);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_100270D58(a1 + 88);
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = (a1 + 32);
  sub_10016C644(&v3);
  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_100280F7C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 72) == *(a2 + 72))
  {
    if (*(a1 + 72))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      v5 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = v5;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      result = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = result;
      *(a2 + 71) = 0;
      *(a2 + 48) = 0;
    }
  }

  else if (*(a1 + 72))
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 72) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    result = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = result;
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *(a2 + 6) = 0;
    *(a1 + 72) = 1;
  }

  return result;
}

__n128 sub_1002810BC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 48))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (*(a1 + 47) < 0)
      {
        operator delete(*(a1 + 24));
      }

      result = *(a2 + 24);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 24) = result;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
    }
  }

  else if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }

  else
  {
    v6 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v6;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    result = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = result;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  return result;
}

uint64_t sub_1002811AC(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 8);
  v3 = v2 + 1;
  if (v2 + 1 > 0x33333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 8) >= 0x19999999999999)
  {
    v6 = 0x33333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027B5B4(a1, v6);
  }

  v13 = 0;
  v14 = 1280 * v2;
  sub_10027B690(1280 * v2, a2);
  v15 = 1280 * v2 + 1280;
  v7 = *(a1 + 8);
  v8 = 1280 * v2 + *a1 - v7;
  sub_1002812DC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100281380(&v13);
  return v12;
}

void sub_1002812C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002812DC(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = sub_10027B690(a4, v8);
      v8 += 80;
      a4 += 1280;
      v7 -= 1280;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = sub_1002813D0(v6);
      v6 += 1280;
    }
  }

  return result;
}

void sub_10028135C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 1280;
    do
    {
      v4 = sub_1002813D0(v4) - 1280;
      v2 += 1280;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100281380(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1280;
    sub_1002813D0(i - 1280);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1002813D0(uint64_t a1)
{
  sub_10002B644(a1 + 1248);
  v2 = *(a1 + 1240);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 1216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 1200);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 1184);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 1168);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(a1 + 1112) == 1 && *(a1 + 1015) < 0)
  {
    operator delete(*(a1 + 992));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  if (*(a1 + 959) < 0)
  {
    operator delete(*(a1 + 936));
  }

  if (*(a1 + 904) == 1 && *(a1 + 903) < 0)
  {
    operator delete(*(a1 + 880));
  }

  if (*(a1 + 879) < 0)
  {
    operator delete(*(a1 + 856));
  }

  if (*(a1 + 848) == 1)
  {
    if (*(a1 + 847) < 0)
    {
      operator delete(*(a1 + 824));
    }

    if (*(a1 + 823) < 0)
    {
      operator delete(*(a1 + 800));
    }

    if (*(a1 + 784) == 1 && *(a1 + 783) < 0)
    {
      operator delete(*(a1 + 760));
    }

    if (*(a1 + 752) == 1 && *(a1 + 751) < 0)
    {
      operator delete(*(a1 + 728));
    }

    if (*(a1 + 720) == 1 && *(a1 + 719) < 0)
    {
      operator delete(*(a1 + 696));
    }
  }

  if (*(a1 + 680) == 1)
  {
    if (*(a1 + 679) < 0)
    {
      operator delete(*(a1 + 656));
    }

    if (*(a1 + 640) == 1 && *(a1 + 639) < 0)
    {
      operator delete(*(a1 + 616));
    }

    if (*(a1 + 608) == 1 && *(a1 + 607) < 0)
    {
      operator delete(*(a1 + 584));
    }

    if (*(a1 + 576) == 1 && *(a1 + 575) < 0)
    {
      operator delete(*(a1 + 552));
    }

    v8 = (a1 + 528);
    sub_10016C644(&v8);
  }

  if (*(a1 + 527) < 0)
  {
    operator delete(*(a1 + 504));
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  if (*(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

__int128 *sub_1002816F8(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCF3CF3CF3CF3CF3DLL * ((v9 - v10) >> 5)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCF3CF3CF3CF3CF3DLL * ((v10 - a2) >> 5)) >= a5)
      {
        v19 = 42 * a5;
        sub_100281934(a1, a2, a1[1], a2 + 672 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          sub_10027C0CC(v21, v7);
          v7 += 42;
          v21 += 672;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_10027C048(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_100281934(a1, v5, v10, &v5[42 * a5]);
          v18 = v5;
          do
          {
            sub_10027C0CC(v18, v7);
            v7 += 42;
            v18 += 672;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x30C30C30C30C30C3 * ((v10 - *a1) >> 5);
      if (v12 > 0x61861861861861)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = 0xCF3CF3CF3CF3CF3DLL * ((v9 - v11) >> 5);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x30C30C30C30C30)
      {
        v15 = 0x61861861861861;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        sub_10027C24C(a1, v15);
      }

      v22 = (32 * (v13 >> 5));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = 672 * a5;
      v24 = &v22[672 * a5];
      do
      {
        sub_10027D7F4(v22, v7);
        v22 += 672;
        v7 += 42;
        v23 -= 672;
      }

      while (v23);
      v27 = v24;
      v5 = sub_1002819F4(a1, v26, v5);
      sub_1002822F0(v26);
    }
  }

  return v5;
}

void sub_100281934(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v10 = *(a1 + 8);
    do
    {
      sub_100281AB0(v10, v8);
      v8 += 42;
      v10 += 672;
    }

    while (v8 < a3);
  }

  *(a1 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 672;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 672 - a4);
    do
    {
      sub_100281D90(v11, v13);
      v11 -= 672;
      v13 -= 42;
      v12 += 672;
    }

    while (v12);
  }
}

uint64_t sub_1002819F4(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_10028224C(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_10028224C(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

__n128 sub_100281AB0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0u;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  a2[2] = 0u;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 56) = 0u;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 11) = 0;
  *(a2 + 72) = 0u;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  *(a2 + 14) = 0;
  a2[6] = 0u;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v7;
  *(a2 + 17) = 0;
  *(a2 + 120) = 0u;
  v8 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v8;
  *(a2 + 20) = 0;
  a2[9] = 0u;
  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v9;
  *(a2 + 23) = 0;
  *(a2 + 168) = 0u;
  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 26) = 0;
  a2[12] = 0u;
  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 29) = 0;
  *(a2 + 216) = 0u;
  v12 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v12;
  *(a2 + 32) = 0;
  a2[15] = 0u;
  v13 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *(a1 + 264) = v13;
  *(a2 + 35) = 0;
  *(a2 + 264) = 0u;
  v14 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v14;
  v15 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 312) = v15;
  *(a2 + 41) = 0;
  *(a2 + 312) = 0u;
  v16 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v16;
  *(a2 + 44) = 0;
  a2[21] = 0u;
  v17 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *(a1 + 360) = v17;
  *(a2 + 47) = 0;
  *(a2 + 360) = 0u;
  v18 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v18;
  *(a2 + 50) = 0;
  a2[24] = 0u;
  v19 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *(a1 + 408) = v19;
  *(a2 + 53) = 0;
  *(a2 + 408) = 0u;
  v20 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v20;
  *(a2 + 56) = 0;
  a2[27] = 0u;
  v21 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 59);
  *(a1 + 456) = v21;
  *(a2 + 59) = 0;
  *(a2 + 456) = 0u;
  v22 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v22;
  *(a2 + 62) = 0;
  a2[30] = 0u;
  v23 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *(a1 + 504) = v23;
  *(a2 + 65) = 0;
  *(a2 + 504) = 0u;
  v24 = a2[33];
  *(a1 + 544) = *(a2 + 68);
  *(a1 + 528) = v24;
  *(a2 + 68) = 0;
  a2[33] = 0u;
  v25 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 71);
  *(a1 + 552) = v25;
  *(a2 + 71) = 0;
  *(a2 + 552) = 0u;
  v26 = a2[36];
  *(a1 + 592) = *(a2 + 74);
  *(a1 + 576) = v26;
  *(a2 + 74) = 0;
  a2[36] = 0u;
  v27 = *(a2 + 600);
  *(a1 + 616) = *(a2 + 77);
  *(a1 + 600) = v27;
  *(a2 + 77) = 0;
  *(a2 + 600) = 0u;
  v28 = a2[39];
  *(a1 + 640) = *(a2 + 80);
  *(a1 + 624) = v28;
  *(a2 + 80) = 0;
  a2[39] = 0u;
  result = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 648) = result;
  return result;
}

uint64_t sub_100281D90(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v13 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v13;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v14 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v14;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  v15 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v15);
  }

  v16 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *v15 = v16;
  *(a2 + 287) = 0;
  *(a2 + 264) = 0;
  v17 = *(a2 + 38);
  *(a1 + 288) = a2[18];
  *(a1 + 304) = v17;
  v18 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v18);
  }

  v19 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *v18 = v19;
  *(a2 + 335) = 0;
  *(a2 + 312) = 0;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v20 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v20;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  v21 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    operator delete(*v21);
  }

  v22 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *v21 = v22;
  *(a2 + 383) = 0;
  *(a2 + 360) = 0;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v23 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v23;
  *(a2 + 407) = 0;
  *(a2 + 384) = 0;
  v24 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v24);
  }

  v25 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *v24 = v25;
  *(a2 + 431) = 0;
  *(a2 + 408) = 0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v26 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v26;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  v27 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    operator delete(*v27);
  }

  v28 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 59);
  *v27 = v28;
  *(a2 + 479) = 0;
  *(a2 + 456) = 0;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v29 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v29;
  *(a2 + 503) = 0;
  *(a2 + 480) = 0;
  v30 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*v30);
  }

  v31 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *v30 = v31;
  *(a2 + 527) = 0;
  *(a2 + 504) = 0;
  v32 = (a1 + 528);
  if (*(a1 + 551) < 0)
  {
    operator delete(*v32);
  }

  v33 = a2[33];
  *(a1 + 544) = *(a2 + 68);
  *v32 = v33;
  *(a2 + 551) = 0;
  *(a2 + 528) = 0;
  v34 = (a1 + 552);
  if (*(a1 + 575) < 0)
  {
    operator delete(*v34);
  }

  v35 = *(a2 + 552);
  *(a1 + 568) = *(a2 + 71);
  *v34 = v35;
  *(a2 + 575) = 0;
  *(a2 + 552) = 0;
  v36 = (a1 + 576);
  if (*(a1 + 599) < 0)
  {
    operator delete(*v36);
  }

  v37 = a2[36];
  *(a1 + 592) = *(a2 + 74);
  *v36 = v37;
  *(a2 + 599) = 0;
  *(a2 + 576) = 0;
  v38 = (a1 + 600);
  if (*(a1 + 623) < 0)
  {
    operator delete(*v38);
  }

  v39 = *(a2 + 600);
  *(a1 + 616) = *(a2 + 77);
  *v38 = v39;
  *(a2 + 623) = 0;
  *(a2 + 600) = 0;
  v40 = (a1 + 624);
  if (*(a1 + 647) < 0)
  {
    operator delete(*v40);
  }

  v41 = a2[39];
  *(a1 + 640) = *(a2 + 80);
  *v40 = v41;
  *(a2 + 647) = 0;
  *(a2 + 624) = 0;
  v42 = *(a2 + 648);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 648) = v42;
  return a1;
}