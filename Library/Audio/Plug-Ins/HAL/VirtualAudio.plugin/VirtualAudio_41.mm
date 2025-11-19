void sub_3672B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3672D8(uint64_t a1, int *a2)
{
  v3 = 0;
  v4 = *a2;
  if (*a2 > 1819505772)
  {
    if (v4 > 1936746610)
    {
      if (v4 <= 1937204589)
      {
        if ((v4 - 1936747876) < 2 || v4 == 1936746611)
        {
          goto LABEL_50;
        }

        return v3;
      }

      v7 = v4 == 1937204590 || v4 == 2004050279;
      v8 = 1986947428;
    }

    else
    {
      if (v4 > 1936225135)
      {
        if (v4 > 1936745317)
        {
          if (v4 == 1936745318)
          {
            goto LABEL_50;
          }

          v6 = 25966;
        }

        else
        {
          if (v4 == 1936225136)
          {
            goto LABEL_50;
          }

          v6 = 24944;
        }

        v5 = v6 | 0x73700000;
        goto LABEL_49;
      }

      v7 = v4 == 1819505773 || v4 == 1869832547;
      v8 = 1936221550;
    }
  }

  else if (v4 <= 1668051826)
  {
    if (v4 > 1651794289)
    {
      v7 = v4 == 1651794290 || v4 == 1651797100;
      v8 = 1651798886;
    }

    else
    {
      v7 = v4 == 1650551140 || v4 == 1650551924;
      v8 = 1651271025;
    }
  }

  else
  {
    if (v4 > 1752327776)
    {
      if (v4 <= 1767989615)
      {
        if (v4 != 1752327777)
        {
          v5 = 1752462195;
          goto LABEL_49;
        }

LABEL_50:
        sub_365018(&v12, a1);
        v3 = (*(*v12 + 24))(v12, a2);
        if (v13)
        {
          sub_1A8C0(v13);
        }

        return v3;
      }

      if (v4 == 1767989616)
      {
        goto LABEL_50;
      }

      v5 = 1819503987;
LABEL_49:
      if (v4 != v5)
      {
        return v3;
      }

      goto LABEL_50;
    }

    v7 = v4 == 1668051827 || v4 == 1684826732;
    v8 = 1685021040;
  }

  if (v7 || v4 == v8)
  {
    goto LABEL_50;
  }

  return v3;
}

void sub_367534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_36754C(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 > 1768382831)
  {
    if (v3 > 1936745837)
    {
      if (v3 <= 1970040163)
      {
        if (v3 > 1936747875)
        {
          if ((v3 - 1936747876) < 2)
          {
            goto LABEL_64;
          }

          v5 = 1937204590;
          goto LABEL_63;
        }

        if (v3 == 1936745838)
        {
          goto LABEL_64;
        }

        v7 = 26739;
        goto LABEL_52;
      }

      if (v3 > 1986947427)
      {
        if (v3 != 1986947428 && v3 != 2004050279)
        {
          v5 = 2004054901;
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v3 == 1970040164)
      {
        goto LABEL_64;
      }

      v5 = 1970496630;
    }

    else
    {
      if (v3 > 1885955427)
      {
        if (v3 <= 1936225135)
        {
          if (v3 != 1885955428)
          {
            if (v3 == 1935762278)
            {
              goto LABEL_64;
            }

            v5 = 1936221550;
            goto LABEL_63;
          }

          return 1;
        }

        if (v3 == 1936225136 || v3 == 1936744816)
        {
          goto LABEL_64;
        }

        v7 = 25446;
LABEL_52:
        v5 = v7 | 0x73700000;
        goto LABEL_63;
      }

      if (v3 > 1819503986)
      {
        if (v3 != 1819503987 && v3 != 1819505773)
        {
          v5 = 1869832547;
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v3 == 1768382832)
      {
        goto LABEL_64;
      }

      v5 = 1819046768;
    }

LABEL_63:
    if (v3 == v5)
    {
      goto LABEL_64;
    }

    return 0;
  }

  if (v3 <= 1651798130)
  {
    if (v3 <= 1651794289)
    {
      if (v3 > 1650551139)
      {
        if (v3 != 1650551140 && v3 != 1650551924)
        {
          v5 = 1651271025;
          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v3 == 1633773925)
      {
        goto LABEL_64;
      }

      v5 = 1633973868;
      goto LABEL_63;
    }

    if (v3 > 1651796335)
    {
      if (v3 == 1651796336 || v3 == 1651796339)
      {
        goto LABEL_64;
      }

      v6 = 27756;
LABEL_60:
      v5 = v6 | 0x62740000;
      goto LABEL_63;
    }

    if (v3 == 1651794290)
    {
      goto LABEL_64;
    }

    if (v3 != 1651796325)
    {
      return 0;
    }

    return (*(*a1 + 368))(a1) != -1;
  }

  if (v3 <= 1685484389)
  {
    if (v3 > 1668051826)
    {
      if (v3 != 1668051827 && v3 != 1684826732)
      {
        v5 = 1685021040;
        goto LABEL_63;
      }

      goto LABEL_64;
    }

    if (v3 == 1651798131)
    {
      goto LABEL_64;
    }

    v6 = 29542;
    goto LABEL_60;
  }

  if (v3 > 1752327776)
  {
    if (v3 != 1752327777 && v3 != 1752462195)
    {
      v5 = 1767989616;
      goto LABEL_63;
    }

LABEL_64:
    sub_365018(&v9, a1);
    v8 = (*(*v9 + 16))(v9, a2);
    if (v10)
    {
      sub_1A8C0(v10);
    }

    return v8;
  }

  if (v3 == 1685484390)
  {
    goto LABEL_64;
  }

  if (v3 != 1717987685 && v3 != 1717987696)
  {
    return 0;
  }

  return sub_34CFF0(a1);
}

void sub_36797C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_367994(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, __int128 *a6, __int128 *a7, char a8)
{
  v16 = a3[1];
  if (v16 && (v17 = std::__shared_weak_count::lock(v16)) != 0)
  {
    v18 = v17;
    v19 = 0;
    v47 = *a3;
    v48 = v17;
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v18 = 0;
    v47 = 0;
    v48 = 0;
    v19 = 1;
  }

  memset(buf, 0, 24);
  sub_25160C(a1, a2, &v47, a4, a5, a6, buf, a7, a8, 1);
  v49 = buf;
  sub_72C14(&v49);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if ((v19 & 1) == 0)
  {
    sub_1A8C0(v18);
  }

  *a1 = &off_6C3DA8;
  *(a1 + 720) = *a3;
  v20 = a3[1];
  *(a1 + 728) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  v21 = (a1 + 744);
  *(a1 + 744) = 0u;
  *(a1 + 736) = a1 + 744;
  v22 = a3[1];
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = v23;
      v25 = *a3;
      if (v25)
      {
        strcpy(buf, "paaibolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v26 = sub_59410(v25);
        v27 = 0;
        *(&v30 + 1) = v28;
        *&v30 = v26;
        v29 = v30 >> 32;
        if ((v29 & 0x100000000) == 0)
        {
          goto LABEL_20;
        }

        if (!v29)
        {
          goto LABEL_20;
        }

        v31 = (*(*v25 + 376))(v25);
        v27 = 0;
        if ((v31 & 0x100000000) == 0 || !v31)
        {
          goto LABEL_20;
        }

        LODWORD(v47) = (*(*v25 + 120))(v25);
        strcpy(buf, "diabbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v32 = sub_542F0(&v47, buf, 0, 0);
        *(&v35 + 1) = v33;
        *&v35 = v32;
        v34 = v35 >> 32;
        if ((v34 & 0x100000000) != 0)
        {
          v27 = v34 > 0x2009 && v34 != 8208;
          goto LABEL_20;
        }
      }

      v27 = 0;
LABEL_20:
      sub_1A8C0(v24);
      goto LABEL_22;
    }
  }

  v27 = 0;
LABEL_22:
  *(a1 + 760) = v27;
  v36 = sub_5544(24);
  v37 = *v36;
  if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a6 + 23) >= 0)
    {
      v38 = a6;
    }

    else
    {
      v38 = *a6;
    }

    if (*(a1 + 760))
    {
      v39 = "yes";
    }

    else
    {
      v39 = "no";
    }

    *buf = 136315906;
    *&buf[4] = "Port_Bluetooth_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 104;
    *&buf[18] = 2080;
    *&buf[20] = v38;
    v51 = 2080;
    v52 = v39;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port %s supports PME: %s", buf, 0x26u);
  }

  for (i = 0; i != 88; i += 4)
  {
    v41 = *v21;
    if (!*v21)
    {
LABEL_39:
      operator new();
    }

    v42 = *&aEitbpitbsitbsp[i];
    while (1)
    {
      while (1)
      {
        v43 = v41;
        v44 = *(v41 + 32);
        if (v42 >= v44)
        {
          break;
        }

        v41 = *v43;
        if (!*v43)
        {
          goto LABEL_39;
        }
      }

      if (v44 >= v42)
      {
        break;
      }

      v41 = v43[1];
      if (!v41)
      {
        goto LABEL_39;
      }
    }
  }

  return a1;
}

void sub_367DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13)
{
  sub_1A8C0(v14);
  sub_367E74(*(v13 + 744));
  v16 = *(v13 + 728);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_24FAA4(v13);
  _Unwind_Resume(a1);
}

void sub_367E74(void *a1)
{
  if (a1)
  {
    sub_367E74(*a1);
    sub_367E74(a1[1]);
    sub_367EC8((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_367EC8(uint64_t a1)
{
  *a1 = off_6D0730;
  std::condition_variable::~condition_variable((a1 + 152));
  std::condition_variable::~condition_variable((a1 + 104));
  std::mutex::~mutex((a1 + 40));
  sub_477A0(*(a1 + 24));
  return a1;
}

void sub_367F24(uint64_t a1)
{
  sub_367EC8(a1);

  operator delete();
}

uint64_t sub_367F5C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_367EC8(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_367FA8(uint64_t a1)
{
  *a1 = &off_6C3DA8;
  sub_367E74(*(a1 + 744));
  v2 = *(a1 + 728);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_24FAA4(a1);
}

void sub_36800C(uint64_t a1)
{
  sub_367FA8(a1);

  operator delete();
}

void *sub_368048(void *a1, uint64_t *a2, int a3, uint64_t a4, __int128 *a5, __int128 *a6, char a7, int a8)
{
  sub_28B7C0(v16, a3, a8);
  memset(v15, 0, sizeof(v15));
  sub_367994(a1, v16, a2, v15, a4, a5, a6, a7);
  sub_477A0(v16[3]);
  *a1 = &off_6C3FC8;
  return a1;
}

uint64_t sub_368114(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = v4 + 32;
  }

  else
  {
    v5 = 0;
  }

  sub_1A8C0(v3);
  return v5;
}

void sub_368164(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

__n128 sub_3681F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6C45A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_36846C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v6 = *(a1 + 57);
  if (sub_368778(a1, a2, &v6))
  {
    return 1;
  }

  if (*(a1 + 53) != 1)
  {
    return 0;
  }

  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (!(*(*a2 + 24))(a2, &v7))
  {
    return 0;
  }

  v4 = 1;
  (*(*a2 + 48))(a2, &v7, 0, 0, 1, a1 + 56);
  return v4;
}

void sub_36875C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_368778(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 1;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_36883C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {
    v13 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v14 = v13;
      v15 = sub_5544(1);
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&a12, v14[2]);
          sub_22CE0(&__p);
        }
      }

      __cxa_end_catch();
    }

    else
    {
      v16 = sub_5544(1);
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(&a12);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x36880CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_368A48(_BYTE *a1, uint64_t a2)
{
  if (a1[52])
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = a1[57];
  v6 = sub_368778(a1, a2, &v7);
  if (!v6)
  {
    a1[56] = v7;
  }

  return !v6;
}

uint64_t sub_368AA4(uint64_t result, int a2, _BYTE *a3)
{
  if (a2 != 1)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_DevicePropertyCache.cpp";
      v8 = 1024;
      v9 = 39;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  *(result + 56) = *a3;
  return result;
}

void sub_368BC8(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void *sub_368C00(void *a1)
{
  *a1 = off_6C41E8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_368C58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4530;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_368CCC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 8;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_368D90(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {
    v13 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v14 = v13;
      v15 = sub_5544(1);
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&a12, v14[2]);
          sub_22CE0(&__p);
        }
      }

      __cxa_end_catch();
    }

    else
    {
      v16 = sub_5544(1);
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(&a12);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x368D60);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_368F9C(uint64_t result, int a2, void *a3)
{
  if (a2 != 8)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_DevicePropertyCache.cpp";
      v8 = 1024;
      v9 = 39;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  *(result + 56) = *a3;
  return result;
}

void sub_3690C0(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_3690F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C44C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_36916C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 64);
  if (sub_369470(a1, a2, &v5))
  {
    return 1;
  }

  if (*(a1 + 53) != 1)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  result = (*(*a2 + 24))(a2, &v6);
  if (result)
  {
    (*(*a2 + 48))(a2, &v6, 0, 0, 8, a1 + 56);
    return 1;
  }

  return result;
}

void sub_369454(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_369470(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 8;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_369534(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (a2)
  {
    v13 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v14 = v13;
      v15 = sub_5544(1);
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&a12, v14[2]);
          sub_22CE0(&__p);
        }
      }

      __cxa_end_catch();
    }

    else
    {
      v16 = sub_5544(1);
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        sub_22CE0(&a12);
      }

      __cxa_end_catch();
    }

    JUMPOUT(0x369504);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_369740(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v7[3] = v2;
  v7[4] = v3;
  v7[0] = *(a1 + 64);
  v6 = sub_369470(a1, a2, v7);
  if (!v6)
  {
    *(a1 + 56) = v7[0];
  }

  return !v6;
}

uint64_t sub_36979C(uint64_t result, int a2, void *a3)
{
  if (a2 != 8)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "VirtualAudio_DevicePropertyCache.cpp";
      v8 = 1024;
      v9 = 39;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  *(result + 56) = *a3;
  return result;
}

void sub_3698C0(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_3698F8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_36996C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v4 = *(a1 + 112);
  v6[0] = *(a1 + 96);
  v6[1] = v4;
  v7 = *(a1 + 128);
  if (sub_17B574(a1, a2, v6))
  {
    return 1;
  }

  if (*(a1 + 53) != 1)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  result = (*(*a2 + 24))(a2, &v8);
  if (result)
  {
    (*(*a2 + 48))(a2, &v8, 0, 0, 40, a1 + 56);
    return 1;
  }

  return result;
}

void sub_369C68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

__n128 sub_369C84(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 != 40)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "VirtualAudio_DevicePropertyCache.cpp";
      v10 = 1024;
      v11 = 39;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  result = *a3;
  v4 = *(a3 + 16);
  *(a1 + 88) = *(a3 + 32);
  *(a1 + 72) = v4;
  *(a1 + 56) = result;
  return result;
}

void sub_369DB4(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_369DEC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C43E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_369E60(uint64_t a1, int a2, __n128 *a3)
{
  if (a2 != 16)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_DevicePropertyCache.cpp";
      v9 = 1024;
      v10 = 39;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  result = *a3;
  *(a1 + 56) = *a3;
  return result;
}

void sub_369F84(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_369FBC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

double sub_36A030(uint64_t a1, int a2, double *a3)
{
  if (a2 != 8)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_DevicePropertyCache.cpp";
      v9 = 1024;
      v10 = 39;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  result = *a3;
  *(a1 + 56) = *a3;
  return result;
}

void sub_36A154(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_36A18C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

float sub_36A200(uint64_t a1, int a2, float *a3)
{
  if (a2 != 4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_DevicePropertyCache.cpp";
      v9 = 1024;
      v10 = 39;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Incorrect data size.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Incorrect data size.");
  }

  result = *a3;
  *(a1 + 56) = *a3;
  return result;
}

void sub_36A324(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_36A35C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4290;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_36A3D0(void *a1)
{
  sub_368C00(a1);

  operator delete();
}

void sub_36A408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4220;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

_BYTE **sub_36A47C(_BYTE **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_24F52C(v2);
    operator delete();
  }

  return a1;
}

void sub_36A4C4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[119];
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[118];
      if (v13)
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        v14 = (*(*v13 + 96))(v13, 0, 0);
        (*(*v14 + 120))(v14, &v16);
        *&v16 = (*(*a1 + 104))(a1);
        sub_61EEC(a1, a2);
        v15 = *(a5 + 16);
        v19 = *a5;
        v20 = v15;
        v22 = v16;
        v21 = *(a5 + 32);
        v23 = v17;
        v24 = v18;
        sub_638B0();
      }

      sub_1A8C0(v12);
    }
  }

  sub_65A70(a1, a2, a3, a4, a5);
}

