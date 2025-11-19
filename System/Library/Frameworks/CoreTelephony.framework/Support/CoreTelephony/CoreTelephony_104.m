void sub_1006BF7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1006B7E88(&STACK[0x500]);
  if (LOBYTE(STACK[0x4F8]) == 1)
  {
    sub_1006B0390(&STACK[0x438]);
  }

  sub_100004A34(v9);
  sub_100583454(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BF9F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BFA3C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  sub_1006A7D20((a1 + 48), (a2 + 48));
  v6 = (a1 + 328);
  if (*(a2 + 351) < 0)
  {
    sub_100005F2C(v6, *(a2 + 328), *(a2 + 336));
  }

  else
  {
    v7 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *v6 = v7;
  }

  v8 = *(a2 + 360);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 360) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1006BFAFC(_Unwind_Exception *a1)
{
  sub_1006A6E54(v1 + 48);
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006BFB3C(uint64_t a1)
{
  *a1 = off_101E716E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006BFBD4(uint64_t a1)
{
  *a1 = off_101E716E0;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006BFD28(_Unwind_Exception *a1)
{
  sub_100695CEC(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1006BFD4C(uint64_t a1, void *a2)
{
  *a2 = off_101E716E0;
  v3 = a2 + 19;
  result = sub_1006963B0((a2 + 1), a1 + 8);
  if (*(a1 + 175) < 0)
  {
    return sub_100005F2C(v3, *(a1 + 152), *(a1 + 160));
  }

  v5 = *(a1 + 152);
  v3[2] = *(a1 + 168);
  *v3 = v5;
  return result;
}

void sub_1006BFDE0(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006BFE70(void **__p)
{
  if (*(__p + 175) < 0)
  {
    operator delete(__p[19]);
  }

  if (*(__p + 151) < 0)
  {
    operator delete(__p[16]);
  }

  if (*(__p + 120) == 1 && *(__p + 103) < 0)
  {
    operator delete(__p[10]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006BFEFC(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    sub_100005F2C(__p, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    *__p = *(a1 + 152);
    v3 = *(a1 + 168);
  }

  v4 = 1;
  sub_1006BEBC8((a1 + 8), __p);
  if (v4 == 1 && SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006BFF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BFFA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BFFF0(uint64_t a1)
{
  *a1 = off_101E71770;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C0064(uint64_t a1)
{
  *a1 = off_101E71770;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006C019C(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006C0208(uint64_t a1)
{
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_1006C0270(uint64_t a1, uint64_t a2)
{
  *v36 = *a2;
  v37 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__val = *(a2 + 24);
  *v39 = *(a2 + 40);
  v40 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *v41 = *(a2 + 64);
  v42 = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *v43 = *(a2 + 88);
  v44 = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  LOBYTE(v45[0]) = 0;
  v47 = 0;
  if (*(a2 + 136) == 1)
  {
    *v45 = *(a2 + 112);
    v46 = *(a2 + 128);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v47 = 1;
  }

  v48 = *(a2 + 144);
  v3 = v48;
  v49 = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  v4 = *(a1 + 24);
  v5 = v3;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v6 + 24));
        v92 = 0uLL;
        v93 = 0;
        if (*(*(a1 + 152) + 128) == 4)
        {
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          *v85 = 0u;
          v86 = 0u;
          *v83 = 0u;
          v84 = 0u;
          *v81 = 0u;
          v82 = 0u;
          *v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          *v78 = 0u;
          v75 = 0u;
          *v76 = 0u;
          *__dst = 0u;
          sub_100B27D98(__dst);
          sub_100B27E08(__dst, "mls <http://www.gsma.com/rcs/mls>");
          ctu::base64::encode();
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          sub_100B27E1C(__dst, "mls.Epoch-Authenticator", v9);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }

          std::to_string(__p, __val[0]);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          sub_100B27E1C(__dst, "mls.Era-Id", v10);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100B27EC4(__dst, &v68);
          v11 = *(a1 + 191);
          if (v11 >= 0)
          {
            v12 = (a1 + 168);
          }

          else
          {
            v12 = *(a1 + 168);
          }

          if (v11 >= 0)
          {
            v13 = *(a1 + 191);
          }

          else
          {
            v13 = *(a1 + 176);
          }

          v14 = std::string::append(&v68, v12, v13);
          v15 = *&v14->__r_.__value_.__l.__data_;
          v69.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
          *&v69.__r_.__value_.__l.__data_ = v15;
          v14->__r_.__value_.__l.__size_ = 0;
          v14->__r_.__value_.__r.__words[2] = 0;
          v14->__r_.__value_.__r.__words[0] = 0;
          v16 = std::string::append(&v69, "<mls-file>", 0xAuLL);
          v17 = *&v16->__r_.__value_.__l.__data_;
          v70.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
          *&v70.__r_.__value_.__l.__data_ = v17;
          v16->__r_.__value_.__l.__size_ = 0;
          v16->__r_.__value_.__r.__words[2] = 0;
          v16->__r_.__value_.__r.__words[0] = 0;
          ctu::base64::encode();
          if ((v67 & 0x80u) == 0)
          {
            v18 = v66;
          }

          else
          {
            v18 = v66[0];
          }

          if ((v67 & 0x80u) == 0)
          {
            v19 = v67;
          }

          else
          {
            v19 = v66[1];
          }

          v20 = std::string::append(&v70, v18, v19);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v71.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&v71.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          v22 = std::string::append(&v71, "</mls-file></file>", 0x12uLL);
          v23 = *&v22->__r_.__value_.__l.__data_;
          v73 = v22->__r_.__value_.__r.__words[2];
          *v72 = v23;
          v22->__r_.__value_.__l.__size_ = 0;
          v22->__r_.__value_.__r.__words[2] = 0;
          v22->__r_.__value_.__r.__words[0] = 0;
          if (v73 >= 0)
          {
            v24 = v72;
          }

          else
          {
            v24 = v72[0];
          }

          if (v73 >= 0)
          {
            v25 = HIBYTE(v73);
          }

          else
          {
            v25 = v72[1];
          }

          __p[1] = 0;
          *&v51 = 0;
          __p[0] = 0;
          sub_1001E0D88(__p, v24, v24 + v25, v25);
          v92 = *__p;
          v93 = v51;
          __p[1] = 0;
          *&v51 = 0;
          __p[0] = 0;
          if (SHIBYTE(v73) < 0)
          {
            operator delete(v72[0]);
          }

          if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          if (v67 < 0)
          {
            operator delete(v66[0]);
          }

          if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v70.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v69.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v68.__r_.__value_.__l.__data_);
          }

          *&v75 = v26;
          if (SHIBYTE(v80) < 0)
          {
            operator delete(v79[1]);
          }

          std::locale::~locale(v76);
          std::iostream::~basic_iostream();
        }

        else
        {
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          *v85 = 0u;
          v86 = 0u;
          *v83 = 0u;
          v84 = 0u;
          *v81 = 0u;
          v82 = 0u;
          *v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          *v78 = 0u;
          v27 = *(a1 + 168);
          v75 = 0u;
          *v76 = 0u;
          if (*(a1 + 191) >= 0)
          {
            v28 = a1 + 168;
          }

          else
          {
            v28 = v27;
          }

          *__dst = 0uLL;
          sub_100B27E04(__dst, v28);
          sub_100B27E08(__dst, "mls <http://www.gsma.com/rcs/mls>");
          ctu::base64::encode();
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v29 = __p;
          }

          else
          {
            v29 = __p[0];
          }

          sub_100B27E1C(__dst, "mls.Epoch-Authenticator", v29);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }

          std::to_string(__p, __val[0]);
          if ((SBYTE7(v51) & 0x80u) == 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          sub_100B27E1C(__dst, "mls.Era-Id", v30);
          if (SBYTE7(v51) < 0)
          {
            operator delete(__p[0]);
          }

          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          *v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          memset(v52, 0, sizeof(v52));
          *__p = 0u;
          sub_100BE2724(__p, "message/mls");
          sub_100BE2728(__p, &v48, &v71);
          sub_100B27EC8(__dst, &v71.__r_.__value_.__l.__data_, v72);
          v92 = *v72;
          v93 = v73;
          v73 = 0;
          v72[0] = 0;
          v72[1] = 0;
          if (v71.__r_.__value_.__r.__words[0])
          {
            v71.__r_.__value_.__l.__size_ = v71.__r_.__value_.__r.__words[0];
            operator delete(v71.__r_.__value_.__l.__data_);
          }

          v34 = v32;
          *&v51 = v32;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53[1]);
          }

          std::locale::~locale(v52);
          std::iostream::~basic_iostream();
          std::ios::~ios();
          __dst[0] = v31;
          *(__dst + *(v31 - 3)) = v33;
          *&v75 = v34;
          if (SHIBYTE(v80) < 0)
          {
            operator delete(v79[1]);
          }

          std::locale::~locale(v76);
          std::iostream::~basic_iostream();
        }

        std::ios::~ios();
        v72[1] = 0;
        v72[0] = 0;
        sub_100679904(v6, a1 + 312, v72);
        v35 = v72[0];
        if (*(a1 + 359) < 0)
        {
          sub_100005F2C(__p, *(a1 + 336), *(a1 + 344));
        }

        else
        {
          *__p = *(a1 + 336);
          *&v51 = *(a1 + 352);
        }

        sub_100581E40(__dst, v36);
        LOBYTE(v83[0]) = 0;
        BYTE8(v84) = 0;
        LOBYTE(v85[0]) = 0;
        BYTE8(v86) = 0;
        sub_1009CE42C(v35, __p, __dst);
        if (BYTE8(v86) == 1 && SBYTE7(v86) < 0)
        {
          operator delete(v85[0]);
        }

        if (BYTE8(v84) == 1 && v83[0])
        {
          v83[1] = v83[0];
          operator delete(v83[0]);
        }

        if (BYTE8(v82) == 1 && v81[0])
        {
          v81[1] = v81[0];
          operator delete(v81[0]);
        }

        if (v79[1])
        {
          *&v80 = v79[1];
          operator delete(v79[1]);
        }

        if (v78[0])
        {
          v78[1] = v78[0];
          operator delete(v78[0]);
        }

        if (v76[1])
        {
          *&v77 = v76[1];
          operator delete(v76[1]);
        }

        if (SBYTE7(v75) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100B97900(*(v6 + 240), v72[0] + 19, a1 + 32, &v92, v36);
        sub_10177A000(v72);
      }

      sub_100004A34(v8);
      v5 = v48;
    }
  }

  if (v5)
  {
    *(&v48 + 1) = v5;
    operator delete(v5);
  }

  if (v47 == 1 && v45[0])
  {
    v45[1] = v45[0];
    operator delete(v45[0]);
  }

  if (v43[0])
  {
    v43[1] = v43[0];
    operator delete(v43[0]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  if (v39[0])
  {
    v39[1] = v39[0];
    operator delete(v39[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_1006C0C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  sub_10068C9D8(&STACK[0x280]);
  sub_100004A34(v74);
  sub_100582180(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C0DD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C0E24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006A7D20((a1 + 24), (a2 + 24));
  if (*(a2 + 327) < 0)
  {
    sub_100005F2C((a1 + 304), *(a2 + 304), *(a2 + 312));
  }

  else
  {
    v5 = *(a2 + 304);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 304) = v5;
  }

  v6 = (a1 + 328);
  if (*(a2 + 351) < 0)
  {
    sub_100005F2C(v6, *(a2 + 328), *(a2 + 336));
  }

  else
  {
    v7 = *(a2 + 328);
    *(a1 + 344) = *(a2 + 344);
    *v6 = v7;
  }

  return a1;
}

void sub_1006C0ECC(_Unwind_Exception *a1)
{
  if (*(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  sub_1006A6E54(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C0F0C(uint64_t a1)
{
  *a1 = off_101E717F0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C0F94(uint64_t a1)
{
  *a1 = off_101E717F0;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006C10E0(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006C1160(void **__p)
{
  if (*(__p + 151) < 0)
  {
    operator delete(__p[16]);
  }

  if (*(__p + 120) == 1 && *(__p + 103) < 0)
  {
    operator delete(__p[10]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006C11DC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v3 + 24));
        v6 = *(v3 + 240);
        v8 = 5;
        v9 = 1;
        sub_100BA24AC(v6, (a1 + 32), &v8);
        v7 = *(v3 + 432);
        if (v7)
        {
          if (*(a1 + 151) < 0)
          {
            sub_100005F2C(&__dst, *(a1 + 128), *(a1 + 136));
          }

          else
          {
            __dst = *(a1 + 128);
            v12 = *(a1 + 144);
          }

          v10 = 5;
          (*(*v7 + 24))(v7, &__dst, &v8);
          sub_101779600(&v8, &__dst);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1006C12D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C130C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C1358(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  sub_1006A7ED8((a1 + 72), (a2 + 72));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  return a1;
}

void sub_1006C140C(_Unwind_Exception *a1)
{
  sub_10067A5EC(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void *sub_1006C144C(void *a1)
{
  *a1 = off_101E71870;
  sub_1006964A4((a1 + 1));
  return a1;
}

void sub_1006C1490(void *a1)
{
  *a1 = off_101E71870;
  sub_1006964A4((a1 + 1));

  operator delete();
}

void sub_1006C15A0(void *a1)
{
  sub_1006964A4(a1 + 8);

  operator delete(a1);
}

void sub_1006C15DC(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *a2;
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 16))
      {
LABEL_33:
        sub_100004A34(v7);
        return;
      }

      dispatch_assert_queue_V2(*(v5 + 24));
      if (v4)
      {
        sub_100696544(v5, a1 + 56, a1 + 32, a1 + 80);
      }

      v8 = *(v5 + 400);
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9 && *(v5 + 392))
        {
          v25 = 0;
          v26 = 0;
          sub_100679904(v5, a1 + 56, &v25);
          if (v25)
          {
            v24 = 0;
            memset(v23, 0, sizeof(v23));
            sub_10091601C(v25, v23);
            v21 = 0u;
            v22 = 0u;
            sub_100686E2C(&v23[3], &v21);
            if (BYTE8(v22))
            {
              memset(__src, 0, sizeof(__src));
              sub_100A972E8(__src);
              v18 = 0u;
              v19 = 0u;
              v16 = 0u;
              v17 = 0u;
              __dst = 0u;
              if (*(a1 + 55) < 0)
              {
                sub_100005F2C(&__dst, *(a1 + 32), *(a1 + 40));
              }

              else
              {
                __dst = *(a1 + 32);
                *&v16 = *(a1 + 48);
              }

              if (BYTE8(v22))
              {
                v17 = 0uLL;
                *(&v16 + 1) = 0;
                sub_100581F6C(&v16 + 8, v21, *(&v21 + 1), (*(&v21 + 1) - v21) >> 5);
                LOBYTE(v18) = 0;
                BYTE8(v19) = 0;
                operator new();
              }

              sub_1000D1644();
            }

            v12 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              sub_10177A1AC();
            }

            LOBYTE(v13) = 0;
            LOBYTE(v14) = 0;
            sub_1006C21B8((a1 + 360), &v13);
            if (BYTE8(v22) == 1)
            {
              *&__dst = &v21;
              sub_10003CA58(&__dst);
            }

            sub_1000D45B0(v23);
          }

          else
          {
            v11 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
            if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
            {
              sub_10177A1E0();
            }

            LOBYTE(v13) = 0;
            LOBYTE(v14) = 0;
            sub_1006C21B8((a1 + 360), &v13);
          }

          if (v26)
          {
            sub_100004A34(v26);
          }

LABEL_32:
          sub_100004A34(v9);
          goto LABEL_33;
        }
      }

      else
      {
        v9 = 0;
      }

      v10 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_101777D94();
      }

      LOBYTE(v13) = 0;
      LOBYTE(v14) = 0;
      sub_1006C21B8((a1 + 360), &v13);
      if (!v9)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }
}

void sub_1006C1E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v37 = v34;
  sub_100695CEC(v37);
  operator delete(v35);
  sub_1006BED24(&a10);
  sub_1006B7F1C(v36 - 136);
  sub_1006C2314(&a31);
  sub_10069057C(&STACK[0x240]);
  if (SLOBYTE(STACK[0x2A7]) < 0)
  {
    operator delete(STACK[0x290]);
  }

  sub_100004A34(v33);
  sub_10069057C(&STACK[0x2B0]);
  if (SLOBYTE(STACK[0x31F]) < 0)
  {
    operator delete(STACK[0x308]);
  }

  if (LOBYTE(STACK[0x338]) == 1)
  {
    STACK[0x2B0] = &STACK[0x320];
    sub_10003CA58(&STACK[0x2B0]);
  }

  sub_1000D45B0(&STACK[0x340]);
  v39 = *(v36 - 184);
  if (v39)
  {
    sub_100004A34(v39);
  }

  sub_100004A34(v32);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C2064(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C20B0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  sub_1006A7D20((a1 + 72), (a2 + 72));
  sub_100697340(a1 + 352, a2 + 352);
  return a1;
}

void sub_1006C2160(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C21B8(uint64_t *a1, __int128 *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        dispatch_assert_queue_V2(*(v5 + 3));
        v8 = *(v5 + 30);
        v14 = 5;
        v15 = 1;
        sub_100BA290C(v8, a1 + 3, &v14);
        v9 = *(v5 + 30);
        LOBYTE(v14) = 0;
        v15 = 0;
        sub_100BA24AC(v9, a1 + 15, &v14);
        v10 = *(v5 + 54);
        if (v10)
        {
          if (*(a2 + 24) == 1)
          {
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(&__dst, *a2, *(a2 + 1));
            }

            else
            {
              __dst = *a2;
              v13 = *(a2 + 2);
            }

            v11[6] = 5;
            (*(*v10 + 24))(v10, &__dst, v11);
            sub_101779600(v11, &__dst);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1006C22D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C2314(uint64_t a1)
{
  v2 = *(a1 + 384);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_1006A6E54(a1 + 72);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_1006C2388(uint64_t a1)
{
  *a1 = off_101E718E0;
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1006C2418(uint64_t a1)
{
  *a1 = off_101E718E0;
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1006C256C(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006C25F4(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

uint64_t sub_1006C2678(uint64_t a1, uint64_t a2)
{
  sub_1006B0570(v30, a2);
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 8);
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v4 + 24));
        sub_1005833A8(v64, v30);
        if (v69)
        {
          v7 = 0;
          LOBYTE(v70) = 0;
        }

        else
        {
          sub_100581E40(&v70, v64);
          memset(v72, 0, sizeof(v72));
          sub_100034C50(v72, v65, v66, v66 - v65);
          memset(v73, 0, sizeof(v73));
          sub_100581F6C(v73, v67, v68, (v68 - v67) >> 5);
          v7 = 1;
        }

        v74[0] = v7;
        sub_100583454(v64);
        if (v74[0] == 1)
        {
          v63 = 0;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          memset(v57, 0, sizeof(v57));
          memset(v56, 0, sizeof(v56));
          sub_100B27D98(v56);
          sub_100B27E08(v56, "imdn <urn:ietf:params:imdn>");
          sub_100A972E8(__p);
          if ((SBYTE7(v39) & 0x80u) == 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = __p[0];
          }

          sub_100B27E1C(v56, "imdn.Message-ID", v8);
          if (SBYTE7(v39) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100B27E08(v56, "mls <http://www.gsma.com/rcs/mls>");
          ctu::base64::encode();
          if ((SBYTE7(v39) & 0x80u) == 0)
          {
            v9 = __p;
          }

          else
          {
            v9 = __p[0];
          }

          sub_100B27E1C(v56, "mls.Epoch-Authenticator", v9);
          if (SBYTE7(v39) < 0)
          {
            operator delete(__p[0]);
          }

          std::to_string(__p, __val);
          if ((SBYTE7(v39) & 0x80u) == 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          sub_100B27E1C(v56, "mls.Era-Id", v10);
          if (SBYTE7(v39) < 0)
          {
            operator delete(__p[0]);
          }

          v55 = 0;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
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
          *__p = 0u;
          sub_100BE2724(__p, "message/mls-rcs-client");
          v92[0] = 0;
          v92[1] = 0;
          sub_100679904(v4, a1 + 32, v92);
          v11 = v92[0];
          v31[1] = 0;
          v32 = 0;
          v31[0] = 0;
          sub_100581E40(buf, &v70);
          sub_100BE2728(__p, v72, __dst);
          sub_100B27EC8(v56, __dst, v36);
          *v86 = *v36;
          v87 = v37;
          v36[1] = 0;
          v37 = 0;
          v36[0] = 0;
          v88 = 1;
          if (*(a1 + 383) < 0)
          {
            sub_100005F2C(&v89, *(a1 + 360), *(a1 + 368));
          }

          else
          {
            v89 = *(a1 + 360);
            v90 = *(a1 + 376);
          }

          v91 = 1;
          sub_1009CE42C(v11, v31, buf);
          if (v91 == 1 && SHIBYTE(v90) < 0)
          {
            operator delete(v89);
          }

          if (v88 == 1 && v86[0])
          {
            v86[1] = v86[0];
            operator delete(v86[0]);
          }

          if (v85 == 1 && v83)
          {
            v84 = v83;
            operator delete(v83);
          }

          if (v81)
          {
            v82 = v81;
            operator delete(v81);
          }

          if (v79)
          {
            v80 = v79;
            operator delete(v79);
          }

          if (v77)
          {
            v78 = v77;
            operator delete(v77);
          }

          if (v76 < 0)
          {
            operator delete(*buf);
          }

          if (v36[0])
          {
            v36[1] = v36[0];
            operator delete(v36[0]);
          }

          if (__dst[0])
          {
            __dst[1] = __dst[0];
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }

          v18 = *(a1 + 384);
          v19 = *v18;
          v20 = *(v4 + 40);
          v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          if (v19 != 1)
          {
            if (v21)
            {
              *buf = 134217984;
              *&buf[4] = v18;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Marking token: %p as used, and calling applicationEncryptAndSendHelper", buf, 0xCu);
              v18 = *(a1 + 384);
            }

            *v18 = 1;
            sub_100696544(v4, a1 + 32, a1 + 56, a1 + 80);
          }

          if (v21)
          {
            *buf = 134217984;
            *&buf[4] = v18;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Token: %p was already used, bailing...", buf, 0xCu);
          }

          sub_10177A038(v92, v56, __p);
        }

        else
        {
          sub_1005833A8(v56, v30);
          if (DWORD2(v58) == 11)
          {
            sub_100581E40(buf, v56);
            sub_100582264(v86, v57);
            v12 = 1;
          }

          else
          {
            v12 = 0;
            buf[0] = 0;
          }

          BYTE8(v89) = v12;
          sub_100583454(v56);
          if (BYTE8(v89) == 1)
          {
            sub_100582264(__p, v86);
            v13 = v40;
            sub_100582310(__p);
            if (v13)
            {
              v14 = (*(**(v4 + 48) + 16))(*(v4 + 48), *(v4 + 96));
              if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
              {
                asString(v86);
                sub_101779CE8();
              }
            }

            v15 = *(v4 + 432);
            if (v15)
            {
              if (*(a1 + 383) < 0)
              {
                sub_100005F2C(__dst, *(a1 + 360), *(a1 + 368));
              }

              else
              {
                *__dst = *(a1 + 360);
                v35 = *(a1 + 376);
              }

              v33 = 5;
              (*(*v15 + 24))(v15, __dst, v31);
              sub_101779600(v31, __dst);
            }
          }

          else
          {
            sub_1005833A8(__p, v30);
            v16 = DWORD2(v50);
            sub_100583454(__p);
            if (v16 == 10)
            {
              v17 = *(v4 + 432);
              if (v17)
              {
                if (*(a1 + 383) < 0)
                {
                  sub_100005F2C(v36, *(a1 + 360), *(a1 + 368));
                }

                else
                {
                  *v36 = *(a1 + 360);
                  v37 = *(a1 + 376);
                }

                v33 = 0;
                (*(*v17 + 24))(v17, v36, v31);
                sub_101779600(v31, v36);
              }
            }

            else
            {
              v28 = (*(**(v4 + 48) + 16))(*(v4 + 48), *(v4 + 96));
              if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
              {
                sub_101779CB4();
              }
            }
          }

          sub_101779D3C(&v89 + 8, buf);
        }

        sub_101779DC0(v74, &v70, v22, v23, v24, v25, v26, v27);
      }

      sub_100004A34(v6);
    }
  }

  return sub_100583454(v30);
}

void sub_1006C2DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1006B7E88(&STACK[0x500]);
  if (LOBYTE(STACK[0x4F8]) == 1)
  {
    sub_1006B0390(&STACK[0x438]);
  }

  sub_100004A34(v9);
  sub_100583454(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C2FC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C3010(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  sub_1006A7D20((a1 + 72), (a2 + 72));
  if (*(a2 + 375) < 0)
  {
    sub_100005F2C((a1 + 352), *(a2 + 352), *(a2 + 360));
  }

  else
  {
    v7 = *(a2 + 352);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 352) = v7;
  }

  v8 = *(a2 + 384);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1006C30F4(_Unwind_Exception *a1)
{
  sub_1006A6E54(v1 + 72);
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C314C(uint64_t a1)
{
  *a1 = off_101E71960;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C31E4(uint64_t a1)
{
  *a1 = off_101E71960;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006C3338(_Unwind_Exception *a1)
{
  sub_100695CEC(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1006C335C(uint64_t a1, void *a2)
{
  *a2 = off_101E71960;
  v3 = a2 + 19;
  result = sub_100697340((a2 + 1), a1 + 8);
  if (*(a1 + 175) < 0)
  {
    return sub_100005F2C(v3, *(a1 + 152), *(a1 + 160));
  }

  v5 = *(a1 + 152);
  v3[2] = *(a1 + 168);
  *v3 = v5;
  return result;
}

void sub_1006C33F0(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006C3480(void **__p)
{
  if (*(__p + 175) < 0)
  {
    operator delete(__p[19]);
  }

  if (*(__p + 151) < 0)
  {
    operator delete(__p[16]);
  }

  if (*(__p + 120) == 1 && *(__p + 103) < 0)
  {
    operator delete(__p[10]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006C350C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    sub_100005F2C(__p, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    *__p = *(a1 + 152);
    v3 = *(a1 + 168);
  }

  v4 = 1;
  sub_1006C21B8((a1 + 8), __p);
  if (v4 == 1 && SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006C358C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C35B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C3600(uint64_t a1)
{
  *a1 = off_101E719F0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1006C3680(uint64_t a1)
{
  *a1 = off_101E719F0;
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1006C37C4(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006C383C(uint64_t a1)
{
  if (*(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1006C38B0(uint64_t a1, uint64_t a2)
{
  *v16 = *a2;
  v17 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__val = *(a2 + 24);
  *v19 = *(a2 + 40);
  v20 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *v21 = *(a2 + 64);
  v22 = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *v23 = *(a2 + 88);
  v24 = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  LOBYTE(v25[0]) = 0;
  v27 = 0;
  if (*(a2 + 136) == 1)
  {
    *v25 = *(a2 + 112);
    v26 = *(a2 + 128);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v27 = 1;
  }

  v28 = *(a2 + 144);
  v3 = v28;
  v29 = *(a2 + 160);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v4 = *(a1 + 24);
  v5 = v3;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v6 + 24));
        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        *v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        memset(v68, 0, sizeof(v68));
        v66 = 0u;
        sub_100B27D98(&v66);
        sub_100B27E08(&v66, "imdn <urn:ietf:params:imdn>");
        sub_100A972E8(__p);
        if ((SBYTE7(v51) & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        sub_100B27E1C(&v66, "imdn.Message-ID", v9);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100B27E08(&v66, "mls <http://www.gsma.com/rcs/mls>");
        ctu::base64::encode();
        if ((SBYTE7(v51) & 0x80u) == 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        sub_100B27E1C(&v66, "mls.Epoch-Authenticator", v10);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }

        std::to_string(__p, __val[0]);
        if ((SBYTE7(v51) & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        sub_100B27E1C(&v66, "mls.Era-Id", v11);
        if (SBYTE7(v51) < 0)
        {
          operator delete(__p[0]);
        }

        v65 = 0;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        *v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        memset(v52, 0, sizeof(v52));
        *__p = 0u;
        sub_100BE2724(__p, "message/mls-rcs-client");
        sub_100581E40(__dst, v16);
        sub_100BE2728(__p, &v28, v30);
        sub_100B27EC8(&v66, v30, v31);
        *v44 = *v31;
        v45 = v32;
        v31[1] = 0;
        v32 = 0;
        v31[0] = 0;
        v46 = 1;
        if (*(a1 + 383) < 0)
        {
          sub_100005F2C(&v47, *(a1 + 360), *(a1 + 368));
        }

        else
        {
          v47 = *(a1 + 360);
          v48 = *(a1 + 376);
        }

        v49 = 1;
        sub_100697C44(a1 + 32, __dst);
        if (v49 == 1 && SHIBYTE(v48) < 0)
        {
          operator delete(v47);
        }

        if (v46 == 1 && v44[0])
        {
          v44[1] = v44[0];
          operator delete(v44[0]);
        }

        if (v43 == 1 && v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        if (v39)
        {
          v40 = v39;
          operator delete(v39);
        }

        if (v37)
        {
          v38 = v37;
          operator delete(v37);
        }

        if (v35)
        {
          v36 = v35;
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v31[0])
        {
          v31[1] = v31[0];
          operator delete(v31[0]);
        }

        if (v30[0])
        {
          v30[1] = v30[0];
          operator delete(v30[0]);
        }

        v15 = v13;
        *&v51 = v13;
        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53[1]);
        }

        std::locale::~locale(v52);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        *&v66 = v12;
        *(&v66 + *(v12 - 24)) = v14;
        *&v67 = v15;
        if (SHIBYTE(v70) < 0)
        {
          operator delete(v69[1]);
        }

        std::locale::~locale(v68);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      sub_100004A34(v8);
      v5 = v28;
    }
  }

  if (v5)
  {
    *(&v28 + 1) = v5;
    operator delete(v5);
  }

  if (v27 == 1 && v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_1006C3EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, char a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a58 == 1 && __p)
  {
    a56 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  sub_100581DC0(&a37);
  sub_10068C9D8(&a63);
  sub_10068C9D8(&STACK[0x2D0]);
  sub_100004A34(v63);
  sub_100582180(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C3FE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C4030(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  sub_1006A7D20((a1 + 72), (a2 + 72));
  if (*(a2 + 375) < 0)
  {
    sub_100005F2C((a1 + 352), *(a2 + 352), *(a2 + 360));
  }

  else
  {
    v7 = *(a2 + 352);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 352) = v7;
  }

  return a1;
}

void sub_1006C4100(_Unwind_Exception *a1)
{
  sub_100697DA4(v2);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C414C(uint64_t a1)
{
  *a1 = off_101E71A70;
  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1006C41B8(uint64_t a1)
{
  *a1 = off_101E71A70;
  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1006C42E8(uint64_t a1)
{
  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006C4350(uint64_t a1)
{
  sub_1006A6E54(a1 + 80);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1006C43B4(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        dispatch_assert_queue_V2(*(v3 + 24));
        v6 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          sub_10177A214();
        }

        v16 = 0;
        LOBYTE(v17) = 0;
        v19 = 0;
        LOBYTE(__p) = 0;
        v22 = 0;
        *v7 = 0u;
        v8 = 0u;
        *v9 = 0u;
        v10 = 0u;
        *v11 = 0u;
        *v12 = 0u;
        v13 = 0u;
        LOBYTE(v14) = 0;
        sub_100697C44((a1 + 4), v7);
        if (v22 == 1 && v21 < 0)
        {
          operator delete(__p);
        }

        if (v19 == 1 && v17)
        {
          v18 = v17;
          operator delete(v17);
        }

        if (v16 == 1 && v14)
        {
          v15 = v14;
          operator delete(v14);
        }

        if (v12[1])
        {
          *&v13 = v12[1];
          operator delete(v12[1]);
        }

        if (v11[0])
        {
          v11[1] = v11[0];
          operator delete(v11[0]);
        }

        if (v9[1])
        {
          *&v10 = v9[1];
          operator delete(v9[1]);
        }

        if (SBYTE7(v8) < 0)
        {
          operator delete(v7[0]);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1006C452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10068C04C(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C4554(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C45A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  sub_1006A7D20((a1 + 72), (a2 + 72));
  return a1;
}

void sub_1006C463C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C4678(uint64_t a1)
{
  *a1 = off_101E71AF0;
  if (*(a1 + 360) == 1)
  {
    v2 = *(a1 + 336);
    if (v2)
    {
      *(a1 + 344) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1006C46F8(uint64_t a1)
{
  *a1 = off_101E71AF0;
  if (*(a1 + 360) == 1)
  {
    v2 = *(a1 + 336);
    if (v2)
    {
      *(a1 + 344) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1006C4864(_Unwind_Exception *a1)
{
  sub_1006A6E54((v1 + 4));
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C48AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E71AF0;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006A7D20((a2 + 32), (a1 + 32));
  if (*(a1 + 335) < 0)
  {
    sub_100005F2C((a2 + 312), *(a1 + 312), *(a1 + 320));
  }

  else
  {
    v5 = *(a1 + 312);
    *(a2 + 328) = *(a1 + 328);
    *(a2 + 312) = v5;
  }

  return sub_1006A7B80(a2 + 336, a1 + 336);
}

void sub_1006C495C(_Unwind_Exception *a1)
{
  sub_1006A6E54(v1 + 32);
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1006C499C(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    v2 = *(a1 + 336);
    if (v2)
    {
      *(a1 + 344) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006C4A14(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    v2 = *(a1 + 336);
    if (v2)
    {
      *(a1 + 344) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1006C4A88(uint64_t a1, uint64_t a2)
{
  *v25 = *a2;
  v26 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__val = *(a2 + 24);
  *v28 = *(a2 + 40);
  v29 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *v30 = *(a2 + 64);
  v31 = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *v32 = *(a2 + 88);
  v33 = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  LOBYTE(v34[0]) = 0;
  v36 = 0;
  if (*(a2 + 136) == 1)
  {
    *v34 = *(a2 + 112);
    v35 = *(a2 + 128);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v36 = 1;
  }

  v37 = *(a2 + 144);
  v3 = v37;
  v38 = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  v4 = *(a1 + 24);
  v5 = v3;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v6 + 24));
        v76 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        *v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        memset(v63, 0, sizeof(v63));
        v61 = 0u;
        sub_100B27D98(&v61);
        sub_100B27E08(&v61, "mls <http://www.gsma.com/rcs/mls>");
        ctu::base64::encode();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.MLS-Derived-Content-Signature", p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ctu::base64::encode();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &__p;
        }

        else
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.Epoch-Authenticator", v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::to_string(&__p, __val[0]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.Era-Id", v11);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 360) == 1)
        {
          LazuliMLSMessageId::toString((a1 + 336), &__p);
          v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          sub_100B27E1C(&v61, "mls.Original-Message-ID", v12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_100B27EC4(&v61, &__p);
        v13 = a1 + 168;
        v14 = *(a1 + 191);
        if (v14 >= 0)
        {
          v15 = (a1 + 168);
        }

        else
        {
          v15 = *(a1 + 168);
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 191);
        }

        else
        {
          v16 = *(a1 + 176);
        }

        v17 = std::string::append(&__p, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v60 = v17->__r_.__value_.__r.__words[2];
        *v59 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v57 = 0;
        v58 = 0;
        sub_100679DF8(v6, a1 + 312, &v57);
        v19 = v57;
        v55[1] = 0;
        v56 = 0;
        v55[0] = 0;
        sub_100581E40(&__p, v25);
        LOBYTE(v49) = 0;
        v51 = 0;
        LOBYTE(v52) = 0;
        v54 = 0;
        sub_1009CE42C(v19, v55, &__p);
        if (v54 == 1 && v53 < 0)
        {
          operator delete(v52);
        }

        if (v51 == 1 && v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v48 == 1 && v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55[0]);
        }

        v20 = *(v6 + 240);
        v21 = v57;
        if (v60 >= 0)
        {
          v22 = v59;
        }

        else
        {
          v22 = v59[0];
        }

        if (v60 >= 0)
        {
          v23 = HIBYTE(v60);
        }

        else
        {
          v23 = v59[1];
        }

        memset(&__p, 0, sizeof(__p));
        sub_1001E0D88(&__p, v22, v22 + v23, v23);
        sub_100B97900(v20, (v21 + 152), v13 - 136, &__p, v25);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v58)
        {
          sub_100004A34(v58);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59[0]);
        }

        *&v62 = v24;
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v64[1]);
        }

        std::locale::~locale(v63);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      sub_100004A34(v8);
      v5 = v37;
    }
  }

  if (v5)
  {
    *(&v37 + 1) = v5;
    operator delete(v5);
  }

  if (v36 == 1 && v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1006C5070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a68);
  sub_100004A34(v68);
  sub_100582180(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C5140(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C518C(uint64_t a1)
{
  *a1 = off_101E71B70;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C5214(uint64_t a1)
{
  *a1 = off_101E71B70;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006C5360(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006C53E0(void **__p)
{
  if (*(__p + 151) < 0)
  {
    operator delete(__p[16]);
  }

  if (*(__p + 120) == 1 && *(__p + 103) < 0)
  {
    operator delete(__p[10]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006C545C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v3 + 24));
        v6 = *(v3 + 240);
        v9 = 5;
        v10 = 1;
        sub_100BA290C(v6, (a1 + 32), &v9);
        v7 = *(v3 + 240);
        LOBYTE(v9) = 0;
        v10 = 0;
        sub_100BA24AC(v7, (a1 + 128), &v9);
        v8 = *(v3 + 432);
        if (v8)
        {
          if (*(a1 + 151) < 0)
          {
            sub_100005F2C(&__dst, *(a1 + 128), *(a1 + 136));
          }

          else
          {
            __dst = *(a1 + 128);
            v13 = *(a1 + 144);
          }

          v11 = 5;
          (*(*v8 + 24))(v8, &__dst, &v9);
          sub_101779600(&v9, &__dst);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1006C556C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C55A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C55F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  sub_1006A7ED8((a1 + 72), (a2 + 72));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  return a1;
}

void sub_1006C56A8(_Unwind_Exception *a1)
{
  sub_10067A5EC(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C56E8(uint64_t a1)
{
  *a1 = off_101E71BF0;
  if (*(a1 + 608) == 1)
  {
    v2 = *(a1 + 584);
    if (v2)
    {
      *(a1 + 592) = v2;
      operator delete(v2);
    }
  }

  sub_100C18C58(a1 + 312);
  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1006C5760(uint64_t a1)
{
  *a1 = off_101E71BF0;
  if (*(a1 + 608) == 1)
  {
    v2 = *(a1 + 584);
    if (v2)
    {
      *(a1 + 592) = v2;
      operator delete(v2);
    }
  }

  sub_100C18C58(a1 + 312);
  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_1006C589C(uint64_t a1)
{
  if (*(a1 + 608) == 1)
  {
    v2 = *(a1 + 584);
    if (v2)
    {
      *(a1 + 592) = v2;
      operator delete(v2);
    }
  }

  sub_100C18C58(a1 + 312);
  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1006C590C(uint64_t a1)
{
  if (*(a1 + 608) == 1)
  {
    v2 = *(a1 + 584);
    if (v2)
    {
      *(a1 + 592) = v2;
      operator delete(v2);
    }
  }

  sub_100C18C58(a1 + 312);
  sub_1006A6E54(a1 + 32);
  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1006C5978(uint64_t a1, uint64_t a2)
{
  *v25 = *a2;
  v26 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *__val = *(a2 + 24);
  *v28 = *(a2 + 40);
  v29 = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *v30 = *(a2 + 64);
  v31 = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *v32 = *(a2 + 88);
  v33 = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  LOBYTE(v34[0]) = 0;
  v36 = 0;
  if (*(a2 + 136) == 1)
  {
    *v34 = *(a2 + 112);
    v35 = *(a2 + 128);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    v36 = 1;
  }

  v37 = *(a2 + 144);
  v3 = v37;
  v38 = *(a2 + 160);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 144) = 0;
  v4 = *(a1 + 24);
  v5 = v3;
  if (v4)
  {
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v6 + 24));
        v76 = 0;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        *v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        memset(v63, 0, sizeof(v63));
        v61 = 0u;
        sub_100B27D98(&v61);
        sub_100B27E08(&v61, "mls <http://www.gsma.com/rcs/mls>");
        ctu::base64::encode();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.MLS-Derived-Content-Signature", p_p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        ctu::base64::encode();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v10 = &__p;
        }

        else
        {
          v10 = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.Epoch-Authenticator", v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::to_string(&__p, __val[0]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &__p;
        }

        else
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        sub_100B27E1C(&v61, "mls.Era-Id", v11);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 608) == 1)
        {
          LazuliMLSMessageId::toString((a1 + 584), &__p);
          v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          sub_100B27E1C(&v61, "mls.Original-Message-ID", v12);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_100B27EC4(&v61, &__p);
        v13 = a1 + 168;
        v14 = *(a1 + 191);
        if (v14 >= 0)
        {
          v15 = (a1 + 168);
        }

        else
        {
          v15 = *(a1 + 168);
        }

        if (v14 >= 0)
        {
          v16 = *(a1 + 191);
        }

        else
        {
          v16 = *(a1 + 176);
        }

        v17 = std::string::append(&__p, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v60 = v17->__r_.__value_.__r.__words[2];
        *v59 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v57 = 0;
        v58 = 0;
        sub_100679904(v6, a1 + 560, &v57);
        v19 = v57;
        sub_100C18C94((a1 + 312), v55);
        sub_100581E40(&__p, v25);
        LOBYTE(v49) = 0;
        v51 = 0;
        LOBYTE(v52) = 0;
        v54 = 0;
        sub_1009CE42C(v19, v55, &__p);
        if (v54 == 1 && v53 < 0)
        {
          operator delete(v52);
        }

        if (v51 == 1 && v49)
        {
          v50 = v49;
          operator delete(v49);
        }

        if (v48 == 1 && v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v42)
        {
          v43 = v42;
          operator delete(v42);
        }

        if (v40)
        {
          v41 = v40;
          operator delete(v40);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v56 < 0)
        {
          operator delete(v55[0]);
        }

        v20 = *(v6 + 240);
        v21 = v57;
        if (v60 >= 0)
        {
          v22 = v59;
        }

        else
        {
          v22 = v59[0];
        }

        if (v60 >= 0)
        {
          v23 = HIBYTE(v60);
        }

        else
        {
          v23 = v59[1];
        }

        memset(&__p, 0, sizeof(__p));
        sub_1001E0D88(&__p, v22, v22 + v23, v23);
        sub_100B97900(v20, (v21 + 152), v13 - 136, &__p, v25);
        if (__p.__r_.__value_.__r.__words[0])
        {
          __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v58)
        {
          sub_100004A34(v58);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59[0]);
        }

        *&v62 = v24;
        if (SHIBYTE(v65) < 0)
        {
          operator delete(v64[1]);
        }

        std::locale::~locale(v63);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      sub_100004A34(v8);
      v5 = v37;
    }
  }

  if (v5)
  {
    *(&v37 + 1) = v5;
    operator delete(v5);
  }

  if (v36 == 1 && v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_1006C5F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a68);
  sub_100004A34(v68);
  sub_100582180(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6038(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C6084(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006A7D20((a1 + 24), (a2 + 24));
  sub_1006A0A6C(a1 + 304, a2 + 304);
  *(a1 + 304) = off_101EC8DD8;
  v5 = (a1 + 552);
  if (*(a2 + 575) < 0)
  {
    sub_100005F2C(v5, *(a2 + 552), *(a2 + 560));
  }

  else
  {
    v6 = *(a2 + 552);
    *(a1 + 568) = *(a2 + 568);
    *v5 = v6;
  }

  sub_1006A7B80(a1 + 576, a2 + 576);
  return a1;
}

void sub_1006C6148(_Unwind_Exception *a1)
{
  sub_100C18630(v2);
  sub_1006A6E54(v1 + 24);
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C6190(uint64_t a1)
{
  *a1 = off_101E71C70;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C6218(uint64_t a1)
{
  *a1 = off_101E71C70;
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1006C6364(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006C63E4(void **__p)
{
  if (*(__p + 151) < 0)
  {
    operator delete(__p[16]);
  }

  if (*(__p + 120) == 1 && *(__p + 103) < 0)
  {
    operator delete(__p[10]);
  }

  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006C6460(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 16))
      {
        dispatch_assert_queue_V2(*(v3 + 24));
        v6 = *(v3 + 240);
        LOBYTE(v9) = 0;
        v10 = 0;
        sub_100BA24AC(v6, (a1 + 128), &v9);
        v7 = *(v3 + 240);
        v9 = 5;
        v10 = 1;
        sub_100BA290C(v7, (a1 + 32), &v9);
        v8 = *(v3 + 432);
        if (v8)
        {
          if (*(a1 + 151) < 0)
          {
            sub_100005F2C(&__dst, *(a1 + 128), *(a1 + 136));
          }

          else
          {
            __dst = *(a1 + 128);
            v13 = *(a1 + 144);
          }

          v11 = 5;
          (*(*v8 + 24))(v8, &__dst, &v9);
          sub_101779600(&v9, &__dst);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1006C6570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C65AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006C65F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

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

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  sub_1006A7ED8((a1 + 72), (a2 + 72));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  return a1;
}

void sub_1006C66AC(_Unwind_Exception *a1)
{
  sub_10067A5EC(v1 + 24);
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006C66EC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1006C6790();
  }

  return result;
}

void sub_1006C685C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1006C6878(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1006C6878(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a2 + 208) == 1 && *(a2 + 207) < 0)
    {
      operator delete(*(a2 + 184));
    }

    if (*(a2 + 168) == 1 && *(a2 + 167) < 0)
    {
      operator delete(*(a2 + 144));
    }

    v3 = (a2 + 120);
    sub_1006ACCB8(&v3);
    if (*(a2 + 112) == 1 && *(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_1006C6940(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_1000194D8(a1, a2);
  sub_1006AE218(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void *sub_1006C698C(void *a1)
{
  *a1 = off_101E71CF0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1006C69D8(void *a1)
{
  *a1 = off_101E71CF0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1006C6AB8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E71CF0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1006C6AF8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1006C6B08(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1006C6B48(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
        sub_10177A248(v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1006C6BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006C6C58()
{

  std::locale::~locale(v0 + 4);
}

void sub_1006C6C88()
{

  std::locale::~locale(v0 + 4);
}

void sub_1006C6CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (a2 + 168);

  sub_10003CA58(&a10);
}

uint64_t sub_1006C6D34(uint64_t a1, uint64_t a2)
{

  return sub_100582310(a2 + 144);
}

uint64_t sub_1006C6D4C()
{

  return std::iostream::~basic_iostream();
}

uint64_t sub_1006C6D64()
{

  return std::iostream::~basic_iostream();
}

uint64_t sub_1006C6D88(uint64_t a1, const void **a2, _DWORD *a3, unsigned __int8 *a4)
{
  memset(&v11, 0, sizeof(v11));
  CC_SHA1_Init(&v11);
  for (; a1; --a1)
  {
    v9 = *a2++;
    v8 = v9;
    LODWORD(v9) = *a3;
    a3 += 2;
    CC_SHA1_Update(&v11, v8, v9);
  }

  return CC_SHA1_Final(a4, &v11);
}

uint64_t sub_1006C6E04(void *__src, unint64_t a2, int8x16_t *a3, unint64_t a4)
{
  memset(__dst, 0, sizeof(__dst));
  if (a2 >= 0x40)
  {
    v6 = 64;
  }

  else
  {
    v6 = a2;
  }

  memcpy(__dst, __src, v6);
  bzero(__dst + v6, 64 - v6);
  v7 = a4 / 0x28;
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      v9 = 1;
      do
      {
        v10 = v9;
        memset(&c.Nl, 0, 76);
        *&c.h0 = xmmword_10182FC70;
        c.h4 = -1009589776;
        CC_SHA1_Update(&c, __dst, 0x40u);
        v11 = bswap32(c.h4);
        *a3 = vrev32q_s8(*&c.h0);
        a3[1].i32[0] = v11;
        v12 = 1;
        for (i = 19; i != -1; --i)
        {
          v14 = v12 + *(__dst + i) + a3->u8[i];
          *(__dst + i) = v14;
          v12 = v14 >> 8;
        }

        v9 = 0;
        a3 = (a3 + 20);
      }

      while ((v10 & 1) != 0);
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

void sub_1006C6F80(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, char **a5@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v14 = 0;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = a1[1];
  }

  v9 = *a4;
  v10 = *a3;
  *key = v7;
  *v12.ctx = v8;
  *&v12.ctx[2] = v9;
  *&v12.ctx[4] = v10;
  *&key[8] = vdupq_n_s64(0x10uLL);
  sub_1006C6D88(3, &v12, key, __src);
  memset(&v12, 0, 160);
  sub_1006C6E04(__src, 0x14uLL, &v12, 0xA0uLL);
  *key = *&v12.ctx[4];
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_1000CFAD0(a5, 20);
  memset(&v12, 0, sizeof(v12));
  CCHmacInit(&v12, 0, key, 0x10uLL);
  CCHmacUpdate(&v12, *a2, *(a2 + 8) - *a2);
  CCHmacFinal(&v12, *a5);
  v11 = a5[1] - *a5;
  if (v11 > 0xF)
  {
    if (v11 != 16)
    {
      a5[1] = *a5 + 16;
    }
  }

  else
  {
    sub_10018D3CC(a5, 16 - v11);
  }
}

uint64_t sub_1006C713C(uint64_t a1, void *a2)
{
  sub_10000501C(&__p, "TraceModuleExtreme");
  ctu::concurrency::Monitor::Monitor();
  if (v11 < 0)
  {
    operator delete(__p.var0);
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, LogGroupName);
  ctu::OsLogLogger::OsLogLogger(&v9, &__p);
  ctu::OsLogLogger::OsLogLogger((a1 + 56), &v9);
  ctu::OsLogLogger::~OsLogLogger(&v9);
  ctu::OsLogContext::~OsLogContext(&__p);
  *a1 = off_101E71D70;
  *(a1 + 64) = *a2;
  v5 = a2[1];
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = dispatch_group_create();
  ATCSTimer::ATCSTimer((a1 + 88));
  ATCSTimer::ATCSTimer((a1 + 144));
  *(a1 + 200) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  ATCSDPCQueue::ATCSDPCQueue((a1 + 360));
  *(a1 + 480) = 1;
  *(a1 + 481) = 0;
  sub_10000501C(&__p, "TraceModuleExtreme::fSignalStrengthDebugVerbosity");
  sub_1006C9D1C(a1 + 488, a2, &__p, 0, 1, 0);
  if (v11 < 0)
  {
    operator delete(__p.var0);
  }

  *(a1 + 544) = 50;
  v6 = *(a1 + 528);
  v7 = sub_1006CA070(&event::registration::signalStrengthVerbosity[1]);
  sub_1006CA0B4(v7, v6);
  return a1;
}

void sub_1006C72D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_100686634(v15 + 488);
  ATCSDPCQueue::~ATCSDPCQueue((v16 + 160));
  if (*(v15 + 335) < 0)
  {
    operator delete(*(v15 + 312));
  }

  if (*(v15 + 311) < 0)
  {
    operator delete(*(v15 + 288));
  }

  if (*(v15 + 287) < 0)
  {
    operator delete(*(v15 + 264));
  }

  if (*(v15 + 263) < 0)
  {
    operator delete(*(v15 + 240));
  }

  if (*(v15 + 239) < 0)
  {
    operator delete(*(v15 + 216));
  }

  v18 = *(v15 + 208);
  if (v18)
  {
    sub_100004A34(v18);
  }

  ATCSTimer::~ATCSTimer((v15 + 144));
  ATCSTimer::~ATCSTimer((v15 + 88));
  v19 = *(v15 + 72);
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v15 + 56));
  v20 = *(v15 + 48);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  ctu::concurrency::Monitor::~Monitor(v15);
  _Unwind_Resume(a1);
}

void sub_1006C73FC(uint64_t a1)
{
  *a1 = off_101E71D70;
  v2 = *(a1 + 336);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100686634(a1 + 488);
  ATCSDPCQueue::~ATCSDPCQueue((a1 + 360));
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

  v3 = *(a1 + 208);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ATCSTimer::~ATCSTimer((a1 + 144));
  ATCSTimer::~ATCSTimer((a1 + 88));
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  v5 = *(a1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::concurrency::Monitor::~Monitor(a1);
}

void sub_1006C7518(uint64_t a1)
{
  sub_1006C73FC(a1);

  operator delete();
}

void sub_1006C7550(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1006CB5DC();
}

void sub_1006C7670(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C7704(uint64_t a1)
{
  v1 = *(a1 + 32);
  __dst = 0uLL;
  v9 = 0;
  if (*(v1 + 239) < 0)
  {
    sub_100005F2C(&__dst, *(v1 + 216), *(v1 + 224));
  }

  else
  {
    __dst = *(v1 + 216);
    v9 = *(v1 + 232);
  }

  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if (*(v1 + 287) < 0)
  {
    sub_100005F2C(v6, *(v1 + 264), *(v1 + 272));
  }

  else
  {
    *v6 = *(v1 + 264);
    v7 = *(v1 + 280);
  }

  v2 = dispatch_group_create();
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  if (SHIBYTE(v9) < 0)
  {
    sub_100005F2C(__p, __dst, *(&__dst + 1));
  }

  else
  {
    *__p = __dst;
    v5 = v9;
  }

  ctu::path_join_impl();
  if ((sub_1003436C4(__p) & 1) == 0)
  {
    v3 = *(v1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10177A380(__p, v3);
    }
  }

  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst);
  }
}

void sub_1006C7860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v21)
  {
    dispatch_release(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C78BC(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 208);
  *(a1 + 200) = v5;
  *(a1 + 208) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100016890((a1 + 216), a2[3]);
  sub_100016890((a1 + 240), a2[4]);
  sub_100016890((a1 + 264), a2[5]);
  sub_100016890((a1 + 288), a2[6]);
  *(a1 + 352) = *(a2 + 4);
  sub_1002D576C();
}

const char *sub_1006C7948(unsigned int a1)
{
  if (a1 < 7)
  {
    return off_101E720B0[a1];
  }

  __TUAssertTrigger();
  return "";
}

void sub_1006C798C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1006C7948(*(a1 + 344));
    v6 = 136315394;
    v7 = v5;
    v8 = 2080;
    v9 = sub_1006C7948(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Changing state from %s to %s", &v6, 0x16u);
  }

  *(a1 + 344) = a2;
}

void sub_1006C7AFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 344);
  if (v3)
  {
    v4 = *(v2 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v6 = sub_1006C7948(v3);
      v7 = 2080;
      v8 = "Idle";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Waiting for state change from %s to %s", buf, 0x16u);
    }

    sub_1006C7A58(v2, *(a1 + 56), *(a1 + 48), *(a1 + 32));
  }

  else
  {
    sub_1006C798C(*(a1 + 40), *(a1 + 56));
    dispatch_group_enter(*(v2 + 80));
    (*(*(a1 + 32) + 16))();
    ctu::concurrency::Monitor::notifyOnCompletion();
    dispatch_group_leave(*(v2 + 80));
  }

  _Block_release(*(a1 + 32));
}

uint64_t sub_1006C7C74(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_1006C798C(v2, 0);
  v3 = *(a1 + 40);

  return ATCSDPCQueue::enqueue((v2 + 360), v3);
}

uint64_t sub_1006C7CC8(std::string *a1, __int128 *a2, uint64_t a3, std::string::value_type a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v14 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v12 = *(a6 + 16);
  }

  sub_1006C7DC8(a1, a2, 0, a4, __dst, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_1006C7D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C7DC8(std::string *a1, __int128 *a2, uint64_t a3, std::string::value_type a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  *v18 = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  *v15 = 0u;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v13 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v11 = *(a6 + 16);
  }

  sub_1006C84A4(a1, a2, a4, __dst, __p, &v14);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(a1->__r_.__value_.__r.__words[0] + 80))(a1, &v18[1]);
  sub_1006C8958(a1, v15);
  sub_1006C8804(a1);
  a1[20].__r_.__value_.__s.__data_[0] = 1;
  sub_1006C798C(a1, 0);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  if (SHIBYTE(v16[0]) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1006C7F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C7F70(uint64_t a1, uint64_t a2)
{
  sub_10005B8C8(&v3);
  (*(*v3 + 184))(v3, a2);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1006C7FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C7FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1006C8028(a1, a2, a3, a4);
  sub_1006C798C(a1, 0);
  return v5;
}

uint64_t sub_1006C8028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 23);
  v9 = *(a2 + 8);
  v47 = 0;
  v48 = 0;
  if ((v8 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  __p = 0;
  p_p = &__p;
  sub_1000677C4(&__p, v10 + 2);
  if (v48 < 0)
  {
    p_p = __p;
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(p_p, v12, v10);
  }

  strcpy(p_p + v10, "::");
  v13 = *(a2 + 23);
  v14 = *(a2 + 8);
  if (v13 < 0 && v14 == 23 && (**a2 == 0x6552656C69626F4DLL ? (v15 = *(*a2 + 8) == 0x6761694465746F6DLL) : (v15 = 0), v15 ? (v16 = *(*a2 + 15) == 0x73636974736F6E67) : (v16 = 0), v16))
  {
    v31 = *(a3 + 23);
    if (v31 < 0)
    {
      if (*(a3 + 8) != 7)
      {
        goto LABEL_61;
      }

      v32 = *a3;
    }

    else
    {
      v32 = a3;
      if (v31 != 7)
      {
        goto LABEL_61;
      }
    }

    v33 = *v32;
    v34 = *(v32 + 3);
    if (v33 == 1650552421 && v34 == 1684368482)
    {
      v45 = sub_100143EC4(a4);
      v41 = *(a1 + 336);
      if (v48 >= 0)
      {
        v42 = HIBYTE(v48);
      }

      else
      {
        v42 = v47;
      }

      memset(__endptr, 0, sizeof(__endptr));
      v43 = __endptr;
      sub_1000677C4(__endptr, v42 + 8);
      if (SHIBYTE(__endptr[2]) < 0)
      {
        v43 = __endptr[0];
      }

      if (v42)
      {
        if (v48 >= 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p;
        }

        memmove(v43, v44, v42);
      }

      strcpy(v43 + v42, "fEnabled");
      (*(*v41 + 40))(v41, __endptr, &v45);
      if (SHIBYTE(__endptr[2]) < 0)
      {
        operator delete(__endptr[0]);
      }

      goto LABEL_85;
    }
  }

  else
  {
    if (v13 >= 0)
    {
      v14 = *(a2 + 23);
    }

    if (v14 == 14)
    {
      v17 = v13 >= 0 ? a2 : *a2;
      v18 = *v17;
      v19 = *(v17 + 6);
      if (v18 == 0x74736C616E676973 && v19 == 0x6874676E65727473)
      {
        v21 = *(a3 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(a3 + 8);
        }

        if (v21 == 9)
        {
          v23 = v22 >= 0 ? a3 : *a3;
          v24 = *v23;
          v25 = *(v23 + 8);
          if (v24 == 0x7469736F62726576 && v25 == 121)
          {
            __endptr[0] = 0;
            if (std::string::find(a4, 45, 0) == -1)
            {
              *__error() = 0;
              v27 = *(a4 + 23) >= 0 ? a4 : *a4;
              v28 = strtoul(v27, __endptr, 10);
              if (!*__error() && __endptr[0] && !*__endptr[0])
              {
                v29 = *(a1 + 536);
                *(a1 + 528) = v28;
                *(a1 + 537) = 1;
                if (v29 == 1)
                {
                  sub_1006C9F30(a1 + 488);
                }

                v30 = sub_1006CA070(&event::registration::signalStrengthVerbosity[1]);
                sub_1006CA0B4(v30, v28);
LABEL_85:
                v37 = 1;
                goto LABEL_63;
              }
            }
          }
        }
      }
    }
  }

LABEL_61:
  v36 = *(a1 + 56);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v39 = a2;
    }

    else
    {
      v39 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v40 = a3;
    }

    else
    {
      v40 = *a3;
    }

    LODWORD(__endptr[0]) = 136315394;
    *(__endptr + 4) = v39;
    WORD2(__endptr[1]) = 2080;
    *(&__endptr[1] + 6) = v40;
    _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unrecognized trace %s or property %s", __endptr, 0x16u);
  }

  v37 = 0;
LABEL_63:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(__p);
  }

  return v37;
}

void sub_1006C845C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C84A4(std::string *a1@<X0>, __int128 *a2@<X1>, std::string::value_type a3@<W2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t a6@<X8>)
{
  a1[20].__r_.__value_.__s.__data_[0] = a3;
  if (sub_100343CD0(&a1[12], "/tmp/"))
  {
    size = a1[2].__r_.__value_.__l.__size_;
    if (os_log_type_enabled(size, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "/tmp/";
      _os_log_impl(&_mh_execute_header, size, OS_LOG_TYPE_DEFAULT, "#I Copied workspace directory into %s", buf, 0xCu);
    }
  }

  sub_1003432D8(a5, 493, 1);
  v26 = 0;
  *v24 = 0u;
  v25 = 0u;
  *buf = 0u;
  *v23 = 0u;
  if ((*(a4 + 23) & 0x80000000) == 0)
  {
    if (*(a4 + 23))
    {
      *__p = *a4;
      v20 = *(a4 + 16);
      goto LABEL_9;
    }

LABEL_11:
    sub_10031538C(buf);
    goto LABEL_12;
  }

  v12 = *(a4 + 8);
  if (!v12)
  {
    goto LABEL_11;
  }

  sub_100005F2C(__p, *a4, v12);
LABEL_9:
  sub_10031543C(buf, __p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  sub_1003154F8(buf, &v21);
  sub_100168A48(&a1[11].__r_.__value_.__l.__data_, &v21.__r_.__value_.__l.__data_, v17);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v13 = a1[2].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v17;
    if (v18 < 0)
    {
      v14 = v17[0];
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
    *(v21.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Saving log files as %s-*", &v21, 0xCu);
  }

  sub_100315658(buf);
  sub_1003154F8(buf, &v21);
  std::string::operator=(a1 + 13, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  v15 = a1[2].__r_.__value_.__l.__size_;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v23;
    if (SHIBYTE(v24[0]) < 0)
    {
      v16 = v23[0];
    }

    LODWORD(v21.__r_.__value_.__l.__data_) = 136315138;
    *(v21.__r_.__value_.__r.__words + 4) = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Saving traces to %s-*", &v21, 0xCu);
  }

  *(a6 + 96) = 0;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  sub_1006C9C4C(a6, buf, a2, &a1[20]);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
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

void sub_1006C8804(uint64_t a1)
{
  v2 = (a1 + 264);
  if (sub_1003432D8((a1 + 264), 493, 1))
  {
    v3 = sub_100344254(v2, *(a1 + 544));
    if (v3 != -1)
    {
      v4 = v3;
      v5 = (a1 + 288);
      if ((sub_100343CD0(a1 + 288, v2) & 1) == 0)
      {
        v6 = *(a1 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 311) < 0)
          {
            v5 = *v5;
          }

          v8 = v2;
          if (*(a1 + 287) < 0)
          {
            v8 = *v2;
          }

          v9 = 136315394;
          v10 = v5;
          v11 = 2080;
          v12 = v8;
          _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to move workspace folder (%s) to snapshot folder (%s)", &v9, 0x16u);
        }
      }

      sub_10034440C(v2, v4);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10177A408(a1, v2, v7);
    }
  }
}

void sub_1006C8958(uint64_t a1, const void **a2)
{
  sub_10000501C(__p, "/var/wireless/Library/Logs/vinylscratch/");
  v4 = sub_100343098(__p);
  v5 = v4;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  sub_10000501C(__p, "/var/wireless/Library/Logs/vinylscratch/");
  v6 = sub_100344254(__p, *(a1 + 544));
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (v6 != -1)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = a2[1];
    }

    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    sub_1000677C4(__p, v7 + 6);
    if (v15 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (v7)
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      memmove(v9, v10, v7);
    }

    strcpy(v9 + v7, "-vinyl");
    if (v15 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    rename("/var/wireless/Library/Logs/vinylscratch/", v11, v8);
    sub_10000501C(v12, "/var/wireless/Library/Logs/vinylscratch/");
    sub_10034440C(v12, v6);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1006C8AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t sub_1006C8B18(void *a1, uint64_t *a2, int **a3, uint64_t a4)
{
  v8 = *(a2 + 23);
  v9 = a2[1];
  v43 = 0;
  v44 = 0;
  if ((v8 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  __p = 0;
  p_p = &__p;
  sub_1000677C4(&__p, v10 + 2);
  if (v44 < 0)
  {
    p_p = __p;
  }

  if (v10)
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    memmove(p_p, v12, v10);
  }

  strcpy(p_p + v10, "::");
  v13 = *(a2 + 23);
  v14 = a2[1];
  if (v13 < 0 && v14 == 23)
  {
    v15 = **a2 == 0x6552656C69626F4DLL && *(*a2 + 8) == 0x6761694465746F6DLL;
    if (v15 && *(*a2 + 15) == 0x73636974736F6E67)
    {
      v27 = *(a3 + 23);
      if (v27 < 0)
      {
        if (a3[1] != 7)
        {
          goto LABEL_51;
        }

        v28 = *a3;
      }

      else
      {
        v28 = a3;
        if (v27 != 7)
        {
          goto LABEL_51;
        }
      }

      v29 = *v28;
      v30 = *(v28 + 3);
      if (v29 == 1650552421 && v30 == 1684368482)
      {
        LODWORD(v41) = 0;
        v37 = a1[42];
        if (v44 >= 0)
        {
          v38 = HIBYTE(v44);
        }

        else
        {
          v38 = v43;
        }

        memset(buf, 0, sizeof(buf));
        v39 = buf;
        sub_1000677C4(buf, v38 + 8);
        if ((buf[23] & 0x80u) != 0)
        {
          v39 = *buf;
        }

        if (v38)
        {
          if (v44 >= 0)
          {
            v40 = &__p;
          }

          else
          {
            v40 = __p;
          }

          memmove(v39, v40, v38);
        }

        strcpy(&v39[v38], "fEnabled");
        (*(*v37 + 32))(v37, buf, &v41);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        sub_1006C8F28(buf);
        goto LABEL_75;
      }

LABEL_51:
      v32 = a1[7];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        if (v13 >= 0)
        {
          v35 = a2;
        }

        if (*(a3 + 23) >= 0)
        {
          v36 = a3;
        }

        else
        {
          v36 = *a3;
        }

        *buf = 136315394;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = v36;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Unrecognized trace %s or property %s", buf, 0x16u);
      }

      v33 = 0;
      goto LABEL_53;
    }
  }

  if (v13 >= 0)
  {
    v14 = *(a2 + 23);
  }

  if (v14 != 14)
  {
    goto LABEL_51;
  }

  v17 = *a2;
  if (v13 >= 0)
  {
    v17 = a2;
  }

  v18 = *v17;
  v19 = *(v17 + 6);
  if (v18 != 0x74736C616E676973 || v19 != 0x6874676E65727473)
  {
    goto LABEL_51;
  }

  v21 = *(a3 + 23);
  v22 = v21;
  if (v21 < 0)
  {
    v21 = a3[1];
  }

  if (v21 != 9)
  {
    goto LABEL_51;
  }

  v23 = v22 >= 0 ? a3 : *a3;
  v24 = *v23;
  v25 = *(v23 + 8);
  if (v24 != 0x7469736F62726576 || v25 != 121)
  {
    goto LABEL_51;
  }

  v41 = a1[66];
  sub_1006C90B4(buf);
LABEL_75:
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *buf;
  *(a4 + 16) = *&buf[16];
  v33 = 1;
LABEL_53:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  return v33;
}

void sub_1006C8EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C8F28@<X0>(_BYTE *a1@<X8>)
{
  v17 = 0;
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
  *__p = 0u;
  v6 = 0u;
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  sub_10000D518(&v3);
  std::ostream::operator<<();
  sub_10000D684(&v3, a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v4);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006C90B4@<X0>(_BYTE *a1@<X8>)
{
  v17 = 0;
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
  *__p = 0u;
  v6 = 0u;
  v3 = 0u;
  memset(v4, 0, sizeof(v4));
  sub_10000D518(&v3);
  std::ostream::operator<<();
  sub_10000D684(&v3, a1);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v4);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_1006C9240(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1006C92B4;
  v3[3] = &unk_101E71E30;
  v3[4] = a1;
  v3[5] = a2;
  return sub_1006C7A58(a1, 1, a2, v3);
}

uint64_t sub_1006C92B4(uint64_t a1)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32), *(*(a1 + 32) + 80));
  *(*(a1 + 40) + 8) = 1;
  return result;
}

uint64_t sub_1006C930C(uint64_t a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1006C9380;
  v3[3] = &unk_101E71E50;
  v3[4] = a1;
  v3[5] = a2;
  return sub_1006C7A58(a1, 2, a2, v3);
}

uint64_t sub_1006C9380(uint64_t a1)
{
  result = (*(**(a1 + 32) + 32))(*(a1 + 32));
  *(*(a1 + 40) + 8) = 1;
  return result;
}

void sub_1006C93D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v12 = a1;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_1006C9584;
  v13[3] = &unk_101E71E70;
  v13[4] = a1;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v14, *a3, *(a3 + 8));
  }

  else
  {
    *v14 = *a3;
    v15 = *(a3 + 16);
  }

  v21 = a4;
  v22 = a5;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v16, *a6, *(a6 + 8));
  }

  else
  {
    *v16 = *a6;
    v17 = *(a6 + 16);
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C(__p, *a7, *(a7 + 8));
  }

  else
  {
    *__p = *a7;
    v19 = *(a7 + 16);
  }

  v20 = a2;
  sub_1006C7A58(v12, 3, a2, v13);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1006C9538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9584(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 120);
  v4 = *(a1 + 121);
  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *__dst = *(a1 + 64);
    v8 = *(a1 + 80);
  }

  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(__p, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    *__p = *(a1 + 88);
    v6 = *(a1 + 104);
  }

  (*(*v2 + 40))(v2, a1 + 40, v3, v4, __dst, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__dst[0]);
  }

  *(*(a1 + 112) + 8) = 1;
}

void sub_1006C9678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006C96AC(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    result = sub_100005F2C(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(v3 + 10) = *(a2 + 80);
    *(v3 + 4) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    return sub_100005F2C(v3 + 88, *(a2 + 88), *(a2 + 96));
  }

  v6 = *(a2 + 88);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 88) = v6;
  return result;
}

void sub_1006C9748(_Unwind_Exception *exception_object)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C977C(uint64_t a1)
{
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
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1006C97E4()
{
  v0[0] = 0;
  v0[1] = v0;
  v0[2] = 0x2000000000;
  v1 = 0;
  operator new();
}

void sub_1006C9A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Block_object_dispose((v33 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1006C9A90(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 24) = (*(**(a1 + 40) + 48))(*(a1 + 40), a1 + 48, a1 + 72, a1 + 96);
  v2 = *(a1 + 128);
  *(*(a1 + 120) + 8) = 1;
  dispatch_group_leave(v2);
  v3 = *(a1 + 128);

  dispatch_release(v3);
}

_BYTE *sub_1006C9B14(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 71) < 0)
  {
    result = sub_100005F2C(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v4;
  }

  if (*(a2 + 95) < 0)
  {
    result = sub_100005F2C(v3 + 72, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(v3 + 11) = *(a2 + 88);
    *(v3 + 72) = v5;
  }

  if (*(a2 + 119) < 0)
  {
    return sub_100005F2C(v3 + 96, *(a2 + 96), *(a2 + 104));
  }

  v6 = *(a2 + 96);
  *(v3 + 14) = *(a2 + 112);
  *(v3 + 6) = v6;
  return result;
}

void sub_1006C9BB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9BE4(uint64_t a1)
{
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
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

uint64_t sub_1006C9C4C(uint64_t a1, uint64_t a2, __int128 *a3, _BYTE *a4)
{
  sub_100315388(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v7;
  }

  *(a1 + 96) = *a4;
  return a1;
}

uint64_t sub_1006C9CC8(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1006C9D1C(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, char a5, int a6)
{
  v10 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v11;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = a5;
  *(a1 + 49) = 0;
  if (((sub_1006C9DEC(a1) | a6 ^ 1) & 1) == 0)
  {
    sub_1006C9F30(a1);
  }

  return a1;
}

void sub_1006C9DBC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C9DEC(Registry **a1)
{
  v1 = a1;
  ServiceMap = Registry::getServiceMap(*a1);
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
  v13 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v13);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v11 = 0;
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

  std::mutex::unlock(v3);
  v10 = 0;
  v11 = 1;
  if (!v9)
  {
LABEL_7:
    if (v11)
    {
      return (v9 != 0) & v1;
    }

    goto LABEL_12;
  }

LABEL_11:
  LOBYTE(v1) = (*(*v9 + 24))(v9, v1 + 2, v1 + 5);
  if ((v11 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v10);
  }

  return (v9 != 0) & v1;
}

void sub_1006C9F14(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9F30(uint64_t a1)
{
  if (*(a1 + 49) == 1)
  {
    *(a1 + 49) = 0;
    ServiceMap = Registry::getServiceMap(*a1);
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
    v12 = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, &v12);
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
LABEL_12:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          return;
        }

LABEL_11:
        (*(*v10 + 64))(v10, a1 + 16, *(a1 + 40));
        goto LABEL_12;
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
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_1006CA054(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CA070(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1006CA0B4(uint64_t *a1, int a2)
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
      sub_1006CA32C(a1, &v27, 0, 1);
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
  v8 = sub_1006CA3C4(&v23);
  v22[0] = &v27;
  v22[1] = a1;
  v22[2] = sub_1006CA614(v8);
  v9 = sub_1006CA3C4(&v23);
  v10 = sub_10004AA88((v9 + 16));
  v11 = sub_1006CA3C4(&v23);
  v12 = *(sub_1006CA614(v11) + 8);
  v13 = sub_1006CA3C4(&v23);
  *&v20 = v12;
  *(&v20 + 1) = sub_1006CA614(v13);
  *&v21 = &v27;
  *(&v21 + 1) = *(&v20 + 1);
  sub_1006CA864(&v20);
  v14 = sub_1006CA3C4(&v23);
  v15 = sub_1006CA614(v14);
  v16 = sub_1006CA3C4(&v23);
  *&v18 = v15;
  *(&v18 + 1) = sub_1006CA614(v16);
  *&v19 = &v27;
  *(&v19 + 1) = *(&v18 + 1);
  sub_1006CA864(&v18);
  v26[0] = v20;
  v26[1] = v21;
  v25[0] = v18;
  v25[1] = v19;
  sub_1006CA658(v10, v26, v25);
  sub_1006CAC2C(v22);
  sub_1006CB4E4(&v27);
  return sub_10004A724(&v23 + 1);
}

void sub_1006CA2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1006CA32C(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1006CA3C4(a1);
  v10 = sub_1006CA614(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1006CA3C4(a1);
    v11 = *(sub_1006CA614(v12) + 8);
  }

  v14 = v11;
  return sub_1006CA408(a1, a2, a3, &v14, a4);
}

uint64_t sub_1006CA3C4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1006CA408(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1006CA3C4(a1);
  result = sub_1006CA614(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1006CA520(v10 + 2);
        sub_1006CA564(v15, a2);
        v10 = v22;
      }

      if (*(sub_1006CA520(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1006CA3C4(a1);
        v18 = sub_1006CA614(v17);
        v19 = sub_1006CA520(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1006CA3C4(a1);
      result = sub_1006CA614(v20);
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

uint64_t sub_1006CA520(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1006CA564(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1006CA5D0(result);
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

uint64_t sub_1006CA5D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1006CA614(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1006CA658(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1006CA6E0(a2);
    *a2 = *(*a2 + 8);
    sub_1006CA864(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1006CA6E0(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1006CA780((v2 + 272), (*a1 + 16));
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

uint64_t sub_1006CA780(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1006CA520(a2);
  v3 = (sub_1006CA5D0((v2 + 32)) + 24);

  return sub_1006CA7CC(v3);
}

uint64_t sub_1006CA7CC(void *a1)
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

void sub_1006CA864(uint64_t *a1)
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
      v3 = sub_1006CAAC4((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1006CA520((*a1 + 16));
      sub_1006CAB08(v4, &v14, (a1[2] + 8));
      v5 = sub_1006CA520((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 280);
      }

      else
      {
        ++*(v6 + 284);
      }

      v7 = sub_1006CA520((*a1 + 16));
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
        v13 = sub_1006CAAC4((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1000821A0(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1006CAA88(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CAAC4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1006CAB08(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1006CA5D0(result + 4); ; i += 6)
    {
      result = sub_1006CA5D0(v3);
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

void sub_1006CAC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CAC2C(uint64_t a1)
{
  if (*(*a1 + 284) > *(*a1 + 280))
  {
    sub_1006CAC70(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1006CAC70(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1006CA3C4(a1);
  if (sub_1006CA614(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1006CA3C4(a1);
    v8 = *(sub_1006CA614(v7) + 8);
    sub_1006CA408(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_1006CAE10(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1006CAEB4(&v2, a2);
}

uint64_t sub_1006CAE70(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1006CAEB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1006CAF20(&v2);
}

void sub_1006CAF90(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1006CAFD0(uint64_t result)
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

uint64_t sub_1006CB0EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006CB274(a1, a2);
  sub_1006CB2E0((v4 + 3), a2 + 24);
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

void *sub_1006CB274(void *result, uint64_t a2)
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

uint64_t sub_1006CB2E0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1006CB348(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1006CB3B4(&v2);
}

void sub_1006CB424(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1006CB464(uint64_t result)
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

uint64_t sub_1006CB4E4(uint64_t a1)
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

void sub_1006CB5BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_1006CB660(void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E72028;
  sub_1006C713C((a1 + 3), a2);
  return a1;
}

void sub_1006CB6DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E72028;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1006CB75C(ATCSDPCQueue::Callback *a1)
{
  ATCSDPCQueue::Callback::~Callback(a1);

  operator delete();
}

uint64_t sub_1006CB794(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

void sub_1006CB7F4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1006CB98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v15 = *(v11 + 8);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CB9C8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (!v8)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v10 = 0;
    v11 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v8[3];
  v10 = v8[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v11 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 1312))(v9, *(a1 + 32), *(a1 + 16));
  }

LABEL_11:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    sub_100004A34(v12);
  }

  return a1;
}

void sub_1006CBB14(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1006CBB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006CBBA8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1006CBBA8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1006CB9C8(v2);
    operator delete();
  }

  return a1;
}

void sub_1006CBBF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006CBC2C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1006CB9C8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006CBC70(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1006CBCB0(void *a1, uint64_t a2, NSObject **a3)
{
  v4 = *a3;
  *a1 = a2;
  a1[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a1[4] = 0;
  a1[3] = 0;
  a1[2] = a1 + 3;
  return a1;
}

uint64_t sub_1006CBCF4(uint64_t a1)
{
  sub_1002472DC(a1 + 16, *(a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1006CBD34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A6C(a1 + 16, a2);
  if ((a1 + 24) != v4)
  {
    v5 = v4;
    sub_1000194D8((a1 + 16), v4);
    sub_1000D57F4((v5 + 4));
    operator delete(v5);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__dst, v7[0], v7[1]);
  }

  else
  {
    *__dst = *v7;
    v12 = v8;
  }

  v10 = 0;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v14 = v12;
  }

  v15 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v10;
    v10 = v15;
    v16 = v6;
    sub_100005978(&v16);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v10;
  v10 = 0;
  sub_100005978(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_1006CC0D4();
}

void sub_1006CBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_1006CBF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v6 = 0;
  sub_10066984C(v9, a3);
  sub_1006CBD34(a1, __p);
}

void sub_1006CC008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_1006646F0(&a22);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006CC040(uint64_t a1)
{
  v4 = 0uLL;
  v5 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v3 = 0;
  sub_1000D5848((a1 + 16), __p);
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006CC0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CC178(uint64_t a1, const __CFString **a2, const void **a3, NSObject **a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_101E72170;
  sub_1006CC254((a1 + 24), a2, a3, a4, a5);
  return a1;
}

void sub_1006CC1F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E72170;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

CFStringRef *sub_1006CC254(CFStringRef *a1, const __CFString **a2, const void **a3, NSObject **a4, uint64_t a5)
{
  v8 = *a2;
  sub_10005C7A4(&v12, a3);
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_10066984C(v13, a5);
  sub_1006CC344(a1, v8, &v12, &object, v13);
  sub_1006646F0(v13);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&v12);
  return a1;
}

void sub_1006CC31C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, const void *a11, __int16 a12, char a13, char a14)
{
  sub_1006646F0(&a12);
  if (object)
  {
    dispatch_release(object);
  }

  sub_100005978(&a11);
  _Unwind_Resume(a1);
}

CFStringRef *sub_1006CC344(CFStringRef *a1, const __CFString *a2, const void **a3, CFStringRef *a4, uint64_t a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = a2;
  sub_10005C7A4(a1 + 3, a3);
  a1[4] = *a4;
  *a4 = 0;
  sub_10066984C((a1 + 5), a5);
  CFNotificationCenterAddObserver(a1[2], a1, sub_1006CC3FC, a1[3], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  return a1;
}

void sub_1006CC3C8(_Unwind_Exception *a1)
{
  sub_1006646F0(v1 + 40);
  v3 = *(v1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  sub_100005978((v1 + 24));
  v4 = *(v1 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1006CC3FC(int a1, void *a2, int a3, int a4, ctu *this)
{
  if (a2 && a2[8])
  {
    ctu::cf_to_xpc(&object, this, a2);
    v6 = object;
    if (object && xpc_get_type(object) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    xpc_release(object);
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      xpc_null_create();
    }

    v7 = a2[1];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }
}

uint64_t *sub_1006CC544(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    xpc_release(*v1);
    *v1 = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_1006CC5A8(uint64_t a1)
{
  v2 = a1;
  sub_1006CC5F0(a1);
  return sub_1006CC544(&v2);
}

void sub_1006CC5DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1006CC544(va);
  _Unwind_Resume(a1);
}

void sub_1006CC5F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *a1;
        object = v6;
        if (v6)
        {
          xpc_retain(v6);
        }

        else
        {
          object = xpc_null_create();
        }

        v7 = *(v5 + 64);
        if (!v7)
        {
          sub_100022DB4();
        }

        (*(*v7 + 48))(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1006CC6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void *sub_1006CC6D0(void *observer)
{
  CFNotificationCenterRemoveObserver(*(observer + 2), observer, *(observer + 3), 0);
  sub_1006646F0(observer + 40);
  v2 = *(observer + 4);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_100005978(observer + 3);
  v3 = *(observer + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return observer;
}

uint64_t sub_1006CC738(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1006CC7E4();
  }

  return v2;
}

char *sub_1006CC864(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  return __dst;
}

uint64_t sub_1006CC8C4(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_101E721C0;
  return result;
}

void sub_1006CC8EC(uint64_t a1)
{
  *a1 = off_101E721C0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1006CC97C(uint64_t a1)
{
  sub_1006CC8EC(a1);

  operator delete();
}

uint64_t sub_1006CC9B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 24));
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "info");
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 28));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1006CCA80(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_58;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 32) |= 1u;
          v28 = *(this + 1);
          v27 = *(this + 2);
          v29 = *this;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v36 = 0;
            v37 = 0;
            v32 = 0;
            v17 = v27 >= v28;
            v38 = v27 - v28;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v29 + v28);
            v40 = v28 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v32) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v32 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v32) = 0;
                goto LABEL_53;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v32) = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(this + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 24) = v32;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 2u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 28) = v26;
          goto LABEL_54;
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1006CCE4C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 32);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 28), 2u);
    v5 = *(v3 + 32);
  }

  if (v5)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 24), 3u);
  }

  v6 = *(v3 + 16);
  if (v6)
  {

    return PB::Writer::writeSubmessage(this, v6, 4u);
  }

  return result;
}

uint64_t sub_1006CCEE0(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t MMSDataContextController::MMSDataContextController(uint64_t a1, NSObject **a2, void *a3, int a4, void *a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "msg.mms.dcc");
  sub_1006CD158((a1 + 8), "msg.mms.dcc", QOS_CLASS_USER_INITIATED, &object, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  if (object)
  {
    dispatch_release(object);
  }

  v15[0] = off_101E2B528;
  v15[1] = sub_1000A7C18;
  v15[3] = v15;
  sub_1006CD298((a1 + 48));
  sub_1000A8744(v15);
  *a1 = off_101E72228;
  *(a1 + 56) = a4;
  v10 = a3[1];
  *(a1 + 64) = *a3;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  *(a1 + 80) = *a5;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  return a1;
}

void sub_1006CD104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, char a12)
{
  sub_1000A8744(&a12);
  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(v12);
  ctu::OsLogLogger::~OsLogLogger((v12 + 5));
  sub_1000C0544(v12 + 1);
  _Unwind_Resume(a1);
}

void *sub_1006CD158(void *a1, const char *a2, dispatch_qos_class_t qos_class, dispatch_object_t *a4, const OsLogContext *a5)
{
  v9 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
    v10 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2(a2, v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    v11 = dispatch_queue_create(a2, v12);
  }

  v13 = v11;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  a1[3] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v9)
  {
    dispatch_release(v9);
    dispatch_release(v9);
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(v15, a5);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  return a1;
}

void sub_1006CD274(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1006CD298(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1006CD3F0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_1006CD568(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void MMSDataContextController::activateDataContext(MMSDataContextController *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v3[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attempting to activate data context", v3, 2u);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, this + 1);
  operator new();
}

void MMSDataContextController::initializeDataContextActivationCycle_sync(MMSDataContextController *this)
{
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  Registry::getTimerService(&v3, *(this + 8));
  *(this + 13) = (**v3)(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  *(this + 14) = 0;
}

void sub_1006CD78C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::dataContextActivationCycle_sync(MMSDataContextController *this)
{
  v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 14);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Data context activation cycle running with total time: %lld", &buf, 0xCu);
  }

  v5 = *(this + 14);
  if (v5 >= 120)
  {
    v6 = *v2;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Gave up on data context to become active after %lld seconds", &buf, 0xCu);
    }

    (*(**(this + 10) + 16))(*(this + 10), *(this + 14));
    MMSDataContextController::activateDataContext(this);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
  if (!v13)
  {
    v15 = 0;
LABEL_17:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_13;
    }

LABEL_18:
    v18 = *(this + 14);
    sub_10000501C(__p, "( CommCenter) Activating PDP context");
    (*(*v15 + 88))(v15, v18, 4, 1, __p, 0, 0);
    if (v31 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_20;
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

LABEL_13:
  v17 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_10177A490(v17);
  }

  (*(**(this + 10) + 24))(*(this + 10), *(this + 14));
LABEL_20:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v15)
  {
    Registry::getTimerService(&buf, *(this + 8));
    v19 = buf;
    sub_10000501C(v27, "Data context wait timer");
    v20 = *(this + 3);
    object = v20;
    if (v20)
    {
      dispatch_retain(v20);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1006CDC4C;
    aBlock[3] = &unk_101E72258;
    aBlock[4] = this;
    aBlock[5] = v2;
    v25 = _Block_copy(aBlock);
    sub_100D23364(v19, v27, 0, 60000000, &object, &v25);
    v21 = v29;
    v29 = 0;
    v22 = *(this + 12);
    *(this + 12) = v21;
    if (v22)
    {
      (*(*v22 + 8))(v22);
      v23 = v29;
      v29 = 0;
      if (v23)
      {
        (*(*v23 + 8))(v23);
      }
    }

    if (v25)
    {
      _Block_release(v25);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }
  }
}

void sub_1006CDBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CDC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (!v3)
  {
    return;
  }

  *(v2 + 96) = 0;
  (*(*v3 + 8))(v3);
  ServiceMap = Registry::getServiceMap(*(v2 + 64));
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
  v20 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v20);
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
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_10:
  v14 = (*(*v12 + 40))(v12, *(v2 + 56));
  v15 = v14;
  if (v14)
  {
    v16 = **(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Data context wait finished, and data context is active. Ending cycle.", buf, 2u);
    }
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if ((v15 & 1) == 0)
  {
    v17 = **(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Data context activation wait finished, trying again", v18, 2u);
    }

    MMSDataContextController::updateTotalWaitTime_sync(v2);
    (*(**(v2 + 80) + 32))(*(v2 + 80), *(v2 + 56), *(v2 + 112));
    MMSDataContextController::dataContextActivationCycle_sync(v2);
  }
}

void sub_1006CDE5C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::updateTotalWaitTime_sync(Registry **this)
{
  Registry::getTimerService(&v2, this[8]);
  this[14] = (((**v2)(v2) - this[13]) / 1000000000);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1006CDF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void MMSDataContextController::endActivationCycle(MMSDataContextController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void MMSDataContextController::restartActivationCycle(MMSDataContextController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

MMSDataContextControllerInterface *sub_1006CE0E8(MMSDataContextControllerInterface *this)
{
  *this = off_101E72228;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_1006CE1B8(MMSDataContextControllerInterface *this)
{
  *this = off_101E72228;
  v2 = *(this + 12);
  *(this + 12) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  MMSDataContextControllerInterface::~MMSDataContextControllerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  operator delete();
}

void sub_1006CE328(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1006CE3FC);
  __cxa_rethrow();
}

void sub_1006CE368(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1006CE3BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006CE3FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_1006CE428(MMSDataContextController ***a1)
{
  v2 = a1;
  v1 = **a1;
  MMSDataContextController::initializeDataContextActivationCycle_sync(v1);
  MMSDataContextController::updateTotalWaitTime_sync(v1);
  MMSDataContextController::dataContextActivationCycle_sync(v1);
  operator delete();
}

void sub_1006CE4BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *(v1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Ending data context activation cycle", buf, 2u);
  }

  v3 = *(v1 + 96);
  *(v1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  operator delete();
}

void sub_1006CE5D0(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *(v1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Restarting data context activation cycle", buf, 2u);
  }

  MMSDataContextController::activateDataContext(v1);
}

void DataConnectionAgent::startDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D309C;
  v4[3] = &unk_101E728F8;
  v5 = a2;
  v6 = this;
  v3 = v5;
  sub_1006DC254(this + 32, v4);
}

void DataConnectionAgent::assertDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D34AC;
  v5[3] = &unk_101E72920;
  v8 = a3;
  v6 = a2;
  v7 = this;
  v4 = v6;
  sub_1006DC254(this + 32, v5);
}

void DataConnectionAgent::unassertDataAgentWithOptions(DataConnectionAgent *this, NSDictionary *a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006D51D8;
  v5[3] = &unk_101E72920;
  v8 = a3;
  v6 = a2;
  v7 = this;
  v4 = v6;
  sub_1006DC254(this + 32, v5);
}

uint64_t sub_1006CEFE4(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKey:NWNetworkAgentStartOptionClientUUID];
  v3 = v2;
  if (v2)
  {
    v23[0] = 0;
    v23[1] = 0;
    [v2 getUUIDBytes:v23];
    v4 = nw_path_copy_path_for_client();
    if (v4)
    {
      v5 = nw_path_copy_parameters();
      pid = nw_parameters_get_pid();
      *v19 = 0u;
      v20 = 0u;
      xpc_generate_audit_token();
      v7 = xpc_copy_entitlement_for_token();
      v18 = v7;
      v8 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v18 = v8;
      }

      if (xpc_get_type(v8) == &_xpc_type_null || xpc::is_logically_false(&v18, v9))
      {
        v10 = sub_10002026C();
        v11 = sub_100032AC8(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = pid;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process is not entitled!! (pid %d)", buf, 8u);
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v16 = v18;
      v18 = 0;
    }

    else
    {
      v15 = sub_10002026C();
      v5 = sub_100032AC8(v15);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process cannot be found", v19, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = sub_10002026C();
    v14 = sub_100032AC8(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N NWAgent Bootstrap start forbidden as originating process UUID cannot be found", v19, 2u);
    }

    v12 = 0;
  }

  return v12;
}

void sub_1006CF248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataConnectionAgent::DataConnectionAgent(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, id *a7, void *a8)
{
  (*(*(a8 + *(*a8 - 56)) + 16))(&v25);
  PersonalitySpecificImpl::PersonalitySpecificImpl();
  if (v26)
  {
    sub_100004A34(v26);
  }

  v14 = a3[1];
  v23 = *a3;
  v24 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *a7;
  DataConnectionAgentInterface::DataConnectionAgentInterface();
  v15 = v22;
  v22 = 0;

  if (v24)
  {
    sub_100004A34(v24);
  }

  *(a1 + 104) = off_101E72BC0;
  v16 = *a2;
  *a1 = *a2;
  *(a1 + *(v16 - 56)) = a2[5];
  v17 = a2[6];
  *(a1 + 176) = 0;
  *(a1 + 24) = v17;
  *(a1 + 104) = off_101E72B60;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 155) = 0u;
  v18 = a3[1];
  v20 = *a3;
  v21 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*(a8 + *(*a8 - 56)) + 16))(&v25);
  DataConnectionAgentPolicyInterface::create(&v20, &v25, (a1 + 200));
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  *(a1 + 216) = 0;
  *(a1 + 220) = a4;
  *(a1 + 224) = 0;
  *(a1 + 232) = *a7;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 255) = 0;
  *(a1 + 246) = a4;
  *(a1 + 257) = a4;
  *(a1 + 304) = 0;
  *(a1 + 264) = a8;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  DataConnectionAgent::initAgent(a1, 0, 0, 0);
  DataConnectionAgent::updateAgent(a1, 1);
  return a1;
}

void sub_1006CF678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v16 + 199) < 0)
  {
    operator delete(*v18);
  }

  if (*(v16 + 167) < 0)
  {
    operator delete(*(v16 + 144));
  }

  DataConnectionAgentInterface::~DataConnectionAgentInterface(v17);
  PersonalitySpecificImpl::~PersonalitySpecificImpl(v16);
  _Unwind_Resume(a1);
}

void sub_1006CF6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  JUMPOUT(0x1006CF6E8);
}

void sub_1006CF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  JUMPOUT(0x1006CF6F4);
}

void sub_1006CF738()
{
  sub_1006D71D4((v0 + 304), 0);
  sub_1006D5174((v0 + 272), 0);
  sub_10031F3F4(v1);

  if (!*(v0 + 208))
  {
    JUMPOUT(0x1006CF69CLL);
  }

  JUMPOUT(0x1006CF698);
}

void DataConnectionAgent::~DataConnectionAgent(DataConnectionAgent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 56)) = a2[5];
  *(this + 3) = a2[6];
  *(this + 13) = off_101E72B60;
  v4 = *(this + 25);
  if (v4)
  {
    (*(*v4 + 80))(v4);
  }

  DataConnectionAgent::deinitAgent(this);
  v5 = *(this + 28);
  *(this + 28) = 0;

  sub_1006D71D4(this + 38, 0);
  sub_1006D5174(this + 34, 0);
  v6 = *(this + 29);
  *(this + 29) = 0;

  v7 = *(this + 26);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  DataConnectionAgentInterface::~DataConnectionAgentInterface((this + 24));

  PersonalitySpecificImpl::~PersonalitySpecificImpl(this);
}

uint64_t DataConnectionAgentCellularDataPlanProvisioning::DataConnectionAgentCellularDataPlanProvisioning(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, id *a5, void *a6, int a7)
{
  v10 = a2[1];
  v13[0] = *a2;
  v13[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a7)
  {
    v11 = "DATA.agent.provisioning2";
  }

  else
  {
    v11 = "DATA.agent.provisioning";
  }

  DataConnectionAgent::DataConnectionAgent(a1, off_101E72620, v13, a3, v11, a4, a5, a6);
  if (v10)
  {
    sub_100004A34(v10);
  }

  *a1 = off_101E72418;
  *(a1 + 24) = off_101E72530;
  *(a1 + 104) = off_101E72600;
  *(a1 + 360) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 361) = a7;
  return a1;
}

void sub_1006CFA88(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  PersonalitySpecific::~PersonalitySpecific(v1);
  _Unwind_Resume(a1);
}

void DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 56)) = a2[8];
  *(this + 3) = a2[9];
  *(this + 13) = off_101E72600;
  v5 = *(this + 40);
  if (v5)
  {
    *(this + 40) = 0;
  }

  v6 = *(this + 41);
  if (v6)
  {
    *(this + 41) = 0;
  }

  v7 = *(this + 43);
  if (v7)
  {
    *(this + 43) = 0;
  }

  v8 = *(this + 44);
  if (v8)
  {
    *(this + 44) = 0;
  }

  v9 = *(this + 42);
  if (v9)
  {
    *(this + 42) = 0;
  }

  sub_10001021C(this + 39);

  DataConnectionAgent::~DataConnectionAgent(this, a2 + 1);
}

void DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void non-virtual thunk toDataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning(DataConnectionAgentCellularDataPlanProvisioning *this)
{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{

  PersonalitySpecific::~PersonalitySpecific(v1);
}

{
  DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning((this - 24));
}

{
  DataConnectionAgentCellularDataPlanProvisioning::~DataConnectionAgentCellularDataPlanProvisioning((this - 104));
}

void DataConnectionAgentCellularDataPlanProvisioning::setPolicyOverride(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (*(this + 361) == *(this + 360))
  {
    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackAgent(this);

    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(this);
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupFallbackAgent(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (!*(this + 43))
  {
    v2 = [NEPathControllerNetworkAgent alloc];
    if (*(this + 361))
    {
      v3 = @"CellularDataPlanProvisioning2";
    }

    else
    {
      v3 = @"CellularDataPlanProvisioning";
    }

    v4 = [v2 initWithAdvisoryAgentDomain:@"Cellular" agentType:v3 advisoryMode:3];
    v5 = *(this + 43);
    *(this + 43) = v4;

    [*(this + 43) setActive:1];
    [*(this + 43) setVoluntary:0];
    [*(this + 43) setUserActivated:0];
    [*(this + 43) setKernelActivated:0];
    v6 = +[NSUUID UUID];
    [*(this + 43) setAgentUUID:v6];

    v7 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(this + 43) agentUUID];
      v9 = [v8 UUIDString];
      v16 = 136446210;
      v17 = [v9 UTF8String];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I NWAgent: created fallback agent: %{public}s", &v16, 0xCu);
    }
  }

  if (!*(this + 44))
  {
    v10 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
    v11 = *(this + 44);
    *(this + 44) = v10;

    v12 = [*(this + 44) registerNetworkAgent:*(this + 43)];
    v13 = sub_100032AC8(this + 8);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v14)
      {
        LOWORD(v16) = 0;
        v15 = "#I NWAgent: registered fallback agent";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, &v16, 2u);
      }
    }

    else if (v14)
    {
      LOWORD(v16) = 0;
      v15 = "#N NWAgent: fallback agent registration failed";
      goto LABEL_14;
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (!*(this + 42))
  {
    v2 = objc_alloc_init(NEPolicySession);
    v3 = *(this + 42);
    *(this + 42) = v2;

    [*(this + 42) setPriority:301];
    v4 = [NEPolicyCondition accountIdentifier:@"com.apple.CommCenter.DataPlanProvisioning"];
    v5 = [*(this + 43) agentUUID];
    v6 = [NEPolicyResult netAgentUUID:v5];

    v7 = [NEPolicy alloc];
    v28 = v4;
    v8 = [NSArray arrayWithObjects:&v28 count:1];
    v9 = [v7 initWithOrder:10 result:v6 conditions:v8];

    [*(this + 42) addPolicy:v9];
    if (*(this + 40))
    {
      v10 = [NEPolicyCondition accountIdentifier:@"com.apple.CommCenter.DataPlanProvisioning"];
      v11 = [*(this + 40) agentUUID];
      v12 = [NEPolicyResult netAgentUUID:v11];

      v13 = [NEPolicy alloc];
      v14 = +[NEPolicyCondition allInterfaces];
      v27[0] = v14;
      v27[1] = v10;
      v15 = [NSArray arrayWithObjects:v27 count:2];
      v16 = [v13 initWithOrder:15 result:v12 conditions:v15];

      [*(this + 42) addPolicy:v16];
    }

    if (([*(this + 42) apply] & 1) == 0)
    {
      v17 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N NWAgent: policy apply failed", &v23, 2u);
      }
    }

    v18 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (this + 144);
      if (*(this + 167) < 0)
      {
        v19 = *v19;
      }

      v20 = [*(this + 42) description];
      v21 = v20;
      v22 = [v20 UTF8String];
      v23 = 136446466;
      v24 = v19;
      v25 = 2080;
      v26 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I NWAgent: registered fallback policy uuid %{public}s, session %s", &v23, 0x16u);
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::unsetFallbackPolicy(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    *(this + 42) = 0;

    v3 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I NWAgent: unregistered fallback policy", v4, 2u);
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setProxy(id *a1, id *a2)
{
  v6 = a1[39];
  v4 = *a2;
  if (a1[39] == 0) == (*a2 == 0) && (v6 ? (v5 = v4 == 0) : (v5 = 1), v5 || ([v6 isEqualToDictionary:v4]))
  {
    sub_1000676D4(a1 + 39, a2);
  }

  else
  {
    sub_1000676D4(a1 + 39, a2);
    DataConnectionAgentCellularDataPlanProvisioning::setupProxyAgent(a1);
    DataConnectionAgentCellularDataPlanProvisioning::unsetFallbackPolicy(a1);
    DataConnectionAgentCellularDataPlanProvisioning::setupFallbackPolicy(a1);
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::setupProxyAgent(DataConnectionAgentCellularDataPlanProvisioning *this)
{
  if (*(this + 39))
  {
    if (!*(this + 40))
    {
      v2 = [[NEProxyConfigurationNetworkAgent alloc] initWithProxyConfiguration:*(this + 39)];
      v3 = *(this + 40);
      *(this + 40) = v2;

      [*(this + 40) setActive:1];
      [*(this + 40) setVoluntary:0];
      [*(this + 40) setUserActivated:0];
      [*(this + 40) setKernelActivated:0];
      v4 = +[NSUUID UUID];
      [*(this + 40) setAgentUUID:v4];

      v5 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [*(this + 40) agentUUID];
        v7 = [v6 UUIDString];
        v18 = 136446210;
        v19 = [v7 UTF8String];
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I NWAgent: provisioning: proxy agent created %{public}s", &v18, 0xCu);
      }
    }

    v8 = *(this + 41);
    if (!v8)
    {
      v9 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
      v10 = *(this + 41);
      *(this + 41) = v9;

      v8 = *(this + 41);
    }

    if (([v8 isRegistered] & 1) == 0)
    {
      v11 = [*(this + 41) registerNetworkAgent:*(this + 40)];
      v12 = sub_100032AC8(this + 8);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          LOWORD(v18) = 0;
          v14 = "#I NWAgent: provisioning: registered proxy agent";
LABEL_20:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &v18, 2u);
        }
      }

      else if (v13)
      {
        LOWORD(v18) = 0;
        v14 = "#I NWAgent: provisioning: proxy agent add to pdp 0 fail";
        goto LABEL_20;
      }

LABEL_21:
    }
  }

  else
  {
    v15 = *(this + 41);
    if (v15)
    {
      [v15 unregisterNetworkAgent];
      v16 = sub_100032AC8(this + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I NWAgent: provisioning: proxy agent unregistered", &v18, 2u);
      }

      v17 = *(this + 41);
      *(this + 41) = 0;
    }

    v12 = *(this + 40);
    if (v12)
    {
      *(this + 40) = 0;
      goto LABEL_21;
    }
  }
}

void DataConnectionAgentCellularDataPlanProvisioning::switchFallbackPolicy(DataConnectionAgentCellularDataPlanProvisioning *this, int a2)
{
  if (*(this + 360) != a2)
  {
    v2 = a2;
    v4 = sub_100032AC8(this + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asStringBool(*(this + 360));
      v6 = 136315394;
      v7 = v5;
      v8 = 2080;
      v9 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I NWAgent: switchFallbackPolicy: fIsSecondaryEnabled: %s->%s", &v6, 0x16u);
    }

    *(this + 360) = v2;
    DataConnectionAgent::initPolicy(this, 0);
  }
}