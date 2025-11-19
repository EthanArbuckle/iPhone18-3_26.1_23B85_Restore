BOOL sub_9C4E4(int a1, uint64_t *a2)
{
  sub_25704(&v8, a2, "", 903);
  if (*(v8 + 144) == a1)
  {
    v4 = 1;
  }

  else
  {
    sub_25704(&v6, a2 + 2, "", 904);
    v4 = *(v6 + 144) == a1;
    if (v7)
    {
      sub_1A8C0(v7);
    }
  }

  if (v9)
  {
    sub_1A8C0(v9);
  }

  return v4;
}

void sub_9C57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_9C594(int a1, uint64_t *a2, uint64_t *a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  while (1)
  {
    v4 = *a2;
    if (!*(*a2 + 4) && *v4 == 1986291046)
    {
      break;
    }

    if (++a2 == a3)
    {
      return 0;
    }
  }

  v6 = v4 + 16;
  v7 = *(v4 + 24);
  if (v7 == v4 + 16)
  {
    return 0;
  }

  do
  {
    result = sub_9C4E4(a1, (v7 + 16));
    if (result)
    {
      break;
    }

    v7 = *(v7 + 8);
  }

  while (v7 != v6);
  return result;
}

uint64_t sub_9C630(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  while (*(*a1 + 4) || **a1 != 1986291046)
  {
    if (++a1 == a2)
    {
      return 0;
    }
  }

  return sub_9C910(*a1);
}

void sub_9C674(void *a1, void *a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  for (i = a2[1]; i != a2; i = i[1])
  {
    v7 = i[5];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = v8;
        if (i[4])
        {
          v10 = *(a3 + 24);
          if (!v10)
          {
            sub_46A74();
          }

          if ((*(*v10 + 48))(v10))
          {
            v21 = 0;
            v22 = 0;
            v11 = i[5];
            if (v11)
            {
              v12 = std::__shared_weak_count::lock(v11);
              if (v12)
              {
                v13 = i[4];
                atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v21 = v13;
                v22 = v12;
                sub_1A8C0(v12);
              }

              else
              {
                v21 = 0;
                v22 = 0;
              }
            }

            sub_CB814(a1, &v21);
            if (v22)
            {
              std::__shared_weak_count::__release_weak(v22);
            }
          }
        }

        sub_1A8C0(v9);
      }
    }

    v14 = i[3];
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = v15;
        if (i[2])
        {
          v17 = *(a3 + 24);
          if (!v17)
          {
            sub_46A74();
          }

          if ((*(*v17 + 48))(v17))
          {
            v21 = 0;
            v22 = 0;
            v18 = i[3];
            if (v18)
            {
              v19 = std::__shared_weak_count::lock(v18);
              if (v19)
              {
                v20 = i[2];
                atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v21 = v20;
                v22 = v19;
                sub_1A8C0(v19);
              }

              else
              {
                v21 = 0;
                v22 = 0;
              }
            }

            sub_CB814(a1, &v21);
            if (v22)
            {
              std::__shared_weak_count::__release_weak(v22);
            }
          }
        }

        sub_1A8C0(v16);
      }
    }
  }
}

void sub_9C838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_1A8C0(v10);
  sub_4B0F4(*v11);
  _Unwind_Resume(a1);
}

uint64_t sub_9C878(void *a1, void *a2)
{
  v3[0] = off_6C29A8;
  v3[3] = v3;
  sub_9C674(a1, a2, v3);
  return sub_85148(v3);
}

void sub_9C8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_85148(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9C910(uint64_t a1)
{
  v2 = (a1 + 16);
  sub_9C878(v12, (a1 + 16));
  v3 = *(a1 + 24);
  if (v12[2] < 2uLL || v3 == v2)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  while (1)
  {
    v5 = v3[5];
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = std::__shared_weak_count::lock(v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v6;
    v8 = v3[4];
    if (!v8)
    {
      sub_1A8C0(v7);
      goto LABEL_11;
    }

    v9 = sub_34A918(v8);
    sub_1A8C0(v7);
    if (v9)
    {
      break;
    }

LABEL_11:
    v3 = v3[1];
    if (v3 == v2)
    {
      goto LABEL_12;
    }
  }

  v11 = 1;
LABEL_13:
  sub_4B0F4(v12[1]);
  return v11;
}

void sub_9C9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_1A8C0(v11);
  sub_4B0F4(a11);
  _Unwind_Resume(a1);
}

BOOL sub_9CA30(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = a2[36];
  if (v5 == 1885433888)
  {
    return 1;
  }

  v10 = sub_344360(a2, *a5, a5[1]);
  if (!(*(*a2 + 384))(a2) || v5 == 1885892674 && (sub_15E5EC(a2) & 1) == 0 && v10)
  {
    return 0;
  }

  v12 = *a3;
  if (*a3 == 1651795060 || v12 == 1751414371)
  {
LABEL_21:
    v18 = *(a3 + 31);
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(a3 + 16);
    }

    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v12 == 1986357346;
    }

    if (v19)
    {
      return a2[36] == 1886609775;
    }

    (*(*a2 + 408))(__p, a2);
    v20 = *(a3 + 31);
    if (v20 >= 0)
    {
      v21 = *(a3 + 31);
    }

    else
    {
      v21 = *(a3 + 16);
    }

    v22 = v32;
    v23 = v32;
    if ((v32 & 0x80u) != 0)
    {
      v22 = __p[1];
    }

    if (v21 == v22)
    {
      if (v20 >= 0)
      {
        v24 = (a3 + 8);
      }

      else
      {
        v24 = *(a3 + 8);
      }

      if ((v32 & 0x80u) == 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      v6 = memcmp(v24, v25, v21) == 0;
      if ((v23 & 0x80000000) == 0)
      {
        return v6;
      }
    }

    else
    {
      v6 = 0;
      if ((v32 & 0x80000000) == 0)
      {
        return v6;
      }
    }

    operator delete(__p[0]);
    return v6;
  }

  v13 = sub_DF1EC(*a3);
  if (v12 == 1684108899 || v13)
  {
    v12 = *a3;
    goto LABEL_21;
  }

  if (v10)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  v26 = &v27;
  v14 = *a5;
  v15 = a5[1];
  if (*a5 == v15)
  {
LABEL_18:
    v17 = 0;
    v6 = 1;
  }

  else
  {
    while (1)
    {
      v16 = *v14;
      if (!*(*v14 + 4) && *v16 == 1986291046)
      {
        break;
      }

      v14 += 8;
      if (v14 == v15)
      {
        goto LABEL_18;
      }
    }

    __p[0] = off_6C28D0;
    v33 = __p;
    sub_9C674(&v29, (v16 + 16), __p);
    sub_85148(__p);
    sub_7FE64(&v26, v29, &v30);
    sub_4B0F4(v30);
    v17 = v27;
    v6 = v28 == 0;
  }

  sub_4B0F4(v17);
  return v6;
}

void sub_9CD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_4B0F4(a14);
  sub_4B0F4(a11);
  _Unwind_Resume(a1);
}

void sub_9CD5C(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 568);
  v8 = *v6;
  v7 = v6[1];
  if (v7 != *v6)
  {
    do
    {
      v9 = v7 - 48;
      sub_86BF8((v7 - 32));
      v7 = v9;
    }

    while (v9 != v8);
  }

  v6[1] = v8;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v12 = *v10;
    v13 = **v10;
    v24 = *(*v10 + 2);
    v23 = v13;
    sub_9BED8(v25, (v12 + 2));
    v27 = v12[5];
    if (a1 + 440 == sub_9C238(a1 + 432, v23, HIDWORD(v23)))
    {
      v18 = sub_5544(14);
      v19 = *v18;
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1855;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v14 = v25[1];
    while (v25 != v14)
    {
      sub_25704(buf, v14 + 2, "", 1864);
      sub_25704(&v21, v14 + 4, "", 1865);
      if (sub_46398(*buf, a1 + 464) && (sub_46398(v21, a1 + 464) & 1) != 0)
      {
        v15 = 0;
LABEL_13:
        v14 = v14[1];
        goto LABEL_14;
      }

      if ((v14[8] & 1) == 0)
      {
        v15 = 1;
        goto LABEL_13;
      }

      v16 = *v14;
      v17 = v14[1];
      *(v16 + 8) = v17;
      *v17 = v16;
      --v26;
      sub_84F9C(v14 + 2);
      operator delete(v14);
      v15 = 0;
      v14 = v17;
LABEL_14:
      if (v22)
      {
        sub_1A8C0(v22);
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v15)
      {
        goto LABEL_23;
      }
    }

    if (!v26)
    {
LABEL_23:
      sub_86BF8(v25);
      sub_20301C(a3, 3);
      return;
    }

    sub_9D078(*(a1 + 568), &v23);
    sub_86BF8(v25);
    if (++v10 != v11)
    {
      continue;
    }

    break;
  }

LABEL_22:
  sub_21991C(a3, 1920099684);
}

uint64_t sub_9D078(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (v9 + 1 > 0x555555555555555)
    {
      sub_189A00();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v11 = 2 * v10;
    if (2 * v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v11;
    }

    v34 = a1;
    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      sub_6ACD8();
    }

    v13 = 48 * v9;
    v31 = 0;
    v32 = v13;
    v33 = v13;
    *v13 = *a2;
    *(v13 + 8) = *(a2 + 2);
    sub_9BED8((v13 + 16), (a2 + 2));
    *(v13 + 40) = a2[5];
    *&v33 = v33 + 48;
    v15 = *a1;
    v14 = a1[1];
    v16 = v32 + *a1 - v14;
    if (*a1 != v14)
    {
      v17 = 0;
      do
      {
        v18 = v16 + v17;
        v19 = (v15 + v17);
        v20 = *(v15 + v17);
        *(v18 + 8) = *(v15 + v17 + 8);
        *v18 = v20;
        v21 = v16 + v17 + 16;
        *(v18 + 16) = v21;
        *(v18 + 24) = v21;
        *(v18 + 32) = 0;
        v22 = *(v15 + v17 + 32);
        if (v22)
        {
          v24 = v19[2];
          v23 = v19[3];
          v25 = *(v24 + 8);
          v26 = *v23;
          *(v26 + 8) = v25;
          *v25 = v26;
          v27 = *(v18 + 16);
          *(v27 + 8) = v23;
          *v23 = v27;
          *(v18 + 16) = v24;
          *(v24 + 8) = v21;
          *(v18 + 32) = v22;
          v19[4] = 0;
        }

        *(v18 + 40) = v19[5];
        v17 += 48;
      }

      while (v15 + v17 != v14);
      do
      {
        sub_86BF8((v15 + 16));
        v15 += 48;
      }

      while (v15 != v14);
    }

    v28 = *a1;
    *a1 = v16;
    v29 = a1[2];
    v30 = v33;
    *(a1 + 1) = v33;
    *&v33 = v28;
    *(&v33 + 1) = v29;
    v31 = v28;
    v32 = v28;
    result = sub_9D2AC(&v31);
    v8 = v30;
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    result = sub_9BED8((v5 + 16), (a2 + 2));
    *(v5 + 40) = a2[5];
    v8 = v5 + 48;
    a1[1] = v5 + 48;
  }

  a1[1] = v8;
  return result;
}

void sub_9D28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_9D2AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_9D2AC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_86BF8((i - 32));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

os_signpost_id_t *sub_9D300(os_signpost_id_t *a1)
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
        v10 = 72;
        v11 = 2080;
        v12 = "kBuildAlternateRoutesAndActivateForNormal";
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
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_BuildAlternateRoutesAndActivateForNormal", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_9D490(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_9D49C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v4 = (a2 + 16);
  v5 = *(a2 + 24);
  if (v5 == (a2 + 16))
  {
    v13 = 0;
  }

  else
  {
    do
    {
      v7 = v5[3];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          if (v5[2] && sub_46398(v5[2], a3))
          {
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          sub_1A8C0(v9);
        }
      }

      v10 = v5[5];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          if (v5[4] && sub_46398(v5[4], a3))
          {
            atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            operator new();
          }

          sub_1A8C0(v12);
        }
      }

      v5 = v5[1];
    }

    while (v5 != v4);
    a1 = v3[1];
    v13 = v3[2];
  }

  sub_9D708(a1, v3, v13);
  v24[0] = v24;
  v24[1] = v24;
  v24[2] = 0;
  v14 = v3[1];
  if (v14 == v3)
  {
    goto LABEL_36;
  }

  do
  {
    v15 = v14[1];
    if (v15 == v3)
    {
      goto LABEL_35;
    }

    do
    {
      v16 = v14[3];
      if (v16)
      {
        v17 = std::__shared_weak_count::lock(v16);
        v18 = v14[2];
        if (v17)
        {
          v19 = v14[2];
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
        v17 = 0;
      }

      v20 = v15[3];
      if (v20)
      {
        v21 = std::__shared_weak_count::lock(v20);
        if (v21)
        {
          v22 = v19 == v15[2];
          sub_1A8C0(v21);
          if (!v17)
          {
            goto LABEL_30;
          }

LABEL_29:
          sub_1A8C0(v17);
          goto LABEL_30;
        }
      }

      v22 = v19 == 0;
      if (v17)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (!v22)
      {
        break;
      }

      v15 = v15[1];
    }

    while (v15 != v3);
    v23 = v14[1];
    if (v23 == v15)
    {
      v15 = v14[1];
    }

    else
    {
      sub_CFE14(v24, v24, v3, v23, v15);
    }

LABEL_35:
    v14 = v15;
  }

  while (v15 != v3);
LABEL_36:
  sub_65310(v24);
}

void sub_9D6D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v2);
  sub_1A8C0(v2);
  sub_65310(v1);
  _Unwind_Resume(a1);
}

unint64_t *sub_9D708(unint64_t *a1, unint64_t *a2, unint64_t a3)
{
  v3 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v6 = *a2;
      if (sub_87164((*a2 + 16), a1 + 2))
      {
        v8 = *v6;
        v7 = v6[1];
        *(v8 + 8) = v7;
        *v7 = v8;
        v9 = *v3;
        *(v9 + 8) = v6;
        *v6 = v9;
        *v3 = v6;
        v6[1] = v3;
        return v6;
      }
    }

    else
    {
      v11 = a3 >> 1;
      v12 = (a3 >> 1) + 1;
      v13 = a1;
      do
      {
        v13 = v13[1];
        --v12;
      }

      while (v12 > 1);
      v14 = sub_9D708(a1, v13, a3 >> 1);
      v3 = sub_9D708(v13, a2, a3 - v11);
      if (sub_87164(v3 + 2, v14 + 2))
      {
          ;
        }

        v17 = *i;
        v18 = *(*i + 8);
        v19 = *v3;
        *(v19 + 8) = v18;
        *v18 = v19;
        v20 = *v14;
        v16 = v14[1];
        *(v20 + 8) = v3;
        *v3 = v20;
        *v14 = v17;
        *(v17 + 8) = v14;
      }

      else
      {
        v16 = v14[1];
        i = v3;
        v3 = v14;
      }

      if (v16 != i && i != a2)
      {
        v21 = i;
        do
        {
          if (sub_87164(i + 2, v16 + 2))
          {
              ;
            }

            v23 = *j;
            v24 = *(*j + 8);
            v25 = *i;
            *(v25 + 8) = v24;
            *v24 = v25;
            if (v21 == i)
            {
              v21 = j;
            }

            v27 = *v16;
            v26 = v16[1];
            *(v27 + 8) = i;
            *i = v27;
            *v16 = v23;
            *(v23 + 8) = v16;
            v16 = v26;
            i = j;
          }

          else
          {
            v16 = v16[1];
          }
        }

        while (v16 != v21 && i != a2);
      }
    }
  }

  return v3;
}

uint64_t sub_9D8D8(uint64_t *a1, void *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_189A00();
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

  v18 = a1;
  if (v5)
  {
    sub_26A4C4(v5);
  }

  v15 = 0;
  v16 = 56 * v2;
  sub_9DA7C((56 * v2), a2);
  v17 = (56 * v2 + 56);
  v7 = *a1;
  v6 = a1[1];
  v19[0] = a1;
  v19[1] = &v21;
  v19[2] = &v22;
  v20 = 0;
  v8 = 56 * v2 + v7 - v6;
  v21 = v8;
  v22 = v8;
  if (v7 == v6)
  {
    v20 = 1;
  }

  else
  {
    v9 = v8;
    v10 = v7;
    do
    {
      sub_9DA7C(v9, v10);
      v10 += 56;
      v9 = (v22 + 56);
      v22 += 56;
    }

    while (v10 != v6);
    v20 = 1;
    do
    {
      sub_65310(v7 + 4);
      sub_65310(v7 + 1);
      v7 += 56;
    }

    while (v7 != v6);
  }

  sub_87EDC(v19);
  v11 = *a1;
  *a1 = v8;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_9DB0C(&v15);
  return v14;
}

void *sub_9DA7C(void *result, void *a2)
{
  *result = *a2;
  result[1] = result + 1;
  result[2] = result + 1;
  result[3] = 0;
  v2 = a2[3];
  if (v2)
  {
    v4 = a2[1];
    v3 = a2[2];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[1];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[1] = v4;
    *(v4 + 8) = result + 1;
    result[3] = v2;
    a2[3] = 0;
  }

  result[4] = result + 4;
  result[5] = result + 4;
  result[6] = 0;
  v8 = a2[6];
  if (v8)
  {
    v10 = a2[4];
    v9 = a2[5];
    v11 = *(v10 + 8);
    v12 = *v9;
    *(v12 + 8) = v11;
    *v11 = v12;
    v13 = result[4];
    *(v13 + 8) = v9;
    *v9 = v13;
    result[4] = v10;
    *(v10 + 8) = result + 4;
    result[6] = v8;
    a2[6] = 0;
  }

  return result;
}

