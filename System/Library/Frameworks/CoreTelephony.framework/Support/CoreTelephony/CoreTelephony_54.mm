void sub_10036F628(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F638(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F678(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_1000687A4(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10036F708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10036F754(void *a1)
{
  *a1 = off_101E45D28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F7A0(void *a1)
{
  *a1 = off_101E45D28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F880(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45D28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10036F8C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F8D0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F910(void *a1)
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
        sub_10036D6C8(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10036F998(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036F9E4(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_10036FA80();
  }

  return v2;
}

uint64_t *sub_10036FAF8(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 != v3)
  {
    v4 = *(v2 + 240);
    (*(**(v3 + 56) + 88))(&v8);
    (*(*v4 + 48))(v4, v8);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  sub_10036FBEC(&v7);
  return sub_1000049E0(&v6);
}

void sub_10036FBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10036FBEC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10036FC54(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 != v3)
  {
    v4 = *(v2 + 240);
    v5 = (*(**(v3 + 56) + 80))(*(v3 + 56));
    (*(*v4 + 24))(v4, v5);
  }

  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

void sub_10036FD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10036FD1C(uint64_t *a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 == v3)
  {
    goto LABEL_66;
  }

  v4 = sub_100370384(v2 + 168, (v1 + 8));
  v5 = (v1 + 32);
  v6 = sub_100007A6C(v4 + 56, (v1 + 32));
  *buf = v1 + 8;
  if (sub_100370384(v2 + 168, (v1 + 8)) + 64 != v6)
  {
    v7 = sub_100370384(v2 + 168, (v1 + 8));
    sub_100075658((v7 + 56), v6);
    *buf = v1 + 8;
    if (!*(sub_100370384(v2 + 168, (v1 + 8)) + 72))
    {
      sub_100370528((v2 + 168), (v1 + 8));
    }

    if (*(v1 + 80) == 1)
    {
      v8 = sub_100370584(v2 + 192, (v1 + 8));
      *buf = v1 + 32;
      v9 = sub_100173F08(v8 + 56, (v1 + 32));
      v10 = (v1 + 56);
      std::string::operator=((v9 + 56), (v1 + 56));
      v11 = *(v2 + 48);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v12 = *(v1 + 31);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v1 + 16);
      }

      if (v13)
      {
        v14 = *(v1 + 8);
      }

      else
      {
        v14 = (v1 + 8);
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      v16 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v16 = *v5;
      }

      if (*(v1 + 79) < 0)
      {
        v10 = *v10;
      }

      *buf = 136316162;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v15;
      v50 = 2080;
      v51 = v16;
      v52 = 2080;
      v53 = v10;
      v17 = "#I %s%sadded new session for %s: internal:%s = network:%s";
      v18 = v11;
      v19 = 52;
    }

    else
    {
      v28 = *(v2 + 48);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v29 = *(v1 + 31);
      v30 = (v29 & 0x80u) != 0;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v1 + 16);
      }

      if (v30)
      {
        v31 = *(v1 + 8);
      }

      else
      {
        v31 = (v1 + 8);
      }

      if (v29)
      {
        v32 = v31;
      }

      else
      {
        v32 = "<invalid>";
      }

      v33 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v33 = *v5;
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v32;
      v50 = 2080;
      v51 = v33;
      v17 = "#I %s%sfailed attempted to add new session for %s: internal:%s";
      v18 = v28;
      v19 = 42;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_48:
    v34 = *(v2 + 240);
    if (*(v1 + 55) < 0)
    {
      sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
    }

    else
    {
      *__dst = *v5;
      v41 = *(v1 + 48);
    }

    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v45 = v41;
    }

    v43 = 0;
    if (SHIBYTE(v45) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v45;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v35 = v43;
      v43 = v46;
      v47 = v35;
      sub_100005978(&v47);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v36 = v43;
    v42 = v43;
    v43 = 0;
    sub_100005978(&v43);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v34 + 32))(v34, v36, *(v1 + 80));
    sub_100005978(&v42);
    if (SHIBYTE(v41) < 0)
    {
      v27 = __dst[0];
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  if (*(v1 + 80) == 1)
  {
    v20 = *(v2 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v21 = *v5;
      }

      v22 = *(v1 + 31);
      v23 = (v22 & 0x80u) != 0;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v1 + 16);
      }

      if (v23)
      {
        v24 = *(v1 + 8);
      }

      else
      {
        v24 = (v1 + 8);
      }

      if (v22)
      {
        v25 = v24;
      }

      else
      {
        v25 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v21;
      v50 = 2080;
      v51 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sattempt %s is not found in %s pool. Removing it", buf, 0x2Au);
    }

    v26 = *(v3 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v26 + 112))(v26, buf, v1 + 32, v1 + 56);
    if ((buf[23] & 0x80000000) != 0)
    {
      v27 = *buf;
LABEL_65:
      operator delete(v27);
    }
  }

LABEL_66:
  sub_10037030C(&v39);
  return sub_1000049E0(&v38);
}

void sub_10037027C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_10037030C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10037030C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100370384(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100370438();
  }

  return v2;
}

uint64_t sub_1003704DC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002CB3DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100370528(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1002CB3DC((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t sub_100370584(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_100370638();
  }

  return v2;
}

uint64_t *sub_1003706DC(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  if (v2 + 128 != sub_100007A6C(*v1 + 120, (v1 + 8)))
  {
    v3 = sub_100370584(v2 + 216, (v1 + 8));
    v4 = (v1 + 32);
    v5 = sub_100007A6C(v3 + 56, (v1 + 32));
    *buf = v1 + 8;
    if ((sub_100370584(v2 + 216, (v1 + 8)) + 64) != v5)
    {
      v6 = *(v1 + 80);
      v7 = *(v2 + 48);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 1)
      {
        if (v8)
        {
          v9 = *(v1 + 31);
          v10 = (v9 & 0x80u) != 0;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(v1 + 16);
          }

          if (v10)
          {
            v11 = *(v1 + 8);
          }

          else
          {
            v11 = (v1 + 8);
          }

          if (v9)
          {
            v12 = v11;
          }

          else
          {
            v12 = "<invalid>";
          }

          v13 = v1 + 32;
          if (*(v1 + 55) < 0)
          {
            v13 = *v4;
          }

          v14 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v14 = *v14;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v40 = v12;
          v41 = 2080;
          v42 = v13;
          v43 = 2080;
          v44 = v14;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%ssession removed for %s: internal:%s = network:%s", buf, 0x34u);
        }

        *buf = v1 + 8;
        v15 = sub_100370584(v2 + 216, (v1 + 8));
        sub_1000194D8((v15 + 56), v5);
        sub_1000DD108((v5 + 4));
        operator delete(v5);
        *buf = v1 + 8;
        if (!*(sub_100370584(v2 + 216, (v1 + 8)) + 72))
        {
          sub_100370C34((v2 + 216), (v1 + 8));
        }

        v16 = *(v2 + 240);
        if (*(v1 + 55) < 0)
        {
          sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
        }

        else
        {
          *__dst = *v4;
          v32 = *(v1 + 48);
        }

        if (SHIBYTE(v32) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v36 = v32;
        }

        v34 = 0;
        if (SHIBYTE(v36) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v36;
        }

        v37 = 0;
        if (ctu::cf::convert_copy())
        {
          v26 = v34;
          v34 = v37;
          v38 = v26;
          sub_100005978(&v38);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v27 = v34;
        v33 = v34;
        v34 = 0;
        sub_100005978(&v34);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v16 + 40))(v16, v27);
        sub_100005978(&v33);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      else
      {
        if (v8)
        {
          v17 = *(v1 + 31);
          v18 = (v17 & 0x80u) != 0;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v1 + 16);
          }

          if (v18)
          {
            v19 = *(v1 + 8);
          }

          else
          {
            v19 = (v1 + 8);
          }

          if (v17)
          {
            v20 = v19;
          }

          else
          {
            v20 = "<invalid>";
          }

          v21 = v1 + 32;
          if (*(v1 + 55) < 0)
          {
            v21 = *v4;
          }

          v22 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v22 = *v22;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v40 = v20;
          v41 = 2080;
          v42 = v21;
          v43 = 2080;
          v44 = v22;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to remove session for %s: internal:%s = network:%s - restoring", buf, 0x34u);
        }

        *buf = v1 + 8;
        v23 = sub_100370584(v2 + 216, (v1 + 8));
        sub_1000194D8((v23 + 56), v5);
        sub_1000DD108((v5 + 4));
        operator delete(v5);
        *buf = v1 + 8;
        if (!*(sub_100370584(v2 + 216, (v1 + 8)) + 72))
        {
          sub_100370C34((v2 + 216), (v1 + 8));
        }

        *buf = v1 + 8;
        v24 = sub_100370584(v2 + 192, (v1 + 8));
        *buf = v1 + 32;
        v25 = sub_100173F08(v24 + 56, (v1 + 32));
        std::string::operator=((v25 + 56), (v1 + 56));
      }
    }
  }

  sub_10037030C(&v30);
  return sub_1000049E0(&v29);
}

void sub_100370BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10037030C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100370C34(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1000DD058((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_100370C90(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (*v1 + 144));
  if (v2 + 128 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(**(v3 + 56) + 80))(*(v3 + 56));
  }

  v5 = *(v2 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2080;
    v14 = asStringBool(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%shasDedicatedBearerSupport is %s", buf, 0x20u);
  }

  sub_10000FFD0(v1 + 8, v4);
  sub_100370DE4(&v8);
  return sub_1000049E0(&v7);
}

void sub_100370DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100370DE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100370DE4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100370E34(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100370EB4(void **a1)
{
  v1 = *a1;
  v27 = a1;
  v28 = v1;
  v2 = *v1;
  v3 = (*v1 + 144);
  v4 = sub_100007A6C(*v1 + 120, v3);
  if (v2 + 128 == v4)
  {
    v15 = *(v2 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v2 + 167);
      v17 = (v16 & 0x80u) != 0;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v2 + 152);
      }

      if (v17)
      {
        v18 = *(v2 + 144);
      }

      else
      {
        v18 = v3;
      }

      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = "<invalid>";
      }

      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "";
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = "";
      HIWORD(__p[2]) = 2080;
      v34 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", __p, 0x20u);
    }

    v20 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
    sub_10037134C((v1 + 4), 0, v20);
  }

  else
  {
    v32 = CFUUIDCreate(0);
    v31 = CFUUIDCreateString(0, v32);
    memset(__p, 0, sizeof(__p));
    ctu::cf::assign();
    *v29 = 0u;
    v30 = 0;
    v5 = *(v4 + 56);
    sub_10000501C(__p, "custom-qos");
    v6 = (*(*v5 + 104))(v5, __p, v29, v1 + 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(v2 + 48);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(v2 + 167);
        v10 = (v9 & 0x80u) != 0;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v2 + 152);
        }

        if (v10)
        {
          v11 = *(v2 + 144);
        }

        else
        {
          v11 = v3;
        }

        if (v9)
        {
          v12 = v11;
        }

        else
        {
          v12 = "<invalid>";
        }

        v13 = v29;
        if (v30 < 0)
        {
          v13 = v29[0];
        }

        LODWORD(__p[0]) = 136315906;
        *(__p + 4) = "";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "";
        HIWORD(__p[2]) = 2080;
        v34 = v12;
        v35 = 2080;
        v36 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sattempting new session for %s: internal:%s", __p, 0x2Au);
      }

      __p[0] = v3;
      v14 = sub_100370384(v2 + 168, v3);
      sub_100005BA0(v14 + 56, v29);
      sub_10037134C((v1 + 4), v31, 0);
    }

    else
    {
      if (v8)
      {
        v21 = *(v2 + 167);
        v22 = (v21 & 0x80u) != 0;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v2 + 152);
        }

        if (v22)
        {
          v23 = *(v2 + 144);
        }

        else
        {
          v23 = v3;
        }

        if (v21)
        {
          v24 = v23;
        }

        else
        {
          v24 = "<invalid>";
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "";
        HIWORD(__p[2]) = 2080;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sunable to initate <addSession> for %s", __p, 0x20u);
      }

      v25 = CFErrorCreate(0, kCFErrorDomainPOSIX, 45, 0);
      sub_10037134C((v1 + 4), 0, v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    sub_100005978(&v31);
    sub_1000475BC(&v32);
  }

  sub_1003712E4(&v28);
  return sub_1000049E0(&v27);
}

void sub_100371260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100005978(&a17);
  sub_1000475BC(&a18);
  sub_1003712E4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003712E4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036EC1C(v1 + 32);
    v2 = (v1 + 8);
    sub_1000212F4(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10037134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1003713A4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100371424(uint64_t *a1)
{
  v1 = *a1;
  v51 = a1;
  v52 = v1;
  v2 = *v1;
  v3 = (*v1 + 168);
  v4 = *v3;
  v5 = *v1 + 176;
  if (*v3 == v5)
  {
LABEL_9:
    v10 = *(v2 + 192);
    if (v10 == (v2 + 200))
    {
LABEL_18:
      v15 = *(v2 + 48);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = (v1 + 8);
        if (*(v1 + 31) < 0)
        {
          v16 = *v16;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v54 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sunknown beared id: %s", buf, 0x20u);
      }

      v17 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
      sub_100371B4C(v1 + 32, v17);
      goto LABEL_88;
    }

    v11 = (v1 + 8);
    while (1)
    {
      v12 = sub_100007A6C((v10 + 7), (v1 + 8));
      if (v10 + 8 != v12)
      {
        break;
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v9 = *v14 == v10;
          v10 = v14;
        }

        while (!v9);
      }

      v10 = v14;
      if (v14 == (v2 + 200))
      {
        goto LABEL_18;
      }
    }

    sub_100371B4C(v1 + 32, 0);
    v24 = sub_100007A6C(v2 + 120, v10 + 4);
    v25 = (v12 + 56);
    if (v2 + 128 == v24)
    {
      v28 = *(v2 + 48);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v38 = (v2 + 144);
        v39 = *(v2 + 167);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(v2 + 152);
        }

        if (v40 < 0)
        {
          v38 = *(v2 + 144);
        }

        if (!v39)
        {
          v38 = "<invalid>";
        }

        v41 = v1 + 8;
        if (*(v1 + 31) < 0)
        {
          v41 = *v11;
        }

        v42 = v12 + 56;
        if (*(v12 + 79) < 0)
        {
          v42 = *v25;
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v54 = v38;
        v55 = 2080;
        v56 = v41;
        v57 = 2080;
        v58 = v42;
        v43 = "#I %s%sno controller for active personality '%s' - just dropping internal:%s network:%s";
        goto LABEL_84;
      }
    }

    else
    {
      v26 = *(v24 + 56);
      sub_10000501C(buf, "custom-qos");
      v27 = (*(*v26 + 112))(v26, buf, v1 + 8, v12 + 56);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v28 = *(v2 + 48);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          v30 = *(v10 + 55);
          v31 = (v30 & 0x80u) != 0;
          if ((v30 & 0x80u) != 0)
          {
            v30 = v10[5];
          }

          if (v31)
          {
            v32 = v10[4];
          }

          else
          {
            v32 = (v10 + 4);
          }

          if (v30)
          {
            v33 = v32;
          }

          else
          {
            v33 = "<invalid>";
          }

          v34 = v1 + 8;
          if (*(v1 + 31) < 0)
          {
            v34 = *v11;
          }

          v35 = v12 + 56;
          if (*(v12 + 79) < 0)
          {
            v35 = *v25;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v54 = v33;
          v55 = 2080;
          v56 = v34;
          v57 = 2080;
          v58 = v35;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving session for %s: internal:%s = network:%s", buf, 0x34u);
        }

        *buf = v10 + 4;
        v36 = sub_100370584(v2 + 216, v10 + 4);
        *buf = v1 + 8;
        v37 = sub_100173F08(v36 + 56, (v1 + 8));
        std::string::operator=((v37 + 56), (v12 + 56));
        goto LABEL_86;
      }

      if (v29)
      {
        v44 = *(v10 + 55);
        v45 = (v44 & 0x80u) != 0;
        if ((v44 & 0x80u) != 0)
        {
          v44 = v10[5];
        }

        if (v45)
        {
          v46 = v10[4];
        }

        else
        {
          v46 = (v10 + 4);
        }

        if (v44)
        {
          v47 = v46;
        }

        else
        {
          v47 = "<invalid>";
        }

        v48 = v1 + 8;
        if (*(v1 + 31) < 0)
        {
          v48 = *v11;
        }

        v49 = v12 + 56;
        if (*(v12 + 79) < 0)
        {
          v49 = *v25;
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v54 = v47;
        v55 = 2080;
        v56 = v48;
        v57 = 2080;
        v58 = v49;
        v43 = "#I %s%sunable to proceed with removing for %s: internal:%s = network:%s -  just droping";
LABEL_84:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v43, buf, 0x34u);
      }
    }

    (*(*v2 + 136))(v2, v10 + 4, v1 + 8, v12 + 56, 1);
