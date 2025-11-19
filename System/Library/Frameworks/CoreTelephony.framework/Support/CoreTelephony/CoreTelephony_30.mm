void sub_1001DD9EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001DDA90(unsigned __int8 *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1[23];
  if (v3 < 0)
  {
    v3 = *(a1 + 1);
    if (v3)
    {
      v2 = *a1;
LABEL_6:
      while (1)
      {
        v4 = *v2;
        if (v4 <= 0x3B && ((1 << v4) & 0x800008400000000) != 0)
        {
          break;
        }

        v6 = v4;
        if (v4 < 0)
        {
          if (!__maskrune(v4, 0x40000uLL) || __maskrune(v6, 0x4000uLL))
          {
            return 0;
          }
        }

        else
        {
          v7 = _DefaultRuneLocale.__runetype[v4];
          if ((v7 & 0x40000) == 0 || (v7 & 0x4000) != 0)
          {
            return 0;
          }
        }

        ++v2;
        if (!--v3)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (a1[23])
  {
    goto LABEL_6;
  }

  return a2;
}

void sub_1001DDB5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 24);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0 || (v6 = *(a1 + 16), v7 = v5, !v6))
  {
    sub_1001E12D8();
  }

  if (*(v6 + 24))
  {
    *a2 = v6;
    a2[1] = v5;
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_101765008();
    }

    *a2 = 0;
    a2[1] = 0;
    sub_100004A34(v7);
  }
}

void sub_1001DDC50(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DDC68(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_1001DDA90(a2, 1))
  {
    if (a3[1] == *a3)
    {
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_10176511C();
      }
    }

    else
    {
      v19 = 0;
      v20 = 0;
      sub_1001DDB5C(a1, &v19);
      if (v19)
      {
        v17 = v19;
        v18 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10000501C(&v13, "remote_plan");
        v6 = std::string::insert(&v13, 0, "REPLACE INTO ", 0xDuLL);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
        *&v14.__r_.__value_.__l.__data_ = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        v8 = std::string::append(&v14, " VALUES(?1, ?2);", 0x10uLL);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v16 = v8->__r_.__value_.__r.__words[2];
        *v15 = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(v10, *a2, *(a2 + 8));
        }

        else
        {
          *v10 = *a2;
          v11 = *(a2 + 16);
        }

        memset(__p, 0, 24);
        sub_100034C50(__p, *a3, a3[1], a3[1] - *a3);
        v21 = 0;
        operator new();
      }

      if (v20)
      {
        sub_100004A34(v20);
      }
    }
  }

  else if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101765044();
  }
}

void sub_1001DDF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  operator delete(v38);
  sub_1001DE0AC(&a9);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (v37)
  {
    sub_100004A34(v37);
    sub_100004A34(v37);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1001DE028(uint64_t a1, const char *a2, uint64_t a3)
{
  ppStmt = 0;
  v4 = *(*a1 + 24);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sqlite3_prepare_v2(v4, a2, -1, &ppStmt, 0);
  if (*(a3 + 24))
  {
    sub_1001E003C(a3, ppStmt);
  }

  v5 = sqlite3_step(ppStmt) == 101;
  sqlite3_finalize(ppStmt);
  return v5;
}

uint64_t sub_1001DE0AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001DE0F0(uint64_t a1, uint64_t a2)
{
  if (sub_1001DDA90(a2, 1))
  {
    v16 = 0;
    v17 = 0;
    sub_1001DDB5C(a1, &v16);
    if (v16)
    {
      v14 = v16;
      v15 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(&v10, "remote_plan");
      v4 = std::string::insert(&v10, 0, "DELETE from '", 0xDuLL);
      v5 = *&v4->__r_.__value_.__l.__data_;
      v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
      *&v11.__r_.__value_.__l.__data_ = v5;
      v4->__r_.__value_.__l.__size_ = 0;
      v4->__r_.__value_.__r.__words[2] = 0;
      v4->__r_.__value_.__r.__words[0] = 0;
      v6 = std::string::append(&v11, "' WHERE keyName = ?;", 0x14uLL);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v13 = v6->__r_.__value_.__r.__words[2];
      *v12 = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v9 = *(a2 + 16);
      }

      v18 = 0;
      operator new();
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  else if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101765158();
  }
}

void sub_1001DE35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  operator delete(v34);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (v33)
  {
    sub_100004A34(v33);
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

void sub_1001DE404(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  if (sub_1001DE5DC(a2, 0))
  {
    v11 = 0uLL;
    v12 = 0;
    sub_10000501C(&__p, "iccid");
    sub_1001DE634(a1, a2, 1, &v11);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_10000501C(v6, "iccid");
    sub_1001DE634(a1, a2, 0, &__p);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (*(&v11 + 1) == v11)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      sub_100171D18(a3, __p, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 6));
    }

    else
    {
      sub_1001DEBFC(&v11, &__p);
      *a3 = v11;
      a3[2] = v12;
      v12 = 0;
      v11 = 0uLL;
    }

    v6[0] = &__p;
    sub_10016BF8C(v6);
    __p = &v11;
    sub_10016BF8C(&__p);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1017651C8();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1001DE578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a15;
  sub_10016BF8C(&__p);
  a15 = &a18;
  sub_10016BF8C(&a15);
  _Unwind_Resume(a1);
}

void sub_1001DE5C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1001DE5BCLL);
}

uint64_t sub_1001DE5DC(char *a1, uint64_t a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v2 = *(a1 + 1);
    if (v2)
    {
      a1 = *a1;
      goto LABEL_6;
    }
  }

  else if (a1[23])
  {
LABEL_6:
    while (1)
    {
      v3 = *a1;
      if (v3 < 0 || (_DefaultRuneLocale.__runetype[v3] & 0x10000) == 0)
      {
        break;
      }

      ++a1;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return a2;
}

void sub_1001DE634(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>)
{
  v53 = 0;
  v54 = 0;
  sub_1001DDB5C(a1, &v53);
  v8 = v53;
  if (v53)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    memset(&v52, 0, sizeof(v52));
    sub_10000501C(&v52, "SELECT timestamp, iccid, status, device_id, plan_type, primary_iccid, smdp_address, manage_account_url, manage_account_postdata, is_alt_em_address_update_url, present_in_response, phone_number");
    if (a3)
    {
      v9 = "local_subscription";
    }

    else
    {
      v9 = "remote_subscription";
    }

    v10 = sub_10000501C(&__str, v9);
    v11 = std::string::insert(v10, 0, " FROM ", 6uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    *&v39 = *(&v11->__r_.__value_.__l + 2);
    *__p = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      v14 = BYTE7(v39);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(&v52, v13, v14);
    if (SBYTE7(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::operator+<char>();
    v15 = std::string::append(&__str, " = ?1 ORDER BY timestamp DESC;", 0x1EuLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *&v39 = *(&v15->__r_.__value_.__l + 2);
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      v18 = BYTE7(v39);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(&v52, v17, v18);
    if (SBYTE7(v39) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    ppStmt = 0;
    if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v52;
    }

    else
    {
      v19 = v52.__r_.__value_.__r.__words[0];
    }

    sqlite3_prepare_v2(*(v8 + 24), v19, -1, &ppStmt, 0);
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    sqlite3_bind_text(ppStmt, 1, v20, -1, 0xFFFFFFFFFFFFFFFFLL);
    while (sqlite3_step(ppStmt) == 100)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      v41 = 0u;
      *v42 = 0u;
      v39 = 0u;
      *v40 = 0u;
      *__p = 0u;
      BYTE9(v49) = 1;
      __p[0] = COERCE_VOID_(sqlite3_column_double(ppStmt, 0));
      v21 = sqlite3_column_text(ppStmt, 1);
      sub_100016890(v40, v21);
      BYTE8(v41) = sqlite3_column_int(ppStmt, 2);
      v22 = sqlite3_column_text(ppStmt, 3);
      sub_100016890(&__p[1], v22);
      BYTE9(v41) = sqlite3_column_int(ppStmt, 4);
      v23 = sqlite3_column_text(ppStmt, 5);
      sub_100016890(v42, v23);
      v24 = sqlite3_column_text(ppStmt, 6);
      sub_100016890(&v45, v24);
      v25 = sqlite3_column_text(ppStmt, 7);
      sub_100016890((&v46 + 8), v25);
      BYTE8(v49) = sqlite3_column_int(ppStmt, 9) != 0;
      BYTE9(v49) = sqlite3_column_int(ppStmt, 10) != 0;
      v26 = sqlite3_column_text(ppStmt, 11);
      sub_100016890((&v43 + 8), v26);
      memset(&__str, 0, sizeof(__str));
      v27 = sqlite3_column_text(ppStmt, 8);
      sub_10000501C(&__str, v27);
      v36[0] = 0;
      v36[1] = 0;
      v37 = 0;
      ctu::base64::decode();
      v28 = v36[1];
      v29 = v36[0];
      if (v36[0] != v36[1])
      {
        while (1)
        {
          v30 = *v29;
          if (!(v30 < 0 ? __maskrune(*v29, 0x40000uLL) : _DefaultRuneLocale.__runetype[v30] & 0x40000))
          {
            break;
          }

          if (++v29 == v28)
          {
            sub_1001E0090(&v34, v36[0], v36[1], v36[1] - v36[0]);
            if (SBYTE7(v49) < 0)
            {
              operator delete(v48);
            }

            v48 = v34;
            *&v49 = v35;
            goto LABEL_43;
          }
        }
      }

      std::string::operator=(&v48, &__str);
LABEL_43:
      v32 = a4[1];
      if (v32 >= a4[2])
      {
        v33 = sub_1001E013C(a4, __p);
      }

      else
      {
        sub_10016A078(a4[1], __p);
        v33 = v32 + 192;
      }

      a4[1] = v33;
      if (v36[0])
      {
        v36[1] = v36[0];
        operator delete(v36[0]);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v49) < 0)
      {
        operator delete(v48);
      }

      if (SHIBYTE(v47) < 0)
      {
        operator delete(*(&v46 + 1));
      }

      if (SBYTE7(v46) < 0)
      {
        operator delete(v45);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(*(&v43 + 1));
      }

      if (SBYTE7(v43) < 0)
      {
        operator delete(v42[0]);
      }

      if (SBYTE7(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p[1]);
      }
    }

    if (ppStmt)
    {
      sqlite3_finalize(ppStmt);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_101765238();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  if (v54)
  {
    sub_100004A34(v54);
  }
}

void sub_1001DEB24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (*(v22 - 105) < 0)
  {
    operator delete(*(v22 - 128));
  }

  if (*(v22 - 81) < 0)
  {
    operator delete(*(v22 - 104));
  }

  sub_10016BF8C(&__p);
  v24 = *(v22 - 72);
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001DEBFC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      v6 = *v4;
      v5 = v4[1];
      if (*(v2 + 55) < 0)
      {
        sub_100005F2C(__p, *(v2 + 32), *(v2 + 40));
      }

      else
      {
        *__p = *(v2 + 32);
        v17 = *(v2 + 48);
      }

      v7 = HIBYTE(v17);
      if (v6 == v5)
      {
        v5 = v6;
LABEL_24:
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= 0)
        {
          v8 = HIBYTE(v17);
        }

        else
        {
          v8 = __p[1];
        }

        if (v17 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        v10 = v6 + 32;
        while (1)
        {
          v11 = *(v10 + 23);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v10 + 8);
          }

          if (v11 == v8)
          {
            v13 = v12 >= 0 ? v10 : *v10;
            if (!memcmp(v13, v9, v8))
            {
              break;
            }
          }

          v14 = (v10 + 160);
          v10 += 192;
          if (v14 == v5)
          {
            goto LABEL_24;
          }
        }

        v5 = (v10 - 32);
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      operator delete(__p[0]);
LABEL_26:
      v15 = v4[1];
      if (v5 == v15)
      {
        if (v5 >= v4[2])
        {
          result = sub_10016F928(v4, v2);
        }

        else
        {
          sub_10016A078(v4[1], v2);
          result = v15 + 192;
          v4[1] = v15 + 192;
        }

        v4[1] = result;
      }

      else
      {
        result = CellularPlanEntitlementSubscriptionDetails::merge(v5, v2);
      }

      v2 += 192;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_1001DED70(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (sub_1001DE5DC(a2, 0))
  {
    sub_10000501C(&__p, "iccid");
    sub_1001DE634(a1, a2, a3, a4);
    if (v9 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_1017651C8();
    }

    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }
}

void sub_1001DEE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DEE40(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  if (sub_1001DE5DC(a2, 0))
  {
    v11 = 0uLL;
    v12 = 0;
    sub_10000501C(&__p, "primary_iccid");
    sub_1001DE634(a1, a2, 1, &v11);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_10000501C(v6, "primary_iccid");
    sub_1001DE634(a1, a2, 0, &__p);
    if (v7 < 0)
    {
      operator delete(v6[0]);
    }

    if (*(&v11 + 1) == v11)
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      sub_100171D18(a3, __p, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 6));
    }

    else
    {
      sub_1001DEBFC(&v11, &__p);
      *a3 = v11;
      a3[2] = v12;
      v12 = 0;
      v11 = 0uLL;
    }

    v6[0] = &__p;
    sub_10016BF8C(v6);
    __p = &v11;
    sub_10016BF8C(&__p);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
    {
      sub_101765274();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_1001DEFB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char *a15, uint64_t a16, uint64_t a17, char a18)
{
  __p = &a15;
  sub_10016BF8C(&__p);
  a15 = &a18;
  sub_10016BF8C(&a15);
  _Unwind_Resume(a1);
}

void sub_1001DF000(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1001DEFF8);
}

void sub_1001DF018(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = a3;
  if ((a3 & 0x100) != 0)
  {
    sub_10000501C(v13, "device_id");
    sub_1001DE634(a1, a2, v4 & 1, a4);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }
  }

  else
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    sub_10000501C(&__p, "device_id");
    sub_1001DE634(a1, a2, 1, v13);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v11 = 0;
    v12 = 0;
    sub_10000501C(v8, "device_id");
    sub_1001DE634(a1, a2, 0, &__p);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }

    if (v13[1] == v13[0])
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      sub_100171D18(a4, __p, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 6));
    }

    else
    {
      sub_1001DEBFC(v13, &__p);
      *a4 = *v13;
      a4[2] = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
    }

    v8[0] = &__p;
    sub_10016BF8C(v8);
    __p = v13;
    sub_10016BF8C(&__p);
  }
}

