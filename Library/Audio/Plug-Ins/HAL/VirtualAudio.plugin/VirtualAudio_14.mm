void sub_101EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59, uint64_t a60, uint64_t a61, std::__shared_weak_count *a62, uint64_t a63)
{
  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  sub_25AE44(&STACK[0x3F0]);
  sub_25AE44(v70 - 224);
  sub_477A0(a45);
  sub_65310(&a47);
  sub_65310(&a50);
  if (a12)
  {
    sub_1A8C0(a12);
  }

  v72 = *a23;
  *a23 = 0;
  if (v72)
  {
    (*(*v72 + 8))(v72);
  }

  if (a59 == 1 && a58 < 0)
  {
    operator delete(__p);
  }

  if (a62)
  {
    std::__shared_weak_count::__release_weak(a62);
  }

  if (a64)
  {
    std::__shared_weak_count::__release_weak(a64);
  }

  if (a66)
  {
    std::__shared_weak_count::__release_weak(a66);
  }

  if (a68)
  {
    sub_1A8C0(a68);
  }

  if (a70)
  {
    sub_1A8C0(a70);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_102988(int a1)
{
  result = 1920364387;
  if (a1 <= 1986556787)
  {
    if (a1 <= 1768779618)
    {
      if (a1 == 1735222132)
      {
        return 1919117428;
      }

      if (a1 == 1751212899)
      {
        return 1919708275;
      }

      v4 = 1768057203;
    }

    else
    {
      if (a1 > 1919776354)
      {
        if (a1 != 1919776355)
        {
          v3 = 1986098036;
          goto LABEL_25;
        }

        return 1919117428;
      }

      if (a1 == 1768779619)
      {
        return 1919117428;
      }

      v4 = 1768781411;
    }

LABEL_20:
    if (a1 != v4)
    {
      return 1918989668;
    }

    return 1919117428;
  }

  if (a1 > 1987081838)
  {
    if (a1 > 1987211116)
    {
      if (a1 == 1987211117)
      {
        return result;
      }

      v5 = 29545;
    }

    else
    {
      if (a1 == 1987081839)
      {
        return 1919117428;
      }

      v5 = 25447;
    }

    v3 = v5 | 0x76720000;
    goto LABEL_25;
  }

  if (a1 > 1987077986)
  {
    if (a1 == 1987077987)
    {
      return 1919117428;
    }

    v4 = 1987081833;
    goto LABEL_20;
  }

  if (a1 == 1986556788)
  {
    return result;
  }

  v3 = 1986884455;
LABEL_25:
  if (a1 != v3)
  {
    return 1918989668;
  }

  return result;
}

void *sub_102AF4(void *result, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  *result = off_6DB878;
  result[1] = a2;
  result[2] = a3;
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = result + 3;
  result[4] = result + 3;
  result[5] = 0;
  v5 = a4[2];
  if (v5)
  {
    v7 = *a4;
    v6 = a4[1];
    v8 = *(*a4 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = result[3];
    *(v10 + 8) = v6;
    *v6 = v10;
    result[3] = v7;
    *(v7 + 8) = result + 3;
    result[5] = v5;
    a4[2] = 0;
  }

  result[6] = *a5;
  return result;
}

void sub_102C04(uint64_t a1)
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
        (*(*v5 + 272))(v5, a1 + 24, a1 + 48);
      }

      sub_1A8C0(v4);
    }
  }
}

void *sub_102CA8(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_102DC0((a1 + 2), a2[2], a2[3], 0xAAAAAAAAAAAAAAABLL * ((a2[3] - a2[2]) >> 3));
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  sub_102DC0((a1 + 5), a2[5], a2[6], 0xAAAAAAAAAAAAAAABLL * ((a2[6] - a2[5]) >> 3));
  sub_C2A5C(a1 + 8, a2 + 8);
  sub_C2A5C(a1 + 11, a2 + 11);
  return a1;
}

void sub_102D70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C31F4(*(v2 + 72));
  sub_1084A8(va);
  sub_1084A8(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_102DC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1031B8(result, a4);
  }

  return result;
}

uint64_t sub_102E90()
{
  result = qword_7000B0;
  if (!qword_7000B0)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "TimeSyncClockDeviceManager.cpp";
        v6 = 1024;
        v7 = 72;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sTimeSyncClockDeviceManager is NULL]: sTimeSyncClockDeviceManager is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sTimeSyncClockDeviceManager is NULL!");
  }

  return result;
}

uint64_t *sub_102FB0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = a2[1];
  a1[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v8, a2, "", 225);
  v5 = (*(*v8 + 88))(v8, 0);
  sub_103134(a1 + 2, v5);
  if (v9)
  {
    sub_1A8C0(v9);
  }

  sub_5659C(&v8, a2, "", 226);
  v6 = (*(*v8 + 88))(v8, 1);
  sub_103134(a1 + 5, v6);
  if (v9)
  {
    sub_1A8C0(v9);
  }

  a1[9] = 0;
  a1[8] = (a1 + 9);
  a1[13] = 0;
  a1[12] = 0;
  a1[10] = 0;
  a1[11] = (a1 + 12);
  return a1;
}

void sub_1030E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_1084A8(&a9);
  v11 = *(v9 + 8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void *sub_103134(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_1031B8(result, a2);
  }

  return result;
}

void sub_1031B8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_189A00();
}

void sub_103218(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  sub_5659C(&v25, a1, "", 234);
  v7 = a1[2];
  v8 = a1[3];
  v6 = a1 + 2;
  v9 = v25;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) == (*(*v25 + 88))(v25, 0))
  {
    v11 = a1[5];
    v12 = a1[6];
    v10 = a1 + 5;
    if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 3) == (*(*v9 + 88))(v9, 1))
    {
      if (*(a2 + 184))
      {
        v13 = v6;
      }

      else
      {
        v13 = v10;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v13[1] - *v13) >> 3) > a3)
      {
        v14 = *(a2 + 88);
        if (v14)
        {
          v15 = std::__shared_weak_count::lock(v14);
          if (v15)
          {
            v16 = *(a2 + 80);
            atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v15);
          }
        }

        operator new();
      }

      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "PhysicalDevice.cpp";
        v28 = 1024;
        v29 = 240;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "PhysicalDevice.cpp";
      v28 = 1024;
      v29 = 237;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  else
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "PhysicalDevice.cpp";
      v28 = 1024;
      v29 = 236;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  v21 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v21, "Invariant failure.");
}

void sub_103614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_103670(size_t *a1, uint64_t a2, unsigned int *a3)
{
  v3 = a3;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a3;
  v5 = a3[3];
  v6 = MGGetBoolAnswer();
  v79 = v3;
  if (v6)
  {
    operator new();
  }

  v7 = *v3;
  kind = caulk::build::detail::get_kind(v6);
  if ((kind & 1) != 0 || (caulk::build::detail::get_kind(kind) & 2) != 0)
  {
    v9 = qword_7001B8;
    if (!qword_7001B8)
    {
      sub_46613C();
    }

    v98 = qword_7001C0;
    if (qword_7001C0)
    {
      atomic_fetch_add_explicit((qword_7001C0 + 8), 1uLL, memory_order_relaxed);
    }

    if ((atomic_load_explicit(&qword_6E9A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9A70))
    {
      sub_30E290();
      __cxa_guard_release(&qword_6E9A70);
    }

    memset(&__dst, 0, sizeof(__dst));
    for (i = *(v7 + 24); i != (v7 + 16); i = i[1])
    {
      v11 = i[3];
      if (v11)
      {
        v12 = std::__shared_weak_count::lock(v11);
        if (v12)
        {
          v13 = v12;
          v14 = i[2];
          if (v14)
          {
            *buf = *(v14 + 144);
            sub_AFD28(&__dst, buf);
          }

          sub_1A8C0(v13);
        }
      }

      v15 = i[5];
      if (v15)
      {
        v16 = std::__shared_weak_count::lock(v15);
        if (v16)
        {
          v17 = v16;
          v18 = i[4];
          if (v18)
          {
            *buf = *(v18 + 144);
            sub_AFD28(&__dst, buf);
          }

          sub_1A8C0(v17);
        }
      }
    }

    v19 = sub_5544(17);
    v20 = *v19;
    if (*v19)
    {
      v21 = os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT);
      v22 = __dst.__r_.__value_.__r.__words[0];
      if (v21)
      {
        sub_10898C(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        v23 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "HapticDebugCapturesPolicy.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 55;
        *&buf[18] = 2080;
        *&buf[20] = v23;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Connection relevant ports ? : %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    else
    {
      v22 = __dst.__r_.__value_.__r.__words[0];
    }

    size = __dst.__r_.__value_.__l.__size_;
    if (v22 == __dst.__r_.__value_.__l.__size_)
    {
      goto LABEL_46;
    }

    v25 = v22 + 4;
    do
    {
      v26 = sub_4B8C4(&dword_6E9A30, *(v25 - 1));
      if (v26)
      {
        v27 = v25 == size;
      }

      else
      {
        v27 = 1;
      }

      v25 += 4;
    }

    while (!v27);
    if (!v26 || v22 == size)
    {
LABEL_46:
      v29 = 0;
    }

    else
    {
      v28 = v22 + 4;
      do
      {
        v29 = sub_4B8C4(&dword_6E9A50, *(v28 - 1));
        if (v29)
        {
          break;
        }

        v27 = v28 == size;
        v28 += 4;
      }

      while (!v27);
    }

    if (v22)
    {
      operator delete(v22);
    }

    if (v29)
    {
      v30 = v9[3];
      if (!v30 || (v31 = std::__shared_weak_count::lock(v30)) == 0 || (v32 = v9[2]) == 0)
      {
        v36 = sub_5544(27);
        v37 = *v36;
        if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "HapticDebugManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 83;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating Haptic Debug IO Delegate", buf, 0x12u);
        }

        operator new();
      }

      if (!*(v32 + 32))
      {
        sub_466344(&v84, v9);
        if (v84)
        {
          v38 = *v84;
          operator new();
        }

        v83 = 0;
        sub_1F7248(&v84);
        sub_4662FC(&v83);
      }

      if (*v9 == 1)
      {
        sub_32531C(v32);
        sub_3259EC(v32, 1u);
      }

      *&v86 = v32;
      *(&v86 + 1) = v31;
    }

    else
    {
      v33 = sub_5544(27);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
      {
        sub_265830(&__dst, *(v7 + 24), v7 + 16);
        v35 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "HapticDebugManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 75;
        *&buf[18] = 2080;
        *&buf[20] = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d No relevant connections for haptic debug: %s", buf, 0x1Cu);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

      v31 = 0;
      v86 = 0uLL;
    }

    if (v98)
    {
      sub_1A8C0(v98);
    }

    if (((v29 ^ 1) & 1) == 0)
    {
      sub_A0540(a1, &v86);
    }

    if (v31)
    {
      sub_1A8C0(v31);
    }
  }

  else
  {
    v86 = 0uLL;
  }

  v81 = *v3;
  sub_CE168();
  sub_53E8(buf, "Codec");
  sub_CDEB8(&__dst, buf);
  v39 = __dst.__r_.__value_.__l.__size_;
  if (__dst.__r_.__value_.__l.__size_)
  {
    v40 = std::__shared_weak_count::lock(__dst.__r_.__value_.__l.__size_);
    if (v40)
    {
      v41 = __dst.__r_.__value_.__r.__words[0];
      sub_1A8C0(v40);
    }

    else
    {
      v41 = 0;
    }

    std::__shared_weak_count::__release_weak(v39);
  }

  else
  {
    v41 = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_CE168();
  sub_53E8(buf, "HPMic");
  sub_CDEB8(&__dst, buf);
  v42 = __dst.__r_.__value_.__l.__size_;
  if (__dst.__r_.__value_.__l.__size_)
  {
    v43 = std::__shared_weak_count::lock(__dst.__r_.__value_.__l.__size_);
    if (v43)
    {
      v44 = __dst.__r_.__value_.__r.__words[0];
      sub_1A8C0(v43);
    }

    else
    {
      v44 = 0;
    }

    std::__shared_weak_count::__release_weak(v42);
  }

  else
  {
    v44 = 0;
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v41)
    {
      goto LABEL_95;
    }
  }

  else if (v41)
  {
LABEL_95:
    v45 = *(v81 + 24);
    if (v45 == v81 + 16)
    {
      goto LABEL_142;
    }

    v80 = v41;
    do
    {
      sub_25704(buf, (v45 + 16), "", 1059);
      v46 = *(*buf + 144);
      v47 = v46 == 1886222185 || v46 == 1886216809 && *v81 != 1987276900 || v46 == 1886680169;
      v48 = *(*buf + 200);
      if (v48)
      {
        v49 = *(*buf + 192);
        atomic_fetch_add_explicit(&v48->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v50 = std::__shared_weak_count::lock(v48);
        if (v50)
        {
          v51 = v50;
          atomic_fetch_add_explicit(&v50->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v48);
          sub_1A8C0(v51);
          v52 = std::__shared_weak_count::lock(v51);
          if (v52)
          {
            v53 = v49 == v80;
            sub_1A8C0(v52);
          }

          else
          {
            v53 = 0;
          }

          v48 = v51;
        }

        else
        {
          v53 = 0;
        }

        std::__shared_weak_count::__release_weak(v48);
      }

      else
      {
        v53 = 0;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v47 && v53)
      {
        operator new();
      }

      v45 = *(v45 + 8);
    }

    while (v45 != v81 + 16);
    goto LABEL_137;
  }

  if (!v44)
  {
    *&__p.__r_.__value_.__l.__data_ = 0uLL;
    goto LABEL_143;
  }

  v54 = *(v81 + 24);
  if (v54 != v81 + 16)
  {
    do
    {
      sub_25704(buf, (v54 + 16), "", 650);
      v55 = *(*buf + 144);
      v56 = v55 == 1886222185 || v55 == 1886216809 && *v81 != 1987276900 || v55 == 1886680169;
      v57 = *(*buf + 200);
      if (v57)
      {
        v58 = *(*buf + 192);
        atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v59 = std::__shared_weak_count::lock(v57);
        if (v59)
        {
          v60 = v59;
          atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_weak(v57);
          sub_1A8C0(v60);
          v61 = std::__shared_weak_count::lock(v60);
          if (v61)
          {
            v62 = v58 == v44;
            sub_1A8C0(v61);
          }

          else
          {
            v62 = 0;
          }

          v57 = v60;
        }

        else
        {
          v62 = 0;
        }

        std::__shared_weak_count::__release_weak(v57);
      }

      else
      {
        v62 = 0;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v56 && v62)
      {
        operator new();
      }

      v54 = *(v54 + 8);
    }

    while (v54 != v81 + 16);
LABEL_137:
    v3 = v79;
  }

LABEL_142:
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
LABEL_143:
  if (!*(*v3 + 4) && **v3 == 1986817911)
  {
    operator new();
  }

  v63 = *v3;
  v97 = 0x6C70696E6870696ELL;
  memset(&__p, 0, sizeof(__p));
  sub_4625C(&__p, &v97, &v98, 2uLL);
  *buf = __p;
  strcpy(&buf[24], "cwdv");
  v88 = 0;
  v89 = 3;
  v91[0] = 0;
  v91[1] = 0;
  v90 = v91;
  v92 = 44739242;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  sub_9D49C(&__dst, v63, buf);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v93);
  }

  sub_477A0(v91[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (__dst.__r_.__value_.__r.__words[2])
  {
    operator new();
  }

  sub_65310(&__dst);
  v64 = *v3 + 16;
  for (j = *(*v3 + 24); j != v64; j = *(j + 8))
  {
    if (sub_9C4E4(1886545251, (j + 16)))
    {
      if (_os_feature_enabled_impl())
      {
        v66 = sub_106F10();
        if (v66 >= 0x100u && (v66 & 1) != 0)
        {
          operator new();
        }
      }

      break;
    }
  }

  v67 = *v3;
  v68 = v3[3];
  if (_os_feature_enabled_impl())
  {
    v69 = sub_106F10();
    if (v69 >= 0x100u && (v69 & 1) != 0)
    {
      v70 = v67 + 16;
      v71 = *(v67 + 24);
      if (v71 != v67 + 16)
      {
        do
        {
          sub_25704(buf, (v71 + 16), "", 61);
          v72 = *buf;
          v73 = *(*buf + 144);
          v74 = v68 == 1937007472;
          if (v68 == 1936749157)
          {
            v74 = 1;
          }

          v75 = v68 == 1936745328 || v74;
          v78 = 0;
          if (*(*buf + 96) != *(*buf + 104))
          {
            v76 = (*(**buf + 184))(*buf, v68);
            v77 = (v76 & 0x100000000) != 0 ? v76 : 0;
            if (sub_A0D78(v72, v77))
            {
              __dst.__r_.__value_.__s.__data_[0] = 0;
              __dst.__r_.__value_.__s.__data_[4] = 0;
              if ((*(*v72 + 248))(v72, v77, &__dst) == 1937007986)
              {
                v78 = 1;
              }
            }
          }

          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v73 == 1886216809 && ((v75 | v78) & 1) != 0)
          {
            operator new();
          }

          v71 = *(v71 + 8);
        }

        while (v71 != v70);
      }
    }
  }
}

void sub_104EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  __cxa_guard_abort(&qword_6E9A70);
  v45 = *(v43 - 112);
  if (v45)
  {
    sub_1A8C0(v45);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  a36 = a16;
  sub_F5714(&a36);
  _Unwind_Resume(a1);
}

void sub_105304()
{
  if ((atomic_load_explicit(&qword_6E89D8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6E89D8))
    {
      sub_295BF0();
    }
  }
}

void sub_105380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9)
{
  sub_80534(&__dst, a9);
  *&v12 = *(a6 + 4);
  sub_106FA0(&v11, &v12);
  operator new();
}

void sub_106B14(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, unsigned int a60, OSStatus (__cdecl *a61)(AudioObjectID, const AudioTimeStamp *, const AudioBufferList *, const AudioTimeStamp *, AudioBufferList *, const AudioTimeStamp *, void *))
{
  if (a2)
  {
    sub_1A8C0(v61);
    if (v62)
    {
      sub_1A8C0(v62);
    }

    __cxa_begin_catch(a1);
    if (a60)
    {
      sub_140AD4(a60, a61);
    }

    else if (!a61)
    {
      v65 = sub_5544(14);
      v66 = *v65;
      if (*v65)
      {
        if (os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
        {
          *(v63 - 224) = 136315394;
          v67 = v63 - 224;
          *(v67 + 4) = "AggregateDevice_Simple2.cpp";
          *(v63 - 212) = 1024;
          *(v67 + 14) = 289;
          _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Somehow, we have a valid IO proc ID, but not a valid aggregate device ID.", (v63 - 224), 0x12u);
        }
      }
    }

    sub_140C30(a60);
    __cxa_rethrow();
  }

  JUMPOUT(0x106F08);
}

void sub_106CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  __cxa_end_catch();
  sub_1C8050(&a39);
  operator delete();
}

void sub_106DC4()
{
  if (*(v0 - 225) < 0)
  {
    operator delete(*(v0 - 248));
  }

  JUMPOUT(0x106EB0);
}

void sub_106DE8()
{
  if (!*(v0 - 216))
  {
    JUMPOUT(0x106ED0);
  }

  JUMPOUT(0x106EB8);
}

void sub_106E00()
{
  sub_3D2DD0(v1 - 224);
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x106E30);
}

