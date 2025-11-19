void sub_101584D08(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101584DC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EDC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101584E3C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101584F00(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EE48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101584F34(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 112);
  v3 = *(a1 + 16);
  v4 = *(sub_10000BA08(*(v1 + 240), v3)[3] + 48);
  v5 = *(*v2 + 48);

  return v5(v2, v3, v4);
}

uint64_t sub_101584FA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101584FF4(uint64_t **a1)
{
  v7 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  for (i = *(v1 + 240); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= v2)
    {
      if (v4 >= v2)
      {
        if (!*(*a1 + 4))
        {
          v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", &buf, 2u);
          }
        }

        operator new();
      }

      ++i;
    }
  }

  v5 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    buf = 136315138;
    buf_4 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  operator delete();
}

void sub_101585360(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158541C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EEC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158548C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101585554(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EF48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 21) = 0;
  return result;
}

uint64_t sub_1015855C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101585610(uint64_t **a1)
{
  v13 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 6);
  v5 = *(*a1 + 28);
  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Unable to set call forwarding info, error=%s", buf, 0xCu);
  }

  v7 = *(v1 + 240);
  if (v7)
  {
    v8 = *(v1 + 240);
    do
    {
      v9 = *(v8 + 8);
      if (v9 <= v2)
      {
        if (v9 >= v2)
        {
          if (v5 == 1 && (v4 - 21) <= 1)
          {
            *(sub_10000BA08(v7, v2) + 160) = 0;
            sub_10156DD80(v1, v2);
          }

          if (!v3)
          {
            v12 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          operator new();
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v10 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = subscriber::asString();
    *buf = 136315138;
    v15 = v11;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_10158592C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015859E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4EFC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101585A54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101585AA0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 4);
    v7 = *(v1 + 20);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          if (!v6)
          {
            v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }

            v6 = 255;
          }

          if (sub_10000BA08(*(v2 + 240), v3)[5])
          {
            v11 = 0;
            while (1)
            {
              if (((1 << v11) & v6) != 0)
              {
                v12 = sub_10000BA08(*(v2 + 240), v3)[5];
                sub_1012D8684(v12, v5, 1 << v11, ((1 << v11) & v7) != 0);
              }

              if (++v11 == 8)
              {
                v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch complete notification", buf, 2u);
                }

                operator new();
              }
            }
          }

          sub_1012D84E8(buf);
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101585DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

__n128 sub_101585EB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F048;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

void sub_101585EEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch complete notification", v6, 2u);
  }

  v4 = *(a1 + 16);
  v5 = 1;
  do
  {
    if ((v5 & v4) != 0)
    {
      v7 = 0;
      if (sub_10157182C(v2, *(a1 + 20), &v7, *(a1 + 24), v5))
      {
        (*(**(v2 + 112) + 128))(*(v2 + 112), *(a1 + 20), v5, *(a1 + 24), v7);
      }
    }

    v5 = (2 * v5);
  }

  while (v5 && v5 < 129);
}

uint64_t sub_101585FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101586018(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 4);
    v7 = *(v1 + 5);
    v8 = *(v1 + 24);
    do
    {
      v9 = *(v4 + 8);
      if (v9 <= v3)
      {
        if (v9 >= v3)
        {
          v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Fetch Error notification", buf, 2u);
          }

          v16 = 0;
          v15 = kCFBooleanTrue;
          if (kCFBooleanTrue)
          {
            CFRetain(kCFBooleanTrue);
          }

          sub_10156F850(buf, (v2 + 96), (v2 + 40), v3, "CallBarringNASFallbackSupported", &v15);
          sub_10002FE1C(&v16, buf);
          sub_10000A1EC(buf);
          sub_10000A1EC(&v15);
          buf[0] = 0;
          ctu::cf::assign(buf, v16, v13);
          if (buf[0] != 1 || v8 != 1 || (v7 - 21) > 1)
          {
            if (!v6)
            {
              v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
              }
            }

            operator new();
          }

          *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
          sub_10156DD80(v2, v3);
          sub_10000501C(buf, "");
          sub_101571220(v2, v3, v5, v6);
          if (v18 < 0)
          {
            operator delete(*buf);
          }

          sub_100045C8C(&v16);
          goto LABEL_24;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

LABEL_24:
  operator delete();
}

void sub_1015863C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a16);
  operator delete();
}

__n128 sub_1015864E8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F0C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_10158655C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015865A8(uint64_t **a1)
{
  v10 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 4);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Info set complete notification", buf, 2u);
          }

          if (!v4)
          {
            v9 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          operator new();
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v12 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101586874(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158692C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F148;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158699C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015869E8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 4);
    v6 = *(v1 + 6);
    v7 = *(v1 + 28);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          v14 = 0;
          v13 = kCFBooleanFalse;
          if (kCFBooleanFalse)
          {
            CFRetain(kCFBooleanFalse);
          }

          sub_10156F850(buf, (v2 + 96), (v2 + 40), v3, "CallBarringNASFallbackSupported", &v13);
          sub_10002FE1C(&v14, buf);
          sub_10000A1EC(buf);
          sub_10000A1EC(&v13);
          buf[0] = 0;
          ctu::cf::assign(buf, v14, v10);
          if (buf[0] == 1 && v7 == 1 && (v6 - 21) <= 1)
          {
            *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          if (!v5)
          {
            v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Call class was not provided, interpreting it as ALL", buf, 2u);
            }
          }

          v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Info set error notification", buf, 2u);
          }

          operator new();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101586D64(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  operator delete();
}

__n128 sub_101586E68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F1C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101586ED8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101586F24(uint64_t **a1)
{
  v10 = a1;
  v2 = **a1;
  v1 = (*a1)[1];
  for (i = *(v2 + 240); i; i = *i)
  {
    v4 = *(i + 8);
    if (v4 <= v1)
    {
      if (v4 >= v1)
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Password Registration event", &buf, 2u);
        }

        *&buf = off_101F4F248;
        *(&buf + 1) = v2;
        v12 = v1;
        p_buf = &buf;
        v8 = *(v2 + 112);
        v9 = sub_10157FEE8(HIDWORD(v1));
        (*(*v8 + 144))(v8, v1, v9);
        (*(**(v2 + 384) + 40))(*(v2 + 384), v1, 0);
        sub_10002B644(&buf);
        goto LABEL_12;
      }

      ++i;
    }
  }

  v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_12:
  operator delete();
}

void sub_10158714C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015871FC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158722C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 144);

  return v4(v1, v2, v3);
}

uint64_t sub_101587294(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015872E0(uint64_t **a1)
{
  v11 = a1;
  v2 = **a1;
  v1 = (*a1)[1];
  v3 = *(v2 + 240);
  if (v3)
  {
    v4 = *(*a1 + 4);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v1)
      {
        if (v5 >= v1)
        {
          v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Sending out Call Barring Password Registration failure event", &buf, 2u);
          }

          *&buf = off_101F4F2C8;
          *(&buf + 1) = v2;
          v13 = v1;
          p_buf = &buf;
          v9 = *(v2 + 112);
          v10 = sub_10157FEE8(HIDWORD(v1));
          (*(*v9 + 152))(v9, v1, v10);
          (*(**(v2 + 384) + 40))(*(v2 + 384), v1, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_101587514(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015875C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F2C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015875F4(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 112);
  v2 = *(a1 + 16);
  v3 = sub_10157FEE8(*(a1 + 20));
  v4 = *(*v1 + 152);

  return v4(v1, v2, v3);
}

uint64_t sub_10158765C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015876A8(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = v2[30]; i; i = *i)
  {
    v8 = *(i + 8);
    if (v8 <= v3)
    {
      if (v8 >= v3)
      {
        v10 = *(*(*v2[6] + 16))(v2[6], v3);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Call waiting values retrieved successfully", &buf, 2u);
        }

        v12 = sub_10000BA08(v2[30], v3) + 8;
        sub_100034450(*v12);
        v13 = 0;
        *v12 = 0;
        v12[1] = 0;
        *(v12 - 1) = v12;
        v18 = v4;
        if (v4)
        {
          v14 = v4;
        }

        else
        {
          v14 = 255;
        }

        do
        {
          if (((1 << v13) & v14) != 0)
          {
            v15 = *v6;
            v16 = sub_10000BA08(v2[30], v3);
            v21 = 1 << v13;
            *&buf = &v21;
            *(sub_10142B4C4((v16 + 7), 1 << v13) + 32) = ((1 << v13) & v15) != 0;
          }

          ++v13;
        }

        while (v13 != 8);
        sub_101570C50(v2, v3);
        sub_10156D634(v2, v3);
        *&buf = off_101F4F348;
        *(&buf + 1) = v2;
        v23 = v18 | (v3 << 32);
        p_buf = &buf;
        sub_101587A54(&buf);
        (*(*v2[48] + 40))(v2[48], v3, 0);
        sub_10002B644(&buf);
        goto LABEL_20;
      }

      ++i;
    }
  }

  v9 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_20:
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1011BEED0(&v20);
  return sub_1000049E0(&v19);
}

void sub_101587974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  sub_10002B644(va2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1011BEED0(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

__n128 sub_101587A24(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101587A54(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (*(result + 16))
  {
    v3 = *(result + 16);
  }

  else
  {
    v3 = 255;
  }

  v4 = 1;
  do
  {
    if ((v4 & v3) != 0)
    {
      v5 = 0;
      result = sub_1015724F0(v2, *(v1 + 20), &v5, v4);
      if (result)
      {
        result = (*(**(v2 + 112) + 72))(*(v2 + 112), *(v1 + 20), v4, v5);
      }
    }

    v4 = (2 * v4);
  }

  while (v4 && v4 < 129);
  return result;
}

uint64_t sub_101587B04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101587B50(void ****a1)
{
  v13 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v6 = *(v1 + 3);
    v5 = *(v1 + 4);
    v7 = *(v1 + 20);
    do
    {
      v8 = *(v4 + 8);
      if (v8 <= v3)
      {
        if (v8 >= v3)
        {
          v10 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch call waiting info, error=%s", &buf, 0xCu);
          }

          if (v7 != 1 || (v5 - 21) > 1 || (*(sub_10000BA08(v2[30], v3) + 160) = 0, sub_10156DD80(v2, v3), (sub_101571F9C(v2, v3, v6) & 1) == 0))
          {
            *&buf = off_101F4F3C8;
            *(&buf + 1) = v2;
            v15 = v3 | (v6 << 32);
            p_buf = &buf;
            if (v6)
            {
              v12 = v6;
            }

            else
            {
              v12 = 255;
            }

            (*(*v2[14] + 56))(v2[14], v3, v12);
            (*(*v2[48] + 40))(v2[48], v3, v5);
            sub_10002B644(&buf);
          }

          goto LABEL_10;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v9 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_10:
  operator delete();
}

void sub_101587DF0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101587EA0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F3C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101587ED0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 56))(*(*(a1 + 8) + 112), *(a1 + 16), v2);
}

uint64_t sub_101587F10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101587F5C(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 20);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Saved call waiting values successfully", buf, 2u);
          }

          v11 = 0;
          if (v5)
          {
            v12 = v5;
          }

          else
          {
            v12 = 255;
          }

          while (1)
          {
            if (((1 << v11) & v12) != 0)
            {
              v13 = sub_10000BA08(v2[30], v3);
              v14 = 1 << v11;
              *buf = &v14;
              *(sub_10142B4C4((v13 + 7), 1 << v11) + 32) = v6;
            }

            if (++v11 == 8)
            {
              sub_101570C50(v2, v3);
              sub_10156D634(v2, v3);
              operator new();
            }
          }
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_101588238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015882F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F448;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_101588334(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 80))(*(*(a1 + 8) + 112), *(a1 + 16), v2, *(a1 + 24));
}

uint64_t sub_101588378(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015883C4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0x100)
  {
    a2 = 1;
  }

  if (v3 > 0x1FF || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }
}

void sub_101588420(void **a1)
{
  v1 = a1[2];
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3] - *a1;
  if (v4 > (v1 - v3))
  {
    if (v1 != v3)
    {
      sub_100EF4E80((v1 - v3) >> 3);
    }

    v6 = 0;
    if (v4 >> 3)
    {
      v7 = a1[1];
      v8 = a1[2] - v7;
      if (v8)
      {
        v9 = 0;
        do
        {
          v10 = *v7++;
          *v9++ = v10;
          v8 -= 8;
        }

        while (v8);
        v7 = a1[1];
        v11 = a1[2];
        v2 = *a1;
      }

      else
      {
        v11 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v11 - v7);
      a1[3] = 0;
      v6 = v2;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_1015884FC(uint64_t **a1)
{
  v13 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 5);
    v6 = *(v1 + 24);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v11 = sub_10000BA08(*(v2 + 240), v3);
            v12 = (*(*v11[1] + 48))(v11[1]);
            *buf = 136315394;
            v15 = v12;
            v16 = 2080;
            v17 = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to save call waiting info to %s, error=%s", buf, 0x16u);
          }

          if (v6 == 1 && (v5 - 21) <= 1)
          {
            *(sub_10000BA08(*(v2 + 240), v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          operator new();
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  operator delete();
}

void sub_1015887F8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_1015888B4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F4C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  *(a2 + 28) = 0;
  return result;
}

uint64_t sub_1015888F0(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = 255;
  }

  return (*(**(*(a1 + 8) + 112) + 64))(*(*(a1 + 8) + 112), *(a1 + 16), v2, *(a1 + 24));
}

uint64_t sub_101588934(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101588980(uint64_t *a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 240);
  if (!v6)
  {
LABEL_8:
    v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_15;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= v3)
    {
      break;
    }

LABEL_7:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  if (v7 < v3)
  {
    ++v6;
    goto LABEL_7;
  }

  if (v5)
  {
    operator new();
  }

  v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I handleCmdDriverCLIRInfo_sync: info parameter is invalid", &buf, 2u);
  }

  *&buf = off_101F4F548;
  *(&buf + 1) = v2;
  v14 = v3;
  *&v15 = &buf;
  (*(**(v2 + 112) + 168))(*(v2 + 112), v3, 0);
  (*(**(v2 + 384) + 40))(*(v2 + 384), v3, 1);
  sub_10002B644(&buf);
LABEL_15:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v12);
  return sub_1000049E0(&v11);
}