LABEL_86:
    sub_1000194D8(v10 + 7, v12);
    sub_1000DD108(v12 + 32);
    operator delete(v12);
    if (!v10[9])
    {
      sub_100370C34((v2 + 192), v10 + 4);
    }

    goto LABEL_88;
  }

  while (1)
  {
    v6 = sub_100007A6C((v4 + 7), (v1 + 8));
    if (v4 + 8 != v6)
    {
      break;
    }

    v7 = v4[1];
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
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
    if (v8 == v5)
    {
      goto LABEL_9;
    }
  }

  sub_100075658(v4 + 7, v6);
  if (!v4[9])
  {
    sub_100370528(v3, v4 + 4);
  }

  v18 = *(v2 + 48);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v1 + 8;
    if (*(v1 + 31) < 0)
    {
      v19 = *(v1 + 8);
    }

    v20 = *(v4 + 55);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = v4[5];
    }

    if (v21)
    {
      v22 = v4[4];
    }

    else
    {
      v22 = (v4 + 4);
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v54 = v19;
    v55 = 2080;
    v56 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sincomplete attempt %s erased for %s", buf, 0x2Au);
  }

  sub_100371B4C(v1 + 32, 0);
  memset(buf, 0, sizeof(buf));
  (*(*v2 + 136))(v2, v4 + 4, v1 + 8, buf, 1);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_88:
  sub_100371AEC(&v52);
  return sub_1000049E0(&v51);
}

void sub_100371AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100371AEC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100371AEC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036EC9C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100371B4C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_100371BA0(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sremoveAllDedicatedBearers", buf, 0x16u);
  }

  v4 = v2[24];
  if (v4 != v2 + 25)
  {
    do
    {
      v5 = v4[7];
      if (v5 != v4 + 8)
      {
        do
        {
          if (*(v5 + 55) < 0)
          {
            sub_100005F2C(__dst, v5[4], v5[5]);
          }

          else
          {
            *__dst = *(v5 + 2);
            v26 = v5[6];
          }

          if (SHIBYTE(v26) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v29 = v26;
          }

          v30 = 0;
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v29;
          }

          v31 = 0;
          if (ctu::cf::convert_copy())
          {
            v6 = v30;
            v30 = v31;
            v22[0] = v6;
            sub_100005978(v22);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v27 = v30;
          v30 = 0;
          sub_100005978(&v30);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = off_101E45DA8;
          v33 = buf;
          (*(*v2 + 16))(v2, v27, buf);
          sub_10036EC9C(buf);
          sub_100005978(&v27);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__dst[0]);
          }

          v7 = v5[1];
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
              v8 = v5[2];
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != v4 + 8);
      }

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
          v9 = *v11 == v4;
          v4 = v11;
        }

        while (!v9);
      }

      v4 = v11;
    }

    while (v11 != v2 + 25);
  }

  v12 = v2[21];
  if (v12 != v2 + 22)
  {
    do
    {
      v13 = v12[7];
      if (v13 != v12 + 8)
      {
        do
        {
          if (*(v13 + 55) < 0)
          {
            sub_100005F2C(v22, v13[4], v13[5]);
          }

          else
          {
            *v22 = *(v13 + 2);
            v23 = v13[6];
          }

          if (SHIBYTE(v23) < 0)
          {
            sub_100005F2C(__p, v22[0], v22[1]);
          }

          else
          {
            *__p = *v22;
            v29 = v23;
          }

          v27 = 0;
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v29;
          }

          v30 = 0;
          if (ctu::cf::convert_copy())
          {
            v14 = v27;
            v27 = v30;
            v31 = v14;
            sub_100005978(&v31);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v24 = v27;
          v27 = 0;
          sub_100005978(&v27);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = off_101E45E38;
          v33 = buf;
          (*(*v2 + 16))(v2, v24, buf);
          sub_10036EC9C(buf);
          sub_100005978(&v24);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          v15 = v13[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v13[2];
              v9 = *v16 == v13;
              v13 = v16;
            }

            while (!v9);
          }

          v13 = v16;
        }

        while (v16 != v12 + 8);
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v2 + 22);
  }

  sub_100371B4C(v1 + 8, 0);
  sub_10037216C(&v21);
  return sub_1000049E0(&v20);
}

void sub_10037207C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_10037216C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10037216C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036EC9C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100372248(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100372320(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10037236C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003723EC(void ***a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 24);
  v4 = *v1 + 200;
  if (v3 == v4)
  {
LABEL_9:
    v8 = v2[21];
    v9 = v2 + 22;
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v10 = sub_100007A6C((v8 + 7), v1 + 1);
        v11 = v8 + 8 != v10;
        if (v8 + 8 != v10)
        {
          break;
        }

        v12 = v8[1];
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
            v13 = v8[2];
            v7 = *v13 == v8;
            v8 = v13;
          }

          while (!v7);
        }

        v8 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    while (v3 + 8 == sub_100007A6C((v3 + 7), v1 + 1))
    {
      v5 = v3[1];
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
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v4)
      {
        goto LABEL_9;
      }
    }

    v11 = 1;
  }

  sub_100372598((v1 + 4), v11, 0);
  sub_100372538(&v16);
  return sub_1000049E0(&v15);
}

void sub_100372514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100372538(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372538(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036ED1C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100372598(uint64_t a1, char a2, uint64_t a3)
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

uint64_t sub_1003725F4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100372674(void **a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = theArray;
    theArray = Mutable;
    *buf = v4;
    sub_1000279DC(buf);
  }

  v5 = v2[24];
  if (v5 != v2 + 25)
  {
    do
    {
      v6 = v5[7];
      if (v6 != v5 + 8)
      {
        do
        {
          v7 = theArray;
          if (*(v6 + 55) < 0)
          {
            sub_100005F2C(__dst, v6[4], v6[5]);
          }

          else
          {
            *__dst = *(v6 + 2);
            v31 = v6[6];
          }

          if (SHIBYTE(v31) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v35 = v31;
          }

          v36 = 0;
          if (SHIBYTE(v35) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v35;
          }

          v37 = 0;
          if (ctu::cf::convert_copy())
          {
            v8 = v36;
            v36 = v37;
            v27[0] = v8;
            sub_100005978(v27);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          value = v36;
          v36 = 0;
          sub_100005978(&v36);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v7, value);
          sub_100005978(&value);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__dst[0]);
          }

          v9 = v6[1];
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
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v5 + 8);
      }

      v12 = v5[1];
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
          v13 = v5[2];
          v11 = *v13 == v5;
          v5 = v13;
        }

        while (!v11);
      }

      v5 = v13;
    }

    while (v13 != v2 + 25);
  }

  v14 = v2[21];
  if (v14 != v2 + 22)
  {
    do
    {
      v15 = v14[7];
      if (v15 != v14 + 8)
      {
        do
        {
          v16 = theArray;
          if (*(v15 + 55) < 0)
          {
            sub_100005F2C(v27, v15[4], v15[5]);
          }

          else
          {
            *v27 = *(v15 + 2);
            v28 = v15[6];
          }

          if (SHIBYTE(v28) < 0)
          {
            sub_100005F2C(__p, v27[0], v27[1]);
          }

          else
          {
            *__p = *v27;
            v35 = v28;
          }

          value = 0;
          if (SHIBYTE(v35) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v35;
          }

          v36 = 0;
          if (ctu::cf::convert_copy())
          {
            v17 = value;
            value = v36;
            v37 = v17;
            sub_100005978(&v37);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v29 = value;
          value = 0;
          sub_100005978(&value);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v16, v29);
          sub_100005978(&v29);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27[0]);
          }

          v18 = v15[1];
          if (v18)
          {
            do
            {
              v19 = v18;
              v18 = *v18;
            }

            while (v18);
          }

          else
          {
            do
            {
              v19 = v15[2];
              v11 = *v19 == v15;
              v15 = v19;
            }

            while (!v11);
          }

          v15 = v19;
        }

        while (v19 != v14 + 8);
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v14[2];
          v11 = *v21 == v14;
          v14 = v21;
        }

        while (!v11);
      }

      v14 = v21;
    }

    while (v21 != v2 + 22);
  }

  v22 = v2[6];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    Count = CFArrayGetCount(theArray);
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    v39 = Count;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sgetListOfPresentDedicatedBearers reports %d elements", buf, 0x1Cu);
  }

  sub_100372C3C((v1 + 1), theArray);
  sub_1000279DC(&theArray);
  sub_100372BEC(&v26);
  return sub_1000049E0(&v25);
}

void sub_100372B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  sub_1000279DC(&a25);
  sub_100372BEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372BEC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036ED9C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100372C3C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100372C90(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100372D10(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sgetQoSLinkCharacteristics", buf, 0x16u);
  }

  v4 = sub_100007A6C(v2 + 120, (v2 + 144));
  if (v2 + 128 == v4)
  {
    v6 = *(v2 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v2 + 167);
      v8 = (v7 & 0x80u) != 0;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 152);
      }

      if (v8)
      {
        v9 = *(v2 + 144);
      }

      else
      {
        v9 = (v2 + 144);
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = 0;
    v11 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
    sub_100372FE4(v1 + 8, buf, v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v5 = *(v4 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v5 + 88))(&v15, v5, buf);
    sub_100372FE4(v1 + 8, &v15, 0);
    if (v16)
    {
      sub_100004A34(v16);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }
  }

  sub_100372F94(&v14);
  return sub_1000049E0(&v13);
}

void sub_100372F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100372F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372F94(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10036EE1C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100372FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t *sub_100373038(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    v16 = 2080;
    v17 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%srequestQoSLinkCharacteristics", buf, 0x16u);
  }

  v4 = sub_100007A6C(v2 + 120, (v2 + 144));
  if (v2 + 128 == v4)
  {
    v7 = *(v2 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v2 + 167);
      v9 = (v8 & 0x80u) != 0;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v2 + 152);
      }

      if (v9)
      {
        v10 = *(v2 + 144);
      }

      else
      {
        v10 = (v2 + 144);
      }

      if (v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", buf, 0x20u);
    }

    v6 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
  }

  else
  {
    v5 = *(v4 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v5 + 96))(v5, buf);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    v6 = 0;
  }

  sub_100371B4C(v1 + 8, v6);
  sub_10037216C(&v14);
  return sub_1000049E0(&v13);
}

void sub_100373230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10037216C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100373264(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  sub_100A33A10();
}

void sub_1003732BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003732DC@<X0>(capabilities::ct *a1@<X1>, void *a2@<X8>)
{
  sub_100A32B20(a1, &v5);
  v3 = v5;
  *a2 = v5;
  if (v3)
  {
    operator new();
  }

  result = 0;
  a2[1] = 0;
  return result;
}