void sub_1001DF190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void ***__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  __p = &a15;
  sub_10016BF8C(&__p);
  a15 = &a21;
  sub_10016BF8C(&a15);
  _Unwind_Resume(a1);
}

void sub_1001DF208(uint64_t a1, unsigned __int8 **a2, int a3)
{
  v28 = 0;
  v29 = 0;
  sub_1001DDB5C(a1, &v28);
  if (v28)
  {
    v21 = v28;
    v26[0] = 0;
    v26[1] = 0;
    v27 = 0;
    if (a3)
    {
      v6 = "local_subscription";
    }

    else
    {
      v6 = "remote_subscription";
    }

    sub_10000501C(v26, v6);
    v7 = *a2;
    v8 = a2[1];
    if (v7 != v8)
    {
      v9 = v29;
      v10 = v7 + 136;
      v11 = v29;
      do
      {
        v12 = v10 - 104;
        if (sub_1001DE5DC(v10 - 104, 1) && sub_1001DE5DC(v10 - 128, 0) && sub_1001DE5DC(v10 - 72, 1))
        {
          v13 = *(v10 - 81);
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v10 - 12);
          }

          if (v13)
          {
            goto LABEL_17;
          }

          v14 = *(v10 - 49);
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v10 - 8);
          }

          if (v14)
          {
LABEL_17:
            if (sub_1001DDA90(v10 - 24, 1) && (sub_1001DDA90(v10, 1) & 1) != 0)
            {
              v24 = v21;
              v25 = v9;
              if (v9)
              {
                atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              std::operator+<char>();
              v15 = std::string::append(&v23, " (timestamp, iccid, status, device_id, plan_type, primary_iccid, smdp_address, manage_account_url, manage_account_postdata, is_alt_em_address_update_url, present_in_response, phone_number) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11, ?12);", 0xF8uLL);
              v16 = *&v15->__r_.__value_.__l.__data_;
              *&buf[16] = *(&v15->__r_.__value_.__l + 2);
              *buf = v16;
              v15->__r_.__value_.__l.__size_ = 0;
              v15->__r_.__value_.__r.__words[2] = 0;
              v15->__r_.__value_.__r.__words[0] = 0;
              sub_10016A078(v22, (v10 - 136));
              v30 = 0;
              operator new();
            }
          }
        }

        v17 = *(a1 + 8);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v10 - 128;
          if (*(v10 - 105) < 0)
          {
            v18 = *v18;
          }

          if (*(v10 - 81) < 0)
          {
            v12 = *v12;
          }

          v19 = v10 - 72;
          if (*(v10 - 49) < 0)
          {
            v19 = *v19;
          }

          *buf = 136315650;
          *&buf[4] = v18;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          *&buf[22] = 2080;
          v32 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I invalid data for [%s][%s][%s] , skipping", buf, 0x20u);
        }

        v20 = v10 + 56;
        v10 += 192;
        v9 = v11;
      }

      while (v20 != v8);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }
  }

  if (v29)
  {
    sub_100004A34(v29);
  }
}

void sub_1001DF610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1001E0698(v43 - 176);
  sub_10011289C(&a13);
  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    sub_100004A34(v42);
  }

  if (*(v43 - 193) < 0)
  {
    operator delete(*(v43 - 216));
  }

  if (v42)
  {
    sub_100004A34(v42);
  }

  _Unwind_Resume(a1);
}

void sub_1001DF6C0(uint64_t a1, uint64_t a2, int a3)
{
  v38 = 0;
  v39 = 0;
  sub_1001DDB5C(a1, &v38);
  v6 = v38;
  if (!v38)
  {
    goto LABEL_64;
  }

  memset(&v37, 0, sizeof(v37));
  if (sub_1001DDA90(a2, 0))
  {
    std::string::append(&v37, "primary_iccid = ?", 0x11uLL);
  }

  else
  {
    v7 = *(a2 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v7)
    {
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_1017652E4();
      }

      goto LABEL_62;
    }
  }

  if (sub_1001DDA90((a2 + 24), 0))
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v37, " AND ", 5uLL);
    }

    std::string::append(&v37, "iccid = ?", 9uLL);
  }

  else
  {
    v9 = *(a2 + 47);
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 32);
    }

    if (v9)
    {
      if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
      {
        sub_101765358();
      }

      goto LABEL_62;
    }
  }

  if (*(a2 + 48) != *(a2 + 56))
  {
    v10 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v10 = v37.__r_.__value_.__l.__size_;
    }

    if (v10)
    {
      std::string::append(&v37, " AND ", 5uLL);
    }

    std::string::append(&v37, "status IN (", 0xBuLL);
    if (*(a2 + 56) != *(a2 + 48))
    {
      v11 = 0;
      do
      {
        std::string::append(&v37, "?,", 2uLL);
        ++v11;
      }

      while (v11 < *(a2 + 56) - *(a2 + 48));
    }

    v12 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    v13 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = v37.__r_.__value_.__l.__size_;
      v13 = v37.__r_.__value_.__r.__words[0];
    }

    v13->__r_.__value_.__s.__data_[v12 - 1] = 41;
  }

  v14 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v14 = v37.__r_.__value_.__l.__size_;
  }

  if (v14)
  {
    v35 = 0uLL;
    v36 = 0;
    if (a3)
    {
      v15 = "local_subscription";
    }

    else
    {
      v15 = "remote_subscription";
    }

    sub_10000501C(&v31, v15);
    v16 = std::string::insert(&v31, 0, "DELETE FROM ", 0xCuLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = std::string::append(&v32, " WHERE ", 7uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v33.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v33.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v37;
    }

    else
    {
      v20 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v37.__r_.__value_.__l.__size_;
    }

    v22 = std::string::append(&v33, v20, v21);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v34.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v34.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v34, ";", 1uLL);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v36 = v24->__r_.__value_.__r.__words[2];
    v35 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    __p[3] = v6;
    __p[4] = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v26, *a2, *(a2 + 8));
    }

    else
    {
      *v26 = *a2;
      v27 = *(a2 + 16);
    }

    if (*(a2 + 47) < 0)
    {
      sub_100005F2C(v28, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      *v28 = *(a2 + 24);
      v29 = *(a2 + 40);
    }

    memset(__p, 0, 24);
    sub_1001E026C(__p, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
    v40 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101765408();
  }

LABEL_62:
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

LABEL_64:
  if (v39)
  {
    sub_100004A34(v39);
  }
}

