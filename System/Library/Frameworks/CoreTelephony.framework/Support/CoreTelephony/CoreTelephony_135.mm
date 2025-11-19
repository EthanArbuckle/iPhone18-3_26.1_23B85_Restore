uint64_t sub_1011E26B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DD8;
  v5 = v4 + 31;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(v5, *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v6 = *(a2 + 248);
    v5[2] = *(a2 + 264);
    *v5 = v6;
  }

  v7 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

unint64_t sub_1011E274C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, _BYTE *a7)
{
  if (sub_1011DD2D8(a1))
  {
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
    *buf = 0u;
    v41 = 0u;
    sub_1011DD3C0(buf, a1, a2, a5, a3);
    if (v58)
    {
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
      *v22 = 0u;
      v23 = 0u;
      sub_1011E26B4(v22, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v22[8], __str);
      }

      else
      {
        v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v20, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v16 = sub_10069A078(v39, v22, a4, a6, a7);
      if (*(&v39 + 1))
      {
        sub_100004A34(*(&v39 + 1));
      }

      sub_100C18C58(v22);
      v15 = v16 & 0xFF00000000;
      v16 = v16;
    }

    else
    {
      v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Invalid configuration while sending text to group chat", v22, 2u);
      }

      v15 = &_mh_execute_header;
      v16 = 3;
    }

    if (v58 == 1)
    {
      if (*(&v57 + 1))
      {
        sub_100004A34(*(&v57 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v15 = &_mh_execute_header;
    v16 = 1;
  }

  return v15 | v16;
}

void sub_1011E2A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E2A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  if (sub_1011DD2D8(a1))
  {
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
    *buf = 0u;
    v38 = 0u;
    sub_1011DD3C0(buf, a1, a2, a4, a3);
    if (v55)
    {
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      *v19 = 0u;
      v20 = 0u;
      sub_1011E26B4(v19, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v19[8], __str);
      }

      else
      {
        v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v17, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100699BBC(v36, v19, a5, a6);
    }

    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid configuration while sending text to group chat", v19, 2u);
    }

    v13 = 3;
    if (v55 == 1)
    {
      if (*(&v54 + 1))
      {
        sub_100004A34(*(&v54 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v13 = 1;
  }

  return &_mh_execute_header | v13;
}

void sub_1011E2D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E2DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int8x16_t *a5, uint64_t a6, char *a7)
{
  if (sub_1011DD2D8(a1))
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
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
    *buf = 0u;
    v40 = 0u;
    sub_1011DD3C0(buf, a1, a2, a4, a3);
    if (v57)
    {
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      *v21 = 0u;
      v22 = 0u;
      sub_1011E26B4(v21, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v21[8], __str);
      }

      else
      {
        v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v19, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100699E18(v38, v21, a5, a6, a7);
    }

    v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Invalid configuration while sending geolocation to group chat", v21, 2u);
    }

    v15 = 3;
    if (v57 == 1)
    {
      if (*(&v56 + 1))
      {
        sub_100004A34(*(&v56 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v15 = 1;
  }

  return &_mh_execute_header | v15;
}

void sub_1011E30A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E30F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  if (sub_1011DD2D8(a1))
  {
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
    *buf = 0u;
    v38 = 0u;
    sub_1011DD3C0(buf, a1, a2, a4, a3);
    if (v55)
    {
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
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      *v19 = 0u;
      v20 = 0u;
      sub_1011E26B4(v19, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v19[8], __str);
      }

      else
      {
        v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v17, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_10069AE14(v36, v19, a5, a6);
    }

    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid configuration while sending file transfer information to group chat", v19, 2u);
    }

    v13 = 3;
    if (v55 == 1)
    {
      if (*(&v54 + 1))
      {
        sub_100004A34(*(&v54 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v13 = 1;
  }

  return &_mh_execute_header | v13;
}

void sub_1011E33D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E342C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (sub_1011DD2D8(a1))
  {
    v44 = 0;
    v45 = 0;
    sub_1011DF388(&v44, a1, a2);
    v8 = v44;
    if (v44)
    {
      v42 = 0u;
      v43 = 0u;
      sub_1011DDA4C(&v42, a1, a2);
      if (BYTE8(v43))
      {
        v41 = 0;
        *__p = 0u;
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
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        *buf = 0u;
        v22 = 0u;
        sub_1000D4128(buf, a3);
        sub_1009CC9A8(&v42, &v17);
        v19 = -1;
        v20 = 0;
        if (SBYTE7(v40) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = v17;
        *&v40 = v18;
        DWORD2(v40) = v19;
        BYTE12(v40) = v20;
        v9 = sub_10068E564(v8, buf, a4);
        v10 = v9 & 0xFFFFFF00;
        sub_1000D45B0(buf);
        v11 = v9;
        v12 = v9 & 0xFF00000000;
      }

      else
      {
        v15 = *(a1 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid phone number while creating Group Chat", buf, 2u);
        }

        v12 = 0;
        v11 = 0;
        v10 = 0;
      }

      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }
    }

    else
    {
      v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Invalid configuration while creating group chat", buf, 2u);
      }

      v10 = 0;
      v12 = &_mh_execute_header;
      v11 = 3;
    }

    if (v45)
    {
      sub_100004A34(v45);
    }
  }

  else
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v10 = 0;
    v12 = &_mh_execute_header;
    v11 = 1;
  }

  return v11 | v12 | v10;
}

void sub_1011E36E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000D45B0(va);
  if (*(v5 - 72) == 1 && *(v5 - 73) < 0)
  {
    operator delete(*(v5 - 96));
  }

  v7 = *(v5 - 56);
  if (v7)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_1011E3734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6)
{
  if (sub_1011DD2D8(a1))
  {
    v56 = 0;
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
    *buf = 0u;
    v39 = 0u;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(__dst, *a5, *(a5 + 8));
    }

    else
    {
      *__dst = *a5;
      *&v21 = *(a5 + 16);
    }

    BYTE8(v21) = 0;
    BYTE8(v22) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v25) = 0;
    sub_1011DD3C0(buf, a1, a2, __dst, a3);
    if (BYTE8(v25) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(*__dst);
    }

    if (v56)
    {
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
      *__p = 0u;
      *__dst = 0u;
      v21 = 0u;
      sub_1011E26B4(__dst, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&__dst[8], __str);
      }

      else
      {
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v18, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v14 = sub_1006905E4(v37, __dst, a4, a5, a6);
      if (*(&v37 + 1))
      {
        sub_100004A34(*(&v37 + 1));
      }

      sub_100C18C58(__dst);
      v13 = v14 & 0xFF00000000;
      v14 = v14;
    }

    else
    {
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__dst = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid configuration while adding participants to group chat", __dst, 2u);
      }

      v13 = &_mh_execute_header;
      v14 = 3;
    }

    if (v56 == 1)
    {
      if (*(&v55 + 1))
      {
        sub_100004A34(*(&v55 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v13 = &_mh_execute_header;
    v14 = 1;
  }

  return v13 | v14;
}

void sub_1011E3A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E3AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, _BYTE *a6)
{
  if (sub_1011DD2D8(a1))
  {
    v56 = 0;
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
    *buf = 0u;
    v39 = 0u;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(__dst, *a5, *(a5 + 8));
    }

    else
    {
      *__dst = *a5;
      *&v21 = *(a5 + 16);
    }

    BYTE8(v21) = 0;
    BYTE8(v22) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v25) = 0;
    sub_1011DD3C0(buf, a1, a2, __dst, a3);
    if (BYTE8(v25) == 1 && SBYTE7(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(*__dst);
    }

    if (v56)
    {
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
      *__p = 0u;
      *__dst = 0u;
      v21 = 0u;
      sub_1011E26B4(__dst, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&__dst[8], __str);
      }

      else
      {
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v18 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v18, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v14 = sub_100692504(v37, __dst, a4, a5, a6);
      if (*(&v37 + 1))
      {
        sub_100004A34(*(&v37 + 1));
      }

      sub_100C18C58(__dst);
      v13 = v14 & 0xFF00000000;
      v14 = v14;
    }

    else
    {
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__dst = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Invalid configuration while adding participants to group chat", __dst, 2u);
      }

      v13 = &_mh_execute_header;
      v14 = 3;
    }

    if (v56 == 1)
    {
      if (*(&v55 + 1))
      {
        sub_100004A34(*(&v55 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v13 = &_mh_execute_header;
    v14 = 1;
  }

  return v13 | v14;
}

void sub_1011E3E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v52 = 0;
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
    *buf = 0u;
    v35 = 0u;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(__dst, *a5, *(a5 + 8));
    }

    else
    {
      *__dst = *a5;
      *&v17 = *(a5 + 16);
    }

    BYTE8(v17) = 0;
    BYTE8(v18) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v21) = 0;
    sub_1011DD3C0(buf, a1, a2, __dst, a3);
    if (BYTE8(v21) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(*__dst);
    }

    if (v52)
    {
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
      v18 = 0u;
      *__p = 0u;
      *__dst = 0u;
      v17 = 0u;
      sub_1011E26B4(__dst, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&__dst[8], __str);
      }

      else
      {
        v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v14, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_100693D54(v33, __dst);
    }

    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *__dst = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid configuration while adding participants to group chat", __dst, 2u);
    }

    v10 = 3;
    if (v52 == 1)
    {
      if (*(&v51 + 1))
      {
        sub_100004A34(*(&v51 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v10 = 1;
  }

  return &_mh_execute_header | v10;
}

void sub_1011E41D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E4238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v53 = 0;
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
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    v36 = 0u;
    if (*(a5 + 23) < 0)
    {
      sub_100005F2C(__dst, *a5, *(a5 + 8));
    }

    else
    {
      *__dst = *a5;
      *&v18 = *(a5 + 16);
    }

    BYTE8(v18) = 0;
    BYTE8(v19) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v22) = 0;
    sub_1011DD3C0(buf, a1, a2, __dst, a3);
    if (BYTE8(v22) == 1 && SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(*__dst);
    }

    if (v53)
    {
      v33 = 0u;
      v34 = 0u;
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
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      *__p = 0u;
      *__dst = 0u;
      v18 = 0u;
      sub_1011E26B4(__dst, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&__dst[8], __str);
      }

      else
      {
        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v15, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      started = variable initialization expression of ObjcSimTransferStartSessionResponse.sessionID();
      if (*(&v34 + 1))
      {
        sub_100004A34(*(&v34 + 1));
      }

      sub_100C18C58(__dst);
      v10 = started & 0xFF00000000;
      started = started;
    }

    else
    {
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *__dst = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Invalid configuration while adding participants to group chat", __dst, 2u);
      }

      v10 = &_mh_execute_header;
      started = 3;
    }

    if (v53 == 1)
    {
      if (*(&v52 + 1))
      {
        sub_100004A34(*(&v52 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v10 = &_mh_execute_header;
    started = 1;
  }

  return v10 | started;
}

void sub_1011E4580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E45E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
    v52 = 0;
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
    *buf = 0u;
    v35 = 0u;
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__dst, *a4, *(a4 + 8));
    }

    else
    {
      *__dst = *a4;
      *&v17 = *(a4 + 16);
    }

    BYTE8(v17) = 0;
    BYTE8(v18) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE8(v21) = 0;
    sub_1011DD3C0(buf, a1, a2, __dst, a3);
    if (BYTE8(v21) == 1 && SBYTE7(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(*__dst);
    }

    if (v52)
    {
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
      v18 = 0u;
      *__p = 0u;
      *__dst = 0u;
      v17 = 0u;
      sub_1011E26B4(__dst, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&__dst[8], __str);
      }

      else
      {
        v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v14, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      v10 = sub_100694284(v33, __dst, a4);
      if (*(&v33 + 1))
      {
        sub_100004A34(*(&v33 + 1));
      }

      sub_100C18C58(__dst);
      v9 = v10 & 0xFF00000000;
      v10 = v10;
    }

    else
    {
      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *__dst = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid configuration while adding participants to group chat", __dst, 2u);
      }

      v9 = &_mh_execute_header;
      v10 = 3;
    }

    if (v52 == 1)
    {
      if (*(&v51 + 1))
      {
        sub_100004A34(*(&v51 + 1));
      }

      sub_100C18C58(buf);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = &_mh_execute_header;
    v10 = 1;
  }

  return v9 | v10;
}

void sub_1011E4914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1006A09AC(&a19);
  sub_10067A63C(&a57);
  _Unwind_Resume(a1);
}

void sub_1011E4978(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  PersonalityIdFromSlotId();
  v7 = sub_100007A6C(a1 + 128, &__p);
  if (a1 + 136 == v7 || (v8 = *(v7 + 56)) == 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HIBYTE(v15);
      if (v15 < 0)
      {
        v10 = v14;
      }

      p_p = &__p;
      if (v15 < 0)
      {
        p_p = __p;
      }

      if (v10)
      {
        v12 = p_p;
      }

      else
      {
        v12 = "<invalid>";
      }

      *buf = 136315138;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Not model found for handling group data management: %s", buf, 0xCu);
    }
  }

  else
  {
    sub_10069F814(v8, a3, a4);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1011E4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011E4AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  PersonalityIdFromSlotId();
  v7 = sub_100007A6C(a1 + 128, &__p);
  if (a1 + 136 == v7 || (v8 = *(v7 + 56)) == 0)
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HIBYTE(v15);
      if (v15 < 0)
      {
        v10 = v14;
      }

      p_p = &__p;
      if (v15 < 0)
      {
        p_p = __p;
      }

      if (v10)
      {
        v12 = p_p;
      }

      else
      {
        v12 = "<invalid>";
      }

      *buf = 136315138;
      v17 = v12;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Not model found while handling incoming conference info: %s", buf, 0xCu);
    }
  }

  else
  {
    sub_10069F89C(v8, a3, a4);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }
}

void sub_1011E4C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011E4C30(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_1011DDC60(v12, a1, a2, a3, a4);
  if (v14)
  {
    memset(__str, 0, sizeof(__str));
    sub_1011DEAEC(__str, a1);
    if (__str[24] == 1)
    {
      if ((v14 & 1) == 0)
      {
        sub_1000D1644();
      }

      std::string::operator=((v12 + 8), __str);
    }

    else
    {
      v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v10, 2u);
      }
    }

    if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    *a5 = 0;
    a5[288] = 0;
    if (v14 == 1)
    {
      sub_1011E6934(a5, v12);
      a5[288] = 1;
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to determine model creating one-to-one attributes", __str, 2u);
    }

    *a5 = 0;
    a5[288] = 0;
  }

  if (v14 == 1)
  {
    if (*(&v13 + 1))
    {
      sub_100004A34(*(&v13 + 1));
    }

    sub_100C189A8(v12);
  }
}