void sub_106E2C()
{
  if (STACK[0x240])
  {
    sub_1A8C0(STACK[0x240]);
  }

  JUMPOUT(0x106ED0);
}

void sub_106ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  sub_3D2E8C(&a39);
  (*(*v39 + 8))(v39);
  sub_25AF08(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_106F10()
{
  v0 = MGCopyAnswerWithError();
  v1 = v0;
  if (v0)
  {
    v2 = sub_11DA8(v0);
    v3 = v2;
    v4 = HIBYTE(v2);
    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | (v4 << 8);
}

void sub_106FA0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_102E90();
  sub_53E8(v7, "GetTimeSyncClockUIDForVAD");
  v5 = *a2;
  v10[0] = v4;
  v10[1] = v5;
  if (SHIBYTE(v8) < 0)
  {
    sub_54A0(&__p, v7[0], v7[1]);
  }

  else
  {
    __p = *v7;
    v12 = v8;
  }

  v6 = *(v4 + 168);
  v13 = v10;
  cf = 0;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 0x40000000;
  v15 = sub_107118;
  v16 = &unk_6D89A8;
  p_cf = &cf;
  v18 = &v13;
  dispatch_sync(v6, &block);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  if (cf)
  {
    sub_F76D4(&block, cf);
    *a1 = block;
    *(a1 + 16) = v15;
    *(a1 + 24) = 1;
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void sub_1070E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_107118(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *v2;
  v4 = **v2;
  v5 = (*v2 + 1);
  v6 = *v5;
  v7 = *(*v2 + 3);
  if (v4 + 10 == sub_9C238((v4 + 9), *v5, v7))
  {
    v33 = 0;
  }

  else
  {
    v8 = v4[3];
    *buf = v5;
    v9 = sub_463E28((v4 + 9), v6, v7);
    v10 = (*(*v8 + 48))(v8, v9[5]);
    v33 = v10;
    if (v10)
    {
      v11 = CFGetTypeID(v10);
      if (v11 != CFStringGetTypeID())
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    sub_63250(&v41);
    sub_22564(&v41, "Timesync for VAD - ", 19);
    sub_68108(buf, v5);
    if (SBYTE3(v40) >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    if (SBYTE3(v40) >= 0)
    {
      v13 = BYTE3(v40);
    }

    else
    {
      v13 = *&buf[8];
    }

    sub_22564(&v41, v12, v13);
    sub_22564(&v41, " - is ", 6);
    sub_F76D4(&v34, v33);
    v14 = std::string::insert(&v34, 0, "(", 1uLL);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v36 = v14->__r_.__value_.__r.__words[2];
    *__p = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    if (v36 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    if (v36 >= 0)
    {
      v17 = HIBYTE(v36);
    }

    else
    {
      v17 = __p[1];
    }

    sub_22564(&v41, v16, v17);
    sub_22564(&v41, ", ", 2);
    v37 = v5;
    v18 = sub_463E28((v4 + 9), *(v3 + 2), *(v3 + 3))[5];
    v19 = std::ostream::operator<<();
    v20 = sub_22564(v19, "). Caller context is ", 22);
    v21 = *(v3 + 39);
    if (v21 >= 0)
    {
      v22 = (v3 + 2);
    }

    else
    {
      v22 = v3[2];
    }

    if (v21 >= 0)
    {
      v23 = *(v3 + 39);
    }

    else
    {
      v23 = v3[3];
    }

    sub_22564(v20, v22, v23);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SBYTE3(v40) < 0)
    {
      operator delete(*buf);
    }

    v24 = sub_5544(6);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_1DDDEC(__p, &v41);
      v26 = v36 >= 0 ? __p : __p[0];
      *buf = 136315650;
      *&buf[4] = "TimeSyncClockDeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 344;
      v39 = 2080;
      v40 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1DDDEC(buf, &v41);
    v27 = v4[18];
    v28 = v4[19];
    v29 = v4 + 18;
    if (0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3) <= 7)
    {
      sub_28CA74(v29, buf);
    }

    if (SBYTE3(v40) < 0)
    {
      operator delete(*buf);
    }

    if (v44 < 0)
    {
      operator delete(v43[7].__locale_);
    }

    std::locale::~locale(v43);
    std::ostream::~ostream();
    std::ios::~ios();
  }

  v30 = *(a1 + 32);
  v31 = *v30;
  *v30 = v33;
  if (v31)
  {
    CFRelease(v31);
  }
}

void sub_107AA8(void *a1)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_849B8();
}

void sub_107B8C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    while (1)
    {
      sub_5659C(&v9, (*(v4 + 24) + 16), "", 865);
      v5 = (*(*v9 + 352))();
      if (v10)
      {
        sub_1A8C0(v10);
      }

      if (v5)
      {
        break;
      }

      v4 = *(v4 + 8);
      if (v4 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  if (v4 == a2)
  {
LABEL_9:
    v6 = *(*(a2 + 8) + 24);
  }

  else
  {
    v6 = *(v4 + 24);
  }

  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  *a1 = v8;
  a1[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_107C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_107CA4(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 100) == 1)
  {
    v9 = *(v5 + 96);
    v10 = v9 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 861;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_107CA4(a1, 1768776806);
      v10 = 0;
    }
  }

  return v9 & 0xFFFFFFFFFFLL | v10;
}

uint64_t sub_107E40(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 8;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 8 && *(v5 + 32) <= a2 && *(v5 + 108) == 1)
  {
    v9 = *(v5 + 104);
    v10 = v9 & 0xFFFFFF0000000000;
  }

  else
  {
LABEL_11:
    if (a2 == 1768776806)
    {
      v10 = 0;
      v9 = 0;
    }

    else
    {
      v11 = sub_5544(21);
      if (*(v11 + 8))
      {
        v12 = *v11;
        if (*v11)
        {
          if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(__p, a2);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            v18 = "RoutingTypes.cpp";
            v19 = 1024;
            v20 = 885;
            v21 = 2080;
            v22 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Did not find entry for current mode: %s, looking in default mode instead.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      v9 = sub_107E40(a1, 1768776806);
      v10 = 0;
    }
  }

  return v9 & 0xFFFFFFFFFFLL | v10;
}

uint64_t sub_107FDC(_DWORD *a1, char a2)
{
  if ((sub_DD858() & 0xFFFFFFFE) == 0x6A)
  {
    if (a2)
    {
      return 1;
    }

    if (*a1 == 1987011684)
    {
      return 0;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_6E9B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B48))
    {
      byte_6E9B40 = sub_310728();
      __cxa_guard_release(&qword_6E9B48);
    }

    if (byte_6E9B40 != 1)
    {
      return 0;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  strcpy(v20, "cwdv");
  v20[8] = 0;
  v21 = 3;
  v23[0] = 0;
  v23[1] = 0;
  v22 = v23;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v24 = 44739210;
  sub_9D49C(v16, a1, &v17);
  v5 = sub_5544(21);
  v6 = *v5;
  if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    sub_8E920(&__p, v16, 1);
    v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v29 = "RouteUtilities.cpp";
    v30 = 1024;
    v31 = 1655;
    v32 = 2080;
    v33 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Reference stream port ? in %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  for (i = v16[1]; i != v16; i = i[1])
  {
    v9 = i[3];
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = i[2];
        if (v12)
        {
          v13 = sub_108CA8(*(v12 + 144));
          sub_1A8C0(v11);
          if (v13)
          {
            v4 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          sub_1A8C0(v10);
        }
      }
    }
  }

  v4 = 0;
LABEL_23:
  sub_65310(v16);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  sub_477A0(v23[0]);
  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }

  return v4;
}

unint64_t sub_1082B4(uint64_t a1)
{
  v1 = sub_59410(a1);
  if (v1 || (v2 & 1) == 0)
  {
    v4 = v1;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  return HIDWORD(v1);
}

uint64_t sub_10834C(uint64_t a1)
{
  if (*a1)
  {
    v1 = 1869968496;
  }

  else
  {
    v1 = 1768845428;
  }

  inAddress.mSelector = 1937077093;
  inAddress.mScope = v1;
  inAddress.mElement = 0;
  v2 = AudioObjectSetPropertyData(*(a1 + 4), &inAddress, 0, 0, *(a1 + 8), *(a1 + 16));
  if (v2)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v2);
        if (v8 >= 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        *buf = 136315906;
        v11 = "StandardUtilities.cpp";
        v12 = 1024;
        v13 = 931;
        v14 = 2080;
        v15 = v5;
        v16 = 1024;
        v17 = v2;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectSetPropertyData(kAudioDevicePropertyIOProcStreamUsage) returned '%s' (%d).", buf, 0x22u);
        if (v8 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v2;
}

void sub_1084A8(void ***a1)
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
        v4 -= 3;
        sub_65310(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10852C(uint64_t a1, int a2, AudioObjectID inObjectID, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 4) = inObjectID;
  if (a2)
  {
    v6 = 1869968496;
  }

  else
  {
    v6 = 1768845428;
  }

  v28 = 1937077093;
  v29 = v6;
  *outDataSize = 0;
  PropertyDataSize = AudioObjectGetPropertyDataSize(inObjectID, &v28, 0, 0, &outDataSize[1]);
  if (PropertyDataSize)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "StandardUtilities.cpp";
      v33 = 1024;
      v34 = 892;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Attempt to get stream usage data size failed.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = PropertyDataSize;
  }

  v8 = outDataSize[1];
  if (!outDataSize[1])
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "StandardUtilities.cpp";
      v33 = 1024;
      v34 = 893;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a stream usage size of 0.", buf, 0x12u);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v22, "The HAL returned a stream usage size of 0.");
  }

  *(a1 + 8) = outDataSize[1];
  v9 = *(a1 + 4);
  outDataSize[1] = v8;
  v10 = malloc_type_malloc(16 * v8, 0x1080040FC6463CFuLL);
  v11 = v10;
  if (!v10)
  {
    v23 = __cxa_allocate_exception(8uLL);
    v24 = std::bad_alloc::bad_alloc(v23);
  }

  *v10 = a4;
  v28 = 1937077093;
  v29 = v6;
  outDataSize[0] = 0;
  PropertyData = AudioObjectGetPropertyData(v9, &v28, 0, 0, &outDataSize[1], v10);
  if (PropertyData)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "StandardUtilities.cpp";
      v33 = 1024;
      v34 = 906;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Attempt to get stream usage failed.", buf, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    *v19 = &off_6DDDD0;
    v19[2] = PropertyData;
  }

  if (outDataSize[1] != v8)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v32 = "StandardUtilities.cpp";
      v33 = 1024;
      v34 = 907;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): The HAL returned a different stream usage size than that provided.", buf, 0x12u);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v27, "The HAL returned a different stream usage size than that provided.");
  }

  *(a1 + 16) = v11;
  return a1;
}

void sub_108948(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  free(v1);
  _Unwind_Resume(a1);
}