uint64_t sub_9DB0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_65310((i - 24));
    sub_65310((i - 48));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_9DB70(uint64_t a1)
{
  *a1 = off_6BC228;
  sub_9DCD8(*(a1 + 440));
  v2 = *(a1 + 408);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = (a1 + 368);
  sub_9DD40(&v4);
  sub_4B064(a1 + 320);
  sub_4B064(a1 + 280);
  sub_4B064(a1 + 240);
  v4 = (a1 + 216);
  sub_11C50(&v4);
  v4 = (a1 + 192);
  sub_11C50(&v4);
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  sub_4B0F4(*(a1 + 136));
  sub_477A0(*(a1 + 104));
  sub_4B14C(*(a1 + 80));
  sub_4B0F4(*(a1 + 56));
  sub_477A0(*(a1 + 32));
  return a1;
}

void sub_9DC4C(uint64_t a1)
{
  *a1 = off_6BC288;
  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_477A0(*(a1 + 520));
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  sub_9DB70(a1);

  operator delete();
}

void sub_9DCD8(char *a1)
{
  if (a1)
  {
    sub_9DCD8(*a1);
    sub_9DCD8(*(a1 + 1));
    if (a1[88] == 1 && a1[87] < 0)
    {
      operator delete(*(a1 + 8));
    }

    operator delete(a1);
  }
}

void sub_9DD40(void ***a1)
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
        v4 = sub_1F3494(v4 - 472);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_9DDC4(void ***a1)
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
        v6 = v4 - 6;
        sub_86BF8(v4 - 4);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_9DE4C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_27A4();
  v17 = (*(qword_6E94F8 + 16))();
  v6 = a2[11];
  if (!v6 || (v7 = a2[10], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    sub_175EA0();
  }

  v9 = v8;
  v15 = v7;
  v16 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v10 = *(a1 + 48);
  if (!v10)
  {
LABEL_8:
    std::__shared_weak_count::__release_weak(v9);
    goto LABEL_9;
  }

  while (sub_87164(&v15, v10 + 4))
  {
LABEL_7:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  if (sub_87164(v10 + 4, &v15))
  {
    ++v10;
    goto LABEL_7;
  }

  v13 = sub_46398(a2, a3);
  std::__shared_weak_count::__release_weak(v9);
  if (!v13)
  {
LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  v15 = v7;
  v16 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *sub_871F0(a1 + 40, &v18, &v15);
  if (!v14)
  {
    sub_DE7DC("map::at:  key not found");
  }

  v11 = *(*(v14 + 48) + 8);
  std::__shared_weak_count::__release_weak(v9);
LABEL_10:
  sub_1A8C0(v9);
  sub_210C50(&v17);
  return v11;
}

void sub_9DFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  std::__shared_weak_count::__release_weak(v14);
  sub_1A8C0(v14);
  sub_210C50(&a14);
  _Unwind_Resume(a1);
}

void sub_9DFDC(os_signpost_id_t *a1)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_ConnectedPorts", 0x11uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v2 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v3 = qword_6F6848;
    v4 = v3;
    if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
    {
      LOWORD(v8) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VA_ConnectedPorts", "Query for ConnectedPortsForRouteConfiguration", &v8, 2u);
    }
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  v5 = sub_5544(43);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = 136315650;
        v9 = "SignpostUtilities.h";
        v10 = 1024;
        v11 = 60;
        v12 = 2080;
        v13 = "kConnectedPorts";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v8, 0x1Cu);
      }
    }
  }
}

BOOL sub_9E1F0(const __CFDictionary **a1)
{
  v2 = off_6CD9D0;
  v3 = 112;
  do
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    result = sub_47D0C(*a1, *v2);
    if (result)
    {
      v6 = sub_5544(14);
      v7 = sub_468EC(1, *v6, *(v6 + 8));
      v8 = v7;
      if (v7)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = v2[1];
          v11 = 136315906;
          v12 = "VirtualAudio_PlugIn.mm";
          v13 = 1024;
          v14 = 1179;
          v15 = 2080;
          v16 = "kVirtualAudioPlugInPropertyConnectedPortsForRouteConfiguration";
          v17 = 2080;
          v18 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v11, 0x26u);
        }
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      *v10 = &off_6DDDD0;
      v10[2] = 1852797029;
    }

    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  return result;
}

void **sub_9E3B4(void **a1, unsigned int *a2)
{
  v3 = sub_49DA0(*a1, a1[1], *a2);
  a1[1] = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

os_signpost_id_t *sub_9E45C(os_signpost_id_t *a1)
{
  v2 = sub_5544(43);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315650;
        v10 = "SignpostUtilities.h";
        v11 = 1024;
        v12 = 60;
        v13 = 2080;
        v14 = "kConnectedPorts";
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Ending measurement for signpost %s", &v9, 0x1Cu);
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

    v5 = qword_6F6848;
    v6 = v5;
    v7 = *a1;
    if (*a1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(v9) = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_ConnectedPorts", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_9E604(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_9E618(uint64_t a1, int a2)
{
  sub_27A4();
  v16 = (*(qword_6E94F8 + 16))();
  v4 = *(a1 + 40);
  v5 = (a1 + 48);
  if (v4 != (a1 + 48))
  {
    while (1)
    {
      v6 = v4[6];
      if (!v6)
      {
        v13 = sub_5544(14);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v18 = "VirtualAudio_PortManager.cpp";
          v19 = 1024;
          v20 = 202;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      if (*(v6 + 8) == a2)
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
        goto LABEL_15;
      }
    }
  }

  if (v4 == v5 || (v10 = v4[5]) == 0 || *(v10 + 8) == -1)
  {
LABEL_15:
    v11 = 0;
  }

  else
  {
    v11 = v4[6];
  }

  sub_210C50(&v16);
  return v11;
}

void sub_9E7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  __cxa_free_exception(v13);
  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

BOOL sub_9E804(const __CFDictionary **a1, uint64_t *a2)
{
  v4 = off_6CDB40;
  v5 = 128;
  do
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    result = sub_47D0C(*a1, *v4);
    if (result)
    {
      v8 = sub_5544(14);
      v9 = sub_468EC(1, *v8, *(v8 + 8));
      v10 = v9;
      if (v9)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = *a2;
          v12 = v4[1];
          v14 = 136315906;
          v15 = "VirtualAudio_PlugIn.mm";
          v16 = 1024;
          v17 = 1179;
          v18 = 2080;
          v19 = v11;
          v20 = 2080;
          v21 = v12;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v14, 0x26u);
        }
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      *v13 = &off_6DDDD0;
      v13[2] = 1852797029;
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  return result;
}

void sub_9E9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25704(&v27, (a2 + 88), "", 1211);
  v6 = v27;
  (*(*v27 + 176))(&v25, v27, a3);
  if (v25 == v26)
  {
    *a1 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
    *(a1 + 8) = 257;
    goto LABEL_30;
  }

  v23 = 0uLL;
  v24 = 0;
  if (((*(*v6 + 200))(v6) & 0x100000000) != 0)
  {
    v7 = (*(*v6 + 200))(v6);
  }

  else
  {
    v7 = sub_9F094(a2);
  }

  v8 = *&v7;
  if ((v7 & 0x100000000) != 0)
  {
    v12 = sub_5544(3);
    v13 = v8;
    if (*(v12 + 8))
    {
      v14 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v30 = "VirtualAudio_Port.cpp";
          v31 = 1024;
          v32 = 1226;
          v33 = 2048;
          v34 = v13;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Looking up active sub-port for beam direction: %f", buf, 0x1Cu);
        }
      }
    }

    v15 = (*(*v6 + 192))(v6, *(a3 + 4), v13);
    *buf = v15;
    LOBYTE(v30) = BYTE4(v15);
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v9 = sub_5544(3);
    if (*(v9 + 8))
    {
      v10 = *v9;
      if (*v9)
      {
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v30 = "VirtualAudio_Port.cpp";
          v31 = 1024;
          v32 = 1235;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Looking up active sub-port. (No beam)", buf, 0x12u);
        }
      }
    }

    v11 = (*(*v6 + 184))(v6, *(a3 + 4));
    *buf = v11;
    LOBYTE(v30) = BYTE4(v11);
    if ((v11 & 0x100000000) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_9EF84(&v23, buf);
LABEL_19:
  v16 = *(&v23 + 1);
  v17 = v23;
  if (v23 != *(&v23 + 1))
  {
    v18 = sub_5544(3);
    if (*(v18 + 8))
    {
      v19 = *v18;
      if (*v18)
      {
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(__p, *v17);
          if (v22 >= 0)
          {
            *&v20 = COERCE_DOUBLE(__p);
          }

          else
          {
            v20 = __p[0];
          }

          *buf = 136315650;
          v30 = "VirtualAudio_Port.cpp";
          v31 = 1024;
          v32 = 1243;
          v33 = 2080;
          v34 = *&v20;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Active sub-port is %s", buf, 0x1Cu);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  sub_A06B0(a1, v17, v16);
  if (v17)
  {
    operator delete(v17);
  }

LABEL_30:
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }
}

void sub_9EDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_9EE20(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  if (*a2 == 1668703084 || *a2 == 1668576377)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v4 = a2[1];
    v5 = 96;
    if (v4 <= 1987077986)
    {
      v6 = v4 == 1768057203;
      v7 = 1919776355;
    }

    else
    {
      v6 = v4 == 1987077987 || v4 == 1987081839;
      v7 = 1987081833;
    }

    if (v6 || v4 == v7)
    {
      v5 = 592;
    }

    sub_9EEB8(a3, v4, *(a1 + v5), *(a1 + v5 + 8));
  }
}

void sub_9EEB8(void *a1, int a2, int **a3, int **a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3 != a4)
  {
    v5 = a3;
    do
    {
      v8 = *v5;
      v9 = *(*v5 + 4);
LABEL_4:
      if (v9 != *(*v5 + 5))
      {
        for (i = *(v9 + 40); i != *(v9 + 48); ++i)
        {
          if (*i == a2)
          {
            v9 += 64;
            goto LABEL_4;
          }
        }

        if (v8[2] <= 0)
        {
          v11 = *v8;
          sub_9EF84(a1, &v11);
        }
      }

      v5 += 2;
    }

    while (v5 != a4);
  }
}

void sub_9EF68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_9EF84(uint64_t a1, int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (*a1 != v5)
  {
    v6 = *a1;
    while (*v6 != *a2)
    {
      v6 += 4;
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_7:
    v7 = *(a1 + 16);
    if (v5 >= v7)
    {
      v9 = v5 - v4;
      v10 = (v5 - v4) >> 2;
      v11 = v10 + 1;
      if ((v10 + 1) >> 62)
      {
        sub_189A00();
      }

      v12 = v7 - v4;
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
        sub_1D7C28(v13);
      }

      v14 = v10;
      v15 = (4 * v10);
      v16 = *a2;
      v17 = &v15[-v14];
      *v15 = v16;
      v8 = v15 + 1;
      memcpy(v17, v4, v9);
      v18 = *a1;
      *a1 = v17;
      *(a1 + 8) = v8;
      *(a1 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v5 = *a2;
      v8 = v5 + 4;
    }

    *(a1 + 8) = v8;
  }
}

uint64_t sub_9F094(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 8);
  sub_27A4();
  v25 = (*(qword_6E94F8 + 16))();
  v4 = *(v2 + 144);
  v5 = *(v2 + 152);
LABEL_2:
  if (v4 == v5)
  {
    sub_210C50(&v25);
  }

  else
  {
    v6 = 0;
    v7 = *v4;
    while (1)
    {
      v8 = v6;
      v9 = sub_9F278(v7, v6 & 1);
      v12 = *(v9 + 8);
      v10 = v9 + 8;
      v11 = v12;
      if (v12)
      {
        v13 = v10;
        do
        {
          v14 = *(v11 + 28);
          v15 = v14 >= v3;
          v16 = v14 < v3;
          if (v15)
          {
            v13 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v13 != v10 && *(v13 + 28) <= v3)
        {
          break;
        }
      }

      v6 = 1;
      if (v8)
      {
        ++v4;
        goto LABEL_2;
      }
    }

    v17 = (*(**(v7 + 872) + 400))(*(v7 + 872), 1685287015, 1818980210, 0);
    sub_210C50(&v25);
    if (v17 && sub_9F3E0(*(a1 + 80), *(a1 + 8), 1685287015, 1667524978))
    {
      v18 = *(a1 + 80);
      v19 = *(a1 + 8);
      v20 = 1685287015;
      v21 = 1667524978;
      goto LABEL_20;
    }
  }

  if (!sub_9F3E0(*(a1 + 80), *(a1 + 8), 1650814258, 0))
  {
    v23 = 0;
    v22 = 0.0;
    return v23 | LODWORD(v22);
  }

  v18 = *(a1 + 80);
  v19 = *(a1 + 8);
  v20 = 1650814258;
  v21 = 0;
LABEL_20:
  v22 = sub_3B4424(v18, v19, v20, v21);
  v23 = 0x100000000;
  return v23 | LODWORD(v22);
}

uint64_t sub_9F278(uint64_t a1, int a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "VirtualAudio_Device.cpp";
      v12 = 1024;
      v13 = 642;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = 880;
  if (a2)
  {
    v5 = 904;
  }

  return a1 + v5;
}

uint64_t sub_9F3E0(void *a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_27A4();
  v27 = (*(qword_6E94F8 + 16))();
  v8 = a1[27];
  if (*v8 == 1 && (*(v8 + 24) ? (v9 = a3 == 1650814258) : (v9 = 0), v9 ? (v10 = a4 == 0) : (v10 = 0), v10))
  {
    v25 = 1;
  }

  else
  {
    v11 = a1[18];
    if (a1[19] != v11)
    {
      v12 = 0;
      v13 = 0;
      while (2)
      {
        v14 = 0;
        v15 = *(v11 + 8 * v12);
        do
        {
          v16 = v14;
          v17 = sub_9F278(v15, v14 & 1);
          v20 = *(v17 + 8);
          v18 = v17 + 8;
          v19 = v20;
          if (v20)
          {
            v21 = v18;
            do
            {
              v22 = *(v19 + 28);
              v23 = v22 >= a2;
              v24 = v22 < a2;
              if (v23)
              {
                v21 = v19;
              }

              v19 = *(v19 + 8 * v24);
            }

            while (v19);
            if (v21 != v18 && *(v21 + 28) <= a2)
            {
              v25 = (*(**(v15 + 872) + 368))(*(v15 + 872), a3, a4, 0);
              goto LABEL_25;
            }
          }

          v14 = 1;
        }

        while ((v16 & 1) == 0);
        v11 = a1[18];
        v12 = ++v13;
        if (v13 < ((a1[19] - v11) >> 3))
        {
          continue;
        }

        break;
      }
    }

    v25 = 0;
  }

LABEL_25:
  sub_210C50(&v27);
  return v25;
}

uint64_t sub_9F584(uint64_t a1, int a2, int *a3)
{
  if (*(a1 + 96) == *(a1 + 104))
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v46 = 1024;
      v47 = 249;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if ((*(a1 + 124) & 1) == 0)
  {
    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v46 = 1024;
      v47 = 250;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v34, "Invariant failure.");
  }

  v5 = 1;
  if (a2 <= 1987077986)
  {
    if (a2 == 1768057203)
    {
      goto LABEL_11;
    }

    v6 = 1919776355;
  }

  else
  {
    if (a2 == 1987077987 || a2 == 1987081833)
    {
      goto LABEL_11;
    }

    v6 = 1987081839;
  }

  if (a2 != v6)
  {
    v5 = 0;
  }

LABEL_11:
  v7 = *(a1 + 120);
  v8 = sub_5544(24);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    sub_22170(__p, v7);
    v10 = v43 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
    v46 = 1024;
    v47 = 255;
    v48 = 1024;
    *v49 = v7;
    *&v49[4] = 2080;
    *&v49[6] = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Looking up client visible sub-port ID for %u (%s)", buf, 0x22u);
    if (v43 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v5)
  {
    v11 = 592;
  }

  else
  {
    v11 = 96;
  }

  sub_9FC1C(&v40, v7, (a1 + v11), a1 + 640, a3, (a1 + 632));
  v12 = v40;
  if (v40)
  {
    v13 = sub_5544(24);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, *v12);
      v15 = v43;
      v16 = __p[0];
      sub_22170(v38, v7);
      v17 = __p;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v39 >= 0)
      {
        v18 = v38;
      }

      else
      {
        v18 = v38[0];
      }

      *buf = 136315906;
      v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v46 = 1024;
      v47 = 264;
      v48 = 2080;
      *v49 = v17;
      *&v49[8] = 2080;
      *&v49[10] = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%25s:%-5d Returning client visible sub-port ID %s for active ID %s", buf, 0x26u);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (v43 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v19 = *v12;
  }

  else
  {
    if (v41)
    {
      sub_1A8C0(v41);
    }

    v21 = 616;
    if (v5)
    {
      v21 = 620;
    }

    v22 = *(a1 + v21);
    buf[0] = 0;
    LOBYTE(v45) = 0;
    LOBYTE(__p[0]) = 0;
    BYTE4(__p[0]) = 0;
    LOBYTE(v38[0]) = 0;
    BYTE4(v38[0]) = 0;
    sub_9FC1C(&v40, v22, (a1 + v11), buf, __p, v38);
    if (!v40)
    {
      if (v41)
      {
        sub_1A8C0(v41);
      }

      v35 = sub_5544(14);
      v36 = *v35;
      if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v46 = 1024;
        v47 = 280;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find client-visible sub-port for active ID or fallback.", buf, 0x12u);
      }

      v37 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v37, "Could not find client-visible sub-port for active ID or fallback.");
    }

    v19 = *v40;
    v23 = sub_5544(24);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, v7);
      v25 = v43;
      v26 = __p[0];
      sub_22170(v38, v19);
      v27 = __p;
      if (v25 < 0)
      {
        v27 = v26;
      }

      if (v39 >= 0)
      {
        v28 = v38;
      }

      else
      {
        v28 = v38[0];
      }

      *buf = 136315906;
      v45 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v46 = 1024;
      v47 = 275;
      v48 = 2080;
      *v49 = v27;
      *&v49[8] = 2080;
      *&v49[10] = v28;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%25s:%-5d The current active sub-port (%s) is not client-visible. Substituting sub-port ID: %s", buf, 0x26u);
      if (v39 < 0)
      {
        operator delete(v38[0]);
      }

      if (v43 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v41)
  {
    sub_1A8C0(v41);
  }

  return v19 | 0x100000000;
}