void sub_1011E4E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10067AAC8(v21);
  sub_10067AAC8(&a19);
  _Unwind_Resume(a1);
}

void sub_1011E4E98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v14 = 0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_1011DD3C0(v12, a1, a2, a3, a4);
  if (v14)
  {
    memset(__str, 0, sizeof(__str));
    sub_1011DEAEC(__str, a1);
    if (__str[24] == 1)
    {
      if ((v14 & 1) == 0)
      {
        sub_1000D1644();
      }

      std::string::operator=((v12 + 8), __str);
    }

    else
    {
      v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v10, 2u);
      }
    }

    if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
    {
      operator delete(*__str);
    }

    *a5 = 0;
    a5[288] = 0;
    if (v14 == 1)
    {
      sub_1011E68A8(a5, v12);
      a5[288] = 1;
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to determine model creating group attributes", __str, 2u);
    }

    *a5 = 0;
    a5[288] = 0;
  }

  if (v14 == 1)
  {
    if (*(&v13 + 1))
    {
      sub_100004A34(*(&v13 + 1));
    }

    sub_100C18C58(v12);
  }
}

void sub_1011E50A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  sub_10067A63C(v21);
  sub_10067A63C(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E5100(uint64_t a1, uint64_t a2, const void **a3)
{
  if (sub_1011DD2D8(a1))
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    PersonalityIdFromSlotId();
    v6 = sub_100007A6C(a1 + 128, &__p);
    if (a1 + 136 == v6 || (v7 = *(v6 + 56)) == 0)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = HIBYTE(v20);
        if (v20 < 0)
        {
          v15 = v19;
        }

        p_p = &__p;
        if (v20 < 0)
        {
          p_p = __p;
        }

        if (v15)
        {
          v17 = p_p;
        }

        else
        {
          v17 = "<invalid>";
        }

        *buf = 136315138;
        v22 = v17;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Not model found while deleting chat: %s", buf, 0xCu);
      }

      v11 = 0;
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v8 = sub_10069EF20(v7, a3);
      v9 = v8 & 0xFFFFFF00;
      v10 = v8;
      v11 = v8 & 0xFF00000000;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Device not IMS registered", &__p, 2u);
    }

    v9 = 0;
    v11 = &_mh_execute_header;
    v10 = 1;
  }

  return v10 | v11 | v9;
}

void sub_1011E52D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1011E52F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (sub_1011DD2D8(a1))
  {
    v55 = 0u;
    v56 = 0u;
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
    *buf = 0u;
    v38 = 0u;
    sub_1011DE1AC(buf, a1, a2, a4, a3);
    if (BYTE8(v56))
    {
      v36 = 0;
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
      v18 = 0u;
      v19 = 0u;
      *v17 = 0u;
      sub_1011E5624(v17, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v17[8], __str);
      }

      else
      {
        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v15 = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v15, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_10069B508(*(&v35 + 1), v17, a5);
    }

    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Bailing out", v17, 2u);
    }

    v11 = 3;
    if (BYTE8(v56) == 1)
    {
      if (v56)
      {
        sub_100004A34(v56);
      }

      sub_100C18FA8(buf);
    }
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v11 = 1;
  }

  return &_mh_execute_header | v11;
}

void sub_1011E55D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1011DEC30(&a19);
  sub_1011E570C(&a61);
  _Unwind_Resume(a1);
}

void *sub_1011E5624(void *a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DF8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C((v4 + 248), *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v5 = *(a2 + 248);
    *(v4 + 264) = *(a2 + 264);
    *(v4 + 248) = v5;
  }

  a1[34] = 0;
  a1[35] = 0;
  a1[36] = 0;
  sub_10071F420((a1 + 34), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 3));
  v6 = *(a2 + 304);
  a1[37] = *(a2 + 296);
  a1[38] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t sub_1011E570C(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 304);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100C18FA8(a1);
  }

  return a1;
}

unint64_t sub_1011E5750(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
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
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    v36 = 0u;
    sub_1011DE1AC(buf, a1, a2, a4, a3);
    if (BYTE8(v54))
    {
      v34 = 0;
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
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *v15 = 0u;
      sub_1011E5624(v15, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v15[8], __str);
      }

      else
      {
        v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v13, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_10069B69C(*(&v33 + 1), v15);
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Bailing out", v15, 2u);
    }

    v9 = 3;
    if (BYTE8(v54) == 1)
    {
      if (v54)
      {
        sub_100004A34(v54);
      }

      sub_100C18FA8(buf);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = 1;
  }

  return &_mh_execute_header | v9;
}

void sub_1011E5A28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1011DEC30(&a19);
  sub_1011E570C(&a61);
  _Unwind_Resume(a1);
}

unint64_t sub_1011E5A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (sub_1011DD2D8(a1))
  {
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
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
    v36 = 0u;
    sub_1011DE1AC(buf, a1, a2, a4, a3);
    if (BYTE8(v54))
    {
      v34 = 0;
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
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      *v15 = 0u;
      sub_1011E5624(v15, buf);
      memset(__str, 0, sizeof(__str));
      sub_1011DEAEC(__str, a1);
      if (__str[24] == 1)
      {
        std::string::operator=(&v15[8], __str);
      }

      else
      {
        v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v13 = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to trusted MSISDN rather than public identity", v13, 2u);
        }
      }

      if (__str[24] == 1 && (__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }

      sub_10069B830(*(&v33 + 1), v15);
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Bailing out", v15, 2u);
    }

    v9 = 3;
    if (BYTE8(v54) == 1)
    {
      if (v54)
      {
        sub_100004A34(v54);
      }

      sub_100C18FA8(buf);
    }
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Device not IMS registered", buf, 2u);
    }

    v9 = 1;
  }

  return &_mh_execute_header | v9;
}

void sub_1011E5D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  sub_1011DEC30(&a19);
  sub_1011E570C(&a61);
  _Unwind_Resume(a1);
}

void sub_1011E5DA8(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = (a1 + 136);
  if (v2 != (a1 + 136))
  {
    do
    {
      v4 = SlotIdFromPersonalityId();
      v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I === Messaging dump ===", &__p, 2u);
      }

      sub_100678C38(v2[7]);
      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 432))
    {
      v10 = "held";
    }

    else
    {
      v10 = "not held";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
    *(__p.__r_.__value_.__r.__words + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I power assertion : %{public}s", &__p, 0xCu);
  }

  if (*(a1 + 432) || *(a1 + 424))
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      sub_100074B94(*(a1 + 408), (a1 + 416), ",", 1, &__p);
      v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I \theld by : %{public}s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I === === ===", &__p, 2u);
  }
}

void sub_1011E6010(uint64_t a1, uint64_t a2)
{
  sub_100005BA0(a1 + 408, a2);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(v22) = 136446210;
    *(&v22 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Added messageID %{public}s to power assertion list", &v22, 0xCu);
    v4 = *(a1 + 40);
  }

  v6 = *(a1 + 432);
  v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v7)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Incoming Lazuli message. Power assertion already held", &v22, 2u);
    }

    return;
  }

  if (v7)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Incoming Lazuli message. Taking power assertion", &v22, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v9 = ServiceMap;
  if (v10 < 0)
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
  *&v22 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v22);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_17;
      }

LABEL_21:
      v19 = sub_100A9A724();
      (*(*v16 + 8))(&v22, v16, "com.apple.ct.lazuliIncoming", v19);
      v20 = v22;
      v22 = 0uLL;
      v21 = *(a1 + 440);
      *(a1 + 432) = v20;
      if (v21)
      {
        sub_100004A34(v21);
        if (*(&v22 + 1))
        {
          sub_100004A34(*(&v22 + 1));
        }
      }

      goto LABEL_24;
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
    goto LABEL_21;
  }

LABEL_17:
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v22) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing power interface", &v22, 2u);
  }

LABEL_24:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1011E6298(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011E62D4(uint64_t a1, uint64_t a2)
{
  if (sub_10016FA58(a1 + 408, a2))
  {
    sub_1000727F0((a1 + 408), a2);
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v10 = 136446210;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Removed messageID %{public}s from power assertion list", &v10, 0xCu);
    }

    if (*(a1 + 432))
    {
      v6 = *(a1 + 424);
      v7 = *(a1 + 40);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v10 = 134217984;
          v11 = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Power assertion still being held while %zu messages are being processed", &v10, 0xCu);
        }
      }

      else
      {
        if (v8)
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Releasing power assertion for incoming Lazuli message", &v10, 2u);
        }

        v9 = *(a1 + 440);
        *(a1 + 432) = 0;
        *(a1 + 440) = 0;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }
    }
  }
}

void sub_1011E6444(uint64_t a1)
{
  v2 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_100A97E08((a1 + 80), __p);
  sub_1009FFC94();
  *v13 = *__p;
  v14 = v12;
  __p[1] = 0;
  v12 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_100A97E08((a1 + 80), buf);
  sub_10091677C();
  *__p = *buf;
  v12 = *&buf[16];
  memset(buf, 0, sizeof(buf));
  ctu::path_join_impl();
  ctu::path_join_impl();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v9 = 0;
  v10 = 0;
  Registry::getFileSystemInterface(&v9, *(a1 + 80));
  if (v9)
  {
    if ((*(*v9 + 88))(v9, v13))
    {
      v3 = (*(*v9 + 112))(v9, v13);
      v4 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v13;
        if (v14 < 0)
        {
          v5 = v13[0];
        }

        *buf = 136446466;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Erased folder: [%{public}s] [status: %zu]", buf, 0x16u);
      }
    }

    if ((*(*v9 + 88))(v9, __p))
    {
      v6 = (*(*v9 + 112))(v9, __p);
      v7 = *v2;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v13;
        if (v14 < 0)
        {
          v8 = v13[0];
        }

        *buf = 136446466;
        *&buf[4] = v8;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Erased folder: [%{public}s] [status: %zu]", buf, 0x16u);
      }
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1011E6778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011E682C(uint64_t a1)
{
  sub_1011E6BD8(a1);

  operator delete();
}

void sub_1011E686C(uint64_t a1)
{
  sub_1011E6BD8(a1 - 56);

  operator delete();
}

uint64_t sub_1011E68A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DD8;
  v5 = v4 + 31;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(v5, *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v6 = *(a2 + 248);
    v5[2] = *(a2 + 264);
    *v5 = v6;
  }

  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  return a1;
}

uint64_t sub_1011E6934(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DB8;
  v5 = v4 + 31;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(v5, *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v6 = *(a2 + 248);
    v5[2] = *(a2 + 264);
    *v5 = v6;
  }

  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  return a1;
}

void *sub_1011E69C0(void *a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DF8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C((v4 + 248), *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v5 = *(a2 + 248);
    *(v4 + 264) = *(a2 + 264);
    *(v4 + 248) = v5;
  }

  a1[34] = 0;
  a1[35] = 0;
  a1[36] = 0;
  sub_10071F420((a1 + 34), *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 3));
  return a1;
}

uint64_t sub_1011E6A90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006A0A6C(a1, a2);
  *v4 = off_101EC8DF8;
  if (*(a2 + 271) < 0)
  {
    sub_100005F2C((v4 + 248), *(a2 + 248), *(a2 + 256));
  }

  else
  {
    v5 = *(a2 + 248);
    *(v4 + 264) = *(a2 + 264);
    *(v4 + 248) = v5;
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  sub_10071F420(a1 + 272, *(a2 + 272), *(a2 + 280), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 280) - *(a2 + 272)) >> 3));
  v6 = *(a2 + 304);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = v6;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  *(a1 + 312) = 1;
  return a1;
}

uint64_t sub_1011E6B74(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1011E6BD8(uint64_t a1)
{
  *a1 = off_101F19B88;
  *(a1 + 56) = off_101F19D08;
  v2 = *(a1 + 440);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100009970(a1 + 408, *(a1 + 416));
  v3 = *(a1 + 400);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 384);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 368);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_100009970(a1 + 328, *(a1 + 336));
  sub_1008DE25C(a1 + 304, *(a1 + 312));
  sub_100F65E88(a1 + 272);
  sub_1008DDAE8(a1 + 248, *(a1 + 256));
  sub_100844464(a1 + 224, *(a1 + 232));
  sub_1008DDF20(a1 + 200, *(a1 + 208));
  sub_1008F0450(a1 + 176, *(a1 + 184));
  sub_100009970(a1 + 152, *(a1 + 160));
  sub_100DE3E98(*(a1 + 136));
  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    sub_100004A34(v9);
  }

  TMKXPCServer.shutdown()();
  LazuliMessagingControllerInterface::~LazuliMessagingControllerInterface(a1);
  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1011E6DFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F19E48;
  sub_1011E6EF4((a1 + 3), a2, a3, a4, a5);
}

