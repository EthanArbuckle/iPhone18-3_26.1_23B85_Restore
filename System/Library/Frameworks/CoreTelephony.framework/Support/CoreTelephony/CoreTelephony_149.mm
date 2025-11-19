void sub_1012ECB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1012ECBB4(void *a1, char *a2, char *a3, char *a4)
{
  if (a2 && a3 && a4)
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v8 = (*(*a1 + 144))(a1);
    sub_10064C264(v8, &v17);
    v15 = v17;
    v16 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064E70C(&v15, a2, a3, a4, &v19);
    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v19 || (v10 = HIDWORD(v9)) == 0)
    {
      v12 = v19 != 0;
    }

    else
    {
      v11 = a1[1];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v21 = a4;
        v22 = 2080;
        v23 = a2;
        v24 = 2080;
        v25 = a3;
        v26 = 1024;
        v27 = v10;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Could not copy file %s from %s to %s: %d", buf, 0x26u);
      }

      v12 = 0;
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    v13 = a1[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid copyFile arguments", buf, 2u);
    }

    return 0;
  }

  return v12;
}

void sub_1012ECD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012ECDB8(void *a1, char *a2, char *a3, char *a4)
{
  if (a2 && a3 && a4)
  {
    v19 = 0;
    v17 = 0;
    v18 = 0;
    v8 = (*(*a1 + 144))(a1);
    sub_10064C264(v8, &v17);
    v15 = v17;
    v16 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064E70C(&v15, a2, a3, a4, &v19);
    if (v16)
    {
      sub_100004A34(v16);
    }

    v10 = 0;
    if (!v19)
    {
      v11 = HIDWORD(v9);
      if (v11)
      {
        v12 = a1[1];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v21 = a4;
          v22 = 2080;
          v23 = a2;
          v24 = 2080;
          v25 = a3;
          v26 = 1024;
          v27 = v11;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not copy file %s from %s to %s: %d", buf, 0x26u);
        }

        v10 = v11;
      }
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    v13 = a1[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Invalid copyFile arguments", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  return v10;
}

void sub_1012ECF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012ECFB4(void *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v16);
  if (v16)
  {
    v13 = v16;
    v14 = v17;
    *buf = 0;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064FEE8(&v13, a2, a3, buf) >> 32;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v10 = *buf;
    if (!v9 && *buf)
    {
      goto LABEL_11;
    }

    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v18 = 67109120;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot get badges for labels: %d", v18, 8u);
      v10 = *buf;
      if (!*buf)
      {
        goto LABEL_11;
      }
    }

    else if (!v10)
    {
LABEL_11:
      *a4 = v10;
      goto LABEL_15;
    }

    CFRelease(v10);
    v10 = 0;
    goto LABEL_11;
  }

  v12 = a1[1];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
  }

  *a4 = 0;
LABEL_15:
  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_1012ED15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012ED190(void *a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, void *a4@<X8>)
{
  v16 = 0;
  v17 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v16);
  if (v16)
  {
    v13 = v16;
    v14 = v17;
    *buf = 0;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_1006504B8(&v13, a2, a3, buf) >> 32;
    if (v14)
    {
      sub_100004A34(v14);
    }

    v10 = *buf;
    if (!v9 && *buf)
    {
      goto LABEL_11;
    }

    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v18 = 67109120;
      v19 = v9;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot get localized labels: %d", v18, 8u);
      v10 = *buf;
      if (!*buf)
      {
        goto LABEL_11;
      }
    }

    else if (!v10)
    {
LABEL_11:
      *a4 = v10;
      goto LABEL_15;
    }

    CFRelease(v10);
    v10 = 0;
    goto LABEL_11;
  }

  v12 = a1[1];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
  }

  *a4 = 0;
LABEL_15:
  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_1012ED338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012ED36C(void *a1, char *a2, char *a3)
{
  v18 = 0;
  v19 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v18);
  if (!v18)
  {
    v9 = a1[1];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "cannot create client";
    v11 = v9;
    v12 = 2;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_11;
  }

  v17 = 0;
  v15 = v18;
  v16 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_100650A88(&v15, a2, a3, &v17) >> 32;
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (!v7)
  {
    v8 = v17 != 0;
    goto LABEL_12;
  }

  v13 = a1[1];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v21 = v7;
    v10 = "cannot remap contacts channel identifier: %d";
    v11 = v13;
    v12 = 8;
    goto LABEL_16;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  if (v19)
  {
    sub_100004A34(v19);
  }

  return v8;
}

void sub_1012ED4F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012ED524(void *a1)
{
  v14 = 0;
  v15 = 0;
  v2 = (*(*a1 + 144))(a1);
  sub_10064C264(v2, &v14);
  if (!v14)
  {
    v5 = a1[1];
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v6 = "cannot create client";
    v7 = v5;
    v8 = 2;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    goto LABEL_11;
  }

  v13 = 0;
  v11 = v14;
  v12 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_100650F24(&v11, &v13) >> 32;
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (!v3)
  {
    v4 = v13 != 0;
    goto LABEL_12;
  }

  v9 = a1[1];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v17 = v3;
    v6 = "cannot reset network settings: %d";
    v7 = v9;
    v8 = 8;
    goto LABEL_16;
  }

LABEL_11:
  v4 = 0;
LABEL_12:
  if (v15)
  {
    sub_100004A34(v15);
  }

  return v4;
}

void sub_1012ED698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012ED6C4(void *a1, char *a2, char *a3)
{
  v14 = 0;
  v15 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v14);
  if (v14)
  {
    v13 = 0;
    v11 = v14;
    v12 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10064F558(&v11, a2, a3, &v13);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v7 = v13 != 0;
    if (!v13)
    {
      v8 = a1[1];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v17 = a2;
        v18 = 2082;
        v19 = a3;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to unpack %{public}s to %{public}s", buf, 0x16u);
      }
    }
  }

  else
  {
    v9 = a1[1];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    v7 = 0;
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  return v7;
}

void sub_1012ED858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012ED884(void *a1, char *a2, char *a3)
{
  v17 = 0;
  v18 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v17);
  if (!v17)
  {
    v9 = a1[1];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "cannot create client";
    v11 = v9;
    v12 = 2;
LABEL_16:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_11;
  }

  v15 = v17;
  v16 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_10064DF28(&v15, a2, a3);
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (!HIDWORD(v7))
  {
    v8 = 1;
    goto LABEL_12;
  }

  v13 = a1[1];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = a2;
    v21 = 2080;
    v22 = a3;
    v10 = "Error linking %s to %s";
    v11 = v13;
    v12 = 22;
    goto LABEL_16;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  if (v18)
  {
    sub_100004A34(v18);
  }

  return v8;
}

void sub_1012EDA10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

BOOL sub_1012EDA3C(void *a1, char *a2, char *a3, char *a4)
{
  v16 = 0;
  v17 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v16);
  if (v16)
  {
    v15 = 0;
    v13 = v16;
    v14 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10064F004(&v13, a2, a3, a4, &v15);
    if (v14)
    {
      sub_100004A34(v14);
    }

    v9 = v15 != 0;
    if (!v15)
    {
      v10 = a1[1];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446722;
        v19 = a4;
        v20 = 2082;
        v21 = a2;
        v22 = 2082;
        v23 = a3;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to move file %{public}s from %{public}s to %{public}s", buf, 0x20u);
      }
    }
  }

  else
  {
    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    v9 = 0;
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  return v9;
}

void sub_1012EDBE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012EDC14(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v19);
  if (!v19)
  {
    v9 = a1[1];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v10 = "cannot create client";
    v11 = v9;
    v12 = 2;
LABEL_22:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    goto LABEL_11;
  }

  v17 = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_10064E360(&v17, a2, a3);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (!HIDWORD(v7))
  {
    v8 = 1;
    goto LABEL_12;
  }

  v13 = a1[1];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    *buf = 136446466;
    v22 = v15;
    v23 = 2080;
    v24 = v16;
    v10 = "Could not remove file from path: %{public}s and domain: %s";
    v11 = v13;
    v12 = 22;
    goto LABEL_22;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  if (v20)
  {
    sub_100004A34(v20);
  }

  return v8;
}

void sub_1012EDDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_1012EDDEC(void *a1, char *a2, char *a3, char *a4)
{
  v18 = 0;
  v19 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v18);
  if (v18)
  {
    v16 = v18;
    v17 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064DA34(&v16, a2, a3, a4);
    v10 = v9;
    v11 = HIDWORD(v9);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (!v11)
    {
      v12 = 1;
      goto LABEL_13;
    }

    v14 = a1[1];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446722;
      v21 = a3;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Problem linking preference file %{public}s: domain=%d error=%d", buf, 0x18u);
    }
  }

  else
  {
    v13 = a1[1];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }
  }

  v12 = 0;
LABEL_13:
  if (v19)
  {
    sub_100004A34(v19);
  }

  return v12;
}

void sub_1012EDF88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

BOOL sub_1012EDFB4(void *a1, char *a2)
{
  v13 = 0;
  v14 = 0;
  v4 = (*(*a1 + 144))(a1);
  sub_10064C264(v4, &v13);
  if (v13)
  {
    v12 = 0;
    v10 = v13;
    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = sub_100651240(&v10, a2, &v12) >> 32;
    if (v11)
    {
      sub_100004A34(v11);
    }

    v6 = v5 == 0;
    if (v5)
    {
      v7 = a1[1];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446466;
        v16 = a2;
        v17 = 1024;
        v18 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Problem creating directory: %{public}s, error=%d", buf, 0x12u);
      }
    }
  }

  else
  {
    v8 = a1[1];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    v6 = 0;
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  return v6;
}

void sub_1012EE140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012EE16C(void *a1)
{
  v11 = 0;
  v12 = 0;
  v2 = (*(*a1 + 144))(a1);
  sub_10064C264(v2, &v11);
  if (!v11)
  {
    v5 = a1[1];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    goto LABEL_12;
  }

  v10 = 0;
  v8 = v11;
  v9 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_1006516B4(&v8, &v10) >> 32;
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (!v3)
  {
    v4 = v10 != 0;
    goto LABEL_13;
  }

  v6 = a1[1];
  v4 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Error reading automatic bundle update preference: error=%d", buf, 8u);
LABEL_12:
    v4 = 0;
  }

LABEL_13:
  if (v12)
  {
    sub_100004A34(v12);
  }

  return v4;
}

void sub_1012EE2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1012EE318(void *a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v4 = (*(*a1 + 144))(a1);
  sub_10064C264(v4, &v16);
  if (!v16)
  {
    v8 = a1[1];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "cannot create mobile helper client";
LABEL_15:
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, buf, 2u);
    }

LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    v8 = a1[1];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Path for fileExists call is empty.";
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v15 = 0;
  v13 = v16;
  v14 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_1006519E0(&v13, a2, &v15) >> 32;
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (!v6)
  {
    v7 = v15 != 0;
    goto LABEL_22;
  }

  v10 = a1[1];
  v7 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    *buf = 136315394;
    v19 = v11;
    v20 = 1024;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Error when checking if %s exists: Error code: %d", buf, 0x12u);
    goto LABEL_21;
  }

LABEL_22:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v7;
}

void sub_1012EE500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EE52C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v21);
  if (!v21)
  {
    v9 = a1[1];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      *a3 = 0;
      goto LABEL_29;
    }

    *buf = 0;
    v10 = "cannot create mobile helper client";
LABEL_33:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    goto LABEL_15;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    v9 = a1[1];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v10 = "Path for copyAttributes call is empty.";
    goto LABEL_33;
  }

  v18 = v21;
  v19 = v22;
  v20 = 0;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_100651DE0(&v18, a2, &v20) >> 32;
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v8)
  {
    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      *buf = 136315394;
      v24 = v12;
      v25 = 1024;
      v26 = v8;
      v13 = "#N Error when copying attributes for %s: Error code: %d";
      v14 = v11;
      v15 = 18;
      goto LABEL_26;
    }

LABEL_27:
    *a3 = 0;
    goto LABEL_28;
  }

  if (!v20)
  {
    v16 = a1[1];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 136315138;
      v24 = v17;
      v13 = "#N Copy attributes returned NULL for %s:";
      v14 = v16;
      v15 = 12;
LABEL_26:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  *a3 = v20;
  v20 = 0;
LABEL_28:
  sub_10001021C(&v20);
LABEL_29:
  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1012EE77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10001021C(&a12);
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(a1);
}

void sub_1012EE7B0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  MobileHelperInterface::~MobileHelperInterface(a1);
}

void sub_1012EE7F8(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  MobileHelperInterface::~MobileHelperInterface(a1);

  operator delete();
}