void sub_1001DFC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (v51[31] < 0)
  {
    operator delete(*v53);
  }

  operator delete(v51);
  sub_1001DFD80(&__p);
  if (v52)
  {
    sub_100004A34(v52);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  v56 = *(v54 - 112);
  if (v56)
  {
    sub_100004A34(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001DFD80(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
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

uint64_t sub_1001DFDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  ppStmt = 0;
  sqlite3_prepare_v2(*(*a1 + 24), "SELECT sql FROM sqlite_master WHERE name = ?;", -1, &ppStmt, 0);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  sqlite3_bind_text(ppStmt, 1, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (sqlite3_step(ppStmt) == 100)
  {
    v6 = sqlite3_column_text(ppStmt, 0);
    sub_100016890(a3, v6);
  }

  return sqlite3_finalize(ppStmt);
}

void sub_1001DFE80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DFEA0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1001DFEF8(uint64_t a1)
{
  sub_1001DFF30(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001DFF30(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void sub_1001DFF90(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001DFFE4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001DFFE4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_1001E003C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

_BYTE *sub_1001E0090(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

uint64_t sub_1001E013C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10016BDCC(a1, v6);
  }

  v13 = 0;
  v14 = 192 * v2;
  sub_10016A078(192 * v2, a2);
  v15 = 192 * v2 + 192;
  v7 = a1[1];
  v8 = 192 * v2 + *a1 - v7;
  sub_10016BE24(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10016BF3C(&v13);
  return v12;
}

void sub_1001E0258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10016BF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E026C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100034CCC(result, a4);
  }

  return result;
}

void sub_1001E02CC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E02E8(uint64_t a1)
{
  *a1 = off_101E30170;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1001E0348(uint64_t a1)
{
  *a1 = off_101E30170;
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

uint64_t sub_1001E049C(uint64_t a1, void *a2)
{
  *a2 = off_101E30170;
  v4 = a2 + 1;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *v4 = v5;
  }

  a2[4] = 0;
  a2[5] = 0;
  a2[6] = 0;
  return sub_100034C50((a2 + 4), *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
}

void sub_1001E0528(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E054C(void *a1)
{
  sub_1001E0640(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1001E0588(uint64_t a1, sqlite3_stmt **a2)
{
  v2 = *a2;
  v3 = a1 + 8;
  if (*(a1 + 31) >= 0)
  {
    v4 = (a1 + 8);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  sqlite3_bind_text(*a2, 1, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32) - v5;

  return sqlite3_bind_blob64(v2, 2, v5, v6, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_1001E05F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001E0640(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_1001E0698(uint64_t a1)
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

uint64_t sub_1001E0718(uint64_t a1)
{
  *a1 = off_101E30200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1001E0768(uint64_t a1)
{
  *a1 = off_101E30200;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

char *sub_1001E086C(char *result, void *a2)
{
  *a2 = off_101E30200;
  v2 = a2 + 1;
  if (result[31] < 0)
  {
    return sub_100005F2C(v2, *(result + 1), *(result + 2));
  }

  v3 = *(result + 8);
  v2[2] = *(result + 3);
  *v2 = v3;
  return result;
}

void sub_1001E08B4(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1001E08C8(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

uint64_t sub_1001E090C(uint64_t a1, sqlite3_stmt **a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (*(v2 + 23) >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  return sqlite3_bind_text(*a2, 1, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t sub_1001E0934(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1001E0980(void *a1)
{
  *a1 = off_101E30280;
  sub_10011289C((a1 + 1));
  return a1;
}

void sub_1001E09C4(void *a1)
{
  *a1 = off_101E30280;
  sub_10011289C((a1 + 1));

  operator delete();
}

void sub_1001E0AD4(void *a1)
{
  sub_10011289C(a1 + 8);

  operator delete(a1);
}

void sub_1001E0B10(uint64_t a1, sqlite3_stmt **a2)
{
  v3 = *a2;
  sqlite3_bind_double(*a2, 1, *(a1 + 8));
  if (*(a1 + 63) >= 0)
  {
    v4 = (a1 + 40);
  }

  else
  {
    v4 = *(a1 + 40);
  }

  sqlite3_bind_text(v3, 2, v4, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v3, 3, *(a1 + 64));
  if (*(a1 + 39) >= 0)
  {
    v5 = (a1 + 16);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  sqlite3_bind_text(v3, 4, v5, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v3, 5, *(a1 + 65));
  if (*(a1 + 95) >= 0)
  {
    v6 = (a1 + 72);
  }

  else
  {
    v6 = *(a1 + 72);
  }

  sqlite3_bind_text(v3, 6, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 143) >= 0)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = *(a1 + 120);
  }

  sqlite3_bind_text(v3, 7, v7, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (*(a1 + 167) >= 0)
  {
    v8 = (a1 + 144);
  }

  else
  {
    v8 = *(a1 + 144);
  }

  sqlite3_bind_text(v3, 8, v8, -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int(v3, 10, *(a1 + 192));
  sqlite3_bind_int(v3, 11, *(a1 + 193));
  if (*(a1 + 119) >= 0)
  {
    v9 = (a1 + 96);
  }

  else
  {
    v9 = *(a1 + 96);
  }

  sqlite3_bind_text(v3, 12, v9, -1, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *(a1 + 168);
  v11 = a1 + 168;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_1001E0D88(&v18, v14, v14 + v15, v15);
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  ctu::base64::encode();
  sqlite3_bind_text(v3, 9, __p, -1, 0xFFFFFFFFFFFFFFFFLL);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1001E0D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E0D3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E0D88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100034CCC(result, a4);
  }

  return result;
}

void sub_1001E0DE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E0DFC(uint64_t a1)
{
  *a1 = off_101E30300;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

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

void sub_1001E0E6C(uint64_t a1)
{
  *a1 = off_101E30300;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1001E0FCC(_Unwind_Exception *a1)
{
  if (v1[31] < 0)
  {
    operator delete(*v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E1010(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E30300;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *v4 = v5;
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C((a2 + 32), *(a1 + 32), *(a1 + 40));
  }

  else
  {
    v6 = *(a1 + 32);
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 32) = v6;
  }

  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return sub_1001E026C(a2 + 56, *(a1 + 56), *(a1 + 64), *(a1 + 64) - *(a1 + 56));
}

void sub_1001E10C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E10F8(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v3 = *(a1 + 8);

    operator delete(v3);
  }
}

void sub_1001E1160(char *__p)
{
  v2 = *(__p + 7);
  if (v2)
  {
    *(__p + 8) = v2;
    operator delete(v2);
  }

  if (__p[55] < 0)
  {
    operator delete(*(__p + 4));
  }

  if (__p[31] < 0)
  {
    operator delete(*(__p + 1));
  }

  operator delete(__p);
}

uint64_t sub_1001E11C4(uint64_t result, sqlite3_stmt **a2)
{
  v2 = result;
  v3 = (result + 8);
  v4 = *a2;
  if ((*(result + 31) & 0x80000000) == 0)
  {
    if (!*(result + 31))
    {
      goto LABEL_7;
    }

LABEL_6:
    result = sqlite3_bind_text(*a2, 1, v3, -1, 0xFFFFFFFFFFFFFFFFLL);
    v5 = 2;
    goto LABEL_8;
  }

  if (*(result + 16))
  {
    v3 = *v3;
    goto LABEL_6;
  }

LABEL_7:
  v5 = 1;
LABEL_8:
  v6 = (v2 + 32);
  if ((*(v2 + 55) & 0x80000000) == 0)
  {
    if (!*(v2 + 55))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(v2 + 40))
  {
    v6 = *v6;
LABEL_13:
    v7 = v5 + 1;
    result = sqlite3_bind_text(v4, v5, v6, -1, 0xFFFFFFFFFFFFFFFFLL);
    v5 = v7;
  }

LABEL_14:
  v9 = *(v2 + 56);
  v8 = *(v2 + 64);
  while (v9 != v8)
  {
    v10 = v5 + 1;
    v11 = *v9++;
    result = sqlite3_bind_int(v4, v5, v11);
    v5 = v10;
  }

  return result;
}

uint64_t sub_1001E128C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1001E1344(void *a1, const char *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E30380;
  sub_1001DCC08((a1 + 3), a2);
  return a1;
}

void sub_1001E13C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E30380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001E1420(void *a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "trvl.em");
  sub_1001E14E4(a1 + 1, a2, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E303D0;
  a1[6] = 0;
  a1[7] = 0;
  v6 = a3[1];
  a1[8] = *a3;
  a1[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  return a1;
}

void *sub_1001E14E4(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1001E154C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_1001E1574(void *a1)
{
  *a1 = off_101E303D0;
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  a1[10] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1001E1624(void *a1)
{
  sub_1001E1574(a1);

  operator delete();
}

void sub_1001E165C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[12];
  a1[11] = v6;
  a1[12] = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  v9 = *a3;
  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = a1[7];
  a1[6] = v9;
  a1[7] = v8;
  if (v10)
  {

    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_1001E16E0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting event manager", buf, 2u);
  }

  sub_1001E1918(a1);
}

void sub_1001E18BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10002B644(&a18);
  _Unwind_Resume(a1);
}

void sub_1001E1918(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1001E19F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (*a2 != v7)
  {
    v8 = v6 + 240;
    while (1)
    {
      v9 = *(v8 - 80);
      if (v9 < sub_1001E23D8(a1))
      {
        break;
      }

      v10 = v8 == v7;
      v8 += 240;
      if (v10)
      {
        v6 = v7;
        goto LABEL_12;
      }
    }

    v6 = v8 - 240;
    if (v8 - 240 != v7)
    {
      while (v8 != v7)
      {
        v11 = *(v8 + 160);
        if (v11 >= sub_1001E23D8(a1))
        {
          sub_1013647E8(v6, v8);
          v6 += 240;
        }

        v8 += 240;
      }
    }
  }

LABEL_12:
  sub_1001E1DF4(a2, v6, *(a2 + 8));
  v12 = *a2;
  v13 = *(a2 + 8);
  if (0xEEEEEEEEEEEEEEEFLL * ((v13 - *a2) >> 4) <= 1)
  {
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    return;
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_100FF0F78(buf, v12);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  sub_1001E2514(a3, buf, &v42, 1uLL);
  sub_100FF11AC(buf);
  v14 = *a2;
  if (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4) >= 2)
  {
    v15 = 2;
    v16 = 1;
    do
    {
      v17 = *(a3 + 8);
      v18 = v14 + 240 * v16;
      if (*(v17 - 7) + 43200.0 >= *(v18 + 160))
      {
        v19 = *(v17 - 121);
        if (v19 >= 0)
        {
          v20 = *(v17 - 121);
        }

        else
        {
          v20 = *(v17 - 17);
        }

        v21 = *(v18 + 71);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v18 + 56);
        }

        if (v20 == v21)
        {
          v23 = v19 >= 0 ? v17 - 144 : *(v17 - 18);
          v24 = v22 >= 0 ? (v18 + 48) : *(v18 + 48);
          if (!memcmp(v23, v24, v20))
          {
            v27 = *(v17 - 169);
            if (v27 >= 0)
            {
              v28 = *(v17 - 169);
            }

            else
            {
              v28 = *(v17 - 23);
            }

            v29 = *(v18 + 119);
            v30 = v29;
            if ((v29 & 0x80u) != 0)
            {
              v29 = *(v18 + 104);
            }

            if (v28 != v29 || (v27 >= 0 ? (v31 = v17 - 192) : (v31 = *(v17 - 24)), v30 >= 0 ? (v32 = (v18 + 96)) : (v32 = *(v18 + 96)), memcmp(v31, v32, v28)))
            {
              *(v17 - 7) = *(v18 + 184);
              std::string::operator=(v17 - 6, (v18 + 96));
              v33 = *a2 + 240 * v16;
              v34 = *(a3 + 8);
              *(v34 - 72) = *(v33 + 168);
              v35 = *(a1 + 40);
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v36 = (v34 - 216);
                if (*(v34 - 193) < 0)
                {
                  v36 = *v36;
                }

                v37 = (v33 + 24);
                if (*(v33 + 47) < 0)
                {
                  v37 = *v37;
                }

                *buf = 136315394;
                v39 = v36;
                v40 = 2080;
                v41 = v37;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Found a possible connecting flight [%s : %s]", buf, 0x16u);
              }

              goto LABEL_37;
            }
          }
        }

        if (v17 >= *(a3 + 16))
        {
LABEL_35:
          v25 = sub_1001E2748(a3, v18);
          goto LABEL_36;
        }

        sub_100FF0F78(v17, v18);
      }

      else
      {
        if (v17 >= *(a3 + 16))
        {
          goto LABEL_35;
        }

        sub_100FF0F78(*(a3 + 8), v18);
      }

      v25 = (v17 + 240);
LABEL_36:
      *(a3 + 8) = v25;
LABEL_37:
      v16 = v15;
      v14 = *a2;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 4) > v15++);
  }
}

void sub_1001E1DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100FF11AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E1DF4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_1013647E8(v7, v4);
        v4 += 15;
        v7 += 240;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 240;
      sub_100FF11AC(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void sub_1001E1E84(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_1001E2A18(a3, *a2, a2[1], 0xEEEEEEEEEEEEEEEFLL * ((a2[1] - *a2) >> 4));
  v4 = *a3;
  v34 = a3[1];
  if (*a3 != v34)
  {
    do
    {
      v5 = v4[24];
      v36 = v4[25];
      if (v5 != v36)
      {
        memset(v39, 0, sizeof(v39));
        v40 = 0;
        do
        {
          v37 = 0u;
          v38 = 0u;
          memset(buf, 0, sizeof(buf));
          v6 = std::string::find(v5, 47, 0);
          if (v6 == -1)
          {
            v19 = 0;
            v8 = 0;
          }

          else
          {
            v7 = v6;
            v8 = 0;
            do
            {
              std::string::basic_string(&v41, v5, v8, v7 - v8, &__p);
              v9 = *&buf[8];
              if (*&buf[8] >= *&buf[16])
              {
                v11 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
                v12 = v11 + 1;
                if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                if (0x5555555555555556 * ((*&buf[16] - *buf) >> 3) > v12)
                {
                  v12 = 0x5555555555555556 * ((*&buf[16] - *buf) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((*&buf[16] - *buf) >> 3) >= 0x555555555555555)
                {
                  v13 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v13 = v12;
                }

                v44 = buf;
                if (v13)
                {
                  sub_100005348(buf, v13);
                }

                v14 = 8 * ((*&buf[8] - *buf) >> 3);
                v15 = *&v41.__r_.__value_.__l.__data_;
                *(v14 + 16) = *(&v41.__r_.__value_.__l + 2);
                *v14 = v15;
                memset(&v41, 0, sizeof(v41));
                v16 = (24 * v11 - (*&buf[8] - *buf));
                memcpy(v16, *buf, *&buf[8] - *buf);
                v17 = *buf;
                v18 = *&buf[16];
                *buf = v16;
                *&buf[8] = 24 * v11 + 24;
                *&buf[16] = 0;
                __p.__r_.__value_.__r.__words[2] = v17;
                v43 = v18;
                __p.__r_.__value_.__r.__words[0] = v17;
                __p.__r_.__value_.__l.__size_ = v17;
                sub_1000054E0(&__p);
                *&buf[8] = 24 * v11 + 24;
                if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v41.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v10 = *&v41.__r_.__value_.__l.__data_;
                *(*&buf[8] + 16) = *(&v41.__r_.__value_.__l + 2);
                *v9 = v10;
                *&buf[8] = v9 + 24;
              }

              v8 = v7 + 1;
              v7 = std::string::find(v5, 47, v7 + 1);
            }

            while (v7 != -1);
            v19 = 1;
          }

          std::string::basic_string(&v41, v5, v8, 0xFFFFFFFFFFFFFFFFLL, &__p);
          v20 = *&buf[8];
          if (*&buf[8] >= *&buf[16])
          {
            v23 = 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3);
            v24 = v23 + 1;
            if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000CE3D4();
            }

            if (0x5555555555555556 * ((*&buf[16] - *buf) >> 3) > v24)
            {
              v24 = 0x5555555555555556 * ((*&buf[16] - *buf) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&buf[16] - *buf) >> 3) >= 0x555555555555555)
            {
              v25 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v25 = v24;
            }

            v44 = buf;
            if (v25)
            {
              sub_100005348(buf, v25);
            }

            v26 = 8 * ((*&buf[8] - *buf) >> 3);
            v27 = *&v41.__r_.__value_.__l.__data_;
            *(v26 + 16) = *(&v41.__r_.__value_.__l + 2);
            *v26 = v27;
            memset(&v41, 0, sizeof(v41));
            v22 = 24 * v23 + 24;
            v28 = (v26 - (*&buf[8] - *buf));
            memcpy(v28, *buf, *&buf[8] - *buf);
            v29 = *buf;
            v30 = *&buf[16];
            *buf = v28;
            *&buf[8] = v22;
            *&buf[16] = 0;
            __p.__r_.__value_.__r.__words[2] = v29;
            v43 = v30;
            __p.__r_.__value_.__r.__words[0] = v29;
            __p.__r_.__value_.__l.__size_ = v29;
            sub_1000054E0(&__p);
            *&buf[8] = v22;
            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v41.__r_.__value_.__l.__data_);
              v22 = *&buf[8];
            }
          }

          else
          {
            v21 = *&v41.__r_.__value_.__l.__data_;
            *(*&buf[8] + 16) = *(&v41.__r_.__value_.__l + 2);
            *v20 = v21;
            v22 = v20 + 24;
            *&buf[8] = v20 + 24;
          }

          *&v38 = 0;
          v37 = 0uLL;
          sub_10004EFD0(&v37, *buf, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - *buf) >> 3));
          BYTE8(v38) = v19;
          __p.__r_.__value_.__r.__words[0] = buf;
          sub_1000087B4(&__p);
          if (BYTE8(v38) == 1)
          {
            v31 = *(a1 + 40);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v5;
              if (SHIBYTE(v5->__r_.__value_.__r.__words[2]) < 0)
              {
                v32 = v5->__r_.__value_.__r.__words[0];
              }

              sub_1000D1184(v37, *(&v37 + 1), ",", 1uLL, &__p);
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315394;
              *&buf[4] = v32;
              *&buf[12] = 2080;
              *&buf[14] = p_p;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I PassengerName (%s) has converted to (%s)", buf, 0x16u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }

          sub_1001E2B24(v39, *&v39[2], v37, *(&v37 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v37 + 1) - v37) >> 3));
          __p.__r_.__value_.__r.__words[0] = &v37;
          sub_1000087B4(&__p);
          ++v5;
        }

        while (v5 != v36);
        sub_100071A6C((v4 + 24));
        *(v4 + 12) = *v39;
        v4[26] = v40;
        v40 = 0;
        memset(v39, 0, sizeof(v39));
        __p.__r_.__value_.__r.__words[0] = v39;
        sub_1000087B4(&__p);
      }

      v4 += 30;
    }

    while (v4 != v34);
  }
}

void sub_1001E2358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t *a31)
{
  a31 = &a17;
  sub_1000087B4(&a31);
  a17 = &a21;
  sub_1000087B4(&a17);
  a17 = a9;
  sub_1001E26C4(&a17);
  _Unwind_Resume(a1);
}

double sub_1001E23D8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  v14 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v14);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (!v9)
  {
LABEL_7:
    Current = CFAbsoluteTimeGetCurrent();
    goto LABEL_11;
  }

LABEL_10:
  Current = (*(*v9 + 96))(v9);
LABEL_11:
  v12 = Current;
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return v12;
}

void sub_1001E24F4(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E2514(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001E259C(result, a4);
  }

  return result;
}

void sub_1001E257C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001E26C4(&a9);
  _Unwind_Resume(a1);
}

void sub_1001E259C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    sub_1001E25E8(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_1001E25E8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x111111111111112)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_1001E2640(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100FF0F78(__dst, v6);
      v6 += 15;
      __dst += 240;
      v7 -= 240;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1001E26A0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 240;
    do
    {
      v4 = sub_100FF11AC(v4) - 240;
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E26C4(void ***a1)
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
        v4 = sub_100FF11AC(v4 - 240);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1001E2748(uint64_t a1, __int128 *a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x111111111111111)
  {
    sub_1000CE3D4();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v6 = 0x111111111111111;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1001E25E8(a1, v6);
  }

  v13 = 0;
  v14 = 240 * v2;
  sub_100FF0F78((240 * v2), a2);
  v15 = 240 * v2 + 240;
  v7 = *(a1 + 8);
  v8 = 240 * v2 + *a1 - v7;
  sub_1001E2878(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001E29C8(&v13);
  return v12;
}

void sub_1001E2864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001E29C8(va);
  _Unwind_Resume(a1);
}

void sub_1001E2878(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      sub_1001E28EC(a4, v7);
      v7 += 15;
      a4 += 240;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_100FF11AC(v6);
      v6 += 240;
    }
  }
}

__n128 sub_1001E28EC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v8 = a2[9];
  v9 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v9;
  *(a1 + 144) = v8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 192) = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  result = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = result;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 27) = 0;
  return result;
}

uint64_t sub_1001E29C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 240;
    sub_100FF11AC(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001E2A18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1001E259C(result, a4);
  }

  return result;
}

void sub_1001E2A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1001E26C4(&a9);
  _Unwind_Resume(a1);
}

char *sub_1001E2AA0(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100FF0F78(__dst, v6);
      v6 += 15;
      __dst += 240;
      v7 -= 240;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_1001E2B00(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 240;
    do
    {
      v4 = sub_100FF11AC(v4) - 240;
      v2 += 240;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1001E2B24(void *a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = a5;
        sub_1001E2D70(a1, a2, a1[1], a2 + 24 * a5);
        v20 = &v7[v19];
        v21 = v5;
        do
        {
          std::string::operator=(v21++, v7++);
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = sub_10016FBEC(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1001E2D70(a1, v5, v10, &v5[a5]);
          v18 = v5;
          do
          {
            std::string::operator=(v18++, v7++);
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v12;
      }

      v33 = a1;
      if (v15)
      {
        sub_100005348(a1, v15);
      }

      v30 = 0;
      v31 = 8 * (v13 >> 3);
      v32 = v31;
      sub_1001E2DE0(&v30, a3, a5);
      v22 = v31;
      memcpy(v32, v5, a1[1] - v5);
      v23 = *a1;
      v24 = v31;
      *&v32 = v32 + a1[1] - v5;
      a1[1] = v5;
      v25 = v5 - v23;
      v26 = (v24 - (v5 - v23));
      memcpy(v26, v23, v25);
      v27 = *a1;
      *a1 = v26;
      v28 = a1[2];
      *(a1 + 1) = v32;
      *&v32 = v27;
      *(&v32 + 1) = v28;
      v30 = v27;
      v31 = v27;
      sub_1000054E0(&v30);
      return v22;
    }
  }

  return v5;
}

uint64_t sub_1001E2D70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
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
      v8 += 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v9 += 24;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return sub_1001E2E74(&v12, a2, v7, v6);
}

void *sub_1001E2DE0(void *result, __int128 *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    v7 = 24 * a3;
    do
    {
      if (*(a2 + 23) < 0)
      {
        result = sub_100005F2C(v4, *a2, *(a2 + 1));
      }

      else
      {
        v8 = *a2;
        *(v4 + 16) = *(a2 + 2);
        *v4 = v8;
      }

      v4 += 24;
      a2 = (a2 + 24);
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t sub_1001E2E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(a4 - 1);
      a4 -= 24;
      if (v8 < 0)
      {
        operator delete(*a4);
      }

      v9 = *(v7 - 24);
      *(a4 + 16) = *(v7 - 8);
      *a4 = v9;
      *(v7 - 1) = 0;
      *(v7 - 24) = 0;
      v7 -= 24;
    }

    while (v7 != a2);
  }

  return a3;
}

void *sub_1001E2EF4(void *a1)
{
  *a1 = off_101E304A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1001E2F40(void *a1)
{
  *a1 = off_101E304A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1001E3020(uint64_t result, uint64_t a2)
{
  *a2 = off_101E304A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001E3060(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1001E3070(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1001E30B0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        sub_1001E1918(v3);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1001E3124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001E3170(uint64_t a1)
{
  v1 = a1;
  v3 = 0;
  v4 = 0;
  v2 = "TravelEventManager";
  sub_1001048A4();
}

void sub_1001E3674(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, char a33)
{
  sub_1001E3CE4(v33 - 120);
  sub_10010D7F4(&a12);
  sub_1000D6F38(&a25);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a32)
  {
    sub_100004A34(a32);
  }

  std::ios::~ios();
  v34 = *(v33 - 160);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v33 - 128);
  if (v35)
  {
    sub_100004A34(v35);
  }

  operator delete();
}

void *sub_1001E375C(void *a1)
{
  *a1 = off_101E30528;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1001E37B4(void *a1)
{
  *a1 = off_101E30528;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1001E38B8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E30528;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001E3918(void *a1)
{
  sub_1001E3C94(a1 + 8);

  operator delete(a1);
}

void sub_1001E3954(void *a1, uint64_t a2)
{
  v3 = *a2;
  v18 = *a2;
  v17 = *(a2 + 8);
  v19 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (!a1[2])
      {
LABEL_19:
        sub_100004A34(v7);
        goto LABEL_20;
      }

      v8 = v5[5];
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      v10 = v17;
      if (v9)
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 0xEEEEEEEEEEEEEEEFLL * ((v17 - v3) >> 4);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Megadome returned (%lu) flight events", &buf, 0xCu);
        v3 = v18;
        v10 = v19;
      }

      buf = 0uLL;
      v24 = 0;
      memset(v20, 0, sizeof(v20));
      sub_1001E2A18(v20, v3, v10, 0xEEEEEEEEEEEEEEEFLL * ((v10 - v3) >> 4));
      sub_1001E19F4(v5, v20, &buf);
      *v22 = v20;
      sub_1001E26C4(v22);
      v11 = v5[7];
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v5[6];
          if (v13)
          {
            v14 = buf;
            if (buf != *(&buf + 1))
            {
              v15 = v5[5];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *v22 = 134217984;
                *&v22[4] = 0xEEEEEEEEEEEEEEEFLL * ((*(&v14 + 1) - v14) >> 4);
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Detected (%lu) flight events after validation", v22, 0xCu);
              }

              sub_1001E1E84(v5, &buf, v22);
              (*(*v13 + 16))(v13, v22);
              v21 = v22;
              sub_1001E26C4(&v21);
            }

LABEL_17:
            sub_100004A34(v12);
LABEL_18:
            *v22 = &buf;
            sub_1001E26C4(v22);
            goto LABEL_19;
          }
        }
      }

      else
      {
        v12 = 0;
      }

      v16 = v5[5];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_101765444(v16);
      }

      if (!v12)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

LABEL_20:
  *&buf = &v18;
  sub_1001E26C4(&buf);
}

void sub_1001E3BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, void **a19)
{
  sub_1001E26C4(&a18);
  sub_100004A34(v20);
  a19 = (v21 - 96);
  sub_1001E26C4(&a19);
  sub_100004A34(v19);
  *(v21 - 96) = &a12;
  sub_1001E26C4((v21 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_1001E3C48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001E3C94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1001E3CE4(uint64_t a1)
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

void sub_1001E3D64()
{
  v0 = objc_autoreleasePoolPush();
  sub_10000501C(&qword_101FBA080, "SELECT identifier, title, departureTime, departureAirportCode, departureAirportLatitude, departureAirportLongitude, arrivalTime, arrivalAirportCode, arrivalAirportLatitude, arrivalAirportLongitude, passengerNames, extractionSource FROM IntelligencePlatform.Entity.FlightReservations WHERE departureTime > ");
  __cxa_atexit(&std::string::~string, &qword_101FBA080, &_mh_execute_header);
  sub_10000501C(&qword_101FBA098, " ORDER BY departureTime ASC");
  __cxa_atexit(&std::string::~string, &qword_101FBA098, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1001E3E0C(uint64_t a1, uint64_t a2)
{
  result = sub_10000FC88(a1, 0, a1, 0x17u, a2);
  if (result)
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }

    v5 = *(a1 + 8);
    if (v5 != (a1 + 16))
    {
      v6 = *(a2 + 8);
      do
      {
        v7 = *(v5 + 7) == *(v6 + 7) && *(v5 + 8) == *(v6 + 8);
        if (!v7)
        {
          return 0;
        }

        v8 = v5[1];
        v9 = v5;
        if (v8)
        {
          do
          {
            v5 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v5 = v9[2];
            v7 = *v5 == v9;
            v9 = v5;
          }

          while (!v7);
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
            v7 = *v11 == v6;
            v6 = v11;
          }

          while (!v7);
        }

        v6 = v11;
      }

      while (v5 != (a1 + 16));
    }

    if (*(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }

    v12 = *(a1 + 32);
    if (v12 != (a1 + 40))
    {
      v13 = *(a2 + 32);
      while (*(v12 + 8) == *(v13 + 8))
      {
        result = sub_1013E6CC4(v12 + 5, v13 + 5);
        if (!result)
        {
          return result;
        }

        v14 = v12[1];
        v15 = v12;
        if (v14)
        {
          do
          {
            v12 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v12 = v15[2];
            v7 = *v12 == v15;
            v15 = v12;
          }

          while (!v7);
        }

        v16 = v13[1];
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
            v17 = v13[2];
            v7 = *v17 == v13;
            v13 = v17;
          }

          while (!v7);
        }

        v13 = v17;
        if (v12 == (a1 + 40))
        {
          goto LABEL_37;
        }
      }

      return 0;
    }

LABEL_37:
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    v18 = *(a1 + 56);
    if (v18 != (a1 + 64))
    {
      v19 = *(a2 + 56);
      while (*(v18 + 7) == *(v19 + 7) && *(v18 + 8) == *(v19 + 8))
      {
        v21 = v18[1];
        v22 = v18;
        if (v21)
        {
          do
          {
            v18 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v18 = v22[2];
            v7 = *v18 == v22;
            v22 = v18;
          }

          while (!v7);
        }

        v23 = v19[1];
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
            v24 = v19[2];
            v7 = *v24 == v19;
            v19 = v24;
          }

          while (!v7);
        }

        v19 = v24;
        if (v18 == (a1 + 64))
        {
          goto LABEL_56;
        }
      }

      return 0;
    }

LABEL_56:
    result = sub_10000FC88((a1 + 80), 0, a1 + 80, 0xFu, (a2 + 80));
    if (result)
    {
      return *(a1 + 88) == *(a2 + 88);
    }
  }

  return result;
}

uint64_t sub_1001E4088(uint64_t a1, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    sub_1000A58E4("bitset test argument out of range");
  }

  return (*(a1 + 80) >> a2) & 1;
}

void sub_1001E40B8()
{
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  v1 = 0u;
  sub_10000C320(&v1);
  v0 = sub_10000C030(v2);
  sub_1001E4600(v0);
}

void sub_1001E4600(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v5, &std::ctype<char>::id);
  (v2->__vftable[2].~facet_0)(v2, 48);
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v3 = std::locale::use_facet(&v4, &std::ctype<char>::id);
  (v3->__vftable[2].~facet_0)(v3, 49);
  sub_1001E9530();
}

void sub_1001E4748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a10);
  std::locale::~locale(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E4788(void *a1, void *a2)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v4 = std::locale::use_facet(&v14, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 48);
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(&v13, &std::ctype<char>::id);
  v7 = (v6->__vftable[2].~facet_0)(v6, 49);
  v8 = 0;
  v17 = 0xF00000000000000;
  *__p = 0x101010101010101 * v5;
  *&__p[7] = *__p;
  v16 = 0;
  v9 = 14;
  do
  {
    if ((*a2 >> v8))
    {
      if (v17 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = *__p;
      }

      v10[v9] = v7;
    }

    ++v8;
    --v9;
  }

  while (v8 != 15);
  v11 = sub_10000C030(a1);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(*__p);
  }

  std::locale::~locale(&v13);
  std::locale::~locale(&v14);
  return v11;
}

void sub_1001E4918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, std::locale a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a10);
  std::locale::~locale(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_1001E4958(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v14 = v7[3];
  v13 = v7 + 3;
  v12 = v14;
  if (v8 >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v18 = v6[3];
  v17 = v6 + 3;
  v16 = v18;
  if (v11 >= 0)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  return memcmp(v15, v19, v9) == 0;
}

void sub_1001E4A34(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "imeiOrUuid";
  sub_10000F688(&v15, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v13 = xpc_string_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "uuid";
  sub_10000F688(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void sub_1001E4BEC(uint64_t a1, void **a2)
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
    p_object = &object;
    v6 = "imeiOrUuid";
    sub_100006354(&p_object, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v9;
    *(a1 + 16) = v10;
    xpc_release(v7);
    p_object = &object;
    v6 = "uuid";
    sub_100006354(&p_object, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = v9;
    *(a1 + 40) = v10;
    xpc_release(v7);
  }

  xpc_release(object);
}

void sub_1001E4D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E4DC4@<X0>(_BYTE *a1@<X8>)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  v11 = 0u;
  v8 = 0u;
  memset(v9, 0, sizeof(v9));
  v7 = 0u;
  sub_10000C320(&v7);
  v2 = sub_10000C030(&v8);
  v3 = sub_10000C030(v2);
  v4 = sub_10000C030(v3);
  sub_10000C030(v4);
  sub_100061574(&v7, a1);
  *&v8 = v5;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E4FE0(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v21 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v21 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v21 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v21 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v19 = xpc_string_create(v7);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "token";
  sub_10000F688(&v17, &v19, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v19);
  v19 = 0;
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  while (v10 != v11)
  {
    if (*(v10 + 23) >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = *v10;
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_array_append_value(v9, v13);
    xpc_release(v13);
    v10 += 24;
  }

  v15 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "devices";
  sub_1000609CC(&v17, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v14 = v21;
  *a2 = v21;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v9);
  xpc_release(v21);
}

void sub_1001E5274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v16);
  xpc_release(v17);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_1001E52A4(uint64_t a1, void **a2)
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
    p_object = &object;
    v30 = "token";
    sub_100006354(&p_object, v27);
    __p = 0;
    v34 = 0;
    v35 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = *v32;
    *(a1 + 16) = *&v32[16];
    xpc_release(v27[0]);
    v5 = (a1 + 24);
    sub_100008764((a1 + 24));
    xarray = 0;
    __p = &object;
    v34 = "devices";
    sub_100015504(&__p, &xarray);
    __p = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
    }

    else
    {
      __p = xpc_null_create();
    }

    sub_100008EA4(&p_object, &__p, 0);
    xpc_release(__p);
    __p = xarray;
    if (xarray)
    {
      xpc_retain(xarray);
    }

    else
    {
      __p = xpc_null_create();
    }

    if (xpc_get_type(xarray) == &_xpc_type_array)
    {
      count = xpc_array_get_count(xarray);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v27, &__p, count);
    xpc_release(__p);
    for (i = v30; i != v27[1] || p_object != v27[0]; i = ++v30)
    {
      v26[0] = &p_object;
      v26[1] = i;
      *(v38 + 7) = 0;
      v38[0] = 0;
      sub_100008EF0(v26, &v25);
      __p = 0;
      v34 = 0;
      v35 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v38[0] = *&v32[8];
      v8 = *v32;
      *(v38 + 7) = *&v32[15];
      v9 = v32[23];
      xpc_release(v25);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      if (v10 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v5) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v5) >> 3);
        if (2 * v16 > v15)
        {
          v15 = 2 * v16;
        }

        if (v16 >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v15;
        }

        v37 = a1 + 24;
        if (v17)
        {
          sub_100005348(a1 + 24, v17);
        }

        v18 = 24 * v14;
        v19 = v38[0];
        *v18 = v8;
        *(v18 + 8) = v19;
        *(v18 + 15) = *(v38 + 7);
        *(v18 + 23) = v9;
        v13 = 24 * v14 + 24;
        v20 = *(a1 + 24);
        v21 = *(a1 + 32) - v20;
        v22 = v18 - v21;
        memcpy((v18 - v21), v20, v21);
        v23 = *(a1 + 24);
        *(a1 + 24) = v22;
        *(a1 + 32) = v13;
        v24 = *(a1 + 40);
        *(a1 + 40) = 0;
        v35 = v23;
        v36 = v24;
        __p = v23;
        v34 = v23;
        sub_1000054E0(&__p);
      }

      else
      {
        v12 = v38[0];
        *v10 = v8;
        *(v10 + 8) = v12;
        *(v10 + 15) = *(v38 + 7);
        *(v10 + 23) = v9;
        v13 = v10 + 24;
      }

      *(a1 + 32) = v13;
    }

    xpc_release(v27[0]);
    xpc_release(p_object);
    xpc_release(xarray);
  }

  xpc_release(object);
}