std::string *sub_10898C(std::string *a1, unsigned int *a2, unsigned int *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_22170(&v13, *a2);
      v7 = std::string::insert(&v13, 0, "'", 1uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v14.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v14.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v14, "'", 1uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v16 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (v16 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v16 >= 0)
      {
        v12 = HIBYTE(v16);
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a1, v11, v12);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if (++a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_108AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_108B50()
{
  result = dword_6F6840;
  if (!dword_6F6840)
  {
    inAddress.mElement = 0;
    ioDataSize = 4;
    *&inAddress.mSelector = 0x676C6F6262696470;
    inQualifierData = @"com.apple.audio.V5";
    PropertyData = AudioObjectGetPropertyData(1u, &inAddress, 8u, &inQualifierData, &ioDataSize, &dword_6F6840);
    if (PropertyData)
    {
      v2 = PropertyData;
      v3 = *sub_5544(14);
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v10 = "AggregateDeviceUtilities.cpp";
          v11 = 1024;
          v12 = 87;
          _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: HAL error when attempting to retrieve plugin ID.", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v2;
    }

    return dword_6F6840;
  }

  return result;
}

BOOL sub_108CA8(int a1)
{
  sub_108D14();
  v2 = qword_6EAD48;
  sub_108D14();
  if (v2 == qword_6EAD50)
  {
    return 0;
  }

  v3 = v2 + 4;
  do
  {
    v4 = *(v3 - 4);
    result = v4 == a1;
    v6 = v4 == a1 || v3 == qword_6EAD50;
    v3 += 4;
  }

  while (!v6);
  return result;
}

void sub_108D14()
{
  if ((atomic_load_explicit(&qword_6EAD60, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6EAD60))
    {
      qmemcpy(v0, "ptspptrpt2aptfhptelptwhptbtptpcptsaptlaptmaptaaptdhptaup", sizeof(v0));
      qword_6EAD50 = 0;
      unk_6EAD58 = 0;
      qword_6EAD48 = 0;
      sub_4625C(&qword_6EAD48, v0, &v1, 0xEuLL);
      __cxa_guard_release(&qword_6EAD60);
    }
  }
}

std::string *sub_108DF0(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ Processing Info: ", 0x13uLL);
  memset(&v34, 0, sizeof(v34));
  std::string::append(&v34, "[ ", 2uLL);
  sub_879F8(&v37, a2 + 8);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v37;
  }

  else
  {
    v4 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v4, size);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::append(&v34, "; ", 2uLL);
  sub_1094D0(&v37, (a2 + 24));
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v37;
  }

  else
  {
    v6 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v6, v7);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 56) == 1)
  {
    sub_1094D0(&v37, (a2 + 40));
  }

  else
  {
    sub_53E8(&v37, "");
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v37;
  }

  else
  {
    v8 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v8, v9);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::append(&v34, "; Default Output Port: ", 0x17uLL);
  sub_FC33C(&v37, a2 + 64);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v37;
  }

  else
  {
    v10 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v11 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v10, v11);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::append(&v34, "; Diagnostics Context: ", 0x17uLL);
  sub_53E8(&v35, "{ ");
  sub_68108(&v37, (a2 + 124));
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v37;
  }

  else
  {
    v12 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v35, v12, v13);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::append(&v35, ", ", 2uLL);
  v14 = sub_CE3DC((a2 + 120));
  if (v14)
  {
    std::string::append(&v35, "call-like: 1, ", 0xEuLL);
    std::to_string(&v36, *(a2 + 192));
    v15 = std::string::insert(&v36, 0, "SharePlay active: ", 0x12uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v37;
    }

    else
    {
      v17 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = v37.__r_.__value_.__l.__size_;
    }

    std::string::append(&v35, v17, v18);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36.__r_.__value_.__l.__data_);
    }
  }

  v19 = *(a2 + 140);
  if (v19 == 1986556788 || v19 == 1987211117 || v19 == 1987208039)
  {
    if (v14)
    {
      std::string::append(&v35, ", ", 2uLL);
    }

    std::string::append(&v35, "speech detection: 1", 0x13uLL);
    if (*(a2 + 124) != 1986224492)
    {
      goto LABEL_63;
    }

LABEL_61:
    std::string::append(&v35, ", ", 2uLL);
LABEL_62:
    std::string::append(&v35, "continuity: 1", 0xDuLL);
LABEL_63:
    v14 = 1;
    goto LABEL_64;
  }

  if (*(a2 + 124) == 1986224492)
  {
    if (!v14)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_64:
  if (*(a2 + 120) == 1)
  {
    if (v14)
    {
      std::string::append(&v35, ", ", 2uLL);
    }

    std::string::append(&v35, "ANC: 1", 6uLL);
    v20 = *(a2 + 152);
    if ((v20 & 0x100000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_76;
  }

  v20 = *(a2 + 152);
  if ((v20 & 0x100000000) != 0)
  {
    if ((v14 & 1) == 0)
    {
LABEL_77:
      sub_22170(&v36, v20);
      v21 = std::string::insert(&v36, 0, "isolatedUseCaseID: ", 0x13uLL);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v37;
      }

      else
      {
        v23 = v37.__r_.__value_.__r.__words[0];
      }

      if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v37.__r_.__value_.__l.__size_;
      }

      std::string::append(&v35, v23, v24);
      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      goto LABEL_87;
    }

LABEL_76:
    std::string::append(&v35, ", ", 2uLL);
    goto LABEL_77;
  }

  if ((v14 & 1) == 0)
  {
    std::string::append(&v35, "empty", 5uLL);
  }

LABEL_87:
  std::string::append(&v35, " }", 2uLL);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v35;
  }

  else
  {
    v25 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v35.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v25, v26);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 312) == 1)
  {
    std::operator+<char>();
  }

  else
  {
    sub_53E8(&v37, "");
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &v37;
  }

  else
  {
    v27 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(&v34, v27, v28);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  std::string::append(&v34, " ]", 2uLL);
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v34;
  }

  else
  {
    v29 = v34.__r_.__value_.__r.__words[0];
  }

  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v34.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v29, v30);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Route: ", 9uLL);
  sub_109694(&v37, *a2);
  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = &v37;
  }

  else
  {
    v31 = v37.__r_.__value_.__r.__words[0];
  }

  if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = HIBYTE(v37.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v32 = v37.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v31, v32);
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_1093CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1094D0(std::string *a1, void *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "LateNightMode: ", 0xFuLL);
  if (*a2)
  {
    v4 = 543977069;
  }

  else
  {
    v4 = 560754285;
  }

  sub_22170(&__p, v4);
  if ((v16 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v6 = v16;
  }

  else
  {
    v6 = v15;
  }

  std::string::append(a1, p_p, v6);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if ((*a2 & 2) != 0)
  {
    v7 = 544631924;
  }

  else
  {
    v7 = 561409140;
  }

  sub_22170(&__p, v7);
  if ((v16 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v9 = v16;
  }

  else
  {
    v9 = v15;
  }

  std::string::append(a1, v8, v9);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if ((*a2 & 4) != 0)
  {
    v10 = 543515751;
  }

  else
  {
    v10 = 560292967;
  }

  sub_22170(&__p, v10);
  if ((v16 & 0x80u) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p;
  }

  if ((v16 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = v15;
  }

  std::string::append(a1, v11, v12);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_10964C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_109694(std::string *a1, unsigned int *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "Device Type: ", 0xDuLL);
  sub_22170(&__p, *a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; ", 2uLL);
  std::string::append(a1, "Context ID: ", 0xCuLL);
  std::to_string(&__p, a2[1]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; ", 2uLL);
  sub_14B684(&__p, (a2 + 4));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v8, v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_109804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10984C(std::string *a1, const __CFDictionary *a2, int a3)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v5 = sub_11CA4(a2, "activation device uid");
  if (!v5)
  {
    buf[0] = 0;
    buf[24] = 0;
    goto LABEL_7;
  }

  sub_1DAF78(buf, v5);
  if ((buf[24] & 1) == 0)
  {
LABEL_7:
    __dst[0] = 0;
    __dst[1] = 0;
    v85 = 0;
    goto LABEL_8;
  }

  v6 = buf[23];
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_54A0(__dst, *buf, *&buf[8]);
    if ((buf[24] & 1) != 0 && v6 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *__dst = *buf;
    v85 = *&buf[16];
  }

LABEL_8:
  v7 = HIBYTE(v85);
  v8 = HIBYTE(v85);
  if (v85 < 0)
  {
    v7 = __dst[1];
  }

  if (!v7)
  {
    goto LABEL_133;
  }

  if (a3 > 1668047475)
  {
    if (a3 == 1751414371)
    {
      goto LABEL_27;
    }

    if (a3 != 1668047476)
    {
LABEL_23:
      v10 = sub_DF1EC(a3) ^ 1;
      if (a3 == 1684108899)
      {
        LOBYTE(v10) = 0;
      }

      if ((v10 & 1) == 0)
      {
        v8 = HIBYTE(v85);
        goto LABEL_27;
      }

      v13 = sub_5544(2);
      v14 = sub_5544(35);
      v15 = 0;
      *buf = 0x100000002;
      v16 = *(v13 + 8);
      while (1)
      {
        v17 = *&buf[v15];
        if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
        {
          break;
        }

        v15 += 4;
        if (v15 == 8)
        {
          goto LABEL_124;
        }
      }

      if ((v16 & v17) == 0)
      {
        v13 = v14;
      }

LABEL_124:
      v51 = *v13;
      if (v51 && os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(v90, a3);
        if (v91 >= 0)
        {
          v52 = v90;
        }

        else
        {
          v52 = v90[0];
        }

        v53 = __dst;
        if (v85 < 0)
        {
          v53 = __dst[0];
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 503;
        *&buf[18] = 2080;
        *&buf[20] = v52;
        *&buf[28] = 2080;
        v94 = v53;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d Trigger device ID specified with an unhandled trigger value '%s'. Device ID '%s' will be ignored.", buf, 0x26u);
        if (SHIBYTE(v91) < 0)
        {
          operator delete(v90[0]);
        }
      }

LABEL_133:
      a1->__r_.__value_.__r.__words[0] = 0;
      a1->__r_.__value_.__l.__size_ = 0;
      a1->__r_.__value_.__r.__words[2] = 0;
      goto LABEL_134;
    }
  }

  else if (a3 != 1651794544)
  {
    if (a3 != 1651795060)
    {
      goto LABEL_23;
    }

LABEL_27:
    if ((v8 & 0x80) == 0)
    {
      *&a1->__r_.__value_.__l.__data_ = *__dst;
      a1->__r_.__value_.__r.__words[2] = v85;
      return;
    }

    sub_54A0(a1, __dst[0], __dst[1]);
    goto LABEL_134;
  }

  if (v85 >= 0)
  {
    v9 = __dst;
  }

  else
  {
    v9 = __dst[0];
  }

  if (sscanf(v9, "%02X:%02X:%02X:%02X:%02X:%02X", buf, &buf[4], &buf[8], &buf[12], &buf[16], &buf[20]) == 6)
  {
    if (SHIBYTE(v85) < 0)
    {
      sub_54A0(a1, __dst[0], __dst[1]);
    }

    else
    {
      *&a1->__r_.__value_.__l.__data_ = *__dst;
      a1->__r_.__value_.__r.__words[2] = v85;
    }

    v18 = v90;
    sub_53E8(v90, "-tsco");
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v20 = a1;
    }

    else
    {
      v20 = a1->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v21 = HIBYTE(v91);
    if (v91 >= 0)
    {
      v22 = HIBYTE(v91);
    }

    else
    {
      v18 = v90[0];
      v22 = v90[1];
    }

    if (v22)
    {
      if (size >= v22)
      {
        v35 = v20 + size;
        v36 = *v18;
        v37 = v20;
        do
        {
          v38 = size - v22;
          if (v38 == -1)
          {
            break;
          }

          v39 = memchr(v37, v36, v38 + 1);
          if (!v39)
          {
            break;
          }

          v40 = v39;
          if (!memcmp(v39, v18, v22))
          {
            if (v40 != v35 && v40 - v20 != -1)
            {
              goto LABEL_120;
            }

            break;
          }

          v37 = (v40 + 1);
          size = v35 - (v40 + 1);
        }

        while (size >= v22);
      }

      v23 = sub_5544(2);
      v24 = sub_5544(35);
      v25 = 0;
      *buf = 0x100000002;
      v26 = *(v23 + 8);
      while (1)
      {
        v27 = *&buf[v25];
        if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
        {
          break;
        }

        v25 += 4;
        if (v25 == 8)
        {
          goto LABEL_107;
        }
      }

      if ((v26 & v27) == 0)
      {
        v23 = v24;
      }

      v26 = *(v23 + 8);
LABEL_107:
      if (v26)
      {
        v47 = *v23;
        if (v47)
        {
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
          {
            v48 = v90;
            if (v91 < 0)
            {
              v48 = v90[0];
            }

            *buf = 136315650;
            *&buf[4] = "VirtualAudio_Utilities.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 48;
            *&buf[18] = 2080;
            *&buf[20] = v48;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding %s to device UID", buf, 0x1Cu);
          }
        }
      }

      if (v91 >= 0)
      {
        v49 = v90;
      }

      else
      {
        v49 = v90[0];
      }

      if (v91 >= 0)
      {
        v50 = HIBYTE(v91);
      }

      else
      {
        v50 = v90[1];
      }

      std::string::append(a1, v49, v50);
      v21 = HIBYTE(v91);
    }

LABEL_120:
    if (v21 < 0)
    {
      operator delete(v90[0]);
    }

    goto LABEL_134;
  }

  v11 = sub_809C0();
  v89 = 1885892674;
  v90[1] = 0;
  v91 = 0;
  v90[0] = 0;
  sub_4625C(v90, &v89, v90, 1uLL);
  *buf = *v90;
  *&buf[16] = v91;
  strcpy(&buf[24], "cwdv");
  BYTE2(v94) = 0;
  v95 = 3;
  v97[0] = 0;
  v97[1] = 0;
  v96 = v97;
  v98 = 44739242;
  v100 = 0;
  v101 = 0;
  __p = 0;
  v90[0] = off_6C29F0;
  v92 = v90;
  sub_2574C4(v88, v11, buf, v90);
  sub_85148(v90);
  if (SHIBYTE(v101) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v97[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v12 = v88[1];
  if (SHIBYTE(v85) < 0)
  {
    sub_54A0(v86, __dst[0], __dst[1]);
  }

  else
  {
    *v86 = *__dst;
    v87 = v85;
  }

  if (v12 != v88)
  {
    while (1)
    {
      sub_88A00(v90, v12 + 2, "", 891);
      v28 = v90[0];
      if (v90[0] && (*(*v90[0] + 392))(v90[0]))
      {
        (*(*v28 + 408))(buf, v28);
        v29 = buf[23];
        if (buf[23] >= 0)
        {
          v30 = buf[23];
        }

        else
        {
          v30 = *&buf[8];
        }

        v31 = HIBYTE(v87);
        if (v87 < 0)
        {
          v31 = v86[1];
        }

        if (v30 == v31)
        {
          if (buf[23] >= 0)
          {
            v32 = buf;
          }

          else
          {
            v32 = *buf;
          }

          if (v87 >= 0)
          {
            v33 = v86;
          }

          else
          {
            v33 = v86[0];
          }

          v34 = memcmp(v32, v33, v30) == 0;
          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_77;
          }

LABEL_83:
          operator delete(*buf);
          goto LABEL_77;
        }

        v34 = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          goto LABEL_83;
        }
      }

      else
      {
        v34 = 0;
      }

LABEL_77:
      if (v90[1])
      {
        sub_1A8C0(v90[1]);
      }

      if (v34)
      {
        break;
      }

      v12 = v12[1];
      if (v12 == v88)
      {
        v12 = v88;
        break;
      }
    }
  }

  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86[0]);
  }

  if (v12 == v88 || (v41 = v12[3]) == 0)
  {
    sub_65310(v88);
  }

  else
  {
    v42 = v12[2];
    atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_65310(v88);
    v43 = std::__shared_weak_count::lock(v41);
    std::__shared_weak_count::__release_weak(v41);
    if (v43)
    {
      v44 = v42 == 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v44;
    if (!v44)
    {
      if (*(v42 + 303) < 0)
      {
        sub_54A0(a1, *(v42 + 280), *(v42 + 288));
      }

      else
      {
        v46 = *(v42 + 280);
        a1->__r_.__value_.__r.__words[2] = *(v42 + 296);
        *&a1->__r_.__value_.__l.__data_ = v46;
      }

      sub_53E8(buf, "-tacl");
      sub_53E8(v90, "-tsco");
      v54 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v55 = v54 < 0;
      if (v54 >= 0)
      {
        v56 = a1;
      }

      else
      {
        v56 = a1->__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        v57 = a1->__r_.__value_.__l.__size_;
      }

      else
      {
        v57 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      }

      v58 = buf[23];
      v59 = *buf;
      if (buf[23] < 0)
      {
        v58 = *&buf[8];
      }

      else
      {
        v59 = buf;
      }

      v60 = &v56[v57];
      if (v57 && v58)
      {
        v63 = *v59;
        v61 = v59 + 1;
        v62 = v63;
        v64 = v56;
        v65 = &v56[v57];
        do
        {
          v66 = v64 + 1;
          while (*v64 != v62)
          {
            ++v64;
            ++v66;
            if (v64 == v60)
            {
              goto LABEL_166;
            }
          }

          v67 = v58 - 1;
          v68 = v61;
          while (v67)
          {
            if (v66 == v60)
            {
              goto LABEL_166;
            }

            v70 = *v66++;
            v69 = v70;
            v71 = *v68++;
            --v67;
            if (v69 != v71)
            {
              goto LABEL_163;
            }
          }

          v65 = v64;
LABEL_163:
          ++v64;
        }

        while (v64 != v60);
      }

      else
      {
        v65 = &v56[v57];
      }

LABEL_166:
      v72 = v65 != v60 || v58 == 0;
      if (v72 && v65 - v56 != -1)
      {
        if (v91 >= 0)
        {
          v73 = HIBYTE(v91);
        }

        else
        {
          v73 = v90[1];
        }

        if (v91 >= 0)
        {
          v74 = v90;
        }

        else
        {
          v74 = v90[0];
        }

        std::string::replace(a1, v65 - v56, v73, v74, v73);
      }

      if (SHIBYTE(v91) < 0)
      {
        operator delete(v90[0]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v75 = sub_5544(2);
      v76 = sub_5544(35);
      v77 = 0;
      *buf = 0x100000002;
      v78 = *(v75 + 8);
      while (1)
      {
        v79 = *&buf[v77];
        if (((v78 & v79) != 0) != ((*(v76 + 8) & v79) != 0))
        {
          break;
        }

        v77 += 4;
        if (v77 == 8)
        {
          goto LABEL_189;
        }
      }

      if ((v78 & v79) == 0)
      {
        v75 = v76;
      }

LABEL_189:
      v80 = *v75;
      if (v80 && os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = __dst;
        if (v85 < 0)
        {
          v81 = __dst[0];
        }

        if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_data = &a1->__r_.__value_.__l.__data_;
        }

        else
        {
          p_data = a1->__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 74;
        *&buf[18] = 2080;
        *&buf[20] = v81;
        *&buf[28] = 2080;
        v94 = p_data;
        _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Translated %s to %s", buf, 0x26u);
      }
    }

    if (v43)
    {
      sub_1A8C0(v43);
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_134;
    }
  }

  sub_53E8(a1, "");
LABEL_134:
  if (SHIBYTE(v85) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10A2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_1A8C0(v45);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10A424(unint64_t *a1, CFDictionaryRef *a2)
{
  if (!*a2)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v36 = 1024;
      v37 = 553;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = 1852796517;
  if (!CFDictionaryGetCount(*a2))
  {
    return v4;
  }

  if (!*a2)
  {
    v31 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v31);
  }

  v5 = sub_4A668(*a2, "activation trigger");
  if (!v5 || (v6 = sub_113A0(v5), (v6 & 0x100000000) == 0))
  {
    v7 = sub_5544(2);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v36 = 1024;
      v37 = 576;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route activation description does not contain a trigger value", buf, 0x12u);
    }

    return v4;
  }

  v9 = v6;
  if (v6 == 1852796517)
  {
    return v4;
  }

  v10 = *a1;
  if (*a1 > 1668313665)
  {
    if (v10 == 1668313666)
    {
      goto LABEL_16;
    }

    v11 = 29299;
  }

  else
  {
    if (v10 == 1668301427)
    {
      goto LABEL_16;
    }

    v11 = 24946;
  }

  if (v10 != (v11 | 0x63700000))
  {
    v12 = HIDWORD(v10);
    goto LABEL_30;
  }

LABEL_16:
  v12 = HIDWORD(v10);
  if (HIDWORD(v10) == 1987208039 || HIDWORD(v10) == 1986098036) && (sub_C2448(v6))
  {
    return v9;
  }

  if (v10 > 1668313665)
  {
    if (v10 != 1668313715)
    {
      v13 = 29250;
LABEL_24:
      if (v10 != (v13 | 0x63700000))
      {
        goto LABEL_30;
      }
    }
  }

  else if (v10 != 1668301427)
  {
    v13 = 24946;
    goto LABEL_24;
  }

  if (HIDWORD(v10) == 1986884455 && (v9 == 1768764005 || v9 == 1768780647))
  {
    return v9;
  }

LABEL_30:
  v14 = v10 == 1668576377 || v10 == 1668703084;
  if (v14 && v12 == 1768776806)
  {
    goto LABEL_48;
  }

  if (v10 > 1668313665)
  {
    if (v10 != 1668313715)
    {
      v15 = 29250;
LABEL_41:
      if (v10 != (v15 | 0x63700000))
      {
        goto LABEL_51;
      }
    }
  }

  else if (v10 != 1668301427)
  {
    v15 = 24946;
    goto LABEL_41;
  }

  if (v12 > 1768781410)
  {
    if (v12 == 1919776355)
    {
      goto LABEL_48;
    }

    v16 = 30307;
  }

  else
  {
    if (v12 == 1735222132)
    {
      goto LABEL_48;
    }

    v16 = 28515;
  }

  if (v12 == (v16 | 0x696D0000))
  {
LABEL_48:
    if (sub_10A958(v9))
    {
      return v9;
    }
  }

LABEL_51:
  v18 = sub_5544(2);
  v19 = sub_5544(35);
  v20 = 0;
  *buf = 0x100000002;
  v21 = *(v18 + 8);
  while (1)
  {
    v22 = *&buf[v20];
    if (((v21 & v22) != 0) != ((*(v19 + 8) & v22) != 0))
    {
      break;
    }

    v20 += 4;
    if (v20 == 8)
    {
      goto LABEL_57;
    }
  }

  if ((v21 & v22) == 0)
  {
    v18 = v19;
  }

LABEL_57:
  v23 = *v18;
  if (v23 && os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(v33, v9);
    v24 = v34;
    v25 = v33[0];
    sub_879F8(&__p, a1);
    v26 = v33;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "VirtualAudio_Utilities.cpp";
    v36 = 1024;
    v37 = 564;
    v38 = 2080;
    v39 = v26;
    v40 = 2080;
    v41 = p_p;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resetting the trigger (%s) to None because it is not valid for the specified category and mode: %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

  return v4;
}

void sub_10A924(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10A958(int a1)
{
  result = 1;
  if (a1 > 1668049006)
  {
    if (a1 > 1668051816)
    {
      if (a1 == 1668051817)
      {
        return result;
      }

      v3 = 29552;
    }

    else
    {
      if (a1 == 1668049007)
      {
        return result;
      }

      v3 = 28011;
    }

    goto LABEL_10;
  }

  if (a1 != 1668047476 && a1 != 1668047728)
  {
    v3 = 25702;
LABEL_10:
    if (a1 != (v3 | 0x636C0000))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_10A9EC(uint64_t a1, void *a2)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5 && *a2 == a1)
    {
      v6 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = a2[3];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v6 = a2[2] == a1;
      sub_1A8C0(v8);
      if (!v5)
      {
        return v6;
      }

      goto LABEL_11;
    }
  }

  v6 = 0;
  if (v5)
  {
LABEL_11:
    sub_1A8C0(v5);
  }

  return v6;
}

uint64_t sub_10AA80()
{
  if ((atomic_load_explicit(&qword_6E9B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9B38))
  {
    v1 = sub_106F10();
    v2 = 0;
    if (v1 >= 0x100u && (v1 & 1) != 0)
    {
      v2 = sub_DD858() == 73 || sub_DD858() == 74 || sub_DD858() == 75;
    }

    byte_6E9B30 = v2;
    __cxa_guard_release(&qword_6E9B38);
  }

  return byte_6E9B30;
}

uint64_t sub_10AB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if ((sub_8654C(a2, (v2 + 4)) & 0x80) == 0)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if ((sub_8654C((v4 + 4), a2) & 0x80) == 0)
    {
      return 0;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_10ACA8(_Unwind_Exception *a1)
{
  sub_477A0(*(v1 + 88));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_257C34(0, v1);
  _Unwind_Resume(a1);
}

os_signpost_id_t *sub_10ACE8(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v7 = 136315650;
        v8 = "SignpostUtilities.h";
        v9 = 1024;
        v10 = 69;
        v11 = 2080;
        v12 = "kBuildAlternateRoutesAndActivateForLastInWins";
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v7, 0x1Cu);
      }
    }
  }

  if (*a1)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        LOWORD(v7) = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_BuildAlternateRoutesAndActivateForLastInWins", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_10AE78(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_10AE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *a2;
      if (v7)
      {
        if (*(*v7 + 152))(v7) && ((*(*v7 + 160))(v7))
        {
          v8 = *(*a1 + 8);
          if (!v8)
          {
            goto LABEL_14;
          }

          v9 = v7[36];
          v10 = *a1 + 8;
          do
          {
            v11 = *(v8 + 28);
            v12 = v11 >= v9;
            v13 = v11 < v9;
            if (v12)
            {
              v10 = v8;
            }

            v8 = *(v8 + 8 * v13);
          }

          while (v8);
          if (v10 == *a1 + 8 || v9 < *(v10 + 28))
          {
LABEL_14:
            v14 = 1;
LABEL_25:
            sub_1A8C0(v6);
            return v14;
          }

          v24 = sub_5544(8);
          if (*(v24 + 8))
          {
            v25 = *v24;
            if (*v24)
            {
              if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(__p, v7[36]);
                if (v28 >= 0)
                {
                  v26 = __p;
                }

                else
                {
                  v26 = __p[0];
                }

                *buf = 136315650;
                v30 = "RouteUtilities.h";
                v31 = 1024;
                v32 = 672;
                v33 = 2080;
                v34 = v26;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port's type (%s) is disallowed.", buf, 0x1Cu);
                if (v28 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        else
        {
          v15 = sub_5544(8);
          if (*(v15 + 8))
          {
            v16 = *v15;
            if (*v15)
            {
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
              {
                v17 = (*(*v7 + 152))(v7);
                v18 = (*(*v7 + 160))(v7);
                v19 = "not connected";
                if (v17)
                {
                  v19 = "connected";
                }

                v30 = "RouteUtilities.h";
                v31 = 1024;
                v32 = 664;
                *buf = 136315906;
                v33 = 2080;
                v34 = v19;
                if (v18)
                {
                  v20 = "routable";
                }

                else
                {
                  v20 = "not routable";
                }

                v35 = 2080;
                v36 = v20;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port is %s and %s.", buf, 0x26u);
              }
            }
          }
        }

        v14 = 0;
        goto LABEL_25;
      }

      sub_1A8C0(v5);
    }
  }

  v21 = sub_5544(8);
  if (*(v21 + 8))
  {
    v22 = *v21;
    if (*v21)
    {
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v30 = "RouteUtilities.h";
        v31 = 1024;
        v32 = 680;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port has expired.", buf, 0x12u);
      }
    }
  }

  return 0;
}

uint64_t sub_10B230(uint64_t a1, uint64_t a2, uint64_t **a3, _DWORD *a4)
{
  if (_os_feature_enabled_impl())
  {
    v7 = *a4 == 1668443751;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && sub_9C594(1885892706, *a3, a3[1]) && sub_343C60(*a3, a3[1], 1) && sub_3442BC(*a3, a3[1]))
  {
    v8 = *(a2 + 8);
    if (v8 != a2)
    {
      do
      {
        v9 = *(v8 + 16) == 1886216820 || *(v8 + 20) == 1886216820;
        result = v9;
        if (v9)
        {
          break;
        }

        v8 = *(v8 + 8);
      }

      while (v8 != a2);
      return result;
    }

    return 0;
  }

  v11 = qword_6F8E30;
  if (qword_6F8E30 == qword_6F8E38)
  {
    return 0;
  }

  do
  {
    if (*(a2 + 8) == a2)
    {
      result = 0;
    }

    else
    {
      v12 = *v11;
      v13 = *(a2 + 8);
      do
      {
        v14 = *(v13 + 16) == v12 || *(v13 + 20) == v12;
        result = v14;
        if (v14)
        {
          break;
        }

        v13 = *(v13 + 8);
      }

      while (v13 != a2);
    }

    if (result)
    {
      break;
    }

    ++v11;
  }

  while (v11 != qword_6F8E38);
  return result;
}

void *sub_10B35C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v3 = sub_5544(43);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = 136315650;
        v7 = "SignpostUtilities.h";
        v8 = 1024;
        v9 = 69;
        v10 = 2080;
        v11 = "kBuildAlternateRoutesAndActivateForLastInWins";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v6, 0x1Cu);
      }
    }
  }

  return a1;
}

void sub_10B440(uint64_t a1, AudioObjectPropertyAddress *a2, uint64_t a3, __CFString *a4, UInt32 *a5, uint64_t *a6)
{
  sub_10BB88(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v29 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v30 = *&a2->mSelector;
      v34 = a2->mElement;
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  if (!a6)
  {
    v25 = sub_5544(14);
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      v31 = *&a2->mSelector;
      v35 = a2->mElement;
      sub_22CE0(__p);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = 561211770;
  }

  if (a2->mSelector == 1936482681)
  {
    v12 = *a5;
    if (v12 < (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v27 = sub_5544(14);
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        v32 = *&a2->mSelector;
        v36 = a2->mElement;
        sub_22CE0(__p);
      }

      v28 = __cxa_allocate_exception(0x10uLL);
      *v28 = &off_6DDDD0;
      v28[2] = 561211770;
    }

    v13 = 936;
    if (a2->mScope == 1768845428)
    {
      v13 = 920;
    }

    v14 = *(a1 + v13);
    if (v14)
    {
      v15 = *v14;
      if (*v14)
      {
        *a6 = v15;
        v16 = *v14;
        if (v16)
        {
          v17 = (v14 + 2);
          v18 = a6 + 2;
          v19 = v16;
          do
          {
            v20 = *v17;
            v17 += 4;
            *(v18 - 1) = v20;
            *v18 = 0;
            v18 += 2;
            --v19;
          }

          while (v19);
          v15 = (16 * v16) | 8;
        }

        else
        {
          v15 = 8;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    *a5 = v15;
  }

  else
  {

    sub_5FE6C(a1, a2, a3, a4, a5, a6);
  }
}

void sub_10BAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10BAE4(uint64_t a1, AudioObjectPropertyAddress *a2)
{
  sub_10BB88(a1);
  mSelector = a2->mSelector;
  if (a2->mSelector == 1937077093 || mSelector == 1937009955)
  {
    return 0;
  }

  if (mSelector == 1936482681)
  {
    mScope = a2->mScope;
    return mScope == 1869968496 || mScope == 1768845428;
  }

  else
  {

    return sub_5E074(a1, a2);
  }
}

uint64_t sub_10BB88(uint64_t result)
{
  if (!*(result + 128))
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315394;
      v37 = "AggregateDevice_Common2.cpp";
      v38 = 1024;
      v39 = 1985;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invariant failure.");
  }

  v1 = result;
  if (!*(result + 536))
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315394;
      v37 = "AggregateDevice_Common2.cpp";
      v38 = 1024;
      v39 = 1986;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Invariant failure.");
  }

  for (i = *(result + 640); i != *(result + 648); i += 2)
  {
    if (!*i)
    {
      v9 = sub_5544(14);
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          v36 = 136315394;
          v37 = "AggregateDevice_Common2.cpp";
          v38 = 1024;
          v39 = 1992;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
        }
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v11, "Invariant failure.");
    }
  }

  for (j = *(result + 664); j != *(result + 672); j += 2)
  {
    if (!*j)
    {
      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "AggregateDevice_Common2.cpp";
        v38 = 1024;
        v39 = 1993;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
      }

      v14 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v14, "Invariant failure.");
    }
  }

  v4 = *(result + 808) - *(result + 800);
  if (v4)
  {
    v5 = v4 == 8;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315394;
      v37 = "AggregateDevice_Common2.cpp";
      v38 = 1024;
      v39 = 1994;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Invariant failure.");
  }

  if (*(result + 824) == *(result + 832) && *(result + 848) == *(result + 856))
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315394;
      v37 = "AggregateDevice_Common2.cpp";
      v38 = 1024;
      v39 = 1995;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v32, "Invariant failure.");
  }

  v6 = *(result + 872);
  if (v6 == *(result + 880))
  {
    if (*(result + 896) == *(result + 904))
    {
      v33 = sub_5544(14);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "AggregateDevice_Common2.cpp";
        v38 = 1024;
        v39 = 1996;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v35, "Invariant failure.");
    }
  }

  else
  {
    v7 = 0;
    v8 = 1;
    do
    {
      result = *(v6 + 8 * v7);
      if (result)
      {
        result = (*(*result + 144))(result);
        v6 = v1[109];
        if ((result & 1) == 0)
        {
          result = (*(**(v6 + 8 * v7) + 152))(*(v6 + 8 * v7));
          if (!result)
          {
            v15 = sub_5544(14);
            v16 = *v15;
            if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
            {
              v36 = 136315394;
              v37 = "AggregateDevice_Common2.cpp";
              v38 = 1024;
              v39 = 2004;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
            }

            v17 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v17, "Invariant failure.");
          }

          v6 = v1[109];
        }
      }

      v7 = v8++;
    }

    while (v7 < (v1[110] - v6) >> 3);
  }

  if ((v1[72] == 0) == (v1[73] != 0))
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v36 = 136315394;
      v37 = "AggregateDevice_Common2.cpp";
      v38 = 1024;
      v39 = 2007;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", &v36, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "Invariant failure.");
  }

  return result;
}