void sub_1011E6E78(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F19E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011E6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a3 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a4 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a5 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1011E76B0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F19E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011E7858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_1011E789C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F19F28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_1011E79B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F19FB8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011E79F0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100901888(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_1011E7AC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011E7B90(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1A038;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011E7BC8(void *a1, xpc_object_t *a2)
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

  sub_100DE475C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1008DDF20(&v9, v10);
}

uint64_t sub_1011E7CA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011E7D68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1A0B8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011E7DA0(void *a1, xpc_object_t *a2)
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

  sub_1009B4B58(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100844464(&v9, v10);
}

uint64_t sub_1011E7E78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011E7F40(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1A138;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011E7F78(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_1011E8050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011E810C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F1A1B8;
  a2[1] = v2;
  return result;
}

void sub_1011E8138(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = (v2 + 8);
  sub_1008DDAE8(v2, *(v2 + 8));
  *v2 = v2 + 8;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
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

    sub_100008EA4(&v20, object, 0);
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

    sub_100008EA4(v19, object, count);
    xpc_release(object[0]);
    for (i = v21; ; i = ++v21)
    {
      if (i == v19[1] && v20 == v19[0])
      {
        xpc_release(v19[0]);
        xpc_release(v20);
        goto LABEL_46;
      }

      v18 = 0;
      object[0] = &v20;
      object[1] = i;
      sub_10003EAD4(object, &v18);
      if (xpc_get_type(v18) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_44:
      xpc_release(v18);
    }

    *__p = 0u;
    v17 = 0u;
    *object = 0u;
    v15 = 0u;
    v7 = v18;
    if (v18)
    {
      xpc_retain(v18);
      v25 = v7;
    }

    else
    {
      v7 = xpc_null_create();
      v25 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v7 = 0;
        goto LABEL_26;
      }
    }

    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      v8 = v7;
LABEL_27:
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v22 = &v25;
        v23 = "first";
        sub_100006354(&v22, v24);
        type = xpc_get_type(*v24);
        if (type == &_xpc_type_string)
        {
          v26 = object[0];
          ctu::rest::detail::read_enum_string_value(&v26, v24, v10);
          LODWORD(object[0]) = v26;
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          LODWORD(object[0]) = xpc::dyn_cast_or_default(v24, 0, v10);
        }

        xpc_release(*v24);
        v22 = &v25;
        v23 = "second";
        sub_100006354(&v22, v24);
        read_rest_value(&object[1], v24);
        xpc_release(*v24);
        v8 = v25;
      }

      xpc_release(v8);
      xpc_release(v7);
      v11 = *v4;
      if (!*v4)
      {
LABEL_41:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v12 = v11;
          v13 = *(v11 + 32);
          if (v13 <= SLODWORD(object[0]))
          {
            break;
          }

          v11 = *v12;
          if (!*v12)
          {
            goto LABEL_41;
          }
        }

        if (v13 >= SLODWORD(object[0]))
        {
          break;
        }

        v11 = v12[1];
        if (!v11)
        {
          goto LABEL_41;
        }
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[1]);
      }

      goto LABEL_44;
    }

    v8 = xpc_null_create();
LABEL_26:
    v25 = v8;
    goto LABEL_27;
  }

LABEL_46:
  xpc_release(v3);
}

void sub_1011E8510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23)
{
  xpc_release(object);
  xpc_release(a23);
  xpc_release(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E8600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011E86C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1A238;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1011E8700(void *a1, void **a2)
{
  v13 = 0;
  v11 = 0u;
  *__p = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  *v8 = 0u;
  *v6 = 0u;
  read_rest_value(v6, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, v6);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v11) == 1)
  {
    v14 = &v10;
    sub_1000087B4(&v14);
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }
}

uint64_t sub_1011E87F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011E8844(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_1000087B4(&v3);
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

const char *sub_1011E88BC(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return "???";
  }

  else
  {
    return off_101F1A2A8[a1];
  }
}

const char *sub_1011E88E0(int a1)
{
  result = "kFakeEmergencyStart";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "kEmergencyStart";
      break;
    case 2:
      result = "kEmergencyMessage";
      break;
    case 3:
      result = "kEmergencyLocationUpdate";
      break;
    case 4:
      result = "kFindMyMessage";
      break;
    case 5:
      result = "kFakeRoadsideStart";
      break;
    case 6:
      result = "kRoadsideStart";
      break;
    case 7:
      result = "kRoadsideMessage";
      break;
    case 8:
      result = "kRoadsideLocationUpdate";
      break;
    case 9:
      result = "kCarrierPigeonMessage";
      break;
    case 10:
      result = "kCarrierPigeonIMessageLiteMessage";
      break;
    case 11:
      result = "kCarrierPigeonFetchMessage";
      break;
    case 12:
      result = "kSatSmsStartMessage";
      break;
    case 13:
      result = "kSatSmsMessage";
      break;
    case 14:
      result = "kCarrierPigeonIMessageLiteRelayMessage";
      break;
    default:
      v4 = "kUnknown";
      if (a1 != 63)
      {
        v4 = "???";
      }

      if (a1 == 62)
      {
        result = "kErrorMessage";
      }

      else
      {
        result = v4;
      }

      break;
  }

  return result;
}

const char *sub_1011E89EC(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101F1A348[a1];
  }
}

void sub_1011E8A10(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1011E8CC0();
}

void sub_1011E8A60(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011E8A78(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = a1[21];
      if (v5)
      {
        v6 = a1[3];
        if (!v6 || (v7 = a1[2], (v8 = std::__shared_weak_count::lock(v6)) == 0))
        {
          sub_100013CC4();
        }

        v9 = v7;
        v10 = v8;
        (*(*v5 + 16))(v5, &v9);
        if (v10)
        {
          sub_100004A34(v10);
        }
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1011E8B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1011E8B4C(uint64_t a1)
{
  *a1 = off_101F1A388;
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_101F08010;
  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  LinkQualityMetricModelInterface::~LinkQualityMetricModelInterface(a1);
}

void sub_1011E8BFC(uint64_t a1)
{
  *a1 = off_101F1A388;
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_101F08010;
  v3 = *(a1 + 136);
  if (v3)
  {
    *(a1 + 144) = v3;
    operator delete(v3);
  }

  std::mutex::~mutex((a1 + 64));
  v4 = *(a1 + 48);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  LinkQualityMetricModelInterface::~LinkQualityMetricModelInterface(a1);

  operator delete();
}

void *sub_1011E8D4C(void *a1, Registry **a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F1A420;
  v4 = (a1 + 3);
  v5 = "reg.lqm.data.???";
  v6 = *a3;
  if (v6 == 2)
  {
    v5 = "reg.lqm.data.2";
  }

  v7 = "LinkQualityMetricModel.???";
  if (v6 == 2)
  {
    v7 = "LinkQualityMetricModel.2";
  }

  if (v6 == 1)
  {
    v8 = "reg.lqm.data.1";
  }

  else
  {
    v8 = v5;
  }

  if (v6 == 1)
  {
    v9 = "LinkQualityMetricModel.1";
  }

  else
  {
    v9 = v7;
  }

  sub_1010A2A50(v4, a2, v6, v8, v9);
  a1[3] = off_101F1A388;
  a1[24] = 0;
  a1[25] = 0;
  return a1;
}

void sub_1011E8E34(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1A420;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011E8F64(void **a1)
{
  if ((atomic_load_explicit(&qword_101FC8D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FC8D48))
  {
    sub_10000501C(v7, "urn:service:sos.police");
    v7[24] = 1;
    sub_10000501C(v8, "urn:service:sos.ambulance");
    v8[24] = 2;
    sub_10000501C(v9, "urn:service:sos.fire");
    v9[24] = 4;
    sub_10000501C(v10, "urn:service:sos.marine");
    v10[24] = 8;
    sub_10000501C(v11, "urn:service:sos.mountain");
    v11[24] = 16;
    sub_1011E91E4(v7, 5);
    for (i = 0; i != -160; i -= 32)
    {
      if (v11[i + 23] < 0)
      {
        operator delete(*&v11[i]);
      }
    }

    __cxa_atexit(sub_1011E91B8, &qword_101FC8D50, &_mh_execute_header);
    __cxa_guard_release(&qword_101FC8D48);
  }

  v2 = qword_101FC8D58;
  if (!qword_101FC8D58)
  {
    return 0;
  }

  v3 = &qword_101FC8D58;
  do
  {
    v4 = sub_1000068BC((v2 + 32), a1);
    if ((v4 & 0x80u) == 0)
    {
      v3 = v2;
    }

    v2 = *(v2 + ((v4 >> 4) & 8));
  }

  while (v2);
  if (v3 == &qword_101FC8D58 || (sub_1000068BC(a1, v3 + 4) & 0x80) != 0)
  {
    return 0;
  }

  else
  {
    return *(v3 + 56);
  }
}

void sub_1011E913C(_Unwind_Exception *a1)
{
  v3 = (v1 + 151);
  v4 = -160;
  v5 = (v1 + 151);
  while (1)
  {
    v6 = *v5;
    v5 -= 32;
    if (v6 < 0)
    {
      operator delete(*(v3 - 23));
    }

    v3 = v5;
    v4 += 32;
    if (!v4)
    {
      __cxa_guard_abort(&qword_101FC8D48);
      _Unwind_Resume(a1);
    }
  }
}

uint64_t sub_1011E91E4(uint64_t result, uint64_t a2)
{
  qword_101FC8D60 = 0;
  qword_101FC8D58 = 0;
  qword_101FC8D50 = &qword_101FC8D58;
  if (a2)
  {
    v2 = result;
    v3 = 0;
    v4 = (result + 32 * a2);
    v5 = &qword_101FC8D58;
    while (1)
    {
      if (v5 == &qword_101FC8D58)
      {
        v6 = &qword_101FC8D58;
      }

      else
      {
        if (v3)
        {
          do
          {
            v6 = v3;
            v3 = *(v3 + 8);
          }

          while (v3);
        }

        else
        {
          v7 = &qword_101FC8D58;
          do
          {
            v6 = v7[2];
            v8 = *v6 == v7;
            v7 = v6;
          }

          while (v8);
        }

        result = sub_1000068BC(v6 + 4, v2);
        v3 = qword_101FC8D58;
        if ((result & 0x80) == 0)
        {
          if (qword_101FC8D58)
          {
            v9 = &qword_101FC8D58;
            do
            {
              while (1)
              {
                v10 = v3;
                if ((sub_1000068BC(v2, (v3 + 32)) & 0x80) == 0)
                {
                  break;
                }

                v3 = *v10;
                v9 = v10;
                if (!*v10)
                {
                  goto LABEL_22;
                }
              }

              result = sub_1000068BC(v10 + 4, v2);
              if ((result & 0x80) == 0)
              {
                goto LABEL_21;
              }

              v9 = v10 + 1;
              v3 = v10[1];
            }

            while (v3);
          }

LABEL_22:
          operator new();
        }
      }

      if (!v3)
      {
        goto LABEL_22;
      }

      v9 = v6 + 1;
LABEL_21:
      if (!*v9)
      {
        goto LABEL_22;
      }

      v2 += 4;
      if (v2 == v4)
      {
        return result;
      }

      v5 = qword_101FC8D50;
      v3 = qword_101FC8D58;
    }
  }

  return result;
}

void sub_1011E93B0(_Unwind_Exception *a1)
{
  operator delete(v1);
  sub_1010DD940(*(v2 + 3416));
  _Unwind_Resume(a1);
}

BOOL sub_1011E93EC()
{
  cf2 = 0;
  v2 = MGCopyAnswer();
  sub_100222990(&cf2, &v2);
  if (cf2)
  {
    v0 = CFEqual(@"NonUI", cf2) != 0;
  }

  else
  {
    v0 = 0;
  }

  sub_100005978(&cf2);
  return v0;
}

void sub_1011E9464(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1011E97DC@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = *a1;
  if (*a1)
  {
    result = MGCopyMultipleAnswers();
  }

  *a2 = result;
  return result;
}

uint64_t sub_1011E9810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10009CF40(v7, a5);
  v5 = MGRegisterForUpdates();
  sub_10002B644(v7);
  return v5;
}

uint64_t sub_1011E9904(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1011E9954(Registry **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  *&v54 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v54);
  if (!v11)
  {
    std::mutex::unlock(v6);
    goto LABEL_9;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    std::mutex::unlock(v6);
    if (v12)
    {
      goto LABEL_11;
    }

LABEL_9:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  if (!v12)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
LABEL_75:
    sub_100004A34(v13);
    return;
  }

LABEL_11:
  v56 = 0;
  (*(*v12 + 96))(&v54, v12, a2, 1, @"ManagedHours", 0, 0);
  sub_100010180(&v56, &v54);
  sub_10000A1EC(&v54);
  if (v56)
  {
    v36 = v13;
    v14 = v56;
    v54 = 0u;
    v55 = 0u;
    v35 = v14;
    v15 = [v14 objectForKeyedSubscript:@"ExpirationDate"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v15 length])
    {
      v16 = objc_opt_new();
      v17 = [v16 dateFromString:v15];
      v57 = v17;
      if (v17)
      {
        CFRetain(v17);
      }
    }

    else
    {
      v57 = 0;
    }

    *&v45[0] = *(&v55 + 1);
    *(&v55 + 1) = v57;
    v57 = 0;
    sub_1003EC530(v45);
    sub_1003EC530(&v57);

    v37 = [v35 objectForKeyedSubscript:@"TimeWindows"];
    v18 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = 0uLL;
      v53 = 0uLL;
      v50 = 0uLL;
      v51 = 0uLL;
      obj = v37;
      v40 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
      if (v40)
      {
        v39 = *v51;
        do
        {
          for (i = 0; i != v40; i = i + 1)
          {
            if (*v51 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v50 + 1) + 8 * i);
            v43 = [obj objectForKeyedSubscript:v19];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v20 = v43;
              v21 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
              if (v21)
              {
                v22 = *v47;
                do
                {
                  v23 = 0;
                  do
                  {
                    if (*v47 != v22)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v24 = *(*(&v46 + 1) + 8 * v23);
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      memset(v45, 0, sizeof(v45));
                      DWORD2(v45[1]) = 7;
                      v25 = [v24 objectForKeyedSubscript:@"StartTime"];
                      sub_1011EA200(&v44, a1, v25);
                      v57 = *(&v45[0] + 1);
                      *(&v45[0] + 1) = v44;
                      v44 = 0;
                      sub_1003EC530(&v57);
                      sub_1003EC530(&v44);

                      v26 = [v24 objectForKeyedSubscript:@"EndTime"];
                      sub_1011EA200(&v44, a1, v26);
                      v57 = *&v45[1];
                      *&v45[1] = v44;
                      v44 = 0;
                      sub_1003EC530(&v57);
                      sub_1003EC530(&v44);

                      if (*(&v45[0] + 1) && *&v45[1])
                      {
                        v27 = [v24 objectForKeyedSubscript:@"WindowType"];
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          if ([v27 isEqualToString:@"DiscountedRate"])
                          {
                            v28 = 1;
                          }

                          else if ([v27 isEqualToString:@"OffPeak"])
                          {
                            v28 = 2;
                          }

                          else if ([v27 isEqualToString:@"DiscountedRateAndOffPeak"])
                          {
                            v28 = 3;
                          }

                          else
                          {
                            v28 = 0;
                          }
                        }

                        else
                        {
                          v28 = 0;
                        }

                        LODWORD(v45[0]) = v28;
                        v29 = v19;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          if ([v29 isEqualToString:@"Sunday"])
                          {
                            v30 = 0;
                          }

                          else if ([v29 isEqualToString:@"Monday"])
                          {
                            v30 = 1;
                          }

                          else if ([v29 isEqualToString:@"Tuesday"])
                          {
                            v30 = 2;
                          }

                          else if ([v29 isEqualToString:@"Wednesday"])
                          {
                            v30 = 3;
                          }

                          else if ([v29 isEqualToString:@"Thursday"])
                          {
                            v30 = 4;
                          }

                          else if ([v29 isEqualToString:@"Friday"])
                          {
                            v30 = 5;
                          }

                          else if ([v29 isEqualToString:@"Saturday"])
                          {
                            v30 = 6;
                          }

                          else
                          {
                            v30 = 7;
                          }
                        }

                        else
                        {
                          v30 = 7;
                        }

                        DWORD2(v45[1]) = v30;
                        v31 = *(&v54 + 1);
                        if (*(&v54 + 1) >= v55)
                        {
                          v32 = sub_1011EA818(&v54, v45);
                        }

                        else
                        {
                          **(&v54 + 1) = v45[0];
                          *(v31 + 8) = 0u;
                          *(v31 + 8) = *(&v45[0] + 1);
                          *(v31 + 16) = *&v45[1];
                          *(v45 + 8) = 0u;
                          *(v31 + 24) = v30;
                          v32 = v31 + 32;
                        }

                        *(&v54 + 1) = v32;
                      }

                      sub_1003EC530(&v45[1]);
                      sub_1003EC530(v45 + 1);
                    }

                    v23 = v23 + 1;
                  }

                  while (v21 != v23);
                  v33 = [v20 countByEnumeratingWithState:&v46 objects:v58 count:16];
                  v21 = v33;
                }

                while (v33);
              }
            }
          }

          v40 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
        }

        while (v40);
      }

      *a3 = v54;
      v54 = 0uLL;
      v34 = *(&v55 + 1);
      *(a3 + 16) = v55;
      *(a3 + 24) = v34;
      v55 = 0uLL;
      v18 = v36;
    }

    else
    {
      *a3 = 0uLL;
      *(a3 + 16) = 0uLL;
    }

    sub_1003EC530(&v55 + 1);
    *&v45[0] = &v54;
    sub_101028494(v45);

    sub_10001021C(&v56);
    v13 = v36;
    if (v18)
    {
      goto LABEL_75;
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    sub_10001021C(&v56);
    if (v13)
    {
      goto LABEL_75;
    }
  }
}