void sub_101588FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  sub_1000EFBF0(&a18);
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1015890C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F548;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589134(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015891A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4F5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015891F4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

__n128 sub_101589284(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F618;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015892B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v5 = 0;
  v4 = 0;
  result = sub_101570284(v1, *(a1 + 16), &v4, &v5);
  if (result)
  {
    v3 = *(**(v1 + 112) + 160);

    return v3();
  }

  return result;
}

uint64_t sub_101589354(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101589418(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F698;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589484(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015894D0(void ****a1)
{
  v11 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = *(v1 + 16);
    do
    {
      v7 = *(v4 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 136315138;
            *(&buf + 4) = CSIErrorString();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch CLIR info, error=%s", &buf, 0xCu);
          }

          if (v6 != 1 || (v5 - 21) > 1 || (*(sub_10000BA08(v2[30], v3) + 160) = 0, sub_10156DD80(v2, v3), (sub_10156FBF0(v2, v3) & 1) == 0))
          {
            *&buf = off_101F4F718;
            *(&buf + 1) = v2;
            v13 = v3;
            p_buf = &buf;
            (*(*v2[14] + 168))(v2[14], v3, 2);
            (*(*v2[48] + 40))(v2[48], v3, v5);
            sub_10002B644(&buf);
          }

          goto LABEL_10;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_10:
  operator delete();
}

void sub_10158975C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_101589810(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F718;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158987C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015898C8(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  for (i = v2[30]; i; i = *i)
  {
    v7 = *(i + 8);
    if (v7 <= v3)
    {
      if (v7 >= v3)
      {
        v9 = *(*(*v2[6] + 16))(v2[6], v3);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = sub_10000BA08(v2[30], v3);
          v12 = (*(*v11[1] + 48))(v11[1]);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v12;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received CLIP Information from %s", &buf, 0xCu);
        }

        v13 = sub_10000BA08(v2[30], v3);
        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = v13[11];
        v13[10] = v5;
        v13[11] = v4;
        if (v14)
        {
          sub_100004A34(v14);
        }

        *&buf = off_101F4F798;
        *(&buf + 1) = v2;
        v19 = v3;
        p_buf = &buf;
        sub_101589C30(&buf);
        (*(*v2[48] + 40))(v2[48], v3, 0);
        sub_10002B644(&buf);
        goto LABEL_18;
      }

      ++i;
    }
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_18:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v17);
  return sub_1000049E0(&v16);
}

void sub_101589B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002B644(&a11);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101589BFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F798;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_101589C30(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  result = sub_101572B38(v1, *(a1 + 16), &v4, 1);
  if (result)
  {
    v3 = *(**(v1 + 112) + 232);

    return v3();
  }

  return result;
}

uint64_t sub_101589CC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101589D10(void ****a1)
{
  v12 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[30];
  if (v4)
  {
    v5 = *(v1 + 3);
    v6 = v2[30];
    do
    {
      v7 = *(v6 + 8);
      if (v7 <= v3)
      {
        if (v7 >= v3)
        {
          if (*(v1 + 16) == 1 && (v5 - 21) <= 1)
          {
            *(sub_10000BA08(v4, v3) + 160) = 0;
            sub_10156DD80(v2, v3);
          }

          v9 = *(*(*v2[6] + 16))(v2[6], v3);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = sub_10000BA08(v2[30], v3);
            v11 = (*(*v10[1] + 48))(v10[1]);
            LODWORD(buf) = 136315138;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Unable to retrieve CLIP info from %s", &buf, 0xCu);
          }

          *&buf = off_101F4F818;
          *(&buf + 1) = v2;
          v14 = v3;
          p_buf = &buf;
          (*(*v2[14] + 208))(v2[14], v3, 1);
          (*(*v2[48] + 40))(v2[48], v3, v5);
          sub_10002B644(&buf);
LABEL_15:
          operator delete();
        }

        ++v6;
      }

      v6 = *v6;
    }

    while (v6);
  }

  v8 = *(*(*v2[6] + 16))(v2[6], v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

  goto LABEL_15;
}

void sub_101589FB4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158A068(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F818;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A0D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A194(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F898;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10158A1F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A2BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F918;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A324(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10158A370(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[30];
  if (!v6)
  {
LABEL_9:
    v9 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = v2[30];
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= v3)
    {
      break;
    }

LABEL_8:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v3)
  {
    ++v7;
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = sub_10000BA08(v6, v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[13];
    v10[12] = v5;
    v10[13] = v4;
    if (v11)
    {
      sub_100004A34(v11);
    }

    v12 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received COLR status, sending kConnectedLineIdRestrictionValueAvailableNotification", &buf, 2u);
    }

    *&buf = off_101F4F998;
    *(&buf + 1) = v2;
    v18 = v3;
    p_buf = &buf;
    sub_10158A78C(&buf);
    (*(*v2[48] + 40))(v2[48], v3, 0);
  }

  else
  {
    v13 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I COLR is invalid, sending kConnectedLineIdRestrictionFetchError", &buf, 2u);
    }

    *&buf = off_101F4FA18;
    *(&buf + 1) = v2;
    v18 = v3;
    p_buf = &buf;
    (*(*v2[14] + 216))(v2[14], v3);
    (*(*v2[48] + 40))(v2[48], v3, 1);
  }

  sub_10002B644(&buf);
LABEL_23:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v16);
  return sub_1000049E0(&v15);
}

void sub_10158A6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002B644(&a11);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10158A758(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4F998;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A78C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 0;
  result = sub_101573038(v1, *(a1 + 16), &v4);
  if (result)
  {
    v3 = *(**(v1 + 112) + 200);

    return v3();
  }

  return result;
}

uint64_t sub_10158A81C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158A8E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FA18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158A948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158A994(uint64_t **a1)
{
  v9 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Failed to receive COLR status, sending kConnectedLineIdRestrictionFetchError", &buf, 2u);
          }

          *&buf = off_101F4FA98;
          *(&buf + 1) = v1;
          v11 = v2;
          p_buf = &buf;
          (*(**(v1 + 112) + 216))(*(v1 + 112), v2);
          (*(**(v1 + 384) + 40))(*(v1 + 384), v2, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_10158ABC0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158AC74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FA98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158ACDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10158AD28(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[30];
  if (!v6)
  {
LABEL_9:
    v9 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
    }

    goto LABEL_23;
  }

  v7 = v2[30];
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= v3)
    {
      break;
    }

LABEL_8:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_9;
    }
  }

  if (v8 < v3)
  {
    ++v7;
    goto LABEL_8;
  }

  if (v5)
  {
    v10 = sub_10000BA08(v6, v3);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = v10[15];
    v10[14] = v5;
    v10[15] = v4;
    if (v11)
    {
      sub_100004A34(v11);
    }

    v12 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received CNAP status, sending kConnectedLineIdRestrictionValueAvailableNotification", &buf, 2u);
    }

    *&buf = off_101F4FB18;
    *(&buf + 1) = v2;
    v22 = v3;
    p_buf = &buf;
    sub_10158B158(&buf);
    (*(*v2[48] + 40))(v2[48], v3, 0);
  }

  else
  {
    v13 = *(*(*v2[6] + 16))(v2[6], v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I CNAP is invalid, sending kCallingNamePresentationValueFetchError", &buf, 2u);
    }

    *&buf = off_101F4FB98;
    *(&buf + 1) = v2;
    v22 = v3;
    p_buf = &buf;
    (*(*v2[14] + 256))(v2[14], v3, v14, v15, v16, v17);
    (*(*v2[48] + 40))(v2[48], v3, 1);
  }

  sub_10002B644(&buf);
LABEL_23:
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001FF3DC(&v20);
  return sub_1000049E0(&v19);
}

void sub_10158B070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10002B644(&a11);
  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10158B124(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FB18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B158(uint64_t a1)
{
  v1 = *(a1 + 8);
  v4 = 2;
  sub_101574428(v1, *(a1 + 16), &v4);
  v2 = *(**(v1 + 112) + 264);

  return v2();
}

uint64_t sub_10158B1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10158B2B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FB98;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B320(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158B36C(uint64_t **a1)
{
  v9 = a1;
  v1 = **a1;
  v2 = *(*a1 + 2);
  v3 = *(v1 + 240);
  if (v3)
  {
    v4 = *(*a1 + 3);
    do
    {
      v5 = *(v3 + 8);
      if (v5 <= v2)
      {
        if (v5 >= v2)
        {
          v7 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Failed to receive CNAP status, sending kCallingNamePresentationValueFetchError", &buf, 2u);
          }

          *&buf = off_101F4FC18;
          *(&buf + 1) = v1;
          v11 = v2;
          p_buf = &buf;
          (*(**(v1 + 112) + 256))();
          (*(**(v1 + 384) + 40))(*(v1 + 384), v2, v4);
          sub_10002B644(&buf);
          goto LABEL_13;
        }

        ++v3;
      }

      v3 = *v3;
    }

    while (v3);
  }

  v6 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &buf, 0xCu);
  }

LABEL_13:
  operator delete();
}

void sub_10158B5AC(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  operator delete();
}

__n128 sub_10158B660(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FC18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10158B6D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10158B71C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = *(v2 + 240);
  if (v4)
  {
    v5 = *(v1 + 12);
    v6 = *(v1 + 4);
    v7 = *(v1 + 5);
    v8 = *(v2 + 240);
    v9 = *(v1 + 6);
    do
    {
      v10 = *(v8 + 8);
      if (v10 <= v3)
      {
        if (v10 >= v3)
        {
          if (sub_10000BA08(v4, v3)[1])
          {
            if (!sub_10156FE88(v2) || sub_10000BA08(*(v2 + 240), v3)[1] == *(v2 + 152))
            {
              v13 = sub_10000BA08(*(v2 + 240), v3);
              (*(*v13[1] + 72))(v13[1], v3, v5, v6, v7, v9);
            }

            else
            {
              v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to activate Call Forwarding because it would trigger CSFB", buf, 2u);
              }
            }
          }

LABEL_9:
          operator delete();
        }

        ++v8;
      }

      v8 = *v8;
    }

    while (v8);
  }

  v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  goto LABEL_9;
}

void sub_10158B988(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(*v2[6] + 16))(v2[6], *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = subscriber::asString();
    *&buf[12] = 2080;
    *&buf[14] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Migrating Supplementary services preferences from slot %s -> %s", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  (*(*v2[23] + 40))(buf);
  v4 = *v2[23];
  if (*buf)
  {
    (*(v4 + 48))();
  }

  else
  {
    (*(v4 + 56))();
  }

  v5 = *(v1 + 3);
  v18 = *buf;
  v19 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  sub_10156CE14(v2, v5, &v18);
  if (v19)
  {
    sub_100004A34(v19);
  }

  v16 = 0;
  v17 = 0;
  (*(*v2[23] + 64))(&v16);
  v6 = *v2[23];
  if (v16)
  {
    (*(v6 + 72))();
  }

  else
  {
    (*(v6 + 80))();
  }

  v7 = *(v1 + 3);
  v14 = v16;
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10156D0E4(v2, v7, &v14);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v8 = (*(*v2[23] + 88))(v2[23], *(v1 + 2));
  v9 = v2[23];
  v10 = *(v1 + 3);
  if ((v8 & 0x100) != 0)
  {
    (*(*v9 + 96))(v9, v10, v8 & 1);
  }

  else
  {
    (*(*v9 + 104))(v9, v10);
  }

  sub_10156D3B4(v2, *(v1 + 3));
  v11 = (*(*v2[23] + 112))(v2[23], *(v1 + 2));
  v12 = v2[23];
  v13 = *(v1 + 3);
  if ((v11 & 0x100) != 0)
  {
    (*(*v12 + 120))(v12, v13, v11 & 1);
  }

  else
  {
    (*(*v12 + 128))(v12, v13);
  }

  sub_10156D894(v2, *(v1 + 3));
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  operator delete();
}

void sub_10158BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  operator delete();
}