uint64_t sub_9FBF0(uint64_t a1, int a2)
{
  LOBYTE(v3) = 0;
  v4 = 0;
  return sub_9F584(a1, a2, &v3);
}

void sub_9FC1C(void *a1, unsigned int a2, __int128 **a3, uint64_t a4, int *a5, int *a6)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    goto LABEL_7;
  }

  do
  {
    if (sub_A03F8(*v8, a2, a5, a6))
    {
      sub_A0540(&v59, v8);
    }

    ++v8;
  }

  while (v8 != v9);
  v14 = (v60 - v59) >> 4;
  if (v14 == 1)
  {
    v18 = sub_5544(24);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, a2);
      v20 = SHIBYTE(v64);
      v21 = __p[0];
      sub_22170(&v62, **v59);
      v22 = __p;
      if (v20 < 0)
      {
        v22 = v21;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v62;
      }

      else
      {
        v23 = v62.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v66 = 1024;
      v67 = 146;
      v68 = 2080;
      v69 = v22;
      v70 = 2080;
      v71 = v23;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d Found match for internal sub-port ID %s: %s.", buf, 0x26u);
      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
      }

      goto LABEL_88;
    }
  }

  else
  {
    if (!v14)
    {
LABEL_7:
      v15 = sub_5544(24);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, a2);
        if (v64 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v66 = 1024;
        v67 = 139;
        v68 = 2080;
        v69 = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not find match for internal sub-port ID %s.", buf, 0x1Cu);
        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *a1 = 0;
      a1[1] = 0;
      goto LABEL_93;
    }

    v24 = sub_5544(24);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
    {
      sub_22170(v57, a2);
      if (v58 >= 0)
      {
        v26 = v57;
      }

      else
      {
        v26 = v57[0];
      }

      memset(&v56, 0, sizeof(v56));
      v27 = v59;
      v28 = v60;
      if (v59 == v60)
      {
        v37 = &v56;
      }

      else
      {
        v55 = v26;
        do
        {
          sub_22170(&v62, **v27);
          v29 = *(v60 - 16);
          v30 = *v27 == v29;
          v31 = *v27 != v29;
          if (v30)
          {
            v32 = "";
          }

          else
          {
            v32 = ", ";
          }

          v33 = std::string::append(&v62, v32, 2 * v31);
          v34 = *&v33->__r_.__value_.__l.__data_;
          v64 = v33->__r_.__value_.__r.__words[2];
          *__p = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (v64 >= 0)
          {
            v35 = __p;
          }

          else
          {
            v35 = __p[0];
          }

          if (v64 >= 0)
          {
            v36 = HIBYTE(v64);
          }

          else
          {
            v36 = __p[1];
          }

          std::string::append(&v56, v35, v36);
          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          v27 += 2;
        }

        while (v27 != v28);
        v26 = v55;
        v37 = &v56;
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v56.__r_.__value_.__r.__words[0];
        }
      }

      *buf = 136315906;
      *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v66 = 1024;
      v67 = 161;
      v68 = 2080;
      v69 = v26;
      v70 = 2080;
      v71 = v37;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Multiple matches found for internal sub-port ID %s: %s.", buf, 0x26u);
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }
    }

    if (*(a4 + 4) == 1)
    {
      v38 = v59;
      if (v59 != v60)
      {
        while (*a4 != **v38)
        {
          v38 += 16;
          if (v38 == v60)
          {
            v38 = v60;
            break;
          }
        }
      }

      if (v38 != a3[1])
      {
        v39 = sub_5544(24);
        v40 = *v39;
        if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_INFO))
        {
          sub_22170(__p, a2);
          v41 = SHIBYTE(v64);
          v42 = __p[0];
          sub_22170(&v62, *a4);
          v43 = __p;
          if (v41 < 0)
          {
            v43 = v42;
          }

          if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v44 = &v62;
          }

          else
          {
            v44 = v62.__r_.__value_.__r.__words[0];
          }

          *buf = 136315906;
          *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
          v66 = 1024;
          v67 = 171;
          v68 = 2080;
          v69 = v43;
          v70 = 2080;
          v71 = v44;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%25s:%-5d Found match for internal sub-port ID %s using client ID %s.", buf, 0x26u);
          if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v62.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v64) < 0)
          {
            operator delete(__p[0]);
          }
        }

        *a1 = *v38;
        v45 = *(v38 + 8);
        goto LABEL_91;
      }

      v46 = sub_5544(24);
      v47 = *v46;
      if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, a2);
        v48 = SHIBYTE(v64);
        v49 = __p[0];
        sub_22170(&v62, *a4);
        v50 = __p;
        if (v48 < 0)
        {
          v50 = v49;
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &v62;
        }

        else
        {
          v51 = v62.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v66 = 1024;
        v67 = 177;
        v68 = 2080;
        v69 = v50;
        v70 = 2080;
        v71 = v51;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to find match for internal sub-port ID %s using client ID %s.", buf, 0x26u);
        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v52 = sub_5544(24);
    v53 = *v52;
    if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_INFO))
    {
      sub_22170(__p, **v59);
      if (v64 >= 0)
      {
        v54 = __p;
      }

      else
      {
        v54 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v66 = 1024;
      v67 = 181;
      v68 = 2080;
      v69 = v54;
      _os_log_impl(&dword_0, v53, OS_LOG_TYPE_INFO, "%25s:%-5d Returning first matching sub-port %s.", buf, 0x1Cu);
LABEL_88:
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v45 = *(v59 + 8);
  *a1 = *v59;
LABEL_91:
  a1[1] = v45;
  if (v45)
  {
    atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_93:
  *buf = &v59;
  sub_72C14(buf);
}

void sub_A032C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char *a39)
{
  if (v40 < 0)
  {
    operator delete(v39);
  }

  a39 = &a23;
  sub_72C14(&a39);
  _Unwind_Resume(a1);
}

BOOL sub_A03F8(uint64_t a1, int a2, int *a3, int *a4)
{
  sub_A04EC(v11, *(a1 + 32), *(a1 + 40), a2);
  v7 = v11[0];
  if (v11[0] == v11[1] || *(a3 + 4) == 1 && (v14 = *a3, v15 = 1, LOBYTE(v12) = 0, v13 = 0, !sub_4D8FFC(a1, &v14, &v12)))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    if (*(a4 + 4) == 1)
    {
      v9 = *a4;
      LOBYTE(v14) = 0;
      v15 = 0;
      v12 = v9;
      v13 = 1;
      v8 = sub_4D8FFC(a1, &v14, &v12) != 0;
    }
  }

  if (v7)
  {
    operator delete(v7);
  }

  return v8;
}

void sub_A04D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A04EC(void *result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2 != a3)
  {
    while (*a2 != a4)
    {
      a2 += 64;
      if (a2 == a3)
      {
        goto LABEL_7;
      }
    }
  }

  if (a2 == a3)
  {
LABEL_7:
    *result = 0;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    return sub_46980(result, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return result;
}

size_t *sub_A0540(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = (v3 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_189A00();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_1DC690(v10);
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_A0650(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_A0650(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_1A8C0(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A06B0(uint64_t a1, int *a2, int *a3)
{
  result = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  *a1 = result;
  *(a1 + 8) = 257;
  while (a2 != a3)
  {
    v7 = *a2++;
    result = sub_A072C(a1, v7);
  }

  return result;
}

uint64_t sub_A072C(uint64_t result, int a2)
{
  if (*result)
  {
    v2 = result;
    if (*(result + 9) == 1)
    {
      valuePtr = a2;
      v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v4 = v3;
      v5 = 1;
      if (v3 && *v2 && *(v2 + 9) == 1)
      {
        CFArrayAppendValue(*v2, v3);
      }

      return sub_A07C4(&v4);
    }
  }

  return result;
}

void sub_A07B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A07C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A07C4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t sub_A0804(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

char *sub_A0844@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[279] < 0)
  {
    v3 = *(result + 33);
    if (v3)
    {
      v4 = *(result + 32);
      return sub_54A0(a2, v4, v3);
    }
  }

  else if (result[279])
  {
    *a2 = *(result + 16);
    v2 = *(result + 34);
LABEL_13:
    *(a2 + 16) = v2;
    return result;
  }

  if (result[255] < 0)
  {
    v3 = *(result + 30);
    if (v3)
    {
      v4 = *(result + 29);
      return sub_54A0(a2, v4, v3);
    }
  }

  else if (result[255])
  {
    *a2 = *(result + 232);
    v2 = *(result + 31);
    goto LABEL_13;
  }

  if ((result[231] & 0x80000000) == 0)
  {
    *a2 = *(result + 13);
    v2 = *(result + 28);
    goto LABEL_13;
  }

  v4 = *(result + 26);
  v3 = *(result + 27);
  return sub_54A0(a2, v4, v3);
}

void sub_A08C4(uint64_t a1, uint64_t a2)
{
  sub_25704(&v6, (a2 + 88), "", 1205);
  (*(*v6 + 176))(&__p);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  v3 = __p;
  v4 = v9;
  *a1 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  *(a1 + 8) = 257;
  while (v3 != v4)
  {
    v5 = *v3++;
    sub_A072C(a1, v5);
  }

  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_A0998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A09D8(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  v6 = *(a1 + 96);
  if (v6 == v5)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "Port.cpp";
      v31 = 1024;
      v32 = 586;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  while (1)
  {
    v8 = *v6;
    if (**v6 == a2)
    {
      break;
    }

    v6 += 2;
    if (v6 == v5)
    {
      goto LABEL_4;
    }
  }

  if (v6 == v5)
  {
LABEL_4:
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v27, a2);
      v12 = v28;
      v13 = v27[0];
      sub_22170(__p, *(a1 + 144));
      v14 = v27;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v26 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136315906;
      v30 = "Port.cpp";
      v31 = 1024;
      v32 = 593;
      v33 = 2080;
      v34 = v14;
      v35 = 2080;
      v36 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get name for unknown sub-port (%s) type on port with type %s.", buf, 0x26u);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Attempt to get name for unknown sub-port (%s) type on port with type %s.");
  }

  if (*(v8 + 79) < 0)
  {
    sub_54A0(a3, *(v8 + 7), *(v8 + 8));
  }

  else
  {
    v17 = *(v8 + 14);
    *(a3 + 16) = *(v8 + 9);
    *a3 = v17;
  }

  v18 = *(a3 + 23);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a3 + 8);
  }

  if (!v18)
  {
    v19 = sub_5544(24);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v27, a2);
        v21 = v28 >= 0 ? v27 : v27[0];
        *buf = 136315650;
        v30 = "Port.cpp";
        v31 = 1024;
        v32 = 598;
        v33 = 2080;
        v34 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Returning empty string for sub-port name.  Sub-port ID:%s", buf, 0x1Cu);
        if (v28 < 0)
        {
          operator delete(v27[0]);
        }
      }
    }
  }
}

void sub_A0D2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A0D78(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v4 != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v7;
        sub_1A8C0(v6);
        if (v8 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (*v7 == a2)
      {
        goto LABEL_8;
      }

      v4 += 2;
    }

    while (v4 != v5);
    v4 = v5;
LABEL_8:
    v5 = *(a1 + 104);
  }

  if (v4 == v5)
  {
    v15 = sub_5544(24);
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        result = os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG);
        if (!result)
        {
          return result;
        }

        sub_22170(v23, a2);
        v17 = v24;
        v18 = v23[0];
        sub_22170(__p, *(a1 + 144));
        v19 = v23;
        if (v17 < 0)
        {
          v19 = v18;
        }

        if (v22 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136315906;
        v26 = "Port.cpp";
        v27 = 1024;
        v28 = 635;
        v29 = 2080;
        v30 = v19;
        v31 = 2080;
        v32 = v20;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to locate unknown sub-port (%s) type on port with type %s.", buf, 0x26u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }
    }

    return 0;
  }

  v10 = *(*v4 + 4);
  v9 = *(*v4 + 5);
  if (v10 == v9)
  {
    return 0;
  }

  v11 = v10 + 64;
  do
  {
    v12 = *(v11 - 32);
    result = v12 != 1852796517;
    v14 = v12 != 1852796517 || v11 == v9;
    v11 += 64;
  }

  while (!v14);
  return result;
}