void sub_1012EE858(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012EE890(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1012EE8C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1012EE900(ServiceManager::Service *this)
{
  *this = off_101F2A740;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012EE95C(ServiceManager::Service *this)
{
  *this = off_101F2A740;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

size_t sub_1012EE9CC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*(**(a1 + 8) + 144))(*(a1 + 8));
  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  a2[v5] = 0;
  return result;
}

uint64_t sub_1012EEA98@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012EEAD8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v2);
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

const void **sub_1012EEB58(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_10000A1EC(&v6);
  return a1;
}

void *sub_1012EEBB0(void *a1, void *a2)
{
  *a1 = off_101F2A7C0;
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "CSIAppInfo.CSIAppInfo");
  sub_1012EEC84(a1 + 1, "CSIAppInfo", QOS_CLASS_USER_INITIATED, &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F2A7C0;
  v4 = a2[1];
  a1[6] = *a2;
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1012EEC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  CSIAppInfoInterface::~CSIAppInfoInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_1012EEC84(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_1012EED24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_1012EED48(void *a1)
{
  *a1 = off_101F2A7C0;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  CSIAppInfoInterface::~CSIAppInfoInterface(a1);
}

void sub_1012EEDB8(void *a1)
{
  sub_1012EED48(a1);

  operator delete();
}

void sub_1012EEE00(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1012EEEF4(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1012EEFD0(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group, this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

uint64_t sub_1012EF108(uint64_t a1)
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
  v11 = (*(*v9 + 16))(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return v11;
}

void sub_1012EF210(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012EF22C(uint64_t a1, void *a2)
{
  v39 = 0;
  v40 = 0;
  sub_100DF07C8(*(a1 + 48), &v39);
  if (v39)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    CallController::getCurrentCalls(v39, &v36);
    v3 = v36;
    v4 = v37;
    if (v36 != v37)
    {
      v5 = 0;
      v6 = 0;
      while (1)
      {
        v35 = 0;
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
        v9 = 0u;
        v10 = 0u;
        v8 = 0u;
        sub_100E03FE8(&v8, v3);
        if (DWORD1(v9) <= 8)
        {
          if (((1 << SBYTE4(v9)) & 0x193) == 0)
          {
            if (DWORD1(v9) != 5)
            {
              goto LABEL_7;
            }

            ++v6;
          }

          ++v5;
        }

LABEL_7:
        sub_1000BFE80(&v8);
        v3 += 440;
        if (v3 == v4)
        {
          goto LABEL_14;
        }
      }
    }

    v6 = 0;
    v5 = 0;
LABEL_14:
    *&v8 = &v36;
    sub_1000B42B0(&v8);
    if (a2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    if (a2)
    {
LABEL_15:
      *a2 = v6;
    }
  }

  if (v40)
  {
    sub_100004A34(v40);
  }

  return v5;
}

void sub_1012EF380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  v11 = *(v9 - 72);
  if (v11)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EF3B8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t *sub_1012EF450(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I bootstrapping", buf, 2u);
  }

  (*(*v2 + 208))(v2);
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_1012EF4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012EF510(void **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I starting", buf, 2u);
  }

  (*(*v1 + 216))(v1);
  operator delete();
}

uint64_t *sub_1012EF5F0(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I shutting down", buf, 2u);
  }

  if (!*(v1 + 8))
  {
    v5 = *(v1 + 16);
    *buf = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v5);
    }

    (*(*v2 + 224))(v2, buf);
    if (*buf)
    {
      dispatch_group_leave(*buf);
      if (*buf)
      {
        dispatch_release(*buf);
      }
    }
  }

  sub_100D89210(&v7);
  return sub_1000049E0(&v6);
}

void sub_1012EF6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_100D89210(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012EF718(uint64_t a1)
{
  sub_1012D9530(a1);

  operator delete();
}

void sub_1012EF7E8(void *a1, uint64_t a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F2AA00;
  sub_1012D91E4((a1 + 3), a2, *a3);
}

void sub_1012EF898(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2AA00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012EF914(uint64_t a1, uint64_t a2, int a3)
{
  v4 = "sig.gw.?";
  if (a3 == 2)
  {
    v4 = "sig.gw.2";
  }

  if (a3 == 1)
  {
    v5 = "sig.gw.1";
  }

  else
  {
    v5 = v4;
  }

  ctu::OsLogContext::OsLogContext(v11, kCtLoggingSystemName, v5);
  SignalStrengthModel::SignalStrengthModel();
  ctu::OsLogContext::~OsLogContext(v11);
  *(a1 + 112) = 0u;
  *a1 = off_101F2AA50;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 128) = 0xC022000000000000;
  *(a1 + 144) = 0xC05F400000000000;
  *(a1 + 160) = 0xC060400000000000;
  *(a1 + 168) = 0;
  *(a1 + 184) = 0;
  *(a1 + 176) = off_101F29118;
  __asm { FMOV            V1.2D, #-9.0 }

  *(a1 + 192) = _Q1;
  *(a1 + 224) = 0;
  *(a1 + 208) = 0x3F90000000000000;
  *(a1 + 216) = off_101F29118;
  *(a1 + 232) = vdupq_n_s64(0xC05F400000000000);
  *(a1 + 264) = 0;
  *(a1 + 248) = 0x3FD8000000000000;
  *(a1 + 256) = off_101F29118;
  *(a1 + 288) = 0x3FD8000000000000;
  *(a1 + 272) = vdupq_n_s64(0xC060400000000000);
  *(a1 + 328) = 0;
  operator new();
}

void sub_1012EFB64(_Unwind_Exception *a1)
{
  sub_10006DCAC(v1 + 496, *v5);
  sub_10006DCAC(v1 + 472, *v4);
  sub_10006DCAC(v1 + 448, *v3);
  sub_10006DCAC(v1 + 424, *v2);
  sub_1012DAF8C(v1 + 376);
  sub_1012DAF8C(v1 + 336);
  sub_1012DAF8C(v1 + 296);
  v7 = *(v1 + 15);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  SignalStrengthModel::~SignalStrengthModel(v1);
  _Unwind_Resume(a1);
}

void sub_1012EFBF4(uint64_t a1)
{
  *a1 = off_101F2AA50;
  sub_10006DCAC(a1 + 584, *(a1 + 592));
  sub_10006DCAC(a1 + 560, *(a1 + 568));
  sub_10006DCAC(a1 + 496, *(a1 + 504));
  sub_10006DCAC(a1 + 472, *(a1 + 480));
  sub_10006DCAC(a1 + 448, *(a1 + 456));
  sub_10006DCAC(a1 + 424, *(a1 + 432));
  sub_1012DAF8C(a1 + 376);
  sub_1012DAF8C(a1 + 336);
  sub_1012DAF8C(a1 + 296);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

uint64_t sub_1012EFCB8(uint64_t a1)
{
  v1 = a1;
  sub_1012EFD60(*(a1 + 24), *(v1 + 32), v1);
  sub_1012EFF3C(v1);
  v4 = 0;
  v5[0] = 2;
  v5[1] = &v4;
  v5[2] = v1 + 376;
  sub_1012DBFB4((v1 + 376), 2, 2, v5);
  sub_1012EFFB8(v1);
  v2 = *(v1 + 176);
  v1 += 176;
  LODWORD(v5[0]) = *(v1 + 12) + 1;
  return (*(v2 + 24))(v1, v1 - 48, v5);
}

void sub_1012EFD60(_BYTE *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0.0;
  v12 = 0;
  v6 = *(a3 + 128);
  v7 = 1.0;
  if (v6 > -9.0 && *(a3 + 160) > -75.0)
  {
    v14 = 0;
    v13 = v6 + 9.0;
    sub_1012DAFC8(&v14, &v13);
    v7 = v14;
    if (v14 < 1.0)
    {
      v7 = 1.0;
    }
  }

  v11 = v7;
  v12 = 0;
  v10 = 1;
  sub_10009E794(a1, 0x400000000, &v10);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0.0;
  v12 = 0;
  v8 = 1.0;
  if (*(a3 + 128) > -9.0)
  {
    v9 = *(a3 + 160);
    if (v9 > -75.0)
    {
      v14 = 0;
      v13 = v9 + 75.0;
      sub_1012DAFC8(&v14, &v13);
      v8 = v14;
      if (v14 < 1.0)
      {
        v8 = 1.0;
      }
    }
  }

  v11 = v8;
  v12 = 0;
  v10 = 1;
  sub_10009E794(a1, 0, &v10);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = 0;
  v11 = 0.0;
  v12 = 0;
  sub_10009E794(a1, 0x300000000, &v10);
  if (a2)
  {
    sub_100004A34(a2);
    sub_100004A34(a2);
    sub_100004A34(a2);
  }
}

void sub_1012EFEFC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EFF3C(uint64_t a1)
{
  v2 = 0xC022000000000000;
  v3 = 2;
  v4 = &v2;
  v5 = a1 + 296;
  sub_1012DBFB4((a1 + 296), 2, 2, &v3);
  v2 = 0xC060400000000000;
  v3 = 2;
  v4 = &v2;
  v5 = a1 + 336;
  sub_1012DBFB4((a1 + 336), 2, 2, &v3);
}

uint64_t *sub_1012EFFB8(uint64_t a1)
{
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 424, &v3)[5] = 0xC030000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 424, &v3)[5] = 0xC02C000000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 424, &v3)[5] = 0xC028000000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 424, &v3)[5] = 0xC024000000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 448, &v3)[5] = 0xC05A800000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 448, &v3)[5] = 0xC059000000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 448, &v3)[5] = 0xC056800000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 448, &v3)[5] = 0xC054000000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 472, &v3)[5] = 0xC05A000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 472, &v3)[5] = 0xC058800000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 472, &v3)[5] = 0xC056400000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 472, &v3)[5] = 0xC054000000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC05D000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC05C400000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC05B800000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC05AC00000000000;
  LODWORD(v4) = 2;
  sub_10009DE18(a1 + 536, &v4, 2, 8);
  LODWORD(v4) = 3;
  sub_10009DE18(a1 + 536, &v4, 2, 5);
  LODWORD(v4) = 4;
  sub_10009DE18(a1 + 536, &v4, 2, 5);
  LODWORD(v4) = 5;
  return sub_10009DE18(a1 + 536, &v4, 2, 8);
}

uint64_t sub_1012F0310(uint64_t a1, unint64_t a2, double a3)
{
  if (a2)
  {
    if (*(a1 + 16) >= 3u)
    {
      v4 = *(a1 + 8);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        asString();
        if (v9 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136315394;
        v11 = p_p;
        v12 = 2048;
        v13 = a3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Input rejected of wrong type: %s = %f", buf, 0x16u);
        if (v9 < 0)
        {
          operator delete(__p);
        }
      }
    }

    return 0;
  }

  v6 = HIDWORD(a2);
  if (HIDWORD(a2) == 4)
  {
    v6 = 0;
    if (a3 < 0.0 && a3 >= -24.5)
    {
      *(a1 + 128) = a3;
      v6 = 1;
      *(a1 + 136) = 1;
    }
  }

  else if (HIDWORD(a2) == 3)
  {
    v6 = 0;
    if (a3 < -25.0 && a3 >= -130.0)
    {
      *(a1 + 160) = a3;
      v6 = 1;
      *(a1 + 168) = 1;
    }
  }

  else
  {
    if (HIDWORD(a2))
    {
      return 0;
    }

    if (a3 < -25.0 && a3 >= -125.0)
    {
      *(a1 + 144) = a3;
      v6 = 1;
      *(a1 + 152) = 1;
    }
  }

  return v6;
}

const void **sub_1012F04B8(uint64_t a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  (*(*v10 + 96))(&cf, v10, *(a1 + 616), 2, @"UseEcn0Bars", kCFBooleanFalse, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = cf;
  buf[0] = 0;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v12, v14);
      LOBYTE(v12) = buf[0];
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  *(a1 + 418) = v12;
  v15 = *(a1 + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = CSIBOOLAsString(v12 & 1);
    *buf = 136315138;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Using ecN0 bars = %s", buf, 0xCu);
  }

  return sub_10000A1EC(&cf);
}