void sub_100373364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10176C458(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100373384()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_1003733C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003733F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100373428(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100373468()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

const void **sub_100373498@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v98 = 0;
  v7 = CFUUIDCreateString(kCFAllocatorDefault, *a1);
  v97 = 0;
  v98 = v7;
  v96[0] = 0;
  v96[1] = 0;
  ctu::cf::assign();
  v94 = xpc_string_create(v96);
  if (!v94)
  {
    v94 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kUuid";
  sub_10000F688(&v101, &v94, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v94);
  v94 = 0;
  StartTime = CallInfo::getStartTime(a1);
  v92 = xpc_int64_create(StartTime);
  if (!v92)
  {
    v92 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallStartTime";
  sub_10000F688(&v101, &v92, &v93);
  xpc_release(v93);
  v93 = 0;
  xpc_release(v92);
  v92 = 0;
  Duration = CallInfo::getDuration(a1);
  v90 = xpc_int64_create(Duration);
  if (!v90)
  {
    v90 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallDuration";
  sub_10000F688(&v101, &v90, &v91);
  xpc_release(v91);
  v91 = 0;
  xpc_release(v90);
  v90 = 0;
  LegacyFlags = CallInfo::getLegacyFlags(a1);
  v88 = xpc_int64_create(LegacyFlags);
  if (!v88)
  {
    v88 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallFlags";
  sub_10000F688(&v101, &v88, &v89);
  xpc_release(v89);
  v89 = 0;
  xpc_release(v88);
  v88 = 0;
  SessionStartTime = CallInfo::getSessionStartTime(a1);
  v86 = xpc_int64_create(SessionStartTime);
  if (!v86)
  {
    v86 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSessionStart";
  sub_10000F688(&v101, &v86, &v87);
  xpc_release(v87);
  v87 = 0;
  xpc_release(v86);
  v86 = 0;
  v84 = xpc_int64_create(*(a1 + 352));
  if (!v84)
  {
    v84 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kBBCallDisconnectCause";
  sub_10000F688(&v101, &v84, &v85);
  xpc_release(v85);
  v85 = 0;
  xpc_release(v84);
  v84 = 0;
  if (*(a1 + 47) >= 0)
  {
    v12 = (a1 + 24);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v82 = xpc_string_create(v12);
  if (!v82)
  {
    v82 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kPhoneNumber";
  sub_10000F688(&v101, &v82, &v83);
  xpc_release(v83);
  v83 = 0;
  xpc_release(v82);
  v82 = 0;
  if (*(a1 + 255) >= 0)
  {
    v13 = (a1 + 232);
  }

  else
  {
    v13 = *(a1 + 232);
  }

  v80 = xpc_string_create(v13);
  if (!v80)
  {
    v80 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallName";
  sub_10000F688(&v101, &v80, &v81);
  xpc_release(v81);
  v81 = 0;
  xpc_release(v80);
  v80 = 0;
  if (*(a1 + 167) >= 0)
  {
    v14 = (a1 + 144);
  }

  else
  {
    v14 = *(a1 + 144);
  }

  v78 = xpc_string_create(v14);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSource";
  sub_10000F688(&v101, &v78, &v79);
  xpc_release(v79);
  v79 = 0;
  xpc_release(v78);
  v78 = 0;
  v76 = xpc_int64_create(*(a1 + 64));
  if (!v76)
  {
    v76 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSourceMode";
  sub_10000F688(&v101, &v76, &v77);
  xpc_release(v77);
  v77 = 0;
  xpc_release(v76);
  v76 = 0;
  v74 = xpc_int64_create(*(a1 + 72));
  if (!v74)
  {
    v74 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kMobileCountryCode";
  sub_10000F688(&v101, &v74, &v75);
  xpc_release(v75);
  v75 = 0;
  xpc_release(v74);
  v74 = 0;
  if (*(a1 + 103) >= 0)
  {
    v15 = (a1 + 80);
  }

  else
  {
    v15 = *(a1 + 80);
  }

  v72 = xpc_string_create(v15);
  if (!v72)
  {
    v72 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kISOCountryCode";
  sub_10000F688(&v101, &v72, &v73);
  xpc_release(v73);
  v73 = 0;
  xpc_release(v72);
  v72 = 0;
  v70 = xpc_BOOL_create(*(a1 + 168) == 1);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kAudioToneRelayFlag";
  sub_10000F688(&v101, &v70, &v71);
  xpc_release(v71);
  v71 = 0;
  xpc_release(v70);
  v70 = 0;
  v68 = xpc_int64_create(*(a1 + 172));
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kAudioToneStandard";
  sub_10000F688(&v101, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  v66 = xpc_BOOL_create(*(a1 + 350));
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kMobileOriginatedCallEndFlag";
  sub_10000F688(&v101, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  v64 = xpc_BOOL_create(*(a1 + 176));
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kClientNeedsToSetupAudioInterruptions";
  sub_10000F688(&v101, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v64 = 0;
  v16 = CallInfo::isProbablyOnlyCall(a1);
  v62 = xpc_BOOL_create(v16);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTheOnlyCall";
  sub_10000F688(&v101, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
  v60 = xpc_int64_create(*(a1 + 320));
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTTY";
  sub_10000F688(&v101, &v60, &v61);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v60);
  v60 = 0;
  v58 = xpc_BOOL_create(*(a1 + 324));
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTTYWithVoiceSupported";
  sub_10000F688(&v101, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  v56 = xpc_BOOL_create(*(a1 + 68));
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsThumperCall";
  sub_10000F688(&v101, &v56, &v57);
  xpc_release(v57);
  v57 = 0;
  xpc_release(v56);
  v56 = 0;
  if (*(a1 + 20) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 340);
  }

  v54 = xpc_BOOL_create(v17);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsSplitAllowed";
  sub_10000F688(&v101, &v54, &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  if (*(a1 + 208) == 1)
  {
    v100[0] = 0;
    v18 = xpc_array_create(0, 0);
    v19 = v18;
    if (v18)
    {
      v100[0] = v18;
    }

    else
    {
      v19 = xpc_null_create();
      v100[0] = v19;
      if (!v19)
      {
        v20 = xpc_null_create();
        v19 = 0;
        goto LABEL_74;
      }
    }

    if (xpc_get_type(v19) == &_xpc_type_array)
    {
      xpc_retain(v19);
LABEL_75:
      xpc_release(v19);
      sub_1003759B0(&v101, *(a1 + 184), *(a1 + 192), v100);
      v52 = v100[0];
      if (v100[0])
      {
        xpc_retain(v100[0]);
      }

      else
      {
        v52 = xpc_null_create();
      }

      v101 = a2;
      v102 = "kAudioStreamTokens";
      sub_1000609CC(&v101, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      xpc_release(v100[0]);
      goto LABEL_79;
    }

    v20 = xpc_null_create();
LABEL_74:
    v100[0] = v20;
    goto LABEL_75;
  }

LABEL_79:
  if (*(a1 + 332) == 1)
  {
    v50 = xpc_int64_create(*(a1 + 328));
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kTextStreamToken";
    sub_10000F688(&v101, &v50, &v51);
    xpc_release(v51);
    v51 = 0;
    xpc_release(v50);
    v50 = 0;
    v48 = xpc_BOOL_create(0);
    if (!v48)
    {
      v48 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kIsTextHeldForRTTCall";
    sub_10000F688(&v101, &v48, &v49);
    xpc_release(v49);
    v49 = 0;
    xpc_release(v48);
    v48 = 0;
  }

  if (*(a1 + 337) == 1)
  {
    v46 = xpc_BOOL_create(*(a1 + 336));
    if (!v46)
    {
      v46 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kIsTextHeldForRTTCall";
    sub_10000F688(&v101, &v46, &v47);
    xpc_release(v47);
    v47 = 0;
    xpc_release(v46);
    v46 = 0;
  }

  v44 = xpc_BOOL_create(*(a1 + 256));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kVerstatEnabled";
  sub_10000F688(&v101, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  v42 = xpc_int64_create(*(a1 + 260));
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kVerstatLevel";
  sub_10000F688(&v101, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  if (*(a1 + 311) >= 0)
  {
    v21 = (a1 + 288);
  }

  else
  {
    v21 = *(a1 + 288);
  }

  v40 = xpc_string_create(v21);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kImagePath";
  sub_10000F688(&v101, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  v38 = xpc_BOOL_create(*(a1 + 137));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kPendingInfoInitialization";
  sub_10000F688(&v101, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  v36 = xpc_int64_create(*(a1 + 312));
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSpamRisk";
  sub_10000F688(&v101, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  v34 = xpc_int64_create(*(a1 + 316));
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSpamCategory";
  sub_10000F688(&v101, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_BOOL_create(*(a1 + 104));
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v101 = a2;
  v102 = "CallLikelyToFail";
  sub_10000F688(&v101, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_BOOL_create(*(a1 + 105));
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSupportsEmergencyFallback";
  sub_10000F688(&v101, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(*(a1 + 16));
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSimSlot";
  sub_10000F688(&v101, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v118 = xpc_BOOL_create(*(a1 + 12) != 2);
  if (!v118)
  {
    v118 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallDirectionMobileOriginated";
  sub_10000F688(&v101, &v118, &v119);
  xpc_release(v119);
  v119 = 0;
  xpc_release(v118);
  v118 = 0;
  v116 = xpc_int64_create(*(a1 + 20));
  if (!v116)
  {
    v116 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallStatus";
  sub_10000F688(&v101, &v116, &v117);
  xpc_release(v117);
  v117 = 0;
  xpc_release(v116);
  v116 = 0;
  v114 = xpc_int64_create(*(a1 + 60));
  if (!v114)
  {
    v114 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallerIdAvailability";
  sub_10000F688(&v101, &v114, &v115);
  xpc_release(v115);
  v115 = 0;
  xpc_release(v114);
  v114 = 0;
  v112 = xpc_BOOL_create(*(a1 + 340));
  if (!v112)
  {
    v112 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsInMultiParty";
  sub_10000F688(&v101, &v112, &v113);
  xpc_release(v113);
  v113 = 0;
  xpc_release(v112);
  v112 = 0;
  v110 = xpc_int64_create(*(a1 + 48));
  if (!v110)
  {
    v110 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallType";
  sub_10000F688(&v101, &v110, &v111);
  xpc_release(v111);
  v111 = 0;
  xpc_release(v110);
  v110 = 0;
  isSuspicious380Redirect = CallInfo::isSuspicious380Redirect(a1);
  v108 = xpc_BOOL_create(isSuspicious380Redirect);
  if (!v108)
  {
    v108 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSuspicious380Redirect";
  sub_10000F688(&v101, &v108, &v109);
  xpc_release(v109);
  v109 = 0;
  xpc_release(v108);
  v108 = 0;
  CCDisconnectErrorCode = CallInfo::getCCDisconnectErrorCode(a1);
  v106 = xpc_int64_create(CCDisconnectErrorCode);
  if (!v106)
  {
    v106 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kDisconnectCauseCode";
  sub_10000F688(&v101, &v106, &v107);
  xpc_release(v107);
  v107 = 0;
  xpc_release(v106);
  v106 = 0;
  asExternalCSIErrorString();
  if (v103 >= 0)
  {
    v24 = &v101;
  }

  else
  {
    v24 = v101;
  }

  v104 = xpc_string_create(v24);
  if (!v104)
  {
    v104 = xpc_null_create();
  }

  v100[0] = a2;
  v100[1] = "kDisconnectCauseCodeString";
  sub_10000F688(v100, &v104, &v105);
  xpc_release(v105);
  v105 = 0;
  xpc_release(v104);
  v104 = 0;
  if (v103 < 0)
  {
    operator delete(v101);
  }

  v99 = xpc_int64_create(*(a1 + 52));
  if (!v99)
  {
    v99 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSubType";
  sub_10000F688(&v101, &v99, v100);
  xpc_release(v100[0]);
  v100[0] = 0;
  xpc_release(v99);
  v26 = xpc_BOOL_create(*(a1 + 136));
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kEmSubSwitchAudioOverride";
  sub_10000F688(&v101, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  return sub_100005978(&v98);
}

void sub_1003745B0(_Unwind_Exception *a1)
{
  xpc_release(*(v2 - 216));
  if (*(v2 - 233) < 0)
  {
    operator delete(*(v2 - 256));
  }

  sub_100005978((v2 - 232));
  sub_10134A104(v1);
  _Unwind_Resume(a1);
}

void sub_1003747F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
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

  v30 = xpc_string_create(v7);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kUuid";
  sub_10000F688(&v28, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v26 = xpc_BOOL_create(1);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallDirectionMobileOriginated";
  sub_10000F688(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(9);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallStatus";
  sub_10000F688(&v28, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v22 = xpc_string_create(v8);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kPhoneNumber";
  sub_10000F688(&v28, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  if (*(a1 + 92) == 1)
  {
    if (*(a1 + 95))
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v20 = xpc_int64_create(v9);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v28 = a2;
    v29 = "kCallType";
    sub_10000F688(&v28, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  else
  {
    v18 = xpc_int64_create(1);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v28 = a2;
    v29 = "kCallType";
    sub_10000F688(&v28, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

  v16 = xpc_BOOL_create(*(a1 + 93));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v28 = a2;
  v29 = "CallLikelyToFail";
  sub_10000F688(&v28, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_BOOL_create(*(a1 + 94));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kSupportsEmergencyFallback";
  sub_10000F688(&v28, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 88));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallSimSlot";
  sub_10000F688(&v28, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(16);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallSubType";
  sub_10000F688(&v28, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
}

void sub_100374CA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 432) = 0;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_1000BA174(a2);
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v38[0] = a1;
  v38[1] = "kUuid";
  sub_100006354(v38, &object);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  xpc_release(object);
  v41 = 0;
  if (v43 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
  v40 = 0;
  v41 = v5;
  v40 = CFUUIDCreateFromString(kCFAllocatorDefault, v5);
  sub_1000BA4A0(a2, &v40);
  v44 = a1;
  v45 = "kCallStartTime";
  sub_100006354(&v44, v38);
  *(a2 + 220) = xpc::dyn_cast_or_default(v38, 0, v6);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallDuration";
  sub_100006354(&v44, v38);
  *(a2 + 216) = xpc::dyn_cast_or_default(v38, 0, v7);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallSessionStart";
  sub_100006354(&v44, v38);
  *(a2 + 228) = xpc::dyn_cast_or_default(v38, 0, v8);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kBBCallDisconnectCause";
  sub_100006354(&v44, v38);
  *(a2 + 352) = xpc::dyn_cast_or_default(v38, 0, v9);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kPhoneNumber";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = *v38;
  *(a2 + 40) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  object = a1;
  v36 = "kCallName";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  *(a2 + 232) = *v38;
  *(a2 + 248) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  object = a1;
  v36 = "kSource";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  *(a2 + 144) = *v38;
  *(a2 + 160) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  v44 = a1;
  v45 = "kCallSourceMode";
  sub_100006354(&v44, v38);
  *(a2 + 64) = xpc::dyn_cast_or_default(v38, 0, v10);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kMobileCountryCode";
  sub_100006354(&v44, v38);
  *(a2 + 72) = xpc::dyn_cast_or_default(v38, 0, v11);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kISOCountryCode";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  *(a2 + 80) = *v38;
  *(a2 + 96) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  v44 = a1;
  v45 = "kAudioToneRelayFlag";
  sub_100006354(&v44, v38);
  v13 = xpc::dyn_cast_or_default(v38, 0, v12);
  xpc_release(v38[0]);
  *(a2 + 168) = v13;
  v44 = a1;
  v45 = "kAudioToneStandard";
  sub_100006354(&v44, v38);
  *(a2 + 172) = xpc::dyn_cast_or_default(v38, 0, v14);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kMobileOriginatedCallEndFlag";
  sub_100006354(&v44, v38);
  *(a2 + 350) = xpc::dyn_cast_or_default(v38, 0, v15);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kClientNeedsToSetupAudioInterruptions";
  sub_100006354(&v44, v38);
  *(a2 + 176) = xpc::dyn_cast_or_default(v38, 0, v16);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTheOnlyCall";
  sub_100006354(&v44, v38);
  *(a2 + 341) = xpc::dyn_cast_or_default(v38, 0, v17);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTTY";
  sub_100006354(&v44, v38);
  *(a2 + 320) = xpc::dyn_cast_or_default(v38, 0, v18);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTTYWithVoiceSupported";
  sub_100006354(&v44, v38);
  *(a2 + 324) = xpc::dyn_cast_or_default(v38, 0, v19) != 0;
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsThumperCall";
  sub_100006354(&v44, v38);
  *(a2 + 68) = xpc::dyn_cast_or_default(v38, 0, v20);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsSplitAllowed";
  sub_100006354(&v44, v38);
  *(a2 + 340) = xpc::dyn_cast_or_default(v38, 0, v21);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallDirectionMobileOriginated";
  sub_100006354(&v44, v38);
  v23 = xpc::dyn_cast_or_default(v38, 0, v22);
  xpc_release(v38[0]);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  *(a2 + 12) = v24;
  v44 = a1;
  v45 = "kCallStatus";
  sub_100006354(&v44, v38);
  *(a2 + 20) = xpc::dyn_cast_or_default(v38, 0, v25);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallerIdAvailability";
  sub_100006354(&v44, v38);
  *(a2 + 60) = xpc::dyn_cast_or_default(v38, 0, v26);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsInMultiParty";
  sub_100006354(&v44, v38);
  *(a2 + 340) = xpc::dyn_cast_or_default(v38, 0, v27);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallType";
  sub_100006354(&v44, v38);
  *(a2 + 48) = xpc::dyn_cast_or_default(v38, 0, v28);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kDisconnectCauseCode";
  sub_100006354(&v44, v38);
  *(a2 + 356) = xpc::dyn_cast_or_default(v38, 0, v29);
  *(a2 + 360) = 1;
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallSubType";
  sub_100006354(&v44, v38);
  *(a2 + 52) = xpc::dyn_cast_or_default(v38, 0, v30);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kVerstatEnabled";
  sub_100006354(&v44, v38);
  *(a2 + 256) = xpc::dyn_cast_or_default(v38, 0, v31);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kVerstatLevel";
  sub_100006354(&v44, v38);
  *(a2 + 260) = xpc::dyn_cast_or_default(v38, 0, v32);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "CallLikelyToFail";
  sub_100006354(&v44, v38);
  *(a2 + 104) = xpc::dyn_cast_or_default(v38, 0, v33);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kSupportsEmergencyFallback";
  sub_100006354(&v44, v38);
  *(a2 + 105) = xpc::dyn_cast_or_default(v38, 0, v34);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kImagePath";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 311) < 0)
  {
    operator delete(*(a2 + 288));
  }

  *(a2 + 288) = *v38;
  *(a2 + 304) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  sub_1000475BC(&v40);
  sub_100005978(&v41);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100375590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  xpc_release(object);
  sub_1000475BC(&a15);
  sub_100005978(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000BFE80(v22);
  _Unwind_Resume(a1);
}

void sub_100375984(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  xpc_release(object);
  JUMPOUT(0x100375960);
}

unsigned int *sub_1003759B0(uint64_t a1, unsigned int *a2, unsigned int *a3, xpc_object_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = xpc_int64_create(*v5);
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      xpc_array_append_value(*a4, v7);
      xpc_release(v7);
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100375A50(uint64_t a1, void *a2, int a3)
{
  v6 = "msim.vol.?";
  if (a3 == 2)
  {
    v6 = "msim.vol.2";
  }

  if (a3 == 1)
  {
    v7 = "msim.vol.1";
  }

  else
  {
    v7 = v6;
  }

  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, v7);
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger(a1, v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  v8 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = 0;
  return a1;
}

void sub_100375B10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_100375B38(ctu::OsLogLogger *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

uint64_t sub_100375B7C(uint64_t a1)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v3 = ServiceMap;
  if (v4 < 0)
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 96))(&v17, v10, *(a1 + 24), 1, @"MultiSimVoLteOnly", 0, 0);
  sub_10002FE1C(&v18, &v17);
  sub_10000A1EC(&v17);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v18, v12);
  v13 = buf[0];
  v14 = *a1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool(v13);
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I isMsimVoLteOnly: %s", buf, 0xCu);
  }

  sub_100045C8C(&v18);
  return v13;
}

void sub_100375D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_100375DA8(uint64_t a1, int a2)
{
  if (sub_100375B7C(a1) && a2)
  {
    if (*(a1 + 28))
    {
      return;
    }

    v4 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Multi-SIM VoLTE-only activated", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    if (!*(a1 + 28))
    {
      return;
    }

    v6 = *a1;
    v7 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    v5 = 0;
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Multi-SIM VoLTE-only deactivated", v8, 2u);
      v5 = 0;
    }
  }

  *(a1 + 28) = v5;
}

uint64_t IMSCallModel::isMergeAllowed(uint64_t a1, Registry **a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*a2);
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
  *v23 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v23);
  if (!v11)
  {
    v13 = 0;
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_7:
    v15 = **(a1 + 752);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "System Determination Manager is NULL!", v23, 2u);
    }

    LOBYTE(v16) = 0;
    goto LABEL_27;
  }

LABEL_12:
  *v23 = 0;
  v24 = 0;
  (*(*v13 + 40))(v23, v13, a3);
  if (*v23)
  {
    cf = 0;
    (*(**v23 + 40))(&cf);
    v16 = cf;
    buf[0] = 0;
    if (cf)
    {
      v17 = CFGetTypeID(cf);
      if (v17 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v16, v18);
        LOBYTE(v16) = buf[0];
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    v19 = **(a1 + 752);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "disabled";
      if (v16)
      {
        v20 = "enabled";
      }

      *buf = 136315138;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Conference support: %s", buf, 0xCu);
    }

    sub_10000A1EC(&cf);
  }

  else
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176C490();
    }

    LOBYTE(v16) = 0;
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

LABEL_27:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  return v16 & 1;
}

uint64_t IMSCallModel::IMSCallModel(uint64_t a1, uint64_t *a2, uint64_t *a3, NSObject **a4, void *a5)
{
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_9;
  }

  if (*(v10 + 49) == 1)
  {
    v13 = "call.CmdDriver.IMS.mdl.T";
    goto LABEL_11;
  }

  if (*(v10 + 49))
  {
LABEL_9:
    v13 = "call.CmdDriver.IMS.mdl";
    goto LABEL_11;
  }

  v11 = *(v10 + 52);
  v12 = "call.CmdDriver.IMS.mdl";
  if (v11 == 2)
  {
    v12 = "call.CmdDriver.IMS.mdl.2";
  }

  if (v11 == 1)
  {
    v13 = "call.CmdDriver.IMS.mdl.1";
  }

  else
  {
    v13 = v12;
  }

LABEL_11:
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, v13);
  sub_1001303E4((a1 + 40), a4, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v20[0] = off_101E2B528;
  v20[1] = sub_1000A7B40;
  v20[3] = v20;
  sub_1003764E0((a1 + 80));
  sub_1000A8744(v20);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = off_101E45FE0;
  *(a1 + 8) = off_101E46248;
  v15 = *a2;
  v14 = a2[1];
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  *(a1 + 104) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a3[1];
  *(a1 + 112) = *a3;
  *(a1 + 120) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = a1 + 168;
  *(a1 + 176) = a1 + 168;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1065353216;
  CallOperationContext::CallOperationContext((a1 + 232));
  *(a1 + 696) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 736) = 0u;
  *(a1 + 728) = a1 + 736;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0x200000002;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0u;
  v17 = a5[1];
  *(a1 + 800) = *a5;
  *(a1 + 808) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 816) = 0;
  return a1;
}

void sub_1003763F4(_Unwind_Exception *a1)
{
  sub_1001754E8((v1 + 24));
  sub_100382370(v2);
  v4 = v1[19];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[17];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[15];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = v1[13];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = v1[11];
  v1[11] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  IMSCallModelInterface::~IMSCallModelInterface(v1);
  v9 = v1[10];
  v1[10] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 9));
  sub_1000C0544(v1 + 5);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1003764E0(capabilities::ct *a1)
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

void sub_100376638(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

uint64_t IMSCallModel::init(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *(a1 + 136);
  *(a1 + 128) = v5;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a1 + 152);
  *(a1 + 144) = v7;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = (*(*a1 + 256))(a1);
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), v9);
  *(a1 + 752) = result;
  return result;
}

void **IMSCallModel::handleDisconnectEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v138 = _os_activity_create(&_mh_execute_header, "Call: Disconnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state[0].opaque[1] = 0;
  state[0].opaque[0] = 0;
  os_activity_scope_enter(v138, state);
  os_activity_scope_leave(state);
  v8 = *(a4 + 32);
  v9 = **(a1 + 752);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    LODWORD(state[0].opaque[0]) = 136315650;
    *(state[0].opaque + 4) = v10;
    WORD2(state[0].opaque[1]) = 2080;
    *(&state[0].opaque[1] + 6) = v11;
    HIWORD(state[1].opaque[0]) = 1024;
    LODWORD(state[1].opaque[1]) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: DISCONNECTED for %s (uuid) with reason %s (%d)", state, 0x1Cu);
  }

  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  memset(state, 0, sizeof(state));
  sub_1000BA174(state);
  v12 = IMSCallModel::getCallInfoFromUuid(a1, a2, state);
  v13 = **(a1 + 752);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = CSIBOOLAsString(*(a4 + 36));
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I IMS call end status sent: %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 296))(*(a1 + 128), state, *(a4 + 36));
    v123 = (*(*a1 + 256))(a1);
    v136 = 0;
    v135 = 0;
    v137 = 0;
    (*(**(a1 + 128) + 344))(&v135);
    v122 = v8;
    v16 = **(a1 + 752);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = BYTE4(v188);
      *&buf[8] = 2048;
      *&buf[10] = 0x6FB586FB586FB587 * ((v136 - v135) >> 3);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Disconnecting call is in a mutli party? %d, Size of CallList is what? %lu", buf, 0x12u);
    }

    if (BYTE4(v188) == 1)
    {
      v17 = v136;
      v18 = v135;
      if (v136 - v135 == 880 && v135 != v136)
      {
        do
        {
          *(v18 + 340) = 0;
          if (CallInfo::operator!=())
          {
            v168 = 0;
            v167 = 0u;
            v166 = 0u;
            v165 = 0u;
            v164 = 0u;
            v163 = 0u;
            v162 = 0u;
            v161 = 0u;
            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            v155 = 0u;
            v154 = 0u;
            v153 = 0u;
            v152 = 0u;
            v151 = 0u;
            v150 = 0u;
            v149 = 0u;
            v148 = 0u;
            v147 = 0u;
            v146 = 0u;
            v145 = 0u;
            v144 = 0u;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            sub_100E03FE8(buf, v18);
            v19 = *&buf[20];
            v20 = **(a1 + 752);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v21)
              {
                v133 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                }

                sub_1001DB8CC(&v133, __p);
                v22 = __p;
                if (v140 < 0)
                {
                  v22 = *__p;
                }

                *v141 = 136315138;
                *&v141[4] = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Fake Incoming Indication: Held for %s", v141, 0xCu);
                if (v140 < 0)
                {
                  operator delete(*__p);
                }

                sub_1000475BC(&v133);
              }

              (*(**(a1 + 128) + 120))(*(a1 + 128), buf);
            }

            else
            {
              if (v21)
              {
                v134 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                }

                sub_1001DB8CC(&v134, __p);
                v23 = __p;
                if (v140 < 0)
                {
                  v23 = *__p;
                }

                *v141 = 136315138;
                *&v141[4] = v23;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Fake Incoming Indication: ACTIVE for %s", v141, 0xCu);
                if (v140 < 0)
                {
                  operator delete(*__p);
                }

                sub_1000475BC(&v134);
              }

              (*(**(a1 + 128) + 64))(*(a1 + 128), buf, 1);
            }

            v24 = **(a1 + 752);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = asString();
              *__p = 136315138;
              *&__p[4] = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Call type of the active call: %s", __p, 0xCu);
            }

            if (BYTE4(v170) == 2)
            {
              v26 = *(a1 + 128);
              *__p = 0;
              (*(*v26 + 320))(v26, __p, v123);
            }

            sub_1000BFE80(buf);
          }

          v18 += 440;
        }

        while (v18 != v17);
      }
    }

    sub_1000D5848((a1 + 704), a2);
    *__p = 0;
    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    v28 = CFStringCreateWithCString(kCFAllocatorDefault, v27, 0x8000100u);
    v29 = v8;
    *__p = v28;
    if (!v28)
    {
      v31 = **(a1 + 752);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Received DISCONNECTED without a reason string", buf, 2u);
      }

LABEL_143:
      LOWORD(v189) = v29;
      (*(**(a1 + 128) + 72))(*(a1 + 128), state, 1, *(a4 + 1));
      v69 = **(a1 + 752);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = asString();
        *buf = 136315138;
        *&buf[4] = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I Call type of the disconnected call: %s", buf, 0xCu);
      }

      if (BYTE4(v170) == 2)
      {
        v71 = *(a1 + 128);
        *buf = 6;
        (*(*v71 + 320))(v71, buf, v123);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 96));
      v73 = ServiceMap;
      if (v74 < 0)
      {
        v75 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
        v76 = 5381;
        do
        {
          v74 = v76;
          v77 = *v75++;
          v76 = (33 * v76) ^ v77;
        }

        while (v77);
      }

      std::mutex::lock(ServiceMap);
      *buf = v74;
      v78 = sub_100009510(&v73[1].__m_.__sig, buf);
      if (v78)
      {
        v79 = v78[3];
        v80 = v78[4];
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v73);
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v80);
          v81 = 0;
          if (!v79)
          {
            goto LABEL_168;
          }

          goto LABEL_156;
        }
      }

      else
      {
        v79 = 0;
      }

      std::mutex::unlock(v73);
      v80 = 0;
      v81 = 1;
      if (!v79)
      {
        goto LABEL_168;
      }

LABEL_156:
      v82 = *(a4 + 2);
      v83 = LODWORD(state[1].opaque[0]);
      if (v82 == 1)
      {
        if (SHIBYTE(state[2].opaque[1]) < 0)
        {
          sub_100005F2C(&__dst, state[1].opaque[1], state[2].opaque[0]);
        }

        else
        {
          __dst = *(&state[1] + 8);
          v127 = state[2].opaque[1];
        }

        (*(*v79 + 200))(v79, v83, &__dst, LODWORD(state[0].opaque[1]), 1, 0);
        if ((SHIBYTE(v127) & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        p_dst = &__dst;
      }

      else
      {
        if (SHIBYTE(state[2].opaque[1]) < 0)
        {
          sub_100005F2C(&v124, state[1].opaque[1], state[2].opaque[0]);
        }

        else
        {
          v124 = *(&state[1] + 8);
          v125 = state[2].opaque[1];
        }

        (*(*v79 + 200))(v79, v83, &v124, LODWORD(state[0].opaque[1]), 0, 0);
        if ((SHIBYTE(v125) & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        p_dst = &v124;
      }

      operator delete(*p_dst);
LABEL_168:
      if ((v81 & 1) == 0)
      {
        sub_100004A34(v80);
      }

      goto LABEL_170;
    }

    if (CFStringCompare(v28, kIMSCallDisconnectionReasonNoEmergencyCallLocation, 0))
    {
      if (CFStringCompare(*__p, kIMSCallDisconnectionReasonNetworkError, 0))
      {
        if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRemoteBusy, 0))
        {
          if (CFStringCompare(*__p, kIMSCallDisconnectionReasonForbidden, 0))
          {
            if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaTimeout, 0))
            {
              if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaError, 0))
              {
                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaHeartbeatTimeout, 0))
                {
                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonUnknownError, 0) == kCFCompareEqualTo)
                  {
                    v86 = **(a1 + 752);
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(a2 + 23) >= 0)
                      {
                        v87 = a2;
                      }

                      else
                      {
                        v87 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v87;
                      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to unknown error with call uuid %s", buf, 0xCu);
                    }

                    DWORD1(v189) = 1;
                    goto LABEL_142;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonInviteTimeout, 0) == kCFCompareEqualTo)
                  {
                    v88 = **(a1 + 752);
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to timeout", buf, 2u);
                    }

                    DWORD1(v189) = 86;
                    BYTE8(v189) = 1;
                    v89 = *(a1 + 72);
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(a2 + 23) >= 0)
                      {
                        v90 = a2;
                      }

                      else
                      {
                        v90 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v90;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP INVITE timed out for call %s", buf, 0xCu);
                    }

                    v91 = *(a1 + 128);
                    sub_100E03FE8(v130, state);
                    v92 = v130;
                    (*(*v91 + 248))(v91, v130, 10);
                    goto LABEL_194;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresCSFB, 0) == kCFCompareEqualTo)
                  {
                    v93 = **(a1 + 752);
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to error that requires falling back to CS", buf, 2u);
                    }

                    DWORD1(v189) = 87;
                    BYTE8(v189) = 1;
                    v94 = *(a1 + 72);
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(a2 + 23) >= 0)
                      {
                        v95 = a2;
                      }

                      else
                      {
                        v95 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v95;
                      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP error encountered for call %s", buf, 0xCu);
                    }

                    v96 = *(a1 + 128);
                    sub_100E03FE8(v129, state);
                    v92 = v129;
                    (*(*v96 + 248))(v96, v129, 11);
                    goto LABEL_194;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonLocalSocketError, 0))
                  {
                    if (CFStringCompare(*__p, kIMSCallDisconnectionReasonSecondaryDeviceAlreadyInUse, 0))
                    {
                      if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAnsweredElsewhere, 0))
                      {
                        if (CFStringCompare(*__p, kIMSCallDisconnectionReasonTransferredToOtherDevice, 0))
                        {
                          if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAccessBarring, 0))
                          {
                            if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAVConferencedCrash, 0))
                            {
                              if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAudioUnit, 0))
                              {
                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonBasebandCrash, 0) == kCFCompareEqualTo)
                                {
                                  v109 = **(a1 + 752);
                                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (*(a2 + 23) >= 0)
                                    {
                                      v110 = a2;
                                    }

                                    else
                                    {
                                      v110 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v110;
                                    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Baseband Crash, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 3;
                                  goto LABEL_239;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonInvalidRat, 0) == kCFCompareEqualTo)
                                {
                                  v111 = **(a1 + 752);
                                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (*(a2 + 23) >= 0)
                                    {
                                      v112 = a2;
                                    }

                                    else
                                    {
                                      v112 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v112;
                                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Invalid RAT, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 102;
                                  BYTE8(v189) = 1;
                                  BYTE13(v188) = 1;
                                  goto LABEL_246;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresRedial, 0) == kCFCompareEqualTo)
                                {
                                  v113 = **(a1 + 752);
                                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (*(a2 + 23) >= 0)
                                    {
                                      v114 = a2;
                                    }

                                    else
                                    {
                                      v114 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v114;
                                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to IMS Fallback Requested, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 87;
                                  BYTE8(v189) = 1;
                                  v115 = *(a1 + 72);
                                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (*(a2 + 23) >= 0)
                                    {
                                      v116 = a2;
                                    }

                                    else
                                    {
                                      v116 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v116;
                                    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: IMS Handover for call %s", buf, 0xCu);
                                  }

                                  (*(**(a1 + 128) + 256))(*(a1 + 128), state, 8);
                                  v29 = v8;
                                  goto LABEL_195;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresRedialOverLteOnly, 0))
                                {
                                  DWORD1(v189) = 0;
LABEL_239:
                                  BYTE8(v189) = 1;
LABEL_246:
                                  v29 = v8;
                                  goto LABEL_143;
                                }

                                v117 = **(a1 + 752);
                                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                {
                                  if (*(a2 + 23) >= 0)
                                  {
                                    v118 = a2;
                                  }

                                  else
                                  {
                                    v118 = *a2;
                                  }

                                  *buf = 136315138;
                                  *&buf[4] = v118;
                                  _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to reason that requires RedialOverLteOnly, call uuid %s", buf, 0xCu);
                                }

                                DWORD1(v189) = 87;
                                BYTE8(v189) = 1;
                                v119 = *(a1 + 72);
                                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                                {
                                  if (*(a2 + 23) >= 0)
                                  {
                                    v120 = a2;
                                  }

                                  else
                                  {
                                    v120 = *a2;
                                  }

                                  *buf = 136315138;
                                  *&buf[4] = v120;
                                  _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: EPSFB failed for call %s", buf, 0xCu);
                                }

                                v121 = *(a1 + 128);
                                sub_100E03FE8(v128, state);
                                v29 = v8;
                                v92 = v128;
                                (*(*v121 + 248))(v121, v128, 9);
LABEL_194:
                                sub_1000BFE80(v92);
LABEL_195:
                                LOWORD(v189) = v29;
LABEL_170:
                                sub_100005978(__p);
                                *buf = &v135;
                                sub_1000B42B0(buf);
                                goto LABEL_171;
                              }

                              v107 = **(a1 + 752);
                              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                              {
                                if (*(a2 + 23) >= 0)
                                {
                                  v108 = a2;
                                }

                                else
                                {
                                  v108 = *a2;
                                }

                                *buf = 136315138;
                                *&buf[4] = v108;
                                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Media Start Failure, call uuid %s", buf, 0xCu);
                              }

                              v46 = 79;
                            }

                            else
                            {
                              v105 = **(a1 + 752);
                              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                              {
                                if (*(a2 + 23) >= 0)
                                {
                                  v106 = a2;
                                }

                                else
                                {
                                  v106 = *a2;
                                }

                                *buf = 136315138;
                                *&buf[4] = v106;
                                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to AVC crash, call uuid %s", buf, 0xCu);
                              }

                              v46 = 78;
                            }
                          }

                          else
                          {
                            v103 = **(a1 + 752);
                            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                            {
                              if (*(a2 + 23) >= 0)
                              {
                                v104 = a2;
                              }

                              else
                              {
                                v104 = *a2;
                              }

                              *buf = 136315138;
                              *&buf[4] = v104;
                              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Access barring, call uuid %s", buf, 0xCu);
                            }

                            v46 = 26;
                          }
                        }

                        else
                        {
                          v101 = **(a1 + 752);
                          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                          {
                            if (*(a2 + 23) >= 0)
                            {
                              v102 = a2;
                            }

                            else
                            {
                              v102 = *a2;
                            }

                            *buf = 136315138;
                            *&buf[4] = v102;
                            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to the call being transferred to another device %s", buf, 0xCu);
                          }

                          v46 = 84;
                        }
                      }

                      else
                      {
                        v99 = **(a1 + 752);
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                        {
                          if (*(a2 + 23) >= 0)
                          {
                            v100 = a2;
                          }

                          else
                          {
                            v100 = *a2;
                          }

                          *buf = 136315138;
                          *&buf[4] = v100;
                          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to the call being answered on another device %s", buf, 0xCu);
                        }

                        v46 = 83;
                      }
                    }

                    else
                    {
                      v97 = **(a1 + 752);
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                      {
                        if (*(a2 + 23) >= 0)
                        {
                          v98 = a2;
                        }

                        else
                        {
                          v98 = *a2;
                        }

                        *buf = 136315138;
                        *&buf[4] = v98;
                        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due another secondary device already on a call %s", buf, 0xCu);
                      }

                      v46 = 82;
                    }
                  }

                  else
                  {
                    v46 = 80;
                  }
                }

                else
                {
                  v67 = **(a1 + 752);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(a2 + 23) >= 0)
                    {
                      v68 = a2;
                    }

                    else
                    {
                      v68 = *a2;
                    }

                    *buf = 136315138;
                    *&buf[4] = v68;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media hold heartbeat timeout with call uuid %s", buf, 0xCu);
                  }

                  v46 = 76;
                }
              }

              else
              {
                v65 = **(a1 + 752);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  if (*(a2 + 23) >= 0)
                  {
                    v66 = a2;
                  }

                  else
                  {
                    v66 = *a2;
                  }

                  *buf = 136315138;
                  *&buf[4] = v66;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media error with call uuid %s", buf, 0xCu);
                }

                v46 = 77;
              }
            }

            else
            {
              v63 = **(a1 + 752);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                if (*(a2 + 23) >= 0)
                {
                  v64 = a2;
                }

                else
                {
                  v64 = *a2;
                }

                *buf = 136315138;
                *&buf[4] = v64;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media timeout with call uuid %s", buf, 0xCu);
              }

              v46 = 75;
            }
          }

          else
          {
            v61 = **(a1 + 752);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v62 = a2;
              }

              else
              {
                v62 = *a2;
              }

              *buf = 136315138;
              *&buf[4] = v62;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to rejection from the network (forbidden) with call uuid %s", buf, 0xCu);
            }

            v46 = 32;
          }
        }

        else
        {
          v47 = **(a1 + 752);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v48 = a2;
            }

            else
            {
              v48 = *a2;
            }

            *buf = 136315138;
            *&buf[4] = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to remote user busy with call uuid %s", buf, 0xCu);
          }

          v46 = 28;
        }
      }

      else
      {
        v44 = **(a1 + 752);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v45 = a2;
          }

          else
          {
            v45 = *a2;
          }

          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to network error with call uuid %s", buf, 0xCu);
        }

        v46 = 4;
      }

      DWORD1(v189) = v46;