uint64_t sub_10158BDFC(uint64_t a1, void **a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v13 = a2;
  v8 = sub_10158C100(a1, a2);
  *__p = *a5;
  v12 = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  v9 = sub_10158BEAC((v8 + 56), a3, a4, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v9;
}

void sub_10158BE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10158BEAC(unint64_t *a1, unint64_t a2, unint64_t a3, __n128 *a4)
{
  v12[0] = a2;
  if (a2 - 1 >= a3)
  {
    v10 = *a1;
    if (*a1)
    {
      if (a1[3] == v10)
      {
        LODWORD(v10) = 0;
        goto LABEL_11;
      }

      LODWORD(v10) = 0;
    }

LABEL_14:
    LODWORD(v9) = 0;
    return v9 | v10;
  }

  if (a1[3] && *a1 != a3)
  {
    *a1 = 0;
    v7 = a1 + 2;
    sub_10004EC58((a1 + 1), a1[2]);
    a1[1] = v7;
    a1[3] = 0;
    *v7 = 0;
  }

  *a1 = a3;
  v12[2] = v12;
  v8 = sub_10090C784((a1 + 1), v12);
  sub_100015184((v8 + 5), a4);
  v9 = *a1;
  if (!*a1)
  {
    LODWORD(v10) = 1;
    return v9 | v10;
  }

  LODWORD(v10) = 1;
  if (a1[3] != v9)
  {
    goto LABEL_14;
  }

LABEL_11:
  LODWORD(v9) = 256;
  return v9 | v10;
}

void sub_10158BFAC(uint64_t **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100007A6C(a1, a2);
  if (a1 + 1 != v5 && (v6 = v5, v9 = *(v5 + 56), v7 = (v5 + 56), (v8 = v9) != 0) && v6[10] == v8)
  {
    v10 = (v7 - 24);
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    sub_10158C054(v7, a3);
    sub_1000194D8(a1, v6);
    sub_100E26FF0(v10);

    operator delete(v6);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

_BYTE *sub_10158C054@<X0>(_BYTE *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(result + 1);
  v3 = result + 16;
  if (v2 != (result + 16))
  {
    do
    {
      result = sub_1006AD8F0(&v8, v2[5], v2[6], a2);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
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

      v2 = v6;
    }

    while (v6 != v3);
  }

  return result;
}

void sub_10158C0E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10158C100(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10158C1B4();
  }

  return v2;
}

uint64_t sub_10158C260(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100E26FF0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_10158C3B4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

uint64_t PhonebookHandler::PhonebookHandler(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t *a4)
{
  *a1 = off_101F4FC98;
  v8 = (a1 + 8);
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::OsLogContext::OsLogContext(&v43, kCtLoggingSystemName, "pb");
  if (v9)
  {
    dispatch_retain(v9);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    dispatch_retain(v9);
    dispatch_retain(v9);
    v11 = dispatch_queue_create_with_target_V2("PhonebookHandler", v10, v9);
  }

  else
  {
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v11 = dispatch_queue_create("PhonebookHandler", v12);
  }

  v13 = v11;
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 24) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 32) = v9;
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

  ctu::OsLogLogger::OsLogLogger(v41, &v43);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v41);
  ctu::OsLogLogger::~OsLogLogger(v41);
  ctu::OsLogContext::~OsLogContext(&v43);
  if (v9)
  {
    dispatch_release(v9);
  }

  v42[0] = off_101E2B528;
  v42[1] = sub_1000A8514;
  v42[3] = v42;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v14) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v42);
  *a1 = off_101F4FC98;
  *(a1 + 56) = *a2;
  v15 = *(a2 + 8);
  *(a1 + 64) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  v17 = *(a1 + 24);
  object = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  (*(*v16 + 24))(&v43, v16, &object);
  *(a1 + 72) = v43;
  v43.var0 = 0;
  v43.var1.fRef = 0;
  if (object)
  {
    dispatch_release(object);
  }

  Registry::getCommandDriversFactory(&v43, *a2);
  var0 = v43.var0;
  v19 = *(a1 + 24);
  v39 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  (*(*var0 + 56))(var0, &v39);
  if (v39)
  {
    dispatch_release(v39);
  }

  v20 = a3;
  if (v43.var1.fRef)
  {
    sub_100004A34(v43.var1.fRef);
  }

  *(a1 + 128) = 0;
  v21 = (a1 + 128);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = a1 + 128;
  v43.var0 = 0;
  v43.var1.fRef = 0;
  v44 = 0;
  (*(**a4 + 16))(&v43);
  v22 = v43.var0;
  if (v43.var0 != &v43.var1)
  {
    do
    {
      v23 = *v21;
      if (!*v21)
      {
LABEL_40:
        operator new();
      }

      v24 = *(v22 + 8);
      while (1)
      {
        while (1)
        {
          v25 = v23;
          v26 = *(v23 + 32);
          if (v26 <= v24)
          {
            break;
          }

          v23 = *v25;
          if (!*v25)
          {
            goto LABEL_40;
          }
        }

        if (v26 >= v24)
        {
          break;
        }

        v23 = v25[1];
        if (!v23)
        {
          goto LABEL_40;
        }
      }

      v28 = *(v22 + 5);
      v27 = *(v22 + 6);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = v25[10];
      v25[9] = v28;
      v25[10] = v27;
      if (v29)
      {
        sub_100004A34(v29);
      }

      v30 = *(v22 + 1);
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = v30->var0;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = *(v22 + 2);
          v32 = v31->var0 == v22;
          v22 = v31;
        }

        while (!v32);
      }

      v22 = v31;
    }

    while (v31 != &v43.var1);
  }

  sub_10006EC28(&v43, v43.var1.fRef);
  sub_100109304((a1 + 144), &rest::kDefaultRegistrationStatuses);
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  sub_10000501C(&__p, "PhonebookHandler");
  v33 = *(a1 + 24);
  v36 = v33;
  if (v33)
  {
    dispatch_retain(v33);
  }

  v35 = *v20;
  if (*v20)
  {
    dispatch_retain(*v20);
  }

  ctu::RestModule::RestModule();
  if (v35)
  {
    dispatch_release(v35);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (v38 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  return a1;
}

void sub_10158CBE8(uint64_t a1)
{
  *a1 = off_101F4FC98;
  sub_10032D3A4(a1 + 224, *(a1 + 232));
  v2 = *(a1 + 216);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 200);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 168, *(a1 + 176));
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  sub_101590448(*(a1 + 128));
  v4 = *(a1 + 112);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  PhonebookInterface::~PhonebookInterface(a1);
}

void sub_10158CCF0(uint64_t a1)
{
  sub_10158CBE8(a1);

  operator delete();
}

void sub_10158CD28(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
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

void sub_10158CE28(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  v12 = 0;
  v13 = 0;
  (*(***a1 + 8))(&v12);
  if (v12 && isReal())
  {
    v11 = 0;
    *buf = CFPreferencesCopyValue(*(*(a1 + 8) + 8 * (a2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100222990(&v11, buf);
    if (v11)
    {
      *(&v10 + 1) = 0;
      *buf = CFPreferencesCopyValue(*(*(a1 + 16) + 8 * (a2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100222990(&v10 + 1, buf);
      *&v10 = 0;
      *buf = CFPreferencesCopyValue(*(*(a1 + 24) + 8 * (a2 == 2)), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100222990(&v10, buf);
      if (v10 != 0)
      {
        (*(***(a1 + 32) + 16))(**(a1 + 32), v12 + 24, @"PNRPhoneNumber");
        (*(***(a1 + 32) + 16))(**(a1 + 32), v12 + 24, @"CopiedSIMPhoneNumber", v10, @"phonebook", 0, 1, 0);
        v5 = *(v4 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = subscriber::asString();
          v7 = (v12 + 24);
          v8 = *(v12 + 47);
          v9 = v8;
          if ((v8 & 0x80u) != 0)
          {
            v8 = *(v12 + 32);
          }

          if (v9 < 0)
          {
            v7 = *(v12 + 24);
          }

          if (!v8)
          {
            v7 = "<invalid>";
          }

          *buf = 136315394;
          *&buf[4] = v6;
          v15 = 2080;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I migrated phonebook storage for slot: %s, persona: %s", buf, 0x16u);
        }
      }

      CFPreferencesSetValue(*(*(a1 + 16) + 8 * (a2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 48) + 8 * (a2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 8) + 8 * (a2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSetValue(*(*(a1 + 24) + 8 * (a2 == 2)), 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100005978(&v10);
      sub_100005978(&v10 + 1);
    }

    sub_100005978(&v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_10158D174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, const void *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100005978(&a10);
  sub_100005978(&a11);
  sub_100005978(&a12);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_10158D1CC(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158D2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158D3D0(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v38;
  v3 = v39;
  if (v38 != v39)
  {
    v4 = v40;
    do
    {
      if (v40(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v39);
    v35 = v39;
    if (v2 != v39)
    {
      v5 = (a1 + 176);
      v6 = (a1 + 152);
      do
      {
        v7 = *v2;
        v36 = 0;
        v37 = 0;
        sub_10006BCA8(&v36, a1 + 120, v7);
        v8 = v36;
        if (v36)
        {
          v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v7);
          v10 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            sub_10006BD2C(a1 + 120, v7);
            v11 = asString();
            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PhoneBook state: %s", buf, 0xCu);
          }

          (*(*v8 + 264))(v8);
          v12 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = sub_10006BD2C(a1 + 120, v7);
            v14 = (v13 + 1);
            if (!v13)
            {
              v14 = &kInvalidPersonalityId;
            }

            v15 = *(v14 + 23);
            v16 = (v15 & 0x80u) != 0;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v14 + 1);
            }

            if (v16)
            {
              v14 = *v14;
            }

            if (!v15)
            {
              v14 = "<invalid>";
            }

            *buf = 136315138;
            *&buf[4] = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I associated persona: %s", buf, 0xCu);
            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v17 = (*(*v8 + 192))(v8);
            CSIPhoneNumber::getFullNumber(buf, v17);
            v18 = buf;
            if (v42 < 0)
            {
              v18 = *buf;
            }

            *v43 = 136315138;
            v44 = v18;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I copied SIM phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }

            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v19 = (*(*v8 + 160))(v8);
            CSIPhoneNumber::getFullNumber(buf, v19);
            v20 = buf;
            if (v42 < 0)
            {
              v20 = *buf;
            }

            *v43 = 136315138;
            v44 = v20;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I cached phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }

            v12 = *v9;
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v21 = (*(*v8 + 176))(v8);
            CSIPhoneNumber::getFullNumber(buf, v21);
            v22 = buf;
            if (v42 < 0)
            {
              v22 = *buf;
            }

            *v43 = 136315138;
            v44 = v22;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PNR phone number: %s", v43, 0xCu);
            if (v42 < 0)
            {
              operator delete(*buf);
            }
          }

          v23 = *v5;
          if (*v5)
          {
            v24 = a1 + 176;
            do
            {
              if (*(v23 + 28) >= v7)
              {
                v24 = v23;
              }

              v23 = *(v23 + 8 * (*(v23 + 28) < v7));
            }

            while (v23);
            if (v24 != v5 && v7 >= *(v24 + 28))
            {
              v25 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v26 = CSIBOOLAsString(*(v24 + 32));
                *buf = 136315138;
                *&buf[4] = v26;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I fSmsOnline: %s", buf, 0xCu);
              }
            }
          }

          v27 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
          {
            v28 = sub_10006BD2C(a1 + 120, v7);
            if (v28)
            {
              v29 = *(v28 + 4);
            }

            else
            {
              v29 = 0;
            }

            v30 = CSIBOOLAsString(v29 & 1);
            *buf = 136315138;
            *&buf[4] = v30;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPhoneNumberRegistrationState: %s", buf, 0xCu);
          }

          v31 = *v6;
          if (*v6)
          {
            v32 = a1 + 152;
            do
            {
              if (*(v31 + 28) >= v7)
              {
                v32 = v31;
              }

              v31 = *(v31 + 8 * (*(v31 + 28) < v7));
            }

            while (v31);
            if (v32 != v6 && v7 >= *(v32 + 28))
            {
              v33 = *v9;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
              {
                v34 = asString();
                *buf = 136315138;
                *&buf[4] = v34;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I fRegStatus: %s", buf, 0xCu);
              }
            }
          }
        }

        if (v37)
        {
          sub_100004A34(v37);
        }

        do
        {
          ++v2;
        }

        while (v2 != v3 && (v4(*v2) & 1) == 0);
      }

      while (v2 != v35);
    }
  }
}

void sub_10158D970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158D9B0(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  v9 = a2;
  v10 = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  sub_1000224C8(&v12, a5);
  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158DB90(void **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a4 == 2 && (!(*(**a3 + 208))() || (*(**a3 + 216))()))
  {
    v10 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Selected phone book type is kOwnPhoneNumbers, and MSISDN does not exist/write locked. Sending kPhoneBookSelected", &v19, 2u);
    }

    (*(**a3 + 40))(*a3, 2);
    (*(*a1[9] + 280))();
LABEL_20:
    sub_10000FFD0(a5, 1);
    return;
  }

  v11 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Select Phone Book called for %s", &v19, 0xCu);
  }

  v12 = sub_10006BD2C((a1 + 15), a2);
  if (v12 && *v12 > 1)
  {
    (*(**a3 + 40))(*a3, a4);
    (*(**a3 + 16))();
    v14 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      sub_10006BD2C((a1 + 15), a2);
      v15 = asString();
      v19 = 136315138;
      v20 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Current Phone Book model state: %s", &v19, 0xCu);
    }

    v16 = sub_10006BD2C((a1 + 15), a2);
    if (v16 && *v16 > 2)
    {
      (*(*a1[9] + 280))(a1[9], a2);
      v18 = *(*(*a1[6] + 16))(a1[6], a2);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Notified the clients that Phone Book has been selected", &v19, 2u);
      }
    }

    else
    {
      v17 = sub_10006BD2C((a1 + 15), a2);
      if (v17)
      {
        *v17 = 3;
      }

      (*(*a1[11] + 64))(a1[11], a2, a4);
    }

    goto LABEL_20;
  }

  sub_10000FFD0(a5, 0);
  v13 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I The Phone Book is not ready", &v19, 2u);
  }
}

void sub_10158E03C(uint64_t a1, int a2, int a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  sub_1000AE428(&v13, a4);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&v14, *a5, *(a5 + 1));
  }

  else
  {
    v14 = *a5;
    v15 = *(a5 + 2);
  }

  sub_1000224C8(&v16, a6);
  v9 = *(a1 + 16);
  if (v9)
  {
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158E1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    sub_10034F8E8(v38 + 16);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158E250(uint64_t a1, uint64_t a2, uint64_t a3, CSIPhoneNumber *a4, uint64_t a5, uint64_t a6)
{
  v69 = 0;
  v70 = 0;
  sub_10006BCA8(&v69, a1 + 120, a2);
  if (v69)
  {
    (*(*v69 + 176))(v69);
    v12 = CSIPhoneNumber::operator==();
    __dst[0] = 0;
    __dst[1] = 0;
    v68 = 0;
    v13 = sub_10006BD2C(a1 + 120, a2);
    v14 = (v13 + 1);
    if (!v13)
    {
      v14 = &kInvalidPersonalityId;
    }

    if (v14[23] < 0)
    {
      sub_100005F2C(__dst, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      v68 = *(v14 + 2);
      *__dst = v15;
    }

    if ((isReal() & 1) == 0)
    {
      v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.var0) = 0;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "writeEntry_sync - persona is undefined yet", &buf, 2u);
      }

LABEL_41:
      v41 = v69;
      if (v12)
      {
        CSIPhoneNumber::CSIPhoneNumber(&buf);
      }

      else
      {
        sub_1000AE428(&buf, a4);
      }

      (*(*v41 + 152))(v41, &buf);
      if (v65 < 0)
      {
        operator delete(__p);
      }

      if (v63 < 0)
      {
        operator delete(v62);
      }

      if (v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      if ((*(*v41 + 48))(v41) == 2 && (!(*(*v41 + 208))(v41) || (*(*v41 + 216))(v41)))
      {
        v42 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          CSIPhoneNumber::getFullNumber(&buf.var0, a4);
          v43 = buf.var2.__rep_.__s.__data_[15] >= 0 ? &buf : *&buf.var0;
          *v73 = 136315138;
          *&v73[4] = v43;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Selected phone book type is kOwnPhoneNumbers, and MSISDN does not exist/write locked. Writing '%s' to preferences file", v73, 0xCu);
          if (buf.var2.__rep_.__s.__data_[15] < 0)
          {
            operator delete(*&buf.var0);
          }
        }

        (*(**(a1 + 72) + 296))(*(a1 + 72), a2);
      }

      else
      {
        v44 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          CSIPhoneNumber::getFullNumber(&buf.var0, a4);
          v45 = buf.var2.__rep_.__s.__data_[15] >= 0 ? &buf : *&buf.var0;
          *v73 = 136315138;
          *&v73[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Write Entry called with number '%s'", v73, 0xCu);
          if (buf.var2.__rep_.__s.__data_[15] < 0)
          {
            operator delete(*&buf.var0);
          }
        }

        v46 = sub_10006BD2C(a1 + 120, a2);
        if (!v46 || *v46 <= 3)
        {
          v47 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          v48 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
          v49 = 0;
          if (v48)
          {
            LOWORD(buf.var0) = 0;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Phone book is not in Available state", &buf, 2u);
            v49 = 0;
          }

          goto LABEL_83;
        }

        v50 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Sending out the write entry to the Command Driver", &buf, 2u);
        }

        v51 = *(a1 + 88);
        v52 = (*(*v41 + 48))(v41);
        (*(*v51 + 56))(v51, a2, v52, a3, a4, a5);
      }

      v53 = *(a1 + 112);
      if (v53)
      {
        v54 = std::__shared_weak_count::lock(v53);
        if (v54)
        {
          v55 = v54;
          v56 = *(a1 + 104);
          if (v56)
          {
            (*(*v56 + 304))(v56, a2, 0, "writeEntry_sync");
          }

          sub_100004A34(v55);
        }
      }

      v49 = 1;
LABEL_83:
      sub_10000FFD0(a6, v49);
      if (SHIBYTE(v68) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_85;
    }

    if (v12)
    {
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
      *&buf.var0 = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, &buf);
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
          goto LABEL_34;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
LABEL_34:
      (*(*v25 + 32))(v25, __dst, @"CachedPhoneNumber", @"phonebook", 0, 1);
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      goto LABEL_41;
    }

    v66 = 0;
    CSIPhoneNumber::getFullNumber(&buf.var0, a4);
    if (buf.var2.__rep_.__s.__data_[15] >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = *&buf.var0;
    }

    v71 = 0;
    v72 = 0;
    if (ctu::cf::convert_copy(&v72, p_buf, 0x8000100, kCFAllocatorDefault, v28))
    {
      v30 = v71;
      v71 = v72;
      *v73 = v30;
      sub_100005978(v73);
    }

    v66 = v71;
    v71 = 0;
    sub_100005978(&v71);
    if (buf.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&buf.var0);
    }

    v31 = Registry::getServiceMap(*(a1 + 56));
    v32 = v31;
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

    std::mutex::lock(v31);
    *&buf.var0 = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, &buf);
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
LABEL_38:
        (*(*v39 + 16))(v39, __dst, @"CachedPhoneNumber", v66, @"phonebook", 0, 1, 0);
        if ((v40 & 1) == 0)
        {
          sub_100004A34(v38);
        }

        sub_100005978(&v66);
        goto LABEL_41;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    goto LABEL_38;
  }

  sub_10000FFD0(a6, 0);
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "writeEntry_sync - No phonebook model", &buf, 2u);
  }