void sub_1001E5648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, xpc_object_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

BOOL sub_1001E5748(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v12 = v9 + 3;
  v10 = v9[3];
  v11 = v12[1];
  v14 = v8 + 3;
  v13 = v8[3];
  if (v11 - v10 != v14[1] - v13)
  {
    return 0;
  }

  if (v10 == v11)
  {
    return 1;
  }

  do
  {
    result = sub_100022D3C(&v16, v10, v13);
    if (!result)
    {
      break;
    }

    v10 += 3;
    v13 += 3;
  }

  while (v10 != v11);
  return result;
}

void sub_1001E582C(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 4) == 1)
  {
    LODWORD(v19) = *a1;
    v7 = v19;
    v8 = sub_1013E5D4C(&v19);
    ctu::rest::detail::write_enum_string_value(&v21, v7, v8, v9);
    v19 = &v23;
    v20 = "type";
    sub_10000F688(&v19, &v21, &v22);
    xpc_release(v22);
    v22 = 0;
    xpc_release(v21);
    v21 = 0;
  }

  if (*(a1 + 9) == 1)
  {
    v17 = xpc_BOOL_create(*(a1 + 8));
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "experience";
    sub_10000F688(&v19, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  if (*(a1 + 16) == 1)
  {
    v15 = xpc_int64_create(*(a1 + 12));
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "volumeCapGb";
    sub_10000F688(&v19, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
  }

  if (*(a1 + 48) == 1)
  {
    sub_1001E95DC((a1 + 24), &v13);
    v19 = &v23;
    v20 = "supportedRat";
    sub_10000F688(&v19, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
  }

  if (*(a1 + 57) == 1)
  {
    v11 = xpc_BOOL_create(*(a1 + 56));
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "saProvisioned";
    sub_10000F688(&v19, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
  }

  v10 = v23;
  *a2 = v23;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

void sub_1001E5B30(uint64_t a1, void **a2)
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
    __p.n128_u64[0] = &object;
    __p.n128_u64[1] = "type";
    sub_100006354(&__p, v11);
    if (xpc_get_type(v11[0]) == &_xpc_type_null)
    {
      if (*(a1 + 4))
      {
        *(a1 + 4) = 0;
      }
    }

    else
    {
      if ((*(a1 + 4) & 1) == 0)
      {
        *a1 = 0;
        *(a1 + 4) = 1;
      }

      type = xpc_get_type(v11[0]);
      if (type == &_xpc_type_string)
      {
        LODWORD(v12) = *a1;
        ctu::rest::detail::read_enum_string_value(&v12, v11, v6);
        *a1 = v12;
      }

      else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
      {
        *a1 = xpc::dyn_cast_or_default(v11, 0, v6);
      }
    }

    xpc_release(v11[0]);
    __p.n128_u64[0] = &object;
    __p.n128_u64[1] = "experience";
    sub_100006354(&__p, v11);
    if (xpc_get_type(v11[0]) == &_xpc_type_null)
    {
      if (*(a1 + 9))
      {
        *(a1 + 9) = 0;
      }
    }

    else
    {
      if ((*(a1 + 9) & 1) == 0)
      {
        *(a1 + 8) = 256;
      }

      *(a1 + 8) = xpc::dyn_cast_or_default(v11, 0, v7);
    }

    xpc_release(v11[0]);
    __p.n128_u64[0] = &object;
    __p.n128_u64[1] = "volumeCapGb";
    sub_100006354(&__p, v11);
    if (xpc_get_type(v11[0]) == &_xpc_type_null)
    {
      if (*(a1 + 16))
      {
        *(a1 + 16) = 0;
      }
    }

    else
    {
      if ((*(a1 + 16) & 1) == 0)
      {
        *(a1 + 12) = 0;
        *(a1 + 16) = 1;
      }

      *(a1 + 12) = xpc::dyn_cast_or_default(v11, 0, v8);
    }

    xpc_release(v11[0]);
    v11[0] = &object;
    v11[1] = "supportedRat";
    sub_100006354(v11, &v12);
    if (xpc_get_type(v12) == &_xpc_type_null)
    {
      if (*(a1 + 48))
      {
        v9 = *(a1 + 24);
        if (v9)
        {
          *(a1 + 32) = v9;
          operator delete(v9);
        }

        *(a1 + 48) = 0;
      }
    }

    else
    {
      if ((*(a1 + 48) & 1) == 0)
      {
        __p = 0uLL;
        v15 = 0;
        sub_1001E9734(a1 + 24, &__p);
        if (__p.n128_u64[0])
        {
          __p.n128_u64[1] = __p.n128_u64[0];
          operator delete(__p.n128_u64[0]);
        }
      }

      sub_1001E9798((a1 + 24), &v12);
    }

    xpc_release(v12);
    __p.n128_u64[0] = &object;
    __p.n128_u64[1] = "saProvisioned";
    sub_100006354(&__p, v11);
    if (xpc_get_type(v11[0]) == &_xpc_type_null)
    {
      if (*(a1 + 57))
      {
        *(a1 + 57) = 0;
      }
    }

    else
    {
      if ((*(a1 + 57) & 1) == 0)
      {
        *(a1 + 56) = 256;
      }

      *(a1 + 56) = xpc::dyn_cast_or_default(v11, 0, v10);
    }

    xpc_release(v11[0]);
  }

  xpc_release(object);
}

void sub_1001E5E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1001E5EFC(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v12 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v12 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v10 = xpc_string_create(v7);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v9[0] = &v12;
    v9[1] = "url";
    sub_10000F688(v9, &v10, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v10);
    v10 = 0;
  }

  v8 = v12;
  *a2 = v12;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v12);
}

void sub_1001E6054(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v6 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4[0] = &v6;
    v4[1] = "url";
    sub_100006354(v4, &object);
    sub_1001E6158(a1, &object);
    xpc_release(object);
    v3 = v6;
  }

  xpc_release(v3);
}