LABEL_142:
      BYTE8(v189) = 1;
      goto LABEL_143;
    }

    v32 = **(a1 + 752);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected because emergency calls over WiFi not allowed in this location; call uuid %s", buf, 0xCu);
    }

    DWORD1(v189) = 0;
    BYTE8(v189) = 1;
    v34 = Registry::getServiceMap(*(a1 + 96));
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    *buf = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, buf);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
        if (!v42)
        {
LABEL_121:
          if ((v43 & 1) == 0)
          {
            sub_100004A34(v41);
          }

          goto LABEL_143;
        }

LABEL_102:
        v49 = **(a1 + 752);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Displaying a pop-up", buf, 2u);
        }

        *v141 = 0;
        v50 = kAlertDialogLocalizationTable;
        (*(*v42 + 40))(v141, v42, kAlertDialogLocalizationTable, @"CANCEL", @"Cancel");
        v132 = 0;
        (*(*v42 + 40))(&v132, v42, v50, @"COUNTRY_DISABLED_WIFI_EMERGENCY_CALL", @"Emergency Call Not Available in This Location");
        v131 = 0;
        v51 = Registry::getServiceMap(*(a1 + 96));
        v52 = v51;
        if (v53 < 0)
        {
          v54 = (v53 & 0x7FFFFFFFFFFFFFFFLL);
          v55 = 5381;
          do
          {
            v53 = v55;
            v56 = *v54++;
            v55 = (33 * v55) ^ v56;
          }

          while (v56);
        }

        std::mutex::lock(v51);
        *buf = v53;
        v57 = sub_100009510(&v52[1].__m_.__sig, buf);
        if (v57)
        {
          v59 = v57[3];
          v58 = v57[4];
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v52);
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            v29 = v122;
            sub_100004A34(v58);
            v60 = 0;