void sub_A0F60(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A0F80(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  if (v6 != v7)
  {
    do
    {
      v9 = *v6;
      v8 = v6[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        sub_1A8C0(v8);
        if (v10 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (*v9 == a2)
      {
        goto LABEL_8;
      }

      v6 += 2;
    }

    while (v6 != v7);
    v6 = v7;
LABEL_8:
    v7 = *(a1 + 104);
  }

  if (v6 == v7)
  {
LABEL_54:
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, a2);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      v41 = "Port_MicrophoneBuiltIn_Aspen.cpp";
      v42 = 1024;
      v43 = 377;
      v44 = 1024;
      LODWORD(v45[0]) = a2;
      WORD2(v45[0]) = 2080;
      *(v45 + 6) = p_p;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not find sub-port for id: %u (%s)", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Could not find sub-port for id: %u (%s)");
  }

  v12 = *v6;
  v11 = v6[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v12)
  {
    v14 = *(v12 + 32);
    v13 = *(v12 + 40);
    if (v14 == v13)
    {
      goto LABEL_62;
    }

    v15 = v14 + 64;
    do
    {
      v16 = *(v15 - 32);
      v17 = v16 != 1852796517 || v15 == v13;
      v15 += 64;
    }

    while (!v17);
    if (v16 == 1852796517)
    {
LABEL_62:
      v33 = sub_5544(14);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        sub_4D89A4(&__p, v12);
        v35 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v41 = "Port_MicrophoneBuiltIn_Aspen.cpp";
        v42 = 1024;
        v43 = 362;
        v44 = 2080;
        v45[0] = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Sub-port %s does not have any polar patterns", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v36, "Sub-port %s does not have any polar patterns");
    }

    else
    {
      if (*(v12 + 8) >= 2)
      {
        v18 = sub_5544(24);
        v19 = *v18;
        if (*v18)
        {
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
          {
            sub_4D89A4(&__p, v12);
            v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            v41 = "Port_MicrophoneBuiltIn_Aspen.cpp";
            v42 = 1024;
            v43 = 363;
            v44 = 2080;
            v45[0] = v20;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Accessing a sub-port that does not have client visibility: %s", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      if (*(a1 + 636) == 1)
      {
        a3 = *(a1 + 632);
        goto LABEL_50;
      }

      if (*(a3 + 4) == 1)
      {
        buf[0] = 0;
        LOBYTE(v41) = 0;
        v21 = sub_4D8FFC(v12, a3, buf);
        if (v21)
        {
          a3 = *(v21 + 32);
          goto LABEL_50;
        }
      }

      v22 = *(v12 + 32);
      v23 = *(v12 + 40);
      if (v22 != v23)
      {
        v24 = v22 + 64;
        do
        {
          v25 = *(v24 - 32);
          v26 = v25 != 1852796517 || v24 == v23;
          v24 += 64;
        }

        while (!v26);
        if (v25 != 1852796517)
        {
          if ((v23 - v22) >= 0x41)
          {
            v27 = *(v12 + 32);
            while (*(v27 + 32) != 1869442665)
            {
              v27 += 64;
              if (v27 == v23)
              {
                goto LABEL_49;
              }
            }

            v22 = v27;
          }

LABEL_49:
          a3 = *(v22 + 32);
          goto LABEL_50;
        }
      }

      v37 = sub_5544(14);
      v38 = *v37;
      if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v41 = "SubPort.cpp";
        v42 = 1024;
        v43 = 189;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v36, "Precondition failure.");
    }
  }

LABEL_50:
  if (v11)
  {
    sub_1A8C0(v11);
  }

  if (!v12)
  {
    goto LABEL_54;
  }

  return a3;
}

void sub_A1480(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

CFNumberRef *sub_A14D8(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

const void **sub_A1588(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_A15BC(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  if (v4 != v5)
  {
    do
    {
      v7 = *v4;
      v6 = v4[1];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = *v7;
        sub_1A8C0(v6);
        if (v8 == a2)
        {
          goto LABEL_8;
        }
      }

      else if (*v7 == a2)
      {
        goto LABEL_8;
      }

      v4 += 2;
    }

    while (v4 != v5);
    v4 = v5;
LABEL_8:
    v5 = *(a1 + 104);
  }

  if (v4 == v5)
  {
    v10 = sub_5544(24);
    if (*(v10 + 8))
    {
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v19, a2);
          v12 = v20;
          v13 = v19[0];
          sub_22170(__p, *(a1 + 144));
          v14 = v19;
          if (v12 < 0)
          {
            v14 = v13;
          }

          if (v18 >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = __p[0];
          }

          *buf = 136315906;
          v22 = "Port.cpp";
          v23 = 1024;
          v24 = 646;
          v25 = 2080;
          v26 = v14;
          v27 = 2080;
          v28 = v15;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unable to locate unknown sub-port (%s) type on port with type %s.", buf, 0x26u);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          if (v20 < 0)
          {
            operator delete(v19[0]);
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (*(*v4 + 16) != 1)
  {
LABEL_24:
    v9 = 0;
    return v9 & 1;
  }

  v9 = *(*v4 + 24);
  return v9 & 1;
}

void sub_A1788(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A17A8(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  v3 = CFGetTypeID(cf);
  if (v3 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_A182C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB160(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A1854(uint64_t a1, const __CFDictionary **a2)
{
  sub_38188(&v4, a1, a2, 0, 1);
  v2 = v4;
  sub_4AE8C(&v4);
  return v2;
}

uint64_t sub_A18AC(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  if (v8 != v9)
  {
    do
    {
      v11 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        sub_1A8C0(v10);
        if (v12 == a4)
        {
          goto LABEL_8;
        }
      }

      else if (*v11 == a4)
      {
        goto LABEL_8;
      }

      v8 += 2;
    }

    while (v8 != v9);
    v8 = v9;
LABEL_8:
    v9 = *(a2 + 104);
  }

  if (v8 == v9)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v33, a4);
      v26 = v34;
      v27 = v33[0];
      sub_22170(__p, *(a2 + 144));
      v28 = v33;
      if (v26 < 0)
      {
        v28 = v27;
      }

      if (v32 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      *value = 136315906;
      *&value[4] = "Port.cpp";
      v36 = 1024;
      v37 = 611;
      v38 = 2080;
      v39 = v28;
      v40 = 2080;
      v41 = v29;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get polar pattern for unknown sub-port (%s) type on port with type %s.", value, 0x26u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to get polar pattern for unknown sub-port (%s) type on port with type %s.");
  }

  v13 = *v8;
  if (*(*v8 + 16) != 1 || (v13[6] & 1) == 0)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *value = 136315394;
      *&value[4] = "SubPort.cpp";
      v36 = 1024;
      v37 = 195;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", value, 0x12u);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v23, "Precondition failure.");
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *a1 = Mutable;
  *(a1 + 8) = 257;
  sub_A1CA4(a1, @"region", v13[3]);
  sub_A1CA4(a1, @"orientation", v13[5]);
  v15 = CFArrayCreateMutable(0, ((*(v13 + 5) - *(v13 + 4)) >> 6), &kCFTypeArrayCallBacks);
  *value = v15;
  *&value[8] = 257;
  v17 = *(v13 + 4);
  v16 = *(v13 + 5);
  if (v17 != v16)
  {
    do
    {
      for (i = *(v17 + 40); i != *(v17 + 48); ++i)
      {
        if (*i == a3)
        {
          goto LABEL_18;
        }
      }

      sub_A072C(value, *(v17 + 32));
LABEL_18:
      v17 += 64;
    }

    while (v17 != v16);
    v15 = *value;
  }

  if (v15)
  {
    v19 = Mutable == 0;
  }

  else
  {
    v19 = 1;
  }

  if (!v19)
  {
    CFDictionarySetValue(Mutable, @"polar pattern", v15);
  }

  return sub_A0804(value);
}

void sub_A1C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v16 < 0)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A1CA4(uint64_t a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = v5;
  v8 = 1;
  if (*(a1 + 9) == 1 && v5 && *a1)
  {
    CFDictionarySetValue(*a1, a2, v5);
  }

  return sub_A07C4(&v7);
}

void sub_A1D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A07C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_A1D30(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

BOOL sub_A1D70(uint64_t a1)
{
  v2 = *(a1 + 96);
  v1 = *(a1 + 104);
  if (v2 == v1)
  {
    return 0;
  }

  v3 = v2 + 16;
  do
  {
    v4 = *(*(v3 - 16) + 8);
    result = v4 == 1;
    v6 = v4 == 1 || v3 == v1;
    v3 += 16;
  }

  while (!v6);
  return result;
}

uint64_t sub_A1DA8(uint64_t a1)
{
  sub_A1DF4(&v3, a1);
  v1 = v3;
  sub_4AE8C(&v3);
  return v1;
}

void sub_A1DF4(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  v4 = sub_69CE8(v5);
  v6 = v4;
  sub_38188(a1, a2, &v6, 0, 0);
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_A1E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_4BA7C(va);
  _Unwind_Resume(a1);
}

void sub_A1E78(uint64_t a1, uint64_t a2, int a3)
{
  sub_25704(&v12, (a2 + 88), "", 1260);
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v5 = *(v12 + 96);
  for (i = *(v12 + 104); v5 != i; v5 += 2)
  {
    v7 = *v5;
    v8 = v5[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v7 + 8) == 1)
    {
      v9 = *(v7 + 32);
LABEL_6:
      if (v9 != *(v7 + 40))
      {
        for (j = *(v9 + 40); j != *(v9 + 48); ++j)
        {
          if (*j == a3)
          {
            v9 += 64;
            goto LABEL_6;
          }
        }

        v17 = *v7;
        sub_9EF84(&v14, &v17);
      }
    }

    if (v8)
    {
      sub_1A8C0(v8);
    }
  }

  if (v13)
  {
    sub_1A8C0(v13);
  }

  v11 = v14;
  sub_A06B0(a1, v14, v15);
  if (v11)
  {

    operator delete(v11);
  }
}

void sub_A1FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A1FF4(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1165513555)
  {
    return 0;
  }

  v3 = *(a1 + 200);
  v6[0] = *(a1 + 192);
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v7, v6, "", 453);
  v4 = (*(*v7 + 16))(v7, a2);
  if (v8)
  {
    sub_1A8C0(v8);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return v4;
}

void sub_A20B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A20E0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_8BE08(a2, a3);
  if (HIDWORD(v8))
  {
    v16 = v8;
    v17 = sub_8BF50(a1, 1685287015, v8, a4);
    v15 = v17 != 0;
    v18 = sub_5544(25);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = v30;
      sub_22170(v30, a3);
      if (v31 < 0)
      {
        v20 = v30[0];
      }

      sub_22170(__p, a2);
      v21 = v29;
      v22 = __p[0];
      sub_22170(v26, v16);
      v23 = __p;
      if (v21 < 0)
      {
        v23 = v22;
      }

      *buf = 136316418;
      v33 = "DSPGraphChain.cpp";
      if (v27 >= 0)
      {
        v24 = v26;
      }

      else
      {
        v24 = v26[0];
      }

      v34 = 1024;
      v35 = 226;
      v36 = 2080;
      v37 = v20;
      v38 = 2080;
      v39 = v23;
      v40 = 2080;
      v41 = v24;
      v42 = 1024;
      v43 = v17 != 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Checking for presence of DSPParameter %s for AU subtype %s as graph parameter %s, found: %d", buf, 0x36u);
      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }
  }

  else
  {
    v9 = sub_5544(25);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v30, a3);
      v11 = v31;
      v12 = v30[0];
      sub_22170(__p, a2);
      v13 = v30;
      if (v11 < 0)
      {
        v13 = v12;
      }

      if (v29 >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      *buf = 136315906;
      v33 = "DSPGraphChain.cpp";
      v34 = 1024;
      v35 = 231;
      v36 = 2080;
      v37 = v13;
      v38 = 2080;
      v39 = v14;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Checking for presence of DSPProperty %s for AU subtype %s", buf, 0x26u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    return sub_8BF50(a1, a2, a3, a4) != 0;
  }

  return v15;
}

void sub_A23C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(v21);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A2408(uint64_t a1, int a2)
{
  if (a2 == 1685287015)
  {
    return sub_111B6C(a1, 1685287015);
  }

  v3 = a1 + 1192;
  for (i = *(a1 + 1200); i != v3; i = *(i + 8))
  {
    if (*(i + 16) == a2)
    {
      return i != v3;
    }
  }

  i = a1 + 1192;
  return i != v3;
}

unint64_t sub_A2458(AudioObjectID *a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (AudioObjectHasProperty(*a1, a2))
  {
    ioDataSize[0] = 2003329396;
    *&ioDataSize[1] = 0;
    PropertyData = 2003329396;
    v9 = 0;
    ioDataSize[0] = sub_543D0(*a1, a2, a3, a4);
    if (ioDataSize[0])
    {
      outData[0] = 0;
      PropertyData = AudioObjectGetPropertyData(*a1, a2, a3, a4, ioDataSize, outData);
      if (PropertyData)
      {
        v9 = 0;
      }

      else
      {
        v9 = outData[0];
      }
    }
  }

  else
  {
    v9 = 0;
    PropertyData = 2003332927;
  }

  return PropertyData | (v9 << 32);
}

void sub_A2538(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    goto LABEL_6;
  }

  v3 = sub_5544(17);
  v4 = *v3;
  if (*v3)
  {
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "HapticDebugIODelegate.cpp";
      v7 = 1024;
      v8 = 254;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HapticDebugDelegate not instantiated yet", &v5, 0x12u);
    }
  }

  v1 = *(a1 + 32);
  if (v1)
  {
LABEL_6:
    atomic_fetch_add((v1 + 68), 1u);
  }
}

void sub_A2614(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2[0] = *(a1 + 32);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_89034(v2);
  if (v1)
  {

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_A2680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2698(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_1A8C0(v1);
  }
}

void *sub_A26A8(uint64_t a1, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v6 = *(*a3 + 8);
    v7 = *a2;
    *(v7 + 8) = v6;
    *v6 = v7;
    do
    {
      v8 = v4[1];
      --*(a1 + 16);
      sub_84F9C(v4 + 2);
      operator delete(v4);
      v4 = v8;
    }

    while (v8 != a3);
  }

  return a3;
}

void *sub_A2754(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 24);
  v3 = (a1 + 16);
  if (v2 != (a1 + 16))
  {
    while ((sub_A2808(v2 + 2) & 1) == 0)
    {
      v2 = v2[1];
      if (v2 == v1)
      {
        v3 = v1;
        goto LABEL_11;
      }
    }

    v3 = v1;
    if (v2 != v1)
    {
      v4 = v2[1];
      v3 = v2;
      while (v4 != v1)
      {
        if ((sub_A2808((v4 + 16)) & 1) == 0)
        {
          sub_266608((v3 + 2), (v4 + 16));
          v3 = v3[1];
        }

        v4 = *(v4 + 8);
      }
    }
  }

LABEL_11:

  return sub_A26A8(v1, v3, v1);
}

uint64_t sub_A2808(uint64_t *a1)
{
  sub_25704(&v21, a1, "", 1246);
  sub_25704(&v19, a1 + 2, "", 1247);
  v2 = v19;
  if ((((*(*v19 + 160))(v19) & 1) != 0 || (*(v2 + 184) & 0x400) != 0 && (*(*v2 + 376))(v2)) && (*(*v2 + 368))(v2) != 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = sub_5544(8);
    v5 = sub_5544(35);
    v6 = 0;
    *buf = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&buf[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_12;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_12:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v17, *(v21 + 144));
      v10 = v18;
      v11 = v17[0];
      sub_22170(__p, *(v2 + 144));
      v12 = v17;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v16 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      v24 = 1024;
      v25 = 1256;
      v26 = 2080;
      v27 = v12;
      v28 = 2080;
      v29 = v13;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because port is not allowed for given category. Source port type = '%s', Destination port type = '%s'", buf, 0x26u);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18 < 0)
      {
        operator delete(v17[0]);
      }
    }

    v3 = 1;
  }

  if (v20)
  {
    sub_1A8C0(v20);
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  return v3;
}

void sub_A2AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A2AF0(uint64_t a1)
{
  v1 = (a1 + 16);
  v2 = *(a1 + 24);
  if (v2 == (a1 + 16))
  {
    v4 = 0;
  }

  else
  {
    do
    {
      v4 = sub_A2BE8((v2 + 2));
      if (v4)
      {
        break;
      }

      v2 = v2[1];
    }

    while (v2 != v1);
    v2 = *(a1 + 24);
  }

  v8 = v4;
  v5 = v1;
  if (v2 != v1)
  {
    while ((sub_A2C94(&v8, v2 + 2) & 1) == 0)
    {
      v2 = v2[1];
      if (v2 == v1)
      {
        v5 = v1;
        goto LABEL_16;
      }
    }

    v5 = v1;
    if (v2 != v1)
    {
      v6 = v2[1];
      v5 = v2;
      while (v6 != v1)
      {
        if ((sub_A2C94(&v8, (v6 + 16)) & 1) == 0)
        {
          sub_266608((v5 + 2), (v6 + 16));
          v5 = v5[1];
        }

        v6 = *(v6 + 8);
      }
    }
  }

LABEL_16:

  return sub_A26A8(v1, v5, v1);
}

BOOL sub_A2BE8(uint64_t a1)
{
  sub_25704(&v3, (a1 + 16), "", 1099);
  v1 = (*(*v3 + 368))();
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1 == 1;
}

void sub_A2C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A2C94(_BYTE *a1, uint64_t *a2)
{
  sub_25704(&v23, a2, "", 1297);
  sub_25704(&v21, a2 + 2, "", 1298);
  if (*a1 == 1 && (v4 = v21, (*(*v21 + 368))(v21) != 1))
  {
    v6 = sub_5544(8);
    v7 = sub_5544(35);
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
        goto LABEL_10;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_10:
    v11 = *v6;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v19, *(v23 + 144));
      v12 = v20;
      v13 = v19[0];
      sub_22170(__p, *(v4 + 144));
      v14 = v19;
      if (v12 < 0)
      {
        v14 = v13;
      }

      if (v18 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      v26 = 1024;
      v27 = 1307;
      v28 = 2080;
      v29 = v14;
      v30 = 2080;
      v31 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Culling route connection because there already is an active port for given category. Source port type = '%s', Destination port type = '%s'", buf, 0x26u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (v22)
  {
    sub_1A8C0(v22);
  }

  if (v24)
  {
    sub_1A8C0(v24);
  }

  return v5;
}

void sub_A2ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_A2F20(uint64_t a1, uint64_t **a2)
{
  v3 = sub_8703C();
  v4 = (**v3)(v3);
  v5 = (*(*v3 + 232))(v3);
  if (v4 != 1 || v5 == 0)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];

  return sub_9C594(1886287212, v8, v9);
}

char *sub_A2FEC(uint64_t a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_189A00();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    if (v14)
    {
      sub_1E2544(v14);
    }

    v16 = (8 * v15);
    if (!v15)
    {
      if (v12 < 1)
      {
        if (v10 == __src)
        {
          v24 = 1;
        }

        else
        {
          v24 = v12 >> 2;
        }

        sub_1E2544(v24);
      }

      v16 = (v16 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }

    *v16 = *a3;
    memcpy(v16 + 1, __src, *(a1 + 8) - __src);
    v17 = *a1;
    v25 = v16 + *(a1 + 8) - v4 + 8;
    *(a1 + 8) = v4;
    v18 = v4 - v17;
    v19 = v16 - (v4 - v17);
    memcpy(v19, v17, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v25;
    if (v20)
    {
      operator delete(v20);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = *(a1 + 8);
    }

    v21 = v9 <= a3 || v4 > a3;
    v22 = 8;
    if (v21)
    {
      v22 = 0;
    }

    *v4 = *&a3[v22];
  }

  return v4;
}

void sub_A31F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_A3240(void *a1, const __CFDictionary **a2)
{
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  if (!sub_A3210(*a2, @"session routing information"))
  {
    v35 = sub_5544(14);
    v36 = sub_468EC(1, *v35, *(v35 + 8));
    v37 = v36;
    if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *cf = 136315394;
      *&cf[4] = "AudioSessionUtilities.mm";
      v71 = 1024;
      v72 = 369;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", cf, 0x12u);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v38, "Precondition failure.");
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v4 = *a2;
  if (!*a2)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
  }

  v5 = CFStringCreateWithBytes(0, "session routing information", 27, 0x8000100u, 0);
  *cf = v5;
  if (!v5)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v40, "Could not construct");
  }

  Value = CFDictionaryGetValue(v4, v5);
  CFRelease(*cf);
  if (!Value)
  {
    goto LABEL_60;
  }

  CFRetain(Value);
  v7 = CFGetTypeID(Value);
  if (v7 != CFArrayGetTypeID())
  {
    CFRelease(Value);
LABEL_60:
    v64 = 0;
    return;
  }

  CFRetain(Value);
  v64 = Value;
  CFRelease(Value);
  Count = CFArrayGetCount(Value);
  v9 = CFArrayGetCount(Value);
  if (Count)
  {
    if (v9)
    {
      sub_A3B9C(&v63, Value, 0);
      if (!v63 || (v10 = CFGetTypeID(v63), v10 != CFDictionaryGetTypeID()))
      {
        v30 = sub_5544(14);
        v31 = sub_468EC(1, *v30, *(v30 + 8));
        v32 = v31;
        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *cf = 136315394;
          *&cf[4] = "AudioSessionUtilities.mm";
          v71 = 1024;
          v72 = 379;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", cf, 0x12u);
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v33, "Precondition failure.");
      }

      sub_A3C4C(&v44, &v63);
      sub_A3D70(cf, &v44);
      if (v44)
      {
        CFRelease(v44);
      }

      sub_A4E28(v61, cf);
      if (v62 < 0)
      {
        if (v61[1] != &dword_14 + 1)
        {
          goto LABEL_56;
        }

        v11 = v61[0];
      }

      else
      {
        if (v62 != 21)
        {
          goto LABEL_56;
        }

        v11 = v61;
      }

      v12 = *v11;
      v13 = v11[1];
      v14 = *(v11 + 13);
      if (v12 == 0x6C7070612E6D6F63 && v13 == 0x656C69626F6D2E65 && v14 == 0x6369676F6C656C69)
      {
        if (!*a2)
        {
          v41 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v41, "Could not construct");
        }

        if (sub_A3210(*a2, @"persistent route"))
        {
          v17 = *a2;
          if (!*a2)
          {
            v42 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v42, "Could not construct");
          }

          v44 = 0;
          sub_4AB28(&v60, v17, "persistent route", &v44);
          if (v44)
          {
            CFRelease(v44);
          }

          sub_23ECB0(&v44, &v60);
          if (v50 || v54 || v58)
          {
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
                goto LABEL_40;
              }
            }

            if ((v21 & v22) == 0)
            {
              v18 = v19;
            }

LABEL_40:
            v23 = *v18;
            v24 = v23;
            if (v23)
            {
              v25 = v23;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                sub_2AB344(&__p, &v44);
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                *buf = 136315650;
                *&buf[4] = "AudioSessionUtilities.mm";
                v66 = 1024;
                v67 = 392;
                v68 = 2080;
                v69 = p_p;
                _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Persistent route info: %s.", buf, 0x1Cu);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }
              }
            }
          }

          sub_D03B8(&v73, v44, v45, 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3));
          sub_D03B8(&v74, v46, v47, 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3));
          v76 = v51;
          sub_D055C(v75, v49);
          v78 = v55;
          sub_D055C(v77, v53);
          v80 = v59;
          sub_D055C(v79, v57);
          sub_4B0A0(v57);
          v27 = v56;
          v56 = 0;
          if (v27)
          {
            operator delete(v27);
          }

          sub_4B0A0(v53);
          v28 = v52;
          v52 = 0;
          if (v28)
          {
            operator delete(v28);
          }

          sub_4B0A0(v49);
          v29 = v48;
          v48 = 0;
          if (v29)
          {
            operator delete(v29);
          }

          *buf = &v46;
          sub_11C50(buf);
          *buf = &v44;
          sub_11C50(buf);
          if (v60)
          {
            CFRelease(v60);
          }
        }
      }