void sub_1011EA0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011EA200(void *a1, Registry **a2, void *a3)
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = objc_opt_new();
    [v6 setFormatOptions:1632];
    v7 = [v6 dateFromString:v5];
    v8 = v7;
    if (v7)
    {
      *a1 = v7;
      CFRetain(v7);
LABEL_18:

      goto LABEL_19;
    }

    ServiceMap = Registry::getServiceMap(*a2);
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
    v19 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v19);
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
          goto LABEL_12;
        }

        goto LABEL_16;
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
LABEL_12:
      *a1 = 0;
      if (v18)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v6 setFormatOptions:544];
    (*(*v17 + 104))(&v19, v17);
    [v6 setTimeZone:v19];
    sub_1006680EC(&v19);
    sub_100431B6C(a1, [v6 dateFromString:v5]);
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_17:
    sub_100004A34(v16);
    goto LABEL_18;
  }

  *a1 = 0;
LABEL_19:
}

void sub_1011EA3E8(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1011EA444(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 24))
  {
    return 1;
  }

  theDate = 0;
  getCurrentDate();
  AbsoluteTime = CFDateGetAbsoluteTime(0);
  v4 = AbsoluteTime < CFDateGetAbsoluteTime(*(a2 + 24));
  sub_1003EC530(&theDate);
  return v4;
}

void sub_1011EA4B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

uint64_t (**sub_1011EA4CC(uint64_t a1, int a2, const void **a3, unsigned int a4))(void, void, void, void, void)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v6 = (a1 + 24);
  *a1 = 0u;
  *a1 = a2;
  sub_100431ADC((a1 + 8), a3);
  *(a1 + 16) = 1;
  v9[1] = a4;
  v9[0] = sub_1011EADEC;
  if (v9 != v6)
  {
    v7 = *v6;
    if (*v6)
    {
      memset(v10, 0, sizeof(v10));
      v7(2, v6, v10, 0, 0);
      v9[0](2, v9, v6, 0, 0);
      (*&v10[0])(2, v10, v9, 0, 0);
      sub_100176638(v10);
    }

    else
    {
      *(a1 + 32) = a4;
      *(a1 + 24) = sub_1011EADEC;
      v9[0] = 0;
    }
  }

  return sub_100176638(v9);
}

void sub_1011EA604(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1011EA610(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  v3 = 0uLL;
  v12 = 0u;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      if ((*v4 & 0xFFFFFFFD) == 1)
      {
        sub_1011EA4CC(&v14, *(v4 + 24), (v4 + 8), 0);
        v6 = *(&v12 + 1);
        if (*(&v12 + 1) >= v13)
        {
          v7 = sub_1011EAB80(&v12, &v14);
        }

        else
        {
          **(&v12 + 1) = v14;
          *(v6 + 8) = 0;
          *(v6 + 8) = v15;
          v15 = 0;
          *(v6 + 16) = v16;
          sub_10027F324((v6 + 24), v17);
          v7 = v6 + 56;
        }

        *(&v12 + 1) = v7;
        sub_100176638(v17);
        sub_1003EC530(&v15);
        sub_1011EA4CC(&v14, *(v4 + 24), (v4 + 16), 1u);
        v8 = *(&v12 + 1);
        if (*(&v12 + 1) >= v13)
        {
          v9 = sub_1011EAB80(&v12, &v14);
        }

        else
        {
          **(&v12 + 1) = v14;
          *(v8 + 8) = 0;
          *(v8 + 8) = v15;
          v15 = 0;
          *(v8 + 16) = v16;
          sub_10027F324((v8 + 24), v17);
          v9 = v8 + 56;
        }

        *(&v12 + 1) = v9;
        sub_100176638(v17);
        sub_1003EC530(&v15);
      }

      v4 += 32;
    }

    while (v4 != v5);
    v3 = v12;
    v10 = v13;
  }

  v12 = 0uLL;
  v13 = 0;
  *a2 = v3;
  *(a2 + 16) = v10;
  memset(v11, 0, sizeof(v11));
  v14 = v11;
  sub_100DABB8C(&v14);
  v14 = &v12;
  sub_100DABB8C(&v14);
}

void sub_1011EA7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_100176638((v17 + 24));
  sub_1003EC530((v17 + 8));
  a17 = &a13;
  sub_100DABB8C(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_1011EA818(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_1011EA948(a1, v7);
  }

  v8 = 32 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = 0;
  *(v8 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(v8 + 24) = *(a2 + 24);
  *&v17 = 32 * v2 + 32;
  v9 = a1[1];
  v10 = 32 * v2 + *a1 - v9;
  sub_1011EA990(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1011EAAEC(&v15);
  return v14;
}

void sub_1011EA934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1011EAAEC(va);
  _Unwind_Resume(a1);
}

void sub_1011EA948(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1011EA990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = 0;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v11 = a4;
    LOBYTE(v9) = 1;
    do
    {
      sub_1003EC530((v5 + 16));
      sub_1003EC530((v5 + 8));
      v5 += 32;
    }

    while (v5 != a3);
  }

  return sub_1011EAA5C(v8);
}

uint64_t sub_1011EAA5C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1011EAA94(a1);
  }

  return a1;
}

const void **sub_1011EAA94(const void **result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  for (i = *v2; v3 != i; v3 -= 32)
  {
    sub_1003EC530((v3 - 16));
    result = sub_1003EC530((v3 - 24));
  }

  return result;
}