void sub_1012F06A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F06E4(uint64_t a1)
{
  result = SignalStrengthModel::heartBeat(a1);
  if (result)
  {
    if (*(a1 + 16))
    {
      v3 = *(a1 + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 144);
        v5 = *(a1 + 128);
        *buf = 134218240;
        *&buf[4] = v4;
        *&buf[12] = 2048;
        *&buf[14] = v5;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I X_RSSI(n) = %f, X_EcN0(n) = %f", buf, 0x16u);
      }
    }

    if (*(a1 + 152) != 1 || (*(a1 + 136) & 1) == 0 && *(a1 + 64))
    {
      return 0;
    }

    *(a1 + 40) = 1;
    v6 = *(a1 + 144) + *(a1 + 128);
    if (v6 < -25.0 && v6 >= -130.0)
    {
      *(a1 + 160) = v6;
      *(a1 + 168) = 1;
    }

    if (*(a1 + 16))
    {
      v7 = *(a1 + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 160);
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I X_RSCP(n) = %f", buf, 0xCu);
      }
    }

    v9 = *(a1 + 216);
    *buf = *(a1 + 228) + 1;
    (*(v9 + 24))(a1 + 216, a1 + 144, buf);
    *buf = *(a1 + 268) + 1;
    (*(*(a1 + 256) + 24))(a1 + 256, a1 + 160, buf);
    *buf = *(a1 + 280);
    sub_1012DBF5C((a1 + 336), buf);
    v10 = *(a1 + 160);
    v11 = **(a1 + 352);
    v67[0] = v10 - v11;
    if (*(a1 + 16) >= 4u)
    {
      v12 = *(a1 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        *&buf[4] = v10 - v11;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        *&buf[22] = 2048;
        v77 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I e(n) = %f, X_RSCP(n) = %f, Y_RSCP(n-1) = %f", buf, 0x20u);
      }
    }

    sub_1012DBF5C((a1 + 376), v67);
    if (*(a1 + 16) >= 3u)
    {
      v13 = *(a1 + 8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = **(a1 + 352);
        *buf = 134218240;
        *&buf[4] = v14;
        *&buf[12] = 2048;
        *&buf[14] = 0xC053800000000000;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Y_RSCP(n-1) = %f, threshold = %f", buf, 0x16u);
        v13 = *(a1 + 8);
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 320);
        if (v15 == *(a1 + 296))
        {
          v15 = *(a1 + 304);
        }

        v16 = *(v15 - 8);
        *buf = 134218240;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = 0xC022000000000000;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Y_EcN0(n-1) = %f, threshold = %f", buf, 0x16u);
      }
    }

    v17 = *(a1 + 400);
    v18 = *(a1 + 376);
    v19 = v17;
    if (v17 == v18)
    {
      v19 = *(a1 + 384);
    }

    if (*(v19 - 8) < 0.0 || **(a1 + 352) > -78.0)
    {
      goto LABEL_32;
    }

    v20 = *(a1 + 320);
    if (v20 == *(a1 + 296))
    {
      v20 = *(a1 + 304);
    }

    if (*(v20 - 8) <= -9.0)
    {
      if (v17 == v18)
      {
        v17 = *(a1 + 384);
      }

      v51 = **(a1 + 392) + *(v17 - 8);
      if (*(a1 + 16) >= 3u)
      {
        v52 = *(a1 + 8);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v51;
          *&buf[12] = 2048;
          *&buf[14] = 0x4030000000000000;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I e(n) + e(n - 1) = %f, threshold = %f", buf, 0x16u);
        }
      }

      if (v51 >= 16.0)
      {
        sub_1012F1520(a1, 1);
      }
    }

    else
    {
LABEL_32:
      sub_1012F1520(a1, 0);
      v62 = 0;
      *buf = 2;
      *&buf[8] = &v62;
      *&buf[16] = a1 + 376;
      sub_1012DBFB4((a1 + 376), 2, 2, buf);
    }

    if (*(a1 + 16) >= 3u)
    {
      v21 = *(a1 + 8);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 280);
        *buf = 134218240;
        *&buf[4] = v22;
        *&buf[12] = 2048;
        *&buf[14] = 0xC05B800000000000;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Y_RSCP(n) = %f, threshold = %f", buf, 0x16u);
      }
    }

    *(a1 + 417) = *(a1 + 280) <= -110.0;
    v23 = 0.015625;
    if (*(a1 + 416))
    {
      v23 = 0.375;
    }

    *(a1 + 208) = v23;
    v24 = *(a1 + 176);
    *buf = *(a1 + 188) + 1;
    (*(v24 + 24))(a1 + 176, a1 + 128, buf);
    *buf = *(a1 + 200);
    sub_1012DBF5C((a1 + 296), buf);
    v61 = 0;
    if (*(a1 + 64))
    {
      v25 = *(a1 + 200);
      v26 = -24.5;
      if (v25 >= -24.5)
      {
        v26 = *(a1 + 200);
      }

      if (v25 <= 0.0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }

      v28 = *(a1 + 280);
      v29 = -130.0;
      if (v28 >= -130.0)
      {
        v29 = *(a1 + 280);
      }

      if (v28 <= -25.0)
      {
        v30 = v29;
      }

      else
      {
        v30 = -25.0;
      }

      v68 = v30;
      v69 = v27;
      if (*(a1 + 16))
      {
        v31 = *(a1 + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *&buf[4] = v27;
          *&buf[12] = 2048;
          *&buf[14] = v30;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Y_EcN0(n) = %f, Y_RSCP(n) = %f", buf, 0x16u);
        }
      }

      if (*(a1 + 418) == 1)
      {
        if (v27 < -12.0 || (LODWORD(v62) = 4, *buf = &v62, v30 <= *(sub_1012DBE88(a1 + 496, &v62) + 5)))
        {
          if (v27 < -16.0 || (LODWORD(v62) = 3, *buf = &v62, v30 <= *(sub_1012DBE88(a1 + 496, &v62) + 5)))
          {
            v42 = (a1 + 504);
            for (i = 1; i != 4; ++i)
            {
              v43 = *v42;
              if (!*v42)
              {
LABEL_84:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v44 = v43;
                  v45 = *(v43 + 8);
                  if (v45 <= i)
                  {
                    break;
                  }

                  v43 = *v44;
                  if (!*v44)
                  {
                    goto LABEL_84;
                  }
                }

                if (v45 >= i)
                {
                  break;
                }

                v43 = *(v44 + 1);
                if (!v43)
                {
                  goto LABEL_84;
                }
              }

              if (v30 <= v44[5])
              {
                break;
              }
            }
          }

          else
          {
            i = 4;
          }
        }

        else
        {
          i = 5;
        }

        v46 = *(a1 + 8);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = i;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I EcN0 bars %u", buf, 8u);
        }
      }

      else
      {
        sub_1012DC108(v67, a1 + 424);
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 0x40000000;
        *&buf[16] = sub_1012F17BC;
        v77 = COERCE_DOUBLE(&unk_101F2AAE0);
        v78 = a1;
        *(a1 + 520) = sub_1012F15F8(v67, &v69, buf);
        sub_10006DCAC(v67, *&v67[1]);
        sub_1012DC108(&v74, a1 + 448);
        v62 = _NSConcreteStackBlock;
        v63 = 0x40000000;
        v64 = sub_1012F18AC;
        v65 = &unk_101F2AB00;
        v66 = a1;
        *(a1 + 524) = sub_1012F15F8(&v74, &v68, &v62);
        sub_10006DCAC(&v74, v75);
        if (*(a1 + 16))
        {
          v39 = *(a1 + 8);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = *(a1 + 520);
            v41 = *(a1 + 524);
            *v70 = 67109376;
            v71 = v40;
            v72 = 1024;
            v73 = v41;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I EcN0 bars %u, RSCP bars %u", v70, 0xEu);
          }
        }

        if (*(a1 + 524) >= *(a1 + 520))
        {
          i = *(a1 + 520);
        }

        else
        {
          i = *(a1 + 524);
        }
      }
    }

    else
    {
      v33 = *(a1 + 240);
      v34 = -125.0;
      if (v33 >= -125.0)
      {
        v34 = *(a1 + 240);
      }

      if (v33 <= -25.0)
      {
        v35 = v34;
      }

      else
      {
        v35 = -25.0;
      }

      v67[0] = v35;
      if (*(a1 + 16))
      {
        v36 = *(a1 + 8);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Y_RSSI(n) = %f", buf, 0xCu);
        }
      }

      sub_1012DC108(&v62, a1 + 472);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 0x40000000;
      *&buf[16] = sub_1012F16C0;
      v77 = COERCE_DOUBLE(&unk_101F2AAC0);
      v78 = a1;
      *(a1 + 528) = sub_1012F15F8(&v62, v67, buf);
      sub_10006DCAC(&v62, v63);
      if (*(a1 + 16))
      {
        v37 = *(a1 + 8);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = *(a1 + 528);
          LODWORD(v74) = 67109120;
          HIDWORD(v74) = v38;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Bars %u", &v74, 8u);
        }
      }

      i = *(a1 + 528);
    }

    v61 = i;
    v47 = *(a1 + 60);
    *(a1 + 60) = 0;
    if (v47 == 1)
    {
      if (*(a1 + 16) >= 2u)
      {
        v48 = *(a1 + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Jumping instantly", buf, 2u);
        }
      }

      v49 = 1;
      v50 = -1;
LABEL_108:
      if ((sub_10009E094((a1 + 536), &v61, v49 & 1, v50) & 1) != 0 || SignalStrengthModel::shouldForceNotificationOnNextHeartbeat(a1))
      {
        LODWORD(v62) = 0;
        sub_10009E238(&v62, *(a1 + 608));
        SignalStrengthModel::setForceNotificationOnNextHeartbeat(a1, 0);
        v53 = *(a1 + 8);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *&buf[4] = v62;
          *&buf[8] = 1024;
          *&buf[10] = v61;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I bars changed! old bars %u, new bars %u", buf, 0xEu);
        }

        v54 = *(a1 + 96);
        if (v54)
        {
          v55 = std::__shared_weak_count::lock(v54);
          if (v55)
          {
            v56 = v55;
            v57 = *(a1 + 88);
            if (v57)
            {
              v58 = *(a1 + 120);
              if (!v58 || (v59 = *(a1 + 112), (v60 = std::__shared_weak_count::lock(v58)) == 0))
              {
                sub_100013CC4();
              }

              *buf = v59;
              *&buf[8] = v60;
              (*(*v57 + 24))(v57, buf);
              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }
            }

            sub_100004A34(v56);
          }
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      operator new();
    }

    if (*(a1 + 64))
    {
      if ((*(a1 + 61) & 1) == 0)
      {
        v49 = *(a1 + 417);
LABEL_107:
        v50 = 1;
        goto LABEL_108;
      }
    }

    else if ((*(a1 + 61) & 1) == 0)
    {
      v49 = 0;
      goto LABEL_107;
    }

    v49 = *(a1 + 612) < i;
    goto LABEL_107;
  }

  return result;
}

void sub_1012F1480(_Unwind_Exception *a1)
{
  v4 = *(v2 - 152);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1012F1520(uint64_t a1, int a2)
{
  v2 = *(a1 + 416);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Step up going from %s to %s", &v6, 0x16u);
    }

    *(a1 + 416) = a2;
  }
}

uint64_t sub_1012F15F8(void *a1, double *a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    return 5;
  }

  while (1)
  {
    v12 = *(v4 + 8);
    v11 = *(v4 + 5);
    (*(a3 + 16))(a3, &v11, &v12);
    if (*a2 <= v11)
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
    if (v8 == v3)
    {
      return 5;
    }
  }

  return v12;
}