uint64_t sub_10C354(uint64_t a1)
{
  v15 = 4;
  v16 = 0;
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 104);
      if (v4)
      {
        if (sub_F5EFC(a1))
        {
          v5 = 1869968496;
        }

        else
        {
          v5 = 1768845428;
        }

        v14[0] = 1819569763;
        v14[1] = v5;
        v14[2] = 0;
        if ((*(*v4 + 16))(v4, v14))
        {
          (*(*v4 + 40))(v4, v14, 0, 0, &v15, &v16);
        }

        else
        {
          v8 = sub_5544(23);
          v9 = *v8;
          if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
          {
            v10 = (*(*v4 + 120))(v4);
            (*(*v4 + 128))(__p, v4);
            if (v13 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            *buf = 136315906;
            v18 = "VirtualStream.cpp";
            v19 = 1024;
            v20 = 861;
            v21 = 1024;
            v22 = v10;
            v23 = 2080;
            v24 = v11;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d PhysicalDevice ID %u (uid %s), does not support kAudioDevicePropertyLatency", buf, 0x22u);
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (sub_F5EFC(a1))
  {
    v6 = 1869968496;
  }

  else
  {
    v6 = 1768845428;
  }

  *buf = 1752657012;
  v18 = v6;
  (*(**(a1 + 96) + 40))(*(a1 + 96), buf, 0, 0, &v15, &v16);
  if (v3)
  {
LABEL_14:
    sub_1A8C0(v3);
  }

  return v16;
}

uint64_t sub_10C630(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 1885762592;
  v7 = a1 + 656;
  v17 = a1 + 656;
  v18 = 1;
  sub_26C0(a1 + 656);
  if (a3 == 1885762592)
  {
    sub_5EE3C(buf, (a1 + 80), "", 823);
    v8 = *buf;
    v9 = *(a1 + 152);
    if (v9 && ((*(*v9 + 192))(v9) & 1) != 0)
    {
      v6 = 1936092532;
    }

    v10 = (*(*v8 + 128))(v8, a2, v6);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v10)
    {
      v11 = sub_5544(23);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, v10);
          if (v16 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136315650;
          *&buf[4] = "VirtualStream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 826;
          v20 = 2080;
          v21 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Error '%s' getting physical stream format", buf, 0x1Cu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v10 = sub_4E90C(a1, a2);
  }

  sub_3174(v7);
  return v10;
}

void sub_10C824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2185D4(va);
  _Unwind_Resume(a1);
}

void sub_10C858(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x10C850);
}

double sub_10C868(uint64_t a1)
{
  v2 = sub_10C630(a1, v15, 1885762592);
  if (v2)
  {
    v11 = v2;
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "VirtualStream.cpp";
      v18 = 1024;
      v19 = 896;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: error getting current stream format", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v11;
  }

  v3 = *(a1 + 96);
  v4 = 1.0;
  if (((*(*v3 + 144))(v3) & 1) == 0)
  {
    v5 = (*(*v3 + 104))(v3);
    v6 = v15[0];
    if (v5 != v15[0])
    {
      v7 = v5;
      v8 = sub_5544(23);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = "VirtualStream.cpp";
        v18 = 1024;
        v19 = 317;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Aggregate device sample rate (%f) is different from physical device sample rate(%f)", buf, 0x26u);
      }

      return v7 / v6;
    }
  }

  return v4;
}

double sub_10CA88(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v3 = *a2;
  v4 = *a3;
  v10 = a2 + 1;
  v11 = v3;
  v9 = v4;
  v7.n128_u64[1] = (a1 + 1);
  v8 = a3 + 1;
  v7.n128_u64[0] = a1;
  *&result = sub_10CB08(v6, &v11, &v10, &v9, &v8, &v7).n128_u64[0];
  return result;
}

void sub_10CAF0(_Unwind_Exception *a1)
{
  v2 = v1;
  sub_477A0(*v2);
  _Unwind_Resume(a1);
}

__n128 sub_10CB08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, __n128 *a6)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 == *a3)
  {
LABEL_38:
    v30 = *a6;
    goto LABEL_39;
  }

  for (i = *a4; *a4 != *a5; i = *a4)
  {
    v15 = *(v8 + 7);
    v16 = *(i + 7);
    if (v15 >= v16)
    {
      if (v16 >= v15)
      {
        v23 = v8[1];
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
            v24 = v8[2];
            v20 = *v24 == v8;
            v8 = v24;
          }

          while (!v20);
        }

        *a2 = v24;
        v25 = *a4;
        v26 = *(*a4 + 8);
        if (v26)
        {
          do
          {
            v22 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v22 = v25[2];
            v20 = *v22 == v25;
            v25 = v22;
          }

          while (!v20);
        }
      }

      else
      {
        v21 = i[1];
        if (v21)
        {
          do
          {
            v22 = v21;
            v21 = *v21;
          }

          while (v21);
        }

        else
        {
          do
          {
            v22 = i[2];
            v20 = *v22 == i;
            i = v22;
          }

          while (!v20);
        }
      }

      *a4 = v22;
    }

    else
    {
      sub_9E3B4(a6, v8 + 7);
      v17 = *a2;
      v18 = *(*a2 + 8);
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
          v19 = v17[2];
          v20 = *v19 == v17;
          v17 = v19;
        }

        while (!v20);
      }

      *a2 = v19;
    }

    v8 = *a2;
    v9 = *a3;
    if (*a2 == *a3)
    {
      goto LABEL_38;
    }
  }

  v30 = *a6;
  if (v8 != v9)
  {
    do
    {
      sub_9E3B4(&v30, v8 + 7);
      v27 = v8[1];
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
          v28 = v8[2];
          v20 = *v28 == v8;
          v8 = v28;
        }

        while (!v20);
      }

      v8 = v28;
    }

    while (v28 != v9);
    v8 = v9;
  }

LABEL_39:
  result = v30;
  *a1 = v8;
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_10CCFC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_477A0(*(v2 + 16));

    operator delete();
  }

  return result;
}

void sub_10CD5C(_DWORD *a1)
{
  v2 = *a1;
  v4 = *(*a1 + 320);
  v3 = *(*a1 + 328);
  if (v4 != v3)
  {
    while (**v4 != a1[2])
    {
      if (++v4 == v3)
      {
        goto LABEL_21;
      }
    }
  }

  if (v4 == v3)
  {
LABEL_21:
    v16 = sub_5544(44);
    if (*(v16 + 8))
    {
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = a1[2];
          v27 = 136315650;
          v28 = "AudioObjectPropertyListenerManager.cpp";
          v29 = 1024;
          v30 = 330;
          v31 = 2048;
          v32 = v18;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID %lu not found in listeners list.", &v27, 0x1Cu);
        }
      }
    }
  }

  else
  {
    v5 = sub_5544(44);
    if (*(v5 + 8))
    {
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          v7 = a1[2];
          v27 = 136315650;
          v28 = "AudioObjectPropertyListenerManager.cpp";
          v29 = 1024;
          v30 = 320;
          v31 = 2048;
          v32 = v7;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing device ID %lu from listeners list.", &v27, 0x1Cu);
        }
      }
    }

    v8 = *v4;
    sub_4E890();
    dispatch_assert_queue_V2(qword_709738);
    if (*(v8 + 3))
    {
      v9 = sub_5544(44);
      if (*(v9 + 8))
      {
        v10 = *v9;
        if (*v9)
        {
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
          {
            v11 = a1[2];
            v27 = 136315650;
            v28 = "AudioObjectPropertyListenerManager.cpp";
            v29 = 1024;
            v30 = 323;
            v31 = 2048;
            v32 = v11;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID %lu still has registered listener clients.", &v27, 0x1Cu);
          }
        }
      }
    }

    v12 = v4 + 1;
    v13 = *(v2 + 328);
    if (v4 + 1 != v13)
    {
      do
      {
        v4 = v12;
        v14 = v12 - 1;
        v15 = *v12;
        *v12++ = 0;
        sub_10CCFC(v14, v15);
      }

      while (v12 != v13);
      v13 = *(v2 + 328);
    }

    while (v13 != v4)
    {
      sub_10CCFC(--v13, 0);
    }

    *(v2 + 328) = v4;
  }

  sub_47BD8(v2 + 8);
  v19 = *(v2 + 296);
  if (v19 != (v2 + 304))
  {
    v20 = a1[2];
    do
    {
      if (*(v19 + 8) == v20)
      {
        v21 = sub_3145D4((v2 + 296), v19);
        operator delete(v19);
      }

      else
      {
        v22 = v19[1];
        if (v22)
        {
          do
          {
            v21 = v22;
            v22 = *v22;
          }

          while (v22);
        }

        else
        {
          do
          {
            v21 = v19[2];
            v23 = *v21 == v19;
            v19 = v21;
          }

          while (!v23);
        }
      }

      v19 = v21;
    }

    while (v21 != (v2 + 304));
  }

  sub_47C90(v2 + 8);
  v24 = sub_5544(44);
  if (*(v24 + 8))
  {
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
      {
        v26 = a1[2];
        v27 = 136315650;
        v28 = "AudioObjectPropertyListenerManager.cpp";
        v29 = 1024;
        v30 = 339;
        v31 = 2048;
        v32 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removed device ID %lu from expired objects list.", &v27, 0x1Cu);
      }
    }
  }

  operator delete();
}

void sub_10D118(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10D14C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 16);
      if (!v5)
      {
LABEL_23:
        sub_1A8C0(v4);
        return;
      }

      v6 = sub_617EC(*(a1 + 16), a1 + 80);
      if (v6)
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 179;
          v18 = "%25s:%-5d EXCEPTION (result) [error result is an error]: Stream::GetCurrentHALIOProcFormat() returned an error.";