uint64_t sub_1011EAAEC(uint64_t a1)
{
  sub_1011EAB24(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1011EAB24(const void **result, const void **a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v4[2] = v2 - 4;
      sub_1003EC530(v2 - 2);
      result = sub_1003EC530(v2 - 3);
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1011EAB80(uint64_t *a1, uint64_t a2)
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
    v5 = 0x492492492492492;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    if (v5 <= 0x492492492492492)
    {
      operator new();
    }

    sub_100013D10();
  }

  v6 = 56 * v2;
  v7 = 0;
  v20 = 0;
  *v6 = *a2;
  *(v6 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(v6 + 16) = *(a2 + 16);
  sub_10027F324((56 * v2 + 24), (a2 + 24));
  v8 = *a1;
  v9 = a1[1];
  v10 = 56 * v2 - (v9 - *a1);
  v11 = 56 * v2 + 56;
  v19 = v11;
  if (v9 != v8)
  {
    v12 = (56 * v2 - 8 * ((v9 - v8) >> 3) + 24);
    v13 = (v8 + 24);
    v14 = v10;
    do
    {
      *(v12 - 6) = *(v13 - 6);
      *(v14 + 8) = 0;
      *(v14 + 8) = *(v13 - 2);
      *(v13 - 2) = 0;
      *(v14 + 16) = *(v13 - 8);
      v14 += 56;
      v12 = sub_10027F324(v12, v13) + 7;
      v15 = v13 + 4;
      v13 += 7;
    }

    while (v15 != v9);
    do
    {
      sub_100176638((v8 + 24));
      sub_1003EC530((v8 + 8));
      v8 += 56;
    }

    while (v8 != v9);
    v8 = *a1;
    v11 = v19;
    v7 = v20;
  }

  *a1 = v10;
  a1[1] = v11;
  v16 = a1[2];
  a1[2] = v7;
  v19 = v8;
  v20 = v16;
  v18[0] = v8;
  v18[1] = v8;
  sub_1011EAD88(v18);
  return v11;
}

uint64_t sub_1011EAD88(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_100176638((i - 32));
    sub_1003EC530((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

_UNKNOWN **sub_1011EADEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_1011EADEC;
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
    *a3 = sub_1011EADEC;
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
    v6 = a5 == &unk_101922C3C;
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

void sub_1011EAEB4(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1011EAF48(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1011EAFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100333804(va);
  _Unwind_Resume(a1);
}

void sub_1011EAFE0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011EB018(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_1011EB074(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1011EB138(void *a1, uint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F1A570;
  sub_1011EB214(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_1011EB1B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1A570;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1011EB214(void *a1, uint64_t *a2, dispatch_object_t *a3, uint64_t *a4)
{
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v9 = *a4;
  v10 = [NetworkReachability alloc];
  v13 = v7;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *a1 = [(NetworkReachability *)v10 initWithRegistry:&v13 andQueue:&object andLogger:v9];
  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  return a1;
}

void sub_1011EB2F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
    if (!v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  dispatch_release(v13);
  if (!v12)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  sub_100004A34(v12);
  goto LABEL_7;
}

void sub_1011EB34C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1011EB6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, dispatch_object_t a16, void *a17, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_1011EB81C(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_1002F31C8(a1);
}

void sub_1011EB85C(uint64_t a1)
{
  *a1 = off_101F1A5C0;
  v4 = (a1 + 352);
  sub_100112048(&v4);
  v4 = (a1 + 328);
  sub_1000B2AF8(&v4);
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 160));
  sub_100009970(a1 + 136, *(a1 + 144));
  sub_1002F31C8(a1 + 104);
  sub_1010DD940(*(a1 + 88));
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  DataOnlyPlanManagerInterface::~DataOnlyPlanManagerInterface(a1);
}

void sub_1011EB918(uint64_t a1)
{
  sub_1011EB85C(a1);

  operator delete();
}

void sub_1011EB950(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1011EBA50(uint64_t a1, uint64_t a2)
{
  v5[0] = a1;
  v5[1] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1011ED1B8;
  v6[3] = &unk_101F1A960;
  v6[4] = a1 + 8;
  v6[5] = v5;
  v7 = v6;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10006A314;
    v11 = &unk_101F1A9A0;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v14 = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_1000593B8;
    v11 = &unk_101F1A980;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }

  return v14 & 1;
}

void sub_1011EBB80(uint64_t a1)
{
  v22 = 0;
  v23 = 0;
  v21 = &v22;
  v2 = *(a1 + 80);
  v3 = (a1 + 88);
  if (v2 != (a1 + 88))
  {
    do
    {
      if (v2[7] & 0x1E) != 0 || (v2[7])
      {
        sub_100005BA0(&v21, v2 + 4);
        v9 = v2[1];
        if (v9)
        {
          do
          {
            v6 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v6 = v2[2];
            v7 = *v6 == v2;
            v2 = v6;
          }

          while (!v7);
        }
      }

      else
      {
        v4 = v2[1];
        v5 = v2;
        if (v4)
        {
          do
          {
            v6 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v6 = v5[2];
            v7 = *v6 == v5;
            v5 = v6;
          }

          while (!v7);
        }

        if (*(a1 + 80) == v2)
        {
          *(a1 + 80) = v6;
        }

        v8 = *(a1 + 88);
        --*(a1 + 96);
        sub_100018288(v8, v2);
        if (*(v2 + 55) < 0)
        {
          operator delete(v2[4]);
        }

        operator delete(v2);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v23;
    sub_100074B94(v21, &v22, ",", 1, &__p);
    v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 134218242;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I publishing %zu data only plans - [%s]", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*(a1 + 152) == v23)
  {
    v13 = *(a1 + 136);
    if (v13 == (a1 + 144))
    {
      goto LABEL_46;
    }

    v14 = v21;
    while (sub_100022D3C(&__p, v13 + 4, &v14[1].__words[1]))
    {
      v15 = v13[1];
      v16 = v13;
      if (v15)
      {
        do
        {
          v13 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v13 = v16[2];
          v7 = *v13 == v16;
          v16 = v13;
        }

        while (!v7);
      }

      v17 = v14->__words[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = v17->__words[0];
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v14->__words[2];
          v7 = *v18 == v14;
          v14 = v18;
        }

        while (!v7);
      }

      v14 = v18;
      if (v13 == (a1 + 144))
      {
        goto LABEL_46;
      }
    }
  }

  if ((a1 + 136) != &v21)
  {
    sub_1001730B8((a1 + 136), v21, &v22);
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    (*(*v19 + 48))(v19, a1 + 136);
  }

LABEL_46:
  sub_100009970(&v21, v22);
}

void sub_1011EBE84(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = (a1 + 88);
  if (v1 != (a1 + 88))
  {
    do
    {
      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v1 + 4;
        if (*(v1 + 55) < 0)
        {
          v5 = *v5;
        }

        v6 = *(v1 + 56);
        *buf = 136316418;
        v11 = v5;
        v12 = 1024;
        v13 = v6 & 1;
        v14 = 1024;
        v15 = (v6 >> 1) & 1;
        v16 = 1024;
        v17 = (v6 >> 2) & 1;
        v18 = 1024;
        v19 = (v6 >> 3) & 1;
        v20 = 1024;
        v21 = (v6 >> 4) & 1;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s ent:%d,meta:%d,cb:%d,off:%d,bs:%d", buf, 0x2Au);
      }

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
}

void sub_1011EBFE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011EC03C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011EC07C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void sub_1011EC0A8(ServiceManager::Service *this)
{
  *this = off_101F1A6F0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1011EC104(ServiceManager::Service *this)
{
  *this = off_101F1A6F0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1011EC184@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1011EC1C4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1011EB950(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1011EB950(v4, 0);
}

uint64_t sub_1011EC268(uint64_t result, int a2, ServiceStage *this)
{
  if (!a2)
  {
    v3 = *(result + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v4 = *(v3 + 16);
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_1011EC384(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 48));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7[0] = off_101F1A770;
  v7[1] = v1 + 64;
  v7[3] = v7;
  sub_100D6355C(v7, (v1 + 104));
  sub_1002F31C8(v7);
  v2 = *(v1 + 128);
  if (v2)
  {
    (*(*v2 + 48))(v2, v1 + 136);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1011EC604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1000062D4(v23 - 72);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011EC718(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F1A770;
  a2[1] = v2;
  return result;
}

void sub_1011EC744(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  sub_100075038(a2, &v5);
  sub_10000501C(&__p, "/cc/props/data_only_plans");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1011EC7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_1011EC82C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1011EC878(void *a1)
{
  *a1 = off_101F1A7F0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1011EC8C4(void *a1)
{
  *a1 = off_101F1A7F0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1011EC9A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F1A7F0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011EC9E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1011EC9F4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1011ECA34(void *a1, uint64_t a2, void **a3, uint64_t *a4)
{
  v5 = a1[3];
  if (!v5)
  {
    return;
  }

  v8 = a1[1];
  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (!a1[2])
  {
    goto LABEL_6;
  }

  v11 = *a4;
  if (!*a4 || *(v11 + 49))
  {
    goto LABEL_6;
  }

  v12 = *(a3 + 24);
  if (v12 == 4 || v12 == 1)
  {
    v13 = *(a3 + 23);
    if (v13 < 0)
    {
      v13 = a3[1];
    }

    if (v13)
    {
      v14 = *(v11 + 52);
      v36 = 0;
      ServiceMap = Registry::getServiceMap(*(v8 + 48));
      v16 = ServiceMap;
      if (v17 < 0)
      {
        v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
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
      __p[0] = v17;
      v21 = sub_100009510(&v16[1].__m_.__sig, __p);
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
          v24 = 0;
LABEL_23:
          v37[0] = @"CellularDataPlanSettings";
          v37[1] = @"DataOnlySubscription";
          memset(__p, 0, sizeof(__p));
          sub_10005B328(__p, v37, __p, 2uLL);
          (*(*v23 + 88))(&v35, v23, v14, 1, __p, kCFBooleanFalse, 0);
          sub_10002FE1C(&v36, &v35);
          sub_10000A1EC(&v35);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          LOBYTE(__p[0]) = 0;
          ctu::cf::assign(__p, v36, v25);
          v26 = LOBYTE(__p[0]);
          __p[0] = a3;
          if (((((*(sub_1011ED9DC(v8 + 80, a3) + 56) & 4) == 0) ^ v26) & 1) == 0)
          {
            v27 = *(v8 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *a3;
              v29 = "data+voice";
              if (*(a3 + 23) >= 0)
              {
                v28 = a3;
              }

              if (v26)
              {
                v29 = "data only";
              }

              LODWORD(__p[0]) = 136315394;
              *(__p + 4) = v28;
              WORD2(__p[1]) = 2080;
              *(&__p[1] + 6) = v29;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s is %s subscription", __p, 0x16u);
            }

            __p[0] = a3;
            v30 = sub_1011ED9DC(v8 + 80, a3);
            if (v26)
            {
              v31 = 4;
            }

            else
            {
              v31 = 0;
            }

            *(v30 + 56) = *(v30 + 56) & 0xFB | v31;
            sub_1011EBB80(v8);
          }

          sub_100045C8C(&v36);
          v11 = *a4;
          goto LABEL_39;
        }
      }

      else
      {
        v23 = 0;
      }

      std::mutex::unlock(v16);
      v22 = 0;
      v24 = 1;
      goto LABEL_23;
    }
  }

LABEL_39:
  if (*(v11 + 96) != 1)
  {
    goto LABEL_54;
  }

  __p[0] = a3;
  if ((*(sub_1011ED9DC(v8 + 80, a3) + 56) & 1) == 0)
  {
    __p[0] = a3;
    v33 = sub_1011ED9DC(v8 + 80, a3);
    v34 = *(v33 + 56) | 1;
    goto LABEL_51;
  }

  if ((*(*a4 + 96) & 1) == 0)
  {
LABEL_54:
    for (i = *(v8 + 88); i; i = *i)
    {
      if ((sub_1000068BC(a3, i + 4) & 0x80) == 0)
      {
        if ((sub_1000068BC(i + 4, a3) & 0x80) == 0)
        {
          __p[0] = a3;
          if (*(sub_1011ED9DC(v8 + 80, a3) + 56))
          {
            __p[0] = a3;
            v33 = sub_1011ED9DC(v8 + 80, a3);
            v34 = *(v33 + 56) & 0xFE;
LABEL_51:
            *(v33 + 56) = v34;
            sub_1011EBB80(v8);
          }

          break;
        }

        ++i;
      }
    }
  }

LABEL_6:

  sub_100004A34(v10);
}

void sub_1011ECE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  sub_10000A1EC(&a9);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1011ECEE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1011ECFC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1011ED088(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F1A8F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1011ED0C0(void *a1)
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

uint64_t sub_1011ED108(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1011ED154(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_1011ED19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1011ED1B8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  cf = 0;
  memset(&v73, 0, sizeof(v73));
  memset(v72, 0, sizeof(v72));
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  *v64 = 0u;
  v65 = 0u;
  *v63 = 0u;
  v4 = *(v3 + 352);
  v5 = *(v3 + 360);
  if (v4 != v5)
  {
    do
    {
      if (*(v4 + 80) == 1)
      {
        v6 = *(v4 + 56);
        v7 = *(v4 + 64);
        if (v6 != v7)
        {
          v8 = v6 + 8;
          do
          {
            v9 = v8[-7].__r_.__value_.__s.__data_[15];
            if (v9 >= 0)
            {
              v10 = v8[-7].__r_.__value_.__s.__data_[15];
            }

            else
            {
              v10 = v8[-7].__r_.__value_.__r.__words[0];
            }

            v11 = *(v2 + 23);
            v12 = v11;
            if ((v11 & 0x80u) != 0)
            {
              v11 = *(v2 + 1);
            }

            if (v10 == v11)
            {
              v13 = v9 >= 0 ? &v8[-8].__r_.__value_.__r.__words[2] : v8[-8].__r_.__value_.__r.__words[2];
              v14 = v12 >= 0 ? v2 : *v2;
              if (!memcmp(v13, v14, v10))
              {
                *v63 = *&v8[-8].__r_.__value_.__l.__data_;
                std::string::operator=(v64, (v8 - 176));
                std::string::operator=((&v65 + 8), (v8 - 152));
                std::string::operator=(&v67, (v8 - 128));
                v15 = v8[-5].__r_.__value_.__r.__words[2];
                BYTE12(v68) = v8[-5].__r_.__value_.__s.__data_[20];
                DWORD2(v68) = v15;
                std::string::operator=(&v69, v8 - 4);
                std::string::operator=((&v70 + 8), v8 - 3);
                std::string::operator=(v72, v8 - 2);
                std::string::operator=(&v72[1], v8 - 1);
                std::string::operator=(&v73, v8);
              }
            }

            v16 = v8 + 1;
            v8 += 9;
          }

          while (v16 != v7);
        }
      }

      v4 += 88;
    }

    while (v4 != v5);
    v17 = BYTE7(v65);
    if (SBYTE7(v65) < 0)
    {
      v17 = v64[1];
    }

    if (v17)
    {
      VinylProfileDetails::createCarrierBundleCriteria(&cf, v63);
      goto LABEL_55;
    }
  }

  cf = 0;
  v19 = *(v3 + 328);
  v18 = *(v3 + 336);
  if (*(v2 + 23) < 0)
  {
    sub_100005F2C(__p, *v2, *(v2 + 1));
  }

  else
  {
    v20 = *v2;
    v61 = *(v2 + 2);
    *__p = v20;
  }

  v21 = HIBYTE(v61);
  if (v19 == v18)
  {
    v18 = v19;
LABEL_46:
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v61 >= 0)
    {
      v22 = HIBYTE(v61);
    }

    else
    {
      v22 = __p[1];
    }

    if (v61 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    v24 = v19 + 72;
    while (1)
    {
      v25 = v24[23];
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v24 + 1);
      }

      if (v25 == v22)
      {
        v27 = v26 >= 0 ? v24 : *v24;
        if (!memcmp(v27, v23, v22))
        {
          break;
        }
      }

      v28 = (v24 + 96);
      v24 += 168;
      if (v28 == v18)
      {
        goto LABEL_46;
      }
    }

    v18 = (v24 - 72);
    if ((v21 & 0x80) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
LABEL_48:
  if (v18 == *(v3 + 336))
  {
    v29 = *(v3 + 40);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 23) >= 0)
      {
        v30 = v2;
      }

      else
      {
        v30 = *v2;
      }

      *buf = 136315138;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Failed to find iccid (%s)", buf, 0xCu);
    }
  }

  else
  {
    BasicSimInfo::createBundleCriteria(&v59, v18);
    *buf = 0;
    cf = v59;
    v59 = 0;
    sub_10001021C(buf);
    sub_10001021C(&v59);
  }

LABEL_55:
  sub_100E3A5D4(v63);
  if (cf)
  {
    v72[0].__r_.__value_.__r.__words[0] = 0;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    *v64 = 0u;
    v65 = 0u;
    *v63 = 0u;
    ServiceMap = Registry::getServiceMap(*(v3 + 48));
    v32 = ServiceMap;
    if (v33 < 0)
    {
      v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
      v35 = 5381;
      do
      {
        v33 = v35;
        v36 = *v34++;
        v35 = (33 * v35) ^ v36;
      }

      while (v36);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, __p);
    if (v37)
    {
      v39 = v37[3];
      v38 = v37[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
        v40 = 0;
        goto LABEL_67;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
LABEL_67:
    v59 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v39 + 32))(v63, v39, &v59);
    sub_10001021C(&v59);
    if ((v40 & 1) == 0)
    {
      sub_100004A34(v38);
    }

    __p[0] = 0;
    __p[1] = 0;
    v61 = 0;
    if (v72[0].__r_.__value_.__s.__data_[7] < 0)
    {
      sub_100005F2C(__p, v71, *(&v71 + 1));
    }

    else
    {
      *__p = v71;
      v61 = v72[0].__r_.__value_.__r.__words[0];
    }

    v43 = HIBYTE(v61);
    if (v61 < 0)
    {
      v43 = __p[1];
    }

    if (!v43)
    {
      v51 = *(v3 + 40);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "missing bundle path", buf, 2u);
      }

      LOBYTE(v42) = 0;
      goto LABEL_94;
    }

    theDict = 0;
    Registry::getFileSystemInterface(buf, *(v3 + 48));
    (*(**buf + 152))(&theDict);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"CellularDataPlanSettings");
      v45 = Value;
      if (Value)
      {
        v46 = CFGetTypeID(Value);
        if (v46 == CFDictionaryGetTypeID())
        {
          if (CFDictionaryContainsKey(v45, @"DataOnlySubscription"))
          {
            v47 = CFDictionaryGetValue(v45, @"DataOnlySubscription");
            v48 = v47;
            buf[0] = 0;
            if (v47 && (v49 = CFGetTypeID(v47), v49 == CFBooleanGetTypeID()))
            {
              ctu::cf::assign(buf, v48, v50);
              v42 = buf[0];
            }

            else
            {
              v42 = 0;
            }

            v55 = *(v3 + 40);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v2 + 23) >= 0)
              {
                v56 = v2;
              }

              else
              {
                v56 = *v2;
              }

              *buf = 136315394;
              *&buf[4] = v56;
              *&buf[12] = 1024;
              *&buf[14] = v42;
              _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I cb reports iccid [%s] is data-only [%d]", buf, 0x12u);
            }

            goto LABEL_93;
          }

LABEL_92:
          LOBYTE(v42) = 0;
LABEL_93:
          sub_10001021C(&theDict);
LABEL_94:
          if (SHIBYTE(v61) < 0)
          {
            operator delete(__p[0]);
          }

          if (v72[0].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(v71);
          }

          if (SBYTE7(v70) < 0)
          {
            operator delete(v69);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (SBYTE7(v67) < 0)
          {
            operator delete(v66);
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(v64[1]);
          }

          if (SHIBYTE(v64[0]) < 0)
          {
            operator delete(*v63);
          }

          goto LABEL_108;
        }
      }

      v52 = *(v3 + 40);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *buf = 0;
      v53 = "carrier dict does not have cellularDataPlanSettings key";
    }

    else
    {
      v52 = *(v3 + 40);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *buf = 0;
      v53 = "missing carrier dict";
    }

    _os_log_error_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v53, buf, 2u);
    goto LABEL_92;
  }

  v41 = *(v3 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *v63 = 0;
    _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "missing matching criteria", v63, 2u);
  }

  LOBYTE(v42) = 0;
LABEL_108:
  sub_10001021C(&cf);
  return v42 & 1;
}

void sub_1011ED920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_10001021C(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1002F27AC(&a26);
  sub_10001021C(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1011ED9DC(uint64_t a1, void **a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if ((sub_1000068BC(a2, (v2 + 32)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if ((sub_1000068BC(v5 + 4, a2) & 0x80) == 0)
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  if (!*v3)
  {
LABEL_7:
    operator new();
  }

  return *v3;
}

void sub_1011EDB90(MobileActivationFactoryInterface *a1)
{
  MobileActivationFactoryInterface::~MobileActivationFactoryInterface(a1);

  operator delete();
}

void sub_1011EDBE8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1AA18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011EDC64(void **a1@<X8>)
{
  memset(__len, 0, sizeof(__len));
  v6 = 0;
  v5 = 0;
  sub_100D10F50(-2, &__len[1], __len, &v6, &v5);
  if (v2)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    if (v6)
    {
      sub_100D14F08(v6);
    }

    v3 = *&__len[1];
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    if (v3)
    {
      sub_1000CFAD0(a1, __len[0]);
      v4 = *&__len[1];
      if (__len[0])
      {
        memmove(*a1, *&__len[1], __len[0]);
        v4 = *&__len[1];
      }

      sub_100D14F08(v4);
    }
  }
}

void sub_1011EDD0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011EDD48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F1AA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011EDDC8(MachineIdProviderInterface *a1)
{
  MachineIdProviderInterface::~MachineIdProviderInterface(a1);

  operator delete();
}

void sub_1011EE0B0(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EE390(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EE694(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EE974(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EEBC8(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1011EEE68(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EF128(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EF3A8(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EF650(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EF910(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011EFBAC(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1011EFE44(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1011F0100(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011F03C4(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1011F0448(uint64_t a1)
{

  operator delete();
}

id sub_1011F04FC(uint64_t a1, void *a2)
{
  *a2 = off_101F1AB10;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1011F054C(id *a1)
{

  operator delete(a1);
}

void sub_1011F0588(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = *(*(a1 + 8) + 16);

    v3();
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_1011F0668(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F1AB80))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1011F06E0(uint64_t a1)
{

  operator delete();
}

id sub_1011F0794(uint64_t a1, void *a2)
{
  *a2 = off_101F1ABA0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1011F07E4(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1011F0838(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F1AC00))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_1011F0884@<X0>(uint64_t a1@<X0>, int a2@<W1>, __CFDictionary **a3@<X8>)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a3 = Mutable;
  v7 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v58 = v7;
  v8 = *(a1 + 16);
  *&__dst = 0;
  *&valuePtr = v8;
  v9 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v9)
  {
    v10 = __dst;
    *&__dst = v9;
    *&valuePtr = v10;
    sub_100029A48(&valuePtr);
  }

  v65 = __dst;
  *&__dst = 0;
  sub_100029A48(&__dst);
  CFDictionarySetValue(v7, @"deltaRxbytes", v65);
  sub_100029A48(&v65);
  v11 = *(a1 + 24);
  *&__dst = 0;
  *&valuePtr = v11;
  v12 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v12)
  {
    v13 = __dst;
    *&__dst = v12;
    *&valuePtr = v13;
    sub_100029A48(&valuePtr);
  }

  v65 = __dst;
  *&__dst = 0;
  sub_100029A48(&__dst);
  CFDictionarySetValue(v58, @"deltaTxbytes", v65);
  sub_100029A48(&v65);
  v14 = *(a1 + 32);
  *&__dst = 0;
  LODWORD(valuePtr) = v14;
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v15)
  {
    v16 = __dst;
    *&__dst = v15;
    *&valuePtr = v16;
    sub_100029A48(&valuePtr);
  }

  v65 = __dst;
  *&__dst = 0;
  sub_100029A48(&__dst);
  CFDictionarySetValue(v58, @"epid", v65);
  sub_100029A48(&v65);
  v17 = *(a1 + 36);
  *&__dst = 0;
  LODWORD(valuePtr) = v17;
  v18 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  if (v18)
  {
    v19 = __dst;
    *&__dst = v18;
    *&valuePtr = v19;
    sub_100029A48(&valuePtr);
  }

  v65 = __dst;
  *&__dst = 0;
  sub_100029A48(&__dst);
  CFDictionarySetValue(v58, @"pid", v65);
  sub_100029A48(&v65);
  if (*(a1 + 40))
  {
    v20 = kCFBooleanTrue;
  }

  else
  {
    v20 = kCFBooleanFalse;
  }

  *&__dst = v20;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  v65 = __dst;
  *&__dst = 0;
  sub_100045C8C(&__dst);
  CFDictionarySetValue(v58, @"isTcp", v65);
  sub_100045C8C(&v65);
  if (*(a1 + 41))
  {
    v21 = kCFBooleanTrue;
  }

  else
  {
    v21 = kCFBooleanFalse;
  }

  *&__dst = v21;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  v65 = __dst;
  *&__dst = 0;
  sub_100045C8C(&__dst);
  CFDictionarySetValue(v58, @"isUdp", v65);
  sub_100045C8C(&v65);
  if (*(a1 + 42))
  {
    v22 = kCFBooleanTrue;
  }

  else
  {
    v22 = kCFBooleanFalse;
  }

  *&__dst = v22;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  v65 = __dst;
  *&__dst = 0;
  sub_100045C8C(&__dst);
  CFDictionarySetValue(v58, @"isWifiAssist", v65);
  sub_100045C8C(&v65);
  v23 = v58;
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v56 = *(a1 + 64);
  }

  if (SHIBYTE(v56) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v61 = v56;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v24 = v59;
    v59 = v64;
    v65 = v24;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v23, @"procName", value);
  sub_100005978(&value);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
  }

  v25 = v58;
  if (*(a1 + 95) < 0)
  {
    sub_100005F2C(v53, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *v53 = *(a1 + 72);
    v54 = *(a1 + 88);
  }

  if (SHIBYTE(v54) < 0)
  {
    sub_100005F2C(&__dst, v53[0], v53[1]);
  }

  else
  {
    __dst = *v53;
    v61 = v54;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v26 = v59;
    v59 = v64;
    v65 = v26;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v25, @"bundleID", value);
  sub_100005978(&value);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(v53[0]);
  }

  v27 = v58;
  if (*(a1 + 96))
  {
    v28 = kCFBooleanTrue;
  }

  else
  {
    v28 = kCFBooleanFalse;
  }

  *&__dst = v28;
  *&valuePtr = 0;
  sub_100045C8C(&valuePtr);
  v65 = __dst;
  *&__dst = 0;
  sub_100045C8C(&__dst);
  CFDictionarySetValue(v27, @"useStaticAttributionMap", v65);
  sub_100045C8C(&v65);
  v29 = v58;
  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(v51, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *v51 = *(a1 + 104);
    v52 = *(a1 + 120);
  }

  if (SHIBYTE(v52) < 0)
  {
    sub_100005F2C(&__dst, v51[0], v51[1]);
  }

  else
  {
    __dst = *v51;
    v61 = v52;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v30 = v59;
    v59 = v64;
    v65 = v30;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v29, @"uuid", value);
  sub_100005978(&value);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[0]);
  }

  v31 = v58;
  if (*(a1 + 151) < 0)
  {
    sub_100005F2C(v49, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    *v49 = *(a1 + 128);
    v50 = *(a1 + 144);
  }

  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(&__dst, v49[0], v49[1]);
  }

  else
  {
    __dst = *v49;
    v61 = v50;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v32 = v59;
    v59 = v64;
    v65 = v32;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v31, @"euuid", value);
  sub_100005978(&value);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  v33 = v58;
  if (*(a1 + 175) < 0)
  {
    sub_100005F2C(v47, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    *v47 = *(a1 + 152);
    v48 = *(a1 + 168);
  }

  if (SHIBYTE(v48) < 0)
  {
    sub_100005F2C(&__dst, v47[0], v47[1]);
  }

  else
  {
    __dst = *v47;
    v61 = v48;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v34 = v59;
    v59 = v64;
    v65 = v34;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v33, @"localAddress", value);
  sub_100005978(&value);
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  v35 = v58;
  if (*(a1 + 199) < 0)
  {
    sub_100005F2C(v45, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    *v45 = *(a1 + 176);
    v46 = *(a1 + 192);
  }

  if (SHIBYTE(v46) < 0)
  {
    sub_100005F2C(&__dst, v45[0], v45[1]);
  }

  else
  {
    __dst = *v45;
    v61 = v46;
  }

  v59 = 0;
  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&valuePtr, __dst, *(&__dst + 1));
  }

  else
  {
    valuePtr = __dst;
    v63 = v61;
  }

  v64 = 0;
  if (ctu::cf::convert_copy())
  {
    v36 = v59;
    v59 = v64;
    v65 = v36;
    sub_100005978(&v65);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(valuePtr);
  }

  v37 = v59;
  value = v59;
  v59 = 0;
  sub_100005978(&v59);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v35, @"remoteAddress", v37);
  sub_100005978(&value);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }

  v38 = v58;
  if (*(a1 + 200))
  {
    v39 = kCFBooleanTrue;
  }

  else
  {
    v39 = kCFBooleanFalse;
  }

  *&valuePtr = 0;
  v40 = sub_100045C8C(&valuePtr);
  *&__dst = v39;
  *&valuePtr = 0;
  sub_100045C8C(v40);
  CFDictionarySetValue(v38, @"shouldIgnore", v39);
  sub_100045C8C(&__dst);
  CFDictionarySetValue(v58, @"rawRemoteAddr", *(a1 + 208));
  v41 = v58;
  if (a2)
  {
    v42 = kCFBooleanTrue;
  }

  else
  {
    v42 = kCFBooleanFalse;
  }

  *&valuePtr = 0;
  v43 = sub_100045C8C(&valuePtr);
  *&__dst = v42;
  *&valuePtr = 0;
  sub_100045C8C(v43);
  CFDictionarySetValue(v41, @"socketClosed", v42);
  sub_100045C8C(&__dst);
  CFDictionarySetValue(Mutable, @"msg-name", @"du-on-peer");
  CFDictionarySetValue(Mutable, @"msg-body", v58);
  return sub_1000296E0(&v58);
}

void sub_1011F1378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  sub_100005978((v51 - 168));
  if (*(v51 - 137) < 0)
  {
    operator delete(*(v51 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v51 - 176));
  sub_1000296E0(v50);
  _Unwind_Resume(a1);
}

void stewie::TargetInstantAtLocationCache::create(void *a1@<X1>, void *a2@<X2>, os_log_t *a3@<X3>, void *a4@<X8>)
{
  if (!*a1)
  {
    v5 = *a3;
    if (!os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v9 = 0;
    v6 = "targets must be provided";
    v7 = &v9;
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    goto LABEL_7;
  }

  if (*a2)
  {
    operator new();
  }

  v5 = *a3;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    v8 = 0;
    v6 = "targetFactory must be provided";
    v7 = &v8;
    goto LABEL_9;
  }

LABEL_7:
  *a4 = 0;
  a4[1] = 0;
}

void sub_1011F1874(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v3)
  {
    sub_100004A34(v3);
    if (!v1)
    {
      goto LABEL_3;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_100004A34(v1);
LABEL_3:
  _Unwind_Resume(a1);
}

uint64_t sub_1011F19A8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 64);
  *a2 = *(result + 56);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1011F19C4(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v7 = (a1 + 96);
  v6 = *(a1 + 96);
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = a1 + 96;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != v7 && *(v8 + 32) <= a2)
  {
    v16 = *(v8 + 40);
    v15 = *(v8 + 48);
    *a3 = v16;
    a3[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    v19 = 0;
    v20 = 0;
    stewie::Targets::getById(*(a1 + 56), a2, &v19);
    if (v19)
    {
      v18 = 0uLL;
      (*(**(a1 + 72) + 24))(&v18);
      v12 = *v7;
      if (!*v7)
      {
LABEL_16:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v13 = v12;
          v14 = *(v12 + 32);
          if (v14 <= a2)
          {
            break;
          }

          v12 = *v13;
          if (!*v13)
          {
            goto LABEL_16;
          }
        }

        if (v14 >= a2)
        {
          break;
        }

        v12 = v13[1];
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      v17 = v13[6];
      *a3 = v13[5];
      a3[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      if (*(&v18 + 1))
      {
        sub_100004A34(*(&v18 + 1));
      }
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }

    if (v20)
    {
      sub_100004A34(v20);
    }
  }
}

void sub_1011F1B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F1BB8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************************************", buf, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * ConnectionAssistant::TargetInstantAtLocationCache state *", buf, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ***********************************************************", buf, 2u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16) * 180.0 / 3.14159265;
    v4 = *(a1 + 24) * 180.0;
    *buf = 134284033;
    v5 = *(a1 + 32);
    v17 = v3;
    v18 = 2049;
    v19 = v4 / 3.14159265;
    v20 = 2049;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Location: [%{private}.6f, %{private}.6f, %{private}.6f]", buf, 0x20u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 40) * 180.0 / 3.14159265;
    *buf = 134217984;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Service threshold: %.2f", buf, 0xCu);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    *buf = 67109120;
    LODWORD(v17) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] GPS-UTC leap second: %d", buf, 8u);
    v2 = *(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 104);
    *buf = 134217984;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] TargetInstantAtLocationCache size: %zu [", buf, 0xCu);
  }

  v9 = *(a1 + 88);
  if (v9 != (a1 + 96))
  {
    do
    {
      v10 = *(a1 + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(v9 + 8);
        *buf = 67109120;
        LODWORD(v17) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [d]      targetID: %d", buf, 8u);
      }

      v12 = v9[1];
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
          v13 = v9[2];
          v14 = *v13 == v9;
          v9 = v13;
        }

        while (!v14);
      }

      v9 = v13;
    }

    while (v13 != (a1 + 96));
  }

  v15 = *(a1 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] ]", buf, 2u);
  }
}

uint64_t sub_1011F1F24(uint64_t a1)
{
  *a1 = off_101F1ACD0;
  sub_100D92208(*(a1 + 96));
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

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_1011F1F8C(uint64_t a1)
{
  *a1 = off_101F1ACD0;
  sub_100D92208(*(a1 + 96));
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

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  operator delete();
}

void sub_1011F2018(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1011F2050(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1011F2080(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1011F20E4(uint64_t a1, NSObject **a2, uint64_t a3, int a4, int a5, int a6, uint64_t a7)
{
  v12 = *a2;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  sub_1011F2210(v14, a7);
  sub_10148F254(&object, a3, a4, a5, a6, v14);
  sub_100ED2CDC(v14);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1011F21A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10)
{
  sub_100ED2CDC(&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_1011F21D8(MAClientInterface *a1)
{
  MAClientInterface::~MAClientInterface(a1);

  operator delete();
}

uint64_t sub_1011F2210(uint64_t a1, uint64_t a2)
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

uint64_t sub_1011F22A8()
{
  if ((atomic_load_explicit(&qword_101FC8D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FC8D70))
  {
    sub_1011F2320();
  }

  return qword_101FC8D68;
}

void sub_1011F2BD4(void *a1)
{
  sub_1013D7954(a1);

  operator delete();
}

uint64_t sub_1011F2C0C(uint64_t result, std::string *a2)
{
  if (*(result + 16) == *(result + 8))
  {
    return result;
  }

  v3 = result;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  *__src = 0u;
  *v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  sub_10000D518(&v18);
  if (*(v3 + 16) != *(v3 + 8))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      LOBYTE(__p) = 59;
      sub_10000C030(&v18);
      v6 = *(v3 + 8);
      if (v4 >= (*(v3 + 16) - v6) >> 3)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(v6 + 8 * v4);
      }

      v8 = (*(*v7 + 64))(v7);
      strlen(v8);
      v9 = sub_10000C030(&v18);
      LOBYTE(__p) = 61;
      sub_10000C030(v9);
      __p = 0;
      v16 = 0;
      v17 = 0;
      if ((*(*v7 + 72))(v7, &__p))
      {
        sub_10000C030(&v18);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p);
      }

      v4 = v5++;
    }

    while (v4 < (*(v3 + 16) - *(v3 + 8)) >> 3);
  }

  if ((BYTE8(v24) & 0x10) != 0)
  {
    v11 = v24;
    if (v24 < __src[1])
    {
      *&v24 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
    goto LABEL_19;
  }

  if ((BYTE8(v24) & 8) != 0)
  {
    v12 = *(&v19 + 1);
    v11 = *(&v20 + 1);
LABEL_19:
    v10 = v11 - v12;
    if ((v11 - v12) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v17) = v11 - v12;
    if (v10)
    {
      memmove(&__p, v12, v10);
    }

    goto LABEL_25;
  }

  v10 = 0;
  HIBYTE(v17) = 0;
LABEL_25:
  *(&__p + v10) = 0;
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v17 >= 0)
  {
    v14 = HIBYTE(v17);
  }

  else
  {
    v14 = v16;
  }

  std::string::append(a2, p_p, v14);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1011F2FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1011F2FF8(void *a1, char *__s1)
{
  if (__s1 && *__s1)
  {
    v3 = strdup(__s1);
    __lasts = 0;
    v4 = strtok_r(v3, ";", &__lasts);
    if (v4)
    {
      v5 = v4;
      do
      {
        v6 = strchr(v5, 61);
        if (v6)
        {
          v7 = v6;
          *v6 = 0;
          v8 = (*(*a1 + 16))(a1);
          v9 = sub_101707BEC(v8, v5);
          if (v9)
          {
            v10 = v9;
            (*(*v9 + 16))(v9, v7 + 1);
LABEL_9:
            sub_1013D7A0C(a1, v10, 0);
          }
        }

        else
        {
          v11 = (*(*a1 + 16))(a1);
          v10 = sub_101707BEC(v11, v5);
          if (v10)
          {
            goto LABEL_9;
          }
        }

        v5 = strtok_r(0, ";", &__lasts);
      }

      while (v5);
    }

    free(v3);
  }

  return 1;
}

void sub_1011F3158(void *a1, int a2)
{
  v4 = sub_1013D84A0(a1, "charset");
  if (!v4)
  {
    v5 = (*(*a1 + 16))(a1);
    v4 = sub_101707BEC(v5, "charset");
    sub_1013D7A0C(a1, v4, 0);
  }

  v4[5] = a2;
}

void NetworkListModel::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1011F32C4(_Unwind_Exception *exception_object)
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

uint64_t NetworkListModel::NetworkListModel(uint64_t a1, uint64_t *a2, dispatch_object_t *a3, unsigned int a4)
{
  v8 = (a1 + 8);
  if (a4 > 3)
  {
    v9 = "man.model.1";
  }

  else
  {
    v9 = off_101F1B0D8[a4];
  }

  ctu::OsLogContext::OsLogContext(&__str, kCtLoggingSystemName, v9);
  ctu::OsLogLogger::OsLogLogger(&v39, &__str);
  ctu::OsLogLogger::OsLogLogger(v8, &v39);
  ctu::OsLogLogger::~OsLogLogger(&v39);
  ctu::OsLogContext::~OsLogContext(&__str);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F1AEA0;
  *(a1 + 32) = *a2;
  v10 = a2[1];
  *(a1 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 48) = a4;
  *(a1 + 52) = 3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = "RegistrationModel::fNetworkSelection?";
  if (a4 == 2)
  {
    v11 = "RegistrationModel::fNetworkSelection2";
  }

  if (a4 == 1)
  {
    v12 = "RegistrationModel::fNetworkSelection";
  }

  else
  {
    v12 = v11;
  }

  sub_10000501C(&__str, v12);
  sub_10000501C(__p, "");
  sub_1011F8304(a1 + 96, *a2, a2[1], &__str, __p, 0);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v13 = "RegistrationModel::fNetworkSelectionMode?";
  if (a4 == 2)
  {
    v13 = "RegistrationModel::fNetworkSelectionMode2";
  }

  if (a4 == 1)
  {
    v14 = "RegistrationModel::fNetworkSelectionMode";
  }

  else
  {
    v14 = v13;
  }

  sub_10000501C(&__str, v14);
  v15 = a2[1];
  *(a1 + 168) = *a2;
  *(a1 + 176) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C((a1 + 184), __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
  }

  else
  {
    *(a1 + 184) = __str;
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 168));
  v17 = ServiceMap;
  if ((v18 & 0x8000000000000000) != 0)
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
  v39 = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &v39);
  if (!v22)
  {
    v24 = 0;
LABEL_33:
    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    if (!v24)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
    goto LABEL_33;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v17);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
  if (v24)
  {
LABEL_34:
    (*(*v24 + 24))(v24, a1 + 184, a1 + 208);
  }

LABEL_35:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v26 = "RegistrationModel::fNetworkSelectionICCID?";
  if (a4 == 2)
  {
    v26 = "RegistrationModel::fNetworkSelectionICCID2";
  }

  if (a4 == 1)
  {
    v27 = "RegistrationModel::fNetworkSelectionICCID";
  }

  else
  {
    v27 = v26;
  }

  sub_10000501C(&__str, v27);
  sub_10000501C(v34, "");
  sub_1011F8304(a1 + 224, *a2, a2[1], &__str, v34, 1);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 396) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 349) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  v28 = *(a1 + 48);
  if (v28 > 3)
  {
    v29 = "NetworkListModel.1";
  }

  else
  {
    v29 = off_101F1B0F8[v28];
  }

  sub_10000501C(&v32, v29);
  v31 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v31)
  {
    dispatch_release(v31);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  *(a1 + 320) = *(a1 + 208);
  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(&__str, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    __str = *(a1 + 136);
  }

  std::string::operator=((a1 + 296), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1011F3784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  v37 = *(v32 + 408);
  if (v37)
  {
    sub_100004A34(v37);
  }

  v38 = *(v32 + 384);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (*(v32 + 351) < 0)
  {
    operator delete(*v34);
  }

  if (*(v32 + 319) < 0)
  {
    operator delete(*(v32 + 296));
  }

  sub_1011F84F4(v32 + 224);
  sub_100686634(v32 + 168);
  sub_1011F84F4(v35 + 32);
  __p = v35;
  sub_100F4B580(&__p);
  v39 = *(v32 + 40);
  if (v39)
  {
    sub_100004A34(v39);
  }

  v40 = *(v32 + 24);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  ctu::OsLogLogger::~OsLogLogger(v33);
  NetworkListModelInterface::~NetworkListModelInterface(v32);
  _Unwind_Resume(a1);
}

void sub_1011F38C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  JUMPOUT(0x1011F387CLL);
}

void sub_1011F38FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ctu::OsLogLogger::~OsLogLogger((v12 - 88));
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1011F38A8);
}

void sub_1011F3958(uint64_t a1)
{
  *a1 = off_101F1AEA0;
  v2 = *(a1 + 408);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  sub_1011F84F4(a1 + 224);
  sub_100686634(a1 + 168);
  sub_1011F84F4(a1 + 96);
  v6 = (a1 + 64);
  sub_100F4B580(&v6);
  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  NetworkListModelInterface::~NetworkListModelInterface(a1);
}

void sub_1011F3A28(uint64_t a1)
{
  sub_1011F3958(a1);

  operator delete();
}

void sub_1011F3A60(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 384);
  *(a1 + 376) = v4;
  *(a1 + 384) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  Registry::createRestModuleOneTimeUseConnection(&v8, *(a1 + 32));
  ctu::RestModule::connect();
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (*(a1 + 208) == 1)
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Retrieved network selection mode is manual, validating the selected operator", v7, 2u);
    }

    sub_1011F3B38(a1);
  }
}

void sub_1011F3B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1011F3B38(uint64_t a1)
{
  v34 = 0;
  *__p = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  *v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  NetworkListOperator::NetworkListOperator(v26);
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 159) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 136), *(a1 + 144));
    }

    else
    {
      *__dst = *(a1 + 136);
      *&v36 = *(a1 + 152);
    }

    v3 = __dst;
    if (SBYTE7(v36) < 0)
    {
      v3 = *__dst;
    }

    *buf = 136446210;
    v39 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Validating operator: %{public}s", buf, 0xCu);
    if (SBYTE7(v36) < 0)
    {
      operator delete(*__dst);
    }
  }

  if (*(a1 + 159) < 0)
  {
    sub_100005F2C(__dst, *(a1 + 136), *(a1 + 144));
  }

  else
  {
    *__dst = *(a1 + 136);
    *&v36 = *(a1 + 152);
  }

  v4 = NetworkListOperator::decodeKey();
  if (SBYTE7(v36) < 0)
  {
    operator delete(*__dst);
  }

  v5 = *(a1 + 8);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      NetworkListOperator::getAsString(__dst, v26);
      v7 = (SBYTE7(v36) & 0x80u) == 0 ? __dst : *__dst;
      *buf = 136446210;
      v39 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Successfully decoded the network operator: %{public}s", buf, 0xCu);
      if (SBYTE7(v36) < 0)
      {
        operator delete(*__dst);
      }
    }

    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    v8 = (a1 + 64);
    NetworkListOperator::getKey(__dst, v26);
    if (v9 != v10)
    {
      while ((NetworkListOperator::operator==() & 1) == 0)
      {
        v9 += 136;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }
    }

    if (SBYTE7(v36) < 0)
    {
      operator delete(*__dst);
    }

    v11 = *(a1 + 72);
    if (v9 == v11)
    {
      v12 = *(a1 + 80);
      if (v9 >= v12)
      {
        v14 = 0xF0F0F0F0F0F0F0F1 * ((v9 - *v8) >> 3);
        if (v14 + 1 > 0x1E1E1E1E1E1E1E1)
        {
          sub_1000CE3D4();
        }

        v15 = 0xF0F0F0F0F0F0F0F1 * ((v12 - *v8) >> 3);
        v16 = 2 * v15;
        if (2 * v15 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0xF0F0F0F0F0F0F0)
        {
          v17 = 0x1E1E1E1E1E1E1E1;
        }

        else
        {
          v17 = v16;
        }

        v37 = a1 + 64;
        if (v17)
        {
          sub_100F4B10C(a1 + 64, v17);
        }

        *__dst = 0;
        *&__dst[8] = 136 * v14;
        v36 = 136 * v14;
        sub_100F4B020((136 * v14), v26);
        *&v36 = v36 + 136;
        v18 = *(a1 + 64);
        v19 = *(a1 + 72);
        v20 = (*&__dst[8] + v18 - v19);
        sub_100F4B160(a1 + 64, v18, v19, v20);
        v21 = *(a1 + 64);
        *(a1 + 64) = v20;
        v22 = *(a1 + 80);
        v25 = v36;
        *(a1 + 72) = v36;
        *&v36 = v21;
        *(&v36 + 1) = v22;
        *__dst = v21;
        *&__dst[8] = v21;
        sub_100F4B32C(__dst);
        v13 = v25;
      }

      else
      {
        sub_100F4B020(*(a1 + 72), v26);
        v13 = v11 + 136;
        *(a1 + 72) = v11 + 136;
      }

      *(a1 + 72) = v13;
      v23 = *(a1 + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *__dst = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Adding it to the operator list", __dst, 2u);
      }
    }
  }

  else
  {
    if (v6)
    {
      *__dst = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Failed to decode the selected network operator, will have to change the selection mode to automatic", __dst, 2u);
    }

    *(a1 + 208) = 0;
    *(a1 + 217) = 1;
    sub_1011F5124(a1 + 168);
    sub_10000501C(__dst, "");
    sub_1011F5468(a1 + 96, __dst, 1);
    if (SBYTE7(v36) < 0)
    {
      operator delete(*__dst);
    }
  }

  if (SBYTE7(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[1]);
  }

  if (SBYTE7(v27) < 0)
  {
    operator delete(v26[0]);
  }

  return v4;
}

void sub_1011F3F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 72) = v4;
  sub_100F4B3AC(va);
  _Unwind_Resume(a1);
}