LABEL_118:
            (*(*v59 + 32))(v59, v132, v131, *v141);
            if ((v60 & 1) == 0)
            {
              sub_100004A34(v58);
            }

            sub_100005978(&v131);
            sub_100005978(&v132);
            sub_100005978(v141);
            goto LABEL_121;
          }
        }

        else
        {
          v59 = 0;
        }

        std::mutex::unlock(v52);
        v58 = 0;
        v60 = 1;
        goto LABEL_118;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
    if (!v42)
    {
      goto LABEL_121;
    }

    goto LABEL_102;
  }

  if (v14)
  {
    if (*(a2 + 23) >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Received Disconnect Event with unknown uuid: %s", buf, 0xCu);
  }

LABEL_171:
  sub_1000BFE80(state);
  return sub_1000C0590(&v138);
}

void sub_100378090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_1000BFE80(va);
  sub_100005978(&STACK[0x5D0]);
  STACK[0x600] = &STACK[0x5B0];
  sub_1000B42B0(&STACK[0x600]);
  sub_1000BFE80(&STACK[0x7C0]);
  sub_1000C0590(&STACK[0x5C8]);
  _Unwind_Resume(a1);
}

uint64_t IMSCallModel::getCallInfoFromUuid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v13 = *(a2 + 16);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(v16, __dst[0], __dst[1]);
  }

  else
  {
    *v16 = *__dst;
    v17 = v13;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, v16[0], v16[1]);
  }

  else
  {
    *__p = *v16;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v15;
    v15 = v20;
    v21 = v5;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v15;
  v14 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  v7 = CFUUIDCreateFromString(kCFAllocatorDefault, v6);
  __p[0] = v7;
  v8 = *(a1 + 128);
  v11 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v9 = (*(*v8 + 240))(v8, &v11, a3);
  sub_1000475BC(&v11);
  if ((v9 & 1) == 0 && os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176C518();
  }

  sub_1000475BC(__p);
  sub_100005978(&v14);
  return v9;
}