LABEL_31:
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
        }
      }

      else
      {
        v6 = sub_4E90C(v5, a1 + 40);
        if (!v6)
        {
          if (*(a1 + 48) == 1819304813 && *(a1 + 88) == 1819304813)
          {
            v7 = *(a1 + 24);
            if (v7)
            {
              v7 = std::__shared_weak_count::lock(v7);
              v8 = v7;
              if (v7)
              {
                v7 = *(a1 + 16);
              }
            }

            else
            {
              v8 = 0;
            }

            sub_10C354(v7);
            v9 = *(a1 + 80);
            if (v8)
            {
              sub_1A8C0(v8);
            }

            if (*(a1 + 272) == 1)
            {
              v10 = sub_F5EFC(v5);
              v11 = *(a1 + 32);
              if (v10)
              {
                v21 = *(a1 + 40);
                v23 = *(a1 + 56);
                v25 = *(a1 + 72);
                if (*(a1 + 272))
                {
                  v27 = *(a1 + 232);
                  v28 = *(a1 + 248);
                  v29 = *(a1 + 264);
                  sub_638B0();
                }

                sub_1EC054();
              }

              v14 = *(a1 + 56);
              *buf = *(a1 + 40);
              *&buf[16] = v14;
              v31 = *(a1 + 72);
              if (*(a1 + 272))
              {
                v32 = *(a1 + 232);
                v33 = *(a1 + 248);
                v34 = *(a1 + 264);
                sub_638B0();
              }

              sub_1EC054();
            }

            v12 = sub_F5EFC(v5);
            v13 = *(a1 + 32);
            if (v12)
            {
              v22 = *(a1 + 40);
              v24 = *(a1 + 56);
              v26 = *(a1 + 72);
              sub_638B0();
            }

            v15 = *(a1 + 56);
            *buf = *(a1 + 40);
            *&buf[16] = v15;
            v31 = *(a1 + 72);
            sub_638B0();
          }

          goto LABEL_23;
        }

        v19 = sub_5544(14);
        v17 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 181;
          v18 = "%25s:%-5d EXCEPTION (result) [error result is an error]: Stream::GetCurrentFormat() returned an error.";
          goto LABEL_31;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v6;
    }
  }
}

void sub_10D874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A8C0(v23);
  _Unwind_Resume(a1);
}

void sub_10D91C(uint64_t a1)
{
  v1 = 0;
  v75 = 0;
  do
  {
    v2 = v1;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2000000000;
    v3 = (v1 & 1) == 0;
    v4 = &v75 + 4;
    if (!v3)
    {
      v4 = &v75;
    }

    *&buf[24] = v4;
    v5 = 824;
    if (!v3)
    {
      v5 = 848;
    }

    v6 = (a1 + v5);
    v7 = *v6;
    v8 = v6[1];
    v71[0] = _NSConcreteStackBlock;
    v71[1] = 0x40000000;
    v72 = sub_10E0F4;
    v73 = &unk_6D06D8;
    v74 = buf;
    while (v7 != v8)
    {
      v72(v71, *v7++);
    }

    if (v2)
    {
      v9 = 896;
    }

    else
    {
      v9 = 872;
    }

    v10 = a1 + v9;
    v11 = *v10;
    v12 = *(v10 + 8);
    while (v11 != v12)
    {
      if (*v11)
      {
        (*(**v11 + 24))(*v11);
      }

      ++v11;
    }

    _Block_object_dispose(buf, 8);
    v1 = 1;
  }

  while ((v2 & 1) == 0);
  sub_658AC(buf, SHIDWORD(v75));
  sub_5D7F4((a1 + 920), buf);
  sub_5D988(buf);
  sub_658AC(buf, v75);
  sub_5D7F4((a1 + 936), buf);
  sub_5D988(buf);
  v13 = 0;
  v57 = 1;
  do
  {
    v14 = v13;
    v15 = (v13 & 1) == 0;
    if (v13)
    {
      v16 = (a1 + 936);
    }

    else
    {
      v16 = (a1 + 920);
    }

    v17 = 824;
    if (!v15)
    {
      v17 = 848;
    }

    v59 = (a1 + v17);
    v18 = *(a1 + v17 + 8) - *(a1 + v17);
    if (v18)
    {
      v19 = 0;
      v20 = 0;
      v55 = v14 ^ 1;
      v21 = v18 >> 3;
      if (v21 <= 1)
      {
        v21 = 1;
      }

      v58 = v21;
      v60 = v14;
      while (1)
      {
        v22 = *(*v59 + 8 * v20);
        v23 = (*(*v22 + 56))(v22);
        v24 = (*(*v22 + 64))(v22);
        if ((*(*v22 + 40))(v22) & 1) != 0 || ((*(*v22 + 48))(v22))
        {
          v25 = 1;
        }

        else
        {
          v26 = sub_5544(17);
          v27 = sub_5544(25);
          v28 = 0;
          *buf = 0x100000002;
          v29 = *(v26 + 8);
          while (1)
          {
            v30 = *&buf[v28];
            if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
            {
              break;
            }

            v28 += 4;
            if (v28 == 8)
            {
              goto LABEL_37;
            }
          }

          if ((v29 & v30) == 0)
          {
            v26 = v27;
          }

LABEL_37:
          v31 = *v26;
          if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 1840;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_INFO, "%25s:%-5d DSP is disabled", buf, 0x12u);
          }

          v25 = 0;
          v14 = v60;
        }

        (*(*v22 + 144))(&v69, v22);
        if (v70)
        {
          v32 = std::__shared_weak_count::lock(v70);
          if (v32 && v69)
          {
            sub_65234(v68, v69 + 120);
            for (i = v68[1]; i != v68; i = i[1])
            {
              v34 = i[3];
              if (v34)
              {
                v35 = std::__shared_weak_count::lock(v34);
                if (v35)
                {
                  v36 = i[2];
                  if (v36)
                  {
                    v37 = *(v36 + 144);
                    if (v37 <= 1886155112)
                    {
                      v38 = v37 == 1885432182;
                      v39 = 1885891433;
                    }

                    else
                    {
                      v38 = v37 == 1886155113 || v37 == 1886155119;
                      v39 = 1886613618;
                    }

                    if (v38 || v37 == v39)
                    {
                      sub_1A8C0(v35);
                      goto LABEL_78;
                    }
                  }

                  sub_1A8C0(v35);
                }
              }
            }

            sub_8E920(&v67, v68, 0);
            std::operator+<char>();
            if (v14)
            {
              v41 = v23;
            }

            else
            {
              v41 = v24;
            }

            v42 = *v41;
            v43 = *(v41 + 16);
            v77 = *(v41 + 32);
            *buf = v42;
            *&buf[16] = v43;
            v22[73] = v57;
            sub_8EB20(a1 + 144, v57, &v65, buf, v55 & 1);
            v44 = (v57 + 1);
            if (v25)
            {
              std::operator+<char>();
              if (v60)
              {
                v45 = v24;
              }

              else
              {
                v45 = v23;
              }

              v46 = *v45;
              v47 = *(v45 + 16);
              v62 = *(v45 + 32);
              v61[0] = v46;
              v61[1] = v47;
              v22[74] = v44;
              sub_8EB20(a1 + 144, v44, &__p, v61, v55 & 1);
              if (v64 < 0)
              {
                operator delete(__p);
              }

              v48 = (v57 + 2);
            }

            else
            {
              v48 = (v57 + 1);
            }

            v57 = v48;
            v14 = v60;
            sub_8FDCC(a1 + 144);
            if (v66 < 0)
            {
              operator delete(v65);
            }

            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v67.__r_.__value_.__l.__data_);
            }

LABEL_78:
            sub_65310(v68);
          }
        }

        else
        {
          v32 = 0;
        }

        v22[72] = v19;
        v49 = *v22;
        v50 = ((v14 & 1) != 0 ? v49 + 72 : v49 + 80);
        v51 = (*v50)(v22);
        if ((*(v23 + 12) & 0x20) == 0)
        {
          break;
        }

        v52 = *(v23 + 28);
        if (v52)
        {
          goto LABEL_85;
        }

LABEL_93:
        if (v32)
        {
          sub_1A8C0(v32);
        }

        v14 = v60;
        if (v70)
        {
          std::__shared_weak_count::__release_weak(v70);
        }

        if (++v20 == v58)
        {
          goto LABEL_98;
        }
      }

      v52 = 1;
LABEL_85:
      v53 = 8;
      do
      {
        if (v25)
        {
          *(*v16 + 16 * v19 + 8) = *(v51 + v53);
          (*(*v22 + 176))(v22, v51);
        }

        else
        {
          if ((*(v23 + 12) & 0x20) != 0)
          {
            v54 = 1;
          }

          else
          {
            v54 = *(v23 + 28);
          }

          *(*v16 + 16 * v19 + 8) = v54;
        }

        ++v19;
        v53 += 16;
        --v52;
      }

      while (v52);
      goto LABEL_93;
    }

LABEL_98:
    v13 = 1;
  }

  while ((v14 & 1) == 0);
  sub_F7240(a1);
}

uint64_t sub_10E0F4(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 24))(a2);
  result = (*(*a2 + 56))(a2);
  if ((*(result + 12) & 0x20) != 0)
  {
    v5 = *(result + 28);
  }

  else
  {
    v5 = 1;
  }

  v6 = *(*(*(a1 + 32) + 8) + 24);
  *v6 += v5;
  return result;
}

void sub_10E198(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 576))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v41 = 1024;
      v42 = 2047;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_10BB88(a1);
  v4 = sub_51840(a1, a2, 1);
  if ((v4 & 3) == 0)
  {
    v11 = *(a1 + 120);
    if (v11)
    {
      caulk::concurrent::messenger::drain(v11);
    }

    sub_10D91C(a1);
    (*(*a1 + 248))(a1);
    sub_174EB4(a1);
    sub_17444C(a1);
    sub_173C0C(a1);
  }

  v5 = v4;
  v6 = sub_5544(17);
  v7 = sub_5544(32);
  if (a2 == 1 && (v5 & 1) != 0)
  {
    v8 = 0;
    *buf = 0x100000002;
    v9 = *(v6 + 8);
    while (1)
    {
      v10 = *&buf[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        break;
      }

      v8 += 4;
      if (v8 == 8)
      {
        goto LABEL_29;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_29:
    v21 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v22 = (*(*a1 + 120))(a1);
        *buf = 136315650;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        v41 = 1024;
        v42 = 2114;
        v43 = 1024;
        LODWORD(v44) = v22;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant NULL I/O proc start request on AggregateDevice %u. Returning before AudioDeviceStart() call.", buf, 0x18u);
      }
    }
  }

  else
  {
    v12 = 0;
    *buf = 0x100000002;
    v13 = *(v6 + 8);
    while (1)
    {
      v14 = *&buf[v12];
      if (((v13 & v14) != 0) != ((*(v7 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_18;
      }
    }

    if ((v13 & v14) == 0)
    {
      v6 = v7;
    }

LABEL_18:
    v15 = *v6;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, a2);
      v16 = v39;
      v17 = __p[0];
      v18 = (*(*a1 + 120))(a1);
      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v19 = v16 >= 0 ? __p : v17;
      v41 = 1024;
      v42 = 2119;
      v43 = 2080;
      v44 = v19;
      v45 = 1024;
      LODWORD(v46) = v18;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", buf, 0x22u);
      if (v39 < 0)
      {
        operator delete(__p[0]);
      }
    }

    kdebug_trace();
    if (a2 == 1)
    {
      v20 = 0;
    }

    else
    {
      v20 = *(a1 + 536);
    }

    v23 = AudioDeviceStart(*(a1 + 128), v20);
    kdebug_trace();
    if (v23)
    {
      sub_51840(a1, a2, 0);
      v27 = sub_5544(17);
      v28 = *v27;
      if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v23);
        v29 = v39;
        v30 = __p[0];
        sub_23148(v36, (a1 + 8));
        v31 = __p;
        if (v29 < 0)
        {
          v31 = v30;
        }

        if (v37 >= 0)
        {
          v32 = v36;
        }

        else
        {
          v32 = v36[0];
        }

        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        v41 = 1024;
        v42 = 2127;
        v43 = 2080;
        v44 = v31;
        v45 = 2080;
        v46 = v32;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", buf, 0x26u);
        if (v37 < 0)
        {
          operator delete(v36[0]);
        }

        if (v39 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v33 = sub_5544(14);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Common2.cpp";
        v41 = 1024;
        v42 = 2128;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", buf, 0x12u);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      *v35 = &off_6DDDD0;
      v35[2] = v23;
    }
  }
}

void sub_10ECFC(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10ED38(uint64_t a1)
{
  v2 = 0;
  v3 = 640;
  do
  {
    v4 = v2;
    v5 = *(a1 + v3);
    v6 = *(a1 + v3 + 8);
    while (v5 != v6)
    {
      v7 = *v5;
      v5 += 2;
      sub_96F48(v7);
    }

    v2 = 1;
    v3 = 664;
  }

  while ((v4 & 1) == 0);
}

uint64_t sub_10ED9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a2)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_Common2.cpp";
        v30 = 1024;
        v31 = 1463;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inNow is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a3)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_Common2.cpp";
        v30 = 1024;
        v31 = 1464;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inInputData is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a4)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_Common2.cpp";
        v30 = 1024;
        v31 = 1465;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inInputTime is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a5)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21)
    {
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_Common2.cpp";
        v30 = 1024;
        v31 = 1466;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: outOutputData is NULL.", buf, 0x12u);
      }
    }
  }

  if (!a6)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23)
    {
      if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "AggregateDevice_Common2.cpp";
        v30 = 1024;
        v31 = 1467;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inOutputTime is NULL.", buf, 0x12u);
      }
    }
  }

  if (a7)
  {
    v27 = a7;
    *(a7 + 448) = pthread_self();
    *(a7 + 440) = 1;
    if (*(a7 + 576))
    {
      (*(*a7 + 608))(a7, a2, a3, a4, a5, a6, a7);
    }
  }

  else
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "AggregateDevice_Common2.cpp";
      v30 = 1024;
      v31 = 1468;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: inClientData is NULL.", buf, 0x12u);
    }

    sub_59898(&v27, 0);
  }

  v13 = v27;
  if (v27)
  {
    *(v27 + 440) = 0;
    *(v13 + 448) = 0;
  }

  return 0;
}

uint64_t sub_10F3B8(uint64_t a1, uint64_t a2, _DWORD *a3, double *a4, unsigned int *a5, double *a6, uint64_t a7)
{
  v165 = a7;
  v169 = a4;
  v170 = a6;
  v171 = a3;
  v164 = a2;
  v8 = a1;
  if (!*(a1 + 576))
  {
    a1 = sub_5544(14);
    v149 = *a1;
    if (*a1)
    {
      a1 = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 1033;
        _os_log_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The client IO proc must exist for IO to run.", &buf, 0x12u);
      }
    }
  }

  v9 = *(v8 + 824);
  v10 = *(v8 + 832);
  v172 = a5;
  v174 = v8;
  if (v9 != v10 && !*v171)
  {
    a1 = sub_5544(14);
    v150 = *a1;
    a5 = v172;
    v8 = v174;
    if (*a1)
    {
      a1 = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 1034;
        _os_log_impl(&dword_0, v150, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Input ClientStreamCache exists, but the IO proc claims it has no buffers.", &buf, 0x12u);
      }
    }
  }

  if (*(v8 + 848) != *(v8 + 856) && !*a5)
  {
    a1 = sub_5544(14);
    v151 = *a1;
    v8 = v174;
    if (*a1)
    {
      a1 = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 1035;
        _os_log_impl(&dword_0, v151, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Output ClientStreamCache exists, but the IO proc claims it has no buffers.", &buf, 0x12u);
      }
    }
  }

  v11 = *(v8 + 824) != *(v8 + 832) && (*(v8 + 308) & 1) == 0;
  if (*(v8 + 104) == 1)
  {
    *(v8 + 88) = vextq_s8(*(v8 + 88), *(v8 + 88), 8uLL);
    *(v8 + 104) = 0;
  }

  if (!v11)
  {
    *&v162 = 0;
    v166 = 0;
    v167 = 0;
    goto LABEL_52;
  }

  v12 = *(v8 + 920);
  v13 = *v171;
  v167 = v12;
  if (!v13)
  {
    *&v162 = 0;
    v166 = 0;
    goto LABEL_52;
  }

  v14 = 0;
  v166 = 0;
  v168.i32[0] = 0;
  v15 = v171 + 2;
  v16 = v12 + 2;
  v163 = xmmword_5171E0;
  v162 = xmmword_5171F0;
  v173 = vdupq_n_s64(4uLL);
  do
  {
    v17 = &v15[4 * v14];
    if (v17->mData)
    {
      v18 = *(*(v8 + 872) + 8 * v14);
      if (!v18)
      {
        goto LABEL_45;
      }

      a1 = (*(*v18 + 168))(v18);
      v19 = a1;
      if (a1 == -2)
      {
        v8 = v174;
        if (*(v174 + 792) == 1)
        {
          if (*(v174 + 793) == 1)
          {
            v152 = sub_5544(14);
            v153 = *v152;
            if (*v152)
            {
              if (os_log_type_enabled(*v152, OS_LOG_TYPE_ERROR))
              {
                buf.mNumberBuffers = 136315394;
                *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common2.cpp";
                LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
                *(&buf.mBuffers[0].mDataByteSize + 2) = 1156;
                _os_log_impl(&dword_0, v153, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Siri ducking for speaker supported. Should not process telemetry in aggregate device", &buf, 0x12u);
              }
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Siri ducking for speaker supported. Should not process telemetry in aggregate device");
          }
        }

        else
        {
          v166 = 1;
          v168.i32[0] = v14;
        }
      }

      else
      {
        v21 = *(*(v174 + 824) + 8 * a1);
        v176 = (*(*v21 + 72))(v21);
        v175 = (*(*v21 + 80))(v21);
        v22 = v21[72];
        v23 = (*(*v18 + 104))(v18, v17->mDataByteSize);
        if ((*(*v21 + 160))(v21))
        {
          *&buf.mNumberBuffers = 1;
          buf.mBuffers[0] = *v17;
          v24 = v174;
          v25 = *(v174 + 88);
          v177 = 0;
          LODWORD(p_buf) = 1;
          HIDWORD(p_buf) = v19;
          if (v25)
          {
            sub_475148(v25, &v177, &v15[4 * v14], v23);
            v24 = v174;
          }

          sub_5AEC0(v24 + 144, v21[73], &buf, v23, v169);
        }

        if (((*(*v21 + 40))(v21) & 1) != 0 || (*(*v21 + 48))(v21))
        {
          v26 = (*(*v21 + 192))(v21, v23);
          v27 = (*(*v21 + 128))(v21, v23);
          mNumberBuffers = v176->mNumberBuffers;
          if (mNumberBuffers)
          {
            v29 = (mNumberBuffers + 3) & 0x1FFFFFFFCLL;
            v30 = vdupq_n_s64(mNumberBuffers - 1);
            v31 = &v176[1].mBuffers[0].mData + 1;
            v32 = v162;
            v33 = v163;
            do
            {
              v34 = vmovn_s64(vcgeq_u64(v30, v32));
              if (vuzp1_s16(v34, *v30.i8).u8[0])
              {
                *(v31 - 8) = v26;
              }

              if (vuzp1_s16(v34, *&v30).i8[2])
              {
                *(v31 - 4) = v26;
              }

              if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v33))).i32[1])
              {
                *v31 = v26;
                v31[4] = v26;
              }

              v33 = vaddq_s64(v33, v173);
              v32 = vaddq_s64(v32, v173);
              v31 += 16;
              v29 -= 4;
            }

            while (v29);
          }

          v35 = (*(*v21 + 208))(v21, v23);
          v36 = v175->mNumberBuffers;
          if (v36)
          {
            p_mDataByteSize = &v175->mBuffers[0].mDataByteSize;
            do
            {
              *p_mDataByteSize = v35;
              p_mDataByteSize += 4;
              v16[4 * v22 + 1] = v27;
              LODWORD(v22) = v22 + 1;
              --v36;
            }

            while (v36);
          }

          v38 = (*(*v21 + 32))(v21);
          *&buf.mNumberBuffers = 1;
          buf.mBuffers[0] = *v17;
          sub_90828(v38[73], v23, &buf, v176);
          (*(*v38 + 21))(v38, v169, v23, 1, &v176, 1, &v175);
          v39 = (*(*v21 + 168))(v21);
          sub_90828(v38[84], v23, v175, v39);
          v40 = v174;
          v41 = *(v174 + 88);
          v177 = 0;
          LODWORD(p_buf) = 2;
          HIDWORD(p_buf) = v19;
          if (v41)
          {
            sub_475310(v41, &v177, v39, v23, *v169);
            v40 = v174;
          }

          sub_5AEC0(v40 + 144, v21[74], v39, v23, v169);
          goto LABEL_43;
        }

        v42 = &v16[4 * v22];
        v42[1] = v17->mDataByteSize;
        *(v42 + 1) = v17->mData;
        a1 = (*(*v21 + 160))(v21);
        v8 = v174;
        if (a1)
        {
          a1 = *(v174 + 88);
          *&buf.mNumberBuffers = 0;
          buf.mBuffers[0].mNumberChannels = 2;
          buf.mBuffers[0].mDataByteSize = v19;
          if (a1)
          {
            sub_475148(a1, &buf, &v16[4 * v22], v23);
LABEL_43:
            v8 = v174;
          }
        }
      }
    }

    else if (v14 < *v167)
    {
      v20 = &v16[4 * v14];
      v20[1] = 0;
      *(v20 + 1) = 0;
    }