LABEL_85:
  if (v70)
  {
    sub_100004A34(v70);
  }
}

void sub_10158EBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  sub_100004A34(v41);
  if (a41 < 0)
  {
    operator delete(__p);
  }

  v44 = *(v42 - 152);
  if (v44)
  {
    sub_100004A34(v44);
  }

  _Unwind_Resume(a1);
}

void sub_10158ECA8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1000224C8(&v7, a3);
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

void sub_10158EDEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158EE04(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_100DDDB74(&v7, a3);
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

void sub_10158EF48(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158EF60(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  sub_1012CC8F0(&v9, a4);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158F098(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10158F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v7, *a3, *(a3 + 8));
  }

  else
  {
    *v7 = *a3;
    v7[2] = *(a3 + 16);
  }

  sub_1000AE428(&v8, a4);
  v6 = *(a1 + 16);
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158F284(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 39) < 0)
  {
    operator delete(*(v17 + 16));
  }

  sub_10004F058(a1);
}

void sub_10158F2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1000AE428(&v6, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158F4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10158F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000AE428(&v5, a3);
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

uint64_t sub_10158F648(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a2;
  v8[0] = a1;
  v8[1] = &v9;
  v8[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v4 = sub_1015943D8(v8);
      return v4 & 1;
    }

    v5 = *(a1 + 32) == 0;
  }

  else
  {
    v5 = 1;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1015946E4;
  v10[3] = &unk_101F502A8;
  v10[4] = a1 + 8;
  v10[5] = v8;
  v11 = v10;
  v6 = *(a1 + 24);
  v17 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v5)
  {
    v13 = sub_1000597B4;
    v14 = &unk_101F501E8;
    v15 = &v17;
    v16 = &v11;
    dispatch_sync(v6, block);
  }

  else
  {
    v13 = sub_10006A710;
    v14 = &unk_101F50208;
    v15 = &v17;
    v16 = &v11;
    dispatch_async_and_wait(v6, block);
  }

  v4 = v17;
  return v4 & 1;
}

void sub_10158F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
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

void sub_10158F8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158F9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158FAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    atomic_fetch_add_explicit((a5 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158FBF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    atomic_fetch_add_explicit((a4 + 8), 1uLL, memory_order_relaxed);
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

void sub_10158FD0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v9 = *(a2 + 24);
  v6 = a3[1];
  v10 = *a3;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10158FEB4(void *a1, uint64_t a2)
{
  if ((operator==() & 1) == 0)
  {
    v4 = a1[18];
    if (v4 != a1 + 19)
    {
      v5 = (a2 + 8);
      while (1)
      {
        v6 = *(v4 + 28);
        v13 = v6;
        v7 = *v5;
        if (!*v5)
        {
          goto LABEL_13;
        }

        v8 = a2 + 8;
        do
        {
          if (*(v7 + 28) >= v6)
          {
            v8 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 28) < v6));
        }

        while (v7);
        if (v8 == v5 || *(v8 + 28) > v6)
        {
          goto LABEL_13;
        }

        v9 = sub_1000A8C4C(a2, &v13);
        if (*v9 != HIDWORD(v13))
        {
          break;
        }

LABEL_14:
        v10 = v4[1];
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
            v11 = v4[2];
            v12 = *v11 == v4;
            v4 = v11;
          }

          while (!v12);
        }

        v4 = v11;
        if (v11 == a1 + 19)
        {
          return;
        }
      }

      v6 = v13;
LABEL_13:
      sub_10158FFB4(a1, v6);
      goto LABEL_14;
    }
  }
}

void sub_10158FFB4(void *a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  memset(&__p, 0, sizeof(__p));
  v6 = 0;
  v4 = 0;
  sub_10006C7E4(a1, a2, &__p, &v10, v8, &v6, &v5, &v4);
  sub_101590184(a1, a2, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10);
  }
}

void sub_101590058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_101590094(void *a1, uint64_t a2)
{
  v2 = a1[21];
  v3 = a1 + 22;
  if (v2 != a1 + 22)
  {
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *(v2 + 28);
      v14 = v7;
      v8 = *v6;
      if (!*v6)
      {
        goto LABEL_12;
      }

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
      if (v9 == v6 || *(v9 + 7) > v7)
      {
        goto LABEL_12;
      }

      v10 = sub_1000A8C4C(a2, &v14);
      if (*v10 != BYTE4(v14))
      {
        break;
      }

LABEL_13:
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
      if (v12 == v3)
      {
        return;
      }
    }

    v7 = v14;
LABEL_12:
    sub_10158FFB4(a1, v7);
    goto LABEL_13;
  }
}

uint64_t *sub_101590184(void *a1, uint64_t a2, int a3)
{
  v5 = a1[19];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 19;
  do
  {
    if (*(v5 + 28) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 28) < a2));
  }

  while (v5);
  if (v6 != a1 + 19 && *(v6 + 7) <= a2)
  {
    v7 = (v6[4] & 0xFFFFFFFE) == 4;
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

  v8 = a1[22];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = a1 + 22;
  do
  {
    if (*(v8 + 28) >= a2)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 28) < a2));
  }

  while (v8);
  if (v9 != a1 + 22 && *(v9 + 7) <= a2)
  {
    v10 = *(v9 + 32);
    if (a3)
    {
LABEL_17:
      v11 = v10 & v7;
      v12 = (a1 + 15);
      result = sub_10006BD2C((a1 + 15), a2);
      if (result)
      {
        if ((v11 & 1) == *(result + 4))
        {
          return result;
        }
      }

      else
      {
        if ((v11 & 1) == 0)
        {
          return result;
        }

        v11 = 1;
      }

      goto LABEL_27;
    }
  }

  else
  {
LABEL_16:
    v10 = 0;
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v12 = (a1 + 15);
  result = sub_10006BD2C((a1 + 15), a2);
  if (!result || (*(result + 4) & 1) == 0)
  {
    return result;
  }

  v11 = 0;
LABEL_27:
  v14 = sub_10006BD2C(v12, a2);
  if (v14)
  {
    *(v14 + 4) = v11 & 1;
  }

  v15 = a1[9];
  v16 = sub_10006BD2C(v12, a2);
  if (v16)
  {
    v17 = *(v16 + 4);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*v15 + 320);

  return v18(v15, a2, v17 & 1);
}

uint64_t sub_101590334(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband refresh start received", v9, 2u);
  }

  v5 = sub_10006BD2C(a1 + 120, a2);
  if (v5)
  {
    v6 = v5;
    v7 = v5[4];
    if (v7)
    {
      (*(*v7 + 256))(v7, 1);
    }

    *(v6 + 5) = 0;
  }

  return (*(**(a1 + 88) + 80))(*(a1 + 88), a2);
}

void sub_101590448(char *a1)
{
  if (a1)
  {
    sub_101590448(*a1);
    sub_101590448(*(a1 + 1));
    v2 = *(a1 + 10);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

void sub_10159057C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101590650);
  __cxa_rethrow();
}