void sub_1012F16C0(uint64_t a1, double *a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *a3;
  v6 = -1.0;
  if (*a3 > 1)
  {
    v6 = -2.0;
  }

  v7 = *(v3 + 528);
  if (v5 >= v7)
  {
    v6 = -v6;
  }

  v8 = v4 + v6;
  *a2 = v4 + v6;
  if (*(v3 + 16) >= 0x14u)
  {
    v9 = *(v3 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012F17BC(uint64_t a1, double *a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *a3;
  v6 = *(v3 + 520);
  v7 = 1.0;
  if (*a3 < v6)
  {
    v7 = -1.0;
  }

  v8 = v4 + v7;
  *a2 = v4 + v7;
  if (*(v3 + 16) >= 0x14u)
  {
    v9 = *(v3 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012F18AC(uint64_t a1, double *a2, unsigned int *a3)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  v5 = *a3;
  v6 = -1.0;
  if (*a3 > 1)
  {
    v6 = -2.0;
  }

  v7 = *(v3 + 524);
  if (v5 >= v7)
  {
    v6 = -v6;
  }

  v8 = v4 + v6;
  *a2 = v4 + v6;
  if (*(v3 + 16) >= 0x14u)
  {
    v9 = *(v3 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012F19B0(uint64_t a1, int a2)
{
  SignalStrengthModel::reset(a1, a2);
  sub_1012F1520(a1, 0);
  *(a1 + 417) = 0;
  sub_1012EFF3C(a1);
  v5 = 0;
  v6[0] = 2;
  v6[1] = &v5;
  v6[2] = a1 + 376;
  sub_1012DBFB4((a1 + 376), 2, 2, v6);
  sub_1012EFFB8(a1);
  *(a1 + 128) = 0xC022000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xC05F400000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xC060400000000000;
  *(a1 + 168) = 0;
  *(a1 + 200) = *(a1 + 192);
  v4 = *(a1 + 184);
  *(a1 + 188) = v4;
  *(a1 + 240) = *(a1 + 232);
  *(a1 + 228) = *(a1 + 224);
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 268) = *(a1 + 264);
  LODWORD(v6[0]) = v4 + 1;
  (*(*(a1 + 176) + 24))(a1 + 176, a1 + 128, v6);
  *(a1 + 520) = 0x100000001;
  *(a1 + 528) = 1;
  sub_10071FEE4((a1 + 536), a2);
  sub_1012EFD60(*(a1 + 24), *(a1 + 32), a1);
}

void sub_1012F1AE8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012F1BF8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012F1C5C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*a1 + 16))(a1);
  v5 = (*(*a1 + 8))(a1, &v7, v4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_1012F1D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012F1D90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012F1DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  v6 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::Http::HttpRequest::create();
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1012F1E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012F1E24(HttpRequestFactoryInterface *a1)
{
  HttpRequestFactoryInterface::~HttpRequestFactoryInterface(a1);

  operator delete();
}

uint64_t sub_1012F1E5C(uint64_t a1, void *a2, NSObject **a3, uint64_t a4)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "em.searcher");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a3;
  *(a1 + 24) = *a3;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101F2AC20;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0;
  v9 = a2[1];
  *(a1 + 128) = *a2;
  *(a1 + 136) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = a4;
  *(a1 + 152) = 0;
  return a1;
}

void sub_1012F1F50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544(v2);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void *sub_1012F1F7C(void *a1)
{
  sub_1012F263C(a1, sub_1012F27E8);
  v2 = a1[19];
  a1[19] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100E5D190((a1 + 10));
  sub_10002B644((a1 + 6));
  emergency::Searcher::~Searcher(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_1012F2034(void *a1)
{
  sub_1012F1F7C(a1);

  operator delete();
}

void sub_1012F206C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v16, 0, sizeof(v16));
  sub_10009CF40(v13, a1 + 48);
  sub_100E5E35C(&v14, a1 + 80);
  v15[0] = *(a1 + 112);
  *(v15 + 6) = *(a1 + 118);
  memset(__p, 0, sizeof(__p));
  sub_100AE8C10(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  sub_100E5E35C(v12, a3);
  sub_10009CF40(v11, a4);
  sub_1012F22D0(v13, __p, v12, v11, v16);
}

void sub_1012F225C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_10002B644(&a15);
  sub_100E5D190(&a19);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100E5D190(v23 + 32);
  sub_10002B644(&a23);
  _Unwind_Resume(a1);
}

void sub_1012F22D0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (*(a1 + 72) == 1)
  {
    *v10 = 0u;
    memset(v11, 0, 24);
    sub_100E5E35C(v10, a3);
    *&v11[1] = *(a1 + 64);
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 0;
    }

    sub_10009CF40(a5, a1);
    sub_100E5E35C((a5 + 4), a1 + 32);
    a5[8] = *(a1 + 64);
    *(a5 + 70) = *(a1 + 70);
    sub_100E5E35C(__p, v10);
    *(&v14 + 1) = *&v11[1];
    a5[13] = 0;
    operator new();
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  *v10 = 0u;
  sub_100AE8C10(v10, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(v11 + 8) = *(a2 + 24);
  DWORD2(v11[1]) = *(a2 + 40);
  LOBYTE(v12) = *(a4 + 24) != 0;
  BYTE1(v12) = *(a1 + 76) ^ 1;
  sub_100E5BAB8((a1 + 32), a3);
  sub_10025ABF0(a1, a4);
  *(a1 + 76) = 257;
  sub_10009CF40(a5, a1);
  sub_100E5E35C((a5 + 4), a1 + 32);
  a5[8] = *(a1 + 64);
  *(a5 + 70) = *(a1 + 70);
  memset(__p, 0, sizeof(__p));
  sub_100AE8C10(__p, v10[0], v10[1], (v10[1] - v10[0]) >> 2);
  v14 = *(v11 + 8);
  v15 = DWORD2(v11[1]);
  v16 = v12;
  a5[13] = 0;
  operator new();
}

void sub_1012F2590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  operator delete(v19);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100E5D190(v18 + 32);
  sub_10002B644(v18);
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012F263C(uint64_t a1, void (*a2)(_OWORD *__return_ptr, _BYTE *))
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  sub_10009CF40(v5, a1 + 48);
  sub_100E5E35C(v6, a1 + 80);
  v7[0] = *(a1 + 112);
  *(v7 + 6) = *(a1 + 118);
  a2(v8, v5);
  sub_100E5D190(v6);
  sub_10002B644(v5);
  sub_10025ABF0((a1 + 48), v8);
  sub_100E5BAB8((a1 + 80), v9);
  if (*(a1 + 120) == BYTE8(v10))
  {
    if (*(a1 + 120))
    {
      *(a1 + 112) = v10;
      *(a1 + 116) = DWORD1(v10);
    }
  }

  else if (*(a1 + 120))
  {
    *(a1 + 120) = 0;
  }

  else
  {
    *(a1 + 112) = v10;
    *(a1 + 120) = 1;
  }

  *(a1 + 124) = WORD6(v10);
  if (*(&v12 + 1))
  {
    (*(**(&v12 + 1) + 48))(*(&v12 + 1), a1);
  }

  sub_1012F3F88(&v11);
  sub_100E5D190(v9);
  return sub_10002B644(v8);
}

void sub_1012F27AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100E5D190(v9 + 32);
  sub_10002B644(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F27E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 77);
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  sub_10010BE30(a2, v5);
  sub_1012F2EE8(a2 + 32, v6);
  *(a2 + 64) = v7;
  *(a2 + 70) = *(&v7 + 6);
  *(a2 + 80) = off_101F2AE38;
  *(a2 + 88) = v3;
  *(a2 + 104) = a2 + 80;
  sub_100E5D190(v6);
  return sub_10002B644(v5);
}

void sub_1012F28BC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  LOBYTE(v8[0]) = a2;
  DWORD1(v8[0]) = a3;
  sub_100E5E35C(v8 + 8, a1 + 32);
  if (!*(a1 + 56))
  {
    if (*(a1 + 72) == 1)
    {
      *(a1 + 64) = a2;
      *(a1 + 68) = a3;
    }

    else
    {
      *(a1 + 64) = a2 | (a3 << 32);
      *(a1 + 72) = 1;
    }
  }

  sub_100E5E2D8(a1 + 32);
  sub_10016DBD4(a1);
  *(a1 + 76) = 0;
  sub_10009CF40(a4, a1);
  sub_100E5E35C((a4 + 4), a1 + 32);
  a4[8] = *(a1 + 64);
  *(a4 + 70) = *(a1 + 70);
  v10 = *&v8[0];
  sub_100E5E35C(&v11, v8 + 8);
  a4[13] = 0;
  operator new();
}

void sub_1012F2A3C(_Unwind_Exception *a1)
{
  sub_100E5D190(v2 + 8);
  sub_100E5D190(v1 + 32);
  sub_10002B644(v1);
  sub_100E5D190(v3 | 8);
  _Unwind_Resume(a1);
}

void sub_1012F2A88(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(v5, 0, sizeof(v5));
  sub_10009CF40(v5, a1);
  memset(v4, 0, sizeof(v4));
  sub_10009CF40(v4, a1);
  sub_100E5E2D8(a1 + 32);
  sub_10016DBD4(a1);
  sub_10009CF40(a2, a1);
  sub_100E5E35C((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  *(a2 + 70) = *(a1 + 70);
  sub_10009CF40(v6, v4);
  a2[13] = 0;
  operator new();
}

void sub_1012F2BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_10002B644(v14 - 56);
  sub_100E5D190(v13 + 32);
  sub_10002B644(v13);
  sub_10002B644(&a9);
  sub_10002B644(&a13);
  _Unwind_Resume(a1);
}

void sub_1012F2C10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        sub_1012F263C(v5, sub_1012F2A88);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1012F2C94(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012F2CB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_1012F2CC0(void *a1)
{
  *a1 = off_101F2AD28;
  sub_100E5D190((a1 + 1));
  return a1;
}

void sub_1012F2D04(void *a1)
{
  *a1 = off_101F2AD28;
  sub_100E5D190((a1 + 1));

  operator delete();
}

uint64_t sub_1012F2DE8(uint64_t a1, void *a2)
{
  *a2 = off_101F2AD28;
  result = sub_100E5E35C((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_1012F2E44(void *a1)
{
  sub_100E5D190(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1012F2E80(uint64_t result)
{
  if (*(result + 32))
  {
    return sub_100E5CF8C(result + 8, *(result + 40), *(result + 44));
  }

  return result;
}

uint64_t sub_1012F2E9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F2EE8(uint64_t a1, uint64_t a2)
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

void *sub_1012F2F68(void *a1)
{
  *a1 = off_101F2ADB8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1012F2FB8(void *a1)
{
  *a1 = off_101F2ADB8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  operator delete();
}

__n128 sub_1012F30D0(__n128 *a1, uint64_t a2)
{
  *a2 = off_101F2ADB8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  sub_100AE8C10(a2 + 8, a1->n128_i64[1], a1[1].n128_i64[0], (a1[1].n128_u64[0] - a1->n128_u64[1]) >> 2);
  result = a1[2];
  *(a2 + 48) = a1[3].n128_u32[0];
  *(a2 + 32) = result;
  *(a2 + 56) = a1[3].n128_u16[4];
  *(a2 + 62) = 0;
  *(a2 + 58) = 0;
  return result;
}

void sub_1012F314C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void sub_1012F3164(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void sub_1012F31A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 56) != 1)
  {
    goto LABEL_38;
  }

  v37 = 0;
  *__p = 0;
  *&__p[8] = 0;
  ServiceMap = Registry::getServiceMap(*(a2 + 128));
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
  cf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &cf);
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
  PersonalityIdFromSlotIdEx();
  (*(*v12 + 40))(__p, v12, &cf);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(cf);
    if (v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v13 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v11);
  }

LABEL_13:
  v14 = 20000000;
  if (*__p)
  {
    cf = 0;
    (*(**__p + 40))(&cf);
    v15 = cf;
    if (cf)
    {
      LODWORD(v39) = 20;
      v16 = CFGetTypeID(cf);
      if (v16 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v39, v15, v17);
        v14 = 1000000 * v39;
      }
    }

    sub_10000A1EC(&cf);
  }

  if (*&__p[8])
  {
    sub_100004A34(*&__p[8]);
  }

  sub_10000A1EC(&v37);
  v18 = *(a2 + 16);
  if (!v18 || (v19 = *(a2 + 8), (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    sub_100013CC4();
  }

  v21 = v20;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  Registry::getTimerService(&v37, *(a2 + 128));
  v22 = v37;
  strcpy(__p, "EmergencyPhoneSearcher");
  v36 = 22;
  v23 = *(a2 + 24);
  object = v23;
  if (v23)
  {
    dispatch_retain(v23);
  }

  cf = _NSConcreteStackBlock;
  v41 = 1174405120;
  v42 = sub_1012F2C10;
  p_cf = &unk_101F2AC40;
  v44 = v19;
  v45 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  aBlock = _Block_copy(&cf);
  sub_100D23364(v22, __p, 1, v14, &object, &aBlock);
  v24 = v39;
  v39 = 0;
  v25 = *(a2 + 152);
  *(a2 + 152) = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
    v26 = v39;
    v39 = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
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

  if (v36 < 0)
  {
    operator delete(*__p);
  }

  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__shared_weak_count::__release_weak(v21);
LABEL_38:
  if (*(a1 + 57) == 1)
  {
    v27 = *(a2 + 16);
    if (!v27 || (v28 = *(a2 + 8), (v29 = std::__shared_weak_count::lock(v27)) == 0))
    {
      sub_100013CC4();
    }

    v30 = v29;
    p_shared_weak_owners = &v29->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v29);
    v32 = *(a2 + 144);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    cf = off_101F2B008;
    v41 = v28;
    v42 = v30;
    p_cf = &cf;
    (*(*v32 + 32))(v32, a1 + 8, &cf);
    sub_100E5D190(&cf);
    std::__shared_weak_count::__release_weak(v30);
  }
}

void sub_1012F3624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012F3714(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F37D4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F2AE38;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t sub_1012F3804(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 152);
  if (result)
  {
    *(a2 + 152) = 0;
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 8) == 1)
  {
    v5 = *(**(a2 + 144) + 40);

    return v5();
  }

  return result;
}

uint64_t sub_1012F38A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012F38F0(void *a1)
{
  *a1 = off_101F2AEB8;
  sub_100E5D190((a1 + 2));
  return a1;
}

void sub_1012F3934(void *a1)
{
  *a1 = off_101F2AEB8;
  sub_100E5D190((a1 + 2));

  operator delete();
}

uint64_t sub_1012F3A14(uint64_t a1, void *a2)
{
  *a2 = off_101F2AEB8;
  a2[1] = *(a1 + 8);
  return sub_100E5E35C((a2 + 2), a1 + 16);
}

void sub_1012F3A50(void *a1)
{
  sub_100E5D190(a1 + 16);

  operator delete(a1);
}

uint64_t sub_1012F3A8C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 152);
  if (result)
  {
    *(a2 + 152) = 0;
    result = (*(*result + 8))(result);
  }

  if (*(a1 + 40))
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 12);

    return sub_100E5CF8C(a1 + 16, v4, v5);
  }

  return result;
}

uint64_t sub_1012F3B0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012F3B58(void *a1)
{
  *a1 = off_101F2AF38;
  sub_10002B644((a1 + 1));
  return a1;
}

void sub_1012F3B9C(void *a1)
{
  *a1 = off_101F2AF38;
  sub_10002B644((a1 + 1));

  operator delete();
}

void sub_1012F3CAC(void *a1)
{
  sub_10002B644(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1012F3CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 152);
  if (v3)
  {
    *(a2 + 152) = 0;
    (*(*v3 + 8))(v3);
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(*result + 48);

    return v5();
  }

  return result;
}

uint64_t sub_1012F3D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012F3E64(void *a1, void *a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F2AFB8;
  sub_1012F1E5C((a1 + 3), a2, a3, *a4);
  return a1;
}

void sub_1012F3EE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2AFB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012F3F44(uint64_t a1)
{
  sub_1012F3F88(a1 + 80);
  sub_100E5D190(a1 + 32);

  return sub_10002B644(a1);
}

uint64_t sub_1012F3F88(uint64_t a1)
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