LABEL_56:
      sub_A4DBC();
    }

    Value = v64;
  }

  CFRelease(Value);
}

void sub_A3A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, const void *a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, const void *a44, const void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  sub_1F1DE0(&a16);
  sub_4BA7C(&a37);
  if (a43 < 0)
  {
    operator delete(__p);
  }

  sub_A5114(&a50);
  sub_1D5FE0(&a44);
  sub_46228(&a45);
  sub_76304(v50);
  _Unwind_Resume(a1);
}

CFTypeRef sub_A3B9C(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a1 = v7;
  return result;
}

const void *sub_A3C4C(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFDictionaryGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_A3D30(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB160(v1);
  _Unwind_Resume(a1);
}

double sub_A3D70(uint64_t a1, CFDictionaryRef *a2)
{
  for (i = 0; i != 3; ++i)
  {
    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    v5 = off_6B8868[i];
    if (!v5 || !CFDictionaryContainsKey(*a2, off_6B8868[i]))
    {
      v38 = sub_5544(14);
      v39 = sub_468EC(1, *v38, *(v38 + 8));
      v40 = v39;
      if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "VirtualAudio_AudioSessionInfo.h";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 132;
        WORD1(__p[2]) = 2112;
        *(&__p[2] + 4) = v5;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInSessionDescriptionKey - %@ is required", __p, 0x1Cu);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      *v41 = &off_6DDDD0;
      v41[2] = 1852797029;
    }
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  v6 = (a1 + 96);
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 202) = 0u;
  *(a1 + 224) = 0;
  v7 = (a1 + 224);
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 1065353216;
  *(a1 + 408) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 424) = 1065353216;
  *(a1 + 432) = 0;
  *(a1 + 456) = 0;
  sub_55BC(__p, a2);
  *a1 = __p[0];
  sub_12790(a1 + 8);
  *(a1 + 8) = *&__p[1];
  *(a1 + 24) = __p[3];
  memset(&__p[1], 0, 24);
  sub_12790(a1 + 32);
  *(a1 + 32) = v64;
  *(a1 + 48) = v65;
  v65 = 0;
  v64 = 0uLL;
  v8 = *(a1 + 56);
  if (v8)
  {
    operator delete(v8);
  }

  *(a1 + 56) = v66;
  *(a1 + 72) = v67;
  v67 = 0;
  v66 = 0uLL;
  theArray[0] = &v64;
  sub_11C50(theArray);
  theArray[0] = &__p[1];
  sub_11C50(theArray);
  if (!*a2)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not construct");
    goto LABEL_94;
  }

  v9 = sub_A4A44(*a2, "session id");
  if (!v9)
  {
    v44 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v44, "Could not find item");
LABEL_94:
  }

  *(a1 + 80) = sub_4A8F8(v9);
  if (!*a2)
  {
    v45 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v45, "Could not construct");
  }

  sub_53E8(cf, "");
  sub_A4C5C(__p, *a2, "bundle id");
  if (__p[3])
  {
    if (SHIBYTE(__p[2]) < 0)
    {
      sub_54A0(theArray, __p[0], __p[1]);
      operator delete(__p[0]);
    }

    else
    {
      *theArray = *__p;
      v60 = __p[2];
    }
  }

  else
  {
    *theArray = *cf;
    v60 = v58;
    cf[1] = 0;
    v58 = 0;
    cf[0] = 0;
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *theArray;
  *(a1 + 112) = v60;
  HIBYTE(v60) = 0;
  LOBYTE(theArray[0]) = 0;
  if (SHIBYTE(v58) < 0)
  {
    operator delete(cf[0]);
  }

  if (!*a2)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "Could not construct");
    goto LABEL_98;
  }

  v10 = sub_4A7F4(*a2, "category");
  if (!v10)
  {
    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "Could not find item");
LABEL_98:
  }

  sub_125D8(__p, v10);
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  *(a1 + 120) = *__p;
  *(a1 + 136) = __p[2];
  if (!*a2)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v47, "Could not construct");
    goto LABEL_101;
  }

  v11 = sub_47FE0(*a2, "mode");
  if (!v11)
  {
    v47 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v47, "Could not find item");
LABEL_101:
  }

  sub_125D8(__p, v11);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  *(a1 + 144) = *__p;
  *(a1 + 160) = __p[2];
  *(a1 + 217) = 1;
  if (!*a2)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v48, "Could not construct");
  }

  v12 = sub_11094(*a2, "isolated use case ID");
  if (v12)
  {
    v13 = sub_113A0(v12);
    if ((v13 & 0x100000000) != 0)
    {
      if (v13)
      {
        *(a1 + 248) = v13;
        *(a1 + 252) = 1;
      }
    }
  }

  memset(__p, 0, 24);
  v14 = *a2;
  if (!*a2)
  {
    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "Could not construct");
  }

  cf[0] = 0;
  v15 = sub_11094(v14, "requested port types");
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = v15;
  CFRetain(v15);
  v17 = CFGetTypeID(v16);
  if (v17 != CFArrayGetTypeID())
  {
    CFRelease(v16);
LABEL_41:
    theArray[0] = 0;
    cf[0] = 0;
    goto LABEL_52;
  }

  CFRetain(v16);
  theArray[0] = v16;
  CFRelease(v16);
  Count = CFArrayGetCount(v16);
  v19 = Count;
  v20 = theArray[0];
  if (theArray[0])
  {
    v21 = CFArrayGetCount(theArray[0]);
    if (!v19)
    {
      goto LABEL_38;
    }

LABEL_43:
    v22 = 0;
    do
    {
      if (v16 == v20 && v21 == v22)
      {
        break;
      }

      sub_A3B9C(&v62, v16, v22);
      v23 = v62;
      if (!v62)
      {
        v43 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v43, "Could not construct");
      }

      v61 = sub_4A8F8(v62);
      sub_AFD28(__p, &v61);
      CFRelease(v23);
      ++v22;
    }

    while (v19 != v22);
    v20 = theArray[0];
    if (!theArray[0])
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  v21 = 0;
  if (Count)
  {
    goto LABEL_43;
  }

LABEL_38:
  if (v20)
  {
LABEL_49:
    CFRelease(v20);
  }

LABEL_50:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

LABEL_52:
  v24 = *(a1 + 168);
  if (v24)
  {
    operator delete(v24);
  }

  *(a1 + 168) = *__p;
  *(a1 + 184) = __p[2];
  if (!*a2)
  {
    v50 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v50, "Could not construct");
  }

  v25 = sub_4A4DC(*a2, "reporter IDs");
  if (v25)
  {
    sub_11F38(__p, v25);
    theArray[1] = 0;
    v60 = 0;
    theArray[0] = 0;
    if (__p[3])
    {
      v26 = __p[0];
      sub_1215C(theArray, __p[0], __p[1], (__p[1] - __p[0]) >> 3);
      if (v26)
      {
        if (__p[3])
        {
          operator delete(v26);
        }
      }
    }
  }

  else
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(__p[3]) = 0;
    theArray[1] = 0;
    v60 = 0;
    theArray[0] = 0;
  }

  if (*v7)
  {
    operator delete(*v7);
  }

  *(a1 + 224) = *theArray;
  *(a1 + 240) = v60;
  if (!*a2)
  {
    v51 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v51, "Could not construct");
  }

  v27 = sub_A4CB8(*a2, "prefer independent route");
  if (v27)
  {
    v28 = sub_11DA8(v27);
    v29 = (v28 > 0xFFu) & v28;
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 256) = v29;
  if (!*a2)
  {
    v52 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v52, "Could not construct");
  }

  v30 = sub_4A960(*a2, "disallow hfp");
  if (v30 >= 0x100u && (v30 & 1) != 0)
  {
    v31 = 0;
    __p[0] = 0x70687062706D6274;
    do
    {
      LODWORD(theArray[0]) = *(__p + v31);
      sub_AFD28(a1 + 192, theArray);
      v31 += 4;
    }

    while (v31 != 8);
  }

  if (!*a2)
  {
    v53 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v53, "Could not construct");
  }

  v32 = sub_4ADC8(*a2, "default to speaker");
  *(a1 + 216) = (v32 > 0xFFu) & v32;
  v33 = *a2;
  if (!*a2)
  {
    v54 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v54, "Could not construct");
  }

  v34 = CFStringCreateWithBytes(0, "follow VAD UID", 14, 0x8000100u, 0);
  __p[0] = v34;
  if (!v34)
  {
    v55 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v55, "Could not construct");
  }

  v35 = CFDictionaryContainsKey(v33, v34);
  if (__p[0])
  {
    CFRelease(__p[0]);
  }

  if (v35)
  {
    if (*a2)
    {
      v37 = sub_11198(*a2, "follow VAD UID");
      if (v37)
      {
        sub_125D8(__p, v37);
        if (*(a1 + 456) == 1)
        {
          if (*(a1 + 455) < 0)
          {
            operator delete(*(a1 + 432));
          }

          result = *__p;
          *(a1 + 432) = *__p;
          *(a1 + 448) = __p[2];
        }

        else
        {
          result = *__p;
          *(a1 + 432) = *__p;
          *(a1 + 448) = __p[2];
          *(a1 + 456) = 1;
        }

        return result;
      }

      v56 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v56, "Could not find item");
    }

    else
    {
      v56 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v56, "Could not construct");
    }
  }

  return result;
}

void sub_A48D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, void *__p)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_A4A44(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_A4AF8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0xA4AA8);
}

const UInt8 *sub_A4B48(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  v8 = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1 || (Value = CFDictionaryGetValue(a1, v5), (v5 = v8) != 0))
  {
    CFRelease(v5);
    if (!a1)
    {
      return 0;
    }
  }

  return Value;
}

void sub_A4C10(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0xA4BBCLL);
}

const __CFString *sub_A4C5C(_BYTE *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  result = sub_A4B48(a2, __s);
  if (result)
  {

    return sub_1DAF78(a1, result);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }

  return result;
}

const void *sub_A4CB8(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(a1, v5);
  CFRelease(cf);
  return Value;
}

void sub_A4D6C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0xA4D1CLL);
}

void *sub_A4E28(void *result, uint64_t a2)
{
  if (*(a2 + 119) < 0)
  {
    return sub_54A0(result, *(a2 + 96), *(a2 + 104));
  }

  *result = *(a2 + 96);
  result[2] = *(a2 + 112);
  return result;
}