void sub_1015905BC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101590610(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101590650(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1015906A0(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 88);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  ctu::RestModule::disconnect((v2 + 192));
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_101590790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015907CC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v34 = *off_101F4FD30;
  v35 = *off_101F4FD20;
  v32 = *off_101F4FD50;
  v33 = *off_101F4FD40;
  v23 = 0;
  v24 = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
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
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  v21 = 0;
  v22 = 0;
  v12 = Registry::getServiceMap(*(v1 + 56));
  v13 = v12;
  if (v14 < 0)
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
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  std::mutex::unlock(v13);
  v21 = v20;
  v22 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v19);
  }

  *buf = &v23;
  v26 = &v33;
  v27 = &v35;
  v28 = &v32;
  v29 = &v21;
  v30 = v1;
  v31 = &v34;
  sub_10158CE28(buf, 1);
  sub_10158CE28(buf, 2);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10000501C(&v35, "/cc/props/registration_status");
  operator new();
}

void sub_101590F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_1000062D4(&a15);
  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
  }

  sub_100ECE348(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_10159109C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FEE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015910D4(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    v5[2] = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_100109E38(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    v12[2] = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10[0]);
  sub_10006DCAC(&v11, v12);
}

void sub_1015911D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1015911FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015912C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4FF68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015912FC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    v5[2] = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    v12[2] = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10[0]);
  sub_10006DCAC(&v11, v12);
}

void sub_1015913F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, void *a13)
{
  sub_10006DCAC(&a9, a10);
  sub_10006DCAC(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_101591424(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101591470(void *a1)
{
  *a1 = off_101F4FFE8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015914BC(void *a1)
{
  *a1 = off_101F4FFE8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101591594(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F4FFE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015915CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015915DC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10159172C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v17);
  if (v16)
  {
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101591778(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015917E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50068;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101591860(PhonebookDriverEventHandlerInterface *this)
{
  *this = off_101F500B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  PhonebookDriverEventHandlerInterface::~PhonebookDriverEventHandlerInterface(this);
}

void sub_1015918BC(PhonebookDriverEventHandlerInterface *this)
{
  *this = off_101F500B8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  PhonebookDriverEventHandlerInterface::~PhonebookDriverEventHandlerInterface(this);

  operator delete();
}

void sub_10159192C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_101591A78(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_101591BC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_101591CF8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a3;
        v11 = a3[1];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          sub_10158F7C4(v9, a2, v10, v11);
        }

        sub_10158F7C4(v9, a2, v10, 0);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101591DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *a4;
        v13 = a4[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          sub_10158F8D8(v11, a2, a3, v12, v13);
        }

        sub_10158F8D8(v11, a2, a3, v12, 0);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101591E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = *a4;
        v13 = a4[1];
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
          sub_10158FAE0(v11, a2, a3, v12, v13);
        }

        sub_10158FAE0(v11, a2, a3, v12, 0);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101591F20(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_101592070(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_1015921C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_10159230C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_10159245C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a3;
        v11 = a3[1];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          sub_10158FBF8(v9, a2, v10, v11);
        }

        sub_10158FBF8(v9, a2, v10, 0);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101592504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        sub_10004EFD0(&v20, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
        v12 = (*(**(v11 + 48) + 16))(*(v11 + 48), a2);
        v13 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v20;
          v14 = v21;
          v16 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
          *(buf.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Got %zu %s emergency numbers", &buf, 0x16u);
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          sub_1000D1184(v20, v21, ", ", 2uLL, &buf);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v24 = 136315394;
          *&v24[4] = v17;
          v25 = 2080;
          v26 = p_buf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Emergency numbers for %s: %s", v24, 0x16u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        v19 = *(v11 + 208);
        memset(&buf, 0, sizeof(buf));
        sub_10004EFD0(&buf, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
        (*(*v19 + 40))(v19, a3, &buf, a2);
        *v24 = &buf;
        sub_1000087B4(v24);
        buf.__r_.__value_.__r.__words[0] = &v20;
        sub_1000087B4(&buf);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101592788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1000087B4(&a17);
  a17 = &a10;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1015927C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *(*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315138;
          v12 = asString();
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N No %s emergency numbers provided. Clearing old emergency numbers.", &v11, 0xCu);
        }

        (*(**(v9 + 208) + 48))(*(v9 + 208), a3, a2);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101592954(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 88) + 24))(*(v1 + 88));
  operator delete();
}

__n128 sub_101592AB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50158;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101592AE8(void *a1)
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

uint64_t sub_101592B30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101592B7C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v12 = 0;
  v13 = 0;
  sub_10006BCA8(&v12, (v2 + 15), *(v1 + 8));
  v3 = v12;
  if (v12)
  {
    (*(*v12 + 24))(v12, *(v1 + 12));
    v4 = *(v1 + 8);
    v5 = v13;
    *buf = v3;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10158DB90(v2, v4, buf, *(v1 + 12), v1 + 40);
    if (v5)
    {
      sub_100004A34(v5);
LABEL_9:
      sub_100004A34(v5);
    }
  }

  else
  {
    v6 = *(*(*v2[6] + 16))(v2[6], *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    sub_10000FFD0(v1 + 40, 0);
    v5 = v13;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  sub_1012CBD18(&v9);
  return sub_1000049E0(&v8);
}

void sub_101592CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1012CBD18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101592D1C(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10158E250(*v1, *(v1 + 8), *(v1 + 12), (v1 + 16), v1 + 176, v1 + 200);
  sub_1012CC298(&v4);
  return sub_1000049E0(&v3);
}

void sub_101592D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1012CC298(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101592D8C(int **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received Fetch call", buf, 2u);
  }

  v4 = sub_10006BD2C(v2 + 120, v1[2]);
  if (v4 && *v4 > 3)
  {
    *buf = 0;
    v18 = 0;
    sub_10006BCA8(buf, v2 + 120, v1[2]);
    v6 = *buf;
    if (*buf)
    {
      v7 = *(v2 + 88);
      v8 = v1[2];
      v9 = (*(**buf + 48))(*buf);
      v10 = (*(*v6 + 64))(v6);
      (*(*v7 + 48))(v7, v8, v9, 1, *(v10 + 6));
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Fetch request sent out the Command Driver", v16, 2u);
      }

      sub_10000FFD0((v1 + 4), 1);
    }

    else
    {
      sub_10000FFD0((v1 + 4), 0);
      v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No phonebook model", v16, 2u);
      }
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    sub_10000FFD0((v1 + 4), 0);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Phone book is not available state", buf, 2u);
    }
  }

  sub_100EDD714(&v15);
  return sub_1000049E0(&v14);
}

void sub_101593084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100EDD714(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015930BC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  sub_10006BCA8(&v9, v2 + 120, *(v1 + 8));
  if (v9)
  {
    v3 = (*(*v9 + 96))(v9);
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Count: %zd", buf, 0xCu);
    }

    sub_100DDDDC4(v1 + 16, 1, v3);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    sub_100DDDDC4(v1 + 16, 0, 0);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1012CC8A0(&v8);
  return sub_1000049E0(&v7);
}

void sub_101593284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012CC8A0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015932C0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v37 = 0;
  v38 = 0;
  sub_10006BCA8(&v37, v2 + 120, *(v1 + 8));
  v3 = v37;
  if (v37)
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
    *v10 = 0u;
    sub_100E3F3A4(v10);
    v4 = (*(*v3 + 80))(v3, *(v1 + 12), v10);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Found the entry: %d", buf, 8u);
    }

    sub_1012CCBFC(v1 + 16, v4);
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", v10, 2u);
    }

    sub_100E3F3A4(v10);
    sub_1012CCBFC(v1 + 16, 0);
  }

  sub_10006BF90(v10);
  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_1012CCBAC(&v9);
  return sub_1000049E0(&v8);
}

void sub_1015934E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_10006BF90(&a11);
  v13 = *(v11 - 56);
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_1012CCBAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101593554(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = sub_10006BD2C(*v1 + 120, *(v1 + 8));
  if (v3 && *v3 > 1)
  {
    v14 = 0;
    v15 = 0;
    sub_10006BCA8(&v14, v2 + 120, *(v1 + 8));
    v5 = v14;
    if (v14)
    {
      if ((*(*v14 + 208))(v14) && !(*(*v5 + 216))(v5))
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Set phone number called, and MSISDN is writable", buf, 2u);
        }

        (*(*v5 + 40))(v5, 2);
        v11 = sub_10006BD2C(v2 + 120, *(v1 + 8));
        if (v11)
        {
          *v11 = 4;
        }
      }

      else
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Set phone number called, and MSISDN does not exist/write locked", buf, 2u);
        }

        (*(*v5 + 40))(v5, 2);
      }

      v7 = *(v1 + 8);
      *buf = off_101F50238;
      v17 = v2;
      v18 = v7;
      v19 = buf;
      sub_10158E250(v2, v7, 1, (v1 + 40), v1 + 16, buf);
      sub_10000FF50(buf);
    }

    else
    {
      v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
      }
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Phone book is not ready to write", buf, 2u);
    }
  }

  sub_1012CCF44(&v13);
  return sub_1000049E0(&v12);
}

void sub_1015938D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012CCF44(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101593994(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015939C8(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_101593A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101593A5C(uint64_t *a1)
{
  v1 = *a1;
  v44 = a1;
  v45 = v1;
  v2 = *v1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  CSIPhoneNumber::getFullNumber(v49, (v1 + 24));
  v3 = SHIBYTE(v50);
  if (v50 >= 0)
  {
    v4 = HIBYTE(v50);
  }

  else
  {
    v4 = v49[1];
  }

  v5 = *(v2 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      v25 = *(v1 + 8);
      v28 = *(v25 + 24);
      v26 = (v25 + 24);
      v27 = v28;
      v29 = *(v26 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v26 + 1);
      }

      if (v30 < 0)
      {
        v26 = v27;
      }

      if (!v29)
      {
        v26 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Reset PNR phone number for persona %s", buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 56));
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
    *buf = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
    if (v37)
    {
      v38 = v37[3];
      v22 = v37[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v39 = 0;
        goto LABEL_69;
      }
    }

    else
    {
      v38 = 0;
    }

    std::mutex::unlock(v32);
    v22 = 0;
    v39 = 1;
LABEL_69:
    (*(*v38 + 32))(v38, *(v1 + 8) + 24, @"PNRPhoneNumber", @"phonebook", 0, 1);
    if (v39)
    {
      goto LABEL_56;
    }

LABEL_55:
    sub_100004A34(v22);
    goto LABEL_56;
  }

  if (v6)
  {
    v7 = v49[0];
    v8 = *(v1 + 8);
    v11 = *(v8 + 24);
    v9 = v8 + 24;
    v10 = v11;
    if (v3 >= 0)
    {
      v7 = v49;
    }

    v12 = *(v9 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v9 + 8);
    }

    if (v13 < 0)
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

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Store PNR phone number %s for persona %s", buf, 0x16u);
  }

  v15 = Registry::getServiceMap(*(v2 + 56));
  v16 = v15;
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

  std::mutex::lock(v15);
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
      v24 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_38:
  v40 = *(v1 + 8);
  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(__dst, v49[0], v49[1]);
  }

  else
  {
    *__dst = *v49;
    v47 = v50;
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v53 = v47;
  }

  v51 = 0;
  if (SHIBYTE(v53) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v53;
  }

  v54 = 0;
  if (ctu::cf::convert_copy())
  {
    v41 = v51;
    v51 = v54;
    v55 = v41;
    sub_100005978(&v55);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v48 = v51;
  v51 = 0;
  sub_100005978(&v51);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v23 + 16))(v23, v40 + 24, @"PNRPhoneNumber", v48, @"phonebook", 0, 1, 0, v44, v45);
  sub_100005978(&v48);
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    if (v24)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(__dst[0]);
  if ((v24 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  __p[0] = 0;
  __p[1] = 0;
  sub_10006BCA8(__p, v2 + 120, *(*(v1 + 8) + 52));
  if (__p[0])
  {
    (*(*__p[0] + 168))(__p[0], v1 + 24);
  }

  v42 = *(*(v1 + 8) + 52);
  sub_10000501C(buf, "My Number");
  (*(*v2 + 88))(v2, v42, buf, v1 + 24);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  sub_1012CD07C(&v45);
  return sub_1000049E0(&v44);
}

void sub_101593FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1012CD07C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015940B8(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(__p, (v1 + 16));
    v4 = v16 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request to set the Voice mail box number with %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_10006BD2C(v2 + 120, *(v1 + 8));
  if (v5 && *v5 > 1)
  {
    *buf = 0uLL;
    sub_10006BCA8(buf, v2 + 120, *(v1 + 8));
    if (*buf)
    {
      v7 = *(v2 + 88);
      v8 = *(v1 + 8);
      v9 = (*(**buf + 248))(*buf, 4);
      sub_10000501C(__p, "");
      if (v9)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }

      (*(*v7 + 56))(v7, v8, v10, 1, v1 + 16, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No phonebook model", __p, 2u);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Phone book is not ready to write", __p, 2u);
    }
  }

  sub_1010B5638(&v14);
  return sub_1000049E0(&v13);
}

void sub_101594388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1010B5638(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015943D8(uint64_t *a1)
{
  v16 = 0;
  v17 = 0;
  v2 = *a1;
  sub_10006BCA8(&v16, *a1 + 120, *a1[1]);
  if (!v16)
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", __p, 2u);
    }

    goto LABEL_16;
  }

  v3 = (*(*v16 + 232))(v16);
  v4 = a1[2];
  *v4 = *v3;
  std::string::operator=((v4 + 8), (v3 + 8));
  std::string::operator=((v4 + 32), (v3 + 32));
  v5 = *(v3 + 56);
  *(v4 + 60) = *(v3 + 60);
  *(v4 + 56) = v5;
  std::string::operator=((v4 + 64), (v3 + 64));
  v6 = *(v3 + 88);
  *(v4 + 96) = *(v3 + 96);
  *(v4 + 88) = v6;
  std::string::operator=((v4 + 104), (v3 + 104));
  std::string::operator=((v4 + 128), (v3 + 128));
  *(v4 + 152) = *(v3 + 152);
  CSIPhoneNumber::getBaseNumber(__p, a1[2]);
  if ((v15 & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = __p[1];
  operator delete(__p[0]);
  if (!v11)
  {
LABEL_14:
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Voice mail box number is empty", __p, 2u);
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_4:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(__p, a1[2]);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Voice mail box number is %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = 1;
LABEL_17:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v9;
}

void sub_1015946B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015946EC(uint64_t **a1)
{
  v1 = **a1;
  if (*(*a1 + 12))
  {
    subscriber::makeSimSlotRange();
    v2 = v33;
    v3 = v34;
    if (v33 != v34)
    {
      v4 = v35;
      do
      {
        if (v35(*v2))
        {
          break;
        }

        ++v2;
      }

      while (v2 != v34);
      v5 = v34;
      if (v2 != v34)
      {
        v29 = v1;
        do
        {
          v6 = *v2;
          v7 = sub_10006BD2C(v1 + 120, *v2);
          if (v7)
          {
            *v7 = 1;
          }

          ServiceMap = Registry::getServiceMap(*(v1 + 56));
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
          *buf = v10;
          v14 = sub_100009510(&v9[1].__m_.__sig, buf);
          if (v14)
          {
            v16 = v14[3];
            v15 = v14[4];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v9);
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v1 = v29;
              sub_100004A34(v15);
              v17 = 0;
              if (!v16)
              {
                goto LABEL_16;
              }

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
          if (!v16)
          {
LABEL_16:
            v18 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v6);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Subscriber Service is not up yet. Will try again later", buf, 2u);
            }

            goto LABEL_21;
          }

LABEL_20:
          v30 = 4;
          sub_1008235B0(buf, &v30, 1);
          (*(*v16 + 168))(v16, v6, buf);
          sub_10006DCAC(buf, v32);
LABEL_21:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          do
          {
            ++v2;
          }

          while (v2 != v3 && (v4(*v2) & 1) == 0);
        }

        while (v2 != v5);
      }
    }
  }

  else
  {
    subscriber::makeSimSlotRange();
    v19 = v33;
    v20 = v34;
    if (v33 != v34)
    {
      v21 = v35;
      do
      {
        if (v35(*v19))
        {
          break;
        }

        ++v19;
      }

      while (v19 != v34);
      v22 = v34;
      while (v19 != v22)
      {
        v23 = *v19;
        v24 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *v19);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Phone book driver has gone down, clearing off the phone book model", buf, 2u);
        }

        v25 = sub_10006BD2C(v1 + 120, v23);
        if (v25)
        {
          *v25 = 0;
        }

        v26 = sub_10006BD2C(v1 + 120, v23);
        v27 = v26;
        if (v26)
        {
          v28 = v26[4];
          if (v28)
          {
            (*(*v28 + 256))(v28, 1);
          }

          *(v27 + 5) = 0;
        }

        do
        {
          ++v19;
        }

        while (v19 != v20 && (v21(*v19) & 1) == 0);
      }
    }
  }

  operator delete();
}