void *sub_1012F4008(void *a1)
{
  *a1 = off_101F2B008;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F4054(void *a1)
{
  *a1 = off_101F2B008;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1012F412C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2B008;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012F4164(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F4174(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012F41B4(uint64_t a1, unsigned __int8 *a2, unsigned int *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        v9 = v8[5];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = subscriber::asString();
          v11 = "failed";
          if (v5)
          {
            v11 = "succeed";
          }

          LODWORD(buf[0]) = 136315394;
          *(buf + 4) = v10;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = v11;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I search done on %s: %s", buf, 0x16u);
        }

        memset(buf, 0, sizeof(buf));
        sub_10009CF40(v12, (v8 + 6));
        sub_100E5E35C(&v13, (v8 + 10));
        v14[0] = v8[14];
        *(v14 + 6) = *(v8 + 118);
        sub_1012F28BC(v12, v5, v6, buf);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_1012F4418(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

capabilities::ct *sub_1012F4468@<X0>(void *a1@<X8>)
{
  result = sub_100092964();
  if (result)
  {
    v3 = capabilities::ct::supportsTEMS(result);
    if ((v3 & 1) != 0 || (result = capabilities::euicc::supportsATProfileManagementCommands(v3), result))
    {
      *a1 = 0;
      a1[1] = 0;
      operator new();
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return result;
}

void sub_1012F47D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F4930(uint64_t a1)
{
  *a1 = off_101F2B0C0;
  v6 = (a1 + 96);
  sub_1000B2DB4(&v6);
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1012F49C0(uint64_t a1)
{
  sub_1012F4930(a1);

  operator delete();
}

void sub_1012F49F8(uint64_t a1, dispatch_object_t object)
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

void sub_1012F4AF8(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 40))
      {
LABEL_23:
        sub_100004A34(v7);
        return;
      }

      v20 = 0u;
      v21 = 0u;
      *v19 = 0u;
      memset(&v18[3], 0, 32);
      LOBYTE(v18[3]) = 1;
      std::string::operator=(v19, (a1 + 64));
      if ((a2 - 1) >= 5)
      {
        if (!a2)
        {
          BYTE2(v18[3]) = 0;
          BYTE1(v18[3]) = *(a1 + 59);
          v10 = *(a1 + 240);
          if (*(a1 + 240))
          {
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                BYTE3(v18[3]) = 0;
              }

              goto LABEL_8;
            }
          }

          else
          {
            LOBYTE(v10) = 1;
          }

          BYTE3(v18[3]) = v10;
LABEL_8:
          v12 = v18[3];
          v13 = BYTE4(v18[3]);
          if (SHIBYTE(v18[6]) < 0)
          {
            sub_100005F2C(v14, v18[4], v18[5]);
          }

          else
          {
            *v14 = *&v18[4];
            v15 = v18[6];
          }

          if (SBYTE7(v20) < 0)
          {
            sub_100005F2C(__p, v19[0], v19[1]);
          }

          else
          {
            *__p = *v19;
            v17 = v20;
          }

          memset(v18, 0, 24);
          sub_100112528(v18, *(&v20 + 1), v21, 0x84BDA12F684BDA13 * ((v21 - *(&v20 + 1)) >> 3));
          v9 = *(a1 + 232);
          if (!v9)
          {
            sub_100022DB4();
          }

          (*(*v9 + 48))(v9, &v12);
          *buf = v18;
          sub_100112120(buf);
          if (SHIBYTE(v17) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v15) < 0)
          {
            operator delete(v14[0]);
          }

          *buf = &v20 + 8;
          sub_100112120(buf);
          if (SBYTE7(v20) < 0)
          {
            operator delete(v19[0]);
          }

          if (SHIBYTE(v18[6]) < 0)
          {
            operator delete(v18[4]);
          }

          goto LABEL_23;
        }

        LOBYTE(a2) = 0;
      }

      v8 = *(v5 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = at::asString();
        *buf = 136315138;
        *&buf[4] = v11;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Profile Management Manage State failed: causeId = %s", buf, 0xCu);
      }

      BYTE4(v18[3]) = a2;
      BYTE2(v18[3]) = 1;
      goto LABEL_8;
    }
  }
}

void sub_1012F4D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1012F4DFC(&a25);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F4DFC(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_100112120(&v3);
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

uint64_t sub_1012F4E58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1012F5B50(a1 + 56, a2 + 56);
  return sub_1012F644C(a1 + 208, a2 + 208);
}

void sub_1012F4EAC(_Unwind_Exception *a1)
{
  sub_1012F4ED4(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012F4ED4(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

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

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1012F4F58(uint64_t a1)
{
  sub_1012F64E4(a1 + 208);
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

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

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1012F5004(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        memset(&v20[3], 0, 32);
        LOBYTE(v20[3]) = 3;
        BYTE1(v20[3]) = *(a1 + 59);
        std::string::operator=(v21, (a1 + 64));
        v8 = *a2;
        if (v8 == 1)
        {
          if ((&v22 + 8) != a2 + 8)
          {
            sub_1001149B8(&v22 + 8, *(a2 + 1), *(a2 + 2), 0x84BDA12F684BDA13 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
          }

          v10 = 0;
        }

        else
        {
          if (v8 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          v9 = *(v5 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1012F5354(a2);
            v12 = asString();
            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Profile Management Get Profiles failed: result = %s", buf, 0xCu);
          }

          v10 = 1;
        }

        BYTE2(v20[3]) = v10;
        v15 = BYTE4(v20[3]);
        v14 = v20[3];
        if (SHIBYTE(v20[6]) < 0)
        {
          sub_100005F2C(v16, v20[4], v20[5]);
        }

        else
        {
          *v16 = *&v20[4];
          v17 = v20[6];
        }

        if (SBYTE7(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v19 = v22;
        }

        memset(v20, 0, 24);
        sub_100112528(v20, *(&v22 + 1), v23, 0x84BDA12F684BDA13 * ((v23 - *(&v22 + 1)) >> 3));
        v11 = *(a1 + 232);
        if (!v11)
        {
          sub_100022DB4();
        }

        (*(*v11 + 48))(v11, &v14);
        *buf = v20;
        sub_100112120(buf);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        *buf = &v22 + 8;
        sub_100112120(buf);
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v20[6]) < 0)
        {
          operator delete(v20[4]);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1012F52E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  __cxa_free_exception(v26);
  sub_1012F4DFC(&a25);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1012F5354(unsigned __int8 *a1)
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

void sub_1012F53F4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v22 = 0u;
        v23 = 0u;
        *v21 = 0u;
        memset(&v20[3], 0, 32);
        LOBYTE(v20[3]) = 3;
        BYTE1(v20[3]) = *(a1 + 59);
        std::string::operator=(v21, (a1 + 64));
        v8 = *a2;
        if (v8 == 1)
        {
          if ((&v22 + 8) != a2 + 8)
          {
            sub_1001149B8(&v22 + 8, *(a2 + 1), *(a2 + 2), 0x84BDA12F684BDA13 * ((*(a2 + 2) - *(a2 + 1)) >> 3));
          }

          v10 = 0;
        }

        else
        {
          if (v8 != 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          v9 = *(v5 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1012F5354(a2);
            v12 = asString();
            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Profile Management Set Nickname failed: result = %s", buf, 0xCu);
          }

          v10 = 1;
        }

        BYTE2(v20[3]) = v10;
        v15 = BYTE4(v20[3]);
        v14 = v20[3];
        if (SHIBYTE(v20[6]) < 0)
        {
          sub_100005F2C(v16, v20[4], v20[5]);
        }

        else
        {
          *v16 = *&v20[4];
          v17 = v20[6];
        }

        if (SBYTE7(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v19 = v22;
        }

        memset(v20, 0, 24);
        sub_100112528(v20, *(&v22 + 1), v23, 0x84BDA12F684BDA13 * ((v23 - *(&v22 + 1)) >> 3));
        v11 = *(a1 + 232);
        if (!v11)
        {
          sub_100022DB4();
        }

        (*(*v11 + 48))(v11, &v14);
        *buf = v20;
        sub_100112120(buf);
        if (SHIBYTE(v19) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        *buf = &v22 + 8;
        sub_100112120(buf);
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v20[6]) < 0)
        {
          operator delete(v20[4]);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1012F56D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  __cxa_free_exception(v26);
  sub_1012F4DFC(&a25);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

void sub_1012F5744(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_26:
        sub_100004A34(v7);
        return;
      }

      v21 = 0u;
      v22 = 0u;
      *v20 = 0u;
      memset(&v19[3], 0, 32);
      LOBYTE(v19[3]) = 2;
      v8 = *a2;
      if (v8 == 1)
      {
        if (a2[1])
        {
LABEL_12:
          v13 = v19[3];
          v14 = BYTE4(v19[3]);
          goto LABEL_13;
        }

        if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }
      }

      else
      {
        if (v8 != 2)
        {
          v11 = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsEmptyError::ResultIsEmptyError(v11);
        }

        v9 = *(v5 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = asString();
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Profile Management Download Profile failed: result = %s", buf, 0xCu);
          BYTE2(v19[3]) = 1;
          v14 = BYTE4(v19[3]);
          v13 = v19[3];
          if (SHIBYTE(v19[6]) < 0)
          {
            sub_100005F2C(&v15, v19[4], v19[5]);
LABEL_14:
            if (SBYTE7(v21) < 0)
            {
              sub_100005F2C(__p, v20[0], v20[1]);
            }

            else
            {
              *__p = *v20;
              v18 = v21;
            }

            memset(v19, 0, 24);
            sub_100112528(v19, *(&v21 + 1), v22, 0x84BDA12F684BDA13 * ((v22 - *(&v21 + 1)) >> 3));
            v10 = a1[10];
            if (!v10)
            {
              sub_100022DB4();
            }

            (*(*v10 + 48))(v10, &v13);
            *buf = v19;
            sub_100112120(buf);
            if (SHIBYTE(v18) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v16) < 0)
            {
              operator delete(v15);
            }

            *buf = &v21 + 8;
            sub_100112120(buf);
            if (SBYTE7(v21) < 0)
            {
              operator delete(v20[0]);
            }

            if (SHIBYTE(v19[6]) < 0)
            {
              operator delete(v19[4]);
            }

            goto LABEL_26;
          }

LABEL_13:
          v15 = *&v19[4];
          v16 = v19[6];
          goto LABEL_14;
        }
      }

      BYTE2(v19[3]) = 1;
      goto LABEL_12;
    }
  }
}

void sub_1012F5A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  __cxa_free_exception(v26);
  sub_1012F4DFC(&a25);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F5AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1012F644C(a1 + 56, a2 + 56);
}

void sub_1012F5AEC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012F5B04(uint64_t a1)
{
  sub_1012F64E4(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1012F5B50(uint64_t a1, uint64_t a2)
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

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  return a1;
}

void sub_1012F5C7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

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

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012F5DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1012F5F8C(va);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1012F5E08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2B238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012F5E5C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(a1 + 25) ^ 1;
    }

    else
    {
      v3 = 1;
    }

    v5 = v3 & 1;
    (*(*v2 + 48))(v2, &v5);
  }

  return sub_1012F5F8C(a1 + 32);
}

uint64_t sub_1012F5EF4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1012F5F8C(uint64_t a1)
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

void sub_1012F6010(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012F6064(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F60A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012F60D0(ServiceManager::Service *this)
{
  *this = off_101F2B2E8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012F612C(ServiceManager::Service *this)
{
  *this = off_101F2B2E8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1012F61AC@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012F61EC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1012F49F8(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1012F49F8(v4, 0);
}

void sub_1012F628C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012F636C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012F644C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1012F64E4(uint64_t a1)
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

void sub_1012F6564(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v9, *(v2 + 64));
  ctu::RestModule::connect();
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1002C0694(v2 + 96);
  v3 = *(v2 + 48);
  v4 = v1[1];
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(group);
  }

  (*(*v3 + 16))(v3, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      p_shared_weak_owners = &v6->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v11 = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012F69A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  std::__shared_weak_count::__release_weak(v28);
  std::__shared_weak_count::__release_weak(v28);
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F6A70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        memset(v9, 0, sizeof(v9));
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  sub_1012F7690(v7);
  return a1;
}

void sub_1012F6D64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_1012F6D70(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *sub_1012F6E54(void *a1)
{
  *a1 = off_101F2B368;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F6EA0(void *a1)
{
  *a1 = off_101F2B368;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012F6F80(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B368;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012F6FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F6FD0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_1012F7010(uint64_t a1, uint64_t a2)
{
  sub_1012F7610(v6, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 8))
      {
        sub_1012F5EF4(v7, v6);
        sub_1012F5EF4(v8, v7);
        sub_1012F5CF8();
      }

      sub_100004A34(v4);
    }
  }

  return sub_1012F5F8C(v6);
}

void sub_1012F7430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24, uint64_t a25, std::__shared_weak_count *a26, xpc_object_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, xpc_object_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, xpc_object_t object, char a43)
{
  if (a26)
  {
    sub_100004A34(a26);
  }

  sub_1012F5F8C(v43 - 192);
  sub_100004A34(a10);
  sub_1012F5F8C(&a43);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F75C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F7610(uint64_t a1, uint64_t a2)
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

uint64_t sub_1012F7690(uint64_t a1)
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

uint64_t sub_1012F7710(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        memset(v9, 0, sizeof(v9));
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  sub_1012F80D8(v7);
  return a1;
}

void sub_1012F7A04(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_1012F7A10(void *a1)
{
  *a1 = off_101F2B3F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F7A5C(void *a1)
{
  *a1 = off_101F2B3F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012F7B3C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B3F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012F7B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F7B8C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012F7BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *v9 = *(a2 + 16);
  *&v9[3] = *(a2 + 19);
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_1012F7610(v13, a3);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      if (*(a1 + 8))
      {
        if (v6 < 0)
        {
          sub_100005F2C(&__str, v4, v5);
        }

        else
        {
          __str.__r_.__value_.__r.__words[0] = v4;
          __str.__r_.__value_.__l.__size_ = v5;
          LODWORD(__str.__r_.__value_.__r.__words[2]) = *v9;
          *(&__str.__r_.__value_.__r.__words[2] + 3) = *&v9[3];
          *(&__str.__r_.__value_.__s + 23) = v6;
        }

        sub_1012F5EF4(v14, v13);
        v11 = 0;
        v12 = 0;
        sub_1012F5EF4(v15, v14);
        sub_1012F5CF8();
      }

      sub_100004A34(v8);
    }
  }

  sub_1012F5F8C(v13);
  if (v6 < 0)
  {
    operator delete(v4);
  }
}

void sub_1012F7F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012F808C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F80D8(uint64_t a1)
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

void *sub_1012F8158(void *a1)
{
  *a1 = off_101F2B488;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F81A4(void *a1)
{
  *a1 = off_101F2B488;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012F8284(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B488;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012F82C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F82D4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_1012F8314(uint64_t a1, uint64_t a2)
{
  sub_1012F7610(v6, a2);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 8))
      {
        sub_1012F5EF4(v7, v6);
        sub_1012F5EF4(v8, v7);
        sub_1012F5CF8();
      }

      sub_100004A34(v4);
    }
  }

  return sub_1012F5F8C(v6);
}

void sub_1012F8698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, xpc_object_t a34, xpc_object_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, xpc_object_t a41, char a42)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  sub_1012F5F8C(v42 - 192);
  sub_100004A34(a9);
  sub_1012F5F8C(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F87FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F8848(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v8 = v7;
      (*(*v3 + 24))(v3, v7);
    }

    else
    {
      v8 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v7 != a1)
  {
    v4 = v8;
    v5 = *(a1 + 24);
    if (v8 == v7)
    {
      if (v5 == a1)
      {
        memset(v9, 0, sizeof(v9));
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 24) + 24))(*(a1 + 24), v7);
        (*(**(a1 + 24) + 32))(*(a1 + 24));
        *(a1 + 24) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, a1);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 24);
      }

      *(a1 + 24) = a1;
    }

    else if (v5 == a1)
    {
      (*(*v5 + 24))(*(a1 + 24), v7);
      (*(**(a1 + 24) + 32))(*(a1 + 24));
      *(a1 + 24) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 24);
      *(a1 + 24) = v4;
    }
  }

  sub_1012F94E0(v7);
  return a1;
}