void sub_1003783F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleEmergencySessionRequired(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  sub_1000BA174(&v92);
  v8 = IMSCallModel::getCallInfoFromUuid(a1, a2, &v92);
  v9 = *(a1 + 752);
  v10 = *v9;
  if (v8)
  {
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: EMERGENCY SESSION REQUIRED for %s (uuid)", buf, 0xCu);
    }

    DWORD1(v114) = 81;
    BYTE8(v114) = 1;
    if (CallInfo::isEmergencyCallEmergencySetup(&v92))
    {
      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for emergency call %s. Treat as an SipError", buf, 0xCu);
      }

      v14 = *(a1 + 128);
      sub_100E03FE8(v91, &v92);
      (*(*v14 + 248))(v14, v91, 11);
      sub_1000BFE80(v91);
      return sub_1000BFE80(&v92);
    }

    v90 = 0;
    v89 = 0;
    v15 = (a1 + 96);
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v17 = ServiceMap;
    if (v18 < 0)
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
    *buf = v18;
    v22 = sub_100009510(&v17[1].__m_.__sig, buf);
    if (v22)
    {
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_24:
    (*(*a1 + 256))(a1);
    PersonalityIdFromSlotIdEx();
    (*(*v24 + 40))(&v89, v24, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v25 & 1) == 0)
    {
      sub_100004A34(v23);
    }

    v26 = (*(*v89 + 296))(v89);
    v27 = **(a1 + 752);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      v29 = asString();
      v30 = CSIBOOLAsString(v26);
      v31 = CSIBOOLAsString(a4 ^ 1u);
      if (a3[23] >= 0)
      {
        v32 = a3;
      }

      else
      {
        v32 = *a3;
      }

      *buf = 136316162;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 2080;
      *&buf[24] = v30;
      *&buf[32] = 2080;
      *&buf[34] = v31;
      *&buf[42] = 2080;
      *&buf[44] = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for call %s. LTE bearer support: %s, Carrier allows undetected emergency on IMS: %s, Emergency contact available: %s, URN: %s", buf, 0x34u);
    }

    v33 = *(a1 + 764);
    if (((v33 == 2) & v26) == 1)
    {
      v34 = **(a1 + 752);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = CSIBOOLAsString(*(a1 + 772));
        v36 = asString();
        *buf = 136315394;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired with unknown LTE bearer support. Airplane Mode: %s, Registration Status: %s", buf, 0x16u);
      }

      v37 = *(a1 + 772) | (*(a1 + 776) == 1);
    }

    else
    {
      v37 = (v33 != 0) & v26;
    }

    memset(&__str, 0, sizeof(__str));
    (*(**(a1 + 128) + 272))(&__str);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size < 7)
    {
LABEL_89:
      if ((v37 & 1) == 0)
      {
        if (!CallInfo::isEmergencyCallNormalSetup(&v92) || !(*(**(a1 + 128) + 360))(*(a1 + 128), v93))
        {
          if (a4)
          {
            v64 = **(a1 + 752);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v65 = a2;
              }

              else
              {
                v65 = *a2;
              }

              *buf = 136315138;
              *&buf[4] = v65;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s without emergency contact. Redial with normal setup over CS", buf, 0xCu);
            }

            v66 = *(a1 + 128);
            sub_100E03FE8(v77, &v92);
            v67 = v77;
            (*(*v66 + 248))(v66, v77, 4);
          }

          else
          {
            HIDWORD(v98) = sub_1011E8F64(a3);
            v68 = **(a1 + 752);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = *(a2 + 23);
              v70 = *a2;
              v71 = asString();
              if (v69 >= 0)
              {
                v72 = a2;
              }

              else
              {
                v72 = v70;
              }

              *buf = 136315394;
              *&buf[4] = v72;
              *&buf[12] = 2080;
              *&buf[14] = v71;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s with emergency contact %s. Redial with emergency setup over CS", buf, 0x16u);
            }

            v73 = *(a1 + 128);
            sub_100E03FE8(v76, &v92);
            v67 = v76;
            (*(*v73 + 248))(v73, v76, 3);
          }

          sub_1000BFE80(v67);
          goto LABEL_114;
        }

        v63 = **(a1 + 752);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for normal setup emergency call but CS call blocked. Force IMS redial", buf, 2u);
        }
      }

      v61 = **(a1 + 752);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v62 = a2;
        }

        else
        {
          v62 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s to redial over IMS as emergency setup", buf, 0xCu);
      }

      (*(**(a1 + 128) + 256))(*(a1 + 128), &v92, 7);
LABEL_114:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v90)
      {
        sub_100004A34(v90);
      }

      return sub_1000BFE80(&v92);
    }

    v75 = size;
    v39 = Registry::getServiceMap(*v15);
    v40 = v39;
    if (v41 < 0)
    {
      v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    std::mutex::lock(v39);
    *buf = v41;
    v45 = sub_100009510(&v40[1].__m_.__sig, buf);
    if (v45)
    {
      v47 = v45[3];
      v46 = v45[4];
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v40);
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v46);
        v48 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v47 = 0;
    }

    std::mutex::unlock(v40);
    v46 = 0;
    v48 = 1;
LABEL_52:
    v49 = (*(*v47 + 16))(v47);
    if ((v48 & 1) == 0)
    {
      sub_100004A34(v46);
    }

    if (!v49)
    {
      goto LABEL_85;
    }

    memset(&buf[8], 0, 48);
    v128 = 0u;
    v127 = 0u;
    memset(&v125, 0, sizeof(v125));
    v124 = 0u;
    v126 = 23;
    qmemcpy(&buf[23], "\tCall", 5);
    qmemcpy(buf, "Telephony", 9);
    buf[47] = 4;
    sub_1000167D4(&buf[48], "Suspicious SIP 380 Emergency Redirect Number", 0x2CuLL);
    std::string::operator=(&v125, &__str);
    v126 = v126 & 0xFFFFFFFFFFFFFFE8 | 1;
    v50 = Registry::getServiceMap(*v15);
    v51 = v50;
    if ((v52 & 0x8000000000000000) != 0)
    {
      v53 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
      v54 = 5381;
      do
      {
        v52 = v54;
        v55 = *v53++;
        v54 = (33 * v54) ^ v55;
      }

      while (v55);
    }

    std::mutex::lock(v50);
    v120 = v52;
    v56 = sub_100009510(&v51[1].__m_.__sig, &v120);
    if (v56)
    {
      v58 = v56[3];
      v57 = v56[4];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v51);
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v57);
        v59 = 0;
LABEL_63:
        sub_100D9EC48(__dst, buf);
        v122 = 0;
        (*(*v58 + 16))(v58, __dst, v121);
        sub_10010DF14(v121);
        if (v87 < 0)
        {
          operator delete(__p);
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
          operator delete(__dst[0]);
        }

        if ((v59 & 1) == 0)
        {
          sub_100004A34(v57);
        }

        if (SBYTE7(v128) < 0)
        {
          operator delete(v127);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124) < 0)
        {
          operator delete(*&buf[48]);
        }

        if ((buf[47] & 0x80000000) != 0)
        {
          operator delete(*&buf[24]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

LABEL_85:
        if ((*(*v89 + 304))(v89))
        {
          v60 = **(a1 + 752);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v75;
            *&buf[12] = 2048;
            *&buf[14] = 6;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for suspicious number with %zu > %zu digits", buf, 0x16u);
          }

          (*(**(a1 + 128) + 304))(*(a1 + 128), &v92, 1);
        }

        goto LABEL_89;
      }
    }

    else
    {
      v58 = 0;
    }

    std::mutex::unlock(v51);
    v57 = 0;
    v59 = 1;
    goto LABEL_63;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_10176C580();
  }

  return sub_1000BFE80(&v92);
}

void sub_100379050(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (STACK[0x420])
  {
    sub_100004A34(STACK[0x420]);
  }

  sub_1000BFE80(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleActiveEvent(uint64_t a1, uint64_t a2)
{
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
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
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  sub_1000BA174(v45);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v45);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = DWORD2(v45[0]);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: ACTIVE for %s (callId: %u)", buf, 0x12u);
    }

    if ((IMSCallModel::getCallInfoFromUuid(a1, a2, v45) & 1) == 0)
    {
      v8 = **(a1 + 752);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = DWORD2(v45[0]);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received ACTIVE ind with unknown id: %u", buf, 8u);
      }
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    (*(**(a1 + 128) + 232))(&v42);
    v9 = v42;
    v10 = v43;
    if (v43 == v42)
    {
      v14 = 0;
    }

    else
    {
      do
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100E03FE8(buf, v9);
        v11 = *&buf[8];
        v12 = DWORD2(v45[0]);
        sub_1000BFE80(buf);
        v13 = v11 == v12;
        v14 = v11 == v12;
        if (v13)
        {
          break;
        }

        v9 += 440;
      }

      while (v9 != v10);
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    (*(**(a1 + 128) + 208))(&v39);
    v15 = v39;
    v16 = v40;
    if (v40 == v39)
    {
      v19 = 0;
    }

    else
    {
      do
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100E03FE8(buf, v15);
        v17 = *&buf[8];
        v18 = DWORD2(v45[0]);
        sub_1000BFE80(buf);
        v13 = v17 == v18;
        v19 = v17 == v18;
        if (v13)
        {
          break;
        }

        v15 += 440;
      }

      while (v15 != v16);
    }

    (*(**(a1 + 128) + 280))(*(a1 + 128), v45, 1);
    (*(**(a1 + 128) + 64))(*(a1 + 128), v45, 1);
    v20 = **(a1 + 752);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = asString();
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Call type of the active call: %s", buf, 0xCu);
    }

    if (BYTE4(v46) == 2)
    {
      v22 = *(a1 + 128);
      *buf = 0;
      v23 = (*(*a1 + 256))(a1);
      (*(*v22 + 320))(v22, buf, v23);
    }

    if (v14 || v19)
    {
      goto LABEL_43;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v25 = ServiceMap;
    if (v26 < 0)
    {
      v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(ServiceMap);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v32 = v30[3];
      v31 = v30[4];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v31);
        v33 = 0;
        if (!v32)
        {
LABEL_41:
          if ((v33 & 1) == 0)
          {
            sub_100004A34(v31);
          }

LABEL_43:
          *buf = &v39;
          sub_1000B42B0(buf);
          *buf = &v42;
          sub_1000B42B0(buf);
          return sub_1000BFE80(v45);
        }

LABEL_36:
        v35 = HIDWORD(v45[0]);
        v34 = LODWORD(v45[1]);
        if (SHIBYTE(v45[2]) < 0)
        {
          sub_100005F2C(__p, *(&v45[1] + 1), *&v45[2]);
        }

        else
        {
          *__p = *(&v45[1] + 8);
          v38 = *(&v45[2] + 1);
        }

        (*(*v32 + 192))(v32, v34, __p, DWORD2(v45[0]), v35 == 1);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C5F0();
  }

  return sub_1000BFE80(v45);
}

void sub_10037973C(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  STACK[0x210] = va;
  sub_1000B42B0(&STACK[0x210]);
  STACK[0x210] = va1;
  sub_1000B42B0(&STACK[0x210]);
  sub_1000BFE80(va2);
  _Unwind_Resume(a1);
}

BOOL IMSCallModel::checkIfIMSCallExists(os_log_t **a1)
{
  lpsrc = 0;
  v8 = 0;
  ((*a1)[59])(&lpsrc);
  v2 = lpsrc;
  if (lpsrc)
  {
    {
      v3 = v8;
      if (v8)
      {
LABEL_4:
        v4 = 1;
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v3);
        goto LABEL_13;
      }

      v4 = 1;
    }

    else
    {
      if (v5)
      {
        v3 = v8;
        if (v8)
        {
          goto LABEL_4;
        }
      }

      v4 = v5 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
    {
      sub_10176C660();
    }

    v4 = 0;
  }

LABEL_13:
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v4;
}

const void **IMSCallModel::handleInactiveEvent(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7) && IMSCallModel::checkIfIMSCallExists(a1))
  {
    v4 = **(a1 + 752);
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

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: HOLD for %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 120))(*(a1 + 128), v7);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176C6D0();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleTryingEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TRYING for %s. Ignoring.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C740();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleRingingEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: RINGING (Alerting) for %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 48))(*(a1 + 128), v9);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C7B0();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleJoinedEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: CONFERENCE for %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C820();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleInProgressEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: SESSION PROGRESS for %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 56))(*(a1 + 128), v9);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C890();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleTextMediaDetectedEvent(uint64_t a1, uint64_t a2)
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
  sub_1000BA174(&v29);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, &v29))
  {
    v4 = (*(**(a1 + 80) + 16))(*(a1 + 80), v30);
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT STREAM DETECTED for %s", &buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        if (!v15)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
LABEL_13:
      v17 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N SystemDeterminationManager is not found", &buf, 2u);
      }

LABEL_40:
      if ((v16 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      return sub_1000BFE80(&v29);
    }

LABEL_19:
    v27 = 0;
    v28 = 0;
    (*(*a1 + 248))(&buf, a1);
    (*(*v15 + 40))(&v27, v15, &buf);
    if (v60 < 0)
    {
      operator delete(buf);
    }

    if (v27)
    {
      v18 = (*(**(a1 + 128) + 352))(*(a1 + 128), &v29);
      v19 = *v27;
      if (v18)
      {
        v20 = (v19 + 104);
      }

      else
      {
        v20 = (v19 + 96);
      }

      if ((*v20)(v27, 0))
      {
        (*(**(a1 + 128) + 168))(*(a1 + 128), &v29);
      }

      else
      {
        v25 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Carrier does not support TTY over IMS. Ignoring IMS Text Stream Detected indication.", &buf, 2u);
        }
      }
    }

    else
    {
      v21 = *v4;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 248))(&buf, a1);
        v22 = v60;
        if ((v60 & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          v22 = *(&buf + 1);
          p_buf = buf;
        }

        v24 = v22 ? p_buf : "<invalid>";
        *v57 = 136315138;
        v58 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N IMS Config can't be found. PersonalityID: [%s]", v57, 0xCu);
        if (v60 < 0)
        {
          operator delete(buf);
        }
      }
    }

    if (v28)
    {
      sub_100004A34(v28);
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176C900();
  }

  return sub_1000BFE80(&v29);
}

void sub_10037A558(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_100004A34(a3);
  }

  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleTextMediaRemoteDirectionEvent(uint64_t a1, uint64_t a2, int a3)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_1000BA174(v12);
  v6 = IMSCallModel::getCallInfoFromUuid(a1, a2, v12);
  v7 = *(a1 + 752);
  v8 = *v7;
  if (v6)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "HELD";
      if (a3)
      {
        v9 = "RESUMED";
      }

      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT MEDIA REMOTE DIRECTION DETECTED (%s) for %s", buf, 0x16u);
    }

    LOWORD(v13) = a3 ^ 1 | 0x100;
    (*(**(a1 + 128) + 184))(*(a1 + 128), v12);
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176C900();
  }

  return sub_1000BFE80(v12);
}

const void **IMSCallModel::handleInputFrequencyLevelUpdatedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 128);
  sub_1001DB72C(a2, &v6);
  (*(*v4 + 192))(v4, 1, &v6, a3);
  return sub_1000475BC(&v6);
}

void sub_10037A80C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleOutputFrequencyLevelUpdatedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 128);
  sub_1001DB72C(a2, &v6);
  (*(*v4 + 192))(v4, 0, &v6, a3);
  return sub_1000475BC(&v6);
}

void sub_10037A894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

uint64_t IMSCallModel::handleIncomingDtmfEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v9 = 136315394;
    v10 = v7;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: DOWNLINK DTMF for UUID %s: %c", &v9, 0x12u);
  }

  return (*(**(a1 + 144) + 24))(*(a1 + 144), a2, a3);
}