void sub_1011F3FEC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 52);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 3)
      {
        v6 = "Fetch State Unknown";
      }

      else
      {
        v6 = off_101F1B118[v2];
      }

      if (a2 > 3)
      {
        v7 = "Fetch State Unknown";
      }

      else
      {
        v7 = off_101F1B118[a2];
      }

      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Updating the fetch state from %s to %s", &v8, 0x16u);
    }

    *(a1 + 52) = a2;
  }
}

void sub_1011F40E8(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 3)
      {
        v6 = "Selection State Unknown";
      }

      else
      {
        v6 = off_101F1B138[v2];
      }

      if (a2 > 3)
      {
        v7 = "Selection State Unknown";
      }

      else
      {
        v7 = off_101F1B138[a2];
      }

      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Updating the selection state from %s to %s", &v8, 0x16u);
    }

    *(a1 + 56) = a2;
  }
}

void sub_1011F41E4(uint64_t a1)
{
  v1 = *(a1 + 52);
  v2 = *(a1 + 8);
  if ((v1 & 0xFFFFFFFE) == 2)
  {
    if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_DEFAULT))
    {
      v4 = "kFetched";
      if (v1 == 3)
      {
        v4 = "kIdle";
      }

      v7 = 136315138;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Current fetch state: %s, Network scan has been requested", &v7, 0xCu);
    }

    sub_1011F3FEC(a1, 0);
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing the known operator list", &v7, 2u);
    }

    sub_100F4B5D4(a1 + 64, *(a1 + 64));
  }

  else if (os_log_type_enabled(*(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    v6 = "Fetch State Unknown";
    if (v1 == 1)
    {
      v6 = "kInProgress";
    }

    if (!v1)
    {
      v6 = "kRequested";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Invalid state %s when transitioning to kRequested state. Expected kIdle or kFetched", &v7, 0xCu);
  }
}

void sub_1011F4378(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 52);
    if (v3 > 3)
    {
      v4 = "Fetch State Unknown";
    }

    else
    {
      v4 = off_101F1B118[v3];
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Current fetch state: %s Network scan request is being sent to BB", &v5, 0xCu);
  }

  sub_1011F3FEC(a1, 1u);
}

void sub_1011F4444(uint64_t a1, NetworkListScanResult **a2)
{
  if (!*a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid NetworkListScanResult", v24, 2u);
    }

    return;
  }

  State = NetworkListScanResult::getState(*a2);
  if (State - 2 < 2)
  {
    sub_100F4B5D4(a1 + 64, *(a1 + 64));
  }

  else if (State <= 1)
  {
    NetworkListScanResult::getOperators();
  }

  v6 = NetworkListScanResult::getState(*a2);
  if ((v6 - 2) < 2)
  {
    v9 = *(a1 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      NetworkListScanResult::getState(*a2);
      *v24 = 136315138;
      *&v24[4] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Scan was %s, not timestamping", v24, 0xCu);
    }

    sub_1011F3FEC(a1, 2u);
    return;
  }

  if (!v6)
  {
    sub_1011F3FEC(a1, 2u);
    if (*(a1 + 64) == *(a1 + 72))
    {
      *(a1 + 88) = 0;
      v7 = *(a1 + 8);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v24 = 0;
      v8 = "#I Fetch completed, but the list is empty, not timestamping";
      goto LABEL_25;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
    *v24 = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, v24);
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
        goto LABEL_28;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
LABEL_28:
    *(a1 + 88) = (*(*v18 + 88))(v18);
    if ((v19 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    v22 = *(a1 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(a1 + 88);
      *v24 = 67109120;
      *&v24[4] = v23;
      v8 = "#I Scan result is complete, timestamping it with %d";
      v20 = v22;
      v21 = 8;
      goto LABEL_32;
    }

    return;
  }

  if (v6 == 4)
  {
    sub_1011F3FEC(a1, 2u);
    v7 = *(a1 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      v8 = "#I Fetch aborted by user, not timestamping";
LABEL_25:
      v20 = v7;
      v21 = 2;
LABEL_32:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v8, v24, v21);
    }
  }
}

void sub_1011F4758(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F4784(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I A network has been selected", v3, 2u);
  }

  sub_1011F40E8(a1, 1u);
}

void sub_1011F47F4(uint64_t a1, int a2)
{
  v2 = *(a1 + 356);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting user initiated network selection from: %s to %s", &v6, 0x16u);
    }

    *(a1 + 356) = a2;
  }
}