void sub_1012F8B3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_1012F8B48(void *a1)
{
  *a1 = off_101F2B508;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F8B94(void *a1)
{
  *a1 = off_101F2B508;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012F8C74(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B508;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012F8CB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F8CC4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012F8D04(void *a1, int *a2, uint64_t a3)
{
  v30 = *a2;
  *v31 = *(a2 + 2);
  v32 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *v33 = *(a2 + 2);
  v34 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v4 = *(a2 + 14);
  v36 = *(a2 + 9);
  *v35 = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 5);
  v38 = *(a2 + 12);
  *v37 = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v6 = *(a2 + 26);
  v40 = *(a2 + 15);
  *v39 = v6;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 8);
  v42 = *(a2 + 18);
  *v41 = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  sub_1012F9460(v62, a3);
  v8 = a1[2];
  if (v8)
  {
    v9 = a1[3];
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v10;
      if (!a1[1])
      {
LABEL_71:
        sub_100004A34(v11);
        goto LABEL_72;
      }

      sub_1012F5B50(v43, &v30);
      sub_1012F644C(v63, v62);
      ServiceMap = Registry::getServiceMap(*(v9 + 64));
      v13 = ServiceMap;
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

      std::mutex::lock(ServiceMap);
      v65[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, v65);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v22 = 0;
LABEL_12:
          v23 = capabilities::euicc::supportsATProfileManagementCommands(v21);
          if (v20)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1 && v43[0] == 1)
          {
            if (v44 == 2)
            {
              v25 = 2;
            }

            else
            {
              v25 = v44 != 1;
            }

            v26 = *(v9 + 16);
            if (!v26 || (v27 = *(v9 + 8), (v28 = std::__shared_weak_count::lock(v26)) == 0))
            {
              sub_100013CC4();
            }

            v29 = v28;
            atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v28);
            if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__dst, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
            }

            else
            {
              __dst = v45;
            }

            v65[0] = _NSConcreteStackBlock;
            v65[1] = 1174405120;
            v65[2] = sub_1012F4AF8;
            v65[3] = &unk_101F2B0D0;
            v66[0] = v9;
            v66[1] = v27;
            v67[0] = v29;
            atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1012F5B50(&v67[1], v43);
            v80[32] = v25;
            sub_1012F644C(v80, v63);
            (*(*v20 + 208))(v20, v25, &__dst, v65);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            sub_1012F64E4(v80);
            if (v79 < 0)
            {
              operator delete(v78);
            }

            if (v77 < 0)
            {
              operator delete(v76);
            }

            if (v75 < 0)
            {
              operator delete(v74);
            }

            if (v73 < 0)
            {
              operator delete(v72);
            }

            if (v71 < 0)
            {
              operator delete(v70);
            }

            if (v69 < 0)
            {
              operator delete(v68[0]);
            }

            if (v67[0])
            {
              std::__shared_weak_count::__release_weak(v67[0]);
            }

            std::__shared_weak_count::__release_weak(v29);
          }

          else
          {
            *v67 = 0u;
            *v68 = 0u;
            *v66 = 0u;
            memset(v65, 0, sizeof(v65));
            LOBYTE(v65[0]) = v43[0];
            BYTE2(v65[0]) = 1;
            std::string::operator=(v66, &v45);
            BYTE4(v65[0]) = 0;
            LODWORD(__dst.__r_.__value_.__l.__data_) = v65[0];
            __dst.__r_.__value_.__s.__data_[4] = 0;
            if (SHIBYTE(v65[3]) < 0)
            {
              sub_100005F2C(&__dst.__r_.__value_.__s.__data_[8], v65[1], v65[2]);
            }

            else
            {
              *&__dst.__r_.__value_.__r.__words[1] = *&v65[1];
              v57 = v65[3];
            }

            if (SHIBYTE(v67[0]) < 0)
            {
              sub_100005F2C(&__p, v66[0], v66[1]);
            }

            else
            {
              __p = *v66;
              v59 = v67[0];
            }

            memset(v60, 0, 24);
            sub_100112528(v60, v67[1], v68[0], 0x84BDA12F684BDA13 * ((v68[0] - v67[1]) >> 3));
            if (!v64)
            {
              sub_100022DB4();
            }

            (*(*v64 + 48))(v64, &__dst);
            v61 = v60;
            sub_100112120(&v61);
            if (SHIBYTE(v59) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v57) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__size_);
            }

            v61 = &v67[1];
            sub_100112120(&v61);
            if (SHIBYTE(v67[0]) < 0)
            {
              operator delete(v66[0]);
            }

            if (SHIBYTE(v65[3]) < 0)
            {
              operator delete(v65[1]);
            }
          }

          if ((v22 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          sub_1012F64E4(v63);
          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v49 < 0)
          {
            operator delete(v48);
          }

          if (v47 < 0)
          {
            operator delete(v46);
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          goto LABEL_71;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v22 = 1;
      goto LABEL_12;
    }
  }

LABEL_72:
  sub_1012F64E4(v62);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1012F92FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, void *__p, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  std::__shared_weak_count::__release_weak(v65);
  if ((v66 & 1) == 0)
  {
    sub_100004A34(v64);
  }

  sub_1012F64E4(&a63);
  sub_1012F4ED4(&a28);
  sub_100004A34(v63);
  sub_1012F64E4(&a59);
  sub_1012F4ED4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F9414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012F9460(uint64_t a1, uint64_t a2)
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

uint64_t sub_1012F94E0(uint64_t a1)
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

void *sub_1012F9560(void *a1)
{
  *a1 = off_101F2B598;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F95AC(void *a1)
{
  *a1 = off_101F2B598;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012F968C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B598;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012F96CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012F96DC(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012F971C(void *a1, int *a2, uint64_t a3)
{
  v30 = *a2;
  *v31 = *(a2 + 2);
  v32 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *v33 = *(a2 + 2);
  v34 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v4 = *(a2 + 14);
  v36 = *(a2 + 9);
  *v35 = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 5);
  v38 = *(a2 + 12);
  *v37 = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v6 = *(a2 + 26);
  v40 = *(a2 + 15);
  *v39 = v6;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 8);
  v42 = *(a2 + 18);
  *v41 = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  sub_1012F9460(v62, a3);
  v8 = a1[2];
  if (v8)
  {
    v9 = a1[3];
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v10;
      if (!a1[1])
      {
LABEL_75:
        sub_100004A34(v11);
        goto LABEL_76;
      }

      sub_1012F5B50(v43, &v30);
      sub_1012F644C(v63, v62);
      ServiceMap = Registry::getServiceMap(*(v9 + 64));
      v13 = ServiceMap;
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

      std::mutex::lock(ServiceMap);
      v65[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, v65);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v22 = 0;
LABEL_12:
          v23 = capabilities::euicc::supportsATProfileManagementCommands(v21);
          if (v20)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1 && v43[0] == 3)
          {
            v25 = *(v9 + 16);
            if (!v25 || (v26 = *(v9 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
            {
              sub_100013CC4();
            }

            v28 = v27;
            p_shared_weak_owners = &v27->__shared_weak_owners_;
            atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v27);
            if (v43[3] > 1u)
            {
              if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__dst, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = v44;
              }

              if (SHIBYTE(v46) < 0)
              {
                sub_100005F2C(v60, v45, *(&v45 + 1));
              }

              else
              {
                *v60 = v45;
                v61 = v46;
              }

              v65[0] = _NSConcreteStackBlock;
              v65[1] = 1174405120;
              v65[2] = sub_1012F53F4;
              v65[3] = &unk_101F2B130;
              __src[0] = v9;
              __src[1] = v26;
              v67[0] = v28;
              atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1012F5B50(&v67[1], v43);
              sub_1012F644C(v80, v63);
              (*(*v20 + 224))(v20, &__dst, v60, v65);
              if (SHIBYTE(v61) < 0)
              {
                operator delete(v60[0]);
              }

              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v65[0] = _NSConcreteStackBlock;
              v65[1] = 1174405120;
              v65[2] = sub_1012F5004;
              v65[3] = &unk_101F2B100;
              __src[0] = v9;
              __src[1] = v26;
              v67[0] = v28;
              atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
              sub_1012F5B50(&v67[1], v43);
              sub_1012F644C(v80, v63);
              (*(*v20 + 200))(v20, v65);
            }

            sub_1012F64E4(v80);
            if (v79 < 0)
            {
              operator delete(v78);
            }

            if (v77 < 0)
            {
              operator delete(v76);
            }

            if (v75 < 0)
            {
              operator delete(v74);
            }

            if (v73 < 0)
            {
              operator delete(v72);
            }

            if (v71 < 0)
            {
              operator delete(v70);
            }

            if (v69 < 0)
            {
              operator delete(v68[0]);
            }

            if (v67[0])
            {
              std::__shared_weak_count::__release_weak(v67[0]);
            }

            std::__shared_weak_count::__release_weak(v28);
          }

          else
          {
            *v67 = 0u;
            *v68 = 0u;
            *__src = 0u;
            memset(v65, 0, sizeof(v65));
            LOBYTE(v65[0]) = v43[0];
            BYTE2(v65[0]) = 1;
            std::string::operator=(__src, &v44);
            LODWORD(__dst.__r_.__value_.__l.__data_) = v65[0];
            __dst.__r_.__value_.__s.__data_[4] = BYTE4(v65[0]);
            if (SHIBYTE(v65[3]) < 0)
            {
              sub_100005F2C(&__dst.__r_.__value_.__s.__data_[8], v65[1], v65[2]);
            }

            else
            {
              *&__dst.__r_.__value_.__r.__words[1] = *&v65[1];
              v56 = v65[3];
            }

            if (SHIBYTE(v67[0]) < 0)
            {
              sub_100005F2C(&__p, __src[0], __src[1]);
            }

            else
            {
              __p = *__src;
              v58 = v67[0];
            }

            memset(v59, 0, sizeof(v59));
            sub_100112528(v59, v67[1], v68[0], 0x84BDA12F684BDA13 * ((v68[0] - v67[1]) >> 3));
            if (!v64)
            {
              sub_100022DB4();
            }

            (*(*v64 + 48))(v64, &__dst);
            v60[0] = v59;
            sub_100112120(v60);
            if (SHIBYTE(v58) < 0)
            {
              operator delete(__p);
            }

            if (SHIBYTE(v56) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__size_);
            }

            v60[0] = &v67[1];
            sub_100112120(v60);
            if (SHIBYTE(v67[0]) < 0)
            {
              operator delete(__src[0]);
            }

            if (SHIBYTE(v65[3]) < 0)
            {
              operator delete(v65[1]);
            }
          }

          if ((v22 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          sub_1012F64E4(v63);
          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (v50 < 0)
          {
            operator delete(v49);
          }

          if (v48 < 0)
          {
            operator delete(v47);
          }

          if (SHIBYTE(v46) < 0)
          {
            operator delete(v45);
          }

          if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v44.__r_.__value_.__l.__data_);
          }

          goto LABEL_75;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v22 = 1;
      goto LABEL_12;
    }
  }

LABEL_76:
  sub_1012F64E4(v62);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }
}

void sub_1012F9DEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, void *a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v70);
  if ((v71 & 1) == 0)
  {
    sub_100004A34(v69);
  }

  sub_1012F64E4(&a68);
  sub_1012F4ED4(&a28);
  sub_100004A34(v68);
  sub_1012F64E4(&a64);
  sub_1012F4ED4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012F9F50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012F9F9C(void *a1)
{
  *a1 = off_101F2B618;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012F9FE8(void *a1)
{
  *a1 = off_101F2B618;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1012FA0C8(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F2B618;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1012FA108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1012FA118(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1012FA158(void *a1, int *a2, uint64_t a3)
{
  v29 = *a2;
  *v30 = *(a2 + 2);
  v31 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *v32 = *(a2 + 2);
  v33 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v4 = *(a2 + 14);
  v35 = *(a2 + 9);
  *v34 = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v5 = *(a2 + 5);
  v37 = *(a2 + 12);
  *v36 = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v6 = *(a2 + 26);
  v39 = *(a2 + 15);
  *v38 = v6;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 8);
  v41 = *(a2 + 18);
  *v40 = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  sub_1012F9460(v62, a3);
  v8 = a1[2];
  if (v8)
  {
    v9 = a1[3];
    v10 = std::__shared_weak_count::lock(v8);
    if (v10)
    {
      v11 = v10;
      if (!a1[1])
      {
LABEL_55:
        sub_100004A34(v11);
        goto LABEL_56;
      }

      sub_1012F5B50(v42, &v29);
      sub_1012F644C(v63, v62);
      ServiceMap = Registry::getServiceMap(*(v9 + 64));
      v13 = ServiceMap;
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

      std::mutex::lock(ServiceMap);
      *&v65[0] = v14;
      v18 = sub_100009510(&v13[1].__m_.__sig, v65);
      if (v18)
      {
        v20 = v18[3];
        v19 = v18[4];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v13);
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
          v22 = 0;
LABEL_12:
          v23 = capabilities::euicc::supportsATProfileManagementCommands(v21);
          if (v20)
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }

          if (v24 == 1 && v42[0] == 2)
          {
            v25 = *(v9 + 16);
            if (!v25 || (v26 = *(v9 + 8), (v27 = std::__shared_weak_count::lock(v25)) == 0))
            {
              sub_100013CC4();
            }

            v28 = v27;
            atomic_fetch_add_explicit(&v27->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v27);
            if (SHIBYTE(v50) < 0)
            {
              sub_100005F2C(__dst, v49, *(&v49 + 1));
            }

            else
            {
              *__dst = v49;
              *&__dst[16] = v50;
            }

            if (SHIBYTE(v48) < 0)
            {
              sub_100005F2C(v60, v47, *(&v47 + 1));
            }

            else
            {
              *v60 = v47;
              v61 = v48;
            }

            *&v65[0] = _NSConcreteStackBlock;
            *(&v65[0] + 1) = 1174405120;
            *&v65[1] = sub_1012F5744;
            *(&v65[1] + 1) = &unk_101F2B160;
            *&v66 = v9;
            *(&v66 + 1) = v26;
            *&v67[0] = v28;
            atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1012F644C(v67 + 8, v63);
            (*(*v20 + 216))(v20, __dst, v60, v65);
            if (SHIBYTE(v61) < 0)
            {
              operator delete(v60[0]);
            }

            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            sub_1012F64E4(v67 + 8);
            if (*&v67[0])
            {
              std::__shared_weak_count::__release_weak(*&v67[0]);
            }

            std::__shared_weak_count::__release_weak(v28);
          }

          else
          {
            memset(v65, 0, sizeof(v65));
            v66 = 0u;
            memset(v67, 0, sizeof(v67));
            LOBYTE(v65[0]) = v42[0];
            BYTE2(v65[0]) = 1;
            __dst[4] = 0;
            *__dst = v65[0];
            *&__dst[8] = *(v65 + 8);
            v56 = 0;
            *__p = 0u;
            v58 = 0;
            memset(v59, 0, sizeof(v59));
            if (!v64)
            {
              sub_100022DB4();
            }

            (*(*v64 + 48))(v64, __dst);
            v60[0] = v59;
            sub_100112120(v60);
            if (SHIBYTE(v58) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v56) < 0)
            {
              operator delete(*&__dst[8]);
            }

            v60[0] = v67 + 8;
            sub_100112120(v60);
            if (SBYTE7(v67[0]) < 0)
            {
              operator delete(v66);
            }

            if (SHIBYTE(v65[1]) < 0)
            {
              operator delete(*(&v65[0] + 1));
            }
          }

          if ((v22 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          sub_1012F64E4(v63);
          if (v54 < 0)
          {
            operator delete(v53);
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (SHIBYTE(v50) < 0)
          {
            operator delete(v49);
          }

          if (SHIBYTE(v48) < 0)
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

          goto LABEL_55;
        }
      }

      else
      {
        v20 = 0;
      }

      std::mutex::unlock(v13);
      v19 = 0;
      v22 = 1;
      goto LABEL_12;
    }
  }

LABEL_56:
  sub_1012F64E4(v62);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }
}

void sub_1012FA68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v54);
  if ((v55 & 1) == 0)
  {
    sub_100004A34(v53);
  }

  sub_1012F64E4(v56 - 208);
  sub_1012F4ED4(&a28);
  sub_100004A34(v52);
  sub_1012F64E4(v56 - 240);
  sub_1012F4ED4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012FA774(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012FA7C0(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 48) + 24))(*(**a1 + 48));
  operator delete();
}