void sub_101594B30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v1 + 3);
        *buf = 67109120;
        v12 = v10;
        v7 = "#I Error in Fetch: %d";
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v1 + 3);
        *buf = 67109120;
        v12 = v8;
        v7 = "#I Error in Write Entry: %d";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 8u);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v6 = *(v1 + 3);
      *buf = 67109120;
      v12 = v6;
      v7 = "#I Error in PB State : %d";
      goto LABEL_14;
    }

    v4 = (v1 + 2);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 3);
      *buf = 67109120;
      v12 = v9;
      v7 = "#I Error in Get Capabilities: %d";
      goto LABEL_14;
    }
  }

LABEL_15:
  (*(**(v2 + 72) + 304))(*(v2 + 72), *v4);
LABEL_16:
  operator delete();
}

void sub_101594E00(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10006BD2C(v2 + 120, *(*a1 + 2));
  if (v3)
  {
    *v3 = 2;
  }

  v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Phone book Command Driver ready", buf, 2u);
  }

  operator delete();
}

uint64_t *sub_101594EFC(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v17 = 0;
  v18 = 0;
  sub_10006BCA8(&v17, v2 + 120, *(v1 + 8));
  v3 = v17;
  if (v17)
  {
    v4 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (!v4 || *v4 <= 2)
    {
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 8));
      v6 = asString();
      *buf = 136315138;
      v20 = v6;
      v7 = "#N Got capabilities, not in kPBStatePhoneBookSelected state (%s)";
      v8 = v5;
      v9 = 12;
      goto LABEL_14;
    }

    (*(*v3 + 56))(v3, *(v1 + 16));
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Got Phone book capabilities", buf, 2u);
    }

    v12 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (v12)
    {
      *v12 = 4;
    }

    (*(**(v2 + 72) + 280))(*(v2 + 72), *(v1 + 8));
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#I Notified the clients that Phone Book has been selected";
      v8 = v13;
      v9 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }
  }

LABEL_15:
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1001FF3DC(&v16);
  return sub_1000049E0(&v15);
}

void sub_1015951F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101595238(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v16 = 0;
  v17 = 0;
  sub_10006BCA8(&v16, v2 + 120, *(v1 + 8));
  v3 = v16;
  if (v16)
  {
    v4 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (!v4 || *v4 <= 3)
    {
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 8));
      v6 = asString();
      *buf = 136315138;
      v19 = v6;
      v7 = "#N Fetch partially complete, not in kPhoneBookAvailable state (%s)";
      v8 = v5;
      v9 = 12;
      goto LABEL_6;
    }

    if ((*(*v3 + 48))(v3) == *(v1 + 12))
    {
      (*(*v3 + 72))(v3, *(v1 + 16));
    }

    else
    {
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "#I Fetch partial received for currently not set phone book";
        v8 = v11;
        v9 = 2;
LABEL_6:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

LABEL_13:
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Got partial fetch acknowledgement", buf, 2u);
    }

    goto LABEL_15;
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
  }

LABEL_15:
  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_1011BEED0(&v15);
  return sub_1000049E0(&v14);
}

void sub_101595520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1011BEED0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101595564(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  memset(&v26, 0, sizeof(v26));
  *v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  v21 = 0;
  v19 = 0;
  if (!sub_10006C7E4(v2, *(v1 + 2), &v26, v24, v22, &v21, &v20, &v19))
  {
LABEL_56:
    if (SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    operator delete();
  }

  v3 = *(v1 + 2);
  v4 = sub_10006BD2C(v2 + 120, *(v1 + 2));
  if (!v4)
  {
    __assert_rtn("checkForPhoneNumberChanged_sync", "PhonebookHandler.cpp", 786, "descr");
  }

  v39 = 0;
  v5 = off_101F4FD60[v3 == 2];
  *&v27.var0 = CFPreferencesCopyValue(v5, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100222990(&v39, &v27);
  v38 = 0;
  CSIPhoneNumber::CSIPhoneNumber();
  CSIPhoneNumber::getBaseNumber(&v36, &v27);
  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(buf, v36, *(&v36 + 1));
  }

  else
  {
    *buf = v36;
    *&buf[16] = v37;
  }

  v40 = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_100005F2C(&__dst, *buf, *&buf[8]);
  }

  else
  {
    __dst = *buf;
    size = *&buf[16];
  }

  v43 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v40;
    v40 = v43;
    v44 = v6;
    sub_100005978(&v44);
  }

  if (SHIBYTE(size) < 0)
  {
    operator delete(__dst);
  }

  v38 = v40;
  v40 = 0;
  sub_100005978(&v40);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (*(&v27.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v27.var2.__rep_.__l.__data_);
  }

  v7 = v38;
  if (v39 && v38)
  {
    if (CFEqual(v39, v38))
    {
      goto LABEL_41;
    }

    v7 = v38;
  }

  CFPreferencesSetValue(v5, v7, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  (*(**(v2 + 72) + 328))(*(v2 + 72), v3);
  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    memset(&v27, 0, 24);
    ctu::cf::assign();
    size = v27.var2.__rep_.__l.__size_;
    __dst = *&v27.var0;
    v9 = v27.var2.__rep_.__s.__data_[15];
    v10 = *&v27.var0;
    asString();
    p_dst = &__dst;
    if (v9 < 0)
    {
      p_dst = v10;
    }

    if (v27.var2.__rep_.__s.__data_[15] >= 0)
    {
      v12 = &v27;
    }

    else
    {
      v12 = *&v27.var0;
    }

    *buf = 136315394;
    *&buf[4] = p_dst;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sent out Phone Number Changed notification, old: %s, new: %s", buf, 0x16u);
    if (v27.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&v27.var0);
    }

    if (SHIBYTE(size) < 0)
    {
      operator delete(__dst);
    }
  }

LABEL_41:
  if ((*(v4 + 5) & 1) == 0)
  {
    *(v4 + 5) = 1;
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27.var0) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I sending out 'Phone Number Available'", &v27, 2u);
    }

    (*(**(v2 + 72) + 312))(*(v2 + 72), v3);
  }

  v14 = *(v2 + 112);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = *(v2 + 104);
      if (v16)
      {
        v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27.var0) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Updating phone_numbers rest property", &v27, 2u);
        }

        (*(*v16 + 432))(v16, v3, v4 + 1, v24, v22, 1);
        goto LABEL_54;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not get SettingsInterface to update phone numbers REST property", &v27, 2u);
    if (!v15)
    {
      goto LABEL_55;
    }
  }

  else if (!v15)
  {
LABEL_55:
    sub_100005978(&v38);
    sub_100005978(&v39);
    sub_101590184(v2, *(v1 + 2), v19);
    goto LABEL_56;
  }

LABEL_54:
  sub_100004A34(v15);
  goto LABEL_55;
}

void sub_101595BC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100004A34(v37);
  sub_100005978((v38 - 184));
  sub_100005978((v38 - 176));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  operator delete();
}

uint64_t *sub_101595CF4(uint64_t *a1)
{
  v1 = *a1;
  v35 = a1;
  v36 = v1;
  v2 = *v1;
  v37 = 0;
  v38 = 0;
  sub_10006BCA8(&v37, v2 + 120, *(v1 + 8));
  v3 = v37;
  if (!v37)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No phonebook model", &buf, 2u);
    }

    goto LABEL_44;
  }

  v4 = *(v1 + 12);
  if ((v4 - 4) < 2)
  {
    v5 = *(v1 + 8);
    v6 = *(v2 + 48);
    v7 = *(*v6 + 16);
    if (*(*(v1 + 16) + 8) - **(v1 + 16) != 432)
    {
      v20 = *v7(v6, v5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = asString();
        buf.var0 = 136315138;
        *&buf.var1 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Received 0 records for %s", &buf, 0xCu);
      }

      CSIPhoneNumber::CSIPhoneNumber(&buf);
      (*(*v3 + 224))(v3, &buf);
      if (v47 < 0)
      {
        operator delete(__p);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      goto LABEL_35;
    }

    v8 = *v7(v6, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asString();
      buf.var0 = 136315138;
      *&buf.var1 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received PB entry for %s", &buf, 0xCu);
    }

    v10 = **(v1 + 16);
    if (*(*(v1 + 16) + 8) != v10)
    {
      (*(*v3 + 224))(v3, v10 + 32);
      goto LABEL_35;
    }

LABEL_47:
    sub_1002030E0();
  }

  if (v4 == 2)
  {
    v12 = *(v1 + 16);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v1 + 8);
    v16 = *(v2 + 48);
    v17 = *(*v16 + 16);
    if (v13 == v14)
    {
      v22 = *v17(v16, v15);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N Received 0 records for Own Phone Numbers", &buf, 2u);
      }
    }

    else
    {
      v18 = *v17(v16, v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0x84BDA12F684BDA13 * ((*(*(v1 + 16) + 8) - **(v1 + 16)) >> 4);
        buf.var0 = 134217984;
        *&buf.var1 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Received PB entry for Own Phone Numbers, %lu", &buf, 0xCu);
      }

      if (*(*(v1 + 16) + 8) == **(v1 + 16))
      {
        goto LABEL_47;
      }

      (*(*v3 + 104))(v3);
    }

    (*(*v3 + 136))(v3, 1);
    v23 = *(v2 + 112);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = v24;
        v26 = *(v2 + 104);
        if (v26)
        {
          (*(*v26 + 304))(v26, *(v1 + 8), 0, "phonebookFetchComplete");
        }

        sub_100004A34(v25);
      }
    }
  }