void sub_36A6F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A8C0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_36A728(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, double *a7, uint64_t a8)
{
  if (!*(a1 + 576))
  {
    v46 = sub_5544(14);
    v47 = *v46;
    if (*v46)
    {
      if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
      {
        buf.mNumberBuffers = 136315394;
        *(&buf.mNumberBuffers + 1) = "AggregateDevice_Broadcast.cpp";
        LOWORD(buf.mBuffers[0].mDataByteSize) = 1024;
        *(&buf.mBuffers[0].mDataByteSize + 2) = 347;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The client IO proc must exist for IO to run.", &buf, 0x12u);
      }
    }
  }

  v12 = *(a1 + 832);
  v13 = *(a1 + 840);
  v14 = v12;
  if (v12 != v13)
  {
    while (*v14 != 1)
    {
      if (++v14 == v13)
      {
        v14 = *(a1 + 840);
        break;
      }
    }
  }

  v15 = (v14 - v12);
  if (v13 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  v17 = sub_4CF4(a1 + 856, 1, 0);
  v18 = sub_5AE74(*(v17 + 8), *(v17 + 192));
  v19 = v18;
  v20 = &a6[4 * v16];
  v21 = v20[3];
  v22 = *(v17 + 64);
  v23 = *(a1 + 920);
  v24 = *(a1 + 880);
  outOutputData = *(v24 + 160);
  v25 = *(v24 + 176);
  inInputData = v25;
  v55 = outOutputData;
  v26 = v21 / v22;
  if (v18)
  {
    sub_A5B24(v23, *(v17 + 24) * v26);
    v27 = sub_4CF4(a1 + 856, 1, 0);
    sub_A5B24(&outOutputData->mNumberBuffers, *(v27 + 104) * v26);
    v28 = sub_4CF4(a1 + 856, 1, 0);
    sub_A5B24(&v25->mNumberBuffers, *(v28 + 144) * v26);
  }

  else
  {
    *(v23 + 2) = *(v20 + 2);
    v23[3] = v21;
  }

  v52 = v20;
  if (*(a1 + 104) == 1)
  {
    *(a1 + 88) = vextq_s8(*(a1 + 88), *(a1 + 88), 8uLL);
    *(a1 + 104) = 0;
  }

  v48 = v23[3];
  if (a4 && (*(a1 + 484) & 1) != 0 && *a4)
  {
    v29 = 0;
    v30 = (a4 + 4);
    do
    {
      bzero(*v30, *(v30 - 1));
      ++v29;
      v30 += 2;
    }

    while (v29 < *a4);
  }

  (*(a1 + 576))(a8, a3, a4, a5, v23, a7, *(a1 + 584));
  if (v19)
  {
    if ((*(*a1 + 480))(a1))
    {
      v31 = 1;
    }

    else
    {
      bzero(*(v52 + 2), v52[3]);
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = *(v17 + 192);
  if (!(*(*a1 + 480))(a1) || v23[3])
  {
    *(a1 + 796) = 0;
    goto LABEL_27;
  }

  v39 = *(a1 + 796);
  if (v39 >> 6 >= 0x177)
  {
    if (v39 <= v26 + 24000)
    {
      sub_6AD0C(v32);
      *(a1 + 796) += 2 * v26;
    }

    goto LABEL_55;
  }

  *(a1 + 796) = v39 + v26;
  if ((v31 & 1) == 0)
  {
LABEL_55:
    if ((*(a1 + 80) & 4) != 0)
    {
      sub_A5B24(v23, v48);
      v43 = *v23;
      if (v43)
      {
        v44 = 0;
        v45 = (v23 + 4);
        do
        {
          if (*v45)
          {
            bzero(*v45, *(v45 - 1));
            v43 = *v23;
          }

          ++v44;
          v45 += 2;
        }

        while (v44 < v43);
      }
    }

    bzero(*(v52 + 2), v52[3]);
    v31 = 0;
    goto LABEL_27;
  }

  sub_A5B24(v23, v48);
  v40 = *v23;
  if (v40)
  {
    v41 = 0;
    v42 = (v23 + 4);
    do
    {
      if (*v42)
      {
        bzero(*v42, *(v42 - 1));
        v40 = *v23;
      }

      ++v41;
      v42 += 2;
      v31 = 1;
    }

    while (v41 < v40);
  }

  else
  {
    v31 = 1;
  }

LABEL_27:
  if (*(v17 + 8) == 1819304813)
  {
    v33 = *(a1 + 88);
    *&buf.mNumberBuffers = xmmword_517330;
    if (v33)
    {
      sub_475310(v33, &buf, v23, v26, *a7);
    }

    sub_5AEC0(a1 + 144, *(v17 + 200), v23, v26, a7);
  }

  if (v31)
  {
    if (*(a1 + 960) == 1)
    {
      v34 = sub_134404(*(a1 + 808), *(a1 + 816), 0);
      *&buf.mNumberBuffers = 1;
      buf.mBuffers[0] = *&a4[4 * v34 + 2];
      sub_90828(*(v32 + 584), v26, v23, outOutputData);
      v56[0] = outOutputData;
      v56[1] = &buf;
      (*(*v32 + 168))(v32, a7, v26, 2, v56, 1, &inInputData);
    }

    else
    {
      sub_90828(*(v32 + 584), v26, v23, outOutputData);
      (*(*v32 + 168))(v32, a7, v26, 1, &v55, 1, &inInputData);
    }

    *&buf.mNumberBuffers = 1;
    buf.mBuffers[0] = *(v52 + 2);
    sub_90828(*(v32 + 672), v26, inInputData, &buf);
    sub_5AEC0(a1 + 144, *(v17 + 204), &buf, v26, a7);
  }

  if (*(v17 + 8) == 1819304813)
  {
    v35 = *(a1 + 88);
    *&buf.mNumberBuffers = xmmword_517340;
    if (v35)
    {
      sub_475148(v35, &buf, (v52 + 2), v26);
    }
  }

  if (a6 && (*(a1 + 484) & 1) != 0 && *a6)
  {
    v36 = 0;
    v37 = (a6 + 4);
    do
    {
      bzero(*v37, *(v37 - 1));
      ++v36;
      v37 += 2;
    }

    while (v36 < *a6);
  }

  return 0;
}

void sub_36AD2C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[27];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v6 = v5;
  if (!v5)
  {
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v7 = a1 + 26;
  v8 = a1[26];
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v5);
  v9 = std::__shared_weak_count::lock(v6);
  if (v9)
  {
    sub_1A8C0(v9);
    v10 = 0;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_8:
  v7 = (*(a1[69] + 24) + 16);
LABEL_9:
  v11 = v7[1];
  *a2 = *v7;
  a2[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  if ((v10 & 1) == 0)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t sub_36AE0C(os_unfair_lock_s *a1, double a2)
{
  v4 = (*(*&a1->_os_unfair_lock_opaque + 96))(a1, 1, 0);
  result = (*(*v4 + 120))(v4, v6);
  if (!result)
  {
    result = sub_1FE438(a1, a2);
    if (!result)
    {
      *v6 = a2;
      return (*(*v4 + 152))(v4, v6);
    }
  }

  return result;
}

void sub_36AEDC(void *a1)
{
  sub_36AF14(a1);

  operator delete();
}

unint64_t sub_36AF14(void *a1)
{
  *a1 = off_6C45E8;
  v2 = a1[122];
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = a1[119];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return sub_140A24(a1);
}

void sub_36AF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, int a7, uint64_t a8)
{
  *v66 = v66;
  *&v66[8] = v66;
  v67 = 0;
  sub_36C224(&v60, a3);
  v46 = a5;
  v47 = a7;
  if (a7)
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v11 = *(a2 + 8);
    v12 = v11 + 16;
    v13 = *(v11 + 24);
    if (v13 != v11 + 16)
    {
      do
      {
        sub_5659C(&v58, (v13 + 16), "", 140);
        v14 = v58;
        v15 = sub_166260(v58);
        v16 = *(*v14 + 88);
        if (v15)
        {
          if (!v16(v14, 0))
          {
            v43 = sub_5544(14);
            v44 = *v43;
            if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AggregateDevice_Broadcast.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 144;
              _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Precondition failure.");
          }

          v17 = v56;
          if (v56 >= v57)
          {
            v21 = v55;
            v22 = (v56 - v55);
            v23 = v56 - v55 + 1;
            if (v23 < 0)
            {
              sub_189A00();
            }

            v24 = v57 - v55;
            if (2 * (v57 - v55) > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0x3FFFFFFFFFFFFFFFLL)
            {
              v25 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              operator new();
            }

            *v22 = 2;
            v18 = v22 + 1;
            memcpy(0, v21, v22);
            v55 = 0;
            v57 = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v56 = 2;
            v18 = v17 + 1;
          }

          v56 = v18;
          v26 = (*(*v14 + 88))(v14, 0);
          buf[0] = 0;
          sub_118D68(&v55, v18, (v26 - 1), buf);
        }

        else if (v16(v14, 0))
        {
          v19 = v56;
          v20 = (*(*v14 + 88))(v14, 0);
          buf[0] = 0;
          sub_118D68(&v55, v19, v20, buf);
        }

        if (v59)
        {
          sub_1A8C0(v59);
        }

        v13 = *(v13 + 8);
      }

      while (v13 != v12);
    }
  }

  else
  {
    v55 = 0;
    v56 = 0;
    v57 = 0;
  }

  v27 = *(a3 + 8);
  v28 = v27[2];
  v29 = v27[3];
  v53 = v28;
  v54 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27 = *(a3 + 8);
  }

  if (v27 != a3)
  {
    v30 = 0.0;
    do
    {
      memset(buf, 0, sizeof(buf));
      sub_5659C(&v58, v27 + 2, "", 90);
      v31 = (*(*v58 + 96))(v58, 1, 0);
      (*(*v31 + 104))(v31, buf);
      if (v59)
      {
        sub_1A8C0(v59);
      }

      v32 = *buf;
      v33 = *&buf[8];
      if (*buf != *&buf[8])
      {
        do
        {
          v34 = v32[6];
          if (v30 == 0.0 || v34 > v30)
          {
            v28 = v27[2];
            v35 = v27[3];
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            if (v29)
            {
              std::__shared_weak_count::__release_weak(v29);
            }

            v29 = v35;
            v30 = v34;
          }

          v32 += 7;
        }

        while (v32 != v33);
        v32 = *buf;
      }

      if (v32)
      {
        *&buf[8] = v32;
        operator delete(v32);
      }

      v27 = v27[1];
    }

    while (v27 != a3);
    v53 = v28;
    v54 = v29;
  }

  buf[0] = 0;
  v62 = 0;
  LOBYTE(__p) = 0;
  v65 = 0;
  sub_118590(a1, a2, v66, &v60, &v55, a4, v46, 0, a6, &v53, a8, buf);
  if (v65 == 1 && v64 < 0)
  {
    operator delete(__p);
  }

  if (v62 == 1 && buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (v55)
  {
    operator delete(v55);
  }

  sub_65310(&v60);
  sub_65310(v66);
  *a1 = off_6C45E8;
  *(a1 + 936) = v47;
  v36 = (a1 + 944);
  if (v47)
  {
    v37 = *(a3 + 8);
    if (v37 != a3)
    {
      while (1)
      {
        sub_5659C(buf, v37 + 2, "", 164);
        v38 = sub_166260(*buf);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (v38)
        {
          break;
        }

        v37 = v37[1];
        if (v37 == a3)
        {
          goto LABEL_66;
        }
      }
    }

    if (v37 != a3)
    {
      *v36 = 0;
      *(a1 + 952) = 0;
      v39 = v37[3];
      if (!v39)
      {
        v42 = 0;
LABEL_67:
        *(a1 + 960) = v42;
        sub_36C224(&v55, a3);
        operator new();
      }

      v40 = std::__shared_weak_count::lock(v39);
      if (v40)
      {
        v41 = v37[2];
        atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 944) = v41;
        *(a1 + 952) = v40;
        sub_1A8C0(v40);
        v42 = *(a1 + 952) != 0;
        goto LABEL_67;
      }
    }
  }

LABEL_66:
  v42 = 0;
  *v36 = 0;
  *(a1 + 952) = 0;
  goto LABEL_67;
}

void sub_36BEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  __cxa_free_exception(v32);
  v36 = *v34;
  *v34 = 0;
  if (v36)
  {
    operator delete();
  }

  sub_65310(&v33[7].__shared_owners_);
  shared_owners = v33[6].__shared_owners_;
  if (shared_owners)
  {
    v33[6].__shared_weak_owners_ = shared_owners;
    operator delete(shared_owners);
  }

  v38 = v33[5].__shared_owners_;
  if (v38)
  {
    v33[5].__shared_weak_owners_ = v38;
    operator delete(v38);
  }

  sub_4E0BC(a20);
  sub_13BFA8(a16);
  std::__shared_weak_count::~__shared_weak_count(v33);
  operator delete(v39);
  sub_65310(&__p);
  v40 = *(a19 + 952);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  sub_140A24(a19);
  _Unwind_Resume(a1);
}

void sub_36C200()
{
  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  operator delete();
}

void *sub_36C224(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_849B8();
  }

  return result;
}

void sub_36C2B4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C4890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

std::string *sub_36C328(std::string **a1, const void **a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  sub_B0848(__p, v6 + 2);
  if ((v16 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ": ");
  if ((v16 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v10 = v16;
  }

  else
  {
    v10 = __p[1];
  }

  std::string::append(*a1, v9, v10);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 24) == 1)
  {
    v11 = *(a3 + 23);
    if (v11 >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (v11 >= 0)
    {
      v13 = *(a3 + 23);
    }

    else
    {
      v13 = *(a3 + 8);
    }
  }

  else
  {
    v12 = "unspecified";
    v13 = 11;
  }

  return std::string::append(*a1, v12, v13);
}

void sub_36C438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_36C454(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    sub_E2BE8((a1 + 16), Count);
    sub_E2BE8(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

double sub_36C4D8(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "DictionaryRef_iterator iterator out of range.");
  }

  sub_125D8(&v10, *(v4 + 8 * v2));
  sub_10FD4(&v9, *(a2[5] + 8 * a2[1]));
  result = *&v10;
  *a1 = v10;
  v7 = v9;
  *(a1 + 16) = v11;
  *(a1 + 24) = v7;
  return result;
}

void sub_36C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_36C5B4(_BOOL8 result, uint64_t a2)
{
  xmmword_6EB420 = 0u;
  *&qword_6EB430 = 0u;
  dword_6EB440 = 1065353216;
  if (a2)
  {
    v2 = result;
    v3 = (result + 32 * a2);
    do
    {
      v4 = sub_1DC1CC(v2);
      v5 = v4;
      v6 = *(&xmmword_6EB420 + 1);
      if (!*(&xmmword_6EB420 + 1))
      {
        goto LABEL_19;
      }

      v7 = vcnt_s8(*(&xmmword_6EB420 + 8));
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.u32[0];
      if (v7.u32[0] > 1uLL)
      {
        v9 = v4;
        if (v4 >= *(&xmmword_6EB420 + 1))
        {
          v9 = v4 % *(&xmmword_6EB420 + 1);
        }
      }

      else
      {
        v9 = (*(&xmmword_6EB420 + 1) - 1) & v4;
      }

      v10 = *(xmmword_6EB420 + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v12 = v11[1];
        if (v12 == v5)
        {
          break;
        }

        if (v8 > 1)
        {
          if (v12 >= v6)
          {
            v12 %= v6;
          }
        }

        else
        {
          v12 &= v6 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_19;
        }

LABEL_18:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_19;
        }
      }

      result = sub_1DC61C(v11 + 2, v2);
      if (!result)
      {
        goto LABEL_18;
      }

      v2 += 4;
    }

    while (v2 != v3);
  }

  return result;
}

void sub_36CA3C(_Unwind_Exception *a1)
{
  sub_295B94(1, v1);
  sub_36CD40();
  _Unwind_Resume(a1);
}