const void **IMSCallModel::handleAudioStreamTokensEvent(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1000BA174(v24);
    if (IMSCallModel::getCallInfoFromUuid(a1, a2, v24))
    {
      v7 = *a3;
      v8 = **(a1 + 752);
      if (*a3)
      {
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

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: AUDIO STREAM TOKENS for UUID %s: %@", buf, 0x16u);
          v7 = *a3;
        }

        memset(buf, 0, sizeof(buf));
        Count = CFArrayGetCount(v7);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v23 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
            sub_1002AF4F0(&v23, &ValueAtIndex);
            if (v23)
            {
              LODWORD(ValueAtIndex) = 0;
              ctu::cf::assign(&ValueAtIndex, v23, v12);
              v13 = *&buf[8];
              if (*&buf[8] >= *&buf[16])
              {
                v15 = *buf;
                v16 = *&buf[8] - *buf;
                v17 = (*&buf[8] - *buf) >> 2;
                v18 = v17 + 1;
                if ((v17 + 1) >> 62)
                {
                  sub_1000CE3D4();
                }

                v19 = *&buf[16] - *buf;
                if ((*&buf[16] - *buf) >> 1 > v18)
                {
                  v18 = v19 >> 1;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v20 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  sub_100016740(buf, v20);
                }

                *(4 * v17) = ValueAtIndex;
                v14 = 4 * v17 + 4;
                memcpy(0, v15, v16);
                v21 = *buf;
                *buf = 0;
                *&buf[8] = v14;
                *&buf[16] = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              else
              {
                **&buf[8] = ValueAtIndex;
                v14 = v13 + 4;
              }

              *&buf[8] = v14;
            }

            sub_100029A48(&v23);
          }
        }

        sub_10037AD10(&v24[11] + 8, buf);
        (*(**(a1 + 128) + 152))(*(a1 + 128), v24);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10176C9E0();
      }
    }

    else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176C970();
    }

    return sub_1000BFE80(v24);
  }

  return result;
}

void sub_10037ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 - 112);
  if (v5)
  {
    *(v3 - 104) = v5;
    operator delete(v5);
  }

  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10037AD10(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1000B26FC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1000FAABC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **IMSCallModel::handleTextStreamTokenEvent(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_1000BA174(v11);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v11))
  {
    v10 = 0;
    ctu::cf::assign(&v10, *a3, v6);
    v7 = **(a1 + 752);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315394;
      v21 = v8;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT STREAM TOKEN for UUID %s: %u", buf, 0x12u);
    }

    DWORD2(v12) = v10;
    BYTE12(v12) = 1;
    (*(**(a1 + 128) + 160))(*(a1 + 128), v11);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CA1C();
  }

  return sub_1000BFE80(v11);
}

void sub_10037AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

void IMSCallModel::handleTextMediaDeactivatedEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
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
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_1000BA174(&v7);
    if (IMSCallModel::getCallInfoFromUuid(a1, a2, &v7))
    {
      v5 = *(*(**(a1 + 80) + 16))(*(a1 + 80), v8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        *buf = 136315138;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT MEDIA DEACTIVATED (RTT NEGOTIATION FAILED) for %s", buf, 0xCu);
      }

      (*(**(a1 + 128) + 176))(*(a1 + 128), &v7);
    }

    else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CA8C();
    }

    sub_1000BFE80(&v7);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CAF4();
  }
}

const void **IMSCallModel::handleProceedingEvent(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1000BA174(v16);
  v4 = **(a1 + 752);
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

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: PROCEEDING for %s.", buf, 0xCu);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = **(a1 + 752);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      if (v7 >= 0)
      {
        v9 = a2;
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = DWORD2(v16[0]);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Dialing Call with UUID: %s, call uuid: %u", buf, 0x12u);
    }

    if (IMSCallModel::getCallInfoFromUuid(a1, a2, v16))
    {
      v10 = *(a1 + 160) + 1;
      *(a1 + 160) = v10;
      DWORD2(v16[0]) = v10;
      (*(**(a1 + 128) + 16))(*(a1 + 128), v16);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1174405120;
      v14[2] = sub_10037B4E0;
      v14[3] = &unk_101E462C0;
      v14[4] = a1;
      sub_100E03FE8(v15, v16);
      v18 = 0;
      v19 = 0;
      sub_100004AA0(&v18, (a1 + 40));
      v11 = *(a1 + 56);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1003825A0;
      v21 = &unk_101E46460;
      v23 = v18;
      v24 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v14;
      dispatch_async(v11, buf);
      if (v24)
      {
        sub_100004A34(v24);
      }

      if (v19)
      {
        sub_100004A34(v19);
      }

      sub_1000BFE80(v15);
    }

    else
    {
      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PROCEEDING for STK call", buf, 2u);
      }

      (*(*a1 + 464))(a1, a2);
    }
  }

  return sub_1000BFE80(v16);
}

void sub_10037B4B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void IMSCallModel::handleIMSDialBBCallResponse(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_100E03FE8(v10, *(a1 + 176) + 16);
    sub_10037B78C(a1 + 168);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v9 = *(a2 + 16);
    }

    toUuid();
    block[0] = *&v10[0];
    *&v10[0] = v14;
    v14 = 0;
    sub_1000475BC(block);
    sub_1000475BC(&v14);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 160) + 1;
    *(a1 + 160) = v4;
    DWORD2(v10[0]) = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1174405120;
    v6[2] = sub_10037B7DC;
    v6[3] = &unk_101E462F0;
    v6[4] = a1;
    sub_100E03FE8(v7, v10);
    v14 = 0;
    v15 = 0;
    sub_100004AA0(&v14, (a1 + 40));
    v5 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_1003825A0;
    block[3] = &unk_101E46460;
    block[5] = v14;
    v13 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v6;
    dispatch_async(v5, block);
    if (v13)
    {
      sub_100004A34(v13);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }

    sub_1000BFE80(v7);
    sub_1000BFE80(v10);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CB30();
  }
}

void sub_10037B78C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  sub_1000BFE80((v2 + 2));

  operator delete(v2);
}

const void **IMSCallModel::handleRingbackToneEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7))
  {
    IMSCallModel::handleCallStatusRingbackToneStatus_sync(a1, a2, a3);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CB6C();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleCallStatusRingbackToneStatus_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = v7;
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: %s RBT for %s", buf, 0x16u);
  }

  v14 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1000BA174(buf);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, buf))
  {
    (*(**(a1 + 128) + 104))(*(a1 + 128), buf, a3);
  }

  else
  {
    v9 = **(a1 + 752);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = asString();
      sub_10176CBDC(v10, a2, v12, v9);
    }
  }

  return sub_1000BFE80(buf);
}

void sub_10037BAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleHoldFailed(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v7);
  v5 = os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v5)
    {
      sub_10176CCB4();
    }

    (*(**(a1 + 128) + 144))(*(a1 + 128));
  }

  else if (v5)
  {
    sub_10176CC44();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleAcknowledgedEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: ACKNOWLEDGED for uuid: %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 280))(*(a1 + 128), v9, 2);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176CD24();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleMediaInitializedEvent(uint64_t a1, uint64_t a2)
{
  v4 = **(a1 + 752);
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

    LODWORD(v7[0]) = 136315138;
    *(v7 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MEDIA INITIALIZED for uuid: %s", v7, 0xCu);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7))
  {
    (*(**(a1 + 144) + 40))(*(a1 + 144), v7);
    (*(**(a1 + 128) + 32))(*(a1 + 128), v7);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CD94();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleThumperCallRegister(uint64_t a1, char *a2)
{
  v4 = **(a1 + 752);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: THUMPER CALL %s REGISTERED", &v7, 0xCu);
  }

  return sub_1003825DC((a1 + 192), a2);
}

uint64_t *IMSCallModel::handleThumperCallDeregister(uint64_t a1, char *a2)
{
  v4 = **(a1 + 752);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: THUMPER CALL %s DEREGISTERED", &v7, 0xCu);
  }

  return sub_100382900((a1 + 192), a2);
}

void **IMSCallModel::handleIncomingEvent(uint64_t a1, uint64_t a2)
{
  v6 = _os_activity_create(&_mh_execute_header, "Call: Incoming", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);
  os_activity_scope_leave(&state);
  if (a2)
  {
    lpsrc[0] = 0;
    lpsrc[1] = 0;
    sub_100382984(lpsrc, a2);
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CE80();
  }

  return sub_1000C0590(&v6);
}

void sub_10037CB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, uint64_t a43, char a44)
{
  sub_10000A1EC(&a26);
  sub_1000BFE80(&a44);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if (a40)
  {
    sub_100004A34(a40);
  }

  sub_1000C0590(&a41);
  _Unwind_Resume(a1);
}

void IMSCallModel::processBrandedCall(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 312))(a1, &v13, 1, 0);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v7 = **(a1 + 752);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 232);
    if (*(a2 + 255) >= 0)
    {
      v8 = a2 + 232;
    }

    v9 = a2 + 264;
    if (*(a2 + 287) < 0)
    {
      v9 = *(a2 + 264);
    }

    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Branded call company name is %s, company image url is %{public}s", buf, 0x16u);
  }

  sub_100413DEC(@"com.apple.CommCenter.BrandedCalling.callreceived", @"com.apple.CommCenter.BrandedCalling");
  sub_100004AA0(buf, (a1 + 40));
  v10 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    memset(buf, 0, 32);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    memset(buf, 0, 32);
  }

  sub_100E03FE8(v12, a2);
  v11 = a3[1];
  v12[55] = *a3;
  v12[56] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *&buf[24] = 0;
  operator new();
}

void sub_10037D4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, const void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, char a38, std::__shared_weak_count *a39)
{
  sub_100383110(v40 - 176);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_100010250(&a29);
  if (a37)
  {
    sub_100004A34(a37);
  }

  sub_100383110(v40 - 144);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  _Unwind_Resume(a1);
}

void IMSCallModel::completeHandleIncomingEvent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (((*(**(a1 + 144) + 16))(*(a1 + 144), a4) & 1) == 0)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CEBC();
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (((*(**(a1 + 128) + 312))(*(a1 + 128), a3, 0) & 1) == 0)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CEF8();
    }

LABEL_12:
    v11 = *a2;
    LODWORD(__dst) = 2;
    (*(*v11 + 32))(v11, &__dst);
    return;
  }

  v8 = *(a1 + 160) + 1;
  *(a1 + 160) = v8;
  *(a3 + 8) = v8;
  v9 = *a2;
  v10 = a2[1];
  v40[0] = *a2;
  v40[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *a2;
  }

  if (*(v9 + 55) < 0)
  {
    sub_100005F2C(&__dst, *(v9 + 32), *(v9 + 40));
  }

  else
  {
    __dst = *(v9 + 32);
    v39 = *(v9 + 48);
  }

  IMSCallModel::addIMSCallForUuid(a1, v40, &__dst);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  v12 = *(a1 + 128);
  if (v4)
  {
    (*(*v12 + 96))(v12, a3);
  }

  else
  {
    LODWORD(__dst) = 1;
    (*(*v12 + 80))(v12, a3, &__dst);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  *&__dst = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &__dst);
  if (!v19)
  {
    v21 = 0;
LABEL_30:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
      goto LABEL_46;
    }

LABEL_31:
    v23 = *(a3 + 16);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v36, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v36 = *(a3 + 24);
      v37 = *(a3 + 40);
    }

    v24 = *(a3 + 8);
    CSIPhoneNumber::CSIPhoneNumber();
    (*(*v21 + 184))(v21, v23, &v36, v24, &v25);
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

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    goto LABEL_46;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
    goto LABEL_30;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
  if (v21)
  {
    goto LABEL_31;
  }

LABEL_46:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

void sub_10037D9B0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D9FC()
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  if (!v0)
  {
    JUMPOUT(0x10037D9F0);
  }

  JUMPOUT(0x10037D9E8);
}

uint64_t sub_10037DA20(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void IMSCallModel::setBrandedCallingImageFetchingTimer(Registry **this)
{
  v31 = 0;
  v32 = 0;
  v2 = this + 12;
  ServiceMap = Registry::getServiceMap(this[12]);
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
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*this + 32))(this);
  PersonalityIdFromSlotIdEx();
  (*(*v11 + 40))(&v31, v11, buf);
  if ((buf[23] & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(*buf);
  if ((v12 & 1) == 0)
  {
LABEL_11:
    sub_100004A34(v10);
  }

LABEL_12:
  if (v31)
  {
    cf = 0;
    (*(*v31 + 40))(&cf);
    v13 = cf;
    *buf = 1000;
    if (cf)
    {
      v14 = CFGetTypeID(cf);
      if (v14 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v13, v15);
      }
    }

    v16 = *buf;
    sub_10000A1EC(&cf);
  }

  else
  {
    v16 = 1000;
  }

  v17 = *this[94];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Set branded calling image fetching timeout to %llu", buf, 0xCu);
  }

  sub_100004AA0(buf, this + 5);
  v18 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v18 + 1));
  }

  Registry::getTimerService(buf, *v2);
  v19 = *buf;
  sub_10000501C(__p, "Branded calling image fetching timeout");
  v20 = this[7];
  object = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1174405120;
  v24[2] = sub_100381D90;
  v24[3] = &unk_101E46320;
  v25 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  aBlock = _Block_copy(v24);
  sub_100D23364(v19, __p, 1, 1000 * v16, &object, &aBlock);
  v21 = cf;
  cf = 0;
  v22 = this[11];
  this[11] = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
    v23 = cf;
    cf = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
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

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v25 + 1));
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v18 + 1));
  }

  if (v32)
  {
    sub_100004A34(v32);
  }
}

void sub_10037DE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::addIMSCallForUuid(uint64_t a1, uint64_t *a2, void **a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if (v3 < 0)
  {
    v3 = a3[1];
  }

  v5 = *(a1 + 752);
  v6 = *v5;
  if (v3)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      if (v4 >= 0)
      {
        v10 = a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Adding a new IMS call for uuid %s", &buf, 0xCu);
    }

    *&buf = a3;
    v11 = sub_100383310(a1 + 704, a3);
    v13 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 64);
    *(v11 + 56) = v13;
    *(v11 + 64) = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    *&buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &buf);
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
        if (!v23)
        {
LABEL_37:
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          return;
        }

LABEL_23:
        v25 = (*(*v23 + 792))(v23);
        v34 = 0;
        v26 = xpc_dictionary_create(0, 0, 0);
        v27 = v26;
        if (v26)
        {
          v34 = v26;
        }

        else
        {
          v27 = xpc_null_create();
          v34 = v27;
          if (!v27)
          {
            v28 = xpc_null_create();
            v27 = 0;
            goto LABEL_30;
          }
        }

        if (xpc_get_type(v27) == &_xpc_type_dictionary)
        {
          xpc_retain(v27);
LABEL_31:
          xpc_release(v27);
          v29 = (*(*a1 + 256))(a1) == v25;
          v32 = xpc_BOOL_create(v29);
          if (!v32)
          {
            v32 = xpc_null_create();
          }

          *&buf = &v34;
          *(&buf + 1) = "data_preferred";
          sub_10000F688(&buf, &v32, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v32);
          v31 = v34;
          v32 = 0;
          if (v34)
          {
            xpc_retain(v34);
          }

          else
          {
            v31 = xpc_null_create();
          }

          ims::addCallEndInfo(&v31, v30);
          xpc_release(v31);
          v31 = 0;
          xpc_release(v34);
          goto LABEL_37;
        }

        v28 = xpc_null_create();