void sub_1001E6118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1001E6158(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      *(a1 + 24) = 0;
    }
  }

  else
  {
    if ((*(a1 + 24) & 1) == 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
    }

    xpc::dyn_cast_or_default();
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v3;
    *(a1 + 16) = v4;
  }
}

void sub_1001E6218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001E6234(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v19 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v17 = xpc_string_create(v7);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    v15 = &v19;
    v16 = "fqdn";
    sub_10000F688(&v15, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  if (*(a1 + 56) == 1)
  {
    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v8 = v10;
    if (*(v9 + 23) >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v13 = xpc_string_create(v11);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    v15 = &v19;
    v16 = "vendorName";
    sub_10000F688(&v15, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
  }

  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void sub_1001E6408(int *a1, void **a2)
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
    p_object = &object;
    v9 = "tierId";
    sub_100006354(&p_object, &v10);
    type = xpc_get_type(v10);
    if (type == &_xpc_type_string)
    {
      v12 = *a1;
      ctu::rest::detail::read_enum_string_value(&v12, &v10, v6);
      *a1 = v12;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v10, 0, v6);
    }

    xpc_release(v10);
    p_object = &object;
    v9 = "appCategories";
    sub_100006354(&p_object, &v10);
    sub_100008A9C((a1 + 2), &v10);
    xpc_release(v10);
    p_object = &object;
    v9 = "allowCarrierApp";
    v10 = 0;
    sub_100006354(&p_object, &v10);
    if (xpc_get_type(v10) != &_xpc_type_null)
    {
      *(a1 + 16) = xpc::dyn_cast_or_default(&v10, 0, v7) | 0x100;
    }

    xpc_release(v10);
  }

  xpc_release(object);
}

void sub_1001E65B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_1001E6628(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v19 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = sub_1013E6BD4(*a1);
  ctu::rest::detail::write_enum_string_value(&object, v7, v8, v9);
  v15 = &v19;
  v16 = "tierId";
  sub_10000F688(&v15, &object, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(object);
  object = 0;
  sub_1000084D8((a1 + 8), &v13);
  v15 = &v19;
  v16 = "appCategories";
  sub_10000F688(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  if (*(a1 + 33) == 1)
  {
    v11 = xpc_BOOL_create(*(a1 + 32));
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v15 = &v19;
    v16 = "allowCarrierApp";
    sub_10000F688(&v15, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
  }

  v10 = v19;
  *a2 = v19;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void sub_1001E6838(uint64_t a1, xpc_object_t *a2)
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
    v5 = "fqdn";
    sub_100006354(&v4, &object);
    sub_1001E6158(a1, &object);
    xpc_release(object);
    v4 = &v7;
    v5 = "vendorName";
    sub_100006354(&v4, &object);
    sub_1001E6158(a1 + 32, &object);
    xpc_release(object);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1001E692C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_1001E6980(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 8) != *a1)
  {
    sub_1001E6C30(a1, &v21);
    v19 = &v23;
    v20 = "planProperties";
    sub_10000F688(&v19, &v21, &v22);
    xpc_release(v22);
    v22 = 0;
    xpc_release(v21);
    v21 = 0;
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    sub_1001E5EFC(v7, &v17);
    v19 = &v23;
    v20 = "altServer";
    sub_10000F688(&v19, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  if (*(a1 + 41) == 1)
  {
    v15 = xpc_BOOL_create(*(a1 + 40));
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "isPrimary";
    sub_10000F688(&v19, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    sub_1001E6234(v8, &v13);
    v19 = &v23;
    v20 = "rcsProperties";
    sub_10000F688(&v19, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
  }

  v9 = *(a1 + 64);
  if (v9)
  {
    sub_1001E6628(v9, &v11);
    v19 = &v23;
    v20 = "ntServiceProperties";
    sub_10000F688(&v19, &v11, &v12);
    xpc_release(v12);
    v12 = 0;
    xpc_release(v11);
    v11 = 0;
  }

  v10 = v23;
  *a2 = v23;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

void sub_1001E6C30(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a1;
  v7 = a1[1];
  while (v6 != v7)
  {
    sub_1001E582C(v6, &value);
    v8 = value;
    xpc_array_append_value(v5, value);
    xpc_release(v8);
    v6 += 64;
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_1001E6D78(uint64_t a1, void **a2)
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
    p_object = &object;
    v9 = "planProperties";
    sub_100006354(&p_object, &v10);
    sub_1001E7140(a1, &v10);
    xpc_release(v10);
    p_object = &object;
    v9 = "altServer";
    v10 = 0;
    sub_100006354(&p_object, &v10);
    if (xpc_get_type(v10) != &_xpc_type_null)
    {
      operator new();
    }

    p_object = &object;
    v9 = "isPrimary";
    sub_100006354(&p_object, &v7);
    if (xpc_get_type(v7) == &_xpc_type_null)
    {
      if (*(a1 + 41))
      {
        *(a1 + 41) = 0;
      }
    }

    else
    {
      if ((*(a1 + 41) & 1) == 0)
      {
        *(a1 + 40) = 256;
      }

      *(a1 + 40) = xpc::dyn_cast_or_default(&v7, 0, v5);
    }

    xpc_release(v7);
    v7 = 0;
    p_object = &object;
    v9 = "rcsProperties";
    sub_100006354(&p_object, &v7);
    if (xpc_get_type(v7) != &_xpc_type_null)
    {
      operator new();
    }

    v6 = 0;
    p_object = &object;
    v9 = "ntServiceProperties";
    sub_100006354(&p_object, &v6);
    if (xpc_get_type(v6) != &_xpc_type_null)
    {
      operator new();
    }

    xpc_release(v6);
    xpc_release(v7);
    xpc_release(v10);
  }

  xpc_release(object);
}

void sub_1001E7088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a13);
  xpc_release(a14);
  _Unwind_Resume(a1);
}

void sub_1001E7140(uint64_t *a1, xpc_object_t *a2)
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

  sub_10013E040(a1, *a1);
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
    v9[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v9[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v9, count);
    xpc_release(v9[0]);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v9[0] = &v11;
      v9[1] = i;
      v6 = a1[1];
      if (v6 >= a1[2])
      {
        v7 = sub_1001E9AD8(a1);
      }

      else
      {
        v6[2] = 0u;
        v6[3] = 0u;
        v7 = (v6 + 4);
        *v6 = 0u;
        v6[1] = 0u;
      }

      a1[1] = v7;
      sub_100008EF0(v9, &v8);
      sub_1001E5B30(v7 - 64, &v8);
      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1001E72FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1001E7370(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v11 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v11 = v6;
LABEL_9:
  xpc_release(v5);
  v9 = xpc_uint64_create(*a1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8[0] = &v11;
  v8[1] = "bitset";
  sub_10000F688(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = v11;
  *a2 = v11;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v11);
}

void sub_1001E74B0(uint64_t *a1, xpc_object_t *a2)
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
    v8 = &v7;
    v9 = "bitset";
    sub_100006354(&v8, &object);
    v5 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    *a1 = *&v5 & 0x7FFFFFLL;
    v3 = v7;
  }

  else
  {
    v8 = a1;
    LODWORD(v9) = 0;
    sub_1001E9F04(&v8, 0x17uLL);
  }

  xpc_release(v3);
}

void sub_1001E7598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void sub_1001E75DC(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v27 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v27 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v27 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    v6 = xpc_null_create();
LABEL_8:
    v27 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  sub_1001E7370(a1, &v25);
  __p[0] = &v27;
  __p[1] = "supported";
  sub_10000F688(__p, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  sub_1001E7940((a1 + 8), &v23);
  __p[0] = &v27;
  __p[1] = "states";
  sub_10000F688(__p, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  sub_1001E7AAC((a1 + 32), &object);
  __p[0] = &v27;
  __p[1] = "details";
  sub_10000F688(__p, &object, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(object);
  object = 0;
  sub_1001E7940((a1 + 56), &v19);
  __p[0] = &v27;
  __p[1] = "latest_received";
  sub_10000F688(__p, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v7 = 0;
  v19 = 0;
  v16 = 0xF00000000000000;
  strcpy(__p, "000000000000000");
  v8 = 14;
  do
  {
    if ((*(a1 + 80) >> v7))
    {
      if (v16 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *(v9 + v8) = 49;
    }

    ++v7;
    --v8;
  }

  while (v7 != 15);
  if (v16 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v17 = xpc_string_create(v10);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v14[0] = &v27;
  v14[1] = "supported_tasks";
  sub_10000F688(v14, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = xpc_BOOL_create(*(a1 + 88));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  __p[0] = &v27;
  __p[1] = "blocked";
  sub_10000F688(__p, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v27;
  *a2 = v27;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v27);
}

void sub_1001E7940(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_1001E9FB4(v7 + 28, &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_1001E7AAC(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = (a1 + 1);
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_1001EA164(v7 + 8, &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_1001E7C18(uint64_t a1, void **a2)
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
    p_object = &object;
    v15 = "supported";
    sub_100006354(&p_object, v12);
    sub_1001E74B0(a1, v12);
    xpc_release(v12[0]);
    p_object = &object;
    v15 = "states";
    sub_100006354(&p_object, v12);
    sub_1001E7F18(a1 + 8, v12);
    xpc_release(v12[0]);
    p_object = &object;
    v15 = "details";
    sub_100006354(&p_object, v12);
    sub_1001E8194(a1 + 32, v12);
    xpc_release(v12[0]);
    p_object = &object;
    v15 = "latest_received";
    sub_100006354(&p_object, v12);
    sub_1001E7F18(a1 + 56, v12);
    xpc_release(v12[0]);
    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v7[0] = &object;
    v7[1] = "supported_tasks";
    sub_100006354(v7, &v8);
    p_object = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(p_object);
    }

    *__p = *v12;
    v10 = v13;
    xpc_release(v8);
    v5 = sub_1001EA880(&p_object, __p, 0, 0xFFFFFFFFFFFFFFFFLL, 0x30u, 0x31u);
    *(a1 + 80) = p_object;
    p_object = &object;
    v15 = "blocked";
    sub_100006354(v5, v12);
    *(a1 + 88) = xpc::dyn_cast_or_default(v12, 0, v6);
    xpc_release(v12[0]);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  xpc_release(object);
}

void sub_1001E7E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t a19, xpc_object_t object)
{
  xpc_release(object);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(a19);
  _Unwind_Resume(a1);
}

void sub_1001E7F18(uint64_t a1, xpc_object_t *a2)
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

    sub_100008EA4(&v10, object, 0);
    xpc_release(object[0]);
    v7[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v7, count);
    xpc_release(v7[0]);
    for (i = v11; i != object[1] || v10 != object[0]; i = ++v11)
    {
      v7[1] = i;
      v8 = 0;
      v7[0] = &v10;
      sub_10003EAD4(v7, &v8);
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v6 = v8;
        v7[0] = 0;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1001EA304(v7, &v6);
        xpc_release(v6);
        sub_10010A2BC(a1, v7);
      }

      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v10);
  }

  xpc_release(v3);
}

void sub_1001E8104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1001E8194(uint64_t a1, xpc_object_t *a2)
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

  sub_10004F340(a1, *(a1 + 8));
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

    sub_100008EA4(&v14, object, 0);
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

    sub_100008EA4(v13, object, count);
    xpc_release(object[0]);
    for (i = v15; i != v13[1] || v14 != v13[0]; i = ++v15)
    {
      v12 = 0;
      object[0] = &v14;
      object[1] = i;
      sub_10003EAD4(object, &v12);
      if (xpc_get_type(v12) == &_xpc_type_dictionary)
      {
        v11 = 0;
        v9 = 0u;
        v10 = 0u;
        v7 = 0u;
        v8 = 0u;
        *object = 0u;
        v16 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v16 = xpc_null_create();
        }

        sub_1001EA50C(object, &v16);
        xpc_release(v16);
        sub_1001EA6C0(a1, object);
        if (v11)
        {
          sub_100004A34(v11);
        }

        if (v10)
        {
          sub_100004A34(v10);
        }

        if (*(&v8 + 1))
        {
          sub_100004A34(*(&v8 + 1));
        }

        v16 = &object[1];
        sub_10013DFEC(&v16);
      }

      xpc_release(v12);
    }

    xpc_release(v13[0]);
    xpc_release(v14);
  }

  xpc_release(v3);
}

void sub_1001E83D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21)
{
  xpc_release(object);
  xpc_release(*(v22 - 72));
  xpc_release(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E8470(uint64_t a1, void **a2, unsigned int a3)
{
  v5 = sub_100007A6C(a1, a2);
  if (a1 + 8 == v5)
  {
    LODWORD(v6) = 0;
    v7 = 0;
  }

  else
  {
    if (a3 >= 0x17)
    {
      sub_1000A58E4("bitset test argument out of range");
    }

    v6 = (*(v5 + 56) >> a3) & 1;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

void sub_1001E84D8(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v11 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v11 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 4) == 1)
  {
    v9 = xpc_int64_create(*a1);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    v8[0] = &v11;
    v8[1] = "knownAuthResponseCode";
    sub_10000F688(v8, &v9, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v9);
    v9 = 0;
  }

  v7 = v11;
  *a2 = v11;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v11);
}

void sub_1001E8624(uint64_t a1, xpc_object_t *a2)
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
    v6[0] = &v7;
    v6[1] = "knownAuthResponseCode";
    if (xpc_dictionary_get_value(v3, "knownAuthResponseCode"))
    {
      sub_100006354(v6, &object);
      if (xpc_get_type(object) == &_xpc_type_null)
      {
        if (*(a1 + 4))
        {
          *(a1 + 4) = 0;
        }
      }

      else
      {
        if ((*(a1 + 4) & 1) == 0)
        {
          *a1 = 0;
          *(a1 + 4) = 1;
        }

        *a1 = xpc::dyn_cast_or_default(&object, 0, v4);
      }

      xpc_release(object);
    }

    v3 = v7;
  }

  xpc_release(v3);
}

BOOL sub_1001E8774(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  v4 = *(a1 + 4);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t sub_1001E87A4(void *a1, void *a2)
{
  result = sub_10000FC88(a1, 0, a1, 0xFu, a2);
  if (result)
  {
    return sub_10000FC88(a1 + 1, 0, (a1 + 1), 0xFu, a2 + 1);
  }

  return result;
}

uint64_t sub_1001E8808(void *a1, unsigned int a2)
{
  if (a2 >= 0xF)
  {
    sub_1000A58E4("bitset test argument out of range");
  }

  return (*a1 >> a2) & 1;
}

uint64_t sub_1001E8838@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
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
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  sub_10000C320(&v10);
  v4 = sub_10000C030(&v11);
  v5 = sub_1001E4788(v4, a1);
  v6 = sub_10000C030(v5);
  v7 = sub_1001E4788(v6, a1 + 1);
  sub_10000C030(v7);
  sub_100061574(&v10, a2);
  *&v11 = v8;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E8A38(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v24 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v24 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) != &_xpc_type_dictionary)
  {
    v6 = xpc_null_create();
LABEL_8:
    v24 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v7 = 0;
  v21 = 0xF00000000000000;
  strcpy(__p, "000000000000000");
  v8 = 14;
  do
  {
    if ((*a1 >> v7))
    {
      if (v21 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *(v9 + v8) = 49;
    }

    ++v7;
    --v8;
  }

  while (v7 != 15);
  if (v21 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  object = xpc_string_create(v10);
  if (!object)
  {
    object = xpc_null_create();
  }

  v18 = &v24;
  v19 = "reachable";
  sub_10000F688(&v18, &object, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v11 = 0;
  v21 = 0xF00000000000000;
  strcpy(__p, "000000000000000");
  v12 = 14;
  do
  {
    if ((a1[1] >> v11))
    {
      if (v21 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *(v13 + v12) = 49;
    }

    ++v11;
    --v12;
  }

  while (v11 != 15);
  if (v21 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  v16 = xpc_string_create(v14);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v18 = &v24;
  v19 = "unreachable";
  sub_10000F688(&v18, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v15 = v24;
  *a2 = v24;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v24);
}

void sub_1001E8CC8(void *a1, void **a2)
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
    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    p_object = &object;
    v6 = "reachable";
    sub_100006354(&p_object, &v7);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v11;
    v9 = v12;
    xpc_release(v7);
    sub_1001EA880(&v13, __p, 0, 0xFFFFFFFFFFFFFFFFLL, 0x30u, 0x31u);
    *a1 = v13;
    if (SHIBYTE(v9) < 0)
    {
      *__p[0] = 0;
      __p[1] = 0;
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      HIBYTE(v9) = 0;
    }

    p_object = &object;
    v6 = "unreachable";
    sub_100006354(&p_object, &v7);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v13);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    *__p = v11;
    v9 = v12;
    xpc_release(v7);
    sub_1001EA880(&v13, __p, 0, 0xFFFFFFFFFFFFFFFFLL, 0x30u, 0x31u);
    a1[1] = v13;
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  xpc_release(object);
}

void sub_1001E8EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E8F3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
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
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  sub_10000C320(&v18);
  v4 = sub_10000C030(&v19);
  v5 = "SettingsUpdated";
  if (*a1 == 1)
  {
    v5 = "UnknownSubscription";
  }

  if (*a1 == 2)
  {
    v6 = "fetchingRCSTokenFailed";
  }

  else
  {
    v6 = v5;
  }

  strlen(v6);
  v7 = sub_10000C030(v4);
  v8 = sub_10000C030(v7);
  v11 = *(a1 + 8);
  v10 = a1 + 8;
  v9 = v11;
  v12 = *(v10 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v10 + 8);
  }

  if (v13 >= 0)
  {
    v9 = v10;
  }

  if (v12)
  {
    v14 = v9;
  }

  else
  {
    v14 = "<invalid>";
  }

  strlen(v14);
  v15 = sub_10000C030(v8);
  sub_10000C030(v15);
  sub_100061574(&v18, a2);
  *&v19 = v16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E91C4(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  write_rest_value();
  v14 = &v18;
  v15 = "persona";
  sub_10000F688(&v14, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  v8 = *a1;
  v9 = "SettingsUpdated";
  if (v8 == 1)
  {
    v9 = "UnknownSubscription";
  }

  if (v8 == 2)
  {
    v10 = "fetchingRCSTokenFailed";
  }

  else
  {
    v10 = v9;
  }

  ctu::rest::detail::write_enum_string_value(&v12, v8, v10, v7);
  v14 = &v18;
  v15 = "eventType";
  sub_10000F688(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void sub_1001E937C(int *a1, xpc_object_t *a2)
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
    v7 = "persona";
    sub_100006354(&v6, &object);
    read_rest_value();
    xpc_release(object);
    v6 = &v9;
    v7 = "eventType";
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
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001E95DC(int **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a1;
  v7 = a1[1];
  while (v6 != v7)
  {
    v12 = *v6;
    v8 = v12;
    v9 = sub_1013E5D6C(&v12);
    ctu::rest::detail::write_enum_string_value(&value, v8, v9, v10);
    xpc_array_append_value(v5, value);
    xpc_release(value);
    ++v6;
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_1001E9704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9734(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_100015184(a1, a2);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1001E9798(void *a1, xpc_object_t *a2)
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

  a1[1] = *a1;
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

    sub_100008EA4(&v22, object, 0);
    xpc_release(object[0]);
    v20[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v20[0] = xpc_null_create();
    }

    v18 = v3;
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v20, count);
    xpc_release(v20[0]);
    for (i = v23; i != object[1] || v22 != object[0]; i = ++v23)
    {
      v20[0] = &v22;
      v20[1] = i;
      v7 = a1[1];
      v6 = a1[2];
      if (v7 >= v6)
      {
        v9 = *a1;
        v10 = v7 - *a1;
        v11 = (v10 >> 2) + 1;
        if (v11 >> 62)
        {
          sub_1000CE3D4();
        }

        v12 = v6 - v9;
        if (v12 >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          sub_100016740(a1, v13);
        }

        v14 = (4 * (v10 >> 2));
        *v14 = 0;
        v8 = v14 + 1;
        memcpy(0, v9, v10);
        v15 = *a1;
        *a1 = 0;
        a1[1] = v8;
        a1[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = 0;
        v8 = v7 + 1;
      }

      a1[1] = v8;
      sub_100008EF0(v20, &v19);
      type = xpc_get_type(v19);
      if (type == &_xpc_type_string)
      {
        v24 = *(v8 - 1);
        ctu::rest::detail::read_enum_string_value(&v24, &v19, v17);
        *(v8 - 1) = v24;
      }

      else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
      {
        *(v8 - 1) = xpc::dyn_cast_or_default(&v19, 0, v17);
      }

      xpc_release(v19);
    }

    xpc_release(object[0]);
    xpc_release(v22);
    v3 = v18;
  }

  xpc_release(v3);
}

void sub_1001E9A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(a16);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9AD8(uint64_t *a1)
{
  v1 = (a1[1] - *a1) >> 6;
  v2 = v1 + 1;
  if ((v1 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v4 = a1[2] - *a1;
  if (v4 >> 5 > v2)
  {
    v2 = v4 >> 5;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFC0)
  {
    v5 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    sub_100172988(a1, v5);
  }

  v6 = (v1 << 6);
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v6[3] = 0u;
  *&v15 = (v1 << 6) + 64;
  v7 = a1[1];
  v8 = (v1 << 6) + *a1 - v7;
  sub_1001E9BD8(a1, *a1, v7, v6 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1001E9CE4(&v13);
  return v12;
}

void sub_1001E9BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001E9CE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001E9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v13 = 0;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a2 + v6;
      v8 = a4 + v6;
      v9 = *(a2 + v6);
      *(v8 + 16) = *(a2 + v6 + 16);
      *v8 = v9;
      *(a4 + v6 + 24) = 0;
      *(v8 + 48) = 0;
      if (*(a2 + v6 + 48) == 1)
      {
        *(a4 + v6 + 24) = 0;
        *(a4 + v6 + 32) = 0;
        *(a4 + v6 + 40) = 0;
        *(v8 + 24) = *(v7 + 24);
        *(v8 + 40) = *(v7 + 40);
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 40) = 0;
        *(v8 + 48) = 1;
      }

      *(v8 + 56) = *(v7 + 56);
      v6 += 64;
    }

    while (v7 + 64 != a3);
    v15 = a4 + v6;
    LOBYTE(v13) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 48) == 1)
      {
        v10 = *(v5 + 24);
        if (v10)
        {
          *(v5 + 32) = v10;
          operator delete(v10);
        }
      }

      v5 += 64;
    }
  }

  return sub_10017284C(v12);
}

uint64_t sub_1001E9CE4(uint64_t a1)
{
  sub_1001E9D1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001E9D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 64;
      *(a1 + 16) = v2 - 64;
      if (*(v2 - 16) == 1)
      {
        v6 = *(v2 - 40);
        if (v6)
        {
          *(v2 - 32) = v6;
          operator delete(v6);
          v5 = *(a1 + 16);
        }
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_1001E9DA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E305B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E9DF8(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_1001E9E3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E30608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001E9E90(uint64_t a1)
{
  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

void sub_1001E9F04(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void sub_1001E9FB4(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v20 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v20 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v20 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = sub_10006EE44(*a1);
  ctu::rest::detail::write_enum_string_value(&v18, v7, v8, v9);
  v16 = &v20;
  v17 = "first";
  sub_10000F688(&v16, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v10 = *(a1 + 4);
  v11 = sub_100A38E08(v10);
  ctu::rest::detail::write_enum_string_value(&v14, v10, v11, v12);
  v16 = &v20;
  v17 = "second";
  sub_10000F688(&v16, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v20;
  *a2 = v20;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v20);
}

void sub_1001EA164(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = sub_10006EE44(*a1);
  ctu::rest::detail::write_enum_string_value(&v15, v7, v8, v9);
  v13 = &v17;
  v14 = "first";
  sub_10000F688(&v13, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  sub_1001E6980((a1 + 2), &v11);
  v13 = &v17;
  v14 = "second";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v17;
  *a2 = v17;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

void sub_1001EA304(int *a1, void **a2)
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
    p_object = &object;
    v10 = "first";
    sub_100006354(&p_object, &v11);
    type = xpc_get_type(v11);
    if (type == &_xpc_type_string)
    {
      v13 = *a1;
      ctu::rest::detail::read_enum_string_value(&v13, &v11, v6);
      *a1 = v13;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v11, 0, v6);
    }

    xpc_release(v11);
    p_object = &object;
    v10 = "second";
    sub_100006354(&p_object, &v11);
    v7 = xpc_get_type(v11);
    if (v7 == &_xpc_type_string)
    {
      v13 = a1[1];
      ctu::rest::detail::read_enum_string_value(&v13, &v11, v8);
      a1[1] = v13;
    }

    else if (v7 == &_xpc_type_BOOL || v7 == &_xpc_type_int64 || v7 == &_xpc_type_uint64)
    {
      a1[1] = xpc::dyn_cast_or_default(&v11, 0, v8);
    }

    xpc_release(v11);
  }

  xpc_release(object);
}

void sub_1001EA50C(int *a1, xpc_object_t *a2)
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
    sub_1001E6D78((a1 + 2), &object);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1001EA66C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001EA6C0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1001EA77C();
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

uint64_t sub_1001EA820(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v6 = (a1 + 8);
  sub_10013DFEC(&v6);
  return a1;
}

uint64_t *sub_1001EA880(uint64_t *a1, uint64_t **a2, unint64_t a3, unint64_t a4, unsigned __int8 a5, unsigned __int8 a6)
{
  *a1 = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v10 = a2[1];
    v8 = v10 >= a3;
    v9 = v10 - a3;
    if (!v8)
    {
LABEL_13:
      sub_1000A58E4("bitset string pos out of range");
    }

    if (v9 >= a4)
    {
      v9 = a4;
    }

    a2 = *a2;
  }

  else
  {
    v8 = v7 >= a3;
    v9 = v7 - a3;
    if (!v8)
    {
      goto LABEL_13;
    }

    if (v9 >= a4)
    {
      v9 = a4;
    }
  }

  sub_1001EA900(a1, a2 + a3, v9, a5, a6);
  return a1;
}

void sub_1001EA900(uint64_t *a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v5 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

  do
  {
    v6 = *(a2 + v5);
    if (v6 != a4 && v6 != a5)
    {
      sub_1001EA9B8("bitset string ctor has invalid argument");
    }

    ++v5;
  }

  while (a3 != v5);
  v8 = 0;
  v5 = 15;
  if (a3 < 0xF)
  {
    v5 = a3;
  }

  v9 = *a1;
  v10 = v5;
  do
  {
    v11 = v9 & ~(1 << v8);
    v9 |= 1 << v8;
    if (*(a2 - 1 + v10) != a5)
    {
      v9 = v11;
    }

    *a1 = v9;
    ++v8;
    --v10;
  }

  while (v10);
  if (a3 <= 0xE)
  {
LABEL_15:
    v12 = a1;
    v13 = v5;
    sub_1001E9F04(&v12, v5 ^ 0xF);
  }
}

void sub_1001EA9B8(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1001EAA14(exception, a1);
}

std::logic_error *sub_1001EAA14(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void MessageCenterModel::MessageCenterModel(uint64_t a1, uint64_t a2)
{
  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, "msg");
  sub_1000F0604((a1 + 8), "MessageCenterModel", QOS_CLASS_USER_INITIATED, &v10);
  ctu::OsLogContext::~OsLogContext(&v10);
  *a1 = off_101EA5EF0;
  v4 = *(a2 + 8);
  v10.var0 = *a2;
  v10.var1.fRef = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  }

  v11[0] = off_101E2B528;
  v11[1] = sub_1000A7AC0;
  v11[3] = v11;
  sub_1001EAFA0((a1 + 48));
  sub_1000A8744(v11);
  if (v10.var1.fRef)
  {
    sub_100004A34(v10.var1.fRef);
  }

  *a1 = off_101E30658;
  *(a1 + 56) = *a2;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "MessageCenterModel");
  v6 = *(a1 + 24);
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::RestModule::RestModule();
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v9 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1001FADAC();
}

void sub_1001EADA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, dispatch_object_t a11, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  v26 = *(v21 + 2000);
  if (v26)
  {
    sub_100004A34(v26);
  }

  NotifySubscription::~NotifySubscription((v21 + 1968));
  NotifySubscription::~NotifySubscription((v21 + 1944));
  sub_100170380(v21 + 1920, *(v21 + 1928));
  sub_10006DCAC(v21 + 1888, *(v21 + 1896));
  sub_10004543C(v21 + 1080);
  sub_10004543C(v21 + 272);
  sub_10006DCAC(v21 + 248, *(v21 + 256));
  sub_10006DCAC(v21 + 224, *(v21 + 232));
  sub_10006DCAC(v24 + 24, *(v21 + 208));
  sub_10006DCAC(v24, *(v21 + 184));
  v27 = *(v21 + 168);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v21 + 152);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v21 + 136);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v21 + 120);
  if (v30)
  {
    dispatch_release(v30);
  }

  sub_10006EC28(v23, *(v21 + 96));
  v31 = *(v21 + 80);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v21 + 64);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *v22;
  *v22 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  MessageCenterModelInterface::~MessageCenterModelInterface(v21);
  ctu::OsLogLogger::~OsLogLogger((v21 + 40));
  sub_1000C0544((v21 + 8));
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1001EAFA0(capabilities::ct *a1)
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

void sub_1001EB0F8(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void MessageCenterModel::create(void *a1@<X8>)
{
  v5[0] = off_101E309B0;
  v5[3] = v5;
  inactive = dispatch_workloop_create_inactive("MessageCenterModel");
  sub_1001FA58C(v5, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v5);
  v4[0] = off_101E30A40;
  v4[3] = v4;
  v3 = dispatch_workloop_create_inactive("MessageCenterModel");
  sub_1001FA58C(v4, v3);
  dispatch_activate(v3);
  sub_1001FAD0C(v4);
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1001EB7DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  __cxa_free_exception(v25);
  v27 = *(v24 + 8);
  if (v27)
  {
    sub_100004A34(v27);
    if (!v23)
    {
LABEL_3:
      if (!v22)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!v23)
  {
    goto LABEL_3;
  }

  dispatch_release(v23);
  if (!v22)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v22);
  goto LABEL_5;
}

void sub_1001EB9D8()
{
  if (v0)
  {
    JUMPOUT(0x1001EB9C8);
  }

  JUMPOUT(0x1001EB9ACLL);
}

void MessageCenterModel::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void MessageCenterModel::notifyServiceBootstrap(MessageCenterModel *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void MessageCenterModel::notifyServiceStart(MessageCenterModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void MessageCenterModel::initialize_sync(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v2, this[7]);
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10000501C(&__p, "/cc/props/mms_ready");
  handler = off_101E30BA0;
  v7 = (this + 22);
  v8 = this;
  p_handler = &handler;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&handler);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  sub_1001EC298((this + 25));
  sub_1001EC378((this + 28));
  sub_1001EC458((this + 31));
  handler = MessageCenterModel::handleRegNetInfo1Changed_sync;
  v7 = 0;
  sub_1001FC498();
}

void sub_1001EC1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EC298(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/rat");
  v4[0] = off_101E30C20;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001EC34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EC378(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/roaming_results");
  v4[0] = off_101E30CA0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001EC42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EC458(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/domestic_roamings");
  v4[0] = off_101E30D20;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001EC50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EC550(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/phone_numbers");
  v4[0] = off_101E30EA0;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001EC604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001EC630(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/lazuli_feature_supported");
  v4[0] = off_101E30F20;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001EC6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MessageCenterModel::handleStewieFeatureStateChanged_sync(MessageCenterModel *this, const StewieFeatureState *a2)
{
  if ((operator==() & 1) == 0 && StewieFeatureState::isStewieActive((this + 1912)))
  {
    v3 = *(this + 8);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    subscriber::makeSimSlotRange();
    if (v7)
    {
      sub_100004A34(v7);
    }

    v4 = v8;
    if (v8 != v9)
    {
      do
      {
        if (v10(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v9);
      while (v4 != v9)
      {
        v6 = *v4++;
        MessageCenterModel::flushResilientMORequests_sync(this, v6, v5);
        while (v4 != v9 && (v10(*v4) & 1) == 0)
        {
          ++v4;
        }
      }
    }
  }
}

void sub_1001EC7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EC810(Registry *a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(a1);
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
  *a2 = v11;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }
}

void sub_1001EC8D8(int a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (a5)
  {
    if (CFEqual(cf1, @"com.apple.LaunchServices.applicationRegistered"))
    {
      Value = CFDictionaryGetValue(a5, @"bundleIDs");
      sub_1001FA5E0(&v9, &Value);
      (*(*a2 + 360))(a2, &v9);
      sub_100010250(&v9);
    }

    if (CFEqual(cf1, @"com.apple.LaunchServices.applicationUnregistered"))
    {
      Value = CFDictionaryGetValue(a5, @"bundleIDs");
      sub_1001FA5E0(&v8, &Value);
      (*(*a2 + 368))(a2, &v8);
      sub_100010250(&v8);
    }
  }
}

void sub_1001ECA0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_1001ECA2C(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/in_home_countries_definite");
  v4[0] = off_101E31120;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1001ECAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MessageCenterModel::handleMMSEnabledChanged(MessageCenterModel *this)
{
  v2 = *(this + 8);
  v18 = *(this + 7);
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (v19)
  {
    sub_100004A34(v19);
  }

  v3 = v20;
  v4 = v21;
  if (v20 != v21)
  {
    v5 = v22;
    do
    {
      if (v22(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v21);
    v6 = v21;
    while (v3 != v6)
    {
      v7 = *v3;
      ServiceMap = Registry::getServiceMap(*(this + 7));
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
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
      v18 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v18);
      if (v14)
      {
        v16 = v14[3];
        v15 = v14[4];
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v9);
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = v7;
          sub_100004A34(v15);
          v17 = 0;
          if (!v16)
          {
            goto LABEL_20;
          }

LABEL_19:
          (*(*v16 + 256))(v16, v7);
          goto LABEL_20;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v17 = 1;
      if (v16)
      {
        goto LABEL_19;
      }

LABEL_20:
      if ((v17 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
    }
  }
}

void sub_1001ECCE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::handleDatabaseFullChanged(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[7]);
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
  v23 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v23);
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_22;
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
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_10:
  v12 = Registry::getServiceMap(this[7]);
  v13 = v12;
  if ((v14 & 0x8000000000000000) != 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(v12);
  v23 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &v23);
  if (!v18)
  {
    v20 = 0;
LABEL_18:
    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v21 = 0;
  if (v20)
  {
LABEL_19:
    v22 = (*(*v10 + 152))(v10, @"MessageDatabaseFull", 0);
    (*(*v20 + 304))(v20, v22);
  }

LABEL_20:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

LABEL_22:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1001ECF18(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v4 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::~MessageCenterModel(MessageCenterModel *this)
{
  *this = off_101E30658;
  v2 = *(this + 261);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v11 = (this + 2056);
  sub_1001FA644(&v11);
  sub_1001FB1A8(this + 2032, *(this + 255));
  sub_10006DCAC(this + 2008, *(this + 252));
  v3 = *(this + 250);
  if (v3)
  {
    sub_100004A34(v3);
  }

  NotifySubscription::~NotifySubscription((this + 1968));
  NotifySubscription::~NotifySubscription((this + 1944));
  sub_100170380(this + 1920, *(this + 241));
  sub_10006DCAC(this + 1888, *(this + 237));
  sub_10004543C(this + 1080);
  sub_10004543C(this + 272);
  sub_10006DCAC(this + 248, *(this + 32));
  sub_10006DCAC(this + 224, *(this + 29));
  sub_10006DCAC(this + 200, *(this + 26));
  sub_10006DCAC(this + 176, *(this + 23));
  v4 = *(this + 21);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 19);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 17);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 15);
  if (v7)
  {
    dispatch_release(v7);
  }

  sub_10006EC28(this + 88, *(this + 12));
  v8 = *(this + 10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 6);
  *(this + 6) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  MessageCenterModelInterface::~MessageCenterModelInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  MessageCenterModel::~MessageCenterModel(this);

  operator delete();
}

void MessageCenterModel::receiveSms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v15, *a3, *(a3 + 8));
  }

  else
  {
    *v15 = *a3;
    v16 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v17, *a4, *(a4 + 8));
  }

  else
  {
    *v17 = *a4;
    v18 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v20 = *(a5 + 16);
  }

  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25[0] = 0;
  v25[1] = 0;
  sub_100004AA0(v25, (a1 + 8));
  operator new();
}

void sub_1001ED36C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void MessageCenterModel::receiveSms_sync(uint64_t a1, int a2, const void **a3, const void **a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a2;
  data = a7;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  CC_SHA256_Update(&c, &data, 8u);
  v9 = *(a3 + 23);
  if (v9 < 0)
  {
    v9 = a3[1];
  }

  *len = v9;
  CC_SHA256_Update(&c, len, 8u);
  if (*(a3 + 23) >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  CC_SHA256_Update(&c, v10, len[0]);
  v11 = *(a4 + 23);
  if (v11 < 0)
  {
    v11 = a4[1];
  }

  *len = v11;
  CC_SHA256_Update(&c, len, 8u);
  if (*(a4 + 23) >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  CC_SHA256_Update(&c, v12, len[0]);
  memset(md, 0, sizeof(md));
  CC_SHA256_Final(&md[0].byte0, &c);
  v15 = 0uLL;
  __p = 0;
  v13 = CFUUIDCreateFromUUIDBytes(0, md[0]);
  v18 = v13;
  if (v13)
  {
    v17 = CFUUIDCreateString(0, v13);
    if (v17)
    {
      v22 = 0;
      v23 = 0uLL;
      ctu::cf::assign();
      __p = v22;
      *&v15 = v23;
      *(&v15 + 7) = *(&v23 + 7);
      HIBYTE(v15) = HIBYTE(v23);
    }

    sub_100005978(&v17);
  }

  sub_1000475BC(&v18);
  *c.count = 0;
  *c.hash = 0;
  operator new();
}

void sub_1001ED810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  v30 = *(v28 - 120);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::receiveMessage_sync(uint64_t a1, void *a2)
{
  v4 = (*(**a2 + 128))();
  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  if (*a2)
  {
    if ((*(**a2 + 48))(*a2) == -1)
    {
      v6 = sub_100AA1220(*(a1 + 128));
      (*(**a2 + 56))(*a2, v6);
    }

    v7 = (*(**a2 + 48))();
    v10 = v7;
    v8 = a2[1];
    v11 = *a2;
    v12 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001FDCF0(a1 + 88, &v10);
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101765488();
    }

    return 0xFFFFFFFFLL;
  }

  return v7;
}

void sub_1001EDA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void MessageCenterModel::receiveMMSFromNetwork(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void MessageCenterModel::receiveMMS_sync(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = 0;
  v3 = 0;
  operator new();
}

void sub_1001EDEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  v28 = *(v26 - 80);
  if (v28)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MessageCenterModel::receivedMessageCount(MessageCenterModel *this)
{
  v4 = this;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1001FDDC8;
  v5[3] = &unk_101E31280;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1001FDE14;
    v10 = &unk_101E312C0;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1001FDDD8;
    v10 = &unk_101E312A0;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t MessageCenterModel::receivedMessageWithId_sync@<X0>(MessageCenterModel *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(this + 12);
  result = this + 96;
  v4 = v5;
  *a3 = 0;
  a3[1] = 0;
  if (v5)
  {
    v6 = result;
    do
    {
      v7 = *(v4 + 32);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      v11 = *(v6 + 40);
      v10 = *(v6 + 48);
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v11;
      a3[1] = v10;
    }
  }

  return result;
}

void MessageCenterModel::receivedMessageWithId(MessageCenterModel *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = this;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1001FDE50;
  v7[3] = &unk_101E312E0;
  v7[4] = this + 8;
  v7[5] = v5;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1001FDEC8;
    v12 = &unk_101E31320;
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
    v11 = sub_1001FDE60;
    v12 = &unk_101E31300;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void MessageCenterModel::receivedMessageIds(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1001FDF30;
  block[3] = &unk_101E31340;
  block[4] = a1 + 8;
  block[5] = v5;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

uint64_t MessageCenterModel::queueForSend(uint64_t a1, uint64_t *a2)
{
  if (!*a2)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = a2[1];
  v7 = *a2;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = a1;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1001FE0DC;
  v10[3] = &unk_101E31360;
  v10[4] = a1 + 8;
  v10[5] = &v7;
  v11 = v10;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1001FE81C;
    v15 = &unk_101E313A0;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1001FE7E0;
    v15 = &unk_101E31380;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v3, &block);
  }

  v5 = v18;
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

uint64_t MessageCenterModel::checkMsgType_sync(uint64_t a1, void *a2)
{
  result = *a2;
  if (*a2)
  {
    if (!(*(*result + 16))(result))
    {
      (*(**a2 + 24))(*a2, a1 + 40);
    }

    return (*(**a2 + 64))() - 1 < 2;
  }

  return result;
}

uint64_t MessageCenterModel::acknowledgeReceivedMessage(MessageCenterModel *this, int a2)
{
  v6 = a2;
  v5[0] = this;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1001FE858;
  v7[3] = &unk_101E313C0;
  v7[4] = this + 8;
  v7[5] = v5;
  v8 = v7;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100069CC0;
    v12 = &unk_101E31400;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100058D64;
    v12 = &unk_101E313E0;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15 & 1;
}

void MessageCenterModel::queueForSend_sync(uint64_t a1, void *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = (*(**a2 + 128))();
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), v5);
  v7 = *a2;
  v8 = (*(**a2 + 128))(*a2);
  v9 = (*(*a1 + 352))(a1, v8);
  (*(*v7 + 232))(v7, v9);
  v10 = (*(**a2 + 48))();
  v11 = *v6;
  if (v10 == -1)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_101765524(v4);
    }

    return;
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v4 > 2)
    {
      v12 = "Undefined";
    }

    else
    {
      v12 = off_101E317A0[v4];
    }

    sub_10000501C(__p, v12);
    v13 = v48;
    v14 = __p[0];
    v15 = (*(**a2 + 48))();
    v16 = __p;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *buf = 136315394;
    v50 = v16;
    v51 = 1024;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Queuing message of type: %s, message-id: %u", buf, 0x12u);
    if (v48 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 != 1)
  {
    if (v4 != 2)
    {
      return;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v18 = ServiceMap;
    if (v19 < 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, __p);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        if (!v25)
        {
          goto LABEL_20;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
LABEL_20:
      v27 = *v6;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to get MMS Interface.", __p, 2u);
      }

LABEL_59:
      if (v26)
      {
        return;
      }

      v42 = v24;
      goto LABEL_61;
    }

LABEL_38:
    {
      v41 = a2[1];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = v41;
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v46 = 0;
      }

      v45 = v40;
      (*(*v25 + 120))(v25, &v45);
      if (v46)
      {
        sub_100004A34(v46);
      }

      if (v41)
      {
        sub_100004A34(v41);
      }
    }

    else if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_1017654F0();
    }

    goto LABEL_59;
  }

  if (!*a2)
  {
    v28 = 0;
    goto LABEL_27;
  }

  if (!v28)
  {
LABEL_27:
    v29 = 0;
    goto LABEL_28;
  }

  v29 = a2[1];
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_28:
  v30 = Registry::getServiceMap(*(a1 + 56));
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
  __p[0] = v32;
  v36 = sub_100009510(&v31[1].__m_.__sig, __p);
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
      if (!v38)
      {
        goto LABEL_34;
      }

      goto LABEL_46;
    }
  }

  else
  {
    v38 = 0;
  }

  std::mutex::unlock(v31);
  v37 = 0;
  v39 = 1;
  if (!v38)
  {
LABEL_34:
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_1017654BC();
    }

    goto LABEL_50;
  }

LABEL_46:
  v43 = v28;
  v44 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v38 + 312))(v38, &v43);
  if (v44)
  {
    sub_100004A34(v44);
  }

LABEL_50:
  if ((v39 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  if (v29)
  {
    v42 = v29;
LABEL_61:
    sub_100004A34(v42);
  }
}