void sub_36CA70(_BYTE *a1, const __CFDictionary *a2, const UInt8 *__s)
{
  v4 = sub_22AC44(a2, __s);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t sub_36CAF8(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    sub_E2BE8((a1 + 16), Count);
    sub_E2BE8(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

double sub_36CB7C(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "DictionaryRef_iterator iterator out of range.");
  }

  sub_125D8(&v11, *(v4 + 8 * v2));
  v6 = a2[1];
  v7 = a2[5];
  v8 = *(v7 + 8 * v6);
  if (v8)
  {
    CFRetain(*(v7 + 8 * v6));
  }

  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_36CC44(const __CFDictionary *a1, const UInt8 *a2)
{
  v2 = sub_22AC44(a1, a2);
  if (v2)
  {
    LOWORD(v2) = sub_11DA8(v2);
    v3 = BYTE1(v2);
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t sub_36CC78(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_36CCBC(uint64_t a1)
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

uint64_t sub_36CCFC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_36CD40()
{
  v0 = qword_6EB430;
  if (qword_6EB430)
  {
    do
    {
      v1 = *v0;
      if (*(v0 + 39) < 0)
      {
        operator delete(v0[2]);
      }

      operator delete(v0);
      v0 = v1;
    }

    while (v1);
  }

  v2 = xmmword_6EB420;
  *&xmmword_6EB420 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_36CDB8()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v0 = sub_106F10();
  v11 = (v0 > 0xFFu) & v0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 16777473;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v18 = 0;
  v19 = 0;
  v20 = -1044381696;
  v21 = 1;
  v22 = -1044381696;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = -1056964608;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1033371648;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1044381696;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = 0;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = -1055916032;
  v47 = 1;
  v48 = -1033371648;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = -1055916032;
  v57 = 1;
  v58 = -1033371648;
  v59 = 1;
  v60 = 0;
  v61 = 1;
  v62 = -1055916032;
  v63 = 1;
  v64 = -1043333120;
  v65 = 1;
  v66 = 0x40000000;
  v67 = 1;
  v68 = 16777472;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1103626240;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = 1094713344;
  v80 = 1;
  v81 = 1094713344;
  v82 = 1;
  v83 = -1061158912;
  v84 = 1;
  v85 = 1107296256;
  v86 = 1;
  v87 = 1107296256;
  v88 = 1;
  v89 = 1092616192;
  v90 = 1;
  v91 = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 16777472;
  v96[0] = 0;
  v96[72] = 0;
  v96[80] = 0;
  v96[120] = 0;
  v96[128] = 0;
  v96[200] = 0;
  v96[208] = 0;
  v96[248] = 0;
  LOBYTE(v97) = 0;
  v98 = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  LOBYTE(v103) = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  LOBYTE(v107) = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110 = 0;
  LOBYTE(v111) = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  LOBYTE(v115) = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  LOBYTE(v136) = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  v158 = 0;
  LOBYTE(v159) = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  LOBYTE(__p) = 0;
  v165 = 0;
  v166.__r_.__value_.__s.__data_[0] = 0;
  v167 = 0;
  v168.__r_.__value_.__s.__data_[0] = 0;
  v169 = 0;
  v170.__r_.__value_.__s.__data_[0] = 0;
  v171 = 0;
  v172 = 256;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16777472;
  LOWORD(v13) = 257;
  HIWORD(v13) = 257;
  LOWORD(v15) = 256;
  v64 = -1047527424;
  v65 = 1;
  v73 = 1103101952;
  v74 = 1;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v77 = 0;
  v78 = 1;
  v93 = 1090519040;
  v94 = 1;
  v83 = -1040187392;
  v84 = 1;
  v66 = 0;
  v67 = 1;
  v95 = 16843009;
  if ((v98 & 1) == 0)
  {
    v98 = 1;
  }

  v97 = 1836282987;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 2;
  if ((v102 & 1) == 0)
  {
    v102 = 1;
  }

  v101 = 2;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 4;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 13;
  v116 = 1;
  v132 = 18;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 18;
  v139 = 1;
  v140 = 256;
  v151 = 6;
  v152 = 1;
  v153 = 18;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v159 = 1;
  v160 = 1;
  sub_30F70C(&__src, 77);
  if (v165 == 1)
  {
    if (SHIBYTE(v164) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v164 = v181;
  }

  else
  {
    __p = __src;
    v164 = v181;
    v165 = 1;
  }

  sub_1F826C(&v166, "_top_mic_general");
  sub_1F826C(&v168, "_top_mic_measurement");
  sub_1F826C(&v170, "_top_mic_hearing_accessibility");
  sub_47DB04(&v1);
  sub_1E0054(v96);
  sub_477A0(v17[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

uint64_t sub_36D42C(uint64_t a1)
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

uint64_t sub_36D4AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_36D544(uint64_t a1, uint64_t a2)
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

uint64_t sub_36D5C4(uint64_t a1)
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

uint64_t sub_36D644(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v7 = 0;
  v4 = (*(a1 + 8))(v3, &v7);
  v5 = 0;
  if (v7 == 1)
  {
    sub_2906C0(*(a1 + 40), v4);
    v5 = v7;
  }

  return v5 & 1;
}

void sub_36D6A4(void *a1)
{
  sub_36D42C(a1 + 16);

  operator delete(a1);
}

uint64_t sub_36D6E8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_6DC1B8;
  a2[1] = v2;
  return sub_36D4AC((a2 + 2), a1 + 16);
}

void sub_36D794(void *a1)
{
  *a1 = off_6DC1B8;
  sub_36D42C((a1 + 2));

  operator delete();
}

void *sub_36D7F8(void *a1)
{
  *a1 = off_6DC1B8;
  sub_36D42C((a1 + 2));
  return a1;
}

void sub_36D83C()
{
  sub_310AF4();
  v6 = 1;
  *v7 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v0 = sub_106F10();
  v11 = (v0 > 0xFFu) & v0;
  v12 = 1;
  v13 = 0;
  v14 = 0;
  v15 = 16777473;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  v18 = 0;
  v19 = 0;
  v20 = -1044381696;
  v21 = 1;
  v22 = -1044381696;
  v23 = 1;
  v24 = 0;
  v25 = 1;
  v26 = -1056964608;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1033371648;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1044381696;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = 0;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = -1055916032;
  v47 = 1;
  v48 = -1033371648;
  v49 = 1;
  v50 = 0;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = -1055916032;
  v57 = 1;
  v58 = -1033371648;
  v59 = 1;
  v60 = 0;
  v61 = 1;
  v62 = -1055916032;
  v63 = 1;
  v64 = -1043333120;
  v65 = 1;
  v66 = 0x40000000;
  v67 = 1;
  v68 = 16777472;
  v69 = 0;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1103626240;
  v74 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = 1094713344;
  v80 = 1;
  v81 = 1094713344;
  v82 = 1;
  v83 = -1061158912;
  v84 = 1;
  v85 = 1107296256;
  v86 = 1;
  v87 = 1107296256;
  v88 = 1;
  v89 = 1092616192;
  v90 = 1;
  v91 = 0;
  v92 = 1;
  v93 = 0;
  v94 = 1;
  v95 = 16777472;
  v96[0] = 0;
  v96[72] = 0;
  v96[80] = 0;
  v96[120] = 0;
  v96[128] = 0;
  v96[200] = 0;
  v96[208] = 0;
  v96[248] = 0;
  LOBYTE(v97) = 0;
  v98 = 0;
  LOBYTE(v99) = 0;
  v100 = 0;
  LOBYTE(v101) = 0;
  v102 = 0;
  LOBYTE(v103) = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  LOBYTE(v107) = 0;
  v108 = 0;
  LOBYTE(v109) = 0;
  v110 = 0;
  LOBYTE(v111) = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  LOBYTE(v115) = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 0;
  LOBYTE(v132) = 0;
  v133 = 0;
  LOBYTE(v134) = 0;
  v135 = 0;
  LOBYTE(v136) = 0;
  v137 = 0;
  LOBYTE(v138) = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v152 = 0;
  LOBYTE(v153) = 0;
  v154 = 0;
  LOBYTE(v155) = 0;
  v156 = 0;
  LOBYTE(v157) = 0;
  v158 = 0;
  LOBYTE(v159) = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  LOBYTE(__p) = 0;
  v165 = 0;
  v166.__r_.__value_.__s.__data_[0] = 0;
  v167 = 0;
  v168.__r_.__value_.__s.__data_[0] = 0;
  v169 = 0;
  v170.__r_.__value_.__s.__data_[0] = 0;
  v171 = 0;
  v172 = 256;
  v173 = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x200000001;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16777472;
  LOWORD(v13) = 257;
  HIWORD(v13) = 257;
  LOWORD(v15) = 256;
  v64 = -1047527424;
  v65 = 1;
  v73 = 1103101952;
  v74 = 1;
  v79 = 0;
  v80 = 1;
  v81 = 0;
  v82 = 1;
  v77 = 0;
  v78 = 1;
  v93 = 1090519040;
  v94 = 1;
  v83 = -1040187392;
  v84 = 1;
  v66 = 0;
  v67 = 1;
  v95 = 16843009;
  if ((v98 & 1) == 0)
  {
    v98 = 1;
  }

  v97 = 1836282987;
  if ((v100 & 1) == 0)
  {
    v100 = 1;
  }

  v99 = 2;
  if ((v102 & 1) == 0)
  {
    v102 = 1;
  }

  v101 = 2;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 4;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 13;
  v116 = 1;
  v132 = 18;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 18;
  v139 = 1;
  v140 = 256;
  v151 = 6;
  v152 = 1;
  v153 = 18;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v159 = 1;
  v160 = 1;
  sub_30F70C(&__src, 78);
  if (v165 == 1)
  {
    if (SHIBYTE(v164) < 0)
    {
      operator delete(__p);
    }

    __p = __src;
    v164 = v181;
  }

  else
  {
    __p = __src;
    v164 = v181;
    v165 = 1;
  }

  sub_1F826C(&v166, "_top_mic_general");
  sub_1F826C(&v168, "_top_mic_measurement");
  sub_1F826C(&v170, "_top_mic_hearing_accessibility");
  sub_47DB04(&v1);
  sub_1E0054(v96);
  sub_477A0(v17[0]);
  if (v8[1])
  {
    *&v9 = v8[1];
    operator delete(v8[1]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_36DEB0(uint64_t a1)
{
  *(a1 + 4) = 1;
  *a1 = 1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_36DF14(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_36DF50(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886610288)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_SystemCapture_Aspen.cpp";
      v14 = 1024;
      v15 = 99;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "Device_SystemCapture_Aspen.cpp";
      v14 = 1024;
      v15 = 100;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_36E440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v11 - 105) < 0)
  {
    operator delete(*(v11 - 128));
  }

  sub_1E19A0(va);
  _Unwind_Resume(a1);
}

void sub_36E6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  _Unwind_Resume(a1);
}

void sub_36E6E4(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_36E720(uint64_t a1)
{
  sub_5D988((a1 + 64));
  sub_5D988((a1 + 48));
  v3 = (a1 + 24);
  sub_5DD9C(&v3);
  v3 = a1;
  sub_5DD9C(&v3);
  return a1;
}

void sub_36E778(unint64_t a1)
{
  if (a1 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_36E7D4(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1 || (v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v2 = v1;
    off_6FCB88 = dlsym(v1, "AudioIssueDetectorCreate");
    off_6FCB90 = dlsym(v2, "AudioIssueDetectorInitialize");
    off_6FCB98 = dlsym(v2, "AudioIssueDetectorDispose");
    qword_6FCBA0 = dlsym(v2, "AudioIssueDetectorSetNodeFormat");
    off_6FCBA8 = dlsym(v2, "AudioIssueDetectorSetNodeFormatWithDirection");
    qword_6FCBB0 = dlsym(v2, "AudioIssueDetectorReset");
    off_6FCBB8 = dlsym(v2, "AudioIssueDetectorAnalyzeBuffer");
    off_6FCBC0 = dlsym(v2, "AudioIssueDetectorUpdateReportingSessions");
    qword_6FCBC8 = dlsym(v2, "AudioIssueDetectorRemoveNode");
    qword_6FCBD0 = dlsym(v2, "AudioIssueDetectorSetUplinkMute");
    qword_6FCBD8 = dlsym(v2, "AudioIssueDetectorSetDownlinkVolume");
    qword_6FCBE0 = dlsym(v2, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    off_6FCBE8 = dlsym(v2, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_6FCBF0 = dlsym(v2, "AudioIssueDetectorFlush");
  }

  v3 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (v3)
  {
    v4 = dlsym(v3, "RegisterAudioUnits_Analyzer");
    if (v4)
    {

      v4();
    }
  }
}

std::runtime_error *sub_36E9A8(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  return result;
}

std::string *sub_36E9DC(std::string *a1, char *a2, char *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v9, *a2);
      v7 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      v8 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
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

void sub_36EAB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_36EADC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x36EAC4);
}

void sub_36EAF4(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_36EB4C(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
    goto LABEL_5;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = dlerror();
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }

  v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1);
  if (v1)
  {
LABEL_5:
    v2 = v1;
    off_6EB710 = dlsym(v1, "AudioDataAnalysisManagerCreate");
    off_6EB718 = dlsym(v2, "AudioDataAnalysisManagerDispose");
    qword_6EB720 = dlsym(v2, "AudioDataAnalysisManagerReset");
    off_6EB728 = dlsym(v2, "AudioDataAnalysisManagerUpdateReportingSessions");
    qword_6EB730 = dlsym(v2, "AudioDataAnalysisManagerCreateNodePCM");
    off_6EB738 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeSPL");
    qword_6EB740 = dlsym(v2, "AudioDataAnalysisManagerRemoveNode");
    off_6EB748 = dlsym(v2, "AudioDataAnalysisManagerInitialize");
    qword_6EB750 = dlsym(v2, "AudioDataAnalysisManagerIsSessionInitialized");
    qword_6EB758 = dlsym(v2, "AudioDataAnalysisManagerProcessAudio");
    off_6EB760 = dlsym(v2, "AudioDataAnalysisManagerProcessSPL");
    qword_6EB768 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSPL");
    qword_6EB770 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeEnvSoundClass");
    off_6EB778 = dlsym(v2, "AudioDataAnalysisManagerCreateNodeMicLevel");
    qword_6EB780 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSPL");
    qword_6EB788 = dlsym(v2, "AudioDataAnalysisManagerProcessEnvSoundClass");
    off_6EB790 = dlsym(v2, "AudioDataAnalysisManagerProcessMicLevel");
    off_6EB798 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceInfo");
    off_6EB7A0 = dlsym(v2, "AudioDataAnalysisManagerRegisterDeviceInfo");
    off_6EB7A8 = dlsym(v2, "AudioDataAnalysisManagerSetDeviceConnectionState");
    off_6EB7B0 = dlsym(v2, "AudioDataAnalysisManagerStartServices");
    off_6EB7B8 = dlsym(v2, "AudioDataAnalysisManagerConnectedWiredDeviceIsHeadphone");
    qword_6EB7C0 = dlsym(v2, "AudioDataAnalysisManagerSetApplicationBundleID");
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = dlerror();
    v4 = 136315138;
    v5 = v3;
    _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "dlerror : libAudioIssueDetector ADAM: %s", &v4, 0xCu);
  }
}

uint64_t sub_36EE94(uint64_t a1)
{
  v14 = sub_126BBC(a1 + 272);
  result = sub_36F110(&v14, 0, &v14, 8u, (a1 + 80));
  if ((result & 1) == 0)
  {
    v3 = sub_5544(17);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v5 = 0;
      v13 = 8;
      strcpy(__p, "00000000");
      v6 = 7;
      do
      {
        if ((v14 >> v5))
        {
          if (v13 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *(v7 + v6) = 49;
        }

        ++v5;
        --v6;
      }

      while (v5 != 8);
      v8 = __p;
      if (v13 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common.cpp";
      v16 = 1024;
      v17 = 750;
      v18 = 2080;
      v19 = v8;
      v20 = 2080;
      v21 = "anc|tel|sec|pri|hal";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d stream capture flags have changed to %s (%s)", buf, 0x26u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*a1 + 640))(buf, a1, &v14);
    v9 = *buf;
    *buf = 0;
    result = *(a1 + 96);
    *(a1 + 96) = v9;
    if (result)
    {
      (*(*result + 8))(result);
      result = *buf;
      *buf = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }

    v10 = v14;
    v11 = *(a1 + 80);
    if (((v14 ^ v11) & 1) != 0 || ((v14 >> 5) & 1) != ((v11 >> 5) & 1) || ((v14 >> 6) & 1) != ((v11 >> 6) & 1) || ((v14 >> 7) & 1) != ((v11 >> 7) & 1))
    {
      result = sub_66A80(a1, v14);
      v10 = v14;
    }

    *(a1 + 80) = v10;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_36F110(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_36F1E0(uint64_t a1)
{
  v1 = (a1 + 4);
  *&buf.mSelector = *(a1 + 4);
  v2 = *(a1 + 16);
  buf.mElement = *(a1 + 12);
  v3 = sub_A2458(a1, &buf, v2, *(a1 + 24));
  v5 = v4;
  if (v3)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v3);
        v9 = *v1;
        v10 = *(v1 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  v7 = HIDWORD(v3);
  if ((v5 & 1) == 0)
  {
    v7 = 0;
  }

  return v7 | (v3 << 32);
}

void sub_36F38C(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_36F3AC(uint64_t a1, _OWORD *a2, UInt32 a3, unsigned int a4)
{
  sub_51AF8(a1);
  if (!*(a1 + 536))
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315394;
      *(&buf.mSampleTime + 4) = "AggregateDevice_Common.cpp";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 488;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mHALIOProcID is NULL]: No HAL IO Proc has been set.", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No HAL IO Proc has been set.");
  }

  if (!*(a1 + 576))
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315394;
      *(&buf.mSampleTime + 4) = "AggregateDevice_Common.cpp";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 489;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mClientIOProc is NULL]: No client IO Proc has been set.", &buf, 0x12u);
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v35, "No client IO Proc has been set.");
  }

  v8 = sub_51840(a1, a4, 1);
  if ((v8 & 3) == 0)
  {
    v15 = *(a1 + 120);
    if (v15)
    {
      caulk::concurrent::messenger::drain(v15);
    }

    (*(*a1 + 648))(a1);
    (*(*a1 + 248))(a1);
    sub_5DDF0(a1);
  }

  v9 = v8;
  v10 = sub_5544(17);
  v11 = sub_5544(32);
  if (a4 == 1 && (v9 & 1) != 0)
  {
    v12 = 0;
    *&buf.mSampleTime = 0x100000002;
    v13 = *(v10 + 8);
    while (1)
    {
      v14 = *(&buf.mSampleTime + v12);
      if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
      {
        break;
      }

      v12 += 4;
      if (v12 == 8)
      {
        goto LABEL_30;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_30:
    v27 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v28 = (*(*a1 + 120))(a1);
        LODWORD(buf.mSampleTime) = 136315650;
        *(&buf.mSampleTime + 4) = "AggregateDevice_Common.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 555;
        WORD1(buf.mRateScalar) = 1024;
        HIDWORD(buf.mRateScalar) = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant NULL I/O proc start request on AggregateDevice %u. Returning before AudioDeviceStart() call.", &buf, 0x18u);
      }
    }
  }

  else
  {
    v16 = 0;
    *&buf.mSampleTime = 0x100000002;
    v17 = *(v10 + 8);
    while (1)
    {
      v18 = *(&buf.mSampleTime + v16);
      if (((v17 & v18) != 0) != ((*(v11 + 8) & v18) != 0))
      {
        break;
      }

      v16 += 4;
      if (v16 == 8)
      {
        goto LABEL_19;
      }
    }

    if ((v17 & v18) == 0)
    {
      v10 = v11;
    }

LABEL_19:
    v19 = *v10;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, a4);
      v20 = SBYTE3(v53);
      v21 = *__p;
      v22 = (*(*a1 + 120))(a1);
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "AggregateDevice_Common.cpp";
      v23 = v20 >= 0 ? __p : v21;
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 560;
      WORD1(buf.mRateScalar) = 2080;
      *(&buf.mRateScalar + 4) = v23;
      WORD2(buf.mWordClockTime) = 1024;
      *(&buf.mWordClockTime + 6) = v22;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", &buf, 0x22u);
      if (SBYTE3(v53) < 0)
      {
        operator delete(*__p);
      }
    }

    v24 = a2[1];
    *&buf.mSampleTime = *a2;
    *&buf.mRateScalar = v24;
    v25 = a2[3];
    *&buf.mSMPTETime.mSubframes = a2[2];
    *&buf.mSMPTETime.mHours = v25;
    if (a4 == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = *(a1 + 536);
    }

    v29 = AudioDeviceStartAtTime(*(a1 + 128), v26, &buf, a3);
    if (v29)
    {
      sub_51840(a1, a4, 0);
      v36 = sub_5544(17);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v47, v29);
        v38 = v48;
        v39 = v47[0];
        sub_23148(v45, (a1 + 8));
        v40 = v47;
        if (v38 < 0)
        {
          v40 = v39;
        }

        if (v46 >= 0)
        {
          v41 = v45;
        }

        else
        {
          v41 = v45[0];
        }

        *__p = 136315906;
        *&__p[4] = "AggregateDevice_Common.cpp";
        v50 = 1024;
        v51 = 566;
        v52 = 2080;
        v53 = v40;
        v54 = 2080;
        v55 = v41;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", __p, 0x26u);
        if (v46 < 0)
        {
          operator delete(v45[0]);
        }

        if (v48 < 0)
        {
          operator delete(v47[0]);
        }
      }

      v42 = sub_5544(14);
      v43 = *v42;
      if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "AggregateDevice_Common.cpp";
        v50 = 1024;
        v51 = 567;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", __p, 0x12u);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = &off_6DDDD0;
      v44[2] = v29;
    }
  }
}

void sub_36FF90(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_36FFE4(std::string *a1, char *a2, char *a3)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      std::to_string(&v9, *a2);
      v7 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v9 : v9.__r_.__value_.__r.__words[0];
      v8 = (v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v9.__r_.__value_.__r.__words[2]) : v9.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v9.__r_.__value_.__l.__data_);
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

void sub_3700C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3700E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x3700CCLL);
}

void sub_3700FC(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v4 = *(a1 + 8);
  v5 = (v4 - a4);
  v6 = (a2 + v4 - a4);
  v7 = v4;
  while (v6 < a3)
  {
    *v7 = *v6;
    v7 += 16;
    *v6 = 0;
    *(v6 + 1) = 0;
    v6 += 16;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v8 = (v4 - 8);
    v9 = a2 - 16;
    do
    {
      v10 = &v5[v9];
      v11 = *&v5[v9];
      *v10 = 0;
      *(v10 + 1) = 0;
      v12 = *v8;
      *(v8 - 1) = v11;
      if (v12)
      {
        sub_1A8C0(v12);
      }

      v8 -= 2;
      v5 -= 16;
    }

    while (v5);
  }
}

void sub_370184(uint64_t *a1, uint64_t *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v7 = *v5;
      v6 = v5[1];
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a3[1];
      *a3 = v7;
      a3[1] = v6;
      if (v8)
      {
        sub_1A8C0(v8);
      }

      v5 += 2;
      a3 += 2;
    }

    while (v5 != a2);
  }
}

char **sub_3701F4(uint64_t a1, char **a2)
{
  v3 = *(a1 + 40);
  result = (a1 + 40);
  result[1] = v3;
  if (result != a2)
  {
    return sub_48C94(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

uint64_t sub_37021C(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6C5098;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_3702B4(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_3702FC(a1);
  return sub_370378(&v2);
}

void sub_3702E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_370378(va);
  _Unwind_Resume(a1);
}

void sub_3702FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 24);
      if (v5)
      {
        [*(v5 + 64) observeDataWithBlock:0];
      }

      sub_1A8C0(v4);
    }
  }
}

caulk::concurrent::message **sub_370378(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C50C0;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_3703F4(caulk::concurrent::message *this)
{
  *this = off_6C50C0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_370464(caulk::concurrent::message *this)
{
  *this = off_6C50C0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_3704C0(caulk::concurrent::message *this)
{
  *this = off_6C50C0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_370530(caulk::concurrent::message *this)
{
  *this = off_6C50C0;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_37058C(uint64_t a1)
{
  sub_8BEE4();
  v2 = qword_709F20;
  v4 = v3 = qword_709F20;
  v5 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_370624;
  block[3] = &unk_6DC438;
  block[4] = &v5;
  dispatch_sync(v4, block);
}

void sub_370624(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *v1;
  v3 = [*(*v1 + 64) data];
  sub_370730(v2, v3);

  v4 = v2[1];
  v5 = v2[2];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_370B30;
  v7[3] = &unk_6C5058;
  v7[4] = v4;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  [v6 observeDataWithBlock:v7];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_370700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_370730(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 24);
        if (v7)
        {
          v8 = [v3 cameraAttributions];
          v9 = [v8 count];

          if (v9)
          {
            v10 = 1.0;
          }

          else
          {
            v10 = 0.0;
          }

          v11 = *sub_5544(18);
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v7 + 735) < 0)
              {
                sub_54A0(__p, *(v7 + 712), *(v7 + 720));
              }

              else
              {
                *__p = *(v7 + 712);
                v22 = *(v7 + 728);
              }

              v14 = __p;
              if (v22 < 0)
              {
                v14 = __p[0];
              }

              v15 = 0.0;
              *buf = 136315906;
              *&buf[4] = "CameraCoexIODelegate.mm";
              if (v9)
              {
                v15 = 1.0;
              }

              *&buf[12] = 1024;
              *&buf[14] = 39;
              *&buf[18] = 2080;
              v26 = v14;
              v27 = 2048;
              v28 = v15;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Graph %s: Setting camera state param to %f", buf, 0x26u);
              if (SHIBYTE(v22) < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          BYTE3(v26) = 19;
          strcpy(buf, "camera_mic2_running");
          v23 = CFStringCreateWithBytes(0, buf, 19, 0x8000100u, 0);
          if (!v23)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }

          if (SBYTE3(v26) < 0)
          {
            operator delete(*buf);
          }

          v16 = &kCFBooleanTrue;
          if (!v9)
          {
            v16 = &kCFBooleanFalse;
          }

          cf = *v16;
          __p[0] = &v23;
          __p[1] = &dword_0 + 1;
          v17 = sub_69CE8(__p);
          v20[1] = v17;
          if (cf)
          {
            CFRelease(cf);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          CFRetain(v17);
          v20[0] = v17;
          if (v9)
          {
            v18 = 3;
          }

          else
          {
            v18 = 4;
          }

          sub_A9D34(v20, *(a1 + 40), *(a1 + 48), 8, v18);
          if (v17)
          {
            CFRelease(v17);
          }

          (*(*v7 + 72))(v7, 1685287015, 1832018808, 0, v10);
          CFRelease(v17);
        }

        sub_1A8C0(v6);
      }
    }
  }
}

void sub_370A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_1A8C0(v23);

  _Unwind_Resume(a1);
}

void sub_370B30(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 32);
      if (v6)
      {
        sub_370730(v6, v7);
      }

      sub_1A8C0(v5);
    }
  }
}