LABEL_45:
    ++v14;
  }

  while (v14 < *v171);
  *&v162 = v168.u32[0];
LABEL_52:
  v43 = v174;
  if (*(v174 + 848) == *(v174 + 856) || (*(v174 + 308) & 1) != 0)
  {
    v70 = 0;
    v173.i64[0] = 0;
  }

  else
  {
    v44 = *(v174 + 936);
    v45 = *v172;
    v173.i64[0] = v44;
    if (v45)
    {
      v46 = 0;
      v47 = v172 + 2;
      v48 = v44 + 2;
      v163 = xmmword_5171E0;
      v161 = xmmword_5171F0;
      v168 = vdupq_n_s64(4uLL);
      do
      {
        v49 = &v47[4 * v46];
        if (*(v49 + 1))
        {
          v50 = *(*(v43 + 896) + 8 * v46);
          if (v50)
          {
            v51 = *(*(v174 + 848) + 8 * (*(*v50 + 168))(v50));
            v52 = (*(*v51 + 72))(v51);
            v53 = (*(*v51 + 80))(v51);
            v54 = v51[72];
            a1 = (*(*v51 + 40))(v51);
            v55 = v49[1];
            if (a1)
            {
              v56 = (*(*v50 + 104))(v50, v55);
              v57 = (*(*v51 + 192))(v51, v56);
              v58 = (*(*v51 + 128))(v51, v56);
              v59 = *v52;
              if (v59)
              {
                v60 = v52 + 3;
                do
                {
                  *v60 = v57;
                  v60 += 4;
                  v48[4 * v54 + 1] = v58;
                  LODWORD(v54) = v54 + 1;
                  --v59;
                }

                while (v59);
              }

              a1 = (*(*v51 + 208))(v51, v56);
              v61 = *v53;
              v43 = v174;
              v44 = v173.i64[0];
              v62 = v168;
              if (v61)
              {
                v63 = (v61 + 3) & 0x1FFFFFFFCLL;
                v64 = vdupq_n_s64(v61 - 1);
                v65 = v53 + 11;
                v66 = v161;
                v67 = v163;
                do
                {
                  v68 = vmovn_s64(vcgeq_u64(v64, v66));
                  if (vuzp1_s16(v68, *v64.i8).u8[0])
                  {
                    *(v65 - 8) = a1;
                  }

                  if (vuzp1_s16(v68, *&v64).i8[2])
                  {
                    *(v65 - 4) = a1;
                  }

                  if (vuzp1_s16(*&v64, vmovn_s64(vcgeq_u64(v64, *&v67))).i32[1])
                  {
                    *v65 = a1;
                    v65[4] = a1;
                  }

                  v67 = vaddq_s64(v67, v62);
                  v66 = vaddq_s64(v66, v62);
                  v65 += 16;
                  v63 -= 4;
                }

                while (v63);
              }

              goto LABEL_76;
            }

            v48[4 * v54 + 1] = v55;
            v69 = *(v49 + 1);
            v43 = v174;
            v44 = v173.i64[0];
            goto LABEL_75;
          }
        }

        else if (v46 < *v44)
        {
          v69 = 0;
          v48[4 * v46 + 1] = 0;
          v54 = v46;
LABEL_75:
          *&v48[4 * v54 + 2] = v69;
        }

LABEL_76:
        ++v46;
      }

      while (v46 < *v172);
    }

    if (!v44)
    {
      v158 = sub_5544(14);
      v159 = *v158;
      if (*v158 && os_log_type_enabled(*v158, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Common2.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 1239;
        _os_log_impl(&dword_0, v159, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): outputActive cannot be true while clientBufferList_Output is nullptr, and inversely.", &buf, 0x12u);
      }

      v160 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v160, "outputActive cannot be true while clientBufferList_Output is nullptr, and inversely.");
    }

    v70 = 1;
  }

  if (v70)
  {
    v71 = v173.i64[0];
    v72 = *v173.i64[0];
    __chkstk_darwin(a1);
    v168.i64[0] = &v161 - ((v72 + 15) & 0x1FFFFFFF0);
    bzero(v168.i64[0], v72);
    __chkstk_darwin(v73);
    v75 = (&v161 - v74);
    bzero(&v161 - v74, v76);
    v77 = *v71;
    *v75 = v77;
    if (v77)
    {
      v78 = 2;
      do
      {
        *&v75[v78] = *&v71[v78];
        v78 += 4;
        --v77;
      }

      while (v77);
    }
  }

  else
  {
    v168.i64[0] = 0;
    v75 = 0;
  }

  v79 = v174;
  v80 = v167;
  v81 = *(v174 + 484) != 1 || v167 == 0;
  if (!v81 && *v167)
  {
    v82 = 0;
    v83 = (v167 + 4);
    do
    {
      bzero(*v83, *(v83 - 1));
      ++v82;
      v83 += 2;
    }

    while (v82 < *v80);
  }

  (*(v79 + 576))(v165, v164, v80, v169, v75, v170, *(v79 + 584));
  if (v70)
  {
    if ((*(*v174 + 480))(v174))
    {
      v70 = 1;
    }

    else
    {
      v84 = v172;
      if (*v172)
      {
        v85 = 0;
        v86 = (v172 + 4);
        do
        {
          bzero(*v86, *(v86 - 1));
          ++v85;
          v86 += 2;
        }

        while (v85 < *v84);
      }

      v70 = 0;
    }
  }

  v87 = v174;
  if (v75)
  {
    v88 = *v75;
    if (v88)
    {
      v89 = v75 + 3;
      v90 = v168.i64[0];
      do
      {
        if (v70)
        {
          v91 = *v89;
          *v90 = *v89 == 0;
          if (!v91)
          {
            goto LABEL_108;
          }
        }

        else
        {
          *v90 = 0;
        }

        *(v87 + 960) = 0;
LABEL_108:
        ++v90;
        v89 += 4;
        --v88;
      }

      while (v88);
    }
  }

  v92 = v174;
  if (v70)
  {
    v93 = *(v174 + 904);
    v94 = *(v174 + 896);
    v95 = v93 - v94;
    if (v93 == v94)
    {
      v97 = 0;
    }

    else
    {
      v96 = 0;
      LODWORD(v97) = 0;
      v98 = v95 >> 3;
      while (!*(v94 + 8 * v96))
      {
        LODWORD(v97) = v97 + 1;
        v96 = v97;
        if (v98 <= v97)
        {
          LODWORD(v97) = 0;
          break;
        }
      }

      v97 = v97;
    }

    v99 = (*(**(v94 + 8 * v97) + 104))(*(v94 + 8 * v97), v172[3]);
    if (!v99)
    {
      v155 = sub_5544(14);
      v156 = *v155;
      if (*v155 && os_log_type_enabled(*v155, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "PolicyMute.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 133;
        _os_log_impl(&dword_0, v156, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
      }

      v157 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v157, "Precondition failure.");
    }

    v92 = v174;
    v100 = *(v174 + 960);
    LODWORD(v165) = v100 >> 6 < 0x177;
    v101 = v171;
    if (v100 >> 6 >= 0x177)
    {
      if (v100 > v99 + 24000)
      {
        LODWORD(v165) = 1;
        LODWORD(v167) = 1;
        goto LABEL_123;
      }

      v99 *= 2;
    }

    LODWORD(v167) = v100 >> 6 > 0x176;
    *(v174 + 960) = v100 + v99;
LABEL_123:
    v102 = *(v92 + 952);
    v103 = *(v92 + 956);
    v104 = v103 == 728788340;
    if (v103 == 728788340)
    {
      v105 = 3;
    }

    else
    {
      v105 = 2;
    }

    if (v102 == 728788340)
    {
      v104 = v105;
    }

    LODWORD(v169) = v104;
    v106 = *v172;
    if (v106)
    {
      v107 = 0;
      v108 = v172 + 2;
      v109 = v173.i64[0] + 8;
      LODWORD(v164) = v167 ^ 1;
      v111 = v102 == 728788340 && v103 == 728788340;
      LODWORD(v163) = v111;
      *&v162 = &v101[4 * v162];
      v171 = v172 + 2;
      do
      {
        v112 = &v108[4 * v107];
        v113 = *(*(v92 + 896) + 8 * v107);
        if (*(v112 + 1))
        {
          v114 = v113 == 0;
        }

        else
        {
          v114 = 1;
        }

        if (!v114)
        {
          v173.i32[0] = (*(*v113 + 168))(*(*(v92 + 896) + 8 * v107));
          v115 = *(*(v174 + 848) + 8 * v173.i32[0]);
          v176 = (*(*v115 + 72))(v115);
          v175 = (*(*v115 + 80))(v115);
          v116 = v115[72];
          v117 = (*(*v113 + 104))(v113, v112[1]);
          v118 = (*(*v115 + 40))(v115);
          v119 = *v115;
          if (v118)
          {
            v120 = (*(v119 + 168))(v115);
          }

          else
          {
            v121 = (*(v119 + 56))(v115);
            if ((*(v121 + 12) & 0x20) != 0)
            {
              v122 = *(v121 + 28);
            }

            else
            {
              v122 = 1;
            }

            __chkstk_darwin(v121);
            v120 = (&v161 - v123);
            bzero(&v161 - v123, v124);
            v120->mNumberBuffers = v122;
            if (v122)
            {
              v125 = v122;
              v126 = 8;
              v127 = v116;
              do
              {
                *(&v120->mNumberBuffers + v126) = *(v109 + 16 * v127++);
                v126 += 16;
                --v125;
              }

              while (v125);
            }

            v108 = v171;
          }

          if (*(v168.i64[0] + v116) == 1)
          {
            if ((v165 & 1) == 0)
            {
              if ((*(*v115 + 32))(v115))
              {
                v128 = (*(*v115 + 32))(v115);
                if (((*(*v128 + 80))(v128) & 1) == 0)
                {
                  v129 = (*(*v115 + 32))(v115);
                  sub_6AD0C(v129);
                }
              }
            }

            v130 = v118 & v164;
            if ((v118 & v164 & 1) != 0 || (*(v174 + 80) & 4) != 0)
            {
              v131 = v120->mNumberBuffers;
              if (v131)
              {
                v132 = 0;
                p_mData = &v120->mBuffers[0].mData;
                do
                {
                  if (*p_mData)
                  {
                    bzero(*p_mData, *(p_mData - 1));
                    v131 = v120->mNumberBuffers;
                  }

                  ++v132;
                  p_mData += 2;
                }

                while (v132 < v131);
              }
            }

            v134 = v118 & v167;
            if (((v130 | v163) & 1) == 0)
            {
              bzero(*(v112 + 1), v112[1]);
            }

            v108 = v171;
          }

          else
          {
            v134 = 0;
          }

          v135 = *v115;
          if (v118)
          {
            v136 = (*(v135 + 96))(v115);
          }

          else
          {
            v136 = (*(v135 + 56))(v115);
          }

          v137 = v136;
          if (*(v136 + 8) == 1819304813)
          {
            v138 = *(v174 + 88);
            *&buf.mNumberBuffers = 1;
            buf.mBuffers[0].mNumberChannels = 1;
            buf.mBuffers[0].mDataByteSize = v173.i32[0];
            if (v138)
            {
              sub_475310(v138, &buf, v120, v117, *v170);
            }

            sub_5AEC0(v174 + 144, v115[73], v120, v117, v170);
          }

          if ((v134 | v118 ^ 1))
          {
            if (v118)
            {
              v139 = v175;
            }

            else
            {
              v139 = v120;
            }

            sub_110AE0(v174 + 952, &v139->mNumberBuffers, v117, v137, v169);
          }

          else
          {
            v140 = (*(*v115 + 32))(v115);
            sub_90828(v140[73], v117, v120, v176);
            if (v166)
            {
              *&buf.mNumberBuffers = 1;
              buf.mBuffers[0] = *(v162 + 8);
              v177 = v176;
              p_buf = &buf;
              (*(*v140 + 21))(v140, v170, v117, 2, &v177, 1, &v175);
            }

            else
            {
              (*(*v140 + 21))(v140, v170, v117, 1, &v176, 1, &v175);
            }

            if (v118)
            {
              v141 = v175;
            }

            else
            {
              v141 = v120;
            }

            sub_110AE0(v174 + 952, &v141->mNumberBuffers, v117, v137, v169);
            v142 = (*(*v115 + 32))(v115);
            *&buf.mNumberBuffers = 1;
            buf.mBuffers[0] = *v112;
            sub_90828(*(v142 + 672), v117, v175, &buf);
            sub_5AEC0(v174 + 144, v115[74], &buf, v117, v170);
          }

          v143 = v172;
          v92 = v174;
          if (*(v137 + 8) == 1819304813)
          {
            v144 = *(v174 + 88);
            *&buf.mNumberBuffers = 1;
            buf.mBuffers[0].mNumberChannels = 2;
            buf.mBuffers[0].mDataByteSize = v173.i32[0];
            if (v144)
            {
              sub_475148(v144, &buf, v112, v117);
              v143 = v172;
              v92 = v174;
            }
          }

          v106 = *v143;
        }

        ++v107;
      }

      while (v107 < v106);
    }
  }

  v145 = v172;
  if (v172 && (*(v92 + 484) & 1) != 0 && *v172)
  {
    v146 = 0;
    v147 = (v172 + 4);
    do
    {
      bzero(*v147, *(v147 - 1));
      ++v146;
      v147 += 2;
    }

    while (v146 < *v145);
  }

  return 0;
}