LABEL_35:
  v27 = sub_10006BD2C(v2 + 120, *(v1 + 8));
  if (!v27 || *v27 <= 3)
  {
    v28 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    sub_10006BD2C(v2 + 120, *(v1 + 8));
    v29 = asString();
    buf.var0 = 136315138;
    *&buf.var1 = v29;
    v30 = "#N Fetch complete, not in kPhoneBookAvailable state (%s)";
    v31 = v28;
    v32 = 12;
    goto LABEL_39;
  }

  if ((*(*v3 + 48))(v3) == *(v1 + 12))
  {
    (*(*v3 + 72))(v3, *(v1 + 16));
    (*(**(v2 + 72) + 288))(*(v2 + 72), *(v1 + 8));
  }

  else
  {
    v33 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      v30 = "#I Fetch complete received for currently not set phone book";
      v31 = v33;
      v32 = 2;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &buf, v32);
    }
  }

LABEL_44:
  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_1011BEED0(&v36);
  return sub_1000049E0(&v35);
}

void sub_10159633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1011BEED0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015963B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received phone book entry update", buf, 2u);
  }

  *buf = 0;
  v10 = 0;
  sub_10006BCA8(buf, v2 + 120, *(v1 + 2));
  if (*buf)
  {
    v4 = *(v1 + 3);
    if (v4 <= 5 && ((1 << v4) & 0x34) != 0)
    {
      goto LABEL_8;
    }

    if (v4 == (*(**buf + 48))())
    {
      v4 = *(v1 + 3);
LABEL_8:
      (*(**(v2 + 88) + 48))(*(v2 + 88), *(v1 + 2), v4, *(v1 + 4), *(v1 + 4));
      goto LABEL_11;
    }

    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received an entry update for non-selected phone book", v8, 2u);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", v8, 2u);
    }
  }

LABEL_11:
  if (v10)
  {
    sub_100004A34(v10);
  }

  operator delete();
}

void sub_101596608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_101596650(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received phone book entry delete", &buf, 2u);
  }

  v17 = 0;
  v18 = 0;
  sub_10006BCA8(&v17, v2 + 120, *(v1 + 2));
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    v6 = *(v1 + 3);
    if ((v6 - 4) >= 2)
    {
      if (v6 == 2)
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for Own Phone Number", &buf, 2u);
        }

        sub_100E3F3A4(&buf);
        (*(*v4 + 104))(v4, &buf);
        sub_10006BF90(&buf);
        v11 = *(v2 + 112);
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = *(v2 + 104);
            if (v14)
            {
              (*(*v14 + 304))(v14, *(v1 + 2), 0, "phonebookEntryDelete");
            }

            sub_100004A34(v13);
          }
        }
      }
    }

    else
    {
      v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        buf.var0 = 136315138;
        *&buf.var1 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for (%s) Voice Mail Number", &buf, 0xCu);
      }

      CSIPhoneNumber::CSIPhoneNumber(&buf);
      (*(*v4 + 224))(v4, &buf);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }
    }

    v15 = *(v1 + 3);
    if (v15 == (*(*v5 + 48))(v5))
    {
      (*(*v5 + 88))(v5, *(v1 + 4));
    }

    else
    {
      v16 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for non-selected phone book", &buf, 2u);
      }
    }
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No phonebook model", &buf, 2u);
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

void sub_101596AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_101596B54(uint64_t **a1)
{
  v12 = 0;
  v1 = *a1;
  v2 = **a1;
  v13 = 0;
  sub_10006BCA8(&v12, v2 + 120, *(v1 + 2));
  if (v12)
  {
    v3 = sub_10006BD2C(v2 + 120, *(v1 + 2));
    if (v3 && *v3 > 3)
    {
      (*(**(v2 + 72) + 296))(*(v2 + 72), *(v1 + 2));
      v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = *(v1 + 6);
      *buf = 67109120;
      LODWORD(v15) = v11;
      v6 = "#I Write Entry complete for record: %d";
      v7 = v10;
      v8 = 8;
    }

    else
    {
      v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 2));
      v5 = asString();
      *buf = 136315138;
      v15 = v5;
      v6 = "#N Write complete, not in kPhoneBookAvailable state (%s)";
      v7 = v4;
      v8 = 12;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }
  }

LABEL_11:
  if (v13)
  {
    sub_100004A34(v13);
  }

  operator delete();
}

void sub_101596DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_101596E10(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(*v2[6] + 16))(v2[6], *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    v5 = CSIBOOLAsString(*(v1 + 16));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Phone Book State received with type (%s) and result (%s)", buf, 0x16u);
  }

  v6 = *(v1 + 3);
  if (v6 == 2)
  {
    if (*(v1 + 16) == 1)
    {
      (*(*v2[11] + 48))(v2[11], *(v1 + 2), 2, 1, 1);
      v7 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "#I PB State is ready for Own Phone Numbers, sent out read request for record 1";
        v9 = v7;
        v10 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else if ((v6 & 0xFFFFFFFE) == 4 && *(v1 + 16) == 1)
  {
    (*(*v2[11] + 48))(v2[11], *(v1 + 2));
    v11 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      *buf = 136315138;
      *&buf[4] = v12;
      v8 = "#I PB State is ready for %s, sent out read request for record 1";
      v9 = v11;
      v10 = 12;
      goto LABEL_11;
    }
  }

  v45 = 0;
  v46 = 0;
  sub_10006BCA8(&v45, (v2 + 15), *(v1 + 2));
  v13 = v45;
  if (!v45)
  {
    v22 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    goto LABEL_23;
  }

  v14 = (*(*v45 + 48))(v45);
  v15 = *(v1 + 2);
  if (v14 != *(v1 + 3))
  {
    v23 = *(*(*v2[6] + 16))(v2[6], v15);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    (*(*v13 + 48))(v13);
    v24 = asString();
    v25 = asString();
    *buf = 136315394;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = v25;
    v19 = "#I Current PB type: %s, phonebookState PB: %s";
    v20 = v23;
    v21 = 22;
    goto LABEL_22;
  }

  v16 = sub_10006BD2C((v2 + 15), v15);
  if (!v16 || *v16 <= 2)
  {
    v17 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    sub_10006BD2C((v2 + 15), *(v1 + 2));
    v18 = asString();
    *buf = 136315138;
    *&buf[4] = v18;
    v19 = "#N Phone state received, not in kPBStatePhoneBookSelected state (%s)";
    v20 = v17;
    v21 = 12;
    goto LABEL_22;
  }

  if (*(v1 + 16) == 1)
  {
    v26 = sub_10006BD2C((v2 + 15), *(v1 + 2));
    if (v26 && *v26 > 3)
    {
      v30 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "#I Capabilities are already available";
        goto LABEL_46;
      }
    }

    else
    {
      v27 = v2[11];
      v28 = *(v1 + 2);
      v29 = (*(*v13 + 48))(v13);
      (*(*v27 + 40))(v27, v28, v29);
      v30 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "#I Phone book ready - getting capabilities";
LABEL_46:
        v20 = v30;
        v21 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

LABEL_23:
    if (v46)
    {
      sub_100004A34(v46);
    }

    operator delete();
  }

  v31 = *(v1 + 3);
  if (!v31)
  {
    if (!(*(*v13 + 32))(v13))
    {
      v38 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I SIM Phone book is not available, retrying on Application Phone Book", buf, 2u);
      }

      v39 = *(v1 + 2);
      v34 = v46;
      v43 = v13;
      v44 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(__p, "");
      v40 = *(v1 + 2);
      *buf = off_101F502D8;
      *&buf[8] = v2;
      *&buf[16] = v40;
      v48 = buf;
      *&buf[20] = 0;
      sub_10158DB90(v2, v39, &v43, 3, buf);
      goto LABEL_52;
    }

    v31 = *(v1 + 3);
  }

  if (v31 != 3 || (*(*v13 + 32))(v13) != 3)
  {
    v36 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N %s Phone book unavailable", buf, 0xCu);
    }

    (*(*v2[9] + 304))(v2[9], *(v1 + 2));
    goto LABEL_23;
  }

  v32 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Application Phone book is not available, retrying on SIM Phone Book", buf, 2u);
  }

  v33 = *(v1 + 2);
  v34 = v46;
  v43 = v13;
  v44 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "");
  v35 = *(v1 + 2);
  *buf = off_101F50358;
  *&buf[8] = v2;
  *&buf[16] = v35;
  v48 = buf;
  sub_10158DB90(v2, v33, &v43, 0, buf);
LABEL_52:
  sub_10000FF50(buf);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  goto LABEL_23;
}

void sub_101597718(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  sub_10000FF50(&a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  operator delete();
}

__n128 sub_101597838(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F502D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10159786C(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1015978B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101597978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015979AC(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1015979F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101597A40(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  if (*(v1 + 16))
  {
    *buf = 0;
    v24 = 0;
    sub_10006BCA8(buf, v2 + 120, *(v1 + 8));
    v3 = *buf;
    if (*buf)
    {
      v4 = *(v1 + 16);
      v7 = *v4;
      v5 = v4 + 1;
      v6 = v7;
      if (v7 != v5)
      {
        while (*(v6 + 7) != 2)
        {
          v8 = v6[1];
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
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
          if (v9 == v5)
          {
            goto LABEL_20;
          }
        }
      }

      if (v6 == v5)
      {
LABEL_20:
        v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSISDN file is not present, assuming read attempted", v22, 2u);
        }

        (*(*v3 + 200))(v3, 0);
        (*(*v3 + 136))(v3, 1);
        v15 = *(v2 + 112);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(v2 + 104);
            if (v18)
            {
              (*(*v18 + 304))(v18, *(v1 + 8), 0, "phonebooksPresent");
            }

            sub_100004A34(v17);
          }
        }
      }

      else
      {
        v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSISDN file is present", v22, 2u);
        }

        (*(*v3 + 200))(v3, 1);
      }

      (*(*v3 + 240))(v3, *(v1 + 16));
    }

    else
    {
      v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No phonebook model", v22, 2u);
      }
    }

    if (v24)
    {
      sub_100004A34(v24);
    }
  }

  else
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid object received for phone books present", buf, 2u);
    }
  }

  sub_1001FF3DC(&v21);
  return sub_1000049E0(&v20);
}

