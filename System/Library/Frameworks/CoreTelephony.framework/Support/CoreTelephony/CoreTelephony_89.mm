void sub_1005C2B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a29);
  sub_100004A34(v29);
  sub_1005C2BE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C2BE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1005C2C4C(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_82:
        sub_100004A34(v5);
        goto LABEL_83;
      }

      v6 = *(v1 + 48);
      v7 = *(v3 + 48);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 2)
      {
        if (v8)
        {
          v9 = sub_100A43314(*(v1 + 56));
          *buf = 136315138;
          v74 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [FetchSubscriptionInfoReq] IDS Failure [%s]", buf, 0xCu);
          v10 = *(v1 + 48);
          if (v10 != 2)
          {
            if (v10 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v46 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v46 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v47, v46);
          }
        }

        v11 = sub_1005AD768(*(v1 + 56));
        buf[0] = 2;
        BYTE4(v74) = v11;
        v12 = *(v1 + 184);
        if (!v12)
        {
          sub_100022DB4();
        }

        (*(*v12 + 48))(v12, buf);
        if (buf[0] == 1)
        {
          if (v89 < 0)
          {
            operator delete(__p);
          }

          if (v87 < 0)
          {
            operator delete(v86);
          }

          if (v85 < 0)
          {
            operator delete(v84);
          }

          if (v83 < 0)
          {
            operator delete(v82);
          }

          if (v81 < 0)
          {
            operator delete(v80);
          }

          if (v79 < 0)
          {
            operator delete(v78);
          }

          if (v77 < 0)
          {
            operator delete(*&v76[2]);
          }
        }

        buf[0] = 0;
        goto LABEL_82;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [FetchSubscriptionInfoRsp]", buf, 2u);
        v6 = *(v1 + 48);
      }

      if (v6 != 1)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        if (v6 == 2)
        {
          v40 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v39);
        }

        else
        {
          v40 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(v39);
        }

        __cxa_throw(v39, v41, v40);
      }

      v13 = *(v1 + 144);
      if (*(v1 + 103) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 80), *(v1 + 88));
      }

      else
      {
        *__dst = *(v1 + 80);
        v72 = *(v1 + 96);
      }

      (*(*v13 + 56))(v13, __dst);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__dst[0]);
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      memset(v64, 0, sizeof(v64));
      sub_100A34C5C(v64);
      memset(v63, 0, sizeof(v63));
      v14 = *(v1 + 48);
      if (v14 == 1)
      {
        BytePtr = CFDataGetBytePtr(*(v1 + 112));
        v16 = *(v1 + 48);
        if (v16 == 1)
        {
          v17 = BytePtr;
          Length = CFDataGetLength(*(v1 + 112));
          PB::Reader::Reader(v63, v17, Length);
          if (sub_100A353F0(v64, v63))
          {
            v19 = *(&v65 + 1);
            if ((*(*(&v65 + 1) + 32) & 1) == 0)
            {
              v20 = *(*(&v65 + 1) + 16);
              v21 = (v1 + 24);
              v22 = *(v20 + 31);
              if (v22 >= 0)
              {
                v23 = *(v20 + 31);
              }

              else
              {
                v23 = *(v20 + 16);
              }

              v24 = *(v1 + 47);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = *(v1 + 32);
              }

              if (v23 == v24)
              {
                v26 = v22 >= 0 ? (v20 + 8) : *(v20 + 8);
                v27 = (v25 >= 0 ? v1 + 24 : *v21);
                if (!memcmp(v26, v27, v23))
                {
                  memset(&__str, 0, sizeof(__str));
                  ctu::hex(&__str, **(v19 + 8), *(*(v19 + 8) + 8), v28);
                  *v60 = 0u;
                  v61 = 0u;
                  *v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  *v57 = 0u;
                  *v54 = 0u;
                  *v55 = 0u;
                  *v52 = 0u;
                  v53 = 0u;
                  *v50 = 0u;
                  v51 = 0u;
                  BYTE9(v61) = 1;
                  sub_10039FA34(*(*(&v65 + 1) + 16), v50);
                  std::string::operator=(&v50[1], &__str);
                  buf[0] = 0;
                  sub_100330430(buf, v50);
                  v38 = *(v1 + 184);
                  if (!v38)
                  {
                    sub_100022DB4();
                  }

                  (*(*v38 + 48))(v38, buf);
                  if (buf[0] == 1)
                  {
                    sub_10011289C(&v74 + 4);
                  }

                  buf[0] = 0;
                  if (SBYTE7(v61) < 0)
                  {
                    operator delete(v60[0]);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58[1]);
                  }

                  if (SHIBYTE(v58[0]) < 0)
                  {
                    operator delete(v57[0]);
                  }

                  if (SHIBYTE(v56) < 0)
                  {
                    operator delete(v55[1]);
                  }

                  if (SHIBYTE(v55[0]) < 0)
                  {
                    operator delete(v54[0]);
                  }

                  if (SBYTE7(v53) < 0)
                  {
                    operator delete(v52[0]);
                  }

                  if (SHIBYTE(v51) < 0)
                  {
                    operator delete(v50[1]);
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_81;
                }
              }

              v29 = *(v3 + 48);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = (v20 + 8);
                if (v22 < 0)
                {
                  v30 = *v30;
                }

                if (v25 < 0)
                {
                  v21 = *v21;
                }

                *buf = 136315394;
                v74 = v30;
                v75 = 2080;
                *v76 = v21;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E ICCID mismatch, received (%s), expected (%s) - ignoring", buf, 0x16u);
              }

              buf[0] = 2;
              BYTE4(v74) = 14;
              v31 = *(v1 + 184);
              if (!v31)
              {
                sub_100022DB4();
              }

              (*(*v31 + 48))(v31, buf);
              if (buf[0] == 1)
              {
                sub_10011289C(&v74 + 4);
              }

LABEL_80:
              buf[0] = 0;
LABEL_81:
              sub_100A34FF0(v64);
              goto LABEL_82;
            }

            v34 = *(*(&v65 + 1) + 24);
            v35 = *(v3 + 48);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = asString();
              *buf = 136315138;
              v74 = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E Response with error (%s) - ignoring", buf, 0xCu);
            }

            buf[0] = 2;
            BYTE4(v74) = v34;
            v33 = *(v1 + 184);
            if (!v33)
            {
              sub_100022DB4();
            }
          }

          else
          {
            v32 = *(v3 + 48);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Malformed Message - ignoring", buf, 2u);
            }

            buf[0] = 2;
            BYTE4(v74) = 13;
            v33 = *(v1 + 184);
            if (!v33)
            {
              sub_100022DB4();
            }
          }

          (*(*v33 + 48))(v33, buf);
          if (buf[0] == 1)
          {
            if (v89 < 0)
            {
              operator delete(__p);
            }

            if (v87 < 0)
            {
              operator delete(v86);
            }

            if (v85 < 0)
            {
              operator delete(v84);
            }

            if (v83 < 0)
            {
              operator delete(v82);
            }

            if (v81 < 0)
            {
              operator delete(v80);
            }

            if (v79 < 0)
            {
              operator delete(v78);
            }

            if (v77 < 0)
            {
              operator delete(*&v76[2]);
            }
          }

          goto LABEL_80;
        }

        if (v16 == 2)
        {
          goto LABEL_108;
        }
      }

      else if (v14 == 2)
      {
LABEL_108:
        v42 = __cxa_allocate_exception(0x10uLL);
        v43 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v42);
        goto LABEL_115;
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      v43 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v42);
LABEL_115:
      __cxa_throw(v42, v44, v43);
    }
  }

LABEL_83:
  sub_1005C3620(&v49);
  return sub_1000049E0(&v48);
}

void sub_1005C34FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a68 == 1)
  {
    sub_10011289C(&a69);
  }

  a68 = 0;
  sub_10011289C(&a11);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a46);
  sub_100004A34(v69);
  sub_1005C3620(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C3620(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10032B980(v1 + 160);
    v2 = *(v1 + 152);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 48);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void sub_1005C36A0(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_1005C3714((a1 + 8), a2);
  }

  else
  {
    sub_10011282C(a1);
    *a1 = 1;

    sub_1005C38B8((a1 + 8), a2);
  }
}

void sub_1005C3714(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {

      sub_100F11730(a1, a2);
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 80) == 1)
    {
      v5 = (a1 + 56);
      sub_100112120(&v5);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a1 + 80) = 1;
    }

    *(a1 + 88) = 1;
  }
}

__n128 sub_1005C3814(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100114B30(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100112120(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1005C38B8(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v2 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v2;
    v3 = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    *(result + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(result + 56) = 0;
    *(result + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = *(a2 + 56);
      *(result + 72) = *(a2 + 72);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(result + 80) = 1;
    }

    *(result + 88) = 1;
  }

  return result;
}

uint64_t *sub_1005C3938(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
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
        v6 = *(v1 + 24);
        v7 = *(v3 + 48);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [CancelTransferProfileReq] IDS Failure [%s]", buf, 0xCu);
            v10 = *(v1 + 24);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v28, v27);
            }
          }

          v11 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v11;
          v12 = *(v1 + 144);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferCancel");
          v13 = *(v1 + 24);
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v23);
            }

            else
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v23);
            }

            __cxa_throw(v23, v25, v24);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [CancelTransferProfileRsp]", buf, 2u);
            v6 = *(v1 + 24);
          }

          v44 = 0u;
          memset(v45, 0, sizeof(v45));
          memset(v43, 0, sizeof(v43));
          *buf = 0u;
          if (v6 != 1)
          {
            v17 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v18 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v17);
            }

            else
            {
              v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v17);
            }

            __cxa_throw(v17, v19, v18);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v43[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v43 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v43 + 8) = *(v1 + 56);
            *(&v43[1] + 1) = *(v1 + 72);
          }

          LOWORD(v44) = *(v1 + 80);
          sub_10002D728(&v44 + 1, (v1 + 88));
          sub_1002030F8(v45, (v1 + 96));
          *&v45[14] = *(v1 + 110);
          *&v45[8] = *(v1 + 104);
          v14 = *(v1 + 24);
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
            }

            else
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
            }

            __cxa_throw(v20, v22, v21);
          }

          v15 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v40 = *(v1 + 72);
          }

          (*(*v15 + 56))(v15, __p);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v43[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v32 = *&v43[0];
          }

          if (SHIBYTE(v43[1]) < 0)
          {
            sub_100005F2C(&v33, *(&v43[0] + 1), *&v43[1]);
          }

          else
          {
            v33 = *(v43 + 8);
            v34 = *(&v43[1] + 1);
          }

          v35 = v44;
          v36 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            CFRetain(*(&v44 + 1));
          }

          v37 = *v45;
          if (*v45)
          {
            CFRetain(*v45);
          }

          v38[0] = *&v45[8];
          *(v38 + 6) = *&v45[14];
          sub_1001135B0(v41, v1 + 120);
          sub_1005BFC4C(v3, (v1 + 168), __dst, v41);
          sub_100113648(v41);
          sub_1002030AC(&v37);
          sub_10002D760(&v36);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v45);
          sub_10002D760(&v44 + 1);
          if (SHIBYTE(v43[1]) < 0)
          {
            operator delete(*(&v43[0] + 1));
          }
        }

        if (SBYTE7(v43[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C3FD8(&v30);
  return sub_1000049E0(&v29);
}

void sub_1005C3ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C3FD8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C3FD8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 191) < 0)
    {
      operator delete(*(v1 + 168));
    }

    v2 = *(v1 + 160);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100113648(v1 + 120);
    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1005C4058(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
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
        v6 = *(v1 + 24);
        if (v6 == 2)
        {
          v7 = *(v3 + 48);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [GenericTransferPayloadRsp] IDS Failure [%s]", buf, 0xCu);
            v9 = *(v1 + 24);
            if (v9 != 2)
            {
              if (v9 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v24 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v25, v24);
            }
          }

          v10 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v10;
          v11 = *(v1 + 144);
          if (!v11)
          {
            sub_100022DB4();
          }

          (*(*v11 + 48))(v11, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferCancel");
          v12 = *(v1 + 24);
          if (v12 != 2)
          {
            if (v12 == 1)
            {
              v19 = __cxa_allocate_exception(0x10uLL);
              v20 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v19);
            }

            else
            {
              v19 = __cxa_allocate_exception(0x10uLL);
              v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v19);
            }

            __cxa_throw(v19, v21, v20);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          v41 = 0u;
          memset(v42, 0, sizeof(v42));
          memset(v40, 0, sizeof(v40));
          *buf = 0u;
          if (v6 != 1)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(v22);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v40[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v40 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v40 + 8) = *(v1 + 56);
            *(&v40[1] + 1) = *(v1 + 72);
          }

          LOWORD(v41) = *(v1 + 80);
          sub_10002D728(&v41 + 1, (v1 + 88));
          sub_1002030F8(v42, (v1 + 96));
          *&v42[14] = *(v1 + 110);
          *&v42[8] = *(v1 + 104);
          v13 = *(v1 + 24);
          if (v13 != 1)
          {
            if (v13 == 2)
            {
              v16 = __cxa_allocate_exception(0x10uLL);
              v17 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v16);
            }

            else
            {
              v16 = __cxa_allocate_exception(0x10uLL);
              v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v16);
            }

            __cxa_throw(v16, v18, v17);
          }

          v14 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v37 = *(v1 + 72);
          }

          (*(*v14 + 56))(v14, __p);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v40[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v29 = *&v40[0];
          }

          if (SHIBYTE(v40[1]) < 0)
          {
            sub_100005F2C(&v30, *(&v40[0] + 1), *&v40[1]);
          }

          else
          {
            v30 = *(v40 + 8);
            v31 = *(&v40[1] + 1);
          }

          v32 = v41;
          v33 = *(&v41 + 1);
          if (*(&v41 + 1))
          {
            CFRetain(*(&v41 + 1));
          }

          v34 = *v42;
          if (*v42)
          {
            CFRetain(*v42);
          }

          v35[0] = *&v42[8];
          *(v35 + 6) = *&v42[14];
          sub_1001135B0(v38, v1 + 120);
          sub_1005C00B8(v3, (v1 + 168), (v1 + 192), __dst, v38);
          sub_100113648(v38);
          sub_1002030AC(&v34);
          sub_10002D760(&v33);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v42);
          sub_10002D760(&v41 + 1);
          if (SHIBYTE(v40[1]) < 0)
          {
            operator delete(*(&v40[0] + 1));
          }
        }

        if (SBYTE7(v40[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C4694(&v27);
  return sub_1000049E0(&v26);
}

void sub_1005C458C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C4694(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C4694(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 215) < 0)
    {
      operator delete(*(v1 + 192));
    }

    if (*(v1 + 191) < 0)
    {
      operator delete(*(v1 + 168));
    }

    v2 = *(v1 + 160);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100113648(v1 + 120);
    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1005C4724(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005C47BC(uint64_t a1)
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

uint64_t *sub_1005C483C(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_49:
        sub_100004A34(v5);
        goto LABEL_50;
      }

      v6 = *(v1 + 24);
      if (v6 == 2)
      {
        v7 = *(v3 + 48);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v1 + 32);
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IDS Error received [%d]", buf, 8u);
        }

        buf[0] = 0;
        BYTE8(v40) = 0;
        sub_100111820(v1 + 136, buf, 5);
        if (BYTE8(v40) != 1)
        {
          goto LABEL_49;
        }

        if (SBYTE7(v40) < 0)
        {
          operator delete(v39);
        }

        if ((SHIBYTE(v38) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        v9 = *&buf[8];
        goto LABEL_48;
      }

      *theData = 0u;
      memset(v29, 0, 24);
      memset(v27, 0, sizeof(v27));
      *__dst = 0u;
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      if (*(v1 + 55) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
      }

      else
      {
        *__dst = *(v1 + 32);
        v27[0] = *(v1 + 48);
      }

      if (*(v1 + 79) < 0)
      {
        sub_100005F2C(&v27[1], *(v1 + 56), *(v1 + 64));
      }

      else
      {
        *&v27[1] = *(v1 + 56);
        v27[3] = *(v1 + 72);
      }

      LOWORD(theData[0]) = *(v1 + 80);
      sub_10002D728(&theData[1], (v1 + 88));
      sub_1002030F8(v29, (v1 + 96));
      *(&v29[0] + 1) = *(v1 + 104);
      *(v29 + 14) = *(v1 + 110);
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *buf = 0u;
      v38 = 0u;
      sub_100A34C5C(buf);
      memset(v25, 0, sizeof(v25));
      BytePtr = CFDataGetBytePtr(theData[1]);
      Length = CFDataGetLength(theData[1]);
      PB::Reader::Reader(v25, BytePtr, Length);
      v12 = *(v1 + 120);
      if (SHIBYTE(v27[3]) < 0)
      {
        sub_100005F2C(__p, v27[1], v27[2]);
      }

      else
      {
        *__p = *&v27[1];
        v24 = v27[3];
      }

      (*(*v12 + 56))(v12, __p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_100A353F0(buf, v25))
      {
        v13 = v42;
        v14 = *(v3 + 48);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [PurchasePlanRsp]", v30, 2u);
            v13 = v42;
          }

          if ((*(v13 + 12) & 1) == 0)
          {
            sub_1005C4E00((v3 + 184), v1 + 136);
LABEL_44:
            sub_100A34FF0(buf);
            sub_1002030AC(v29);
            sub_10002D760(&theData[1]);
            if (SHIBYTE(v27[3]) < 0)
            {
              operator delete(v27[1]);
            }

            if ((SHIBYTE(v27[0]) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            v9 = __dst[0];
LABEL_48:
            operator delete(v9);
            goto LABEL_49;
          }

          v17 = *(v3 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = *(v13 + 8);
            *v30 = 67109120;
            v31 = v19;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Get add on plan response returned with error: %d", v30, 8u);
            v13 = v42;
          }

          v30[0] = 0;
          v36 = 0;
          sub_100111820(v1 + 136, v30, *(v13 + 8));
LABEL_39:
          if (v36 == 1)
          {
            if (v35 < 0)
            {
              operator delete(v34);
            }

            if (v33 < 0)
            {
              operator delete(v32);
            }
          }

          goto LABEL_44;
        }

        if (v15)
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Unknown response, marked as handled", v30, 2u);
        }
      }

      else
      {
        v16 = *(v3 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E Malformed Message, marked as handled", v30, 2u);
        }
      }

      v30[0] = 0;
      v36 = 0;
      sub_100111820(v1 + 136, v30, 7);
      goto LABEL_39;
    }
  }