uint64_t sub_A4E68(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_4817C(a1 + 8, *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_4817C(a1 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_1215C(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  if (*(a2 + 119) < 0)
  {
    sub_54A0((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v5 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v5;
  }

  if (*(a2 + 143) < 0)
  {
    sub_54A0((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v6 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v6;
  }

  if (*(a2 + 167) < 0)
  {
    sub_54A0((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v7 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v7;
  }

  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_46980(a1 + 168, *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  sub_46980(a1 + 192, *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
  v8 = *(a2 + 216);
  *(a1 + 224) = 0;
  *(a1 + 216) = v8;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  sub_1215C(a1 + 224, *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 3);
  v9 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v9;
  sub_7FF98((a1 + 264), (a2 + 264));
  sub_80534((a1 + 432), (a2 + 432));
  return a1;
}

void sub_A5038(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  sub_1F1E40(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A5114(uint64_t a1)
{
  if (*(a1 + 456) == 1 && *(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  sub_4B064(a1 + 392);
  sub_4B064(a1 + 352);
  sub_4B064(a1 + 312);
  v7 = (a1 + 288);
  sub_11C50(&v7);
  v7 = (a1 + 264);
  sub_11C50(&v7);
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    operator delete(v4);
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

  v5 = *(a1 + 56);
  if (v5)
  {
    *(a1 + 64) = v5;
    operator delete(v5);
  }

  v7 = (a1 + 32);
  sub_11C50(&v7);
  v7 = (a1 + 8);
  sub_11C50(&v7);
  return a1;
}

uint64_t sub_A5224(uint64_t a1)
{
  sub_AEE74(&__p, a1);
  if ((v26 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (p_p)
  {
    if ((v26 & 0x80u) == 0)
    {
      v3 = v26;
    }

    else
    {
      v3 = v25;
    }

    v27 = CFStringCreateWithBytes(0, p_p, v3, 0x8000100u, 0);
    if (!v27)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v26 & 0x80) != 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v27 = 0;
    if ((v26 & 0x80) != 0)
    {
LABEL_10:
      operator delete(__p);
    }
  }

  sub_A5750(&__p, a1);
  if ((v26 & 0x80u) == 0)
  {
    v4 = &__p;
  }

  else
  {
    v4 = __p;
  }

  if (v4)
  {
    if ((v26 & 0x80u) == 0)
    {
      v5 = v26;
    }

    else
    {
      v5 = v25;
    }

    cf = CFStringCreateWithBytes(0, v4, v5, 0x8000100u, 0);
    if (!cf)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "Could not construct");
    }

    if ((v26 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    cf = 0;
    if ((v26 & 0x80) != 0)
    {
LABEL_20:
      operator delete(__p);
    }
  }

  v6 = v27;
  if (v27)
  {
    CFRetain(v27);
  }

  v22[1] = v6;
  v7 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v22[2] = cf;
  v8 = sub_48DC8();
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      goto LABEL_34;
    }

    __p = @"Record";
    if (sub_A5790(v6, &__p))
    {
      v28 = @"SoundRecognition";
      if (sub_A5790(cf, &v28))
      {
        goto LABEL_34;
      }
    }
  }

  if (*(a1 + 256) != 1)
  {
    __p = @"PlayAndRecord";
    if (sub_A5790(v27, &__p) == kCFCompareEqualTo || (v28 = @"Record", sub_A5790(v27, &v28) == kCFCompareEqualTo))
    {
      v22[0] = @"SoundRecognition";
      if (sub_A5790(cf, v22) == kCFCompareEqualTo)
      {
        goto LABEL_56;
      }
    }

    __p = @"InputInjection";
    if (sub_A5790(v27, &__p) == kCFCompareEqualTo)
    {
      goto LABEL_56;
    }

    __p = @"VoiceOver";
    if (sub_A5790(v27, &__p) == kCFCompareEqualTo)
    {
      v10 = _os_feature_enabled_impl();
      goto LABEL_57;
    }

    v11 = *(a1 + 248);
    if ((v11 & 0x100000000) != 0)
    {
      if (v11)
      {
LABEL_56:
        v10 = 1;
        goto LABEL_57;
      }
    }

    sub_A4E28(&__p, a1);
    if (v26 < 0)
    {
      if (v25 != 21)
      {
        goto LABEL_79;
      }

      v12 = __p;
    }

    else
    {
      if (v26 != 21)
      {
        goto LABEL_79;
      }

      v12 = &__p;
    }

    v15 = *v12;
    v16 = v12[1];
    v17 = *(v12 + 13);
    v19 = v15 == 0x6C7070612E6D6F63 && v16 == 0x656C69626F6D2E65 && v17 == 0x6369676F6C656C69;
    if (v19 && (_os_feature_enabled_impl() & 1) != 0)
    {
      v10 = 1;
      goto LABEL_80;
    }

LABEL_79:
    v10 = 0;
LABEL_80:
    if (v26 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_57;
  }

  sub_A5750(&__p, a1);
  v9 = sub_1F097C(&__p);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  __p = @"PlayAndRecord";
  v28 = @"Record";
  if (sub_A5790(v27, &__p) && sub_A5790(v27, &v28))
  {
LABEL_34:
    v10 = 0;
    goto LABEL_57;
  }

  v10 = 0;
  if (v9 <= 1987077986)
  {
    if (v9 == 1768057203)
    {
      goto LABEL_57;
    }

    v13 = 1919776355;
LABEL_55:
    if (v9 == v13)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v9 != 1987077987 && v9 != 1987081833)
  {
    v13 = 1987081839;
    goto LABEL_55;
  }

LABEL_57:
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  return v10;
}

void sub_A5688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_4753F4(&a11);
  sub_452F0(&a13);
  sub_452F0((v19 - 48));
  _Unwind_Resume(a1);
}

void *sub_A5750(void *result, uint64_t a2)
{
  if (*(a2 + 167) < 0)
  {
    return sub_54A0(result, *(a2 + 144), *(a2 + 152));
  }

  *result = *(a2 + 144);
  result[2] = *(a2 + 160);
  return result;
}

CFComparisonResult sub_A5790(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  v5 = CFGetTypeID(v4);
  if (v5 != CFStringGetTypeID())
  {
    CFRelease(v4);
    if (cf)
    {
LABEL_9:
      v6 = kCFCompareGreaterThan;
LABEL_13:
      CFRelease(cf);
      return v6;
    }

    return 0;
  }

  if (cf)
  {
    v6 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v6 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_13;
  }

  return v6;
}

void sub_A5870(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 1152));
  if (v2)
  {
    v5 = (*(*a1 + 80))(a1);
    v6 = v5;
    v24 = 0;
    v25 = 0;
    v23 = 0.0;
    if (v5)
    {
      v7 = 1935958625;
    }

    else
    {
      v7 = 3;
    }

    v8 = *v2 + 72;
    if (v5)
    {
      v9 = 1935958627;
    }

    else
    {
      v9 = 5;
    }

    if (v5)
    {
      v10 = 1936418419;
    }

    else
    {
      v10 = 7;
    }

    if (v5)
    {
      v11 = 1935963506;
    }

    else
    {
      v11 = 8;
    }

    if (v5)
    {
      v12 = 1937141612;
    }

    else
    {
      v12 = 0;
    }

    (*(*v2 + 72))(v2, v7, &v25 + 4, 0, 0);
    (*(*v2 + 72))(v2, v9, &v25, 0, 0);
    (*(*v2 + 72))(v2, v10, &v24 + 4, 0, 0);
    (*(*v2 + 72))(v2, v11, &v23, 0, 0);
    (*(*v2 + 72))(v2, v12, &v24, 0, 0);
    if (v6)
    {
      LODWORD(v13) = v25;
    }

    else
    {
      v14 = COERCE_FLOAT(atomic_load((a1 + 792)));
      v15 = *&v25;
      v16 = *(&v25 + 1) + v14;
      v17 = COERCE_FLOAT(atomic_load((a1 + 792)));
      v13 = v15 + v17;
      *&v25 = v15 + v17;
      *(&v25 + 1) = v16;
    }

    v18 = *(&v25 + 1);
    if (*(a1 + 828) == 1)
    {
      v19 = *(a1 + 824);
      if (v19 < *(&v25 + 1))
      {
        v18 = *(a1 + 824);
      }

      if (v19 < v13)
      {
        v13 = *(a1 + 824);
      }

      v25 = __PAIR64__(LODWORD(v18), LODWORD(v13));
    }

    v20 = *(a1 + 736);
    v21 = v24;
    v22 = v23;
    if (qword_6EB708 != -1)
    {
      dispatch_once(&qword_6EB708, &stru_6C0080);
    }

    if (off_6EB760)
    {
      off_6EB760(v20, 0, a2, v18, v13, *(&v21 + 1), *&v21, v22);
    }
  }
}

unsigned int *sub_A5B24(unsigned int *result, int a2)
{
  v2 = *result;
  if (v2)
  {
    v3 = (v2 + 3) & 0x1FFFFFFFCLL;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_5171E0;
    v6 = xmmword_5171F0;
    v7 = result + 11;
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, *v4.i8).u8[0])
      {
        *(v7 - 8) = a2;
      }

      if (vuzp1_s16(v9, *&v4).i8[2])
      {
        *(v7 - 4) = a2;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2;
        v7[4] = a2;
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 16;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void sub_A5BC0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v17 = sub_5544(14);
    v18 = sub_468EC(1, *v17, *(v17 + 8));
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "DSPChain.mm";
      WORD6(buf[0]) = 1024;
      *(buf + 14) = 2413;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = atomic_load((a1 + 64));
  if ((v3 & 1) != 0 && (*(a2 + 56) & 2) != 0)
  {
    v4 = *(a2 + 8);
    v5 = __udivti3();
    if (*(a1 + 96) <= v5)
    {
      v6 = *(a1 + 80);
      if (v6)
      {
        if (*(v6 + 8) != -1)
        {
          v7 = v5;
          v23[0] = 0;
          (*(**(a1 + 88) + 72))(*(a1 + 88), 1987340658, v23 + 4, 0, 0);
          (*(**(a1 + 88) + 72))(*(a1 + 88), 1987339123, v23, 0, 0);
          v8 = *(a1 + 16);
          v9 = *(a1 + 32);
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v9);
            *&buf[0] = v8;
            *(&buf[0] + 1) = v9;
            atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            buf[0] = *(a1 + 16);
          }

          v11 = v23[0];
          v10 = HIDWORD(v23[0]);
          sub_4F08C();
          if (caulk::g_realtime_safe_resource)
          {
            v12 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x38uLL, 8uLL);
            *(v12 + 8) = 0;
            *(v12 + 16) = 0;
            *(v12 + 24) = buf[0];
            buf[0] = 0uLL;
            *(v12 + 40) = v10;
            *(v12 + 44) = v11;
            *v12 = off_6C00B0;
            caulk::concurrent::messenger::enqueue(&unk_70A4E0, v12);
            if (*(&buf[0] + 1))
            {
              std::__shared_weak_count::__release_weak(*(&buf[0] + 1));
            }

            v13 = atomic_load((a1 + 65));
            if (v7 <= 0xBEBC1FF || (v13 & 1) == 0)
            {
              goto LABEL_19;
            }

            v22 = 0;
            (*(**(a1 + 88) + 72))(*(a1 + 88), 1685218159, &v22, 0, 0);
            if (v9)
            {
              atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v14 = v22;
            sub_4F08C();
            if (caulk::g_realtime_safe_resource)
            {
              *&v15 = v8;
              *(&v15 + 1) = v9;
              v21 = v15;
              v16 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x40uLL, 8uLL);
              *(v16 + 16) = 0;
              *(v16 + 24) = v21;
              *(v16 + 40) = v14;
              *(v16 + 48) = v7;
              *v16 = off_6C0100;
              *(v16 + 8) = 0;
              caulk::concurrent::messenger::enqueue(&unk_70A4E0, v16);
              *(a1 + 104) = v7 + 200000000;
LABEL_19:
              *(a1 + 96) = v7 + 50000000;
              if (v9)
              {
                std::__shared_weak_count::__release_weak(v9);
              }

              return;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

void sub_A5F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, int buf, uint64_t a21, __int16 a22, int a23, __int16 a24, uint64_t a25, __int16 a26, uint64_t a27, __int16 a28, int a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A654C(uint64_t result, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (*a2 == 1818850162 || *a2 == 1818850145)
  {
    if (*a5 == 12)
    {
      *(a6 + 8) = 0;
      *a6 = 0;
      return result;
    }

    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "HP_Object.cpp";
      v20 = 1024;
      v21 = 220;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyListenerAdded/kAudioObjectPropertyListenerRemoved", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
LABEL_20:
    exception[2] = v13;
  }

  v8 = sub_1537C(result, a2);
  if (!v8)
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v16 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
    goto LABEL_20;
  }

  v9 = *(*v8 + 40);

  return v9();
}

BOOL sub_A6818(const __CFDictionary **a1, uint64_t a2)
{
  v4 = off_6CD9D0;
  v5 = 112;
  do
  {
    if (!*a1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    result = sub_47D0C(*a1, *v4);
    if (result)
    {
      v8 = sub_5544(14);
      v9 = sub_468EC(1, *v8, *(v8 + 8));
      v10 = v9;
      if (v9)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v11 = v4[1];
          v13 = 136315906;
          v14 = "VirtualAudio_PlugIn.mm";
          v15 = 1024;
          v16 = 1179;
          v17 = 2080;
          v18 = a2;
          v19 = 2080;
          v20 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v13, 0x26u);
        }
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      *v12 = &off_6DDDD0;
      v12[2] = 1852797029;
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  return result;
}

CFStringRef sub_A69D8(CFStringRef *a1, unsigned int *a2)
{
  v4 = *a2;
  if (*a2 > 1987011683)
  {
    if (v4 > 1987277416)
    {
      if (v4 > 1987279211)
      {
        switch(v4)
        {
          case 1987279212:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SystemLocal", 30, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Could not construct");
            }

            break;
          case 1987279218:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SystemRemote", 31, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              v28 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v28, "Could not construct");
            }

            break;
          case 1987738234:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_Actuator", 27, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              v13 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v13, "Could not construct");
            }

            break;
          default:
            goto LABEL_80;
        }
      }

      else
      {
        switch(v4)
        {
          case 1987277417:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SiriOutput", 29, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              v16 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v16, "Could not construct");
            }

            break;
          case 1987277665:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SecureSoundAnalysis", 38, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              v24 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v24, "Could not construct");
            }

            break;
          case 1987277668:
            result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SecureSpeechDetection", 40, 0x8000100u, 0);
            *a1 = result;
            if (!result)
            {
              v9 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v9, "Could not construct");
            }

            break;
          default:
            goto LABEL_80;
        }
      }
    }

    else if (v4 > 1987276896)
    {
      switch(v4)
      {
        case 1987276897:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SpeakerAlert", 31, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v18 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v18, "Could not construct");
          }

          break;
        case 1987276899:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SpatialCapture", 33, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v26 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v26, "Could not construct");
          }

          break;
        case 1987276900:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SpeechDetection", 34, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v11 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v11, "Could not construct");
          }

          break;
        default:
          goto LABEL_80;
      }
    }

    else
    {
      switch(v4)
      {
        case 1987011684:
          return sub_1F1CD4(@"%s_%u", a1, "kVirtualAudioDeviceUID_OnDemand", a2[1]);
        case 1987274852:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SecureSharedDSP", 34, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v22, "Could not construct");
          }

          break;
        case 1987276148:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_SecureMutedTalkerDetection", 45, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v7 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v7, "Could not construct");
          }

          break;
        default:
          goto LABEL_80;
      }
    }
  }

  else if (v4 > 1986293107)
  {
    if (v4 > 1986818403)
    {
      switch(v4)
      {
        case 1986818404:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_LDCM", 23, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v19 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v19, "Could not construct");
          }

          break;
        case 1986881902:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_LPMicInjector", 32, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v27 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v27, "Could not construct");
          }

          break;
        case 1986884979:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_Music", 24, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v12 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v12, "Could not construct");
          }

          break;
        default:
          goto LABEL_80;
      }
    }

    else
    {
      switch(v4)
      {
        case 1986293108:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_DedicatedMeasurement", 39, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v15 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v15, "Could not construct");
          }

          break;
        case 1986552183:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_Hawking", 26, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v23 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v23, "Could not construct");
          }

          break;
        case 1986817911:
          result = CFStringCreateWithBytes(0, "VirtualAudioDevice_LowLatency", 29, 0x8000100u, 0);
          *a1 = result;
          if (!result)
          {
            v8 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v8, "Could not construct");
          }

          break;
        default:
          goto LABEL_80;
      }
    }
  }

  else if (v4 > 1986290543)
  {
    switch(v4)
    {
      case 1986290544:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_DedicatedVideoRecording", 42, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v17 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v17, "Could not construct");
        }

        break;
      case 1986291046:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_Default", 26, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v25 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v25, "Could not construct");
        }

        break;
      case 1986291305:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_DecoupledInput", 33, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v10 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v10, "Could not construct");
        }

        break;
      default:
        goto LABEL_80;
    }
  }

  else
  {
    switch(v4)
    {
      case 1751409255:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_HapticDebug", 30, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v14 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v14, "Could not construct");
        }

        break;
      case 1986095474:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_PerAppAirPlay", 32, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v21 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v21, "Could not construct");
        }

        break;
      case 1986224492:
        result = CFStringCreateWithBytes(0, "VirtualAudioDevice_CallContinuity", 33, 0x8000100u, 0);
        *a1 = result;
        if (!result)
        {
          v6 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v6, "Could not construct");
        }

        return result;
      default:
LABEL_80:
        v29 = sub_5544(14);
        v30 = *v29;
        if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          sub_22170(__p, *a2);
          if (v35 >= 0)
          {
            v31 = __p;
          }

          else
          {
            v31 = __p[0];
          }

          v32 = *a2;
          *buf = 136315906;
          v37 = "StandardUtilities.cpp";
          v38 = 1024;
          v39 = 1403;
          v40 = 2080;
          v41 = v31;
          v42 = 1024;
          v43 = v32;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to get an UID from an unknown VirtualAudioDeviceType ([%s]/%u).", buf, 0x22u);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v33 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v33, "Attempt to get an UID from an unknown VirtualAudioDeviceType ([%s]/%u).");
    }
  }

  return result;
}

uint64_t sub_A7728(uint64_t a1, uint64_t a2, uint64_t **a3, uint64_t a4, int *a5)
{
  if (*a5 == 1987012963)
  {
LABEL_2:
    if ((atomic_load_explicit(&qword_6F99E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F99E8))
    {
      v36[0] = 0x70757369706D6269;
      qword_6F99D8 = 0;
      unk_6F99E0 = 0;
      qword_6F99D0 = 0;
      sub_4625C(&qword_6F99D0, v36, &v36[1], 2uLL);
      __cxa_guard_release(&qword_6F99E8);
    }

    v6 = qword_6F99D0;
    if (qword_6F99D0 != qword_6F99D8)
    {
      do
      {
        if (*(a2 + 8) == a2)
        {
          result = 0;
        }

        else
        {
          v7 = *v6;
          v8 = *(a2 + 8);
          do
          {
            v9 = *(v8 + 16) == v7 || *(v8 + 20) == v7;
            result = v9;
            if (v9)
            {
              break;
            }

            v8 = *(v8 + 8);
          }

          while (v8 != a2);
        }

        if (result)
        {
          break;
        }

        ++v6;
      }

      while (v6 != qword_6F99D8);
      return result;
    }

    return 0;
  }

  v14 = sub_809C0();
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  strcpy(v38, "cwdv");
  v38[8] = 0;
  v39 = 3;
  v41[0] = 0;
  v41[1] = 0;
  v40 = v41;
  v42 = 44739242;
  v44 = 0;
  v45 = 0;
  __p = 0;
  v35[0] = off_6C2960;
  v35[3] = v35;
  sub_2574C4(v34, v14, v36, v35);
  sub_85148(v35);
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v41[0]);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }

  for (i = v34[1]; ; i = i[1])
  {
    if (i == v34)
    {
      sub_65310(v34);
      if ((atomic_load_explicit(&qword_6F9A48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9A48))
      {
        v36[0] = 0x7068706270687042;
        qword_6F9A38 = 0;
        unk_6F9A40 = 0;
        qword_6F9A30 = 0;
        sub_4625C(&qword_6F9A30, v36, &v36[1], 2uLL);
        __cxa_guard_release(&qword_6F9A48);
      }

      v22 = qword_6F9A30;
      v21 = qword_6F9A38;
      while (v22 != v21)
      {
        if (sub_9C594(*v22, *a3, a3[1]))
        {
          v23 = *a5;
          v25 = *a5 == 1752132965 || v23 == 1969840752 || v23 == 1886352244;
          if (v25 && (sub_343EB8(1701869160, *a3, a3[1]) || !sub_343C60(*a3, a3[1], 0) && !sub_343A8C(*a3, a3[1])))
          {
            goto LABEL_2;
          }

          goto LABEL_53;
        }

        ++v22;
      }

      goto LABEL_53;
    }

    v16 = i[3];
    if (v16)
    {
      v17 = std::__shared_weak_count::lock(v16);
      if (v17)
      {
        break;
      }
    }

LABEL_32:
    ;
  }

  v18 = v17;
  v19 = i[2];
  if (!v19 || !(*(*v19 + 384))(i[2]))
  {
    sub_1A8C0(v18);
    goto LABEL_32;
  }

  v20 = (*(*v19 + 400))(v19);
  sub_1A8C0(v18);
  if ((v20 & 1) == 0)
  {
    goto LABEL_32;
  }

  sub_65310(v34);
  if (*(a4 + 4) != 1986098036 || *a5 == 1751414371 || *a5 == 1651795060)
  {
    goto LABEL_2;
  }

LABEL_53:
  if (sub_9C594(1885892706, *a3, a3[1]))
  {
    if ((atomic_load_explicit(&qword_6F9A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9A08))
    {
      *v36 = xmmword_517460;
      qword_6F99F8 = 0;
      unk_6F9A00 = 0;
      qword_6F99F0 = 0;
      sub_4625C(&qword_6F99F0, v36, &v37, 4uLL);
      __cxa_guard_release(&qword_6F9A08);
    }

    v26 = qword_6F99F0;
    if (qword_6F99F0 != qword_6F99F8)
    {
      do
      {
        if (*(a2 + 8) == a2)
        {
          result = 0;
        }

        else
        {
          v27 = *v26;
          v28 = *(a2 + 8);
          do
          {
            v29 = *(v28 + 16) == v27 || *(v28 + 20) == v27;
            result = v29;
            if (v29)
            {
              break;
            }

            v28 = *(v28 + 8);
          }

          while (v28 != a2);
        }

        if (result)
        {
          break;
        }

        ++v26;
      }

      while (v26 != qword_6F99F8);
      return result;
    }

    return 0;
  }

  if ((atomic_load_explicit(&qword_6F9A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9A28))
  {
    qmemcpy(v36, "iwmpibmpisup", 12);
    qword_6F9A18 = 0;
    unk_6F9A20 = 0;
    qword_6F9A10 = 0;
    sub_4625C(&qword_6F9A10, v36, &v36[1] + 4, 3uLL);
    __cxa_guard_release(&qword_6F9A28);
  }

  v30 = qword_6F9A10;
  if (qword_6F9A10 == qword_6F9A18)
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
      v31 = *v30;
      v32 = *(a2 + 8);
      do
      {
        v33 = *(v32 + 16) == v31 || *(v32 + 20) == v31;
        result = v33;
        if (v33)
        {
          break;
        }

        v32 = *(v32 + 8);
      }

      while (v32 != a2);
    }

    if (result)
    {
      break;
    }

    ++v30;
  }

  while (v30 != qword_6F9A18);
  return result;
}

CFStringRef *sub_A7D38(CFStringRef *a1, const UInt8 *a2, _BYTE *a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v8 = &kCFBooleanTrue;
  if (!*a3)
  {
    v8 = &kCFBooleanFalse;
  }

  a1[1] = *v8;
  return a1;
}

std::string *sub_A7E20(std::string *a1, uint64_t *a2, int a3)
{
  v4 = a1;
  v24 = a3;
  sub_53E8(a1, "[ ");
  v5 = *a2;
  v16 = a2[1];
  if (*a2 != v16)
  {
    v6 = 0;
    v15 = v4;
    do
    {
      if (v6)
      {
        std::string::append(v4, ", ", 2uLL);
      }

      std::string::append(v4, "{ ", 2uLL);
      sub_22170(&v21, *v5);
      v7 = std::string::append(&v21, ", ", 2uLL);
      v8 = *&v7->__r_.__value_.__l.__data_;
      v23 = v7->__r_.__value_.__r.__words[2];
      *__p = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if (v23 >= 0)
      {
        v10 = HIBYTE(v23);
      }

      else
      {
        v10 = __p[1];
      }

      std::string::append(v4, v9, v10);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      __p[0] = __p;
      __p[1] = __p;
      v23 = 0;
      v21.__r_.__value_.__r.__words[0] = &v21;
      *&v21.__r_.__value_.__r.__words[1] = &v21;
      sub_76388(&v19, (v5 + 8));
      for (i = v20; i != &v19; i = i[1])
      {
        v12 = i[2];
        if (*(v12 + 144) != 1885433888)
        {
          v13 = i[3];
          if (*(v12 + 184))
          {
            if (v13)
            {
              atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
            }

            operator new();
          }

          if (v13)
          {
            atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
          }

          operator new();
        }
      }

      sub_87980(&v19);
      v4 = v15;
      v19 = v15;
      v20 = &v24;
      sub_65234(v18, __p);
      sub_A81B0(&v19, v18);
      sub_65310(v18);
      std::string::append(v15, ", ", 2uLL);
      sub_65234(v17, &v21);
      sub_A81B0(&v19, v17);
      sub_65310(v17);
      std::string::append(v15, " }", 2uLL);
      sub_65310(&v21);
      sub_65310(__p);
      v5 += 56;
      v6 = 1;
    }

    while (v5 != v16);
  }

  return std::string::append(v4, " ]", 2uLL);
}