void sub_101597DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100004A34(v14);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101597E30(uint64_t *a1)
{
  v1 = *a1;
  v92 = a1;
  v93 = v1;
  if (*(*(v1 + 40) + 49))
  {
    goto LABEL_186;
  }

  v2 = *v1;
  if (!isReal())
  {
    goto LABEL_186;
  }

  v3 = *(v1 + 32);
  if (v3 >= 2)
  {
    if (v3 == 2 || v3 == 6)
    {
      v5 = *(*(v1 + 40) + 52);
      v100[0] = 0;
      v100[1] = 0;
      sub_10006BCA8(v100, v2 + 120, v5);
      if (v100[0])
      {
        memset(buf, 0, sizeof(buf));
        v6 = sub_10006BD2C(v2 + 120, v5);
        v7 = (v6 + 1);
        if (!v6)
        {
          v7 = &kInvalidPersonalityId;
        }

        if (v7[23] < 0)
        {
          sub_100005F2C(buf, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          *&buf[16] = *(v7 + 2);
          *buf = v8;
        }

        memset(&v114, 0, sizeof(v114));
        v32 = sub_10112CDBC(buf, &v114);
        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          v33 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v5);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = buf[23];
            if ((buf[23] & 0x80u) != 0)
            {
              v34 = *&buf[8];
            }

            v35 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v35 = *buf;
            }

            if (v34)
            {
              v36 = v35;
            }

            else
            {
              v36 = "<invalid>";
            }

            LODWORD(v114.__r_.__value_.__l.__data_) = 136315138;
            *(v114.__r_.__value_.__r.__words + 4) = v36;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I SIM %s is gone from slot, clearing off the Phone Number, Voice Mail Number", &v114, 0xCu);
          }

          memset(&v114, 0, sizeof(v114));
          v37 = sub_10006BD2C(v2 + 120, v5);
          if (v37)
          {
            std::string::operator=((v37 + 1), &v114);
            if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }
          }

          v38 = sub_10006BD2C(v2 + 120, v5);
          v39 = v38;
          if (v38)
          {
            v40 = v38[4];
            if (v40)
            {
              (*(*v40 + 256))(v40, 0);
            }

            *(v39 + 5) = 0;
          }

          (*(**(v2 + 88) + 80))(*(v2 + 88), v5);
          v41 = *(v2 + 112);
          if (v41)
          {
            v42 = std::__shared_weak_count::lock(v41);
            if (v42)
            {
              v43 = v42;
              v44 = *(v2 + 104);
              if (v44)
              {
                (*(*v44 + 304))(v44, v5, 0, "handleSimGone_sync");
              }

              sub_100004A34(v43);
            }
          }
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v5);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
        }
      }

      if (v100[1])
      {
        sub_100004A34(v100[1]);
      }
    }

    goto LABEL_186;
  }

  v9 = *(v1 + 40);
  v10 = *(v9 + 52);
  if (!v3)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v9 + 52));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v9 + 47);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 32);
      }

      if (v13)
      {
        v14 = *(v9 + 24);
      }

      else
      {
        v14 = (v9 + 24);
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I SIM %s is announced on the slot", buf, 0xCu);
    }

    v16 = sub_10006BD2C(v2 + 120, v10);
    v17 = v16;
    if (v16)
    {
      v18 = v16[4];
      if (v18)
      {
        (*(*v18 + 256))(v18, 0);
      }

      *(v17 + 5) = 0;
    }

    (*(**(v2 + 88) + 80))(*(v2 + 88), v10);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v95 = 0;
  v19 = sub_10006BD2C(v2 + 120, v10);
  v20 = (v19 + 1);
  if (!v19)
  {
    v20 = &kInvalidPersonalityId;
  }

  if (v20[23] < 0)
  {
    sub_100005F2C(__dst, *v20, *(v20 + 1));
  }

  else
  {
    v21 = *v20;
    v95 = *(v20 + 2);
    *__dst = v21;
  }

  if (sub_10112CDBC(__dst, (v9 + 24)))
  {
    v23 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v9 + 47);
      v25 = (v24 & 0x80u) != 0;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v9 + 32);
      }

      if (v25)
      {
        v26 = *(v9 + 24);
      }

      else
      {
        v26 = (v9 + 24);
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I SIM %s is added on the slot", buf, 0xCu);
    }

    v28 = sub_10006BD2C(v2 + 120, v10);
    if (v28)
    {
      std::string::operator=((v28 + 1), (v9 + 24));
      v102 = 0;
      v103 = 0;
      sub_10006BCA8(&v102, v2 + 120, v10);
      v91 = v102;
      if (!v102)
      {
        v45 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "retrieveNetworkAndCopiedPhoneNumber_sync, No phonebook model", buf, 2u);
        }

        goto LABEL_164;
      }

      v100[0] = 0;
      v100[1] = 0;
      v101 = 0;
      v29 = sub_10006BD2C(v2 + 120, v10);
      v30 = (v29 + 1);
      if (!v29)
      {
        v30 = &kInvalidPersonalityId;
      }

      if (v30[23] < 0)
      {
        sub_100005F2C(v100, *v30, *(v30 + 1));
      }

      else
      {
        v31 = *v30;
        v101 = *(v30 + 2);
        *v100 = v31;
      }

      if ((isReal() & 1) == 0)
      {
        __assert_rtn("retrieveNetworkAndCopiedPhoneNumber_sync", "PhonebookHandler.cpp", 1034, "isReal(persona)");
      }

      v99 = 0;
      ServiceMap = Registry::getServiceMap(*(v2 + 56));
      v47 = ServiceMap;
      v49 = v48;
      if (v48 < 0)
      {
        v50 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v51 = 5381;
        do
        {
          v49 = v51;
          v52 = *v50++;
          v51 = (33 * v51) ^ v52;
        }

        while (v52);
      }

      std::mutex::lock(ServiceMap);
      *buf = v49;
      v53 = sub_100009510(&v47[1].__m_.__sig, buf);
      if (v53)
      {
        v55 = v53[3];
        v54 = v53[4];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v47);
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v10;
          sub_100004A34(v54);
          v56 = 0;
          goto LABEL_95;
        }
      }

      else
      {
        v55 = 0;
      }

      std::mutex::unlock(v47);
      v54 = 0;
      v56 = 1;
LABEL_95:
      (*(*v55 + 24))(&v99, v55, v100, @"CachedPhoneNumber", @"phonebook", 0, 1);
      if ((v56 & 1) == 0)
      {
        sub_100004A34(v54);
      }

      v98 = 0;
      v57 = Registry::getServiceMap(*(v2 + 56));
      v58 = v57;
      v59 = v48;
      if (v48 < 0)
      {
        v60 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v61 = 5381;
        do
        {
          v59 = v61;
          v62 = *v60++;
          v61 = (33 * v61) ^ v62;
        }

        while (v62);
      }

      std::mutex::lock(v57);
      *buf = v59;
      v63 = sub_100009510(&v58[1].__m_.__sig, buf);
      if (v63)
      {
        v65 = v63[3];
        v64 = v63[4];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v58);
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v10;
          sub_100004A34(v64);
          v66 = 0;
          goto LABEL_105;
        }
      }

      else
      {
        v65 = 0;
      }

      std::mutex::unlock(v58);
      v64 = 0;
      v66 = 1;
LABEL_105:
      (*(*v65 + 24))(&v98, v65, v100, @"CopiedSIMPhoneNumber", @"phonebook", 0, 1);
      if ((v66 & 1) == 0)
      {
        sub_100004A34(v64);
      }

      v97 = 0;
      v67 = Registry::getServiceMap(*(v2 + 56));
      v68 = v67;
      if (v48 < 0)
      {
        v69 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v70 = 5381;
        do
        {
          v48 = v70;
          v71 = *v69++;
          v70 = (33 * v70) ^ v71;
        }

        while (v71);
      }

      std::mutex::lock(v67);
      *buf = v48;
      v72 = sub_100009510(&v68[1].__m_.__sig, buf);
      if (v72)
      {
        v74 = v72[3];
        v73 = v72[4];
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v68);
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v73);
          v75 = 0;
LABEL_115:
          (*(*v74 + 24))(&v97, v74, v100, @"PNRPhoneNumber", @"phonebook", 0, 1);
          if ((v75 & 1) == 0)
          {
            sub_100004A34(v73);
          }

          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v91 + 152))(v91, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          v76 = v102;
          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v76 + 184))(v76, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v76 + 168))(v76, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          v77 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = HIBYTE(v101);
            if (v101 < 0)
            {
              v78 = v100[1];
            }

            v79 = v100;
            if (v101 < 0)
            {
              v79 = v100[0];
            }

            if (v78)
            {
              v80 = v79;
            }

            else
            {
              v80 = "<invalid>";
            }

            *buf = 136315906;
            *&buf[4] = v80;
            *&buf[12] = 2112;
            *&buf[14] = v99;
            *&buf[22] = 2112;
            v105 = v98;
            LOWORD(v106[0]) = 2112;
            *(v106 + 2) = v97;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I for personality %s restored phone numbers: cached:'%@' / simcopy:'%@' / pnr:'%@'", buf, 0x2Au);
          }

          sub_10000A1EC(&v97);
          sub_10000A1EC(&v98);
          sub_10000A1EC(&v99);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(v100[0]);
          }

LABEL_164:
          if (v103)
          {
            sub_100004A34(v103);
          }

          if (v91)
          {
            v81 = *(v2 + 112);
            if (v81)
            {
              v82 = std::__shared_weak_count::lock(v81);
              if (v82)
              {
                v83 = v82;
                v84 = *(v2 + 104);
                if (v84)
                {
                  (*(*v84 + 304))(v84, v10, 0, "handleSimAdded_sync");
                }

                sub_100004A34(v83);
              }
            }
          }

          goto LABEL_172;
        }
      }

      else
      {
        v74 = 0;
      }

      std::mutex::unlock(v68);
      v73 = 0;
      v75 = 1;
      goto LABEL_115;
    }
  }

LABEL_172:
  if (v3 == 1)
  {
    v85 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(v9 + 47);
      v87 = (v86 & 0x80u) != 0;
      if ((v86 & 0x80u) != 0)
      {
        v86 = *(v9 + 32);
      }

      if (v87)
      {
        v88 = *(v9 + 24);
      }

      else
      {
        v88 = (v9 + 24);
      }

      if (v86)
      {
        v89 = v88;
      }

      else
      {
        v89 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I SIM ready: %s", buf, 0xCu);
    }

    (*(**(v2 + 88) + 72))(*(v2 + 88), v10);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_186:
  sub_101598E40(&v93);
  return sub_1000049E0(&v92);
}

void sub_101598C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_100004A34(v49);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_101598E40(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_101598E40(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

__n128 sub_101598F20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F503D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101598F58(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10159903C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101599090(void *a1)
{
  *a1 = off_101F504A0;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_1015990F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = *(*a1 + 24);

  return v1();
}

uint64_t sub_10159920C(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  if (*(a3 + 33) == 1 && *(a3 + 32) == 1)
  {
    v8 = *a4;
    v9 = a4[1];
    if (*a4 != v9)
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

      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      while (1)
      {
        v13 = *(v8 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v8 + 8);
        }

        if (v13 == v11)
        {
          v15 = v14 >= 0 ? v8 : *v8;
          if (!memcmp(v15, v12, v11))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_21;
        }
      }
    }

    if (v8 != v9)
    {
      v16 = 1;
      return v16 | (v16 << 8);
    }
  }

LABEL_21:
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v18 = ServiceMap;
  if ((v19 & 0x8000000000000000) != 0)
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
  v36 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v36);
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
      goto LABEL_29;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_29:
  v27 = (*(*v25 + 32))(v25);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (v27)
  {
    v28 = *a5;
    v29 = a5[1];
    if (*a5 != v29)
    {
      v30 = *(v6 + 23);
      if (v30 >= 0)
      {
        v31 = *(v6 + 23);
      }

      else
      {
        v31 = v6[1];
      }

      if (v30 < 0)
      {
        v6 = *v6;
      }

      while (1)
      {
        v32 = *(v28 + 23);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v28 + 8);
        }

        if (v32 == v31)
        {
          v34 = v33 >= 0 ? v28 : *v28;
          if (!memcmp(v34, v6, v31))
          {
            break;
          }
        }

        v28 += 24;
        if (v28 == v29)
        {
          v28 = v29;
          break;
        }
      }
    }

    v16 = v28 != v29;
  }

  else
  {
    v16 = 0;
  }

  return v16 | (v16 << 8);
}

void sub_10159943C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101599460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == *(a3 + 16))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v5 = *(a1 + 24);
    if (!v5)
    {
      operator new();
    }

    __p = 0;
    v24 = 0;
    v25 = 0;
    (*(*v5 + 48))(&__p);
    if (__p == v24)
    {
      (*(**(a1 + 24) + 16))(&v20);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_10004EFD0(&v20, __p, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3));
    }

    *buf = &__p;
    sub_1000087B4(buf);
    v7 = sub_1015990F0(*(a1 + 24));
    v8 = v20;
    v9 = v21;
    if (v20 != v21)
    {
      while (2)
      {
        v10 = *(a3 + 8);
        v11 = *(a3 + 16);
        while (v10 != v11)
        {
          __p = 0;
          v24 = 0;
          v25 = 0;
          sub_101599734(&__p, v8);
          v12 = SHIBYTE(v25);
          if (v25 >= 0)
          {
            v13 = HIBYTE(v25);
          }

          else
          {
            v13 = v24;
          }

          v14 = *(v10 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v10 + 8);
          }

          if (v13 == v14)
          {
            v16 = __p;
            v17 = v25 >= 0 ? &__p : __p;
            v18 = v15 >= 0 ? v10 : *v10;
            if (!memcmp(v17, v18, v13))
            {
              if (v12 < 0)
              {
                operator delete(v16);
              }

              v6 = 1;
              goto LABEL_32;
            }
          }

          if (v12 < 0)
          {
            operator delete(__p);
          }

          v10 += 24;
        }

        v8 += 24;
        if (v8 != v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_32:
    __p = &v20;
    sub_1000087B4(&__p);
  }

  return v6 | (v7 << 8);
}

void sub_101599734(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_101FCAD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAD60))
  {
    sub_1001C7FB0(&unk_101FCAD68, "^(.*-)?([ \t]+)?([0-9]+)([ \t]+.*)?$", 0);
  }

  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  *__p = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if ((sub_100200C08(v5, v5 + v4, __p, &unk_101FCAD68, 0) & 1) == 0)
  {
    operator new();
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  v7 = __p[0] + 88;
  if (v6 <= 3)
  {
    v7 = v13 + 8;
  }

  if (*v7 == 1)
  {
    v8 = v6 > 3;
    if (v6 <= 3)
    {
      v9 = &v12 + 8;
    }

    else
    {
      v9 = __p[0] + 72;
    }

    v10 = (__p[0] + 80);
    if (!v8)
    {
      v10 = v13;
    }

    sub_1001CD6B4(a1, *v9, *v10, &(*v10)[-*v9]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_1015999BC(uint64_t a1)
{
  if (sub_1015990F0(*(a1 + 24)))
  {
    return 257;
  }

  else
  {
    return 1;
  }
}

void sub_101599AC0(uint64_t a1, void *a2)
{
  *a1 = off_101F445F0;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "sat.app.info");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(v4, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F504C8;
  *(a1 + 16) = *a2;
  v5 = a2[1];
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_1011A11E0();
}

void sub_10159A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  v16 = *(v11 + 192);
  if (v16)
  {
    sub_100004A34(v16);
  }

  a10 = (v11 + 160);
  sub_1000087B4(&a10);
  sub_1000087B4(&a10);
  sub_100246E7C(v13, *(v11 + 112));
  if (*(v11 + 96) == 1)
  {
    a10 = (v11 + 64);
    sub_1000087B4(&a10);
  }

  sub_100F75FA4(&a10);
  v17 = *(v11 + 24);
  if (v17)
  {
    sub_100004A34(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

void sub_10159A108(uint64_t a1, ...)
{
  va_start(va1, a1);
  va_start(va, a1);
  v1 = va_arg(va1, void);
  v3 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x10159A0F8);
}

void sub_10159A130(void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_100013D10();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = 16 * v6 - v13;
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  a1[1] = v5;
}