LABEL_30:
        v34 = v28;
        goto LABEL_31;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176CF34();
  }
}

void sub_10037E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallModel::handleMergedMediaInit(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MERGE MEDIA INIT", v4, 2u);
  }

  return (*(**(this + 18) + 32))(*(this + 18));
}

const void **IMSCallModel::handleMergeSuccess(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MERGED.", &v5, 2u);
  }

  v3 = *(this + 16);
  v5 = 0;
  v6 = CallInfo::kDefaultCallId;
  v7 = 0x100000001;
  v8 = 9;
  sub_10000501C(v9, kCallerIdDefaultValue);
  v10 = 1;
  v11 = 1;
  v12 = 0x200000004;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10000501C(v16, "");
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  sub_10000501C(v20, "");
  v20[24] = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0u;
  memset(v26, 0, 25);
  memset(&v26[28], 0, 64);
  v26[92] = 1;
  v26[96] = 0;
  v26[100] = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  *(v27 + 3) = 0;
  v27[0] = 0;
  *(v28 + 3) = 0;
  v28[0] = 0;
  (*(*v3 + 128))(v3, &v5);
  return sub_1000BFE80(&v5);
}

uint64_t IMSCallModel::handleMergeFailure(os_log_t **this)
{
  if (os_log_type_enabled(*this[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176CF70();
  }

  return ((*this[16])[17].isa)(this[16], this + 232);
}

uint64_t IMSCallModel::handleConferenceSubscribeEvent(IMSCallModel *this, char a2)
{
  if (a2)
  {
    v3 = kAmbiguousMultiPartyKey;
    result = (*(*this + 520))(this, kAmbiguousMultiPartyKey);
    if (!result)
    {
      return result;
    }

    v5 = **(this + 94);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Un-setting Ambiguous Multi Party.", v9, 2u);
    }

    (*(*this + 528))(this, v3, 0);
  }

  else
  {
    v6 = **(this + 94);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting Ambiguous Multi Party.", buf, 2u);
    }

    (*(*this + 528))(this, kAmbiguousMultiPartyKey, 1);
  }

  v7 = *(this + 16);
  v8 = (*(*this + 256))(this);
  return (*(*v7 + 200))(v7, v8);
}

uint64_t IMSCallModel::handleMediaStackSwitchComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a4 + 23) >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Media stack switch complete for %s", &v9, 0xCu);
  }

  return (*(**(a1 + 144) + 32))(*(a1 + 144));
}

uint64_t IMSCallModel::handleUssdData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v11 = 136315394;
    v12 = v7;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleUssdData %s %d.", &v11, 0x12u);
  }

  v8 = *(a1 + 128);
  v9 = (*(*a1 + 256))(a1);
  return (*(*v8 + 112))(v8, a3, a2, 0, 1, v9);
}

void IMSCallModel::handleUssdError(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *__p = 136315394;
    *&__p[4] = v7;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleIncomingUSSDError %s %u.", __p, 0x12u);
  }

  v8 = *(a1 + 128);
  sub_10000501C(__p, "");
  v9 = (*(*a1 + 256))(a1);
  (*(*v8 + 112))(v8, 0, __p, 0, 0, v9);
  if (v13 < 0)
  {
    operator delete(*__p);
  }
}

void IMSCallModel::resetIMSBasebandCallId(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reset fBasebandCallId = 0x00", v3, 2u);
  }

  *(this + 160) = 0;
}

std::string *IMSCallModel::setMergeContext(uint64_t a1, uint64_t a2)
{
  sub_1000BA4A0((a1 + 232), a2);
  *(a1 + 240) = *(a2 + 8);
  std::string::operator=((a1 + 256), (a2 + 24));
  v4 = *(a2 + 60);
  *(a1 + 280) = *(a2 + 48);
  *(a1 + 292) = v4;
  std::string::operator=((a1 + 312), (a2 + 80));
  *(a1 + 336) = *(a2 + 104);
  std::string::operator=((a1 + 344), (a2 + 112));
  *(a1 + 368) = *(a2 + 136);
  std::string::operator=((a1 + 376), (a2 + 144));
  v5 = *(a2 + 176);
  *(a1 + 400) = *(a2 + 168);
  *(a1 + 408) = v5;
  sub_1000FAA0C(a1 + 416, a2 + 184);
  *(a1 + 448) = *(a2 + 216);
  std::string::operator=((a1 + 464), (a2 + 232));
  *(a1 + 488) = *(a2 + 256);
  std::string::operator=((a1 + 496), (a2 + 264));
  std::string::operator=((a1 + 520), (a2 + 288));
  v6 = *(a2 + 360);
  v8 = *(a2 + 312);
  v7 = *(a2 + 328);
  *(a1 + 576) = *(a2 + 344);
  *(a1 + 592) = v6;
  *(a1 + 544) = v8;
  *(a1 + 560) = v7;
  v10 = *(a2 + 392);
  v9 = *(a2 + 408);
  v11 = *(a2 + 376);
  *(a1 + 653) = *(a2 + 421);
  *(a1 + 624) = v10;
  *(a1 + 640) = v9;
  *(a1 + 608) = v11;

  return std::string::operator=((a1 + 672), (a2 + 440));
}

void IMSCallModel::getIMSCallForUuidFromLocalCache(uint64_t a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100007A6C(a1 + 704, a2);
  if (a1 + 712 == v5)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CFAC();
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 + 64);
    *a3 = *(v5 + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void IMSCallModel::endThisCall(os_log_t **a1, char *a2, int a3)
{
  v11 = a3;
  v5 = *a1[94];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2 + 24;
    if (a2[47] < 0)
    {
      v6 = *v6;
    }

    CallInfo::toString(__p, a2);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Ending call with number: %s %s", buf, 0x16u);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_1000BA468(&v8, a2);
  sub_1001DB8CC(&v8, __p);
  sub_1000475BC(&v8);
  *buf = 0;
  *&buf[8] = 0;
  ((*a1)[59])(buf, a1, __p);
  if (*buf)
  {
    (*(**buf + 32))(*buf, &v11);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D01C();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10037F02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::handleSRVCCCancel(uint64_t a1, int a2)
{
  v2 = *(a1 + 704);
  v3 = (a1 + 712);
  if (v2 != (a1 + 712))
  {
    do
    {
      v6 = **(a1 + 752);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v2[7];
        if (*(v7 + 55) < 0)
        {
          sub_100005F2C(__p, *(v7 + 32), *(v7 + 40));
        }

        else
        {
          *__p = *(v7 + 32);
          v18 = *(v7 + 48);
        }

        v8 = v18 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v20 = v8;
        v21 = 1024;
        v22 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Handling SRVCC Cancel for call %s reason %d", buf, 0x12u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = v2[7];
      {
        v11 = v2[8];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v10 + 104))(v10, a2 == 1);
        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      else
      {
        v12 = **(a1 + 752);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (*(v9 + 55) < 0)
          {
            sub_100005F2C(__p, *(v9 + 32), *(v9 + 40));
          }

          else
          {
            *__p = *(v9 + 32);
            v18 = *(v9 + 48);
          }

          v16 = v18 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v20 = v16;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to convert call %s to a normal call!", buf, 0xCu);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }
}

void sub_10037F330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::dumpState(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 90);
    (*(*this + 248))(__p, this);
    v4 = __p[23];
    if (__p[23] >= 0)
    {
      v5 = __p;
    }

    else
    {
      v4 = *&__p[8];
      v5 = *__p;
    }

    v6 = v4 ? v5 : "<invalid>";
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping state for IMSCallModel %s has %ld calls (fCurrentIMSCall)", buf, 0x16u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *(this + 88);
  if (v7 != (this + 712))
  {
    do
    {
      v8 = **(this + 94);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v7 + 7);
        if (*(v9 + 55) < 0)
        {
          sub_100005F2C(__p, *(v9 + 32), *(v9 + 40));
          v9 = *(v7 + 7);
        }

        else
        {
          *__p = *(v9 + 32);
          *&__p[16] = *(v9 + 48);
        }

        if (__p[23] >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = *__p;
        }

        if (*(v9 + 79) < 0)
        {
          sub_100005F2C(buf, *(v9 + 56), *(v9 + 64));
        }

        else
        {
          *buf = *(v9 + 56);
          *&buf[16] = *(v9 + 72);
        }

        if (buf[23] >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        *v34 = 136315394;
        v35 = v10;
        v36 = 2080;
        v37 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Uuid: %s StackID: %s", v34, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v12 = *(v7 + 1);
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
          v13 = *(v7 + 2);
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (this + 712));
  }

  v15 = *(this + 27);
  v16 = **(this + 94);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134217984;
    *&__p[4] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Secondary Device (Thumper) calls: %ld", __p, 0xCu);
  }

  if (v15)
  {
    for (i = *(this + 26); i; i = *i)
    {
      v18 = **(this + 94);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = i + 2;
        if (*(i + 39) < 0)
        {
          v19 = i[2];
        }

        *__p = 136315138;
        *&__p[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s", __p, 0xCu);
      }
    }
  }

  v20 = **(this + 94);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = CSIBOOLAsString(*(this + 697));
    *__p = 136315138;
    *&__p[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I IMS Voice Registered: %s", __p, 0xCu);
    v20 = **(this + 94);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = CSIBOOLAsString(*(this + 696));
    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I PDP Active on IWLAN (Wifi): %s", __p, 0xCu);
    v20 = **(this + 94);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Call Capabilities:", __p, 2u);
  }

  v23 = *(this + 91);
  if (v23 != (this + 736))
  {
    do
    {
      v24 = **(this + 94);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v23 + 10);
        v26 = *(v23 + 4);
        *__p = 136315394;
        *&__p[4] = v26;
        *&__p[12] = 1024;
        *&__p[14] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I \t%s = %d", __p, 0x12u);
      }

      v27 = *(v23 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v23 + 2);
          v14 = *v28 == v23;
          v23 = v28;
        }

        while (!v14);
      }

      v23 = v28;
    }

    while (v28 != (this + 736));
  }

  v29 = **(this + 94);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = CSIBOOLAsString(*(this + 772));
    *__p = 136315138;
    *&__p[4] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Is In Airplane Mode: %s", __p, 0xCu);
    v29 = **(this + 94);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = CSIBOOLAsString(*(this + 98) != 0);
    *__p = 136315138;
    *&__p[4] = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Has Branded Calling enabled: %s", __p, 0xCu);
    v29 = **(this + 94);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = CSIBOOLAsString(*(this + 816));
    *__p = 136315138;
    *&__p[4] = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Should show branded calling info: %s", __p, 0xCu);
  }
}

void sub_10037F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallModel::getPersonalityInfo@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  *a2 = *(this + 112);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *IMSCallModel::getPersonalityID@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[14];
  if (*(v2 + 47) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 24), *(v2 + 32));
  }

  v3 = *(v2 + 24);
  *(a2 + 16) = *(v2 + 40);
  *a2 = v3;
  return this;
}

uint64_t IMSCallModel::getSimSlot(IMSCallModel *this)
{
  v1 = *(this + 14);
  if (*(v1 + 49))
  {
    return 1;
  }

  else
  {
    return *(v1 + 52);
  }
}

void IMSCallModel::setTTYModeForCall(void **a1, uint64_t *a2, int a3)
{
  v10 = 0;
  v11 = 0;
  ((*a1)[59])(&v10);
  v6 = v10;
  v7 = *a1[94];
  if (v10)
  {
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (!v8)
      {
        v9 = 2;
        goto LABEL_16;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Upgrading voice call %s to RTT!", buf, 0xCu);
      v9 = 2;
    }

    else
    {
      if (!v8)
      {
        v9 = 0;
        goto LABEL_16;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Downgrading RTT call %s to voice!", buf, 0xCu);
      v9 = 0;
    }

    v6 = v10;
LABEL_16:
    (*(*v6 + 40))(v6, v9);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176D08C();
  }

LABEL_17:
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10037FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::swapCalls(os_log_t **a1)
{
  v4 = 0;
  v5 = 0;
  ((*a1)[59])(&v2);
  sub_10037FC9C(&v2, &v4);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    (*(*v4 + 120))(v4);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D104();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10037FC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10037FC9C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void IMSCallModel::sendDTMFDigits(os_log_t **a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  ((*a1)[59])(&v4);
  if (v4)
  {
    (*(*v4 + 80))(v4, a2);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D17C();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10037FDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::startDTMFTone(os_log_t **a1, unsigned __int8 a2)
{
  v4 = 0;
  v5 = 0;
  ((*a1)[59])(&v4);
  if (v4)
  {
    (*(*v4 + 72))(v4, a2);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D1F4();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10037FEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::stopDTMFTone(os_log_t **a1)
{
  v2 = 0;
  v3 = 0;
  ((*a1)[59])(&v2);
  if (v2)
  {
    (*(*v2 + 88))(v2);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D26C();
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10037FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *IMSCallModel::setConfigForCall(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), *(a3 + 16));
  v9 = result;
  v10 = *(a3 + 167);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 152);
  }

  if (v10)
  {
    result = std::string::operator=((a2 + 8), (a3 + 144));
  }

  if (*a4)
  {
    v11 = (*(**(a1 + 128) + 264))(*(a1 + 128), a3);
    v12 = *v9;
    v13 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        v14 = 2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode enabled", buf, 2u);
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      if (v13)
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode disabled", v15, 2u);
      }

      v14 = 0;
    }

    return (*(**a4 + 40))(*a4, v14);
  }

  return result;
}

void IMSCallModel::answer(os_log_t **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_1000BA468(&v10, a2);
  sub_1001DB8CC(&v10, __p);
  sub_1000475BC(&v10);
  v4 = *a1[94];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    if (v12 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Answering waiting call %s", buf, 0xCu);
  }

  v8 = 0;
  v9 = 0;
  ((*a1)[59])(&v8, a1, __p);
  if (v8)
  {
    v29 = 0u;
    v30 = 0u;
    v26 = 0;
    v18 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    v19 = 0x40A7700000000000;
    v31 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v27 = 0;
    v28 = 0uLL;
    v6 = v9;
    v7[0] = v8;
    v7[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallModel::setConfigForCall(a1, buf, a2, v7);
    if (v6)
    {
      sub_100004A34(v6);
    }

    (*(*v8 + 24))(v8, &buf[8]);
    sub_1015F2488(buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D2E4();
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}