void sub_370BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_1A8C0(v10);

  _Unwind_Resume(a1);
}

void sub_370BBC(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_370BCC(uint64_t result, uint64_t a2)
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

uint64_t sub_370BE8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void sub_370C2C(uint64_t a1)
{
  sub_370C64(a1);

  operator delete();
}

uint64_t sub_370C64(uint64_t a1)
{
  [*(a1 + 64) invalidate];

  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_370CC8(uint64_t a1)
{
  v2 = sub_5544(20);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "RoutingHandlerDispatcher.cpp";
    v24 = 1024;
    v25 = 118;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Undoing local action map", buf, 0x12u);
  }

  v4 = *(a1 + 8);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = sub_5544(20);
      if (*(v8 + 8))
      {
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
          {
            sub_68108(&__p, v6 + 8);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            v23 = "RoutingHandlerDispatcher.cpp";
            v24 = 1024;
            v25 = 123;
            v26 = 2080;
            v27 = p_p;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Undoing routing actions for %s", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      sub_147AC4(v6 + 5);
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
    }

    while (v12 != v5);
  }

  v14 = *(a1 + 16);
  v15 = *v14;
  v16 = v14[1];
  while (v15 != v16)
  {
    v17 = v15[8];
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = v15[7];
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v15[6];
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = v15[5];
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v15 += 18;
  }
}

void sub_371008(uint64_t a1)
{
  sub_371044(a1 - 80);

  operator delete();
}

uint64_t sub_371044(uint64_t a1)
{
  *a1 = off_6C5130;
  *(a1 + 80) = off_6C51F8;
  sub_140514(a1 + 104);
  v2 = *(a1 + 680);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_477A0(*(a1 + 584));
  v3 = *(a1 + 536);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_4E0BC((a1 + 504));

  return sub_1405C0(a1);
}

uint64_t sub_371110(uint64_t a1, float a2)
{
  v3 = a2;
  if (*(a1 + 552) <= a2 && *(a1 + 560) >= v3)
  {
    result = 1;
    *(a1 + 624) = 1;
    *(a1 + 620) = a2;
  }

  else
  {
    v4 = sub_5544(19);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 552);
        v7 = *(a1 + 560);
        v9 = 136316162;
        v10 = "InputVolumeControl_HAL_Common.cpp";
        v11 = 1024;
        v12 = 714;
        v13 = 2048;
        v14 = v3;
        v15 = 2048;
        v16 = v6;
        v17 = 2048;
        v18 = v7;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling default input volume due to inDefaultVolume (%f) being out of range of the valid hardware volume range [%f, %f]. Defaulting to driver initialized input gain", &v9, 0x30u);
      }
    }

    result = 0;
    *(a1 + 624) = 0;
  }

  return result;
}

void sub_371250()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "InputVolumeControl_HAL_Common.cpp";
      v5 = 1024;
      v6 = 694;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Not implemented for input volume control", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented for input volume control");
}

void sub_371338(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 104))(a1);
  if ((a3 & 0x1FFFFFFFFLL) != 0x100000000)
  {
    v65 = sub_5544(14);
    v66 = *v65;
    if (*v65 && os_log_type_enabled(*v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      v74 = 1024;
      v75 = 611;
      _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inTransferFunction must be CAVolumeCurve::kLinearCurve for input Volume Controls.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inTransferFunction must be CAVolumeCurve::kLinearCurve for input Volume Controls.");
  }

  v10 = v8;
  v11 = v9;
  sub_5659C(&v71, (a1 + 528), "", 613);
  v12 = sub_5544(19);
  v13 = sub_5544(39);
  v14 = 0;
  *buf = 0x100000002;
  v15 = *(v12 + 8);
  while (1)
  {
    v16 = *&buf[v14];
    if (((v15 & v16) != 0) != ((*(v13 + 8) & v16) != 0))
    {
      break;
    }

    v14 += 4;
    if (v14 == 8)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

  if (*(v12 + 8))
  {
LABEL_10:
    v17 = *v12;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = *a2;
      v19 = a2[1];
      *buf = 136315906;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      v74 = 1024;
      v75 = 615;
      v76 = 2048;
      v77 = v18;
      v78 = 2048;
      v79 = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Desired input volume range: %f dB to %f dB", buf, 0x26u);
    }
  }

LABEL_13:
  v20 = sub_5544(19);
  v21 = sub_5544(39);
  v22 = 0;
  *buf = 0x100000002;
  v23 = *(v20 + 8);
  while (1)
  {
    v24 = *&buf[v22];
    if (((v23 & v24) != 0) != ((*(v21 + 8) & v24) != 0))
    {
      break;
    }

    v22 += 4;
    if (v22 == 8)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  if ((v23 & v24) == 0)
  {
    v20 = v21;
  }

  if (*(v20 + 8))
  {
LABEL_21:
    v25 = *v20;
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      v74 = 1024;
      v75 = 616;
      v76 = 2048;
      v77 = v10;
      v78 = 2048;
      v79 = v11;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d            HW volume range: %f dB to %f dB", buf, 0x26u);
    }
  }

LABEL_24:
  v26 = sub_5544(19);
  v27 = sub_5544(39);
  v28 = 0;
  *buf = 0x100000002;
  v29 = *(v26 + 8);
  do
  {
    v30 = *&buf[v28];
    if (((v29 & v30) != 0) != ((*(v27 + 8) & v30) != 0))
    {
      if ((v29 & v30) == 0)
      {
        v26 = v27;
      }

      if (*(v26 + 8))
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    v28 += 4;
  }

  while (v28 != 8);
  if ((v29 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_32:
  v31 = *v26;
  if (!v31 || !os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_38;
  }

  sub_23148(__p, v71 + 2);
  if (v70 >= 0)
  {
    *&v32 = COERCE_DOUBLE(__p);
  }

  else
  {
    v32 = __p[0];
  }

  *buf = 136315650;
  *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
  v74 = 1024;
  v75 = 617;
  v76 = 2080;
  v77 = *&v32;
  _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d  VAD '%s'", buf, 0x1Cu);
  if ((v70 & 0x80000000) == 0)
  {
LABEL_38:
    if (a4)
    {
      goto LABEL_39;
    }

LABEL_69:
    *(a1 + 664) = 0;
    goto LABEL_70;
  }

  operator delete(__p[0]);
  if (!a4)
  {
    goto LABEL_69;
  }

LABEL_39:
  v33 = *(a4 + 16);
  *(a1 + 664) = v33;
  if (v33)
  {
    v34 = *a2;
    v35 = *(a2 + 1);
    v37 = *(a4 + 24);
    v36 = *(a4 + 32);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    *(a1 + 672) = v37;
    v38 = *(a1 + 680);
    *(a1 + 680) = v36;
    if (v38)
    {
      std::__shared_weak_count::__release_weak(v38);
      v36 = *(a1 + 680);
    }

    *(a1 + 688) = 0;
    if (v36)
    {
      v39 = std::__shared_weak_count::lock(v36);
      if (v39)
      {
        v40 = *(a1 + 672);
        if (v40)
        {
          (*(*v40 + 144))(v40, 1);
LABEL_53:
          sub_1A8C0(v39);
LABEL_54:
          if (*(a1 + 626) == 1)
          {
            *buf = 1835103844;
            *&buf[4] = *(a1 + 544);
            v43 = *(a1 + 632);
            *__p = v43;
            v44 = v71;
            if ((*(*&v71->_os_unfair_lock_opaque + 16))(v71, buf))
            {
              v68 = 4;
              (*(*&v44->_os_unfair_lock_opaque + 40))(v44, buf, 0, 0, &v68, __p);
              v43 = *__p;
            }

            v45 = *a4;
            if (v43 > v45)
            {
              v45 = v43;
            }

            *(a1 + 648) = v45;
            v46 = *(a1 + 640);
            if (v46 >= *(a4 + 8))
            {
              v46 = *(a4 + 8);
            }

            v47 = v46;
            *(a1 + 652) = v47;
          }

          else if (*a4 != 0.0 || *(a4 + 8) != 0.0)
          {
            v48 = sub_5544(14);
            v49 = *v48;
            if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
              v74 = 1024;
              v75 = 672;
              _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): Non-zero HW volume configured but physical device does not support HW volume", buf, 0x12u);
            }

            v50 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v50, "Non-zero HW volume configured but physical device does not support HW volume");
          }

          goto LABEL_76;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = sub_5544(14);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      v74 = 1024;
      v75 = 648;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Logic error: requested software volume, but given software volume command is NULL", buf, 0x12u);
    }

    *(a1 + 664) = 0;
    if (!v39)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

LABEL_70:
  v51 = *a2;
  if (*a2 < v10)
  {
    v51 = v10;
  }

  v52 = v51;
  if (v11 >= a2[1])
  {
    v53 = a2[1];
  }

  else
  {
    v53 = v11;
  }

  v54 = v53;
  *(a1 + 648) = v52;
  *(a1 + 652) = v54;
LABEL_76:
  *(a1 + 604) = 0;
  *(a1 + 600) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 608) = _D0;
  if (*(a1 + 592))
  {
    v59 = *(*(a1 + 576) + 28);
  }

  else
  {
    v59 = 0;
  }

  v60 = sub_55A7C(a1 + 568);
  sub_477A0(*(a1 + 584));
  *(a1 + 576) = a1 + 584;
  *(a1 + 584) = 0u;
  sub_160214(a1 + 568, v59, v60);
  v61 = *(a1 + 592);
  if (v61)
  {
    if (*(a1 + 616) < *(*(a1 + 576) + 36))
    {
      v62 = 0.0;
    }

    else
    {
      v62 = *(a1 + 616);
    }

    if (*(a1 + 616) < *(*(a1 + 576) + 36) && v61 != 0)
    {
      v62 = *(*(a1 + 576) + 36);
    }
  }

  else if (*(a1 + 616) < 0.0)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = *(a1 + 616);
  }

  *(a1 + 616) = v62;
  v64 = sub_59224(a1 + 568);
  if (v62 <= *&v64)
  {
    *&v64 = v62;
  }

  *(a1 + 616) = LODWORD(v64);
  *(a1 + 552) = *a2;
  if (v72)
  {
    sub_1A8C0(v72);
  }
}

void sub_371B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_1A8C0(v14);
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_371BD4(uint64_t *a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 511;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *a2;
  if (*a2 <= 1986229103)
  {
    switch(v8)
    {
      case 1064725619:
        return 1;
      case 1836414053:
        goto LABEL_18;
      case 1836478308:
        return 1;
    }

    goto LABEL_27;
  }

  if (v8 <= 1987013731)
  {
    if (v8 != 1986229104 && v8 != 1986290211)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (v8 == 1987013732)
  {
LABEL_18:
    v19 = *a2;
    v20 = a1[68];
    sub_5659C(&v18, a1 + 66, "", 533);
    v10 = v18;
    if ((*(*v18 + 16))(v18, &v19))
    {
      sub_164A14(v10, &v19, sub_371FDC, a1);
      *buf = *a2;
      *&buf[8] = a2[2];
      *&buf[16] = a3;
      v22 = a4;
      sub_185D3C(a1 + 19, &v19, buf);
    }

    if (*(&v18 + 1))
    {
      sub_1A8C0(*(&v18 + 1));
    }

    return 1;
  }

  if (v8 != 1987013741)
  {
LABEL_27:
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 554;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
      }
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    *v17 = &off_6DDDD0;
    v17[2] = 2003332927;
  }

  LODWORD(v18) = 1987013732;
  *(&v18 + 4) = a1[68];
  sub_5659C(buf, a1 + 66, "", 519);
  sub_164A14(*buf, &v18, sub_371FDC, a1);
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  *buf = *a2;
  *&buf[8] = a2[2];
  *&buf[16] = a3;
  v22 = a4;
  sub_185D3C(a1 + 19, &v18, buf);
  return 1;
}

void sub_371FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_371FDC(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4)
{
  if (!a2)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 565;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inNumberAddresses is 0.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNumberAddresses is 0.");
  }

  if (!a4)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 566;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inClientData is NULL]: inClientData is NULL.", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "inClientData is NULL.");
  }

  v5 = a3;
  if (!a3)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 567;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inAddresses is NULL]: inAddresses is NULL.", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "inAddresses is NULL.");
  }

  if (a3[2] != *(a4 + 548))
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 571;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inAddresses[0].mElement != This->mElement.", buf, 0x12u);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v21, "inAddresses[0].mElement != This->mElement.");
  }

  v6 = a2;
  do
  {
    if (v5[1] == *(a4 + 544) && *v5 == 1987013732 && v5[2] == *(a4 + 548) && *(a4 + 626) == 1)
    {
      v24 = 4;
      v25 = 0.0;
      sub_5659C(buf, (a4 + 528), "", 580);
      v22 = 1987013732;
      v23 = *(a4 + 544);
      (*(**buf + 40))(*buf, &v22, 0, 0, &v24, &v25);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      v7 = v25;
      if (*(a4 + 616) != v25)
      {
        if (!*(a4 + 664))
        {
          *buf = v25;
          v8 = *sub_592D8((a4 + 552), buf, (a4 + 560));
          *(a4 + 616) = v8;
          v7 = v25;
        }

        *(a4 + 656) = v7;
      }
    }

    *buf = *v5;
    *&buf[8] = v5[2];
    result = sub_6FF5C(a4 + 152, buf);
    v5 += 3;
    --v6;
  }

  while (v6);
  return result;
}