void sub_A80F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_A81B0(uint64_t a1, void *a2)
{
  std::string::append(*a1, "[ ", 2uLL);
  sub_76388(&v9, a2);
  v4 = v10;
  if (v10 != &v9)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        std::string::append(*a1, ", ", 2uLL);
      }

      sub_3FED44(&__p, v4[2], **(a1 + 8));
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

      std::string::append(*a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      std::string::append(*a1, " ]", 2uLL);
      v4 = v4[1];
      v5 = 1;
    }

    while (v4 != &v9);
  }

  sub_87980(&v9);
}

uint64_t sub_A82E4(uint64_t a1)
{
  v2 = *(a1 + 200);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 192);
  if (v5)
  {
    v6 = (*(*v5 + 120))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_1A8C0(v4);
  return v6;
}

_BYTE *sub_A8378(_BYTE *a1, int a2)
{
  if (a2 > 2)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v4 = "hlit";
        return sub_53E8(a1, v4);
      }

      if (a2 == 5)
      {
        v2 = 4363;
        return sub_22170(a1, v2);
      }

      goto LABEL_14;
    }

    v4 = "dlit";
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 4362;
        return sub_22170(a1, v2);
      }

      if (a2 == 2)
      {
        v2 = 5904;
        return sub_22170(a1, v2);
      }

LABEL_14:
      v4 = "";
      return sub_53E8(a1, v4);
    }

    v4 = "unkn";
  }

  return sub_53E8(a1, v4);
}

uint64_t sub_A83F4(uint64_t a1)
{
  v5 = *(a1 + 144);
  if (v5 != 1885892674 && v5 != 1886216820 && v5 != 1885892706)
  {
    return 0;
  }

  v14 = v4;
  v15 = v3;
  v16 = v1;
  v17 = v2;
  result = sub_346E54(a1);
  if (result)
  {
    v12 = 0x676C6F6262616964;
    v13 = 0;
    result = (*(*a1 + 16))(a1, &v12);
    if (result)
    {
      v10 = 4;
      v11 = 0;
      v12 = 0x676C6F6262616964;
      v13 = 0;
      (*(*a1 + 40))(a1, &v12, 0, 0, &v10, &v11);
      return v11;
    }
  }

  return result;
}

std::string *sub_A84F4(std::string *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1;
  sub_53E8(a1, "[ ");
  v6 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v7 = ", ";
    v8 = 1;
    v25 = a2[1];
    do
    {
      if (*v6 == 1987011684)
      {
        if ((v8 & 1) == 0)
        {
          std::string::append(v4, v7, 2uLL);
        }

        sub_88840(&v32, a3, *(v6 + 4), 0);
        v9 = v32;
        v28 = v33;
        if (v32 != v33)
        {
          v27 = v6;
          do
          {
            std::string::append(v4, "{ ", 2uLL);
            sub_22170(&v30, *v6);
            v10 = std::string::append(&v30, "_", 1uLL);
            v11 = *&v10->__r_.__value_.__l.__data_;
            v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
            *&v31.__r_.__value_.__l.__data_ = v11;
            v10->__r_.__value_.__l.__size_ = 0;
            v10->__r_.__value_.__r.__words[2] = 0;
            v10->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v29, *v9);
            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = &v29;
            }

            else
            {
              v12 = v29.__r_.__value_.__r.__words[0];
            }

            if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v29.__r_.__value_.__l.__size_;
            }

            v14 = std::string::append(&v31, v12, size);
            v15 = *&v14->__r_.__value_.__l.__data_;
            v34.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
            *&v34.__r_.__value_.__l.__data_ = v15;
            v14->__r_.__value_.__l.__size_ = 0;
            v14->__r_.__value_.__r.__words[2] = 0;
            v14->__r_.__value_.__r.__words[0] = 0;
            v16 = std::string::append(&v34, v7, 2uLL);
            v17 = *&v16->__r_.__value_.__l.__data_;
            v36 = v16->__r_.__value_.__r.__words[2];
            v35 = v17;
            v16->__r_.__value_.__l.__size_ = 0;
            v16->__r_.__value_.__r.__words[2] = 0;
            v16->__r_.__value_.__r.__words[0] = 0;
            if (v36 >= 0)
            {
              v18 = &v35;
            }

            else
            {
              v18 = v35;
            }

            if (v36 >= 0)
            {
              v19 = HIBYTE(v36);
            }

            else
            {
              v19 = *(&v35 + 1);
            }

            std::string::append(v4, v18, v19);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(v35);
            }

            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v29.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v31.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v30.__r_.__value_.__l.__data_);
            }

            sub_76388(&v31, (v6 + 8));
            v20 = v7;
            v21 = v4;
            *&v35 = &v35;
            *(&v35 + 1) = &v35;
            v36 = 0;
            v34.__r_.__value_.__r.__words[0] = &v34;
            *&v34.__r_.__value_.__r.__words[1] = &v34;
            for (i = v31.__r_.__value_.__l.__size_; i != &v31; i = i->__r_.__value_.__l.__size_)
            {
              v23 = i->__r_.__value_.__r.__words[2];
              if (*(v23 + 144) != 1885433888)
              {
                *(v23 + 184);
                operator new();
              }
            }

            v4 = v21;
            v30.__r_.__value_.__r.__words[0] = v21;
            sub_3A5FBC(&v30, &v35);
            v7 = v20;
            std::string::append(v4, v20, 2uLL);
            sub_3A5FBC(&v30, &v34);
            sub_87980(&v34);
            sub_87980(&v35);
            sub_87980(&v31);
            std::string::append(v4, " }", 2uLL);
            v6 = v27;
            ++v9;
          }

          while (v9 != v28);
          v9 = v32;
        }

        if (v9)
        {
          v33 = v9;
          operator delete(v9);
        }

        v8 = 0;
        v5 = v25;
      }

      v6 += 56;
    }

    while (v6 != v5);
  }

  return std::string::append(v4, " ]", 2uLL);
}

void sub_A8864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v39 + 23) < 0)
  {
    operator delete(*v39);
  }

  _Unwind_Resume(exception_object);
}

void sub_A8954(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v27 = 0x676C6F6273666D61;
  v28 = 0;
  v3 = *(a1 + 664);
  for (i = *(a1 + 672); v3 != i; v3 += 2)
  {
    if (*v3 && sub_A8EE8(*v3, &v27))
    {
      v5 = sub_A8C74(*v3, &v27, 0, 0);
      v6 = v5;
      v26 = v5;
      v7 = v5 / 0x38uLL;
      __chkstk_darwin(v5);
      v9 = (&v23 - v8);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_A9054(*v3, &v27, 0, 0, &v26, (&v23 - v8));
      if (v6 >= 0x38)
      {
        do
        {
          sub_A9A04(&v23, v9);
          v9 = (v9 + 56);
          --v7;
        }

        while (v7);
      }

      v11 = a2[1];
      v10 = a2[2];
      if (v11 >= v10)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a2) >> 3);
        v15 = v14 + 1;
        if (v14 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_189A00();
        }

        v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a2) >> 3);
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

        v33 = a2;
        if (v17)
        {
          if (v17 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_6ACD8();
        }

        v18 = 24 * v14;
        v29 = 0;
        v30 = v18;
        v31 = 24 * v14;
        v32 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        *v18 = 0;
        sub_A9B08(24 * v14, v23, v24, 0xCCCCCCCCCCCCCCCDLL * ((v24 - v23) >> 3));
        v13 = (v31 + 24);
        v19 = a2[1] - *a2;
        v20 = &v30[-v19];
        memcpy(&v30[-v19], *a2, v19);
        v21 = *a2;
        *a2 = v20;
        a2[1] = v13;
        v22 = a2[2];
        a2[2] = v32;
        v31 = v21;
        v32 = v22;
        v29 = v21;
        v30 = v21;
        sub_A9BB0(&v29);
        v12 = v23;
      }

      else
      {
        *v11 = 0;
        *(v11 + 1) = 0;
        *(v11 + 2) = 0;
        v12 = v23;
        sub_A9B08(v11, v23, v24, 0xCCCCCCCCCCCCCCCDLL * ((v24 - v23) >> 3));
        v13 = v11 + 24;
      }

      a2[1] = v13;
      if (v12)
      {
        operator delete(v12);
      }
    }
  }
}

void sub_A8C20(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  v5 = *(v3 - 176);
  if (v5)
  {
    operator delete(v5);
  }

  *(v3 - 176) = v1;
  sub_A9CA4((v3 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_A8C74(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = 40;
  if (*a2 <= 1885762656)
  {
    if (v8 <= 1718641516)
    {
      if (v8 != 1684829283 && v8 != 1685025633)
      {
        goto LABEL_17;
      }
    }

    else if (v8 != 1718641517 && v8 != 1751938147)
    {
      if (v8 == 1885762592)
      {
        return v9;
      }

      goto LABEL_17;
    }

    return 4;
  }

  if (v8 <= 1936092531)
  {
    if (v8 == 1885762657)
    {
      sub_26C0(a1 + 656);
      v15 = *(a1 + 256);
      v16 = *(a1 + 248);
      sub_3174(a1 + 656);
      return (v15 - v16) & 0xFFFFFFF8;
    }

    if (v8 != 1936092513)
    {
      v10 = 1936092515;
      goto LABEL_16;
    }

    v19 = a1 + 656;
    v20 = 1;
    sub_26C0(a1 + 656);
    sub_4E90C(a1, &v17);
    v9 = 56;
    if (v18 > 1836343850)
    {
      if (v18 != 1836343851)
      {
        v14 = 1836344107;
LABEL_32:
        if (v18 != v14)
        {
          v9 = (*(a1 + 256) - *(a1 + 248)) & 0xFFFFFFF8;
        }
      }
    }

    else if (v18 != 1667443507)
    {
      v14 = 1667509043;
      goto LABEL_32;
    }

    sub_3174(a1 + 656);
    return v9;
  }

  if (v8 == 1936092532)
  {
    return v9;
  }

  if (v8 == 1936482676)
  {
    return 4;
  }

  v10 = 1936487523;
LABEL_16:
  if (v8 == v10)
  {
    return 4;
  }

LABEL_17:
  sub_5EE3C(&v17, (a1 + 80), "", 584);
  v9 = (*(*v17 + 32))(v17, a2, a3, a4);
  if (v18)
  {
    sub_1A8C0(v18);
  }

  return v9;
}

void sub_A8EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A8EE8(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = 1;
  if (*a2 <= 1885762656)
  {
    if (v3 <= 1718641516)
    {
      v7 = v3 == 1684829283;
      v8 = 1685025633;
    }

    else
    {
      v7 = v3 == 1718641517 || v3 == 1751938147;
      v8 = 1885762592;
    }

LABEL_18:
    if (!v7 && v3 != v8)
    {
      goto LABEL_24;
    }

    return v4;
  }

  if (v3 > 1936482675)
  {
    v7 = v3 == 1936482676;
    v8 = 1936487523;
    goto LABEL_18;
  }

  if (((v3 - 1936092513) > 0x13 || ((1 << (v3 - 97)) & 0x80005) == 0) && v3 != 1885762657)
  {
LABEL_24:
    sub_5EE3C(&v11, (a1 + 80), "", 499);
    v4 = (*(*v11 + 16))(v11, a2);
    if (v12)
    {
      sub_1A8C0(v12);
    }
  }

  return v4;
}

void sub_A903C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_A9054(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v12 = sub_A8C74(a1, a2, a3, a4);
  if (*a5 < v12)
  {
    v58 = sub_5544(14);
    v59 = *v58;
    if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 594;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): data size too small for specified property", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 561211770;
  }

  v13 = v12;
  v14 = *a2;
  if (*a2 > 1885762656)
  {
    if (v14 <= 1936092531)
    {
      if (v14 == 1885762657)
      {
        sub_26C0(a1 + 656);
        memcpy(a6, *(a1 + 248), v13);
        *a5 = v13;
        sub_3174(a1 + 656);
        return;
      }

      if (v14 != 1936092513)
      {
        if (v14 == 1936092515)
        {
          v15 = *(a1 + 617);
LABEL_55:
          *a6 = v15;
          return;
        }

        goto LABEL_73;
      }

      v64 = a1 + 656;
      v65 = 1;
      sub_26C0(a1 + 656);
      sub_4E90C(a1, v62);
      if (SDWORD2(v62[0]) > 1836343850)
      {
        if (DWORD2(v62[0]) == 1836344107)
        {
          goto LABEL_82;
        }

        v37 = 1836343851;
      }

      else
      {
        if (DWORD2(v62[0]) == 1667443507)
        {
          goto LABEL_82;
        }

        v37 = 1667509043;
      }

      if (DWORD2(v62[0]) != v37)
      {
        v57 = *(a1 + 248);
        v56 = v13;
        goto LABEL_83;
      }

LABEL_82:
      *buf = v62[0];
      *&buf[16] = v62[1];
      v67 = v63;
      v68 = *&v62[0];
      v69 = *&v62[0];
      v56 = v13;
      v57 = buf;
LABEL_83:
      memcpy(a6, v57, v56);
      *a5 = v13;
      sub_3174(a1 + 656);
      return;
    }

    if (v14 == 1936487523)
    {
      v48 = sub_10C868(a1);
      v49 = sub_1134CC(a1);
      if (sub_11363C(a1))
      {
        sub_8D290(buf, (a1 + 104), "", 688);
        *&v62[0] = 0x676C6F6270617272;
        DWORD2(v62[0]) = 0;
        v50 = sub_59410(*buf);
        *(&v53 + 1) = v51;
        *&v53 = v50;
        v52 = v53 >> 32;
        v54 = 1;
        if ((v52 & 0x100000000) != 0 && v52)
        {
          v54 = _os_feature_enabled_impl() ^ 1;
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v54)
        {
          v49 >>= 4;
        }
      }

      v55 = sub_5544(23);
      v25 = (v48 * v49);
      v27 = *v55;
      if (!*v55 || !os_log_type_enabled(*v55, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_71;
      }

      *buf = 136315650;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 694;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      v28 = "%25s:%-5d Adjusted Stream Latency is %d";
      goto LABEL_70;
    }

    if (v14 != 1936482676)
    {
      v16 = 1936092532;
LABEL_15:
      if (v14 == v16)
      {
        v17 = sub_10C630(a1, a6, v14);
        v18 = v17;
        if (*(a1 + 616) == 1)
        {
          if (v17)
          {
            v19 = sub_5544(14);
            v20 = *v19;
            if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualStream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 604;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: error getting current stream format", buf, 0x12u);
            }

            v21 = __cxa_allocate_exception(0x10uLL);
            *v21 = &off_6DDDD0;
            v21[2] = v18;
          }
        }

        else if (v17)
        {
          v61 = __cxa_allocate_exception(0x10uLL);
          *v61 = &off_6DDDD0;
          v61[2] = v18;
        }

        *a5 = v13;
        return;
      }

LABEL_73:
      sub_5EE3C(buf, (a1 + 80), "", 721);
      (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      return;
    }

    v38 = sub_10C868(a1);
    v39 = sub_1134CC(a1);
    v40 = sub_10C354(a1);
    if (sub_11363C(a1))
    {
      sub_8D290(buf, (a1 + 104), "", 652);
      *&v62[0] = 0x676C6F6270617272;
      DWORD2(v62[0]) = 0;
      v41 = sub_59410(*buf);
      *(&v44 + 1) = v42;
      *&v44 = v41;
      v43 = v44 >> 32;
      v45 = 1;
      if ((v43 & 0x100000000) != 0 && v43)
      {
        v45 = _os_feature_enabled_impl() ^ 1;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v45)
      {
        v40 >>= 4;
        v39 >>= 4;
      }
    }

    v46 = (*(**(a1 + 152) + 152))(*(a1 + 152));
    v47 = sub_5544(23);
    v25 = (v38 * (v39 + v40 + v46));
    v27 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 660;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      v28 = "%25s:%-5d Adjusted StreamLatency is %d";
      goto LABEL_70;
    }

    goto LABEL_71;
  }

  if (v14 > 1718641516)
  {
    if (v14 == 1718641517)
    {
      v15 = *(a1 + 944);
      goto LABEL_55;
    }

    if (v14 != 1751938147)
    {
      v16 = 1885762592;
      goto LABEL_15;
    }

    v29 = sub_10C868(a1);
    v30 = sub_10C354(a1);
    if (sub_11363C(a1))
    {
      sub_8D290(buf, (a1 + 104), "", 671);
      *&v62[0] = 0x676C6F6270617272;
      DWORD2(v62[0]) = 0;
      v31 = sub_59410(*buf);
      *(&v34 + 1) = v32;
      *&v34 = v31;
      v33 = v34 >> 32;
      v35 = 1;
      if ((v33 & 0x100000000) != 0 && v33)
      {
        v35 = _os_feature_enabled_impl() ^ 1;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v35)
      {
        v30 >>= 4;
      }
    }

    v36 = sub_5544(23);
    v25 = (v29 * v30);
    v27 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 677;
      *&buf[18] = 1024;
      *&buf[20] = v25;
      v28 = "%25s:%-5d Adjusted HW Latency is %d";
LABEL_70:
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0x18u);
    }

LABEL_71:
    *a6 = v25;
    return;
  }

  if (v14 == 1684829283)
  {
    v24 = sub_10C868(a1);
    v25 = (v24 * (*(**(a1 + 152) + 152))(*(a1 + 152)));
    v26 = sub_5544(23);
    v27 = *v26;
    if (!*v26 || !os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_71;
    }

    *buf = 136315650;
    *&buf[4] = "VirtualStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 705;
    *&buf[18] = 1024;
    *&buf[20] = v25;
    v28 = "%25s:%-5d Adjusted DSP Latency is %d";
    goto LABEL_70;
  }

  if (v14 != 1685025633)
  {
    goto LABEL_73;
  }

  v22 = *(a1 + 152);
  if (*(v22 + 796) == 1)
  {
    v23 = *(v22 + 797);
  }

  else
  {
    v23 = 0;
  }

  sub_5440C(v23, a5, a6);
}