void sub_1011F48DC(uint64_t a1, int a2, int a3)
{
  v3[0] = 0;
  v8 = 0;
  sub_1011F4950(a1, a2, a3, v3);
  if (v8 == 1)
  {
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v5 < 0)
    {
      operator delete(v4);
    }
  }
}

void sub_1011F493C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100EBBF84(va);
  _Unwind_Resume(a1);
}

void sub_1011F4950(uint64_t a1, int a2, int a3, MCCAndMNC *a4)
{
  v8 = *(a1 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = asString();
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Select Network with mode: %s returned with success: %s", &buf, 0x16u);
    v8 = *(a1 + 8);
  }

  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v9)
    {
      v10 = asString();
      v11 = asString();
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Setting active mode from %s to %s", &buf, 0x16u);
    }

    *(a1 + 320) = a3;
    if (a3 == 1)
    {
      if (*(a4 + 64) == 1)
      {
        MCCAndMNC::getMcc(&buf, a4);
        MCC::getStringValue(&v23, &buf);
        std::string::push_back(&v23, 45);
        v24 = v23;
        memset(&v23, 0, sizeof(v23));
        if ((*(a4 + 64) & 1) == 0)
        {
          sub_1000D1644();
        }

        MCCAndMNC::getMnc(v26, a4);
        MCC::getStringValue(v21, v26);
        if ((v22 & 0x80u) == 0)
        {
          v12 = v21;
        }

        else
        {
          v12 = v21[0];
        }

        if ((v22 & 0x80u) == 0)
        {
          v13 = v22;
        }

        else
        {
          v13 = v21[1];
        }

        v14 = std::string::append(&v24, v12, v13);
        __p = *v14;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        sub_1011F5468(a1 + 96, &__p, *(a1 + 160));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (v28 < 0)
        {
          operator delete(*&v27[4]);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v23.__r_.__value_.__l.__data_);
        }

        if (v30 < 0)
        {
          operator delete(buf.__r_.__value_.__l.__size_);
        }

        sub_1011F3B38(a1);
      }

      v15 = *(a1 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 319) < 0)
        {
          if (*(a1 + 304))
          {
            v16 = *(a1 + 296);
          }

          else
          {
            v16 = "<none>";
          }
        }

        else if (*(a1 + 319))
        {
          v16 = (a1 + 296);
        }

        else
        {
          v16 = "<none>";
        }

        if (*(a1 + 159) < 0)
        {
          sub_100005F2C(&buf, *(a1 + 136), *(a1 + 144));
        }

        else
        {
          buf = *(a1 + 136);
        }

        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        *v26 = 136446466;
        *v27 = v16;
        *&v27[8] = 2082;
        *&v27[10] = p_buf;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Setting active network selected code from %{public}s to %{public}s", v26, 0x16u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(&buf, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        buf = *(a1 + 136);
      }

      std::string::operator=((a1 + 296), &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_1011F40E8(a1, 3u);
    }

    else
    {
      sub_1011F40E8(a1, 0);
      sub_10000501C(&buf, "");
      sub_1011F5468(a1 + 96, &buf, *(a1 + 160));
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    sub_1011F4FE4(a1 + 96);
    sub_1011F5124(a1 + 168);
  }

  else
  {
    if (v9)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Setting the selection state to Idle and clearing fetch timestamp because of failure to complete selection", &buf, 2u);
    }

    sub_1011F40E8(a1, 0);
    (*(*a1 + 128))(a1);
    if (!a3 && *(a1 + 364) == 2)
    {
      v17 = *(a1 + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Setting of mode to automatic has failed, and manual network selection is not allowed either, resetting the baseband", &buf, 2u);
      }

      sub_10000501C(&v19, "Resetting because of selection mode failure");
      rest::ResetPayload::ResetPayload();
      sub_100108D68();
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }
  }
}