uint64_t sub_372464(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v18 = a2[2];
      sub_22CE0(v23);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *a2;
  if (*a2 <= 1986229103)
  {
    v10 = 1;
    if (v8 == 1064725619)
    {
      return v10;
    }

    if (v8 != 1836414053)
    {
      if (v8 == 1836478308)
      {
        return v10;
      }

      goto LABEL_20;
    }
  }

  else if (v8 > 1987013731)
  {
    if (v8 != 1987013732)
    {
      if (v8 == 1987013741)
      {
        v21 = 1987013732;
        v22 = *(a1 + 544);
        *buf = *a2;
        v25 = a2[2];
        v26 = a3;
        v27 = a4;
        sub_17C118((a1 + 152), &v21, buf);
      }

      goto LABEL_20;
    }
  }

  else if (v8 != 1986229104 && v8 != 1986290211)
  {
LABEL_20:
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *a2;
      v17 = a2[2];
      sub_22CE0(v23);
    }

    return 0;
  }

  v21 = *a2;
  v22 = *(a1 + 544);
  sub_5659C(&v19, (a1 + 528), "", 469);
  if ((*(*v19 + 16))(v19, &v21))
  {
    *buf = *a2;
    v25 = a2[2];
    v26 = a3;
    v27 = a4;
    sub_17C118((a1 + 152), &v21, buf);
  }

  v10 = 1;
  if (v20)
  {
    sub_1A8C0(v20);
  }

  return v10;
}

void sub_372B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_1A8C0(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_372B9C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, _DWORD *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *v28 = *a2;
      *&v28[8] = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > *a5)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *v28 = *a2;
      *&v28[8] = a2[2];
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 <= 1986229103)
  {
    if (v12 > 1836414052)
    {
      if (v12 != 1836414053)
      {
        if (v12 == 1983013986)
        {
          sub_5B898(a1 + 568, *a6);
LABEL_28:

          sub_B3FA4(a5, a6, v13);
          return;
        }

        if (v12 == 1836478308)
        {
          v25 = sub_5544(14);
          v26 = *v25;
          if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "InputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 351;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Attempt to GetPropertyData for kVirtualAudioDevicePropertyApplyMasterVolumeDefault.  This property is write-only.", buf, 0x12u);
          }

          v27 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v27, "Attempt to GetPropertyData for kVirtualAudioDevicePropertyApplyMasterVolumeDefault.  This property is write-only.");
        }

        goto LABEL_37;
      }

      v17 = *(a1 + 625);
      goto LABEL_24;
    }

    if (v12 != 1064725619)
    {
      if (v12 == 1684157046)
      {
        v16 = *a6;
        goto LABEL_20;
      }

      goto LABEL_37;
    }

    LODWORD(__p[0]) = 1064725619;
    *(__p + 4) = *(a1 + 544);
    sub_5659C(buf, (a1 + 528), "", 360);
    v18 = *buf;
    if ((*(**buf + 16))(*buf, __p))
    {
      goto LABEL_32;
    }

    goto LABEL_40;
  }

  if (v12 > 1987013731)
  {
    if (v12 == 1987013732)
    {
      v13 = *(a1 + 616);
      goto LABEL_28;
    }

    if (v12 == 1987013741)
    {
      v16 = *(a1 + 616);
LABEL_20:
      v13 = sub_E9780(a1 + 568, v16);
      goto LABEL_28;
    }

LABEL_37:
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *v28 = *a2;
      *&v28[8] = a2[2];
      sub_22CE0(__p);
    }

    return;
  }

  if (v12 == 1986229104)
  {
    if (*(a1 + 664))
    {
      v17 = 1;
LABEL_24:

      sub_5440C(v17, a5, a6);
      return;
    }

    sub_5659C(buf, (a1 + 528), "", 334);
    LODWORD(__p[0]) = 1986229104;
    *(__p + 4) = *(a1 + 544);
    v18 = *buf;
    if ((*(**buf + 16))(*buf, __p))
    {
LABEL_32:
      (*(*v18 + 40))(v18, __p, a3, a4, a5, a6);
      goto LABEL_41;
    }

LABEL_40:
    *v28 = 1987013732;
    *&v28[4] = *(a1 + 544);
    v20 = (*(*v18 + 16))(v18, v28);
    sub_5440C(v20, a5, a6);
LABEL_41:
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    return;
  }

  if (v12 != 1986290211)
  {
    goto LABEL_37;
  }

  v14 = *(a1 + 552);
  v15 = *(a1 + 560);

  sub_D8BD8(a5, a6, v14, v15);
}

void sub_3733CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_373410(uint64_t a1)
{
  sub_371044(a1);

  operator delete();
}

uint64_t sub_37344C(uint64_t *a1, int a2, int a3)
{
  v7[0] = 1987013732;
  v7[1] = a2;
  v7[2] = a3;
  sub_5659C(&v5, a1, "", 73);
  v3 = (*(*v5 + 16))(v5, v7);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_3734DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_373B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  __cxa_free_exception(v12);
  sub_1405C0(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_373BA0(uint64_t a1, char *name)
{
  *a1 = name;
  *(a1 + 8) = 0;
  v3 = notify_register_check(name, (a1 + 8));
  *(a1 + 12) = v3 == 0;
  if (v3)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v8 = 136315650;
      v9 = "SystemNotifier.cpp";
      v10 = 1024;
      v11 = 45;
      v12 = 2080;
      v13 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not get a token for the notification status.  There will be no notifications for %s", &v8, 0x1Cu);
    }
  }

  else
  {
    sub_6AC8C(a1, 0);
  }

  return a1;
}

BOOL sub_373CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 303) < 0)
  {
    sub_54A0(__p, *(a3 + 280), *(a3 + 288));
  }

  else
  {
    *__p = *(a3 + 280);
    v11 = *(a3 + 296);
  }

  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (!v5)
  {
    cf = 0;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v11 >= 0)
  {
    v6 = HIBYTE(v11);
  }

  else
  {
    v6 = __p[1];
  }

  cf = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (v11 < 0)
  {
LABEL_13:
    operator delete(__p[0]);
  }

LABEL_14:
  if (((*(*a3 + 448))(a3) & 1) != 0 && ((_os_feature_enabled_impl() & 1) != 0 || sub_34CF94(a3)))
  {
    v7 = (sub_45A4F0() & 1) != 0 || sub_45A1A0(&cf, *(a1 + 8));
  }

  else
  {
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

void sub_373E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  sub_20B45C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_373EA8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((*(*a2 + 160))(a2))
    {
      v6 = a2[36] == 1886216820;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      if (*a3 == 1920167288)
      {
        v7 = *(a3 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (*(a3 + 4) == 1 && *a3 == 1920167273)
      {
        return 1;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_37415C(uint64_t a1, uint64_t a2)
{
  v2 = (*(*a2 + 112))(a2);
  if ((v2 & 0x100000000) != 0 && v2 == 1701865584)
  {
    return 1;
  }

  else
  {
    return BYTE4(v2) & (v2 == 1701865569);
  }
}

uint64_t sub_3742F8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 304) != 1781740087)
  {
    return 0;
  }

  if (sub_48EDC())
  {
    return 1;
  }

  result = MGGetBoolAnswer();
  if (result)
  {

    return MGGetBoolAnswer();
  }

  return result;
}

uint64_t sub_3743EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_3744B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_374574(uint64_t a1, uint64_t a2)
{
  v3 = sub_7E96C() ^ 1;
  if (*(a2 + 304) == 1781740087)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_374908()
{
  if ((atomic_load_explicit(&qword_6EC160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC160))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC170))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC180))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC190))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1A0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1B0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1C0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1D0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1E0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC1F0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC200))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC210))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC260))
  {
    sub_375780();
    __cxa_guard_release(&qword_6EC260);
  }

  if ((atomic_load_explicit(&qword_6EC2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC2B0))
  {
    sub_3757D8();
    __cxa_guard_release(&qword_6EC2B0);
  }

  if ((atomic_load_explicit(&qword_6EC300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC300))
  {
    sub_375934();
    __cxa_guard_release(&qword_6EC300);
  }

  if ((atomic_load_explicit(&qword_6EC350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC350))
  {
    sub_375A88();
    __cxa_guard_release(&qword_6EC350);
  }

  if ((atomic_load_explicit(&qword_6EC3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC3A0))
  {
    sub_375DB4();
    __cxa_guard_release(&qword_6EC3A0);
  }

  if ((atomic_load_explicit(&qword_6EC3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC3F0))
  {
    sub_375E14();
    __cxa_guard_release(&qword_6EC3F0);
  }

  if ((atomic_load_explicit(&qword_6EC440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC440))
  {
    sub_375E74();
    __cxa_guard_release(&qword_6EC440);
  }

  if ((atomic_load_explicit(&qword_6EC490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC490))
  {
    sub_375EFC();
    __cxa_guard_release(&qword_6EC490);
  }

  if ((atomic_load_explicit(&qword_6EC4E0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6EC4E0))
    {
      sub_375F84();
      __cxa_guard_release(&qword_6EC4E0);
    }
  }
}

uint64_t sub_3757D8()
{
  qword_6EC270 = 0;
  qword_6EC268 = &qword_6EC270;
  qword_6EC288 = 0;
  qword_6EC278 = 0;
  unk_6EC280 = &qword_6EC288;
  qword_6EC2A8 = 0;
  qword_6EC2A0 = 0;
  qword_6EC290 = 0;
  unk_6EC298 = &qword_6EC2A0;
  sub_3FC3D0(&qword_6EC268, &qword_708528, qword_6EC1D8);
  v1 = 0x7672636700000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC268, &v1, qword_6EC1D8);
  v1 = 0x76726F6D00000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC268, &v1, qword_6EC1D8);
  v1 = 0x766D736700000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC268, &v1, qword_6EC198);
  return sub_3FDE10(&qword_6EC268, &qword_708528, 1);
}

uint64_t sub_375934()
{
  qword_6EC2C0 = 0;
  qword_6EC2B8 = &qword_6EC2C0;
  qword_6EC2D8 = 0;
  qword_6EC2C8 = 0;
  unk_6EC2D0 = &qword_6EC2D8;
  qword_6EC2F8 = 0;
  qword_6EC2F0 = 0;
  qword_6EC2E0 = 0;
  unk_6EC2E8 = &qword_6EC2F0;
  sub_3FC3D0(&qword_6EC2B8, &qword_709310, qword_6EC198);
  v1 = 0x696D646600000001;
  *&v2 = 1;
  DWORD2(v2) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC2B8, &v1, qword_6EC1A8);
  v1 = 0x6D6F767000000001;
  *&v2 = 1;
  DWORD2(v2) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FD29C(&qword_6EC2B8, &v1, qword_6EC1B8);
  v1 = 0x73706B6E00000001;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC2B8, &v1, qword_6EC208);
  return sub_3FDBC8(&qword_6EC2B8, 2);
}

uint64_t sub_375A88()
{
  qword_6EC310 = 0;
  qword_6EC308 = &qword_6EC310;
  qword_6EC328 = 0;
  qword_6EC318 = 0;
  unk_6EC320 = &qword_6EC328;
  qword_6EC348 = 0;
  qword_6EC340 = 0;
  qword_6EC330 = 0;
  unk_6EC338 = &qword_6EC340;
  sub_3FC3D0(&qword_6EC308, &qword_709310, qword_6EC1D8);
  v5 = 0x696D646600000001;
  *&v6 = 1;
  DWORD2(v6) = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  v5 = 0x6D6F767000000001;
  *&v6 = 1;
  DWORD2(v6) = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FD29C(&qword_6EC308, &v5, qword_6EC1D8);
  v5 = 0x7672636700000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  v5 = 0x76726F6D00000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  v5 = 0x6D736D7400000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  v5 = 0x7261772000000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv_0[i];
    LODWORD(v5) = 1;
    HIDWORD(v5) = v1;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1E8);
  }

  for (j = 0; j != 12; j += 4)
  {
    v3 = *&aComicvmitcmg[j];
    LODWORD(v5) = 1;
    HIDWORD(v5) = v3;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1E8);
  }

  v5 = 0x766D736700000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC308, &v5, qword_6EC1D8);
  return sub_3FDE10(&qword_6EC308, &qword_709310, 1);
}

uint64_t sub_375E74()
{
  qword_6EC400 = 0;
  qword_6EC3F8 = &qword_6EC400;
  qword_6EC418 = 0;
  qword_6EC408 = 0;
  unk_6EC410 = &qword_6EC418;
  qword_6EC438 = 0;
  qword_6EC430 = 0;
  qword_6EC420 = 0;
  unk_6EC428 = &qword_6EC430;
  sub_3FC3D0(&qword_6EC3F8, &qword_709310, qword_6EC1F8);
  return sub_3FDBC8(&qword_6EC3F8, 2);
}

uint64_t sub_375EFC()
{
  qword_6EC450 = 0;
  qword_6EC448 = &qword_6EC450;
  qword_6EC468 = 0;
  qword_6EC458 = 0;
  unk_6EC460 = &qword_6EC468;
  qword_6EC488 = 0;
  qword_6EC480 = 0;
  qword_6EC470 = 0;
  unk_6EC478 = &qword_6EC480;
  sub_3FC3D0(&qword_6EC448, &qword_709310, qword_6EC1D8);
  return sub_3FDBC8(&qword_6EC448, 1);
}

uint64_t sub_375F84()
{
  qword_6EC4A0 = 0;
  qword_6EC498 = &qword_6EC4A0;
  qword_6EC4B8 = 0;
  qword_6EC4A8 = 0;
  unk_6EC4B0 = &qword_6EC4B8;
  qword_6EC4D8 = 0;
  qword_6EC4D0 = 0;
  qword_6EC4C0 = 0;
  unk_6EC4C8 = &qword_6EC4D0;
  sub_3FC3D0(&qword_6EC498, &qword_709310, qword_6EC198);
  return sub_3FDBC8(&qword_6EC498, 2);
}