void sub_A99B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_1A8C0(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_A9A04(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      sub_189A00();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_36EAF4(v11);
    }

    v12 = 40 * v8;
    v13 = *a2;
    v14 = a2[1];
    *(v12 + 32) = *(a2 + 4);
    *v12 = v13;
    *(v12 + 16) = v14;
    v7 = 40 * v8 + 40;
    v15 = *(a1 + 8) - *a1;
    v16 = v12 - v15;
    memcpy((v12 - v15), *a1, v15);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(a1 + 8) = v7;
}

void sub_A9B08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x666666666666667)
    {
      sub_36EAF4(a4);
    }

    sub_189A00();
  }
}

void sub_A9B94(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A9BB0(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_A9C14(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(a1 + 664);
  for (i = *(a1 + 672); v2 != i; v2 += 2)
  {
    if (*v2)
    {
      if (!sub_4E90C(*v2, v5))
      {
        sub_A9A04(a2, v5);
      }
    }
  }
}

void sub_A9C88(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_A9CA4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_A9D34(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 != a3)
  {
    v8 = a2;
    v10 = qword_6E7110;
    do
    {
      v11 = *v8;
      v12 = *a1;
      if (v10 != -1)
      {
        dispatch_once(&qword_6E7110, &stru_6BA800);
      }

      if (off_6E7168)
      {
        off_6E7168(v11, v12, a4, a5);
        v10 = qword_6E7110;
      }

      else
      {
        v10 = -1;
      }

      ++v8;
    }

    while (v8 != a3);
  }
}

void sub_A9E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A9E90(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 1936092514)
  {
    if (v2 > 1936482675)
    {
      if (v2 != 1936482676 && v2 != 1936487523)
      {
        if (v2 == 1952542835)
        {
          return (*(**(a1 + 120) + 16))();
        }

        return sub_A9F84(a1, a2);
      }

      return 1;
    }

    v3 = v2 == 1936092515;
    v4 = 1936222577;
  }

  else
  {
    if (v2 > 1751938146)
    {
      if ((v2 - 1935765619) >= 2 && v2 != 1751938147)
      {
        return sub_A9F84(a1, a2);
      }

      return 1;
    }

    v3 = v2 == 1684829283 || v2 == 1685025633;
    v4 = 1718641517;
  }

  if (!v3 && v2 != v4)
  {
    return sub_A9F84(a1, a2);
  }

  return 1;
}

uint64_t sub_A9F84(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = 1;
  if (*a2 <= 1819107690)
  {
    if (v2 <= 1818455661)
    {
      if (v2 != 1818452846)
      {
        if (v2 != 1818454126)
        {
          return sub_1537C(a1, a2) != 0;
        }

        v7 = (*(*a1 + 136))(a1);
        if (!v7)
        {
          return 0;
        }

        goto LABEL_25;
      }

      v7 = (*(*a1 + 144))(a1);
      if (v7)
      {
        goto LABEL_25;
      }
    }

    else
    {
      if (v2 != 1818455662)
      {
        if (v2 == 1818850145)
        {
          return v3;
        }

        v4 = 1818850162;
        goto LABEL_10;
      }

      v7 = (*(*a1 + 152))(a1);
      if (v7)
      {
        goto LABEL_25;
      }
    }

    return 0;
  }

  if (v2 > 1935894637)
  {
    if (v2 != 1935894638 && v2 != 1935960434 && v2 != 1952805485)
    {
      return sub_1537C(a1, a2) != 0;
    }

    return v3;
  }

  if (v2 == 1819107691)
  {
    v7 = (*(*a1 + 128))(a1);
    if (!v7)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v2 == 1819173229)
  {
    v7 = (*(*a1 + 120))(a1);
    if (!v7)
    {
      return 0;
    }

LABEL_25:
    CFRelease(v7);
    return 1;
  }

  v4 = 1819569763;
LABEL_10:
  if (v2 != v4)
  {
    return sub_1537C(a1, a2) != 0;
  }

  return v3;
}

void sub_AA17C(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4, int *a5, uint64_t *a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v43 = *a2;
      LODWORD(v44) = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v30 = sub_5544(14);
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v43 = *a2;
      LODWORD(v44) = a2[2];
      sub_22CE0(&__p);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    *v31 = &off_6DDDD0;
    v31[2] = 561211770;
  }

  if (!a6)
  {
    v32 = sub_5544(14);
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      v43 = *a2;
      LODWORD(v44) = a2[2];
      sub_22CE0(&__p);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    *v33 = &off_6DDDD0;
    v33[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1935765619)
  {
    if (v12 <= 1718641516)
    {
      if (v12 != 1684829283)
      {
        v16 = 1685025633;
LABEL_26:
        if (v12 != v16)
        {
          goto LABEL_45;
        }
      }
    }

    else if (v12 != 1718641517 && v12 != 1751938147)
    {
      if (v12 != 1935765619)
      {
        goto LABEL_45;
      }

      v14 = *a5;
      if (v14 != (*(*a1 + 64))(a1, a2, a3, a4))
      {
        v38 = sub_5544(14);
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          v43 = *a2;
          LODWORD(v44) = a2[2];
          sub_22CE0(&__p);
        }

        v39 = __cxa_allocate_exception(0x10uLL);
        *v39 = &off_6DDDD0;
        v39[2] = 561211770;
      }

      (*(**(a1 + 120) + 168))(&__p);
      *buf = 0;
      v48 = 0;
      v49 = 0;
      strcpy(v50, "cwdv");
      v50[8] = 0;
      v51 = 3;
      v53[0] = 0;
      v53[1] = 0;
      v52 = v53;
      v56 = 0;
      v57 = 0;
      v55 = 0;
      v54 = 44739240;
      if (a4 && *a4 == 1935895670)
      {
        v54 = 44731048;
      }

      sub_87760(&v43, *(a1 + 16), &__p, buf);
      sub_1141D8(cf, v43, &v44);
      if (cf[0])
      {
        CFRetain(cf[0]);
        v15 = cf[0];
      }

      else
      {
        v15 = 0;
      }

      *a6 = v15;
      sub_A0804(cf);
      sub_477A0(v44);
      if (SHIBYTE(v57) < 0)
      {
        operator delete(v55);
      }

      sub_477A0(v53[0]);
      if (*buf)
      {
        v48 = *buf;
        operator delete(*buf);
      }

      sub_65310(&__p);
      goto LABEL_29;
    }

LABEL_27:
    v17 = *a5;
    if (v17 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v34 = sub_5544(14);
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        v43 = *a2;
        LODWORD(v44) = a2[2];
        sub_22CE0(&__p);
      }

      v35 = __cxa_allocate_exception(0x10uLL);
      *v35 = &off_6DDDD0;
      v35[2] = 561211770;
    }

    (*(**(a1 + 120) + 40))(*(a1 + 120), a2, a3, a4, a5, a6);
    goto LABEL_29;
  }

  if (v12 > 1936482675)
  {
    if (v12 != 1936482676 && v12 != 1936487523)
    {
      v16 = 1952542835;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v12 != 1935765620)
  {
    if (v12 != 1936092515)
    {
      if (v12 == 1936222577)
      {
        v13 = *a5;
        if (v13 != (*(*a1 + 64))(a1, a2, a3, a4))
        {
          v36 = sub_5544(14);
          if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
          {
            v43 = *a2;
            LODWORD(v44) = a2[2];
            sub_22CE0(&__p);
          }

          v37 = __cxa_allocate_exception(0x10uLL);
          *v37 = &off_6DDDD0;
          v37[2] = 561211770;
        }

        *a6 = *(a1 + 128);
        goto LABEL_29;
      }

LABEL_45:
      sub_AB128(a1, a2, a3, a4, a5, a6);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v24 = *a5;
  if (v24 != (*(*a1 + 64))(a1, a2, a3, a4))
  {
    v40 = sub_5544(14);
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      v43 = *a2;
      LODWORD(v44) = a2[2];
      sub_22CE0(&__p);
    }

    v41 = __cxa_allocate_exception(0x10uLL);
    *v41 = &off_6DDDD0;
    v41[2] = 561211770;
  }

  __p = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v46 = 257;
  (*(**(a1 + 120) + 168))(buf);
  v25 = a4 && *a4 == 1935895670;
  for (i = v48; i != buf; i = *(i + 1))
  {
    sub_88A00(&v43, i + 2, "", 196);
    if (!v25 || (v43[23] & 0x10) != 0)
    {
      sub_A072C(&__p, *(v43 + 36));
    }

    if (v44)
    {
      sub_1A8C0(v44);
    }
  }

  if (__p)
  {
    CFRetain(__p);
    v27 = __p;
  }

  else
  {
    v27 = 0;
  }

  *a6 = v27;
  sub_65310(buf);
  sub_A0804(&__p);
LABEL_29:
  if (*a2 == 1936092532 || *a2 == 1885762592)
  {
    v18 = sub_5544(4);
    v19 = sub_5544(36);
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
        goto LABEL_37;
      }
    }

    if ((v21 & v22) == 0)
    {
      v18 = v19;
    }

LABEL_37:
    v23 = *v18;
    if (v23)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *a2;
        sub_618A4(&__p);
      }
    }
  }
}

void sub_AB088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_AB128(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  v9 = *a2;
  if (*a2 <= 1819173228)
  {
    if (v9 > 1818455661)
    {
      if (v9 == 1818455662)
      {
        v16 = *a5;
        if (v16 != (*(*a1 + 64))(a1, a2))
        {
          v27 = sub_5544(14);
          v22 = *v27;
          if (!*v27 || !os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v33 = 136315394;
          v34 = "HP_Stream.cpp";
          v35 = 1024;
          v36 = 282;
          v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementNumberName";
          goto LABEL_65;
        }

        result = (*(*a1 + 152))(a1, a2);
      }

      else
      {
        if (v9 != 1819107691)
        {
          goto LABEL_35;
        }

        v13 = *a5;
        if (v13 != (*(*a1 + 64))(a1, a2))
        {
          v24 = sub_5544(14);
          v22 = *v24;
          if (!*v24 || !os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_66;
          }

          v33 = 136315394;
          v34 = "HP_Stream.cpp";
          v35 = 1024;
          v36 = 267;
          v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyName";
          goto LABEL_65;
        }

        result = (*(*a1 + 128))(a1);
      }
    }

    else if (v9 == 1818452846)
    {
      v15 = *a5;
      if (v15 != (*(*a1 + 64))(a1, a2))
      {
        v26 = sub_5544(14);
        v22 = *v26;
        if (!*v26 || !os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v33 = 136315394;
        v34 = "HP_Stream.cpp";
        v35 = 1024;
        v36 = 277;
        v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementCategoryName";
        goto LABEL_65;
      }

      result = (*(*a1 + 144))(a1, a2);
    }

    else
    {
      if (v9 != 1818454126)
      {
        goto LABEL_35;
      }

      v12 = *a5;
      if (v12 != (*(*a1 + 64))(a1, a2))
      {
        v21 = sub_5544(14);
        v22 = *v21;
        if (!*v21 || !os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_66;
        }

        v33 = 136315394;
        v34 = "HP_Stream.cpp";
        v35 = 1024;
        v36 = 272;
        v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyElementName";
        goto LABEL_65;
      }

      result = (*(*a1 + 136))(a1, a2);
    }

LABEL_30:
    *a6 = result;
    return result;
  }

  if (v9 > 1935894637)
  {
    if (v9 != 1935894638)
    {
      if (v9 != 1935960434)
      {
        if (v9 == 1952805485)
        {
          v10 = *a5;
          if (v10 == (*(*a1 + 64))(a1, a2))
          {
            result = (*(*a1 + 160))(a1);
LABEL_21:
            *a6 = result;
            return result;
          }

          v29 = sub_5544(14);
          v22 = *v29;
          if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
          {
            v33 = 136315394;
            v34 = "HP_Stream.cpp";
            v35 = 1024;
            v36 = 292;
            v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyTerminalType";
            goto LABEL_65;
          }

LABEL_66:
          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 561211770;
        }

        goto LABEL_35;
      }

      v20 = *a5;
      result = (*(*a1 + 64))(a1, a2);
      if (v20 != result)
      {
        v31 = sub_5544(14);
        v22 = *v31;
        if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
        {
          v33 = 136315394;
          v34 = "HP_Stream.cpp";
          v35 = 1024;
          v36 = 287;
          v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyDirection";
          goto LABEL_65;
        }

        goto LABEL_66;
      }

      v18 = *(a1 + 88);
LABEL_33:
      *a6 = v18;
      return result;
    }

    v17 = *a5;
    result = (*(*a1 + 64))(a1, a2);
    if (v17 == result)
    {
      v18 = *(a1 + 96) + *(a1 + 92);
      goto LABEL_33;
    }

    v28 = sub_5544(14);
    v22 = *v28;
    if (!*v28 || !os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    v33 = 136315394;
    v34 = "HP_Stream.cpp";
    v35 = 1024;
    v36 = 297;
    v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyStartingChannel";
LABEL_65:
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v23, &v33, 0x12u);
    goto LABEL_66;
  }

  if (v9 == 1819173229)
  {
    v19 = *a5;
    if (v19 != (*(*a1 + 64))(a1, a2))
    {
      v30 = sub_5544(14);
      v22 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        v33 = 136315394;
        v34 = "HP_Stream.cpp";
        v35 = 1024;
        v36 = 262;
        v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioObjectPropertyName";
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    result = (*(*a1 + 120))(a1);
    goto LABEL_30;
  }

  if (v9 == 1819569763)
  {
    v14 = *a5;
    if (v14 == (*(*a1 + 64))(a1, a2))
    {
      result = (*(*a1 + 168))(a1);
      goto LABEL_21;
    }

    v25 = sub_5544(14);
    v22 = *v25;
    if (!*v25 || !os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_66;
    }

    v33 = 136315394;
    v34 = "HP_Stream.cpp";
    v35 = 1024;
    v36 = 302;
    v23 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyLatency";
    goto LABEL_65;
  }

LABEL_35:

  return sub_A654C(a1, a2, a3, a4, a5, a6);
}

void sub_AB984(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unint64_t a6)
{
  v6 = a6;
  v9 = *a2;
  if (*a2 <= 1885762656)
  {
    if (v9 != 1853059619)
    {
      if (v9 == 1853059700)
      {
        if (*a5 != 8)
        {
          v39 = sub_5544(14);
          v11 = *v39;
          if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
          {
            v41 = 136315394;
            v42 = "HP_FormatList.cpp";
            v43 = 1024;
            v44 = 684;
            v12 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate";
            goto LABEL_60;
          }

          goto LABEL_61;
        }

        *a6 = *(a1 + 16);
      }

      else if (v9 == 1885762592)
      {
        if (*a5 != 40)
        {
          v10 = sub_5544(14);
          v11 = *v10;
          if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
          {
            v41 = 136315394;
            v42 = "HP_FormatList.cpp";
            v43 = 1024;
            v44 = 715;
            v12 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyPhysicalFormat";
LABEL_60:
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v12, &v41, 0x12u);
            goto LABEL_61;
          }

          goto LABEL_61;
        }

LABEL_13:
        v13 = *(a1 + 16);
        v14 = *(a1 + 32);
        *(a6 + 32) = *(a1 + 48);
        *a6 = v13;
        *(a6 + 16) = v14;
        return;
      }

      return;
    }

    v15 = *a5;
    v16 = *a5 >> 4;
    v17 = sub_D75A8(a1);
    if (v17 >= v15 >> 4)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      v20 = 0;
      v21 = v6;
      do
      {
        sub_D7B08(a1, v20++, v21++);
      }

      while (v19 != v20);
      v22 = v19;
    }

    else
    {
      v22 = 0;
    }

    v31 = (v6 + 16 * v22);
    v32 = 126 - 2 * __clz(v22);
    if (v19)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    sub_2F73EC(v6, v31, v33, 1, v18);
    v34 = 16 * v19;
LABEL_52:
    *a5 = v34;
    return;
  }

  switch(v9)
  {
    case 1885762657:
      v23 = *a5 / 0x38;
      v24 = *(a1 + 56);
      v25 = *(a1 + 64);
      if (v24 == v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = 0;
        do
        {
          v26 += (*(v24 + 48) - *(v24 + 40)) >> 4;
          v24 += 64;
        }

        while (v24 != v25);
      }

      if (v26 >= v23)
      {
        v35 = v23;
      }

      else
      {
        v35 = v26;
      }

      if (v35)
      {
        for (i = 0; i != v35; ++i)
        {
          sub_D7934(*(a1 + 56), *(a1 + 64), i, v6);
          v6 += 56;
        }
      }

      goto LABEL_51;
    case 1936092513:
      v27 = *a5 / 0x38;
      v28 = *(a1 + 80);
      v29 = *(a1 + 88);
      if (v28 == v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = 0;
        do
        {
          v30 += (*(v28 + 48) - *(v28 + 40)) >> 4;
          v28 += 64;
        }

        while (v28 != v29);
      }

      if (v30 >= v27)
      {
        v35 = v27;
      }

      else
      {
        v35 = v30;
      }

      if (v35)
      {
        for (j = 0; j != v35; ++j)
        {
          sub_D7934(*(a1 + 80), *(a1 + 88), j, v6);
          v6 += 56;
        }
      }

LABEL_51:
      v34 = 56 * v35;
      goto LABEL_52;
    case 1936092532:
      if (*a5 != 40)
      {
        v38 = sub_5544(14);
        v11 = *v38;
        if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          v41 = 136315394;
          v42 = "HP_FormatList.cpp";
          v43 = 1024;
          v44 = 701;
          v12 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioStreamPropertyVirtualFormat";
          goto LABEL_60;
        }

LABEL_61:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 561211770;
      }

      goto LABEL_13;
  }
}