void sub_1012FA864(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 48);
  group = 0;
  (*(*v2 + 32))(v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v3 = *(v1 + 48);
  v24 = 0;
  v20[0] = 0;
  v22[0] = v20;
  v4 = sub_1012F6D70(v3 + 48, 0);
  sub_1012F6A70((v4 + 5), v23);
  sub_1012F7690(v23);
  v5 = *(v1 + 48);
  v22[3] = 0;
  sub_1012F7710(v5 + 72, v22);
  sub_1012F80D8(v22);
  v6 = *(v1 + 48);
  v21 = 0;
  LODWORD(v18[0]) = 2;
  v19[0] = v18;
  v7 = sub_1012F6D70(v6 + 48, 2);
  sub_1012F6A70((v7 + 5), v20);
  sub_1012F7690(v20);
  v8 = *(v1 + 48);
  v19[3] = 0;
  LODWORD(v17[0]) = 3;
  v18[0] = v17;
  v9 = sub_1012F6D70(v8 + 104, 3);
  sub_1012F8848((v9 + 5), v19);
  sub_1012F94E0(v19);
  v10 = *(v1 + 48);
  v18[3] = 0;
  LODWORD(v16) = 4;
  v17[0] = &v16;
  v11 = sub_1012F6D70(v10 + 104, 4);
  sub_1012F8848((v11 + 5), v18);
  sub_1012F94E0(v18);
  v12 = *(v1 + 48);
  v17[3] = 0;
  v15 = 5;
  v16 = &v15;
  v13 = sub_1012F6D70(v12 + 104, 5);
  sub_1012F8848((v13 + 5), v17);
  sub_1012F94E0(v17);
  ctu::RestModule::disconnect((v1 + 80));
  operator delete();
}

void *sub_1012FAB1C(void *a1)
{
  *a1 = off_101F2B698;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1012FAB74(void *a1)
{
  *a1 = off_101F2B698;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1012FAC78(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2B698;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v4 = *(result + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012FACD8(void *a1)
{
  sub_1012D66FC(a1 + 8);

  operator delete(a1);
}

void sub_1012FAD14(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[1])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "failed!!";
          if (v4)
          {
            v10 = "succeeded!";
          }

          *buf = 136315138;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ATA %s!", buf, 0xCu);
        }

        v11 = a1[4];
        if (*v11 == 1)
        {
          v11[1] &= v4;
        }

        else
        {
          *v11 = 1;
          v11[1] = v4;
        }
      }

      sub_100004A34(v8);
    }
  }

  xpc_release(object);
}

void sub_1012FAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1012FAE80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012FAECC(void *a1)
{
  *a1 = off_101F2B718;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1012FAF24(void *a1)
{
  *a1 = off_101F2B718;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1012FB028(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2B718;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v4 = *(result + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012FB088(void *a1)
{
  sub_1012D66FC(a1 + 8);

  operator delete(a1);
}

void sub_1012FB0C4(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[1])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "failed!!";
          if (v4)
          {
            v10 = "succeeded!";
          }

          *buf = 136315138;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ATD %s!", buf, 0xCu);
        }

        v11 = a1[4];
        if (*v11 == 1)
        {
          v11[1] &= v4;
        }

        else
        {
          *v11 = 1;
          v11[1] = v4;
        }
      }

      sub_100004A34(v8);
    }
  }

  xpc_release(object);
}

void sub_1012FB200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1012FB230(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1012FB27C(void *a1)
{
  *a1 = off_101F2B798;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1012FB2D4(void *a1)
{
  *a1 = off_101F2B798;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_1012FB3D8(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F2B798;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = *(result + 24);
  v4 = *(result + 40);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012FB438(void *a1)
{
  sub_1012D66FC(a1 + 8);

  operator delete(a1);
}

void sub_1012FB474(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = a1[2];
  if (v5)
  {
    v6 = a1[3];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      if (a1[1])
      {
        v9 = *(v6 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "failed!!";
          if (v4)
          {
            v10 = "succeeded!";
          }

          *buf = 136315138;
          v14 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I AT+CHUP %s!", buf, 0xCu);
        }

        v11 = a1[4];
        if (*v11 == 1)
        {
          v11[1] &= v4;
        }

        else
        {
          *v11 = 1;
          v11[1] = v4;
        }
      }

      sub_100004A34(v8);
    }
  }

  xpc_release(object);
}

void sub_1012FB5B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1012FB5E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012FB6F8(_Unwind_Exception *exception_object)
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

uint64_t sub_1012FB720(uint64_t a1, NSObject **a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 40), "com.apple.telephony", "subscr.info");
  *a1 = off_101F2B818;
  *(a1 + 48) = *a3;
  v7 = *(a3 + 8);
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "SubscriberInfoController");
  v8 = *a2;
  v17 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *(a1 + 32);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  Registry::getCommandDriversFactory(&v14, *a3);
  v10 = v14;
  v11 = *a2;
  v13 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  (*(*v10 + 48))(v10, &v13);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  Registry::getNotificationSenderFactory(&v14, *(a1 + 48));
  (*(*v14 + 88))(v14);
  if (v15)
  {
    sub_100004A34(v15);
  }

  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  sub_100AE91C4((a1 + 160), &rest::kDefaultBundles);
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  return a1;
}

void sub_1012FB94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, dispatch_object_t a12, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v23 = v21;
  sub_10006DCAC(v23, *(v19 + 144));
  sub_100359978(v22, *(v19 + 120));
  v25 = *(v19 + 104);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v19 + 88);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v19 + 72);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v19 + 56);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 40));
  sub_1000C0544(v20);
  SubscriberInfoControllerInterface::~SubscriberInfoControllerInterface(v19);
  _Unwind_Resume(a1);
}

void sub_1012FBA38(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/sims_in_use");
  operator new();
}

void sub_1012FBD08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012FBD68(uint64_t result, uint64_t a2)
{
  v2 = *(result + 112);
  v3 = (result + 120);
  if (v2 != (result + 120))
  {
    v4 = result;
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      result = BasicSimInfo::operator==();
      if ((result & 1) == 0)
      {
        break;
      }

LABEL_15:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return result;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    result = subscriber::isSimAbsent();
    if (result)
    {
      result = subscriber::isPhySimDisabled();
      if ((result & 1) == 0)
      {
        result = (*(**(v4 + 80) + 48))(*(v4 + 80), v7, 192);
      }
    }

    goto LABEL_15;
  }

  return result;
}

void sub_1012FBE84(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 152))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
LABEL_20:
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No change in CDMA Aux Info readiness", buf, 2u);
      }

      v12 = *(a1 + 136);
      if (v12 != (a1 + 144))
      {
        do
        {
          if ((v12[4] & 1) == 0)
          {
            (*(**(a1 + 80) + 48))(*(a1 + 80), *(v12 + 7), 192);
          }

          v13 = v12[1];
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
              v14 = v12[2];
              v6 = *v14 == v12;
              v12 = v14;
            }

            while (!v6);
          }

          v12 = v14;
        }

        while (v14 != (a1 + 144));
      }

      return;
    }

    v4 = *(a1 + 136);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {
    v4 = *(a1 + 136);
  }

  v15 = (a1 + 144);
  if (v4 != (a1 + 144))
  {
    v16 = a2 + 1;
    do
    {
      v17 = *v16;
      v18 = *(v4 + 7);
      if (!*v16)
      {
        goto LABEL_42;
      }

      v19 = v16;
      do
      {
        if (*(v17 + 28) >= v18)
        {
          v19 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 28) < v18));
      }

      while (v17);
      if (v19 != v16 && v18 >= *(v19 + 7))
      {
        v23 = *(v4 + 32);
        if (*(v19 + 32) == v23)
        {
          goto LABEL_51;
        }

        v24 = *(a1 + 40);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = subscriber::asString();
          *buf = 136315394;
          v29 = v25;
          v30 = 1024;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I slot %s, isReady %d", buf, 0x12u);
        }

        if (!v23)
        {
LABEL_50:
          (*(**(a1 + 80) + 48))(*(a1 + 80), v18, 192);
          goto LABEL_51;
        }
      }

      else
      {
LABEL_42:
        v20 = *(v4 + 32);
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = subscriber::asString();
          *buf = 136315394;
          v29 = v22;
          v30 = 1024;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I slot %s, isReady %d", buf, 0x12u);
        }

        if (!v20)
        {
          goto LABEL_50;
        }
      }

      sub_1012FC5B4(a1, v18);
LABEL_51:
      v26 = v4[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v4[2];
          v6 = *v27 == v4;
          v4 = v27;
        }

        while (!v6);
      }

      v4 = v27;
    }

    while (v27 != v15);
  }
}

void sub_1012FC200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v3 = (a1 + 168);
  if (v2 != (a1 + 168))
  {
    v5 = (a2 + 8);
    v6 = (a1 + 120);
    while (1)
    {
      v7 = *v5;
      if (!*v5)
      {
        break;
      }

      v8 = *(v2 + 8);
      v9 = v5;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 == v5 || v8 < *(v9 + 8))
      {
        goto LABEL_24;
      }

      if ((rest::operator==() & 1) == 0)
      {
        if (*(v2 + 40))
        {
          v10 = *v6;
          if (*v6)
          {
            v8 = *(v2 + 8);
            v11 = v6;
            do
            {
              if (*(v10 + 32) >= v8)
              {
                v11 = v10;
              }

              v10 = *(v10 + 8 * (*(v10 + 32) < v8));
            }

            while (v10);
            if (v11 != v6 && *(v11 + 8) <= v8)
            {
              v13 = v11[7];
              v12 = v11[8];
              while (v13 != v12)
              {
                if ((*v13 - 3) <= 1)
                {
                  goto LABEL_36;
                }

                ++v13;
              }
            }
          }
        }
      }

LABEL_37:
      v18 = v2[1];
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
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
      if (v19 == v3)
      {
        return;
      }
    }

    v8 = *(v2 + 8);
LABEL_24:
    if (*(v2 + 40))
    {
      v14 = *v6;
      if (*v6)
      {
        v15 = v6;
        do
        {
          if (*(v14 + 32) >= v8)
          {
            v15 = v14;
          }

          v14 = *(v14 + 8 * (*(v14 + 32) < v8));
        }

        while (v14);
        if (v15 != v6 && *(v15 + 8) <= v8)
        {
          v17 = v15[7];
          v16 = v15[8];
          while (v17 != v16)
          {
            if ((*v17 - 3) < 2)
            {
LABEL_36:
              sub_1012FC5B4(a1, v8);
              goto LABEL_37;
            }

            ++v17;
          }
        }
      }
    }

    goto LABEL_37;
  }
}

uint64_t sub_1012FC3A4(uint64_t result, void *a2)
{
  v2 = result;
  if (a2[2] == *(result + 200))
  {
    v3 = *a2;
    if (*a2 == a2 + 1)
    {
      return result;
    }

    v4 = *(result + 184);
    v5 = v4;
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 16) == *(v5 + 16);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == a2 + 1)
      {
        return result;
      }
    }
  }

  else
  {
    v4 = *(result + 184);
  }

  v11 = (result + 192);
  if (v4 != (result + 192))
  {
    v12 = a2 + 1;
    do
    {
      v13 = *v12;
      v14 = *(v4 + 7);
      if (!*v12)
      {
        goto LABEL_31;
      }

      v15 = v12;
      do
      {
        if (*(v13 + 28) >= v14)
        {
          v15 = v13;
        }

        v13 = *(v13 + 8 * (*(v13 + 28) < v14));
      }

      while (v13);
      if (v15 != v12 && v14 >= *(v15 + 7))
      {
        v17 = *(v4 + 16);
        if (*(v15 + 16) == v17)
        {
          goto LABEL_33;
        }

        v16 = *(v2 + 96);
      }

      else
      {
LABEL_31:
        v16 = *(v2 + 96);
        v17 = *(v4 + 16);
      }

      result = (*(*v16 + 88))(v16, v14, v17);
LABEL_33:
      v18 = v4[1];
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
          v19 = v4[2];
          v6 = *v19 == v4;
          v4 = v19;
        }

        while (!v6);
      }

      v4 = v19;
    }

    while (v19 != v11);
  }

  return result;
}