void sub_37600C()
{
  if ((atomic_load_explicit(&qword_6EC4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC4F0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC500))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC510))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC520))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC530))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC540))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC550))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC560))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC570))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC580))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC590))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC5A0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC5B0))
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_6EC600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC600))
  {
    sub_376E3C();
    __cxa_guard_release(&qword_6EC600);
  }

  if ((atomic_load_explicit(&qword_6EC650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC650))
  {
    sub_376E94();
    __cxa_guard_release(&qword_6EC650);
  }

  if ((atomic_load_explicit(&qword_6EC6A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC6A0))
  {
    sub_376FF0();
    __cxa_guard_release(&qword_6EC6A0);
  }

  if ((atomic_load_explicit(&qword_6EC6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC6F0))
  {
    sub_377144();
    __cxa_guard_release(&qword_6EC6F0);
  }

  if ((atomic_load_explicit(&qword_6EC740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC740))
  {
    sub_377470();
    __cxa_guard_release(&qword_6EC740);
  }

  if ((atomic_load_explicit(&qword_6EC790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC790))
  {
    sub_3774D0();
    __cxa_guard_release(&qword_6EC790);
  }

  if ((atomic_load_explicit(&qword_6EC7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC7E0))
  {
    sub_377530();
    __cxa_guard_release(&qword_6EC7E0);
  }

  if ((atomic_load_explicit(&qword_6EC830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EC830))
  {
    sub_3775B8();
    __cxa_guard_release(&qword_6EC830);
  }

  if ((atomic_load_explicit(&qword_6EC880, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6EC880))
    {
      sub_377640();
      __cxa_guard_release(&qword_6EC880);
    }
  }
}

uint64_t sub_376E94()
{
  qword_6EC610 = 0;
  qword_6EC608 = &qword_6EC610;
  qword_6EC628 = 0;
  qword_6EC618 = 0;
  unk_6EC620 = &qword_6EC628;
  qword_6EC648 = 0;
  qword_6EC640 = 0;
  qword_6EC630 = 0;
  unk_6EC638 = &qword_6EC640;
  sub_3FC3D0(&qword_6EC608, &qword_708528, qword_6EC598);
  v1 = 0x7672636700000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC608, &v1, qword_6EC598);
  v1 = 0x76726F6D00000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC608, &v1, qword_6EC598);
  v1 = 0x766D736700000000;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC608, &v1, qword_6EC528);
  return sub_3FDE10(&qword_6EC608, &qword_708528, 1);
}

uint64_t sub_376FF0()
{
  qword_6EC660 = 0;
  qword_6EC658 = &qword_6EC660;
  qword_6EC678 = 0;
  qword_6EC668 = 0;
  unk_6EC670 = &qword_6EC678;
  qword_6EC698 = 0;
  qword_6EC690 = 0;
  qword_6EC680 = 0;
  unk_6EC688 = &qword_6EC690;
  sub_3FC3D0(&qword_6EC658, &qword_709310, qword_6EC528);
  v1 = 0x696D646600000001;
  *&v2 = 1;
  DWORD2(v2) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC658, &v1, qword_6EC538);
  v1 = 0x6D6F767000000001;
  *&v2 = 1;
  DWORD2(v2) = 0;
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FD29C(&qword_6EC658, &v1, qword_6EC548);
  v1 = 0x73706B6E00000001;
  v2 = *sub_C53D8();
  v3 = 0;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_3FC3D0(&qword_6EC658, &v1, qword_6EC588);
  return sub_3FDBC8(&qword_6EC658, 2);
}

uint64_t sub_377144()
{
  qword_6EC6B0 = 0;
  qword_6EC6A8 = &qword_6EC6B0;
  qword_6EC6C8 = 0;
  qword_6EC6B8 = 0;
  unk_6EC6C0 = &qword_6EC6C8;
  qword_6EC6E8 = 0;
  qword_6EC6E0 = 0;
  qword_6EC6D0 = 0;
  unk_6EC6D8 = &qword_6EC6E0;
  sub_3FC3D0(&qword_6EC6A8, &qword_709310, qword_6EC598);
  v5 = 0x696D646600000001;
  *&v6 = 1;
  DWORD2(v6) = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  v5 = 0x6D6F767000000001;
  *&v6 = 1;
  DWORD2(v6) = 0;
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FD29C(&qword_6EC6A8, &v5, qword_6EC598);
  v5 = 0x7672636700000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  v5 = 0x76726F6D00000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  v5 = 0x6D736D7400000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  v5 = 0x7261772000000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  for (i = 0; i != 20; i += 4)
  {
    v1 = *&aOvpvivpvcgpvcv_0[i];
    LODWORD(v5) = 1;
    HIDWORD(v5) = v1;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC568);
  }

  for (j = 0; j != 12; j += 4)
  {
    v3 = *&aComicvmitcmg[j];
    LODWORD(v5) = 1;
    HIDWORD(v5) = v3;
    v6 = *sub_C53D8();
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC568);
  }

  v5 = 0x766D736700000001;
  v6 = *sub_C53D8();
  v7 = 0;
  v9 = 0;
  v10 = 0;
  v8 = 0;
  sub_3FC3D0(&qword_6EC6A8, &v5, qword_6EC598);
  return sub_3FDE10(&qword_6EC6A8, &qword_709310, 1);
}

uint64_t sub_377530()
{
  qword_6EC7A0 = 0;
  qword_6EC798 = &qword_6EC7A0;
  qword_6EC7B8 = 0;
  qword_6EC7A8 = 0;
  unk_6EC7B0 = &qword_6EC7B8;
  qword_6EC7D8 = 0;
  qword_6EC7D0 = 0;
  qword_6EC7C0 = 0;
  unk_6EC7C8 = &qword_6EC7D0;
  sub_3FC3D0(&qword_6EC798, &qword_709310, qword_6EC578);
  return sub_3FDBC8(&qword_6EC798, 2);
}

uint64_t sub_3775B8()
{
  qword_6EC7F0 = 0;
  qword_6EC7E8 = &qword_6EC7F0;
  qword_6EC808 = 0;
  qword_6EC7F8 = 0;
  unk_6EC800 = &qword_6EC808;
  qword_6EC828 = 0;
  qword_6EC820 = 0;
  qword_6EC810 = 0;
  unk_6EC818 = &qword_6EC820;
  sub_3FC3D0(&qword_6EC7E8, &qword_709310, qword_6EC598);
  return sub_3FDBC8(&qword_6EC7E8, 1);
}

uint64_t sub_377640()
{
  qword_6EC840 = 0;
  qword_6EC838 = &qword_6EC840;
  qword_6EC858 = 0;
  qword_6EC848 = 0;
  unk_6EC850 = &qword_6EC858;
  qword_6EC878 = 0;
  qword_6EC870 = 0;
  qword_6EC860 = 0;
  unk_6EC868 = &qword_6EC870;
  sub_3FC3D0(&qword_6EC838, &qword_709310, qword_6EC5A8);
  return sub_3FDBC8(&qword_6EC838, 2);
}

void *sub_3776C8(void *a1)
{
  strcpy(v15, " papwpap");
  v15[2] = &qword_709380;
  v16 = 0;
  v17 = 0;
  sub_377838(v3, v15, 1);
  v4 = 3;
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v7 = 3;
  v9[1] = 0;
  v10 = 0;
  v8 = v9;
  v9[0] = 0;
  v11 = 0;
  v12 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  sub_249F74(v15, v3);
  sub_3778E4(a1, v15, 1);
  sub_249CC4(v22);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_477A0(v19);
  sub_477A0(v18);
  sub_4E0BC(v15);
  sub_249CC4(v14[0]);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  sub_477A0(v9[0]);
  sub_477A0(v6[0]);
  return sub_4E0BC(v3);
}

void sub_37780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_249E00(&a27);
  sub_249E00(&a10);
  _Unwind_Resume(a1);
}

void *sub_377838(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    operator new();
  }

  return result;
}

void *sub_3778E4(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_248EF0();
  }

  return result;
}

void *sub_37796C(void *a1)
{
  strcpy(v15, " papapap");
  v15[2] = &qword_709380;
  v16 = 0;
  v17 = 0;
  sub_377838(v3, v15, 1);
  v4 = 3;
  v6[0] = 0;
  v6[1] = 0;
  v5 = v6;
  v7 = 3;
  v9[1] = 0;
  v10 = 0;
  v8 = v9;
  v9[0] = 0;
  v11 = 0;
  v12 = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  sub_249F74(v15, v3);
  sub_3778E4(a1, v15, 1);
  sub_249CC4(v22);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  sub_477A0(v19);
  sub_477A0(v18);
  sub_4E0BC(v15);
  sub_249CC4(v14[0]);
  if (v10)
  {
    v11 = v10;
    operator delete(v10);
  }

  sub_477A0(v9[0]);
  sub_477A0(v6[0]);
  return sub_4E0BC(v3);
}

void sub_377AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_249E00(&a27);
  sub_249E00(&a10);
  _Unwind_Resume(a1);
}

void sub_377ADC()
{
  v1[0] = v1;
  v1[1] = v1;
  v1[2] = 0;
  v2 = 3;
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  v5 = 3;
  v6 = v7;
  memset(v7, 0, 40);
  v8[0] = 0;
  v8[1] = 0;
  v7[5] = v8;
  v0[0] = v0;
  v0[1] = v0;
  v0[2] = 0;
  operator new();
}

void sub_3791E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_249D3C();
  sub_2492C0(a17);
  sub_249314(a14);
  sub_2493B4(&a19);
  sub_2493B4(&a22);
  sub_2493B4(&a25);
  sub_249E00(&a28);
  _Unwind_Resume(a1);
}

void sub_379334()
{
  sub_310AF4();
  *v6 = 0u;
  *v7 = 0u;
  v8 = 0u;
  *v9 = 0;
  v0 = sub_106F10();
  v9[4] = (v0 > 0xFFu) & v0;
  v9[5] = 1;
  *&v9[6] = 0;
  v10 = 0;
  v11 = 16777473;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v14 = 0;
  v15 = 0;
  v16 = -1044381696;
  v17 = 1;
  v18 = -1044381696;
  v19 = 1;
  v20 = 0;
  v21 = 1;
  v22 = -1056964608;
  v23 = 1;
  v24 = -1033371648;
  v25 = 1;
  v26 = 0;
  v27 = 1;
  v28 = -1033371648;
  v29 = 1;
  v30 = 0;
  v31 = 1;
  v32 = -1044381696;
  v33 = 1;
  v34 = 0;
  v35 = 1;
  v36 = -1033371648;
  v37 = 1;
  v38 = 0;
  v39 = 1;
  v40 = -1033371648;
  v41 = 1;
  v42 = -1055916032;
  v43 = 1;
  v44 = -1033371648;
  v45 = 1;
  v46 = 0;
  v47 = 1;
  v48 = -1055916032;
  v49 = 1;
  v50 = -1033371648;
  v51 = 1;
  v52 = -1055916032;
  v53 = 1;
  v54 = -1033371648;
  v55 = 1;
  v56 = 0;
  v57 = 1;
  v58 = -1055916032;
  v59 = 1;
  v60 = -1043333120;
  v61 = 1;
  v62 = 0x40000000;
  v63 = 1;
  v64 = 16777472;
  v65 = 0;
  v66 = 1;
  v67 = 0;
  v68 = 1;
  v69 = 1103626240;
  v70 = 1;
  v71 = 0;
  v72 = 1;
  v73 = 1094713344;
  v74 = 1;
  v75 = 1094713344;
  v76 = 1;
  v77 = 1094713344;
  v78 = 1;
  v79 = -1061158912;
  v80 = 1;
  v81 = 1107296256;
  v82 = 1;
  v83 = 1107296256;
  v84 = 1;
  v85 = 1092616192;
  v86 = 1;
  v87 = 0;
  v88 = 1;
  v89 = 0;
  v90 = 1;
  v91 = 16777472;
  v92 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v132 = 1;
  v133 = 0;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 0;
  v147 = 0;
  v148 = 0;
  v149 = 0;
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 0;
  v166 = 0;
  v167 = 0;
  v168 = 0;
  v169 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  v173 = 0;
  v174 = 256;
  v175 = 0;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0;
  v181 = 0;
  v2 = 1;
  v1 = 1953460273;
  v4 = 1;
  v3 = 1;
  v5 = 2;
  LODWORD(__src) = 1;
  sub_1F8148(v6, &__src, &__src + 4, 1uLL);
  __src = 0x200000001;
  sub_1F8148(&v7[1], &__src, v189, 2uLL);
  *v9 = 0x101010101000101;
  *&v9[12] = 257;
  v11 = 16843008;
  v60 = -1047527424;
  v61 = 1;
  v69 = 1103101952;
  v70 = 1;
  v75 = 0;
  v76 = 1;
  v77 = 0;
  v78 = 1;
  v73 = 0;
  v74 = 1;
  v89 = 0;
  v90 = 1;
  v79 = -1040187392;
  v80 = 1;
  v62 = 0;
  v63 = 1;
  v91 = 16843009;
  if ((v105 & 1) == 0)
  {
    v105 = 1;
  }

  v104 = 2;
  v182 = 1;
  memset(v185, 0, sizeof(v185));
  sub_4625C(v185, &v182, &v183, 1uLL);
  v186 = 0x200000001;
  memset(v184, 0, sizeof(v184));
  sub_4625C(v184, &v186, &v187, 2uLL);
  sub_4A51DC(&__src);
}

void sub_3799B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_379A74(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_379AB0(std::string *a1, unsigned int **a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  v4 = *a2;
  while (v4 != a2[1])
  {
    v5 = *v4++;
    std::to_string(&v11, v5);
    if (v4 == a2[1])
    {
      v6 = " }";
    }

    else
    {
      v6 = ", ";
    }

    v7 = std::string::append(&v11, v6, 2uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (v13 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if (v13 >= 0)
    {
      v10 = HIBYTE(v13);
    }

    else
    {
      v10 = __p[1];
    }

    std::string::append(a1, v9, v10);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }
  }
}

void sub_379BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_379BFC(uint64_t a1, unsigned int a2)
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
      v3 = v2;
      v4 = *(v2 + 32);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_379CF0(uint64_t a1, unsigned int a2)
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
      v3 = v2;
      v4 = *(v2 + 28);
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
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_379DD0(void *a1)
{
  if (a1)
  {
    sub_379DD0(*a1);
    sub_379DD0(a1[1]);
    sub_477A0(a1[7]);

    operator delete(a1);
  }
}

const void *sub_379E24(const __CFDictionary *a1, char *__s)
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

void sub_379ED8(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_20B45C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x379E88);
}

void sub_37A5CC(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"NRBand41Enabled"];
  v3 = [v2 BOOLValue];

  v4 = [v1 objectForKeyedSubscript:@"NRBand7xEnabled"];
  v5 = [v4 BOOLValue];

  v6 = [v1 objectForKeyedSubscript:@"LTEBand40Enabled"];
  v7 = [v6 BOOLValue];

  v8 = [v1 objectForKeyedSubscript:@"LTEBand41Enabled"];
  v9 = [v8 BOOLValue];

  v10 = [v1 objectForKeyedSubscript:@"LTEBand42Enabled"];
  v11 = [v10 BOOLValue];

  v12 = [v1 objectForKeyedSubscript:@"LTEBand48Enabled"];
  v13 = [v12 BOOLValue];

  sub_37AA78(&v40);
  v14 = v40;
  if (v13)
  {
    v15 = 0x10000000000;
  }

  else
  {
    v15 = 0;
  }

  if (v11)
  {
    v16 = 0x100000000;
  }

  else
  {
    v16 = 0;
  }

  if (v9)
  {
    v17 = 0x1000000;
  }

  else
  {
    v17 = 0;
  }

  if (v7)
  {
    v18 = 0x10000;
  }

  else
  {
    v18 = 0;
  }

  if (v5)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = v16 | v15;
  v21 = v20 | v18 | v17 | v19;
  v22 = *sub_5544(25);
  v23 = v22;
  if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v24 = "false";
    if (v3)
    {
      v25 = "true";
    }

    else
    {
      v25 = "false";
    }

    *&buf[4] = "MagneticCoexIODelegate.mm";
    *&buf[12] = 1024;
    *&buf[14] = 140;
    *buf = 136315906;
    *&buf[18] = 2080;
    *&buf[20] = v25;
    if ((v21 >> 8))
    {
      v24 = "true";
    }

    *&buf[28] = 2080;
    *&buf[30] = v24;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d The magnetic coex mitigation requirement was set to %s for NRBand41 and %s for NRBand7x", buf, 0x26u);
  }

  v26 = *sub_5544(25);
  v27 = v26;
  v28 = HIDWORD(v20);
  if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v29 = "false";
    *buf = 136316418;
    *&buf[4] = "MagneticCoexIODelegate.mm";
    if ((v21 & 0x10000) != 0)
    {
      v30 = "true";
    }

    else
    {
      v30 = "false";
    }

    *&buf[12] = 1024;
    *&buf[14] = 148;
    if ((v21 & 0x1000000) != 0)
    {
      v31 = "true";
    }

    else
    {
      v31 = "false";
    }

    *&buf[18] = 2080;
    *&buf[20] = v30;
    if (v28)
    {
      v32 = "true";
    }

    else
    {
      v32 = "false";
    }

    *&buf[28] = 2080;
    *&buf[30] = v31;
    *&buf[38] = 2080;
    if (v15 >> 40)
    {
      v29 = "true";
    }

    v43 = v32;
    v44 = 2080;
    v45 = v29;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d The magnetic coex mitigation requirement was set to %s for LTEBand40, %s for LTEBand41, %s for LTEBand42, %s for LTEBand48", buf, 0x3Au);
  }

  *(v14 + 96) = v3;
  *(v14 + 97) = BYTE1(v21);
  *(v14 + 98) = BYTE2(v21);
  *(v14 + 99) = HIBYTE(v21);
  *(v14 + 100) = v28;
  *(v14 + 101) = BYTE5(v15);
  std::mutex::lock(v14);
  v33 = *(v14 + 72);
  if (v33 != (v14 + 80))
  {
    do
    {
      if (*(v33 + 55) < 0)
      {
        sub_54A0(buf, v33[4], v33[5]);
      }

      else
      {
        *buf = *(v33 + 2);
        *&buf[16] = v33[6];
      }

      v34 = v33[8];
      *&buf[24] = v33[7];
      *&buf[32] = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 16), 1uLL, memory_order_relaxed);
        if (*&buf[32])
        {
          v35 = std::__shared_weak_count::lock(*&buf[32]);
          if (v35)
          {
            if (*&buf[24])
            {
              v36 = v3 & 0xFFFF000000000000 | *(v14 + 96) | (*(v14 + 100) << 32);
              sub_37AFF4(*&buf[24]);
            }

            sub_1A8C0(v35);
          }

          if (*&buf[32])
          {
            std::__shared_weak_count::__release_weak(*&buf[32]);
          }
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v37 = v33[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v33[2];
          v39 = *v38 == v33;
          v33 = v38;
        }

        while (!v39);
      }

      v33 = v38;
    }

    while (v38 != (v14 + 80));
  }

  std::mutex::unlock(v14);
  if (v41)
  {
    sub_1A8C0(v41);
  }
}