LABEL_50:
  sub_1005C4D90(&v22);
  return sub_1000049E0(&v21);
}

void sub_1005C4CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100112930(&a37);
  sub_100A34FF0((v38 - 208));
  sub_1005AD788(&__p);
  sub_100004A34(v37);
  sub_1005C4D90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C4D90(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1005C47BC(v1 + 136);
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void *sub_1005C4E00(void *a1, uint64_t a2)
{
  sub_1005C4724(v4, a2);
  sub_1005C4EA8(v5, v4);
  sub_1005C5294(v5, a1);
  sub_1005C1A98(v5);
  sub_1005C47BC(v4);
  return a1;
}

void sub_1005C4E8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1005C47BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C4EA8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *sub_1005C4F28(void *a1)
{
  *a1 = off_101E669C0;
  sub_1005C47BC((a1 + 1));
  return a1;
}

void sub_1005C4F6C(void *a1)
{
  *a1 = off_101E669C0;
  sub_1005C47BC((a1 + 1));

  operator delete();
}

void sub_1005C507C(void *a1)
{
  sub_1005C47BC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1005C50C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C510C(uint64_t a1, uint64_t a2)
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

void sub_1005C518C(uint64_t a1, uint64_t a2, char *a3)
{
  v6[0] = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v7 = *(a2 + 8);
    v8 = *(a2 + 24);
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__p, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *__p = *(a2 + 32);
    v10 = *(a2 + 48);
  }

  v11 = 1;
  sub_100111820(a1, v6, *a3);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1005C5268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005C5294(void *result, void *a2)
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

void sub_1005C54F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_1005C5500(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_110:
        sub_100004A34(v5);
        goto LABEL_111;
      }

      v6 = *(v1 + 112);
      if (v6 == 2)
      {
        v7 = v3[6];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100A43314(*(v1 + 120));
          *buf = 136315138;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [DeviceInfoReq] IDS Failure [%s]", buf, 0xCu);
          v9 = *(v1 + 112);
          if (v9 != 2)
          {
            if (v9 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v44 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v44 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v45, v44);
          }
        }

        sub_1005BFADC(v3);
        goto LABEL_110;
      }

      *theData = 0u;
      memset(v72, 0, sizeof(v72));
      memset(__str, 0, sizeof(__str));
      if (v6 != 1)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v42);
      }

      if (*(v1 + 143) < 0)
      {
        sub_100005F2C(__str, *(v1 + 120), *(v1 + 128));
      }

      else
      {
        __str[0] = *(v1 + 120);
      }

      if (*(v1 + 167) < 0)
      {
        sub_100005F2C(&__str[1], *(v1 + 144), *(v1 + 152));
      }

      else
      {
        __str[1] = *(v1 + 144);
      }

      LOWORD(theData[0]) = *(v1 + 168);
      sub_10002D728(&theData[1], (v1 + 176));
      sub_1002030F8(v72, (v1 + 184));
      *&v72[8] = *(v1 + 192);
      *&v72[14] = *(v1 + 198);
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      *v62 = 0u;
      sub_100A34C5C(&v61);
      v10 = v3[6];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [DeviceInfoRsp]", buf, 2u);
      }

      v11 = (v1 + 24);
      v12 = *(v1 + 47);
      if (v12 >= 0)
      {
        v13 = *(v1 + 47);
      }

      else
      {
        v13 = *(v1 + 32);
      }

      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      v15 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      if (v13 != size || (v12 >= 0 ? (v16 = (v1 + 24)) : (v16 = *v11), (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = __str) : (v17 = __str[0].__r_.__value_.__r.__words[0]), memcmp(v16, v17, v13)))
      {
        v18 = v3[6];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (v12 < 0)
          {
            v11 = *v11;
          }

          v19 = __str[0].__r_.__value_.__r.__words[0];
          if (v15 >= 0)
          {
            v19 = __str;
          }

          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Warning! Mismatching device ids [%s] vs. [%s] - continuing", buf, 0x16u);
        }
      }

      ((*v3)[31].isa)(buf, v3, *(v1 + 96));
      v20 = *buf;
      if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __str[1];
      }

      (*(*v20 + 56))(v20, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      memset(v59, 0, sizeof(v59));
      BytePtr = CFDataGetBytePtr(theData[1]);
      Length = CFDataGetLength(theData[1]);
      PB::Reader::Reader(v59, BytePtr, Length);
      if (sub_100A353F0(&v61, v59))
      {
        v23 = *&v62[2];
        if (!*&v62[2])
        {
          if (os_log_type_enabled(v3[6], OS_LOG_TYPE_ERROR))
          {
            sub_101775354();
          }

          goto LABEL_106;
        }

        if ((*(*&v62[2] + 68) & 1) == 0)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          memset(v82, 0, sizeof(v82));
          if ((*(*&v62[2] + 68) & 4) != 0)
          {
            v24 = sub_100468668(*(*&v62[2] + 56));
            v23 = *&v62[2];
            v46 = 256;
          }

          else
          {
            v24 = 0;
            v46 = 0;
          }

          v47 = v24;
          sub_10039F4E8(__str, v23, v82);
          v33 = *(*&v62[2] + 24);
          for (i = *(*&v62[2] + 32); v33 != i; ++v33)
          {
            v34 = *v33;
            v78 = 0;
            v76 = 0u;
            *v77 = 0u;
            *v75 = 0u;
            memset(buf, 0, sizeof(buf));
            v53 = 0;
            v55 = 0u;
            v51 = 0u;
            *v52 = 0u;
            *v50 = 0u;
            v54 = &v55;
            v35 = sub_10039F070(v34, buf, v50);
            if (*buf)
            {
              v36 = 0;
            }

            else
            {
              v36 = v35;
            }

            if (v36 == 1)
            {
              v37 = v3[6];
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v73 = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#E Skip adding non-Vinyl cards", v73, 2u);
              }
            }

            else
            {
              v38 = v57;
              if (v57 >= v58)
              {
                v39 = sub_10031B4C8(&v56, buf);
              }

              else
              {
                sub_100F11B6C(v57, buf);
                v39 = v38 + 88;
              }

              v57 = v39;
              *v73 = &buf[16];
              v40 = sub_100289074((v3 + 15), &buf[16]);
              std::string::operator=(v40 + 2, __str);
            }

            sub_100111E24(&v54, v55);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52[0]);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50[1]);
            }

            if (v78 == 1)
            {
              v50[0] = &v76 + 8;
              sub_100112120(v50);
            }

            if (SBYTE7(v76) < 0)
            {
              operator delete(v75[0]);
            }
          }

          sub_10027E51C(buf, v82);
          v81 = 1;
          ((*v3)[33].isa)(v3, __str, buf, v46 | v47, &v56);
          if (v81 == 1)
          {
            if (v80 < 0)
            {
              operator delete(v79);
            }

            if (BYTE8(v76) == 1)
            {
              if (SHIBYTE(v78) < 0)
              {
                operator delete(v77[0]);
              }

              BYTE8(v76) = 0;
            }

            if (buf[24] == 1)
            {
              if (SBYTE7(v76) < 0)
              {
                operator delete(v75[0]);
              }

              buf[24] = 0;
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          if (SBYTE7(v88) < 0)
          {
            operator delete(v87);
          }

          if (BYTE8(v84) == 1)
          {
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85);
            }

            BYTE8(v84) = 0;
          }

          if (v82[24] == 1)
          {
            if (SBYTE7(v84) < 0)
            {
              operator delete(v83);
            }

            v82[24] = 0;
          }

          if ((v82[23] & 0x80000000) != 0)
          {
            operator delete(*v82);
          }

          *v82 = &v56;
          sub_100112048(v82);
          goto LABEL_106;
        }

        v29 = *(*&v62[2] + 48);
        v25 = v3[6];
        v30 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v29 <= 0x19)
        {
          if (!v30)
          {
            goto LABEL_106;
          }

          v31 = asString();
          *buf = 136315138;
          *&buf[4] = v31;
          v26 = "#E [DeviceInfoRsp] Error %s";
          v27 = v25;
          v28 = 12;
          goto LABEL_51;
        }

        if (!v30)
        {
          goto LABEL_106;
        }

        *buf = 0;
        v26 = "#E [DeviceInfoRsp] Out of range Vinyl error";
      }

      else
      {
        v25 = v3[6];
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
LABEL_106:
          sub_100A34FF0(&v61);
          sub_1002030AC(v72);
          sub_10002D760(&theData[1]);
          if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_110;
        }

        *buf = 0;
        v26 = "#E Malformed Message - ignoring";
      }

      v27 = v25;
      v28 = 2;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      goto LABEL_106;
    }
  }