void sub_110AE0(uint64_t a1, unsigned int *a2, unsigned int a3, double *a4, int a5)
{
  if (!a3)
  {
    v72 = sub_5544(14);
    v73 = *v72;
    if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "PolicyMute.cpp";
      v99 = 1024;
      v100 = 64;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((a5 - 1) >= 2)
  {
    if (a5)
    {
      v22 = *a2;
      if (v22)
      {
        v23 = 0;
        v24 = (a2 + 4);
        do
        {
          if (*v24)
          {
            bzero(*v24, *(v24 - 1));
            v22 = *a2;
          }

          ++v23;
          v24 += 2;
        }

        while (v23 < v22);
      }
    }
  }

  else
  {
    v97 = 0;
    v96 = 0;
    if (sub_1D1D48(a4, &v97, &v96))
    {
      if (v97 != 1)
      {
        if (v97 == 3)
        {
          v25 = *(a4 + 7);
          if (v96 || v25 == 1)
          {
            v26 = *(a2 + 2);
            if (!v26)
            {
              v78 = sub_5544(14);
              v79 = *v78;
              if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 168;
                _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v80 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v80, "Precondition failure.");
            }

            if (!v25)
            {
              v87 = sub_5544(14);
              v88 = *v87;
              if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 170;
                _os_log_impl(&dword_0, v88, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v89 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v89, "Precondition failure.");
            }

            v27 = *a4;
            if (*a4 <= 0.0)
            {
              v93 = sub_5544(14);
              v94 = *v93;
              if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 171;
                _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v95 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v95, "Precondition failure.");
            }

            v13 = 762342772;
            v28 = (v27 * 0.03);
            if (v28 >= a3)
            {
              v29 = a3;
            }

            else
            {
              v29 = (v27 * 0.03);
            }

            v30 = 0x1000000 / v29;
            v31 = *(a1 + 4);
            if (v31 == 762342772)
            {
              v30 = -v30;
            }

            v32 = (v31 == 762342772) << 24;
            if (v25 == 1)
            {
              if (v29 <= 1)
              {
                v60 = 1;
              }

              else
              {
                v60 = v29;
              }

              v61 = v30 + v32;
              v62 = *(a2 + 2);
              do
              {
                *v62 = (v61 * *v62) >> 24;
                ++v62;
                v61 += v30;
                --v60;
              }

              while (v60);
            }

            else if (v25 == 2)
            {
              if (v29 <= 1)
              {
                v33 = 1;
              }

              else
              {
                v33 = v29;
              }

              v34 = v30 + v32;
              v35 = *(a2 + 2);
              do
              {
                v36 = (v34 * v35[1]) >> 24;
                *v35 = (v34 * *v35) >> 24;
                v35[1] = v36;
                v35 += 2;
                v34 += v30;
                --v33;
              }

              while (v33);
            }

            else
            {
              v66 = sub_5544(14);
              v67 = *v66;
              if (*v66 && os_log_type_enabled(*v66, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 231;
                _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected number of channels", __p, 0x12u);
              }
            }

            if (v31 != 762342772)
            {
              goto LABEL_117;
            }

            v13 = 728788340;
            if (v28 >= a3)
            {
              goto LABEL_117;
            }

            v68 = 4 * v25 * (a3 - v29);
            v69 = (v26 + 4 * v29 * v25);
            goto LABEL_116;
          }
        }

        else if (v97 == 2)
        {
          v10 = *(a4 + 7);
          if (v96 || v10 == 1)
          {
            v11 = *(a2 + 2);
            if (!v11)
            {
              v75 = sub_5544(14);
              v76 = *v75;
              if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 168;
                _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v77 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v77, "Precondition failure.");
            }

            if (!v10)
            {
              v84 = sub_5544(14);
              v85 = *v84;
              if (*v84 && os_log_type_enabled(*v84, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 170;
                _os_log_impl(&dword_0, v85, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v86 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v86, "Precondition failure.");
            }

            v12 = *a4;
            if (*a4 <= 0.0)
            {
              v90 = sub_5544(14);
              v91 = *v90;
              if (*v90 && os_log_type_enabled(*v90, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 171;
                _os_log_impl(&dword_0, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
              }

              v92 = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(v92, "Precondition failure.");
            }

            v13 = 762342772;
            v14 = (v12 * 0.03);
            if (v14 >= a3)
            {
              v15 = a3;
            }

            else
            {
              v15 = (v12 * 0.03);
            }

            LODWORD(v16) = 0x8000 / v15;
            v17 = *(a1 + 4);
            if (v17 == 762342772)
            {
              v16 = -v16;
            }

            else
            {
              v16 = v16;
            }

            v18 = (v17 == 762342772) << 15;
            if (v10 == 1)
            {
              if (v15 <= 1)
              {
                v63 = 1;
              }

              else
              {
                v63 = v15;
              }

              v64 = v18 + v16;
              v65 = *(a2 + 2);
              do
              {
                *v65 = (v64 * *v65) >> 15;
                ++v65;
                v64 += v16;
                --v63;
              }

              while (v63);
            }

            else if (v10 == 2)
            {
              if (v15 <= 1)
              {
                v19 = 1;
              }

              else
              {
                v19 = v15;
              }

              v20 = v18 + v16;
              v21 = *(a2 + 2);
              do
              {
                *v21 = (v20 * *v21) >> 15;
                v21[1] = (v20 * v21[1]) >> 15;
                v21 += 2;
                v20 += v16;
                --v19;
              }

              while (v19);
            }

            else
            {
              v70 = sub_5544(14);
              v71 = *v70;
              if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
              {
                *__p = 136315394;
                *&__p[4] = "PolicyMute.cpp";
                v99 = 1024;
                v100 = 231;
                _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected number of channels", __p, 0x12u);
              }
            }

            if (v17 != 762342772)
            {
              goto LABEL_117;
            }

            v13 = 728788340;
            if (v14 >= a3)
            {
              goto LABEL_117;
            }

            v68 = 2 * v10 * (a3 - v15);
            v69 = (v11 + 2 * v15 * v10);
LABEL_116:
            bzero(v69, v68);
LABEL_117:
            *(a1 + 4) = v13;
            return;
          }
        }

LABEL_53:
        sub_5544(14);
        sub_618A4(__p);
      }

      if (v96 && *(a4 + 7) != 1)
      {
        goto LABEL_53;
      }

      if (*a4 <= 0.0)
      {
        v81 = sub_5544(14);
        v82 = *v81;
        if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "PolicyMute.cpp";
          v99 = 1024;
          v100 = 257;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
        }

        v83 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v83, "Precondition failure.");
      }

      v41 = 762342772;
      v42 = (*a4 * 0.03);
      if (v42 >= a3)
      {
        v43 = a3;
      }

      else
      {
        v43 = v42;
      }

      v44 = 1.0;
      v45 = 1.0 / v43;
      v46 = *(a1 + 4);
      if (v46 == 762342772)
      {
        v45 = -v45;
      }

      else
      {
        v44 = 0.0;
      }

      v47 = *a2;
      if (v47 == 1)
      {
        if (v42)
        {
          v51 = *(a2 + 2);
          v52 = v43;
          do
          {
            v44 = v45 + v44;
            *v51 = v44 * *v51;
            ++v51;
            --v52;
          }

          while (v52);
        }
      }

      else if (v47 == 2)
      {
        if (v42)
        {
          v48 = *(a2 + 2);
          v49 = *(a2 + 4);
          v50 = v43;
          do
          {
            v44 = v45 + v44;
            *v48 = v44 * *v48;
            ++v48;
            *v49 = v44 * *v49;
            ++v49;
            --v50;
          }

          while (v50);
        }
      }

      else if (v42)
      {
        v53 = 0;
        do
        {
          v44 = v45 + v44;
          v54 = (a2 + 4);
          v55 = v47;
          if (v47)
          {
            do
            {
              v56 = *v54;
              v54 += 2;
              *(v56 + 4 * v53) = v44 * *(v56 + 4 * v53);
              --v55;
            }

            while (v55);
          }

          ++v53;
        }

        while (v53 != v43);
      }

      if (v46 == 762342772)
      {
        v41 = 728788340;
        if (v42 < a3)
        {
          if (v47)
          {
            v57 = 0;
            v58 = 4 * (a3 - v43);
            v59 = 4;
            do
            {
              bzero((*&a2[v59] + 4 * v43), v58);
              ++v57;
              v59 += 4;
            }

            while (v57 < *a2);
          }
        }
      }

      *(a1 + 4) = v41;
    }

    else
    {
      if (a5 == 1)
      {
        v37 = 762342772;
      }

      else
      {
        v37 = 728788340;
      }

      *(a1 + 4) = v37;
      if (a5 != 1)
      {
        v38 = *a2;
        if (v38)
        {
          v39 = 0;
          v40 = (a2 + 4);
          do
          {
            if (*v40)
            {
              bzero(*v40, *(v40 - 1));
              v38 = *a2;
            }

            ++v39;
            v40 += 2;
          }

          while (v39 < v38);
        }
      }
    }
  }
}

uint64_t sub_1116B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *a2;
      if (v7)
      {
        if (*(*v7 + 152))(v7) && ((*(*v7 + 160))(v7))
        {
          v8 = *(*a1 + 8);
          if (!v8)
          {
            goto LABEL_14;
          }

          v9 = v7[36];
          v10 = *a1 + 8;
          do
          {
            v11 = *(v8 + 28);
            v12 = v11 >= v9;
            v13 = v11 < v9;
            if (v12)
            {
              v10 = v8;
            }

            v8 = *(v8 + 8 * v13);
          }

          while (v8);
          if (v10 == *a1 + 8 || v9 < *(v10 + 28))
          {
LABEL_14:
            v14 = 1;
LABEL_25:
            sub_1A8C0(v6);
            return v14;
          }

          v24 = sub_5544(8);
          if (*(v24 + 8))
          {
            v25 = *v24;
            if (*v24)
            {
              if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(__p, v7[36]);
                if (v28 >= 0)
                {
                  v26 = __p;
                }

                else
                {
                  v26 = __p[0];
                }

                *buf = 136315650;
                v30 = "RouteUtilities.h";
                v31 = 1024;
                v32 = 672;
                v33 = 2080;
                v34 = v26;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port's type (%s) is disallowed.", buf, 0x1Cu);
                if (v28 < 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        else
        {
          v15 = sub_5544(8);
          if (*(v15 + 8))
          {
            v16 = *v15;
            if (*v15)
            {
              if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
              {
                v17 = (*(*v7 + 152))(v7);
                v18 = (*(*v7 + 160))(v7);
                v19 = "not connected";
                if (v17)
                {
                  v19 = "connected";
                }

                v30 = "RouteUtilities.h";
                v31 = 1024;
                v32 = 664;
                *buf = 136315906;
                v33 = 2080;
                v34 = v19;
                if (v18)
                {
                  v20 = "routable";
                }

                else
                {
                  v20 = "not routable";
                }

                v35 = 2080;
                v36 = v20;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port is %s and %s.", buf, 0x26u);
              }
            }
          }
        }

        v14 = 0;
        goto LABEL_25;
      }

      sub_1A8C0(v5);
    }
  }

  v21 = sub_5544(8);
  if (*(v21 + 8))
  {
    v22 = *v21;
    if (*v21)
    {
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v30 = "RouteUtilities.h";
        v31 = 1024;
        v32 = 680;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Disallowed iterator position: port has expired.", buf, 0x12u);
      }
    }
  }

  return 0;
}

BOOL sub_111B6C(uint64_t a1, int a2)
{
  v4 = a1 + 48;
  sub_26C0(a1 + 48);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v5 == v6)
  {
    v9 = 0;
  }

  else
  {
    v7 = v5 + 24;
    do
    {
      v8 = (*(**(v7 - 16) + 160))(*(v7 - 16));
      v9 = v8 == a2;
      v10 = v8 == a2 || v7 == v6;
      v7 += 24;
    }

    while (!v10);
  }

  sub_3174(v4);
  return v9;
}

uint64_t sub_111C38(uint64_t a1, uint64_t **a2, uint64_t a3, int *a4)
{
  v4 = *(a3 + 4);
  if (v4 != 1986098036 && v4 != 1987208039)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "AlternateVAD.cpp";
        v16 = 1024;
        v17 = 531;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (sub_111E54() != 1 && sub_9C594(1885892674, *a2, a2[1]) && sub_343EB8(1701869160, *a2, a2[1]))
  {
    v8 = *a4;
    result = 1;
    if (*a4 > 1751414370)
    {
      if (v8 != 1986357346)
      {
        v10 = 1751414371;
LABEL_14:
        if (v8 != v10)
        {
          return result;
        }
      }
    }

    else if (v8 != 1651794544)
    {
      v10 = 1651795060;
      goto LABEL_14;
    }
  }

  if (!sub_9C594(1886614639, *a2, a2[1]) || (result = 1, *a4 != 1752132965) && *a4 != 1987012963)
  {
    LODWORD(result) = sub_9C630(*a2, a2[1]);
    if (*a4 == 1651794544)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_111E54()
{
  sub_1123D0(&v14, @"preferredOutputRoute_v2", @"com.apple.siri.CarBluetooth");
  if (!v14)
  {
    v1 = *sub_5544(14);
    v2 = v1;
    if (!v1 || !os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315394;
    v18 = "RunTimeDefaults.mm";
    v19 = 1024;
    v20 = 2177;
    v3 = "%25s:%-5d  !hasValue va::SiriCarKitPreferredOutputRoute::HFP";
    goto LABEL_15;
  }

  if (v16 < 0)
  {
    if (*(&__p + 1) != 3)
    {
      if (*(&__p + 1) == 4)
      {
        if (*__p == 1346646593)
        {
          goto LABEL_36;
        }
      }

      else if (*(&__p + 1) == 13 && *__p == 0x7053656369766544 && *(__p + 5) == 0x72656B6165705365)
      {
LABEL_27:
        v6 = *sub_5544(14);
        v2 = v6;
        if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v18 = "RunTimeDefaults.mm";
          v19 = 1024;
          v20 = 2187;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d va::SiriCarKitPreferredOutputRoute::BuiltInSpeaker", buf, 0x12u);
        }

        v4 = 2;
        goto LABEL_17;
      }

      v4 = 1;
LABEL_46:
      operator delete(__p);
      return v4;
    }

    p_p = __p;
    goto LABEL_41;
  }

  if (v16 == 3)
  {
    p_p = &__p;
LABEL_41:
    v9 = *p_p;
    v10 = *(p_p + 2);
    if (v9 != 17992 || v10 != 80)
    {
      v4 = 1;
      if ((v16 & 0x80) == 0)
      {
        return v4;
      }

      goto LABEL_46;
    }

    v13 = *sub_5544(14);
    v2 = v13;
    if (!v13 || !os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v4 = 1;
      goto LABEL_17;
    }

    *buf = 136315394;
    v18 = "RunTimeDefaults.mm";
    v19 = 1024;
    v20 = 2197;
    v3 = "%25s:%-5d va::SiriCarKitPreferredOutputRoute::HFP";
LABEL_15:
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 0x12u);
    goto LABEL_16;
  }

  if (v16 != 4)
  {
    if (v16 != 13)
    {
      return 1;
    }

    if (__p != 0x7053656369766544 || *(&__p + 5) != 0x72656B6165705365)
    {
      return 1;
    }

    goto LABEL_27;
  }

  if (__p != 1346646593)
  {
    return 1;
  }

LABEL_36:
  v8 = *sub_5544(14);
  v2 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "RunTimeDefaults.mm";
    v19 = 1024;
    v20 = 2192;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d va::SiriCarKitPreferredOutputRoute::A2DP", buf, 0x12u);
  }

  v4 = 0;
LABEL_17:

  if (v16 < 0)
  {
    goto LABEL_46;
  }

  return v4;
}

void sub_1121D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_112204(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a2)
  {
    v6 = CFPreferencesCopyValue(a1, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = v8 == CFStringGetTypeID();
      v3 = v9;
      if (v9)
      {
        sub_48540(buf, v7);
        if (*(a3 + 23) < 0)
        {
          operator delete(*a3);
        }

        *a3 = *buf;
        *(a3 + 16) = *&buf[16];
      }

      else
      {
        v10 = *sub_5544(14);
        v11 = v10;
        if (v10)
        {
          v12 = v10;
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_48540(__p, a1);
            if (v16 >= 0)
            {
              v13 = __p;
            }

            else
            {
              v13 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = "RunTimeDefaults.mm";
            *&buf[12] = 1024;
            *&buf[14] = 134;
            *&buf[18] = 2080;
            *&buf[20] = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d The value for key %s is not a CFString.", buf, 0x1Cu);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_1123D0(BOOL *a1, const __CFString *a2, const __CFString *a3)
{
  v8 = 0uLL;
  v9 = 0;
  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = @"com.apple.audio.virtualaudio";
  }

  *a1 = sub_112204(a2, v5, &v8);
  v6 = a1 + 8;
  if (SHIBYTE(v9) < 0)
  {
    v7 = v8;
    sub_54A0(v6, v8, *(&v8 + 1));

    operator delete(v7);
  }

  else
  {
    *v6 = v8;
    *(v6 + 2) = v9;
  }
}

void sub_112470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_11248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_248A0(&v9, (a1 + 504), "", 64);
  v7 = (*(*v9 + 32))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_112528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_112540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_248A0(&v12, (a1 + 504), "", 72);
  (*(*v12 + 40))(v12, a2, a3, a4, a5, a6);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_112610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_112628(uint64_t a1, uint64_t a2)
{
  sub_248A0(&v5, (a1 + 504), "", 54);
  v3 = (*(*v5 + 16))(v5, a2);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_1126AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1126C4(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *a2;
      v13 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  if (*a2 <= 1986225517)
  {
    if (v3 > 1684633186)
    {
      if (v3 != 1684633187 && v3 != 1836478308)
      {
        result = 0;
        v7 = 1983013986;
        goto LABEL_28;
      }
    }

    else if (v3 != 1064725619 && v3 != 1668705648)
    {
      result = 0;
      v7 = 1684157046;
      goto LABEL_28;
    }

    return 4;
  }

  if (v3 > 1986817376)
  {
    if (v3 > 1987013740)
    {
      if (v3 == 2021027692)
      {
        return 16;
      }

      result = 0;
      v5 = 27757;
      goto LABEL_27;
    }

    if (v3 != 1986817377)
    {
      result = 0;
      v5 = 27748;
LABEL_27:
      v7 = v5 | 0x766F0000;
LABEL_28:
      if (v3 != v7)
      {
        return result;
      }
    }

    return 4;
  }

  if (v3 == 1986225518 || v3 == 1986229104)
  {
    return 4;
  }

  if (v3 == 1986290211)
  {
    return 16;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_112968(uint64_t a1, int *a2)
{
  result = 0;
  v3 = *a2;
  if (*a2 <= 1986225517)
  {
    if (v3 > 1684633186)
    {
      v4 = v3 == 1684633187 || v3 == 1836478308;
      v6 = 1983013986;
    }

    else
    {
      v4 = v3 == 1064725619 || v3 == 1668705648;
      v6 = 1684157046;
    }
  }

  else if (v3 <= 1986817376)
  {
    v4 = v3 == 1986225518 || v3 == 1986229104;
    v6 = 1986290211;
  }

  else
  {
    if (v3 > 1987013740)
    {
      v4 = v3 == 2021027692;
      v5 = 27757;
    }

    else
    {
      v4 = v3 == 1986817377;
      v5 = 27748;
    }

    v6 = v5 | 0x766F0000;
  }

  if (v4 || v3 == v6)
  {
    return 1;
  }

  return result;
}

uint64_t sub_112A54(uint64_t a1, uint64_t *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v8 = sub_5544(14);
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *a2;
      v11 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  result = 0;
  v4 = *a2;
  if (*a2 <= 1987013731)
  {
    v5 = v4 == 1836478308;
    v6 = 1986817377;
  }

  else
  {
    v5 = v4 == 1987013732 || v4 == 2021027692;
    v6 = 1987013741;
  }

  if (v5 || v4 == v6)
  {
    return 1;
  }

  return result;
}

float sub_112C38(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v23 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v17 = 2003332927;
LABEL_25:
    exception[2] = v17;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v21 = *a2;
      v24 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v17 = 1970171760;
    goto LABEL_25;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) != a5)
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v25 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v17 = 561211770;
    goto LABEL_25;
  }

  v13 = *a2;
  if (*a2 == 1986817377 || v13 == 1987013741)
  {
    result = *a6;
    a1[126] = *a6;
  }

  else if (v13 == 1987013732)
  {
    result = *a6;
    a1[125] = *a6;
  }

  return result;
}

uint64_t sub_11305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  sub_11319C(&v28, a6);
  v12 = v29;
  if (v29 != &v28)
  {
    v24 = a1;
    v25 = a2;
    v26 = a3;
    v27 = a4;
    do
    {
      v13 = v12[3];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        if (v14)
        {
          v15 = v14;
          v16 = v12[2];
          if (v16)
          {
            v17 = *a5;
            v18 = a5[1];
            while (v17 != v18)
            {
              v19 = *v17 + 16;
              v20 = *(*v17 + 24);
              if (v19 != v20)
              {
                do
                {
                  v21 = sub_10A9EC(v16, (v20 + 16));
                  if (v21)
                  {
                    break;
                  }

                  v20 = *(v20 + 8);
                }

                while (v19 != v20);
                if (v21)
                {
                  sub_1A8C0(v15);
                  v22 = sub_455CC(*(a6 + 144), v24, *(v24 + 32), v25, v26, v27);
                  goto LABEL_17;
                }
              }

              v17 += 8;
            }
          }

          sub_1A8C0(v15);
        }
      }

      v12 = v12[1];
    }

    while (v12 != &v28);
  }

  v22 = 0;
LABEL_17:
  sub_65310(&v28);
  return v22;
}

void sub_113188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_65310(va);
  _Unwind_Resume(a1);
}

void *sub_11319C(void *a1, uint64_t a2)
{
  v4 = a2 + 368;
  v5 = (*(*(a2 + 368) + 16))(a2 + 368);
  result = sub_1132E8(a1, *(a2 + 352), a2 + 344);
  if (v5)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void *sub_1132E8(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a2 != a3)
  {
    sub_11325C();
  }

  return result;
}

uint64_t sub_113374(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 448) == 1)
  {
    sub_26C0(a1 + 48);
    v3 = 0;
    v4 = *(a1 + 32) - *(a1 + 24);
    if (v4)
    {
      v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
      if (v5 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v5;
      }

      v7 = 8;
      do
      {
        v8 = *(a1 + 24);
        if ((*(**(v8 + v7) + 192))(*(v8 + v7)))
        {
          v3 = (*(**(v8 + v7) + 200))(*(v8 + v7)) + v3;
        }

        v7 += 24;
        --v6;
      }

      while (v6);
    }

    sub_3174(a1 + 48);
  }

  else
  {
    v3 = 0;
  }

  v9 = *(a1 + 1160);
  if (v9 && *(a1 + 799) == 1)
  {
    return (*(**v9 + 200))(*v9, a2) + v3;
  }

  return v3;
}