std::__shared_weak_count *sub_37AA78(void *a1)
{
  if (!qword_6EC998 || (result = std::__shared_weak_count::lock(qword_6EC998)) == 0 || !qword_6EC990)
  {
    operator new();
  }

  *a1 = qword_6EC990;
  a1[1] = result;
  return result;
}

void sub_37AC98(_Unwind_Exception *a1)
{
  sub_20D854(*v4);
  sub_37BCEC(&v2[3].__shared_weak_owners_);
  std::mutex::~mutex(v3);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v6);
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

void sub_37AFF4(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_37B0B4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_37B108(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v29 = a1;
  v30[0] = v1;
  v30[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = *(a1 + 16);
  v32 = *(a1 + 20);
  sub_37BAB8(&v42, v30, 294);
  v3 = v42;
  if (v42)
  {
    v4 = *sub_5544(25);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (*(v3 + 47) < 0)
        {
          sub_54A0(__p, *(v3 + 24), *(v3 + 32));
        }

        else
        {
          *__p = *(v3 + 24);
          v41 = *(v3 + 40);
        }

        v7 = __p;
        if (v41 < 0)
        {
          v7 = __p[0];
        }

        *buf = 136315650;
        v45 = "MagneticCoexIODelegate.mm";
        v46 = 1024;
        v47 = 299;
        v48 = 2080;
        v49 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Handling magnetic coex mitigation IO delegate for chain %s.", buf, 0x1Cu);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v8 = v31;
    if (v31)
    {
      v9 = kCFBooleanTrue;
    }

    else
    {
      v9 = kCFBooleanFalse;
    }

    v38 = v9;
    sub_37BC64(buf, "NRBand41", &v38);
    v10 = BYTE1(v31);
    if (BYTE1(v31))
    {
      v11 = kCFBooleanTrue;
    }

    else
    {
      v11 = kCFBooleanFalse;
    }

    v37 = v11;
    sub_37BC64(&v47 + 2, "NRBand7x", &v37);
    v12 = BYTE2(v31);
    if (BYTE2(v31))
    {
      v13 = kCFBooleanTrue;
    }

    else
    {
      v13 = kCFBooleanFalse;
    }

    v36 = v13;
    sub_37BCA8(&v50, "LTEBand40", &v36);
    v28 = v8;
    v14 = HIBYTE(v31);
    if (HIBYTE(v31))
    {
      v15 = kCFBooleanTrue;
    }

    else
    {
      v15 = kCFBooleanFalse;
    }

    v35 = v15;
    sub_37BCA8(&v51, "LTEBand41", &v35);
    v16 = v32;
    if (v32)
    {
      v17 = kCFBooleanTrue;
    }

    else
    {
      v17 = kCFBooleanFalse;
    }

    v34 = v17;
    sub_37BCA8(&v52, "LTEBand42", &v34);
    v18 = HIBYTE(v32);
    if (HIBYTE(v32))
    {
      v19 = kCFBooleanTrue;
    }

    else
    {
      v19 = kCFBooleanFalse;
    }

    v33 = v19;
    sub_37BCA8(v53, "LTEBand48", &v33);
    __p[0] = buf;
    __p[1] = &dword_4 + 2;
    cf = sub_69CE8(__p);
    sub_23E2D8(cf, 1073741832, 18);
    if (cf)
    {
      CFRelease(cf);
    }

    for (i = 0; i != -96; i -= 16)
    {
      v21 = *&v53[i + 8];
      if (v21)
      {
        CFRelease(v21);
      }

      v22 = *&v53[i];
      if (v22)
      {
        CFRelease(v22);
      }
    }

    if (v33)
    {
      CFRelease(v33);
    }

    if (v34)
    {
      CFRelease(v34);
    }

    if (v35)
    {
      CFRelease(v35);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v37)
    {
      CFRelease(v37);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    v23 = *(v3 + 56);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = v24;
        v26 = *(v3 + 48);
        if (v26)
        {
          (*(*v26 + 72))(*(v3 + 48), 1685287015, 1919315055, 0, v28);
          (*(*v26 + 72))(v26, 1685287015, 1919315060, 0, v10);
          (*(*v26 + 72))(v26, 1685287015, 1919693872, 0, v12);
          (*(*v26 + 72))(v26, 1685287015, 1919693873, 0, v14);
          (*(*v26 + 72))(v26, 1685287015, 1919693874, 0, v16);
          (*(*v26 + 72))(v26, 1685287015, 1919693880, 0, v18);
        }

        sub_1A8C0(v25);
      }
    }
  }

  if (v43)
  {
    sub_1A8C0(v43);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_37B0B4(&v29);
}

std::__shared_weak_count *sub_37BAB8(uint64_t *a1, uint64_t *a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = a2[1];
  if (!v5 || (result = std::__shared_weak_count::lock(v5), (a1[1] = result) == 0) || (v8 = *a2, *a1 = *a2, !v8))
  {
    v9 = sub_5544(14);
    v10 = sub_468EC(1, *v9, *(v9 + 8));
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v15 = "StandardUtilities.h";
        v16 = 1024;
        v17 = 284;
        v18 = 2080;
        v19 = "";
        v20 = 1024;
        v21 = a3;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Could not lock weak ptr (%s:%d).", buf, 0x22u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not lock weak ptr (%s:%d).");
  }

  return result;
}

void sub_37BC2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_37BC64(uint64_t a1, char *a2, const void **a3)
{
  sub_88CE8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_37BCA8(uint64_t a1, char *a2, const void **a3)
{
  sub_88CE8(a1, a2);
  v5 = *a3;
  if (v5)
  {
    CFRetain(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t *sub_37BCEC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    [*(v1 + 16) stopObserving];

    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

void sub_37BD58(uint64_t a1)
{
  v2 = (a1 + 88);
  [*(*(a1 + 88) + 16) stopObserving];
  v3 = *sub_5544(25);
  v4 = v3;
  if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "MagneticCoexIODelegate.mm";
    v7 = 1024;
    v8 = 211;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d Central magnetic coex mitigation handler is destroyed", &v5, 0x12u);
  }

  sub_20D854(*(a1 + 104));
  sub_37BCEC(v2);
  std::mutex::~mutex((a1 + 24));
}

void sub_37BE58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_37BE64(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C58D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_37BF94(uint64_t a1)
{
  sub_EBA7C();
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(caulk::g_realtime_safe_resource, 0x30uLL, 8uLL);
    *(v5 + 16) = 0;
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;
    *v5 = off_6C5940;
    *(v5 + 8) = 0;

    return caulk::concurrent::messenger::enqueue(&unk_6FD6F8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::concurrent::message **sub_37C02C(caulk::concurrent::message *a1)
{
  v2 = a1;
  sub_37C074(a1);
  return sub_37C42C(&v2);
}

void sub_37C060(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_37C42C(va);
  _Unwind_Resume(a1);
}

void sub_37C074(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = *(a1 + 24);
  v2[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_37BAB8(&v3, v2, 276);
  if (v3)
  {
    sub_37C574(v3);
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

caulk::concurrent::message **sub_37C42C(caulk::concurrent::message **a1)
{
  v2 = *a1;
  *v2 = off_6C5968;
  v3 = *(v2 + 4);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  caulk::concurrent::message::~message(v2);
  result = caulk::g_realtime_safe_resource;
  if (caulk::g_realtime_safe_resource)
  {
    caulk::rt_safe_memory_resource::rt_deallocate(caulk::g_realtime_safe_resource, v2, 0x30uLL, 8uLL);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_37C4A8(caulk::concurrent::message *this)
{
  *this = off_6C5968;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_37C518(caulk::concurrent::message *this)
{
  *this = off_6C5968;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_37C574(uint64_t a1)
{
  sub_37AA78(&v12);
  v2 = v12;
  std::mutex::lock(v12);
  v3 = *&v2[1].__m_.__opaque[8];
  if (v3)
  {
    v4 = &v2[1].__m_.__opaque[8];
    v5 = *&v2[1].__m_.__opaque[8];
    do
    {
      v6 = sub_6F834(v5 + 4, (a1 + 24));
      if ((v6 & 0x80u) == 0)
      {
        v4 = v5;
      }

      v5 = *&v5[(v6 >> 4) & 8];
    }

    while (v5);
    if (v4 != &v2[1].__m_.__opaque[8] && (sub_6F834((a1 + 24), v4 + 4) & 0x80) == 0)
    {
      v7 = *(v4 + 1);
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
        v9 = v4;
        do
        {
          v8 = *(v9 + 2);
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*v2[1].__m_.__opaque == v4)
      {
        *v2[1].__m_.__opaque = v8;
      }

      --*&v2[1].__m_.__opaque[16];
      sub_75234(v3, v4);
      sub_ED13C((v4 + 32));
      operator delete(v4);
    }
  }

  std::mutex::unlock(v2);
  v11 = v13;
  if (v13)
  {

    sub_1A8C0(v11);
  }
}

void sub_37C6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_37C6CC(caulk::concurrent::message *this)
{
  *this = off_6C5968;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_37C73C(caulk::concurrent::message *this)
{
  *this = off_6C5968;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_37C798(uint64_t a1)
{
  sub_8BEE4();
  v3 = v2 = qword_709F20;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = v3;
  operator new();
}

uint64_t *sub_37C848(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v33 = a1;
  v34 = v2;
  v35 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_37BAB8(&v38, &v34, 253);
  v3 = v38;
  if (v38)
  {
    v5 = *(v38 + 8);
    v4 = *(v38 + 16);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_37AA78(&v36);
    if (v4)
    {
      v6 = v36;
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v4);
      if (v7 && v5)
      {
        v8 = *sub_5544(25);
        v9 = v8;
        if (v8)
        {
          v10 = v8;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v5 + 47) < 0)
            {
              sub_54A0(__p, *(v5 + 24), *(v5 + 32));
            }

            else
            {
              *__p = *(v5 + 24);
              v41 = *(v5 + 40);
            }

            v15 = __p;
            if (v41 < 0)
            {
              v15 = __p[0];
            }

            *buf = 136315650;
            v45 = "MagneticCoexIODelegate.mm";
            v46 = 1024;
            v47 = 168;
            v48 = 2080;
            v49 = v15;
            _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding magnetic coex mitigation IO delegate %s", buf, 0x1Cu);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        std::mutex::lock(v6);
        v17 = (v6 + 80);
        v16 = *(v6 + 80);
        if (v16)
        {
          v18 = (v6 + 80);
          do
          {
            v19 = sub_6F834(v16 + 4, (v3 + 24));
            if ((v19 & 0x80u) == 0)
            {
              v18 = v16;
            }

            v16 = *(v16 + ((v19 >> 4) & 8));
          }

          while (v16);
          if (v17 != v18)
          {
            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v20 = v18[8];
              v18[7] = v5;
              v18[8] = v4;
              if (v20)
              {
                std::__shared_weak_count::__release_weak(v20);
              }

              goto LABEL_67;
            }

            if ((sub_6F834((v3 + 24), v18 + 4) & 0x80) == 0)
            {
              if ((sub_6F834(v18 + 4, (v3 + 24)) & 0x80) == 0)
              {
                v42 = v18;
                v43 = v18;
                goto LABEL_65;
              }

              v27 = v18[1];
              if (v27)
              {
                v28 = v18[1];
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                v30 = v18;
                do
                {
                  v29 = v30[2];
                  v24 = *v29 == v30;
                  v30 = v29;
                }

                while (!v24);
              }

              if (v29 == v17 || (v31 = v18[1], v32 = sub_6F834((v3 + 24), v29 + 4), v27 = v31, v32 < 0))
              {
                if (v27)
                {
                  v43 = v29;
                  v18 = v29;
                }

                else
                {
                  v43 = v18++;
                }

                goto LABEL_64;
              }

LABEL_60:
              v18 = sub_6F86C(v6 + 72, &v43, (v3 + 24));
LABEL_64:
              v18 = *v18;
LABEL_65:
              if (!v18)
              {
                operator new();
              }

LABEL_67:
              std::mutex::unlock(v6);
              v25 = *(v6 + 100);
              v26 = *(v6 + 96);
              sub_37AFF4(v5);
            }
          }

          v16 = *v18;
        }

        else
        {
          v18 = (v6 + 80);
        }

        v21 = v18;
        if (*(v6 + 72) == v18)
        {
          goto LABEL_61;
        }

        if (v16)
        {
          v22 = v16;
          do
          {
            v21 = v22;
            v22 = v22[1];
          }

          while (v22);
        }

        else
        {
          v23 = v18;
          do
          {
            v21 = v23[2];
            v24 = *v21 == v23;
            v23 = v21;
          }

          while (v24);
        }

        if ((sub_6F834(v21 + 4, (v3 + 24)) & 0x80) != 0)
        {
LABEL_61:
          if (v16)
          {
            v43 = v21;
            v18 = v21 + 1;
          }

          else
          {
            v43 = v18;
          }

          goto LABEL_64;
        }

        goto LABEL_60;
      }
    }

    else
    {
      v7 = 0;
    }

    v11 = *sub_5544(25);
    v12 = v11;
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      if (*(v3 + 47) >= 0)
      {
        v13 = v3 + 24;
      }

      else
      {
        v13 = *(v3 + 24);
      }

      *buf = 136315650;
      v45 = "MagneticCoexIODelegate.mm";
      v46 = 1024;
      v47 = 183;
      v48 = 2080;
      v49 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to add magnetic coex mitigation IO delegate for chain %s to central callback handler", buf, 0x1Cu);
    }

    if (v7)
    {
      sub_1A8C0(v7);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    else if (!v4)
    {
LABEL_23:
      if (v37)
      {
        sub_1A8C0(v37);
      }

      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      goto LABEL_27;
    }

    std::__shared_weak_count::__release_weak(v4);
    goto LABEL_23;
  }

LABEL_27:
  if (v39)
  {
    sub_1A8C0(v39);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  return sub_8BE90(&v33);
}

void sub_37D140(uint64_t a1)
{
  sub_37D178(a1);

  operator delete();
}

uint64_t sub_37D178(uint64_t a1)
{
  v2 = sub_5544(25);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        if (*(a1 + 47) < 0)
        {
          sub_54A0(__p, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          *__p = *(a1 + 24);
          v11 = *(a1 + 40);
        }

        v5 = __p;
        if (v11 < 0)
        {
          v5 = __p[0];
        }

        *buf = 136315650;
        v13 = "MagneticCoexIODelegate.mm";
        v14 = 1024;
        v15 = 286;
        v16 = 2080;
        v17 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Destroying magnetic coex mitigation IO delegate for chain %s", buf, 0x1Cu);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_37C574(a1);
  v6 = *(a1 + 72);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_37D2EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_37D470(_Unwind_Exception *a1)
{
  shared_weak_owners = v1[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void sub_37D4D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C5908;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_37D59C(_BYTE *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  v5 = malloc_type_malloc(Length + 1, 0x100004077774924uLL);
  CFStringGetCString(theString, v5, Length + 1, 0x8000100u);
  sub_53E8(a1, v5);

  free(v5);
}

void sub_37D67C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D3E80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_37D6F0()
{
  if ((atomic_load_explicit(&qword_6ECB38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6ECB38))
  {
    v0 = sub_DD858();
    sub_37D770(v0);

    __cxa_guard_release(&qword_6ECB38);
  }
}

uint64_t sub_37D770(uint64_t result)
{
  if (result <= 145)
  {
    if (result <= 0x2E)
    {
      if (((1 << result) & 0x2FF0801E0600) != 0)
      {
        goto LABEL_7;
      }

      if (((1 << result) & 0x400F7C000000) != 0)
      {
        goto LABEL_15;
      }

      if (!result)
      {
LABEL_4:
        dword_6ECA40 = 1;
        *&qword_6ECA48 = 0u;
        unk_6ECA58 = 0u;
        *(&xmmword_6ECA60 + 8) = 0u;
        *(&xmmword_6ECA70 + 8) = 0u;
        qword_6ECA88 = 0;
        strcpy(&dword_6ECA90, "tlfd");
        byte_6ECA98 = 0;
        byte_6ECAE0 = 0;
        xmmword_6ECAF0 = 0u;
        unk_6ECB00 = 0u;
        xmmword_6ECB10 = 0u;
        unk_6ECB20 = 0u;
        qword_6ECB30 = 0;
        return result;
      }
    }

    if ((result - 138) >= 4 && (result - 134) >= 2)
    {
LABEL_29:
      v1 = sub_5544(14);
      v2 = *v1;
      if (*v1)
      {
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
        {
          *v4 = 136315394;
          *&v4[4] = "ActuatorSettingsFactory_Aspen.cpp";
          v5 = 1024;
          v6 = 172;
          _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid Product Type", v4, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invalid Product Type");
    }

    goto LABEL_4;
  }

  if (result <= 179)
  {
    if ((result - 146) >= 0x18 && result != 177 && result != 179)
    {
      goto LABEL_29;
    }

    goto LABEL_4;
  }

  if (result > 197)
  {
    if ((result - 4013) < 5)
    {
      goto LABEL_4;
    }

    if ((result - 8010) > 0xE || ((1 << (result - 74)) & 0x7801) == 0)
    {
      if (result != 198)
      {
        goto LABEL_29;
      }

      goto LABEL_4;
    }
  }

  else if (result != 180)
  {
    if (result != 182)
    {
      if (result != 195)
      {
        goto LABEL_29;
      }

      LODWORD(result) = 27;
LABEL_15:

      sub_37DA7C(result);
    }

    goto LABEL_4;
  }

LABEL_7:
  dword_6ECA40 = 1;
  *v4 = 0;
  qword_6ECA50 = 0;
  unk_6ECA58 = 0;
  qword_6ECA48 = 0;
  result = sub_4625C(&qword_6ECA48, v4, &v4[8], 2uLL);
  xmmword_6ECA70 = 0u;
  unk_6ECA80 = 0u;
  xmmword_6ECA60 = 0u;
  strcpy(&dword_6ECA90, "tlfd");
  byte_6ECA98 = 0;
  byte_6ECAE0 = 0;
  xmmword_6ECAF0 = 0u;
  unk_6ECB00 = 0u;
  xmmword_6ECB10 = 0u;
  unk_6ECB20 = 0u;
  qword_6ECB30 = 0;
  return result;
}

void sub_37DA7C(int a1)
{
  sub_37E054(v19, off_6E4C30);
  sub_30F70C(v17, a1);
  if ((v18 & 0x80u) == 0)
  {
    v2 = v18;
  }

  else
  {
    v2 = v17[1];
  }

  v3 = v15;
  v4 = sub_B0848(v15, v2 + 17);
  if (v16 < 0)
  {
    v3 = v15[0];
  }

  if (v2)
  {
    if ((v18 & 0x80u) == 0)
    {
      v5 = v17;
    }

    else
    {
      v5 = v17[0];
    }

    v4 = memmove(v3, v5, v2);
  }

  strcpy(v3 + v2, "_actuator_general");
  caulk::product::short_hardware_model_name(__p, v4);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if (v6)
  {
    if ((v13 & 0x80u) == 0)
    {
      v7 = v13;
    }

    else
    {
      v7 = __p[1];
    }

    cf = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    if ((v13 & 0x80) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    cf = 0;
    if ((v13 & 0x80) != 0)
    {
LABEL_20:
      operator delete(__p[0]);
    }
  }

  if (v16 >= 0)
  {
    v8 = v15;
  }

  else
  {
    v8 = v15[0];
  }

  sub_42AED0(v19, v8, &cf);
  if (v16 >= 0)
  {
    v9 = v15;
  }

  else
  {
    v9 = v15[0];
  }

  sub_37E0FC(__p, v9);
  if (v16 >= 0)
  {
    v10 = v15;
  }

  else
  {
    v10 = v15[0];
  }

  sub_42B38C(&v20, v10, 0, 0);
}

void sub_37DF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, const void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  sub_20B45C(&a39);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 209) < 0)
  {
    operator delete(*(v45 - 232));
  }

  sub_478050(v45 - 208, v47, v48, v49, v50, v51, v52, v53);
  _Unwind_Resume(a1);
}

uint64_t sub_37E054(uint64_t a1, const char *a2)
{
  *a1 = CFStringCreateWithCString(0, a2, 0x600u);
  *(a1 + 8) = 1;
  *(a1 + 48) = 0;
  for (i = 16; i != 48; i += 8)
  {
    *(a1 + i) = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  return a1;
}

uint64_t sub_37E0FC(uint64_t a1, char *__s)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v6 = (a1 + 24);
  *(a1 + 47) = v4;
  if (v4)
  {
    memmove(v6, __s, v4);
  }

  *(v6 + v5) = 0;
  strcpy((a1 + 48), "tlfd");
  *(a1 + 56) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return a1;
}

void sub_37E1F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2B20B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_37E208(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != *a2)
  {
    sub_2B3C44(a1, 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3));
  }

  if (*(a2 + 47) < 0)
  {
    sub_54A0((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  v6 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v6;
  sub_37E434((a1 + 56), (a2 + 56));
  *(a1 + 136) = *(a2 + 136);
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
  v8 = *(a2 + 168);
  v9 = *(a2 + 176);
  if (v9 != v8)
  {
    sub_2B39B4(a1 + 168, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  }

  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v11 = *(a2 + 192);
  v10 = *(a2 + 200);
  if (v10 != v11)
  {
    sub_2B39B4(a1 + 192, 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3));
  }

  return a1;
}

void sub_37E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  sub_294204(v9 + 56);
  if (*(v9 + 47) < 0)
  {
    operator delete(*(v9 + 24));
  }

  a9 = v9;
  sub_2B20B4(&a9);
  _Unwind_Resume(a1);
}

char *sub_37E434(char *__dst, __int128 *a2)
{
  *__dst = 0;
  __dst[72] = 0;
  if (*(a2 + 72) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_54A0(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v4;
    }

    if (*(a2 + 47) < 0)
    {
      sub_54A0(__dst + 24, *(a2 + 3), *(a2 + 4));
    }

    else
    {
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
    }

    if (*(a2 + 71) < 0)
    {
      sub_54A0(__dst + 48, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v6 = a2[3];
      *(__dst + 8) = *(a2 + 8);
      *(__dst + 3) = v6;
    }

    __dst[72] = 1;
  }

  return __dst;
}

void sub_37E4F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  if (*(v1 + 72) == 1)
  {
    sub_1E19A0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_37E540(void *result, unsigned int a2)
{
  v3 = result[3];
  v2 = result[4];
  if (0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3) > a2)
  {
    v4 = result;
    v5 = v3 + 24 * a2;
    v6 = v2 - (v5 + 24);
    if (v2 != v5 + 24)
    {
      result = memmove(v5, (v5 + 24), v2 - (v5 + 24));
    }

    v4[4] = v5 + v6;
  }

  return result;
}

uint64_t sub_37E5B8(void *a1, unsigned int a2, unint64_t a3)
{
  v4 = a1[3];
  v3 = a1[4];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  if (v5 >= a2)
  {
    v8 = (v4 + 24 * a2);
    v9 = a1[5];
    if (v3 >= v9)
    {
      v13 = v5 + 1;
      if (v13 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_189A00();
      }

      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v4) >> 3);
      if (2 * v14 > v13)
      {
        v13 = 2 * v14;
      }

      if (v14 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        sub_37E828(v15);
      }

      v17 = 24 * a2;
      if (!a2)
      {
        sub_37E828(1uLL);
      }

      v22 = *a3;
      *&dword_10[6 * a2] = *(a3 + 16);
      *v17 = v22;
      memcpy((v17 + 24), v8, a1[4] - v8);
      v23 = a1[3];
      v28 = (v17 + 24 + a1[4] - v8);
      a1[4] = v8;
      v24 = v8 - v23;
      v25 = (v17 - (v8 - v23));
      memcpy(v25, v23, v24);
      v26 = a1[3];
      a1[3] = v25;
      *(a1 + 2) = v28;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else if (v8 == v3)
    {
      v16 = *a3;
      *(v3 + 16) = *(a3 + 16);
      *v3 = v16;
      a1[4] = v3 + 24;
    }

    else
    {
      v10 = v8 + 3;
      if (v3 < 0x18)
      {
        v11 = a1[4];
      }

      else
      {
        v11 = v3 + 24;
        v12 = *(v3 - 24);
        *(v3 + 16) = *(v3 - 8);
        *v3 = v12;
      }

      a1[4] = v11;
      if (v3 != v10)
      {
        memmove(v8 + 3, v8, v3 - v10);
        v11 = a1[4];
      }

      v18 = v11 <= a3 || v8 > a3;
      v19 = 24;
      if (v18)
      {
        v19 = 0;
      }

      v20 = (a3 + v19);
      v21 = *v20;
      v8[2] = *(v20 + 2);
      *v8 = v21;
    }
  }

  return 0;
}

void sub_37E810(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_37E828(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_6ACD8();
}

uint64_t sub_37E880(void *a1, int a2, CFTypeRef cf)
{
  if (a2 != 1635087726)
  {
    return 1064333936;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFDataGetTypeID())
  {
    return 1886806380;
  }

  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  v9 = a1[3];
  v8 = a1[4];
  if (v8 != v9)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    if (v10 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_37E828(v10);
    }

    sub_189A00();
  }

  if (Length > 0x17)
  {
    v12 = 0;
    v13 = &BytePtr[24 * (Length / 0x18)];
    v14 = 0;
    do
    {
      if (BytePtr < v13)
      {
        v11 = (*(*a1 + 80))(a1, v12, BytePtr);
        if (v11)
        {
          return v11;
        }

        BytePtr += 24;
        v12 = (v12 + 1);
      }

      else
      {
        (*(*a1 + 88))(a1, v12);
        v14 += 24;
      }
    }

    while (BytePtr < v13);
  }

  return 0;
}

void sub_37EA5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_37EA74(uint64_t a1, int a2, CFDataRef *a3)
{
  switch(a2)
  {
    case 1635087726:
      v6 = CFDataCreate(0, *(a1 + 24), *(a1 + 32) - *(a1 + 24));
      result = 0;
      *a3 = v6;
      break;
    case 1635148149:
      __p = 0;
      v8 = 0;
      v9 = 0;
      (*(*a1 + 32))(a1, &__p);
      *a3 = CFDataCreate(0, __p, v8 - __p);
      if (__p)
      {
        v8 = __p;
        operator delete(__p);
      }

      return 0;
    case 1851878757:
      v4 = *(a1 + 8);
      *a3 = v4;
      CFRetain(v4);
      return 0;
    default:
      return 1064333936;
  }

  return result;
}

void sub_37EB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_37EB84(void *a1)
{
  *a1 = off_6C5990;
  v2 = a1[2];
  AUPBUnregister();
  sub_16A9B8(a1, 0);
  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_37ECE8(uint64_t a1)
{
  sub_37ED20(a1);

  operator delete();
}

uint64_t sub_37ED20(uint64_t a1)
{
  *a1 = off_6C5A00;
  v2 = sub_5544(10);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v30 = 136315650;
        v31 = "SystemSettingsManager_Aspen.cpp";
        v32 = 1024;
        v33 = 1101;
        v34 = 2048;
        v35 = a1;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- SystemSettingsManager_Aspen[%p]::~SystemSettingsManager_Aspen()", &v30, 0x1Cu);
      }
    }
  }

  std::mutex::~mutex((a1 + 496));
  sub_4E0BC((a1 + 464));
  v4 = *(a1 + 456);
  *(a1 + 456) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_37F310(*(a1 + 408));
  sub_37F310(*(a1 + 384));
  sub_37F310(*(a1 + 360));
  sub_37F310(*(a1 + 336));
  sub_37F310(*(a1 + 312));
  sub_37F310(*(a1 + 288));
  v5 = *(a1 + 272);
  *(a1 + 272) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 256);
  *(a1 + 256) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 248);
  *(a1 + 248) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 240);
  *(a1 + 240) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a1 + 200);
  *(a1 + 200) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  v23 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  v25 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  return a1;
}

void sub_37F304(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_37F310(void *a1)
{
  if (a1)
  {
    sub_37F310(*a1);
    sub_37F310(a1[1]);
    v2 = a1[5];
    a1[5] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_37F390(uint64_t a1)
{
  std::mutex::lock((a1 + 496));
  v2 = *(sub_C2C1C() + 8);
  std::mutex::unlock((a1 + 496));
  return v2;
}

void sub_37F3E4(uint64_t a1)
{
  sub_1123D0(&v19, @"MaggieDebugLevel", 0);
  if (!v19)
  {
    goto LABEL_13;
  }

  if (v22 < 0)
  {
    if (v21 != 2)
    {
      if (v21 == 6)
      {
        v2 = v20;
        goto LABEL_9;
      }

LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    v16 = *v20;
LABEL_34:
    v7 = v16 == 20297;
    goto LABEL_14;
  }

  if (v22 == 2)
  {
    v16 = v20;
    goto LABEL_34;
  }

  if (v22 != 6)
  {
    goto LABEL_13;
  }

  v2 = &v20;
LABEL_9:
  v3 = bswap64(*v2 | (*(v2 + 2) << 32));
  v4 = v3 >= 0x416C776179730000;
  v5 = v3 > 0x416C776179730000;
  v6 = !v4;
  v7 = 2 * (v5 == v6);
LABEL_14:
  v8 = sub_5544(10);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_53E8(__p, off_6C5F38[v7]);
    v10 = v18 >= 0 ? __p : __p[0];
    *buf = 136315906;
    v24 = "SystemSettingsManager_Aspen.cpp";
    v25 = 1024;
    v26 = 619;
    v27 = 2080;
    v28 = "MaggieDebugLevel";
    v29 = 2080;
    v30 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preference %s: %s.", buf, 0x26u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (*(a1 + 52) != v7)
  {
    *(a1 + 52) = v7;
    v11 = *(a1 + 352);
    v12 = (a1 + 360);
    if (v11 != v12)
    {
      do
      {
        sub_37F654(v11[5]);
        v13 = v11[1];
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
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != v12);
    }
  }
}

void sub_37F62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_37F654(uint64_t a1)
{
  sub_42A43C(a1 + 24);
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 8);
    sub_42A318(a1 + 24);

    v3(v2);
  }

  else
  {

    sub_42A318(a1 + 24);
  }
}

_BYTE **sub_37F6D8(_BYTE **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_224F4C(v2);
    operator delete();
  }

  return a1;
}

_BYTE **sub_37F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 456))
  {
    operator new();
  }

  *buf = 0;
  v8 = (*(*a1 + 336))(a1);
  *(a1 + 432) = a2;
  *(a1 + 440) = a3;
  *(a1 + 448) = a4;
  result = sub_37F6D8(buf);
  if ((v8 & 1) == 0)
  {
    result = (*(*a1 + 336))(a1);
    if (result)
    {
      if (*(a1 + 456))
      {
        operator new();
      }

      v21 = 0;
      v10 = sub_5544(16);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 480);
        *buf = 136315650;
        *&buf[4] = "SystemSettingsManager_Aspen.cpp";
        v23 = 1024;
        v24 = 1895;
        v25 = 2048;
        v26 = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%25s:%-5d Dispatching %lu cached commands to the serializer (plus any others that come in before dispatching completes)", buf, 0x1Cu);
      }

      sub_37F6D8(&v21);
      result = (*(*a1 + 336))(a1);
      if (!result)
      {
        v18 = sub_5544(14);
        v19 = *v18;
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "SystemSettingsManager_Aspen.cpp";
          v23 = 1024;
          v24 = 1898;
          _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The serialization context is invalid; cannot dispatch commands", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 1852797029;
      }

      if (*(a1 + 488) == 1)
      {
        do
        {
          if (*(a1 + 456))
          {
            operator new();
          }

          *buf = 0;
          v13 = *(a1 + 480);
          if (v13)
          {
            v14 = *(a1 + 472);
            v15 = v14[1];
            v16 = v14[2];
            v17 = *v14;
            *(v17 + 8) = v15;
            *v15 = v17;
            *(a1 + 480) = v13 - 1;
            operator delete(v14);
            sub_37F6D8(buf);
            if (v16)
            {
              sub_11A69C(v16);
            }
          }

          else
          {
            sub_37F6D8(buf);
          }

          if (*(a1 + 456))
          {
            operator new();
          }

          *buf = 0;
          if (!*(a1 + 480))
          {
            *(a1 + 488) = 0;
          }

          result = sub_37F6D8(buf);
        }

        while ((*(a1 + 488) & 1) != 0);
      }
    }
  }

  return result;
}

void sub_37FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(10);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1679;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d + SystemSettingsManager_Aspen[%p]::SetVibrationUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }

  sub_37FD78(*(a1 + 240), a2, a3);
  v8 = sub_5544(10);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = 136316162;
        v11 = "SystemSettingsManager_Aspen.cpp";
        v12 = 1024;
        v13 = 1683;
        v14 = 2048;
        v15 = a1;
        v16 = 2048;
        v17 = a2;
        v18 = 2048;
        v19 = a3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d - SystemSettingsManager_Aspen[%p]::SetVibrationUpdateListener(inProc %p, inClientData %p)", &v10, 0x30u);
      }
    }
  }
}