LABEL_111:
  sub_1005C5E98(&v49);
  return sub_1000049E0(&v48);
}

void sub_1005C5D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_100A34FF0(&a35);
  sub_1005AD788(&__p);
  sub_100004A34(v53);
  sub_1005C5E98(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C5E98(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1005C116C(v1 + 112);
    sub_1002030AC((v1 + 88));
    sub_10002D760((v1 + 80));
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

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

uint64_t *sub_1005C5F24(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000194D8(a1, a2);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1005C5F68(uint64_t a1)
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

uint64_t *sub_1005C5FEC(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
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
        v6 = *(v1 + 24);
        v7 = *(v3 + 48);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [StartTransferProfileReq] IDS Failure [%s]", buf, 0xCu);
            v10 = *(v1 + 24);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v28, v27);
            }
          }

          v11 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v11;
          v12 = *(v1 + 144);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferStart");
          v13 = *(v1 + 24);
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v23);
            }

            else
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v23);
            }

            __cxa_throw(v23, v25, v24);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [StartTransferProfileRsp]", buf, 2u);
            v6 = *(v1 + 24);
          }

          v44 = 0u;
          memset(v45, 0, sizeof(v45));
          memset(v43, 0, sizeof(v43));
          *buf = 0u;
          if (v6 != 1)
          {
            v17 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v18 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v17);
            }

            else
            {
              v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v17);
            }

            __cxa_throw(v17, v19, v18);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v43[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v43 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v43 + 8) = *(v1 + 56);
            *(&v43[1] + 1) = *(v1 + 72);
          }

          LOWORD(v44) = *(v1 + 80);
          sub_10002D728(&v44 + 1, (v1 + 88));
          sub_1002030F8(v45, (v1 + 96));
          *&v45[14] = *(v1 + 110);
          *&v45[8] = *(v1 + 104);
          v14 = *(v1 + 24);
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
            }

            else
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
            }

            __cxa_throw(v20, v22, v21);
          }

          v15 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v40 = *(v1 + 72);
          }

          (*(*v15 + 56))(v15, __p);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v43[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v32 = *&v43[0];
          }

          if (SHIBYTE(v43[1]) < 0)
          {
            sub_100005F2C(&v33, *(&v43[0] + 1), *&v43[1]);
          }

          else
          {
            v33 = *(v43 + 8);
            v34 = *(&v43[1] + 1);
          }

          v35 = v44;
          v36 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            CFRetain(*(&v44 + 1));
          }

          v37 = *v45;
          if (*v45)
          {
            CFRetain(*v45);
          }

          v38[0] = *&v45[8];
          *(v38 + 6) = *&v45[14];
          sub_1001135B0(v41, v1 + 120);
          sub_1005BFC4C(v3, (v1 + 168), __dst, v41);
          sub_100113648(v41);
          sub_1002030AC(&v37);
          sub_10002D760(&v36);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v45);
          sub_10002D760(&v44 + 1);
          if (SHIBYTE(v43[1]) < 0)
          {
            operator delete(*(&v43[0] + 1));
          }
        }

        if (SBYTE7(v43[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C3FD8(&v30);
  return sub_1000049E0(&v29);
}

void sub_1005C6580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C3FD8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6710(uint64_t a1, uint64_t a2)
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

char *sub_1005C6790(unsigned int a1)
{
  if (a1 >= 7)
  {
    __TUAssertTrigger();
  }

  return off_101E66AA8[a1];
}

void sub_1005C67D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v6, a3);
  sub_10000501C(&__p, "/helper/requests/is_icloud_signed_in_with_encryption");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10000FED0(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C69A8(uint64_t a1)
{
  sub_10000FF50(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C69E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v6, a3);
  sub_10000501C(&__p, "/helper/requests/is_zone_existing");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10000FED0(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C6BB8(uint64_t a1, void *a2, unsigned int a3, uint64_t a4)
{
  v5 = a2[1];
  *&v11 = *a2;
  *(&v11 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v12, a4);
  v10 = 0;
  v6 = rest::asString();
  ctu::rest::detail::write_enum_string_value(&v10, a3, v6, v7);
  sub_10000501C(&__p, "/helper/requests/subscribe_record_change");
  v8 = xpc_null_create();
  v12[2] = v11;
  v10 = v8;
  v11 = 0uLL;
  sub_10000FED0(v13, v12);
  v13[8] = 0;
  operator new();
}

void sub_1005C6D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C6DD8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10045A7EC(v6, a3);
  sub_10000501C(&__p, "/helper/requests/fetch_remote_device_info");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10045A7EC(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C6FB0(uint64_t a1)
{
  sub_10028B224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C6FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456CB8(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/update_remote_device_info");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_100456CB8(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C71FC(uint64_t a1)
{
  sub_100297224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/delete_remote_device_info_for_record");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_10000FED0(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C73C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/delete_remote_device_info_for_zone");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_10000FED0(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C765C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005C9100(v6, a3);
  sub_10000501C(&__p, "/helper/requests/cellular_plan_fetch_remote_blacklist_info");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_1005C9100(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C7834(uint64_t a1)
{
  sub_10028AF18(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C786C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456CB8(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/cellular_plan_update_blacklist_info");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_100456CB8(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C7A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7A84()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

void *sub_1005C7ABC(void *a1)
{
  *a1 = off_101E66B68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7B0C(void *a1)
{
  *a1 = off_101E66B68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C7BFC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C7C1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66B68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C7C80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7CA0(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C7CDC(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C7D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C7DA4(uint64_t a1)
{
  sub_10000FF50(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C7DF0(void *a1)
{
  *a1 = off_101E66BE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7E40(void *a1)
{
  *a1 = off_101E66BE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C7F30(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C7F50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66BE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C7FB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7FD4(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C8010(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C808C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C80D8(void *a1)
{
  *a1 = off_101E66C68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8128(void *a1)
{
  *a1 = off_101E66C68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8218(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8238(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66C68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C829C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C82BC(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C82F8(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C8374(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C83C0(void *a1)
{
  *a1 = off_101E66CE8;
  sub_10028B224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8410(void *a1)
{
  *a1 = off_101E66CE8;
  sub_10028B224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8500(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66CE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10045A754((a2 + 3), a1 + 24);
}

void sub_1005C8584(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C85A4(void *a1)
{
  sub_1005C87A4(a1 + 8);

  operator delete(a1);
}

void sub_1005C85E0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0x1388000000000;
  rest::read_rest_value();
  v5 = 0;
  v6 = 0uLL;
  v9 = 0uLL;
  v8 = 0;
  v10 = 0x1388000000000;
  memset(v11, 0, sizeof(v11));
  sub_10045B0C8(v11, 0, 0, 0);
  v3 = *(a1 + 48);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v10);
  v12 = v11;
  sub_10027B3D0(&v12);
  v10 = &v5;
  sub_10027B3D0(&v10);
  v10 = &v8;
  sub_10027B3D0(&v10);
  xpc_release(object);
}

void sub_1005C8708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  *(v11 - 40) = v10;
  sub_10027B3D0((v11 - 40));
  *(v11 - 40) = v9;
  sub_10027B3D0((v11 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8758(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C87A4(uint64_t a1)
{
  sub_10028B224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C87F0(void *a1)
{
  *a1 = off_101E66D68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8840(void *a1)
{
  *a1 = off_101E66D68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8930(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8950(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66D68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100456684((a2 + 3), a1 + 24);
}

void sub_1005C89B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C89D4(void *a1)
{
  sub_1005C8AE4(a1 + 8);

  operator delete(a1);
}

void sub_1005C8A10(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  rest::read_rest_value();
  sub_100456F04(a1 + 24, 0x1388000000000);
  xpc_release(object);
}

uint64_t sub_1005C8A98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C8AE4(uint64_t a1)
{
  sub_100297224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C8B30(void *a1)
{
  *a1 = off_101E66DE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8B80(void *a1)
{
  *a1 = off_101E66DE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8C70(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8C90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66DE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C8CF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C8D14(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C8D50(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C8DCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C8E18(void *a1)
{
  *a1 = off_101E66E68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8E68(void *a1)
{
  *a1 = off_101E66E68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8F58(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8F78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66E68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C8FDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C8FFC(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C9038(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C90B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C9100(uint64_t a1, uint64_t a2)
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

void *sub_1005C9180(void *a1)
{
  *a1 = off_101E66EE8;
  sub_10028AF18((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C91D0(void *a1)
{
  *a1 = off_101E66EE8;
  sub_10028AF18((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C92C0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C92E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66EE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1005C9564((a2 + 3), a1 + 24);
}

void sub_1005C9344(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C9364(void *a1)
{
  sub_1005C95FC(a1 + 8);

  operator delete(a1);
}

void sub_1005C93A0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0x1388000000000;
  rest::read_rest_value();
  v5 = 0;
  v6 = 0uLL;
  v9 = 0uLL;
  v8 = 0;
  v10 = 0x1388000000000;
  memset(v11, 0, sizeof(v11));
  sub_1005C9648(v11, 0, 0, 0);
  v3 = *(a1 + 48);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v10);
  v12 = v11;
  sub_10027B2AC(&v12);
  v10 = &v5;
  sub_10027B2AC(&v10);
  v10 = &v8;
  sub_10027B2AC(&v10);
  xpc_release(object);
}

void sub_1005C94C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  *(v11 - 40) = v10;
  sub_10027B2AC((v11 - 40));
  *(v11 - 40) = v9;
  sub_10027B2AC((v11 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C9518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C9564(uint64_t a1, uint64_t a2)
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

void sub_1005C95FC(uint64_t a1)
{
  sub_10028AF18(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_1005C9648(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028AB1C(result, a4);
  }

  return result;
}

void sub_1005C96B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B2AC(&a9);
  _Unwind_Resume(a1);
}

void *sub_1005C96D0(void *a1)
{
  *a1 = off_101E66F68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C9720(void *a1)
{
  *a1 = off_101E66F68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C9810(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C9830(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66F68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100456684((a2 + 3), a1 + 24);
}

void sub_1005C9894(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C98B4(void *a1)
{
  sub_1005C8AE4(a1 + 8);

  operator delete(a1);
}

void sub_1005C98F0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  rest::read_rest_value();
  sub_100456F04(a1 + 24, 0x1388000000000);
  xpc_release(object);
}

uint64_t sub_1005C9978(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C99CC(uint64_t result)
{
  *result = off_101E67098;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1005C99F0(void ***a1)
{
  *a1 = off_101E67098;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1005C9A48(void ***a1)
{
  *a1 = off_101E67098;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1005C9AB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1005C9B48(uint64_t a1, PB::Reader *this)
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
            goto LABEL_55;
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
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
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
              goto LABEL_50;
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
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
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
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
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

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1005C9E50(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

void *sub_1005C9ED0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.VVM.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.VVM.2";
  }

  v14 = "VVM.X";
  if (v13 == 2)
  {
    v14 = "VVM.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.VVM.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "VVM.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E67B70, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E67110;
  a1[8] = off_101E67670;
  a1[9] = off_101E67910;
  a1[10] = off_101E67AF8;
  return a1;
}

void sub_1005CA05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_1005CA088(uint64_t a1)
{
  sub_10096807C(a1, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA0B8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA0EC(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA120(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA154(uint64_t a1)
{
  sub_10096807C(a1, &off_101E67B70);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_1005CA214(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1005CA320(_Unwind_Exception *exception_object)
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

void sub_1005CA360(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_1005CA43C(uint64_t a1, dispatch_object_t *a2, void *a3, uint64_t *a4, uint64_t a5, int a6)
{
  v22 = *a2;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v12 = a4[1];
  v20 = *a4;
  v21 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v19 = *(a5 + 16);
  }

  sub_10031435C(a1, &v22, a3, &v20, "ol.recovery", __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  *a1 = off_101E689A0;
  v13 = a4[1];
  *(a1 + 160) = *a4;
  *(a1 + 168) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 1;
  *(a1 + 180) = a6;
  sub_10000501C(&v16, "ol.recovery");
  v15 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = a1 + 208;
  return a1;
}

void sub_1005CA5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    dispatch_release(v27);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_1005CA65C(uint64_t a1)
{
  *a1 = off_101E689A0;
  v2 = (a1 + 184);
  sub_1005CA6EC();
  ctu::RestModule::disconnect(v2);
  sub_100009970(a1 + 200, *(a1 + 208));
  v3 = *(a1 + 192);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_10031452C(a1);
}

void sub_1005CA6EC()
{
  sub_10000501C(&__p, "/cc/props/carrier_entitlements_reachability");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_1005CA740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CA760(uint64_t a1)
{
  sub_1005CA65C(a1);

  operator delete();
}

void sub_1005CA79C(uint64_t a1)
{
  if (*(a1 + 176) != 1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(a1 + 160);
        if (v4)
        {
          if (sub_1005CA8D8(a1))
          {
            if ((*(a1 + 177) & 1) == 0)
            {
              (*(*v4 + 24))(v4, a1 + 64);
              sub_100314A14(a1, 0x100u);
            }
          }

          else
          {
            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_101775388(a1, v13);
            }
          }

LABEL_14:
          sub_100004A34(v3);
          return;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775410(v5, v6, v7, v8, v9, v10, v11, v12);
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

  *(a1 + 176) = 0;

  sub_100314A14(a1, 0x100u);
}

uint64_t sub_1005CA8D8(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *__p = *(a1 + 64);
    v6 = *(a1 + 80);
  }

  if (sub_10016FA58(a1 + 200, __p))
  {
    v2 = sub_1000E20F0(a1 + 200, __p);
    v3 = sub_1001E8808(v2, *(a1 + 180));
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1005CA974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CA9C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_101775448(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1005CAA00(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_101775480(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1005CAAC0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005CAB94);
  __cxa_rethrow();
}

void sub_1005CAB00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005CAB54(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005CAB94(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005CABC0(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1005CAC9C();
}

void sub_1005CAC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1005CAD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005CAE38(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E68AE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1005CAE78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005CAEC4(uint64_t *a1, xpc_object_t *a2)
{
  sub_1005CAF40(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1005CAF40(uint64_t a1, xpc_object_t *a2)
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

  sub_100009970(a1, *(a1 + 8));
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

    sub_100008EA4(&v12, object, 0);
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

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1005CB1EC(object, &v6);
        xpc_release(v6);
        sub_1005CB334(a1, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_1005CB148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_1005CB1EC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = &v7;
    v5 = "first";
    sub_100006354(&v4, &object);
    read_rest_value();
    xpc_release(object);
    v4 = &v7;
    v5 = "second";
    sub_100006354(&v4, &object);
    sub_1001E8CC8((a1 + 24), &object);
    xpc_release(object);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1005CB2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB334(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1005CB3C0();
  }

  return result;
}

void sub_1005CB45C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB478(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v34[0] = off_101E2A828;
  v34[1] = sub_1000A7BC0;
  v34[3] = v34;
  sub_1005CB8AC((a1 + 216));
  sub_1000A8744(v34);
  v10 = a3[1];
  v28 = *a3;
  v29 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  v26 = *a4;
  v27 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  v24 = *a5;
  v25 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v28, &v26, &v24);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  *a1 = &off_101E68B60;
  *(a1 + 8) = off_101E68CE8;
  sub_10000501C(&__p, "MO MMS");
  v30 = 0;
  log = 0;
  ctu::OsLogContext::OsLogContext(&v30, kCtLoggingSystemName, "mms.send");
  v13 = log;
  v14 = os_signpost_id_generate(log);
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = log;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MobileOriginatedMMS", "", buf, 2u);
    }
  }

  *buf = off_101E68D68;
  v36 = buf;
  v32[0] = v14;
  v32[1] = os_retain(v13);
  sub_1000148FC(&v33, buf);
  sub_10001499C(buf);
  ctu::OsLogContext::~OsLogContext(&v30);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(v32);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v16 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100123054(*a4, 128);
  v17 = *a5;
  if (*a5)
  {
    v18 = a4[1];
    v20 = *a4;
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 24))(v17, &v20, 0);
    if (v21)
    {
      sub_100004A34(v21);
    }
  }

  *(a1 + 44) = 1;
  *(a1 + 64) = 1;
  *(a1 + 224) = 0;
  return a1;
}

void sub_1005CB7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v26 + 271) < 0)
  {
    operator delete(*v27);
  }

  v29 = *(v26 + 240);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1004D1284(v26);
  v30 = *(v26 + 216);
  *(v26 + 216) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(a1);
}

capabilities::ct *sub_1005CB8AC(capabilities::ct *a1)
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

void sub_1005CBA04(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

MMSOperationInterface *sub_1005CBA74(MMSOperationInterface *this)
{
  *this = &off_101E68B60;
  *(this + 1) = off_101E68CE8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = *(this + 30);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1004D1284(this);
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return this;
}

void sub_1005CBB34(MMSOperationInterface *a1)
{
  sub_1005CBA74(a1);

  operator delete();
}

void sub_1005CBB6C(uint64_t a1)
{
  sub_1005CBA74((a1 - 8));

  operator delete();
}

const void *sub_1005CBBA8(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1004D2664(a1, &v4);
  if (sub_1004D1694(a1) && v4)
  {
    v2 = sub_100121BFC(v4);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_1005CBC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CBC28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    v5 = 100 * a2 / v2;
    v6 = v5 == 100 || v5 < 10;
    if (v6 || v5 - *(a1 + 228) >= 10)
    {
      v7 = sub_1004D15AC(a1);
      v8 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 224);
        v22 = __PAIR64__(a2, 67109888);
        v23 = 1024;
        v24 = v9;
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = sub_1004D149C(a1);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sent %d of %d (%d%%): MsgId %u", &v22, 0x1Au);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 120));
      v11 = ServiceMap;
      v12 = "27MessageCenterModelInterface";
      if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
      {
        v13 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      v22 = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &v22);
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
            goto LABEL_19;
          }

          goto LABEL_18;
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
LABEL_19:
        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        *(a1 + 228) = v5;
        return;
      }

LABEL_18:
      v20 = sub_1004D15AC(a1);
      v21 = sub_1004D149C(a1);
      (*(*v18 + 264))(v18, v20, v21, a2, *(a1 + 224));
      goto LABEL_19;
    }
  }
}

void sub_1005CBE6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CC108(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004D15AC(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  *&v97 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v97);
  v52 = a4;
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
        goto LABEL_7;
      }

      goto LABEL_12;
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
LABEL_7:
    v19 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1017754B8(v19);
      if (v18)
      {
        return;
      }

      goto LABEL_121;
    }

LABEL_120:
    if (v18)
    {
      return;
    }

    goto LABEL_121;
  }

LABEL_12:
  v97 = 0uLL;
  v98 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v97);
  object.__r_.__value_.__r.__words[0] = 0;
  v20 = xpc_dictionary_create(0, 0, 0);
  v21 = v20;
  if (v20)
  {
    object.__r_.__value_.__r.__words[0] = v20;
  }

  else
  {
    v21 = xpc_null_create();
    object.__r_.__value_.__r.__words[0] = v21;
    if (!v21)
    {
      v22 = xpc_null_create();
      v21 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v21) == &_xpc_type_dictionary)
  {
    xpc_retain(v21);
    goto LABEL_20;
  }

  v22 = xpc_null_create();
LABEL_19:
  object.__r_.__value_.__r.__words[0] = v22;
LABEL_20:
  xpc_release(v21);
  v23 = subscriber::simSlotAsInstance();
  v95 = xpc_int64_create(v23);
  if (!v95)
  {
    v95 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "subs_id";
  sub_10000F688(&__p, &v95, &v96);
  xpc_release(v96);
  v96 = 0;
  xpc_release(v95);
  v95 = 0;
  v93 = xpc_int64_create(a3);
  if (!v93)
  {
    v93 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "dwErrCode";
  sub_10000F688(&__p, &v93, &v94);
  xpc_release(v94);
  v94 = 0;
  xpc_release(v93);
  v93 = 0;
  v24 = sub_1004D16D8(a1);
  v91 = xpc_int64_create(v24);
  if (!v91)
  {
    v91 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "rat";
  sub_10000F688(&__p, &v91, &v92);
  xpc_release(v92);
  v92 = 0;
  xpc_release(v91);
  v91 = 0;
  if (*(a1 + 271) < 0)
  {
    v25 = *(a1 + 248);
  }

  else
  {
    v25 = (a1 + 248);
  }

  v89 = xpc_string_create(v25);
  if (!v89)
  {
    v89 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "wMmsVersion";
  sub_10000F688(&__p, &v89, &v90);
  xpc_release(v90);
  v90 = 0;
  xpc_release(v89);
  v89 = 0;
  v87 = xpc_int64_create(a2);
  if (!v87)
  {
    v87 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "wResultCode";
  sub_10000F688(&__p, &v87, &v88);
  xpc_release(v88);
  v88 = 0;
  xpc_release(v87);
  v87 = 0;
  if (v98 >= 0)
  {
    v26 = &v97;
  }

  else
  {
    v26 = v97;
  }

  v85 = xpc_string_create(v26);
  if (!v85)
  {
    v85 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "bundleId";
  sub_10000F688(&__p, &v85, &v86);
  xpc_release(v86);
  v86 = 0;
  xpc_release(v85);
  v85 = 0;
  if (SHIBYTE(v98) < 0)
  {
    sub_100005F2C(&__dst, v97, *(&v97 + 1));
  }

  else
  {
    __dst = v97;
    v82 = v98;
  }

  isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(&__dst);
  v83 = xpc_BOOL_create(isThirdPartyMessagingApp);
  if (!v83)
  {
    v83 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "isThirdParty";
  sub_10000F688(&__p, &v83, &v84);
  xpc_release(v84);
  v84 = 0;
  xpc_release(v83);
  v83 = 0;
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__dst);
  }

  v80 = object.__r_.__value_.__r.__words[0];
  if (object.__r_.__value_.__r.__words[0])
  {
    xpc_retain(object.__r_.__value_.__l.__data_);
  }

  else
  {
    v80 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "metricCCMMSSendEnd", &v80);
  xpc_release(v80);
  v80 = 0;
  xpc_release(object.__r_.__value_.__l.__data_);
  v79 = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v79 = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v79 = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_55;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_56;
  }

  v30 = xpc_null_create();
LABEL_55:
  v79 = v30;
LABEL_56:
  xpc_release(v29);
  v32 = a2 == 128 && a3 == 0;
  v77 = xpc_BOOL_create(v32);
  if (!v77)
  {
    v77 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "IsSuccess";
  sub_10000F688(&__p, &v77, &v78);
  xpc_release(v78);
  v78 = 0;
  xpc_release(v77);
  v77 = 0;
  v75 = xpc_string_create("MMS");
  if (!v75)
  {
    v75 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "MessageType";
  sub_10000F688(&__p, &v75, &v76);
  xpc_release(v76);
  v76 = 0;
  xpc_release(v75);
  v75 = 0;
  sub_10000501C(&object, "MMS_");
  v33 = *(a1 + 271);
  if (v33 >= 0)
  {
    v34 = (a1 + 248);
  }

  else
  {
    v34 = *(a1 + 248);
  }

  if (v33 >= 0)
  {
    v35 = *(a1 + 271);
  }

  else
  {
    v35 = *(a1 + 256);
  }

  v36 = std::string::append(&object, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v72 = v36->__r_.__value_.__r.__words[2];
  __p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v73 = xpc_string_create(p_p);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  v65.__r_.__value_.__r.__words[0] = &v79;
  v65.__r_.__value_.__l.__size_ = "MessageSubtype";
  sub_10000F688(&v65, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  v68 = xpc_BOOL_create(1);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "IsOutgoingMessage";
  sub_10000F688(&__p, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  sub_10000501C(&v65, "_");
  v39 = asString(a3);
  v40 = strlen(v39);
  v41 = std::string::insert(&v65, 0, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  object.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&object.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = asString(a2);
  v44 = strlen(v43);
  v45 = std::string::append(&object, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v72 = v45->__r_.__value_.__r.__words[2];
  __p = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p;
  }

  v66 = xpc_string_create(v47);
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  v64[0] = &v79;
  v64[1] = "ErrorReason";
  sub_10000F688(v64, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  sub_1004D2664(a1, &__p);
  v48 = sub_1013D8840(__p, "X-Mms-Message-Size");
  v62 = xpc_int64_create(v48);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  object.__r_.__value_.__r.__words[0] = &v79;
  object.__r_.__value_.__l.__size_ = "MessagePayloadSize";
  sub_10000F688(&object, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v98 >= 0)
  {
    v49 = &v97;
  }

  else
  {
    v49 = v97;
  }

  v60 = xpc_string_create(v49);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "bundleId";
  sub_10000F688(&__p, &v60, &v61);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v60);
  v60 = 0;
  if (SHIBYTE(v98) < 0)
  {
    sub_100005F2C(v56, v97, *(&v97 + 1));
  }

  else
  {
    *v56 = v97;
    v57 = v98;
  }

  v50 = MessageCenterModel::isThirdPartyMessagingApp(v56);
  v58 = xpc_BOOL_create(v50);
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "isThirdParty";
  sub_10000F688(&__p, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  Registry::getTimerService(&__p, *(a1 + 120));
  v51 = (**__p)(__p);
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v51 >= v52)
  {
    v54 = xpc_double_create(((v51 - v52) / 1000000) / 1000.0);
    if (!v54)
    {
      v54 = xpc_null_create();
    }

    *&__p = &v79;
    *(&__p + 1) = "SendDuration";
    sub_10000F688(&__p, &v54, &v55);
    xpc_release(v55);
    v55 = 0;
    xpc_release(v54);
    v54 = 0;
  }

  v53 = v79;
  if (v79)
  {
    xpc_retain(v79);
  }

  else
  {
    v53 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "UnifiedCTMessage", &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v79);
  if ((SHIBYTE(v98) & 0x80000000) == 0)
  {
    goto LABEL_120;
  }

  operator delete(v97);
  if (v18)
  {
    return;
  }

LABEL_121:
  sub_100004A34(v16);
}

void sub_1005CCBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, xpc_object_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, xpc_object_t object, xpc_object_t a58)
{
  xpc_release(object);
  if (*(v59 - 97) < 0)
  {
    operator delete(*(v59 - 120));
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(v58);
  }

  _Unwind_Resume(a1);
}

void sub_1005CCE58(uint64_t a1)
{
  *(a1 + 228) = 0;
  v74 = 0;
  v75 = 0;
  sub_1004D2664(a1, &v74);
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1004D149C(a1);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Begin MMSSendOperation::run: MsgId %u", &buf, 8u);
  }

  v6 = (a1 + 248);
  if (sub_1013D8788(v74, "X-Mms-MMS-Version"))
  {
    if (*(a1 + 271) < 0)
    {
      sub_100005F2C(&buf, *(a1 + 248), *(a1 + 256));
    }

    else
    {
      buf = *v6;
      *&v77 = *(a1 + 264);
    }
  }

  else
  {
    sub_10000501C(&buf, "");
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*v6);
  }

  *v6 = buf;
  *(a1 + 264) = v77;
  v7 = v74;
  v8 = sub_100121BC8(v74);
  v9 = sub_100121BD8(v7, v8 - 1);
  if (v9)
  {
    v10 = sub_1013D85EC(v9);
    v11 = v10;
    if (v10)
    {
      buf = 0uLL;
      *&v77 = 0;
      v12 = (*(*v10 + 16))(v10);
      v13 = sub_10000501C(&buf, v12);
      v14 = BYTE7(v77);
      if (SBYTE7(v77) < 0)
      {
        v14 = *(&buf + 1);
      }

      if (!v14)
      {
        goto LABEL_67;
      }

      std::string::append(v13, "/", 1uLL);
      v15 = (*(*v11 + 24))(v11);
      v16 = strlen(v15);
      std::string::append(&buf, v15, v16);
      if ((SBYTE7(v77) & 0x80u) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      v18 = sub_100E5E5C4(p_buf);
      ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
      v25 = v3;
      *&v81 = v21;
      v26 = sub_100009510(&v20[1].__m_.__sig, &v81);
      if (v26)
      {
        v27 = v18;
        v29 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v20);
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v30 = v28;
          sub_100004A34(v28);
          v31 = 0;
          v18 = v27;
          goto LABEL_27;
        }

        v18 = v27;
      }

      else
      {
        v29 = 0;
      }

      std::mutex::unlock(v20);
      v30 = 0;
      v31 = 1;
LABEL_27:
      v3 = v25;
      if (!v29)
      {
        v34 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          sub_1017754FC(v34);
        }

        goto LABEL_65;
      }

      v81 = 0uLL;
      v82 = 0;
      MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v81);
      v73 = 0;
      v32 = xpc_dictionary_create(0, 0, 0);
      v33 = v32;
      if (v32)
      {
        v73 = v32;
      }

      else
      {
        v33 = xpc_null_create();
        v73 = v33;
        if (!v33)
        {
          v35 = xpc_null_create();
          v33 = 0;
          goto LABEL_37;
        }
      }

      if (xpc_get_type(v33) == &_xpc_type_dictionary)
      {
        xpc_retain(v33);
LABEL_38:
        xpc_release(v33);
        v36 = subscriber::simSlotAsInstance();
        v71 = xpc_int64_create(v36);
        if (!v71)
        {
          v71 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "subs_id";
        sub_10000F688(v79, &v71, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v71);
        v71 = 0;
        v69 = xpc_int64_create(v18);
        if (!v69)
        {
          v69 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "dwContentType";
        sub_10000F688(v79, &v69, &v70);
        xpc_release(v70);
        v70 = 0;
        xpc_release(v69);
        v69 = 0;
        v37 = sub_1013D8840(v74, "X-Mms-Message-Size");
        v67 = xpc_int64_create(v37);
        if (!v67)
        {
          v67 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "dwSize";
        sub_10000F688(v79, &v67, &v68);
        xpc_release(v68);
        v68 = 0;
        xpc_release(v67);
        v67 = 0;
        if (*(a1 + 271) < 0)
        {
          v6 = *v6;
        }

        v65 = xpc_string_create(v6);
        if (!v65)
        {
          v65 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "wMmsVersion";
        sub_10000F688(v79, &v65, &v66);
        xpc_release(v66);
        v66 = 0;
        xpc_release(v65);
        v65 = 0;
        if (v82 >= 0)
        {
          v38 = &v81;
        }

        else
        {
          v38 = v81;
        }

        v63 = xpc_string_create(v38);
        if (!v63)
        {
          v63 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "bundleId";
        sub_10000F688(v79, &v63, &v64);
        xpc_release(v64);
        v64 = 0;
        xpc_release(v63);
        v63 = 0;
        if (SHIBYTE(v82) < 0)
        {
          sub_100005F2C(__p, v81, *(&v81 + 1));
        }

        else
        {
          *__p = v81;
          v60 = v82;
        }

        isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(__p);
        v61 = xpc_BOOL_create(isThirdPartyMessagingApp);
        if (!v61)
        {
          v61 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "isThirdParty";
        sub_10000F688(v79, &v61, &v62);
        xpc_release(v62);
        v62 = 0;
        xpc_release(v61);
        v61 = 0;
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__p[0]);
        }

        v58 = v73;
        if (v73)
        {
          xpc_retain(v73);
        }

        else
        {
          v58 = xpc_null_create();
        }

        (*(*v29 + 16))(v29, "metricCCMMSSendStart", &v58);
        xpc_release(v58);
        v58 = 0;
        xpc_release(v73);
        if (SHIBYTE(v82) < 0)
        {
          operator delete(v81);
        }

LABEL_65:
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v30);
        }

LABEL_67:
        if (SBYTE7(v77) < 0)
        {
          operator delete(buf);
        }

        goto LABEL_69;
      }

      v35 = xpc_null_create();
LABEL_37:
      v73 = v35;
      goto LABEL_38;
    }
  }

LABEL_69:
  v78 = 0;
  buf = 0u;
  v77 = 0u;
  sub_101135C24(&buf);
  v40 = Registry::getServiceMap(*(a1 + 120));
  v41 = v40;
  if (v42 < 0)
  {
    v43 = (v42 & 0x7FFFFFFFFFFFFFFFLL);
    v44 = 5381;
    do
    {
      v42 = v44;
      v45 = *v43++;
      v44 = (33 * v44) ^ v45;
    }

    while (v45);
  }

  std::mutex::lock(v40);
  *&v81 = v42;
  v46 = sub_100009510(&v41[1].__m_.__sig, &v81);
  if (!v46)
  {
    v48 = 0;
LABEL_77:
    std::mutex::unlock(v41);
    v47 = 0;
    v49 = 1;
    if (!v48)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v48 = v46[3];
  v47 = v46[4];
  if (!v47)
  {
    goto LABEL_77;
  }

  atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v41);
  atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v47);
  v49 = 0;
  if (v48)
  {
LABEL_78:
    LODWORD(v78) = (*(*v48 + 224))(v48, v2);
  }

LABEL_79:
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  sub_1004D1140(a1, v2, &v56);
  sub_1004D17E0(a1, &v56);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if (*(a1 + 184))
  {
    sub_1004D1B44(a1);
    sub_1004D19AC(a1);
  }

  v50 = *v3;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v51 = sub_1004D149C(a1);
    sub_10177557C(&v81, v51, v50);
  }

  v52 = sub_1004D16E8(a1);
  sub_1005CC108(a1, 0xE0u, 0xCu, v52);
  v53 = *(a1 + 136);
  sub_100004AA0(&v54, (a1 + 16));
  (*(*v53 + 16))(v53, 1, &v54);
  if (v55)
  {
    sub_100004A34(v55);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (v75)
  {
    sub_100004A34(v75);
  }
}

void sub_1005CD8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, xpc_object_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CDA8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = sub_1004D149C(a1);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MMSSendOperation: HTTP Response callback, begin processing response: MsgId %u", buf, 8u);
  }

  v7 = a2[1];
  v41 = *a2;
  v42 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_1005CDF48(a1, &v41);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_34;
      }

      if ((*(*a1 + 96))(a1))
      {
        v8 = 2;
        goto LABEL_34;
      }

      v20 = *v5;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_1004D14B4(a1);
        v22 = sub_1004D149C(a1);
        *buf = 67109376;
        *&buf[4] = v21;
        v44 = 1024;
        v45 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Message can no longer be retried due to retry count: %u, Failing send operation: MsgId %u", buf, 0xEu);
      }

      v23 = sub_1004D16E8(a1);
      sub_1005CC108(a1, 0xE0u, 3u, v23);
    }

    v24 = sub_1004D16E8(a1);
    sub_1005CC108(a1, 0xE0u, 0xFu, v24);
    ServiceMap = Registry::getServiceMap(*(a1 + 120));
    v26 = ServiceMap;
    v27 = "27MessageCenterModelInterface";
    if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
    {
      v28 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(ServiceMap);
    *buf = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, buf);
    if (v31)
    {
      v32 = v31[3];
      v17 = v31[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v33 = 0;
        if (!v32)
        {
LABEL_32:
          v8 = 1;
          if (v33)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_31:
        v34 = sub_1004D15AC(a1);
        v35 = sub_1004D149C(a1);
        (*(*v32 + 208))(v32, v34, 1, v35);
        goto LABEL_32;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v26);
    v17 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v9 = sub_1004D16E8(a1);
  sub_1005CC108(a1, 0x80u, 0, v9);
  v10 = Registry::getServiceMap(*(a1 + 120));
  v11 = v10;
  v12 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v13 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(v10);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
LABEL_38:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_38;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_39:
    v37 = sub_1004D15AC(a1);
    v38 = sub_1004D149C(a1);
    (*(*v18 + 272))(v18, v37, 1, v38);
  }

LABEL_40:
  v8 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v17);
  }

LABEL_34:
  v36 = *(a1 + 136);
  sub_100004AA0(&v39, (a1 + 16));
  (*(*v36 + 16))(v36, v8, &v39);
  if (v40)
  {
    sub_100004A34(v40);
  }
}

void sub_1005CDEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005CDF48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v53 = 1;
  v51 = 0;
  v52 = 0;
  sub_1004D1B78(a1, &v53, a2, &v51);
  v6 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v51)
  {
    v53 = 1;
    v7 = sub_1013D8820(v51, "X-Mms-Response-Status");
    v8 = v7;
    if (v7 == 128)
    {
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_1004D149C(a1);
        *buf = 67109120;
        *&buf[4] = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MMSSendOperation send succeeded, MsgId: %u", buf, 8u);
        v9 = *v5;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = sub_1004D149C(a1);
        sub_10012314C(v51, 0, 0, buf);
        if ((SBYTE7(v60) & 0x80u) == 0)
        {
          v12 = buf;
        }

        else
        {
          v12 = *buf;
        }

        *v54 = 67109378;
        *&v54[4] = v11;
        *&v54[8] = 2080;
        *&v54[10] = v12;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MsgId %u public response: %s", v54, 0x12u);
        if (SBYTE7(v60) < 0)
        {
          operator delete(*buf);
        }

        v9 = *v5;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = sub_1004D149C(a1);
        sub_10012314C(v51, 1, 0, buf);
        if ((SBYTE7(v60) & 0x80u) == 0)
        {
          v14 = buf;
        }

        else
        {
          v14 = *buf;
        }

        *v54 = 67109379;
        *&v54[4] = v13;
        *&v54[8] = 2085;
        *&v54[10] = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MsgId %u sensitive response: %{sensitive}s", v54, 0x12u);
        if (SBYTE7(v60) < 0)
        {
          operator delete(*buf);
        }

        v9 = *v5;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = sub_1004D149C(a1);
        sub_10012345C(v51, buf);
        v16 = (SBYTE7(v60) & 0x80u) == 0 ? buf : *buf;
        *v54 = 67109379;
        *&v54[4] = v15;
        *&v54[8] = 2085;
        *&v54[10] = v16;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I MsgId %u Body: %{sensitive}s", v54, 0x12u);
        if (SBYTE7(v60) < 0)
        {
          operator delete(*buf);
        }
      }

      v53 = 0;
      goto LABEL_71;
    }

    if (sub_100123770(v7))
    {
      v21 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v40 = sub_1004D149C(a1);
        *buf = 67109120;
        *&buf[4] = v40;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Transient error sending MMS, will attempt retry if allowed, MsgId: %u", buf, 8u);
        v21 = *v5;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v41 = sub_1004D149C(a1);
        sub_10012314C(v51, 0, 0, buf);
        if ((SBYTE7(v60) & 0x80u) == 0)
        {
          v42 = buf;
        }

        else
        {
          v42 = *buf;
        }

        *v54 = 67109378;
        *&v54[4] = v41;
        *&v54[8] = 2080;
        *&v54[10] = v42;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "MsgId %u public response: %s", v54, 0x12u);
        if (SBYTE7(v60) < 0)
        {
          operator delete(*buf);
        }

        v21 = *v5;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1004D149C(a1);
        sub_10012314C(v51, 1, 0, buf);
        sub_1017755B8();
      }

      v53 = 2;
      goto LABEL_71;
    }

    if (v8 != 131 && v8 != 226)
    {
      goto LABEL_65;
    }

    *v54 = 0;
    *&v54[8] = 0;
    sub_1004D2664(a1, v54);
    if (!*v54)
    {
LABEL_63:
      if (*&v54[8])
      {
        sub_100004A34(*&v54[8]);
      }

LABEL_65:
      v36 = sub_1013D8420(v51, "X-Mms-Response-Status");
      memset(buf, 0, sizeof(buf));
      *&v60 = 0;
      (*(*v36 + 72))(v36, buf);
      v37 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v43 = SBYTE7(v60);
        v44 = *buf;
        v45 = sub_1004D149C(a1);
        v46 = buf;
        if (v43 < 0)
        {
          v46 = v44;
        }

        *v54 = 136315394;
        *&v54[4] = v46;
        *&v54[12] = 1024;
        *&v54[14] = v45;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "MMSSendOperation send failed, response status header: %s, MsgId: %u", v54, 0x12u);
        v37 = *v5;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v47 = sub_1004D149C(a1);
        sub_10012314C(v51, 0, 0, v54);
        if (v55 >= 0)
        {
          v48 = v54;
        }

        else
        {
          v48 = *v54;
        }

        *v56 = 67109378;
        *&v56[4] = v47;
        v57 = 2080;
        v58 = v48;
        _os_log_error_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "MsgId %u public response: %s", v56, 0x12u);
        if (v55 < 0)
        {
          operator delete(*v54);
        }

        v37 = *v5;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        sub_1004D149C(a1);
        sub_10012314C(v51, 1, 0, v54);
        sub_1017755B8();
      }

      v53 = 1;
      if (SBYTE7(v60) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_71;
    }

    v61 = 0;
    *buf = 0u;
    v60 = 0u;
    sub_101135C24(buf);
    ServiceMap = Registry::getServiceMap(*(a1 + 120));
    v26 = ServiceMap;
    if (v27 < 0)
    {
      v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(ServiceMap);
    *v56 = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, v56);
    if (v31)
    {
      v33 = v31[3];
      v32 = v31[4];
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v32);
        v34 = 0;
LABEL_57:
        if (v33)
        {
          v35 = sub_1004D15AC(a1);
          LODWORD(v61) = (*(*v33 + 224))(v33, v35);
        }

        if ((v34 & 1) == 0)
        {
          sub_100004A34(v32);
        }

        sub_101136D4C(buf, *v54);
        sub_101136E44(buf, "corrupt_message");
        if (SHIBYTE(v60) < 0)
        {
          operator delete(*&buf[8]);
        }

        goto LABEL_63;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v26);
    v32 = 0;
    v34 = 1;
    goto LABEL_57;
  }

  if (sub_100BB1C00(*a2) && *(a1 + 228) == 100)
  {
    v17 = *v5;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = sub_1004D149C(a1);
      sub_101775614(buf, v18, v17);
    }

    v19 = sub_1004D16E8(a1);
    sub_1005CC108(a1, 0xE0u, 0xDu, v19);
    v20 = *(a1 + 136);
    sub_100004AA0(&v49, (a1 + 16));
    (*(*v20 + 16))(v20, 1, &v49);
    if (v50)
    {
      sub_100004A34(v50);
    }
  }

  else
  {
    v22 = *v5;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_1004D149C(a1);
      *buf = 67109120;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I MMSSendOperation Failed to get message from HTTP Response, MsgId: %u", buf, 8u);
    }
  }

LABEL_71:
  v38 = v53;
  if (v52)
  {
    sub_100004A34(v52);
  }

  return v38;
}

void sub_1005CE7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *__p, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CE8EC(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
  v3 = ServiceMap;
  v4 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (v10)
  {
LABEL_10:
    v12 = sub_1004D15AC(a1);
    (*(*v10 + 208))(v10, v12, 1, *(a1 + 36));
  }

LABEL_11:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1005CEA10(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CEACC(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "MobileOriginatedMMS", "", v5, 2u);
    }
  }
}

uint64_t sub_1005CEB44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1005CEBC4@<X0>(void *a1@<X8>)
{
  v2 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  theDict = v2;
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    keys = 0;
    v13 = 0;
    v14 = 0;
    sub_100222418(&keys, Count);
    values = 0;
    v10 = 0;
    v11 = 0;
    sub_10007D780(&values, Count);
    CFDictionaryGetKeysAndValues(theDict, keys, values);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, theDict);
    v4 = keys;
    v5 = v13;
    if (keys != v13)
    {
      do
      {
        v6 = *v4;
        if (!CFStringHasPrefix(*v4, @"phone.services.") && !CFStringHasPrefix(v6, @"assignments.") && !CFStringHasPrefix(v6, @"dev.") && !CFStringHasPrefix(v6, @"device."))
        {
          CFDictionaryRemoveValue(MutableCopy, v6);
        }

        ++v4;
      }

      while (v4 != v5);
    }

    sub_100010180(a1, &MutableCopy);
    sub_1000296E0(&MutableCopy);
    if (values)
    {
      v10 = values;
      operator delete(values);
    }

    if (keys)
    {
      v13 = keys;
      operator delete(keys);
    }
  }

  else
  {
    *a1 = 0;
    theDict = 0;
  }

  return sub_10001021C(&theDict);
}

void sub_1005CED6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, const void *a16)
{
  sub_1000296E0(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  sub_10001021C(&a16);
  _Unwind_Resume(a1);
}

const void **sub_1005CEDCC(uint64_t a1)
{
  v2 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  theDict = v2;
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "";
      v25 = 2080;
      v26 = "";
      v27 = 2048;
      v28 = Count;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sLocal store has %ld records", buf, 0x20u);
    }

    if (Count)
    {
      keys = 0;
      v18 = 0;
      v19 = 0;
      sub_100222418(&keys, Count);
      values = 0;
      v15 = 0;
      v16 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(theDict, keys, values);
      MutableCopy = CFDictionaryCreateMutableCopy(0, Count, theDict);
      v5 = keys;
      for (i = v18; v5 != i; ++v5)
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v21 = 0uLL;
          v22 = 0;
          ctu::cf::assign();
          *__p = v21;
          v12 = v22;
          v8 = v21;
          if (v22 >= 0)
          {
            v8 = __p;
          }

          *buf = 136315650;
          v24 = "";
          v25 = 2080;
          v26 = "";
          v27 = 2080;
          v28 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s", buf, 0x20u);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_1000296E0(&MutableCopy);
      if (values)
      {
        v15 = values;
        operator delete(values);
      }

      if (keys)
      {
        v18 = keys;
        operator delete(keys);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "";
      v25 = 2080;
      v26 = "";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sLocal store does not exist", buf, 0x16u);
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1005CF098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

BOOL sub_1005CF104(BOOL a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  else
  {
    v7 = a1;
    v3 = sub_10005D028();
    sub_10000501C(__p, "Thumper.settings.IDS");
    sub_10005D0D8(v3, __p, &v7);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    return v7;
  }
}

void sub_1005CF178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005CF194(uint64_t a1, void *a2, int a3, NSObject **a4, char *a5)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, a5);
  sub_1005CF288((a1 + 8), a4, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E68EB0;
  v9 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  *(a1 + 96) = a3;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 178) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void *sub_1005CF288(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1005CF2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CF314(uint64_t a1)
{
  *a1 = off_101E68EB0;
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 200));
  v3 = *(a1 + 184);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100005978((a1 + 104));
  sub_1005DDB38(a1 + 72, *(a1 + 80));
  v9 = *(a1 + 56);
  if (v9)
  {
    sub_100004A34(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1005CF434(void *a1)
{
  sub_100004AA0(&v14, a1 + 1);
  v3 = v14;
  v2 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  if ((sub_1005CF7D4(a1) & 1) == 0)
  {
    v4 = a1[3];
    v13[14] = v4;
    if (v4)
    {
      dispatch_retain(v4);
    }

    v13[7] = _NSConcreteStackBlock;
    v13[8] = 1174405120;
    v13[9] = sub_1005CF8D8;
    v13[10] = &unk_101E68F20;
    v13[11] = a1;
    v13[12] = v3;
    v13[13] = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100BE49DC();
  }

  v5 = a1[19];
  v6 = a1[3];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_1005D059C;
  v13[3] = &unk_101E68F50;
  v13[4] = a1;
  v13[5] = v3;
  v13[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 16))(v5, v6, v13);
  v7 = a1[18];
  v8 = a1[3];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1174405120;
  v12[2] = sub_1005D0624;
  v12[3] = &unk_101E68F80;
  v12[4] = a1;
  v12[5] = v3;
  v12[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 64))(v7, v8, v12);
  v9 = a1[21];
  v10 = a1[3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = sub_1005D0940;
  v11[3] = &unk_101E68FB0;
  v11[4] = a1;
  v11[5] = v3;
  v11[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v9 + 64))(v9, v10, v11);
  sub_1005D0D0C();
}

void sub_1005CF744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  v33 = *(v31 - 80);
  *(v31 - 80) = 0;
  if (v33)
  {
    sub_101775650(v33);
  }

  v34 = *(v31 - 96);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  v35 = *(v31 - 88);
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005CF7D4(uint64_t a1)
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
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return isWatch;
}

void sub_1005CF8BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CF8D8(void *a1, int a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v47[0] = 0;
        v47[1] = 0;
        v48 = 0;
        v10 = *(a3 + 23);
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a3 + 8);
        }

        if (v10)
        {
          sub_1009F7FB4(a3);
        }

        else
        {
          sub_10000501C(v47, "");
        }

        v11 = *(v7 + 40);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          v13 = sub_100BE4A98(a2);
          if (*(a3 + 23) >= 0)
          {
            v14 = a3;
          }

          else
          {
            v14 = *a3;
          }

          v15 = v47;
          if (v48 < 0)
          {
            v15 = v47[0];
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v55 = v13;
          v56 = 2080;
          v57 = v14;
          v58 = 2080;
          v59 = v15;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud status event '%s' with name '%s' %s", buf, 0x34u);
        }

        switch(a2)
        {
          case 2:
            *(v7 + 192) = 1;
            v44 = 0;
            sub_1006160F0(buf);
            __p[0] = sub_1006160B8(*buf, @"last.known.icloud.id");
            sub_100222990(&v44, __p);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            memset(buf, 0, sizeof(buf));
            ctu::cf::assign();
            *v42 = *buf;
            v43 = *&buf[16];
            v17 = *(v7 + 40);
            v18 = SHIBYTE(v48);
            if (v48 >= 0)
            {
              v19 = HIBYTE(v48);
            }

            else
            {
              v19 = v47[1];
            }

            v20 = os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_DEFAULT);
            if (v20)
            {
              v21 = v47[0];
              v22 = "not ";
              if (v19)
              {
                v22 = "";
              }

              if (v18 >= 0)
              {
                v21 = v47;
              }

              *buf = 136316162;
              *&buf[4] = "";
              v23 = v42;
              if (v43 < 0)
              {
                v23 = v42[0];
              }

              *&buf[12] = 2080;
              *&buf[14] = "";
              *&buf[22] = 2080;
              v55 = v22;
              v56 = 2080;
              v57 = v21;
              v58 = 2080;
              v59 = v23;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud status: %ssigned, ID '%s', last known ID '%s'", buf, 0x34u);
            }

            if (v19)
            {
              if (!sub_1005D0178(v20, v47))
              {
                v24 = HIBYTE(v43);
                v25 = SHIBYTE(v43);
                if (v43 < 0)
                {
                  v24 = v42[1];
                }

                if (v24)
                {
                  v26 = *(v7 + 40);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    v27 = v42[0];
                    if (v25 >= 0)
                    {
                      v27 = v42;
                    }

                    v28 = v47;
                    if (v48 < 0)
                    {
                      v28 = v47[0];
                    }

                    *buf = 136315906;
                    *&buf[4] = "";
                    *&buf[12] = 2080;
                    *&buf[14] = "";
                    *&buf[22] = 2080;
                    v55 = v27;
                    v56 = 2080;
                    v57 = v28;
                    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud ID was changed from %s to %s while offline?!?! Execute Sign-out procedures...", buf, 0x2Au);
                  }

                  sub_1005D0344(v7);
                }

                sub_1006160F0(&v40);
                v29 = v40;
                if (SHIBYTE(v48) < 0)
                {
                  sub_100005F2C(v37, v47[0], v47[1]);
                }

                else
                {
                  *v37 = *v47;
                  v38 = v48;
                }

                if (SHIBYTE(v38) < 0)
                {
                  sub_100005F2C(__p, v37[0], v37[1]);
                }

                else
                {
                  *__p = *v37;
                  v51 = v38;
                }

                v49 = 0;
                if (SHIBYTE(v51) < 0)
                {
                  sub_100005F2C(buf, __p[0], __p[1]);
                }

                else
                {
                  *buf = *__p;
                  *&buf[16] = v51;
                }

                v52 = 0;
                if (ctu::cf::convert_copy())
                {
                  v35 = v49;
                  v49 = v52;
                  v53 = v35;
                  sub_100005978(&v53);
                }

                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                v39 = v49;
                v49 = 0;
                sub_100005978(&v49);
                if (SHIBYTE(v51) < 0)
                {
                  operator delete(__p[0]);
                }

                sub_100616054(v29, @"last.known.icloud.id", v39);
                sub_100005978(&v39);
                if (SHIBYTE(v38) < 0)
                {
                  operator delete(v37[0]);
                }

                if (v41)
                {
                  sub_100004A34(v41);
                }
              }

              *(v7 + 193) = 1;
              v36 = *(v7 + 144);
              if (v36)
              {
                (*(*v36 + 72))(v36);
              }
            }

            else if (v44)
            {
              v31 = *(v7 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = v42;
                if (v43 < 0)
                {
                  v32 = v42[0];
                }

                *buf = 136315650;
                *&buf[4] = "";
                *&buf[12] = 2080;
                *&buf[14] = "";
                *&buf[22] = 2080;
                v55 = v32;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud ID %s is gone. Cleanup if needed...", buf, 0x20u);
              }

              sub_1005D0344(v7);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42[0]);
            }

            sub_100005978(&v44);
            break;
          case 1:
            *(v7 + 193) = 0;
            sub_1005D0344(v7);
          case 0:
            *(v7 + 193) = 1;
            if (sub_1005D0178(v12, v47))
            {
              v16 = *(v7 + 144);
              if (v16)
              {
                (*(*v16 + 72))(v16);
              }
            }

            else
            {
              sub_1006160F0(v42);
              v30 = v42[0];
              if (SHIBYTE(v48) < 0)
              {
                sub_100005F2C(__dst, v47[0], v47[1]);
              }

              else
              {
                *__dst = *v47;
                v46 = v48;
              }

              if (SHIBYTE(v46) < 0)
              {
                sub_100005F2C(__p, __dst[0], __dst[1]);
              }

              else
              {
                *__p = *__dst;
                v51 = v46;
              }

              v52 = 0;
              if (SHIBYTE(v51) < 0)
              {
                sub_100005F2C(buf, __p[0], __p[1]);
              }

              else
              {
                *buf = *__p;
                *&buf[16] = v51;
              }

              v53 = 0;
              if (ctu::cf::convert_copy())
              {
                v33 = v52;
                v52 = v53;
                v40 = v33;
                sub_100005978(&v40);
              }

              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              v34 = v52;
              v49 = v52;
              v52 = 0;
              sub_100005978(&v52);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p[0]);
              }

              sub_100616054(v30, @"last.known.icloud.id", v34);
              sub_100005978(&v49);
              if (SHIBYTE(v46) < 0)
              {
                operator delete(__dst[0]);
              }

              if (v42[1])
              {
                sub_100004A34(v42[1]);
              }
            }

            break;
        }

        sub_1005D0430(v7);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(v47[0]);
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1005D000C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_100005978(&a24);
  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100004A34(v44);
  _Unwind_Resume(a1);
}

BOOL sub_1005D0178(uint64_t a1, const void **a2)
{
  v19 = 0;
  sub_1006160F0(__p);
  v17[0] = sub_1006160B8(__p[0], @"last.known.icloud.id");
  sub_100222990(&v19, v17);
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  ctu::cf::assign();
  v18 = v21;
  *v17 = *__p;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = HIBYTE(v18);
  v6 = HIBYTE(v18);
  if (v18 < 0)
  {
    v5 = v17[1];
  }

  if (v4 == v5)
  {
    v7 = v3 >= 0 ? a2 : *a2;
    v8 = v18 >= 0 ? v17 : v17[0];
    if (!memcmp(v7, v8, v4))
    {
      v15 = 1;
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }
  }

  sub_1009F7FB4(v17);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = HIBYTE(v21);
  v12 = SHIBYTE(v21);
  if (v21 < 0)
  {
    v11 = __p[1];
  }

  if (v10 != v11)
  {
    v15 = 0;
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v9 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v21 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v15 = memcmp(v13, v14, v10) == 0;
  if (v12 < 0)
  {
LABEL_31:
    operator delete(__p[0]);
  }

LABEL_32:
  if (v18 < 0)
  {
LABEL_33:
    operator delete(v17[0]);
  }

LABEL_34:
  sub_100005978(&v19);
  return v15;
}

void sub_1005D02F4(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7 < 0)
  {
    operator delete(a2);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1005D0344(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = (a1 + 80);
  if (v2 != (a1 + 80))
  {
    do
    {
      v4 = v2[6];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = v2[5];
          if (v7)
          {
            (*(*v7 + 32))(v7);
          }

          sub_100004A34(v6);
        }
      }

      v8 = v2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
    }

    while (v9 != v3);
  }

  sub_1005D128C(a1);

  sub_1005D0D0C();
}

void sub_1005D0430(void *a1)
{
  if ((*(*a1 + 16))(a1))
  {
    (*(*a1 + 88))(a1, 1);
    v2 = a1[9];
    v3 = a1 + 10;
    if (v2 != a1 + 10)
    {
      do
      {
        v4 = v2[6];
        if (v4)
        {
          v5 = std::__shared_weak_count::lock(v4);
          if (v5)
          {
            v6 = v5;
            v7 = v2[5];
            if (v7)
            {
              (*(*v7 + 24))(v7);
            }

            sub_100004A34(v6);
          }
        }

        v8 = v2[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v2[2];
            v10 = *v9 == v2;
            v2 = v9;
          }

          while (!v10);
        }

        v2 = v9;
      }

      while (v9 != v3);
    }
  }
}

void *sub_1005D0550(void *a1, uint64_t *a2)
{
  sub_1005DDB98(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_1005D059C(void *a1)
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
        sub_1005D0430(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005D0624(void *a1, const void *a2, const __CFArray *a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        if (a3)
        {
          Count = CFArrayGetCount(a3);
        }

        else
        {
          Count = 0;
        }

        v13 = *(v9 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = (*(**(v9 + 144) + 88))(*(v9 + 144));
          v15 = ". FULL SYNC";
          v17 = 136316162;
          v18 = "";
          v19 = 2080;
          if (a4)
          {
            v15 = "";
          }

          v20 = "";
          v21 = 2048;
          v22 = Count;
          v23 = 2080;
          v24 = v14;
          v25 = 2080;
          v26 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived %zu record(s) via %s%s", &v17, 0x34u);
        }

        if (a4)
        {
          v16 = 0;
        }

        else
        {
          v16 = a3;
        }

        sub_1005D07B8(v9, a2, v16);
      }

      sub_100004A34(v11);
    }
  }
}

const void **sub_1005D07B8(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  v12 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v11 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1174405120;
  v8[2] = sub_1005D1E2C;
  v8[3] = &unk_101E69040;
  v8[4] = a1;
  v9 = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  v10 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v15 = 0;
  v16 = 0;
  sub_100004AA0(&v15, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005DDCC4;
  block[3] = &unk_101E69238;
  block[5] = v15;
  v14 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v8;
  dispatch_async(v6, block);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_10001021C(&v10);
  sub_100010250(&v9);
  sub_100010250(&v11);
  return sub_10001021C(&v12);
}

void sub_1005D0940(void *a1, const __CFDictionary *a2, const __CFArray *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        sub_1005D09E4(v7, a3, a2);
      }

      sub_100004A34(v9);
    }
  }
}

void sub_1005D09E4(os_log_t *a1, CFArrayRef theArray, const __CFDictionary *a3)
{
  if (!theArray || !a3 || !CFArrayGetCount(theArray))
  {
    return;
  }

  v29.length = CFArrayGetCount(theArray);
  v29.location = 0;
  if (!CFArrayContainsValue(theArray, v29, @"message."))
  {
    v22 = a1[5];
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v23 = 136315906;
    *&v23[4] = "";
    *&v23[12] = 2080;
    *&v23[14] = "";
    v24 = 2112;
    v25 = theArray;
    v26 = 2112;
    v27 = a3;
    v19 = "#I %s%sUnknown message received. changes: %@, dict: %@";
    v20 = v22;
    v21 = 42;
    goto LABEL_21;
  }

  Value = CFDictionaryGetValue(a3, @"message.");
  v7 = Value;
  if (!Value || (v8 = CFGetTypeID(Value), v8 != CFDictionaryGetTypeID()))
  {
    v18 = a1[5];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *v23 = 136315650;
    *&v23[4] = "";
    *&v23[12] = 2080;
    *&v23[14] = "";
    v24 = 2112;
    v25 = v7;
    v19 = "#I %s%sMessage is invalid or of wrong type: %@";
    v20 = v18;
    v21 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, v23, v21);
    return;
  }

  v9 = CFGetTypeID(v7);
  if (v9 != CFDictionaryGetTypeID())
  {
    v7 = 0;
  }

  v10 = CFDictionaryGetValue(v7, @"cmd");
  if (v10 && (v11 = v10, v12 = CFGetTypeID(v10), v12 == CFStringGetTypeID()))
  {
    v13 = CFDictionaryGetValue(v7, @"sender");
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 != CFStringGetTypeID())
      {
        v14 = 0;
      }
    }

    v16 = CFDictionaryGetValue(v7, @"value");
    isa = (*a1)[13].isa;

    isa(a1, v11, v14, v16, v7);
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101775688();
    }

    *v23 = off_101E69580;
    *&v23[8] = a1;
    v25 = v23;
    logger::CFTypeRefLogger();
    sub_100007E44(v23);
  }
}

void sub_1005D0D0C()
{
  v0 = 0;
  v1 = 0;
  sub_1005D93B0();
}

void sub_1005D11FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, char *a22, uint64_t a23)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  a22 = &a17;
  sub_1000087B4(&a22);
  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

const void **sub_1005D128C(uint64_t a1)
{
  v2 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  theDict = v2;
  if (v2)
  {
    Count = CFDictionaryGetCount(v2);
    if (Count)
    {
      keys = 0;
      v16 = 0;
      v17 = 0;
      sub_100222418(&keys, Count);
      values = 0;
      v13 = 0;
      v14 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(theDict, keys, values);
      v4 = keys;
      for (i = v16; v4 != i; ++v4)
      {
        v6 = *v4;
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 0uLL;
          v20 = 0;
          ctu::cf::assign();
          *__p = v19;
          v11 = v20;
          v8 = v19;
          if (v20 >= 0)
          {
            v8 = __p;
          }

          *buf = 136315650;
          v22 = "";
          v23 = 2080;
          v24 = "";
          v25 = 2080;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sremove %s from local storage", buf, 0x20u);
          if (SHIBYTE(v11) < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1005D615C(a1, v6, 0, 0, 0, 1);
      }

      if (values)
      {
        v13 = values;
        operator delete(values);
      }

      if (keys)
      {
        v16 = keys;
        operator delete(keys);
      }
    }
  }

  return sub_10001021C(&theDict);
}

void sub_1005D1494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D14F8(void *a1)
{
  if (!a1[13] && (byte_101FBA7F4 & 1) == 0)
  {
    v2 = a1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sdevice id not yet known - request", buf, 0x16u);
    }

    byte_101FBA7F4 = 1;
    sub_100004AA0(buf, a1 + 1);
    v4 = *buf;
    v3 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("ThumperExchange IDS initialization queue", v5);
    v7 = v6;
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_1005D16AC;
    block[3] = &unk_101E69010;
    block[4] = a1;
    block[5] = v4;
    v10 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v6, block);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v7)
    {
      dispatch_release(v7);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  return a1[13];
}

const void **sub_1005D16AC(void *a1)
{
  v2 = a1[4];
  cf = 0;
  sub_10073A9CC(&cf);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1005D1818;
  v7[3] = &unk_101E68FE0;
  v4 = a1[5];
  v3 = a1[6];
  v7[4] = v2;
  v7[5] = v4;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v13 = 0;
  v14 = 0;
  sub_100004AA0(&v13, (v2 + 8));
  v5 = *(v2 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005DDCC4;
  block[3] = &unk_101E69238;
  block[5] = v13;
  v12 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v5, block);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_100005978(&v9);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return sub_100005978(&cf);
}

void sub_1005D1818(void *a1)
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
        v7 = a1[7];
        v6 = (a1 + 7);
        if (v7)
        {
          v8 = *(v3 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v11 = 0uLL;
            v12 = 0;
            ctu::cf::assign();
            *__p = 0uLL;
            v10 = 0;
            *buf = 136315650;
            v14 = "";
            v15 = 2080;
            v16 = "";
            v17 = 2080;
            v18 = __p;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sdevice ID ready: %s", buf, 0x20u);
            if (SHIBYTE(v10) < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100222570((v3 + 104), v6);
          (*(*v3 + 80))(v3);
        }

        else
        {
          byte_101FBA7F4 = 0;
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005D1998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

const void **sub_1005D19C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10005C7A4((a1 + 56), (a2 + 56));
}

void sub_1005D19E8(uint64_t a1)
{
  sub_100005978((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1005D1A34(uint64_t result, uint64_t a2)
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

void sub_1005D1A50(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1005D1A60(uint64_t a1)
{
  if (sub_1005D14F8(a1))
  {
    if (sub_1005CF7D4(a1))
    {
      v2 = 1;
    }

    else
    {
      v2 = *(a1 + 192);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_1005D1AAC(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a3 + 23);
    v10 = (v9 & 0x80u) != 0;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a3 + 8);
    }

    if (v10)
    {
      v11 = *a3;
    }

    else
    {
      v11 = a3;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    v14 = 136315906;
    *v15 = "";
    *&v15[8] = 2080;
    *&v15[10] = "";
    *&v15[18] = 1024;
    v16 = a2;
    v17 = 2080;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding observer [%d] %s", &v14, 0x26u);
  }

  v14 = a2;
  v13 = a4[1];
  *&v15[4] = *a4;
  *&v15[12] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10022C634(a1 + 72, &v14);
  if (*&v15[12])
  {
    std::__shared_weak_count::__release_weak(*&v15[12]);
  }
}

void sub_1005D1BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005D1C04(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a3 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    if (v8)
    {
      v9 = *a3;
    }

    else
    {
      v9 = a3;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    v18 = 136315906;
    v19 = "";
    v20 = 2080;
    v21 = "";
    v22 = 1024;
    v23 = a2;
    v24 = 2080;
    v25 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving observer [%d] %s", &v18, 0x26u);
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    v12 = a1 + 80;
    do
    {
      if (*(v11 + 32) >= a2)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 32) < a2));
    }

    while (v11);
    if (v12 != a1 + 80 && *(v12 + 32) <= a2)
    {
      sub_1005DDCD4((a1 + 72), v12);
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a3 + 23);
        v15 = (v14 & 0x80u) != 0;
        if ((v14 & 0x80u) != 0)
        {
          v14 = *(a3 + 8);
        }

        if (v15)
        {
          v16 = *a3;
        }

        else
        {
          v16 = a3;
        }

        if (v14)
        {
          v17 = v16;
        }

        else
        {
          v17 = "<invalid>";
        }

        v18 = 136315906;
        v19 = "";
        v20 = 2080;
        v21 = "";
        v22 = 1024;
        v23 = a2;
        v24 = 2080;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoved observer [%d] %s", &v18, 0x26u);
      }
    }
  }
}

const void **sub_1005D1E2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1005D2090(v2);
  if (v3)
  {
    if (CFArrayGetCount(*(a1 + 40)) >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), v4);
        if (ValueAtIndex)
        {
          v6 = ValueAtIndex;
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 == CFStringGetTypeID())
          {
            v8 = *(a1 + 48);
            if (v8)
            {
              Value = CFDictionaryGetValue(v8, v6);
            }

            else
            {
              Value = 0;
            }

            sub_1005D21EC(v2, v6, Value);
          }
        }

        ++v4;
      }

      while (v4 < CFArrayGetCount(*(a1 + 40)));
    }

    v10 = *(*v2 + 96);

    return v10(v2, 0);
  }

  else
  {
    theArray = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      theArray = Mutable;
      v15 = 0;
      sub_1000279DC(&v15);
    }

    v13 = *(a1 + 48);
    if (v13)
    {
      CFDictionaryGetCount(v13);
      operator new[]();
    }

    (*(*v2 + 96))(v2, theArray);
    return sub_1000279DC(&theArray);
  }
}

void sub_1005D2090(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "";
    v14 = 2080;
    v15 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstart processing iCloud data", &v12, 0x16u);
  }

  v3 = *(a1 + 72);
  v4 = (a1 + 80);
  if (v3 != (a1 + 80))
  {
    do
    {
      v5 = v3[6];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v3[5];
          if (v8)
          {
            (*(*v8 + 48))(v8);
          }

          sub_100004A34(v7);
        }
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }
}

void sub_1005D21EC(void *a1, CFStringRef theString, const void *a3)
{
  if (CFStringHasPrefix(theString, @"phone.services."))
  {

    sub_1005D2384(a1, theString, a3);
  }

  else if (CFStringHasPrefix(theString, @"assignments."))
  {

    sub_1005D2B40(a1, theString, a3);
  }

  else if (CFStringHasPrefix(theString, @"dev.") || CFStringHasPrefix(theString, @"device."))
  {

    sub_1005D3050(a1, theString, a3);
  }
}

const void **sub_1005D2300(uint64_t a1, uint64_t a2)
{
  sub_10006F22C((a1 + 40), (a2 + 40));

  return sub_100010024((a1 + 48), (a2 + 48));
}

const void **sub_1005D2348(uint64_t a1)
{
  sub_10001021C((a1 + 48));

  return sub_100010250((a1 + 40));
}

void sub_1005D2384(uint64_t a1, const __CFString *a2, const void *a3)
{
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  sub_1005D3AF8(@"phone.services.", v50);
  if (SHIBYTE(v51) < 0)
  {
    if (v50[1])
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
LABEL_6:
      sub_1005D3C28(a2, a1, a3, &v47);
      if (v47 != 1)
      {
        sub_1005D4870(a1, a2, v49, *(&v48 + 1), a3);
LABEL_73:
        sub_10001021C(&v48 + 1);
        sub_10001021C(&v48);
        sub_10000A1EC(&v47 + 1);
        goto LABEL_74;
      }

      sub_1005D4494(a1, a2, v49, *(&v48 + 1), a3, *(&v47 + 1));
      sub_1006160F0(buf);
      sub_100616054(*buf, a2, a3);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v6 = *(a1 + 72);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 1174405120;
      v43 = sub_1005D4D30;
      v44 = &unk_101E69088;
      if (SHIBYTE(v51) < 0)
      {
        sub_100005F2C(&v45, v50[0], v50[1]);
      }

      else
      {
        v45 = *v50;
        v46 = v51;
      }

      v8 = (a1 + 80);
      if (v6 != (a1 + 80))
      {
        while (1)
        {
          *buf = *(v6 + 8);
          v9 = v6[6];
          *&buf[8] = v6[5];
          *&buf[16] = v9;
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
          }

          v10 = v43(v42, buf);
          if (*&buf[16])
          {
            std::__shared_weak_count::__release_weak(*&buf[16]);
          }

          if (v10)
          {
            break;
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
          if (v12 == v8)
          {
            goto LABEL_34;
          }
        }
      }

      if (v6 == v8)
      {
LABEL_34:
        v17 = *(a1 + 40);
        v14 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          __p[0] = 0;
          __p[1] = 0;
          v53 = 0;
          ctu::cf::assign();
          *v40 = *__p;
          v41 = v53;
          v18 = v50[0];
          v19 = __p[0];
          if (v53 >= 0)
          {
            v19 = v40;
          }

          if (v51 >= 0)
          {
            v18 = v50;
          }

          *buf = 136315906;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v55 = v19;
          v56 = 2080;
          v57 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: personality %s not mine - don't react", buf, 0x2Au);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40[0]);
          }
        }
      }

      else
      {
        v14 = v6[6];
        if (v14)
        {
          v14 = std::__shared_weak_count::lock(v14);
          if (v14)
          {
            v15 = v14;
            v16 = v6[5];
            if (v16)
            {
              (*(*v16 + 64))(v16, 1, a2, *(&v48 + 1), v48);
              sub_100004A34(v15);
              goto LABEL_71;
            }

            sub_100004A34(v15);
          }
        }
      }

      if (!capabilities::ct::supportsThumperService(v14))
      {
LABEL_71:
        if (SHIBYTE(v46) < 0)
        {
          operator delete(v45);
        }

        goto LABEL_73;
      }

      memset(buf, 0, sizeof(buf));
      if (SHIBYTE(v51) < 0)
      {
        sub_100005F2C(buf, v50[0], v50[1]);
      }

      else
      {
        *buf = *v50;
        *&buf[16] = v51;
      }

      __p[0] = 0;
      __p[1] = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
      v40[0] = v22;
      v26 = sub_100009510(&v21[1].__m_.__sig, v40);
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
          v29 = 0;
          goto LABEL_54;
        }
      }

      else
      {
        v28 = 0;
      }

      std::mutex::unlock(v21);
      v27 = 0;
      v29 = 1;
LABEL_54:
      (*(*v28 + 136))(__p, v28, buf);
      if ((v29 & 1) == 0)
      {
        sub_100004A34(v27);
      }

      if (!__p[0])
      {
        goto LABEL_67;
      }

      v30 = Registry::getServiceMap(*(a1 + 48));
      v31 = v30;
      if (v32 < 0)
      {
        v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
        v34 = 5381;
        do
        {
          v32 = v34;
          v35 = *v33++;
          v34 = (33 * v34) ^ v35;
        }

        while (v35);
      }

      std::mutex::lock(v30);
      v40[0] = v32;
      v36 = sub_100009510(&v31[1].__m_.__sig, v40);
      if (v36)
      {
        v38 = v36[3];
        v37 = v36[4];
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v31);
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v37);
          v39 = 0;
          goto LABEL_65;
        }
      }

      else
      {
        v38 = 0;
      }

      std::mutex::unlock(v31);
      v37 = 0;
      v39 = 1;
LABEL_65:
      (*(*v38 + 16))(v38, buf, kCFPSReprovisioningRequired, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
      if ((v39 & 1) == 0)
      {
        sub_100004A34(v37);
      }

LABEL_67:
      if (__p[1])
      {
        sub_100004A34(__p[1]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_71;
    }
  }

  else if (HIBYTE(v51))
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_6;
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 0uLL;
    *&v48 = 0;
    ctu::cf::assign();
    *__p = 0uLL;
    v53 = 0;
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v55 = __p;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sinvalid key name %s", buf, 0x20u);
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_74:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }
}

void sub_1005D2A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_100004A34(v41);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1005D4E48(&a22);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_1005D2B40(uint64_t a1, const __CFString *a2, const void *a3)
{
  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  sub_1005D3AF8(@"assignments.", v31);
  if (SHIBYTE(v32) < 0)
  {
    if (v31[1])
    {
      v30 = 0;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_6;
    }

LABEL_11:
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 0uLL;
      *&v29 = 0;
      ctu::cf::assign();
      *__p = 0uLL;
      v34 = 0;
      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v36 = __p;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sinvalid key name %s", buf, 0x20u);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_45;
  }

  if (!HIBYTE(v32))
  {
    goto LABEL_11;
  }

  v30 = 0;
  v28 = 0u;
  v29 = 0u;
LABEL_6:
  sub_1005D3C28(a2, a1, a3, &v28);
  if (v28 == 1)
  {
    sub_1005D4494(a1, a2, v30, *(&v29 + 1), a3, *(&v28 + 1));
    sub_1006160F0(buf);
    sub_100616054(*buf, a2, a3);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v6 = *(a1 + 72);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 1174405120;
    v24 = sub_1005D4E84;
    v25 = &unk_101E690B8;
    if (SHIBYTE(v32) < 0)
    {
      sub_100005F2C(&v26, v31[0], v31[1]);
    }

    else
    {
      v26 = *v31;
      v27 = v32;
    }

    v8 = (a1 + 80);
    if (v6 != (a1 + 80))
    {
      while (1)
      {
        *buf = *(v6 + 8);
        v9 = v6[6];
        *&buf[8] = v6[5];
        *&buf[16] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
        }

        v10 = v24(v23, buf);
        if (*&buf[16])
        {
          std::__shared_weak_count::__release_weak(*&buf[16]);
        }

        if (v10)
        {
          break;
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
        if (v12 == v8)
        {
          goto LABEL_35;
        }
      }
    }

    if (v6 == v8)
    {
LABEL_35:
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        __p[0] = 0;
        __p[1] = 0;
        v34 = 0;
        ctu::cf::assign();
        *v21 = *__p;
        v22 = v34;
        v19 = v31[0];
        v20 = v21;
        if (v34 < 0)
        {
          v20 = __p[0];
        }

        if (v32 >= 0)
        {
          v19 = v31;
        }

        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v36 = v20;
        v37 = 2080;
        v38 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%s%s: personality %s not mine - don't react", buf, 0x2Au);
        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }
      }
    }

    else
    {
      v14 = v6[6];
      if (v14)
      {
        v15 = std::__shared_weak_count::lock(v14);
        if (v15)
        {
          v16 = v15;
          v17 = v6[5];
          if (v17)
          {
            (*(*v17 + 80))(v17, 1, a2, *(&v29 + 1), v29);
          }

          sub_100004A34(v16);
        }
      }
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }
  }

  else
  {
    sub_1005D4870(a1, a2, v30, *(&v29 + 1), a3);
  }

  sub_10001021C(&v29 + 1);
  sub_10001021C(&v29);
  sub_10000A1EC(&v28 + 1);
LABEL_45:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1005D2F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_100004A34(v41);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1005D4E48(&a22);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

const void **sub_1005D3050(void *a1, const __CFString *a2, const void *a3)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1005D3C28(a2, a1, a3, &v20);
  if (v20 == 1)
  {
    sub_1005D4494(a1, a2, v22, *(&v21 + 1), a3, *(&v20 + 1));
    sub_1006160F0(&theString2);
    sub_100616054(theString2, a2, a3);
    if (v19)
    {
      sub_100004A34(v19);
    }

    theString2 = 0;
    sub_1005D414C(a1, 0, &theString2);
    v17 = 0;
    sub_1005D4280(a1, 0, &v17);
    if (CFStringCompare(a2, theString2, 0))
    {
      v6 = CFStringCompare(a2, v17, 0) == kCFCompareEqualTo;
    }

    else
    {
      v6 = 1;
    }

    v7 = a1[9];
    v8 = a1 + 10;
    if (v7 != a1 + 10)
    {
      do
      {
        v9 = v7[6];
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v10;
            v12 = v7[5];
            if (v12)
            {
              (*(*v12 + 72))(v12, v6, a2, *(&v21 + 1), v21);
            }

            sub_100004A34(v11);
          }
        }

        v13 = v7[1];
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
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
      }

      while (v14 != v8);
    }

    sub_100005978(&v17);
    sub_100005978(&theString2);
  }

  else
  {
    sub_1005D4870(a1, a2, v22, *(&v21 + 1), a3);
  }

  sub_10001021C(&v21 + 1);
  sub_10001021C(&v21);
  return sub_10000A1EC(&v20 + 1);
}

void sub_1005D322C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_100005978(va);
  sub_1005D4E48(va1);
  _Unwind_Resume(a1);
}

void sub_1005D34A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  std::bad_cast::~bad_cast((v21 - 56));
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1005D331CLL);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005D3548(uint64_t a1, CFDictionaryRef theDict, __int128 *a3, uint64_t *a4, int a5)
{
  CFDictionaryGetValue(theDict, @"ver");
  v9 = sub_1005D328C();
  *a4 = v9;
  sub_10006F264(__p, a3);
  v10 = sub_1005D3728(a1, __p);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  if (!a5)
  {
    if (*"\b" < v9)
    {
      goto LABEL_16;
    }

    return 1;
  }

  if (v10 == v9 && *"\b" == HIDWORD(v9) && *"\b" >= v9)
  {
    return 1;
  }

LABEL_16:
  v14 = *(a1 + 40);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v15)
  {
    v21 = "";
    v23 = "";
    v16 = "expected exact";
    *buf = 136316674;
    v22 = 2080;
    if (!a5)
    {
      v16 = "local";
    }

    v24 = 2080;
    v25 = v16;
    v26 = 1024;
    v27 = v10;
    v28 = 1024;
    v29 = *"\b";
    v30 = 1024;
    v31 = v9;
    v32 = 1024;
    v33 = HIDWORD(v9);
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sSchema version mismatch, %s: %u.%u, cloud has: %u.%u", buf, 0x38u);
    return 0;
  }

  return result;
}