uint64_t sub_1012FC54C(uint64_t result, int a2)
{
  if (a2 == 3)
  {
    v3 = result;
    (*(**(result + 80) + 24))(*(result + 80));

    return ctu::RestModule::disconnect((v3 + 64));
  }

  return result;
}

void sub_1012FC5B4(uint64_t a1, uint64_t a2)
{
  if (capabilities::ct::supportsCapabilityC2KDevice(a1))
  {
    v4 = *(a1 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = a1 + 144;
    do
    {
      if (*(v4 + 28) >= a2)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 28) < a2));
    }

    while (v4);
    if (v5 == a1 + 144 || *(v5 + 28) > a2)
    {
LABEL_9:
      v6 = *(a1 + 40);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v12[0]) = 0;
      v7 = "#I CDMA Aux Info not available";
      v8 = v6;
      goto LABEL_11;
    }

    v9 = *(v5 + 32);
    v10 = *(a1 + 40);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v12[0] = 67109120;
        v12[1] = 192;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I sending query to read 0x%x", v12, 8u);
      }

      (*(**(a1 + 80) + 40))(*(a1 + 80), a2, 192);
    }

    else if (v11)
    {
      LOWORD(v12[0]) = 0;
      v7 = "#I CDMA Aux Info not yet ready";
      v8 = v10;
LABEL_11:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v12, 2u);
    }
  }
}

void sub_1012FC748(uint64_t a1)
{
  sub_1012FC780(a1);

  operator delete();
}

void sub_1012FC780(uint64_t a1)
{
  *a1 = off_101F2B818;
  sub_10006DCAC(a1 + 184, *(a1 + 192));
  sub_10032D3A4(a1 + 160, *(a1 + 168));
  sub_10006DCAC(a1 + 136, *(a1 + 144));
  sub_100359978(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  SubscriberInfoControllerInterface::~SubscriberInfoControllerInterface(a1);
}

void sub_1012FC90C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1012FC9E0);
  __cxa_rethrow();
}

void sub_1012FC94C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012FC9A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012FC9E0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_1012FCA88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2B950;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012FCAC0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v18);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_1012FCC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1012FCCCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012FCD94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2B9D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012FCDCC(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
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

uint64_t sub_1012FCEA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012FCF6C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2BA50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012FCFA4(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1012FD07C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012FD144(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2BAD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012FD17C(void *a1, xpc_object_t *a2)
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

  sub_1011B61C4(v3, a2);
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

uint64_t sub_1012FD254(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012FD2A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
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
  v24 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__src = 0u;
  *v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_10000D518(&v17);
  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  (*(*a1 + 72))(a1, __p);
  v6 = (*(*a1 + 64))(a1);
  strlen(v6);
  v7 = sub_10000C030(&v17);
  if (a2)
  {
    v8 = sub_10000C030(v7);
    v9 = (*(*a1 + 88))(a1);
    strlen(v9);
    v7 = sub_10000C030(v8);
  }

  v10 = sub_10000C030(v7);
  sub_10000C030(v10);
  if ((BYTE8(v23) & 0x10) != 0)
  {
    v12 = v23;
    if (v23 < __src[1])
    {
      *&v23 = __src[1];
      v12 = __src[1];
    }

    v13 = __src[0];
  }

  else
  {
    if ((BYTE8(v23) & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_16;
    }

    v13 = *(&v18 + 1);
    v12 = *(&v19 + 1);
  }

  v11 = v12 - v13;
  if ((v12 - v13) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_16:
  a3[v11] = 0;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1012FD614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1012FD654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "5wi.ctr");
  a1[2] = 0;
  a1[3] = 0;
  v9 = *a5;
  a1[4] = *a5;
  if (v9)
  {
    dispatch_retain(v9);
  }

  a1[5] = 0;
  ctu::OsLogLogger::OsLogLogger(&v11, &v12);
  ctu::OsLogLogger::OsLogLogger((a1 + 6), &v11);
  ctu::OsLogLogger::~OsLogLogger(&v11);
  ctu::OsLogContext::~OsLogContext(&v12);
  v10 = *(a6 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1012FD96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v14 = v11[17];
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = v11[15];
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v11[13];
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = v11[11];
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = v11[9];
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = v11[7];
  v11[7] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v11 + 6));
  sub_1000C0544(v11 + 2);
  sd::IMSConnectivityHelperEventDelegate::~IMSConnectivityHelperEventDelegate(v12);
  sd::IMSConnectivityHelperInterface::~IMSConnectivityHelperInterface(v11);
  _Unwind_Resume(a1);
}

void sub_1012FDA98(void *a1)
{
  *a1 = off_101F2BB60;
  v2 = (a1 + 1);
  a1[1] = off_101F2BCA0;
  v3 = a1[23];
  a1[23] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[22];
  a1[22] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[17];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[15];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[13];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = a1[11];
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = a1[9];
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = a1[7];
  a1[7] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 6));
  sub_1000C0544(a1 + 2);
  sd::IMSConnectivityHelperEventDelegate::~IMSConnectivityHelperEventDelegate(v2);

  sd::IMSConnectivityHelperInterface::~IMSConnectivityHelperInterface(a1);
}

void sub_1012FDBF8(void *a1)
{
  sub_1012FDA98(a1);

  operator delete();
}

void sub_1012FDC30(uint64_t a1)
{
  sub_1012FDA98((a1 - 8));

  operator delete();
}

void sub_1012FDC6C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_1012FDD28(uint64_t a1)
{
  (*(**(a1 + 96) + 200))(&v5);
  v2 = PersonalityIDToSimSlot();
  if (v6)
  {
    sub_100004A34(v6);
  }

  (*(**(a1 + 96) + 200))(&v5);
  v3 = *(v5 + 49);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void sub_1012FDDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FDDF8(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 96) + 200))(buf);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*buf + 52));
  if (v27)
  {
    sub_100004A34(v27);
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I start using IMSConnectivityHelperCT", buf, 2u);
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 136);
  *(a1 + 128) = v7;
  *(a1 + 136) = v6;
  if (v8)
  {
    sub_100004A34(v8);
    v7 = *(a1 + 128);
  }

  (*(**(a1 + 96) + 200))(buf);
  v9 = *(a1 + 24);
  if (v9)
  {
    v10 = *buf;
    v11 = *(a1 + 16);
    v12 = std::__shared_weak_count::lock(v9);
    if (v12)
    {
      v13 = v11 + 8;
      if (!v11)
      {
        v13 = 0;
      }

      v24 = v13;
      v25 = v12;
      (*(*v7 + 40))(v7, v10 + 24, &v24);
      if (v25)
      {
        sub_100004A34(v25);
      }

      if (v27)
      {
        sub_100004A34(v27);
      }

      v14 = 0;
      while (1)
      {
        v15 = *(a1 + 128);
        (*(**(a1 + 96) + 200))(buf);
        v16 = *(*buf + 52);
        v17 = sub_1012FE20C(*(a1 + 96));
        v18 = dword_10194DDD8[v14];
        *(a1 + 148 + v18) = (*(*v15 + 456))(v15, v16, v17, v18);
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (++v14 == 2)
        {
          sub_1012FE278(a1);
          sub_1012FE30C(a1);
          *(a1 + 164) = 0;
          *(a1 + 168) = 0;
          v19 = (*(*a1 + 152))(a1, 1);
          v20 = **(a1 + 96);
          if (v19)
          {
            (*(v20 + 16))();
          }

          else
          {
            (*(v20 + 24))();
          }

          v21 = *(a1 + 24);
          if (v21)
          {
            v22 = std::__shared_weak_count::lock(v21);
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v22);
              v23 = *(a1 + 24);
              if (v23)
              {
                if (std::__shared_weak_count::lock(v23))
                {
                  operator new();
                }
              }

              sub_100013CC4();
            }
          }

          sub_100013CC4();
        }
      }
    }
  }

  sub_100013CC4();
}

void sub_1012FE1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

uint64_t sub_1012FE20C(uint64_t a1)
{
  (*(*a1 + 200))(&v3);
  v1 = *(v3 + 49);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v1 == 1)
  {
    return 26;
  }

  else
  {
    return 17;
  }
}

uint64_t sub_1012FE278(uint64_t a1)
{
  result = *(a1 + 176);
  if (result)
  {
    (*(*result + 16))(result);
    result = *(a1 + 176);
    *(a1 + 176) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1012FE30C(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    (*(*result + 16))(result);
    result = *(a1 + 184);
    *(a1 + 184) = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1012FE3A0(uint64_t a1, uint64_t *a2)
{
  (*(**(a1 + 96) + 200))(&v12);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v12 + 52));
  if (v13)
  {
    sub_100004A34(v13);
  }

  v5 = *v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I stop using IMSConnectivityHelperCT", &v12, 2u);
  }

  v6 = *a2;
  (*(**(a1 + 96) + 200))(&v12);
  v7 = v12;
  v8 = (*(*a1 + 16))(a1);
  (*(*v6 + 48))(v6, v7 + 24, v8);
  if (v13)
  {
    sub_100004A34(v13);
  }

  (*(*a1 + 56))(a1);
  (*(*a1 + 40))(a1, 1);
  v9 = (*(*a1 + 152))(a1, 1);
  v10 = **(a1 + 96);
  if (v9)
  {
    (*(v10 + 16))();
  }

  else
  {
    (*(v10 + 24))();
  }

  v11 = *(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1012FE5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FE618(uint64_t a1, char a2)
{
  (*(**(a1 + 96) + 200))(&v9);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v9 + 52));
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a2 & 1) == 0 && (v5 = *(a1 + 128)) != 0 && (v6 = sub_1012FDD28(a1), v7 = sub_1012FE20C(*(a1 + 96)), ((*(*v5 + 416))(v5, v6, v7)))
  {
    v8 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Not resetting transport because IMS connection is still active", &v9, 2u);
    }
  }

  else
  {
    *(a1 + 164) = 0;
    *(a1 + 168) = 0;
    *(a1 + 152) = 0xFFFFFFFF00000000;
    *(a1 + 148) = 0;
    sub_1012FE278(a1);
    sub_1012FE30C(a1);
  }
}

void sub_1012FE780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FE798(uint64_t a1)
{
  (*(**(a1 + 96) + 200))(&v4);
  v2 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(v4 + 52));
  if (v5)
  {
    sub_100004A34(v5);
  }

  v3 = *v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Reset current transport", &v4, 2u);
  }

  sub_1012FE8A0(a1, 0, 2);
}

void sub_1012FE888(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012FE8A0(uint64_t a1, char a2, int a3)
{
  v4 = a2;
  v3 = a3;
  operator new();
}

void sub_1012FE95C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_1012FE970(uint64_t a1)
{
  if (validContextType())
  {
    *(a1 + 156) = *(a1 + 160);
  }

  valid = validContextType();
  if ((valid & 1) == 0)
  {
    if (capabilities::ct::supportsVoiceCall(valid))
    {
      (*(**(a1 + 96) + 200))(v4);
      v3 = v4[1];
      *(a1 + 156) = *(v4[0] + 49) == 1;
      if (v3)
      {
        sub_100004A34(v3);
      }
    }

    else
    {
      *(a1 + 156) = 1;
    }
  }

  *(a1 + 4 * *(a1 + 156) + 164) = 0;
  sub_1012FEA30(a1, 1);
}

void sub_1012FEA30(uint64_t a1, int a2)
{
  (*(**(a1 + 96) + 200))(buf);
  v4 = (*(**(a1 + 56) + 16))(*(a1 + 56), *(*buf + 52));
  if (*v23)
  {
    sub_100004A34(*v23);
  }

  if (!*(a1 + 184))
  {
    goto LABEL_8;
  }

  v5 = *v4;
  v6 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: There is already Pdn bring up request on the queue. cancel it and activate right away.", buf, 2u);
    }

    sub_1012FE30C(a1);
LABEL_8:
    if (validContextType())
    {
      v7 = *(a1 + 4 * *(a1 + 156) + 164);
    }

    else
    {
      v7 = 0;
    }

    v8 = (*(**(a1 + 112) + 480))(*(a1 + 112), v7);
    v9 = *v4;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      *buf = 67109634;
      *&buf[4] = v8;
      *v23 = 2080;
      *&v23[2] = v10;
      v24 = 1024;
      v25 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: Attempting pdn bring up after %u seconds. Attempt [%s] # %u", buf, 0x18u);
    }

    Registry::getTimerService(buf, *(a1 + 64));
    v11 = *buf;
    sub_10000501C(__p, "PDP Retry timer");
    v12 = *(a1 + 32);
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_1013003A8;
    aBlock[3] = &unk_101F2BD30;
    aBlock[4] = a1;
    v17 = _Block_copy(aBlock);
    sub_100D23364(v11, __p, 1, 1000000 * v8, &object, &v17);
    v13 = v21;
    v21 = 0;
    v14 = *(a1 + 184);
    *(a1 + 184) = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
      v15 = v21;
      v21 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (*v23)
    {
      sub_100004A34(*v23);
    }

    if (v7 >= 3 && *(a1 + 156) != 1)
    {
      (*(**(a1 + 96) + 184))(*(a1 + 96), 0);
    }

    return;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I PdnBringUp: There is already Pdn bring up request on the queue. Do nothing", buf, 2u);
  }
}