void sub_1011F4E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v48 - 89) < 0)
  {
    operator delete(*(v48 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F4F24(uint64_t a1, uint64_t a2)
{
  MCC::MCC(v4, a2);
  MCC::MCC(&v7, (a2 + 32));
  v10 = 1;
  sub_1011F4950(a1, 1, 1, v4);
  if (v10 == 1)
  {
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v6 < 0)
    {
      operator delete(v5);
    }
  }
}

void sub_1011F4FE4(uint64_t a1)
{
  if (*(a1 + 65) == 1)
  {
    *(a1 + 65) = 0;
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
        (*(*v10 + 88))(v10, a1 + 16, a1 + 40);
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

void sub_1011F5108(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F5124(uint64_t a1)
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

void sub_1011F5248(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F5264(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Network List Model is being reset", v3, 2u);
  }

  sub_100F4B5D4(a1 + 64, *(a1 + 64));
  *(a1 + 88) = 0;
  sub_1011F3FEC(a1, 3u);
  sub_1011F40E8(a1, 0);
  *(a1 + 320) = 0;
  if (*(a1 + 319) < 0)
  {
    **(a1 + 296) = 0;
    *(a1 + 304) = 0;
  }

  else
  {
    *(a1 + 296) = 0;
    *(a1 + 319) = 0;
  }

  *(a1 + 356) = 0;
}

void sub_1011F5318(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 159) < 0)
    {
      sub_100005F2C(__p, *(a1 + 136), *(a1 + 144));
    }

    else
    {
      *__p = *(a1 + 136);
      v5 = *(a1 + 152);
    }

    v3 = __p;
    if (v5 < 0)
    {
      v3 = __p[0];
    }

    *buf = 136446210;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Network selection %{public}s is being reset", buf, 0xCu);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000501C(__p, "");
  sub_1011F5468(a1 + 96, __p, 1);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 208) = 0;
  *(a1 + 217) = 1;
  sub_1011F5124(a1 + 168);
}

void sub_1011F5444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1011F5468(uint64_t a1, __int128 *a2, int a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v5, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 65) = 1;
  if (a3)
  {
    sub_1011F4FE4(a1);
  }
}

void sub_1011F54FC(uint64_t a1, int a2)
{
  v2 = *(a1 + 392);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Network needs reselect changing from %s to %s", &v6, 0x16u);
    }

    *(a1 + 392) = a2;
  }
}

const void **sub_1011F55DC(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 52);
    if (v4 > 3)
    {
      v5 = "Fetch State Unknown";
    }

    else
    {
      v5 = off_101F1B118[v4];
    }

    v6 = *(a1 + 56);
    if (v6 > 3)
    {
      v7 = "Selection State Unknown";
    }

    else
    {
      v7 = off_101F1B138[v6];
    }

    *buf = 136315906;
    *&buf[4] = v5;
    v62 = 2080;
    v63 = v7;
    v64 = 2080;
    v65 = asString();
    v66 = 2080;
    v67 = asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Fetch state: %s, Selection state: %s, Network Selection Allowed Raw: %s Network Selection Allowed from SIM (%s)", buf, 0x2Au);
    v3 = *(a1 + 8);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 159) < 0)
    {
      sub_100005F2C(type, *(a1 + 136), *(a1 + 144));
    }

    else
    {
      *type = *(a1 + 136);
      v60 = *(a1 + 152);
    }

    if (v60 >= 0)
    {
      v8 = type;
    }

    else
    {
      v8 = *type;
    }

    v9 = asString();
    if (*(a1 + 287) < 0)
    {
      sub_100005F2C(__p, *(a1 + 264), *(a1 + 272));
    }

    else
    {
      *__p = *(a1 + 264);
      v58 = *(a1 + 280);
    }

    v10 = __p;
    if (v58 < 0)
    {
      v10 = __p[0];
    }

    *buf = 136446723;
    *&buf[4] = v8;
    v62 = 2080;
    v63 = v9;
    v64 = 2081;
    v65 = v10;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Selection Code: %{public}s, Selection Mode: %s, Selection ICCID: %{private}s", buf, 0x20u);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(*type);
    }

    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (a1 + 296);
    if (*(a1 + 319) < 0)
    {
      v11 = *v11;
    }

    v12 = asString();
    v13 = (a1 + 328);
    if (*(a1 + 351) < 0)
    {
      v13 = *v13;
    }

    *buf = 136446723;
    *&buf[4] = v11;
    v62 = 2080;
    v63 = v12;
    v64 = 2081;
    v65 = v13;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Active Selection Code: %{public}s, Active Selection Mode: %s, Active ICCID: %{private}s", buf, 0x20u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v14 = CSIBOOLAsString(*(a1 + 356));
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I User Initated Selection: %s", buf, 0xCu);
  }

  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  while (v15 != v16)
  {
    NetworkListOperator::dumpState(v15, v2);
    v15 = (v15 + 136);
  }

  *type = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
  v18 = ServiceMap;
  v20 = v19;
  if (v19 < 0)
  {
    v21 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
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
  v24 = sub_100009510(&v18[1].__m_.__sig, buf);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v18);
  v25 = 0;
  v27 = 1;
LABEL_45:
  (*(*v26 + 80))(__p, v26, *(a1 + 48), 1, @"OverrideCarrierMenuTo", 0, 0);
  sub_10002FE1C(type, __p);
  sub_10000A1EC(__p);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (*type)
  {
    buf[0] = 0;
    ctu::cf::assign(buf, *type, v28);
    v29 = buf[0];
    v30 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    v31 = CSIBOOLAsString(v29);
    *buf = 136315138;
    *&buf[4] = v31;
    v32 = "#I Override Carrier Menu To: %s";
    v33 = v30;
    v34 = 12;
  }

  else
  {
    v35 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_53;
    }

    *buf = 0;
    v32 = "#I Override Carrier Menu To is not present in the carrier bundle";
    v33 = v35;
    v34 = 2;
  }

  _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
LABEL_53:
  __p[0] = 0;
  v36 = Registry::getServiceMap(*(a1 + 32));
  v37 = v36;
  if (v19 < 0)
  {
    v38 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v39 = 5381;
    do
    {
      v19 = v39;
      v40 = *v38++;
      v39 = (33 * v39) ^ v40;
    }

    while (v40);
  }

  std::mutex::lock(v36);
  *buf = v19;
  v41 = sub_100009510(&v37[1].__m_.__sig, buf);
  if (v41)
  {
    v43 = v41[3];
    v42 = v41[4];
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v42);
      v44 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v43 = 0;
  }

  std::mutex::unlock(v37);
  v42 = 0;
  v44 = 1;
LABEL_61:
  (*(*v43 + 80))(&v56, v43, *(a1 + 48), 1, @"DisallowCarrierMenuAtHome", 0, 0);
  sub_10002FE1C(__p, &v56);
  sub_10000A1EC(&v56);
  if ((v44 & 1) == 0)
  {
    sub_100004A34(v42);
  }

  if (__p[0])
  {
    buf[0] = 0;
    ctu::cf::assign(buf, __p[0], v45);
    v46 = buf[0];
    v47 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    v48 = CSIBOOLAsString(v46);
    *buf = 136315138;
    *&buf[4] = v48;
    v49 = "#I Disallow Carrier Menu At Home: %s";
    v50 = v47;
    v51 = 12;
  }

  else
  {
    v52 = *v2;
    if (!os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_69;
    }

    *buf = 0;
    v49 = "#I Disallow Carrier Menu At Home is not present in the carrier bundle";
    v50 = v52;
    v51 = 2;
  }

  _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v49, buf, v51);
LABEL_69:
  v53 = *v2;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = CSIBOOLAsString(*(a1 + 392));
    *buf = 136315138;
    *&buf[4] = v54;
    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Network needs reselect: %s", buf, 0xCu);
  }

  sub_100045C8C(__p);
  return sub_100045C8C(type);
}