uint64_t sub_1134CC(os_unfair_lock_s *a1)
{
  v10 = 4;
  v11 = 0;
  if (sub_F5EFC(a1))
  {
    v2 = 1869968496;
  }

  else
  {
    v2 = 1768845428;
  }

  v9[0] = 1819569763;
  v9[1] = v2;
  v9[2] = 0;
  if (sub_A8EE8(a1, v9))
  {
    sub_A9054(a1, v9, 0, 0, &v10, &v11);
    return v11;
  }

  v4 = sub_5544(23);
  v5 = *v4;
  if (*v4)
  {
    result = os_log_type_enabled(*v4, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    sub_23148(__p, a1 + 2);
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    v13 = "VirtualStream.cpp";
    v14 = 1024;
    v15 = 886;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Virtual stream %s, does not support kAudioStreamPropertyLatency", buf, 0x1Cu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_11363C(uint64_t a1)
{
  v1 = sub_10C630(a1, v9, 1885762592);
  if (v1)
  {
    v5 = v1;
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "VirtualStream.cpp";
      v13 = 1024;
      v14 = 904;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: error getting current stream format", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v5;
  }

  v3 = v10 == 1667443507 || v10 == 1667509043;
  return (v10 | 0x100) == 0x6D74632B || v3;
}

uint64_t sub_113788(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 == 1936876644 || *a2 == 1936879204;
  if (!v2)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *v13 = 136315394;
        *&v13[4] = "AggregateDevice_CommonBase.cpp";
        *&v13[12] = 1024;
        *&v13[14] = 3144;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v13, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v4 = a2[1];
  if (v4 != 1869968496 && v4 != 1768845428)
  {
    return 0;
  }

  v2 = v4 == 1768845428;
  v6 = 616;
  if (v2)
  {
    v6 = 592;
  }

  v7 = a1 + v6;
  if (*(v7 + 16) != 1)
  {
    return 0;
  }

  sub_5659C(v13, (*(v7 + 8) + 16), "", 3151);
  v8 = (*(**v13 + 16))(*v13, a2);
  if (*&v13[8])
  {
    sub_1A8C0(*&v13[8]);
  }

  return v8;
}

uint64_t sub_113978(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != 1936879204)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *v23 = 136315394;
      *&v23[4] = "AggregateDevice_CommonBase.cpp";
      *&v23[12] = 1024;
      *&v23[14] = 3097;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v8 = sub_71E60(a2[1]);
  v9 = 640;
  if (v8)
  {
    v9 = 664;
  }

  v10 = a1 + v9;
  v11 = *(a1 + v9);
  v12 = *(v10 + 8);
  while (v11 != v12)
  {
    if (*(*v11 + 216))
    {
      v17 = sub_20A884(*(*(*v11 + 208) + 8));

      return sub_20A8FC(v17);
    }

    v11 += 16;
  }

  v13 = 616;
  if (a2[1] == 1768845428)
  {
    v13 = 592;
  }

  v14 = a1 + v13;
  if (*(a1 + v13 + 16) != 1)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18)
    {
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *v23 = 136315394;
        *&v23[4] = "AggregateDevice_CommonBase.cpp";
        *&v23[12] = 1024;
        *&v23[14] = 3119;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because the appropriate device list's size is not 1.", v23, 0x12u);
      }
    }
  }

  sub_5659C(v23, (*(v14 + 8) + 16), "", 3120);
  v15 = (*(**v23 + 32))(*v23, a2, a3, a4);
  if (*&v23[8])
  {
    sub_1A8C0(*&v23[8]);
  }

  return v15;
}

void sub_113C5C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int *a5, void *a6)
{
  if (*a2 != 1936879204)
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3041;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = *a5;
  if (v12 < (*(*a1 + 32))(a1))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      v36 = *a2;
      v37 = a2[2];
      sub_22CE0(&__p);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  v13 = sub_71E60(a2[1]);
  v14 = 640;
  if (v13)
  {
    v14 = 664;
  }

  v15 = a1 + v14;
  v16 = *(a1 + v14);
  v17 = *(v15 + 8);
  while (v16 != v17)
  {
    if (*(*v16 + 216))
    {
      v20 = *(*v16 + 208);
      v21 = sub_20A884(v20[2]);
      v22 = sub_20A8FC(v21);
      v23 = *a5;
      if (v22 > v23)
      {
        v31 = v22;
        v32 = sub_5544(14);
        v33 = *v32;
        if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
        {
          v34 = *a5;
          *buf = 136315906;
          *&buf[4] = "AggregateDevice_CommonBase.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 3053;
          v40 = 1024;
          v41 = v34;
          v42 = 1024;
          v43 = v31;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): invalid AudioChannelLayout size for property kAudioDevicePropertyPreferredChannelLayout, given %u expected atleast %u bytes", buf, 0x1Eu);
        }

        v35 = __cxa_allocate_exception(0x10uLL);
        *v35 = &off_6DDDD0;
        v35[2] = 2003332927;
      }

      memcpy(a6, v20, v23);
      return;
    }

    v16 += 16;
  }

  v18 = 616;
  if (a2[1] == 1768845428)
  {
    v18 = 592;
  }

  v19 = a1 + v18;
  if (*(a1 + v18 + 16) != 1)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3064;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because the appropriate device list's size is not 1.", buf, 0x12u);
      }
    }
  }

  sub_5659C(buf, (*(v19 + 8) + 16), "", 3065);
  (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }
}

void sub_114190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1141D8(uint64_t a1, void *a2, void *a3)
{
  result = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  *a1 = result;
  *(a1 + 8) = 257;
  while (a2 != a3)
  {
    v7 = a2[1];
    v8 = a2;
    if (v7)
    {
      do
      {
        v9 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v9 = v8[2];
        v10 = *v9 == v8;
        v8 = v9;
      }

      while (!v10);
    }

    result = sub_A072C(a1, *(a2 + 7));
    a2 = v9;
  }

  return result;
}

uint64_t sub_11429C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != 1936876644)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "AggregateDevice_CommonBase.cpp";
      *&v16[12] = 1024;
      *&v16[14] = 3128;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v7 = 616;
  if (a2[1] == 1768845428)
  {
    v7 = 592;
  }

  v8 = a1 + v7;
  if (*(a1 + v7 + 16) != 1)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136315394;
        *&v16[4] = "AggregateDevice_CommonBase.cpp";
        *&v16[12] = 1024;
        *&v16[14] = 3131;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because the appropriate device list's size is not 1.", v16, 0x12u);
      }
    }
  }

  sub_5659C(v16, (*(v8 + 8) + 16), "", 3132);
  v9 = (*(**v16 + 32))(*v16, a2, a3, a4);
  if (*&v16[8])
  {
    sub_1A8C0(*&v16[8]);
  }

  return v9;
}

void sub_1144F4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (*a2 != 1936876644)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3071;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = *a5;
  if (v12 < (*(*a1 + 32))(a1))
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v22 = *a2;
      v23 = a2[2];
      sub_22CE0(&__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = 561211770;
  }

  v13 = 616;
  if (a2[1] == 1768845428)
  {
    v13 = 592;
  }

  v14 = a1 + v13;
  if (*(a1 + v13 + 16) != 1)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3075;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty should have blocked this code path because the appropriate device list's size is not 1.", buf, 0x12u);
      }
    }
  }

  sub_5659C(buf, (*(v14 + 8) + 16), "", 3076);
  (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }
}

void sub_1148B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1148F8(uint64_t a1, uint64_t *a2)
{
  if (a2[1] != a2)
  {
    v4 = a2;
    do
    {
      v5 = *(*v4 + 24);
      v6[0] = *(*v4 + 16);
      v6[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (sub_1166C4(*(a1 + 8), a1, v6) == a1)
      {
        operator new();
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v4 = *v4;
    }

    while (a2[1] != v4);
  }
}

void sub_1149E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_114A00(void *a1, uint64_t a2)
{
  v4 = a2 + 368;
  v5 = (*(*(a2 + 368) + 16))(a2 + 368);
  result = sub_80C2C(a1, a2 + 320);
  if (v5)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

BOOL sub_114ABC(uint64_t a1)
{
  v2 = a1 + 368;
  v3 = (*(*(a1 + 368) + 16))(a1 + 368);
  v4 = *(a1 + 336);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v4 != 0;
}

uint64_t sub_114B44(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_114C04(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_65310(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_114C50(uint64_t a1, unsigned int a2, uint64_t a3)
{
  sub_47BD8(a1);
  sub_11DC68(*(a1 + 672));
  *(a1 + 664) = a1 + 672;
  *(a1 + 672) = 0u;
  v8 = *(a3 + 8);
  v7 = a3 + 8;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) <= a2)
    {
      v13 = *(v9 + 48);
      if (v13 != v9 + 40)
      {
        sub_25704(&v21, (v13 + 16), "", 631);
        v14 = v21;
        v15 = sub_115164(a1 + 288, v21);
        if (a1 + 288 == v15 && (*(*&v14->_os_unfair_lock_opaque + 152))(v14))
        {
          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        if ((*(*&v14->_os_unfair_lock_opaque + 152))(v14))
        {
          *buf = v15;
          sub_11C288((a1 + 288), buf);
          sub_11C624(a1 + 288, v14);
        }

        if (!(*(*&v14->_os_unfair_lock_opaque + 160))(v14))
        {
          if (a1 + 288 == v15)
          {
            v16 = sub_5544(9);
            v17 = *v16;
            if (*v16)
            {
              if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                *&buf[4] = "PortManager.cpp";
                v24 = 1024;
                v25 = 653;
                v26 = 2048;
                v27 = v14;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to locate the disconnected Port at %p in PortManager's connected port list (yet). Adding to the disconnections list", buf, 0x1Cu);
              }
            }
          }

          if (v22)
          {
            atomic_fetch_add_explicit((v22 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        }

        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "PortManager.cpp";
          v24 = 1024;
          v25 = 644;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Illegal state. Port claims to be disconnected and routable.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Illegal state. Port claims to be disconnected and routable.");
      }
    }
  }

  sub_47C90(a1);
}

void sub_115058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_47C90(v16);
  _Unwind_Resume(a1);
}

void sub_1150D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_116190(v7, a1, a2);
  if (v7[2])
  {
    sub_1151A8(a1, v7, a3);
    sub_11ABFC(a1, v7, a4);
  }

  sub_D169C(v7[1]);
}

uint64_t sub_115164(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if (sub_84A28((a1 + 24), a2))
  {
    return sub_4740((v3 + 24), a2)[3];
  }

  return v3;
}

void sub_1151A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = 1;
  sub_26C0(a1);
  v8 = *(a2 + 8);
  v7 = a2 + 8;
  v6 = v8;
  if (v8)
  {
    v9 = v7;
    do
    {
      v10 = *(v6 + 32);
      v11 = v10 >= 0x66637275;
      v12 = v10 < 0x66637275;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != v7 && *(v9 + 32) < 0x66637276u)
    {
      v13 = v9 + 40;
      v14 = *(v9 + 48);
      if (v14 != v9 + 40)
      {
        do
        {
          sub_25704(&v18, (v14 + 16), "", 1275);
          v15 = v18;
          if (a1 + 288 != sub_115164(a1 + 288, v18) && (v15[92] & 0x40) != 0)
          {
            (*(*v15 + 440))(v15, a3);
          }

          else
          {
            v16 = sub_5544(9);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v23 = "PortManager.cpp";
              v24 = 1024;
              v25 = 1282;
              v26 = 2048;
              v27 = v15;
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port not available: %p. Skipping ... ", buf, 0x1Cu);
            }
          }

          if (v19)
          {
            sub_1A8C0(v19);
          }

          v14 = *(v14 + 8);
        }

        while (v14 != v13);
      }
    }
  }

  sub_3174(a1);
}

void sub_1153A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1153E4(uint64_t a1, int a2)
{
  v4 = a1 + 616;
  v35 = a1 + 616;
  v5 = (*(*(a1 + 616) + 16))(a1 + 616);
  v36 = v5;
  if ((*(a1 + 584) & 1) == 0 && a2)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v38 = "Port.cpp";
      *&v38[8] = 1024;
      *&v38[10] = 973;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): Ports cannot be set routable if not connected.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797556;
  }

  if (a2 && ((*(*a1 + 376))(a1) & 1) == 0)
  {
    v9 = sub_5544(24);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = &v32;
      (*(*a1 + 144))(&v32, a1);
      if (v34 < 0)
      {
        v11 = v32;
      }

      if (*(a1 + 303) < 0)
      {
        sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
      }

      else
      {
        *__dst = *(a1 + 280);
        v31 = *(a1 + 296);
      }

      v19 = SHIBYTE(v31);
      v20 = __dst[0];
      sub_22170(__p, *(a1 + 144));
      v21 = __dst;
      if (v19 < 0)
      {
        v21 = v20;
      }

      if (v29 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      *buf = 136316162;
      *v38 = "Port.cpp";
      *&v38[8] = 1024;
      *&v38[10] = 980;
      v39 = 2080;
      *v40 = v11;
      *&v40[8] = 2080;
      *&v40[10] = v21;
      *&v40[18] = 2080;
      *&v40[20] = v22;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Ignoring an attempt to set un-owned port routability for port with name %s, UID %s, and type '%s'", buf, 0x30u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }
    }
  }

  else
  {
    v6 = sub_5544(24);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = &v32;
      (*(*a1 + 144))(&v32, a1);
      if (v34 < 0)
      {
        v8 = v32;
      }

      if (*(a1 + 303) < 0)
      {
        sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
      }

      else
      {
        *__dst = *(a1 + 280);
        v31 = *(a1 + 296);
      }

      v12 = SHIBYTE(v31);
      v13 = __dst[0];
      sub_22170(__p, *(a1 + 144));
      v14 = __dst;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v29 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136316418;
      *v38 = "Port.cpp";
      *&v38[8] = 1024;
      *&v38[10] = 985;
      v39 = 1024;
      *v40 = a2;
      *&v40[4] = 2080;
      *&v40[6] = v8;
      *&v40[14] = 2080;
      *&v40[16] = v14;
      *&v40[24] = 2080;
      *&v40[26] = v15;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing port routability to %u for port with name %s, UID %s, and type '%s'", buf, 0x36u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v34 < 0)
      {
        operator delete(v32);
      }
    }

    v16 = *(a1 + 585);
    *(a1 + 585) = a2;
    if (v16 != a2)
    {
      sub_F7240(a1);
      v17 = atomic_load((a1 + 712));
      if (v17 != pthread_self())
      {
        v23 = sub_5544(14);
        v24 = *v23;
        if (*v23)
        {
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *v38 = "Port.cpp";
            *&v38[8] = 1024;
            *&v38[10] = 1052;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mutex not owned by current thread", buf, 0x12u);
          }
        }
      }

      sub_115B6C(buf, a1 + 592);
      sub_24F408(&v32, v4);
      __dst[0] = 0x676C6F6270697372;
      LODWORD(__dst[1]) = 0;
      for (i = *&v38[4]; buf != i; i = *(i + 8))
      {
        (*(i + 16))(0, 1, __dst, *(i + 24));
      }

      if (v33 == 1)
      {
        (*(*v32 + 16))(v32);
      }

      sub_4E0BC(buf);
    }
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void sub_1159A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_224F4C(&a25);
  _Unwind_Resume(a1);
}

void sub_115A44(uint64_t a1, unsigned int a2, int *a3, unsigned int *a4)
{
  if (a2)
  {
    v5 = a2;
    while (1)
    {
      v6 = *a3;
      a3 += 3;
      if (v6 == 1885959026)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }

    sub_49C48(&v12);
    v10 = 0x676C6F6270697372;
    v11 = 0;
    (*(*a4 + 88))(a4, 1, &v10, 1);
    v8 = 0x676C6F6270727473;
    v9 = 0;
    (*(**(a4 + 2) + 88))(*(a4 + 2), 1, &v8, 1);
    v7 = v12;
    v12 = 0;
    if (v7)
    {
      sub_1DB63C(v7);
      operator delete();
    }

    sub_11A8B8(a4);
  }
}

void *sub_115B6C(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

void sub_115C10(unsigned int *a1@<X0>, void *a2@<X8>)
{
  sub_22170(v9, a1[36]);
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(__p, __str);
  v4 = (*(*a1 + 152))(a1);
  std::to_string(&v7, v4);
  v5 = (*(*a1 + 160))(a1);
  std::to_string(&v6, v5);
  *__str = v9;
  v11 = a1;
  v12 = __p;
  v13 = &v7;
  v14 = &v6;
  sub_115E4C(a2, __str);
}