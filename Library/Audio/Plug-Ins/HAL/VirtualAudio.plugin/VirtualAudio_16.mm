void sub_1261C0(uint64_t *a1)
{
  v2 = (*(*a1 + 120))(a1);
  sub_10852C(v24, 0, v2, a1[67]);
  if (*(v25 + 2))
  {
    v3 = a1[101];
    v4 = a1[102] - v3;
    if (v4)
    {
      v5 = 0;
      v6 = v25 + 12;
      do
      {
        *&v6[4 * v5] = *(v3 + v5);
        ++v5;
      }

      while (v4 > v5);
    }

    sub_10834C(v24);
  }

  v7 = (*(*a1 + 120))(a1);
  sub_10852C(v22, 1, v7, a1[67]);
  if (*(v23 + 2))
  {
    v8 = a1[104];
    v9 = a1[105] - v8;
    if (v9)
    {
      v10 = 0;
      v11 = v23 + 12;
      do
      {
        *&v11[4 * v10] = *(v8 + v10);
        ++v10;
      }

      while (v9 > v10);
    }

    sub_10834C(v22);
  }

  v12 = sub_5544(17);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_1197BC(v20, v24);
    v14 = v21;
    v15 = v20[0];
    sub_1197BC(__p, v22);
    v16 = v20;
    if (v14 < 0)
    {
      v16 = v15;
    }

    if (v19 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    *buf = 136315906;
    v27 = "AggregateDevice_Common.cpp";
    v28 = 1024;
    v29 = 259;
    v30 = 2080;
    v31 = v16;
    v32 = 2080;
    v33 = v17;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting VA input stream usage to %s, output stream usage to %s", buf, 0x26u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    if (v21 < 0)
    {
      operator delete(v20[0]);
    }
  }

  free(v23);
  free(v25);
}

void sub_126400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (v21 < 0)
  {
    operator delete(v20);
  }

  free(a17);
  free(a20);
  _Unwind_Resume(a1);
}

uint64_t sub_12644C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, AudioObjectID a8)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *a1 = off_6C19A0;
  v16 = sub_126BBC(a3);
  *(a1 + 88) = 0;
  *(a1 + 80) = v16;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 128) = a8;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  if (qword_6FCB80 != -1)
  {
    dispatch_once(&qword_6FCB80, &stru_6C1C18);
  }

  if (off_6FCB88)
  {
    v17 = off_6FCB88(2, a1 + 144);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 168) = v17;
  *(a1 + 176) = sub_1278D8();
  sub_F31A0((a1 + 184), a4);
  *(a1 + 208) = *a5;
  v18 = a5[1];
  *(a1 + 216) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  sub_44E44((a1 + 224), a6);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_F320C(a1 + 248, *a2, a2[1], (a2[1] - *a2) >> 4);
  v19 = *a3;
  *(a1 + 280) = *(a3 + 8);
  *(a1 + 272) = v19;
  v20 = *(a3 + 16);
  *(a1 + 301) = *(a3 + 29);
  *(a1 + 288) = v20;
  sub_80534((a1 + 312), (a3 + 40));
  *(a1 + 344) = *(a3 + 72);
  sub_323674(a1 + 352, (a3 + 80));
  v21 = *(a3 + 144);
  *(a1 + 424) = *(a3 + 152);
  *(a1 + 416) = v21;
  v50 = a8;
  cf = 0x676C6F6261706364;
  LODWORD(v48) = 0;
  sub_12794C(__p, &v50, &cf, 0, 0);
  if ((v39[0] & 1) == 0)
  {
    v23 = 0;
    LODWORD(v24) = 0;
    v25 = 0;
    goto LABEL_20;
  }

  v22 = v38;
  v38 = 0;
  *&v51 = &off_6DACD8;
  *(&v51 + 1) = v22;
  LOBYTE(v52) = 1;
  sub_8AAAC(&__p[1]);
  v23 = 0;
  LODWORD(v24) = 0;
  v25 = 0;
  if ((v52 & 1) == 0)
  {
    goto LABEL_20;
  }

  v26 = *(&v51 + 1);
  if (!*(&v51 + 1))
  {
    cf = 0;
    goto LABEL_36;
  }

  CFRetain(*(&v51 + 1));
  cf = v26;
  v27 = CFGetTypeID(v26);
  if (v27 != CFStringGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!cf)
  {
LABEL_36:
    v35 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v35, "Could not construct");
  }

  sub_125D8(__p, cf);
  if (cf)
  {
    CFRelease(cf);
  }

  v24 = sub_127A6C(__p);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  v25 = v24 & 0x100000000;
  v23 = v24 & 0xFFFFFF00;
  LODWORD(v24) = v24;
  if (v52)
  {
    sub_8AAAC(&v51);
  }

LABEL_20:
  *(a1 + 436) = BYTE4(v25);
  *(a1 + 432) = v24 | v23 | v25;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 484) = sub_323110(a1);
  *(a1 + 485) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  if (*(a7 + 24) == 1)
  {
    std::string::operator=((a1 + 512), a7);
  }

  if (*(a7 + 56) == 1)
  {
    std::string::operator=((a1 + 488), (a7 + 32));
  }

  v50 = 1886216809;
  v52 = 0;
  v51 = 0uLL;
  sub_4625C(&v51, &v50, &v51, 1uLL);
  *__p = v51;
  v38 = v52;
  strcpy(v39, "cwdv");
  v39[8] = 0;
  v40 = 3;
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v43 = 44739242;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  (*(*a1 + 512))(&cf, a1, __p);
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  sub_477A0(v42[0]);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v49)
  {
    v28 = v48;
    v29 = *(v48 + 24);
    if (v29)
    {
      v30 = std::__shared_weak_count::lock(v29);
      if (v30)
      {
        v31 = v30;
        v32 = *(v28 + 16);
        if (v32)
        {
          sub_4E890();
          v33 = sub_A82E4(v32);
          LODWORD(__p[0]) = 1768843845;
          *(__p + 4) = qword_6EA868;
          sub_73838(v33, __p, sub_3233BC, a1);
        }

        sub_1A8C0(v31);
      }
    }
  }

  sub_65310(&cf);
  return a1;
}

void sub_1269A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, caulk::concurrent::messenger **a9, uint64_t *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28)
{
  __cxa_free_exception(v31);
  sub_1DB0E0(&a28);
  if (*(v32 - 96) == 1)
  {
    sub_8AAAC((v32 - 112));
  }

  sub_2F632C(v28 + 272);
  sub_F5714(&__p);
  sub_477A0(*(v28 + 232));
  v34 = *(v28 + 216);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  sub_65310((v28 + 184));
  sub_13C480((v29 + 7));
  sub_13C544(v30);
  sub_13C4FC(a9);
  v35 = *a10;
  *a10 = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35);
  }

  v36 = *(v28 + 96);
  *(v28 + 96) = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  v37 = *v29;
  *v29 = 0;
  if (v37)
  {
    (*(*v37 + 8))(v37);
  }

  sub_13BFA8(v28);
  _Unwind_Resume(a1);
}

void sub_126BA4()
{
  v2 = *(v1 + 56);
  if (v2)
  {
    *(v0 + 152) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x126AC8);
}

uint64_t sub_126BBC(uint64_t a1)
{
  if (sub_CE3DC(a1))
  {
    v2 = sub_310254((&dword_0 + 1));
    v3 = sub_310254((&dword_0 + 2));
    v4 = sub_310254((&dword_0 + 3));
    v5 = sub_5544(17);
    if (*(v5 + 8))
    {
      v6 = *v5;
      if (*v5)
      {
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v59 = "AggregateDevice.cpp";
          v60 = 1024;
          v61 = 652;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring stream capture settings for call-like configuration", buf, 0x12u);
        }
      }
    }

    v7 = sub_5544(17);
    if (*(v7 + 8))
    {
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEBUG))
        {
          v9 = "is NOT";
          v59 = "AggregateDevice.cpp";
          *buf = 136315650;
          if (v2)
          {
            v9 = "is";
          }

          v60 = 1024;
          v61 = 654;
          v62 = 2080;
          v63 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d in-call VA stream capture %s allowed", buf, 0x1Cu);
        }
      }
    }

    v10 = 10;
    if (*(a1 + 72))
    {
      v10 = 14;
    }

    if (v2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_5544(17);
    if (*(v12 + 8))
    {
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = "is NOT";
          v59 = "AggregateDevice.cpp";
          *buf = 136315650;
          if (v3)
          {
            v14 = "is";
          }

          v60 = 1024;
          v61 = 664;
          v62 = 2080;
          v63 = v14;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d in-call HAL stream capture %s allowed", buf, 0x1Cu);
        }
      }
    }

    v15 = v11 | v3;
    v16 = sub_5544(17);
    if (*(v16 + 8))
    {
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
        {
          v18 = "is NOT";
          v59 = "AggregateDevice.cpp";
          *buf = 136315650;
          if (v4)
          {
            v18 = "is";
          }

          v60 = 1024;
          v61 = 670;
          v62 = 2080;
          v63 = v18;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d ANC capture %s allowed", buf, 0x1Cu);
        }
      }
    }

    if (v4)
    {
      v19 = v15 | 0x10;
    }

    else
    {
      v19 = v15;
    }

    goto LABEL_122;
  }

  v20 = *(a1 + 20);
  if (v20 != 1986556788 && v20 != 1987211117 && v20 != 1987208039)
  {
    if ((*a1 & 1) != 0 || *(a1 + 4) == 1986224492)
    {
      v19 = 0;
    }

    else
    {
      v39 = *(a1 + 16);
      v40 = sub_127524();
      if (v39 == 1667785079)
      {
        v41 = "EnableFlickerSensorHALMediaMonitor";
      }

      else
      {
        v41 = "EnableHALMediaMonitor";
      }

      v42 = sub_1276A4(v41);
      v43 = v42;
      if (v40)
      {
        v19 = 6;
      }

      else
      {
        v19 = 0;
      }

      if ((v42 - 1) <= 3)
      {
        v19 |= qword_519500[v42 - 1];
      }

      v44 = sub_5544(17);
      if (*(v44 + 8))
      {
        v45 = *v44;
        if (*v44)
        {
          if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            v46 = v40 ? "is" : "is NOT";
            sub_68108(&__p, (a1 + 4));
            v47 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315906;
            v59 = "AggregateDevice.cpp";
            v60 = 1024;
            v61 = 729;
            v62 = 2080;
            v63 = v46;
            v64 = 2080;
            v65[0] = v47;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d general VA media capture %s allowed for vad '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v48 = sub_5544(17);
      if (*(v48 + 8))
      {
        v49 = *v48;
        if (*v48)
        {
          if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEBUG))
          {
            v50 = v43 ? "is" : "is NOT";
            sub_68108(&__p, (a1 + 4));
            v51 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315906;
            v59 = "AggregateDevice.cpp";
            v60 = 1024;
            v61 = 731;
            v62 = 2080;
            v63 = v50;
            v64 = 2080;
            v65[0] = v51;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d general HAL media capture %s allowed for vad '%s'", buf, 0x26u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    goto LABEL_122;
  }

  if (MGGetBoolAnswer() && sub_127524())
  {
    v23 = 1;
  }

  else
  {
    CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
    *buf = 0;
    v24 = sub_1235F4(@"CaptureBorealis", @"com.apple.audio.virtualaudio", buf);
    if (v24)
    {
      v25 = *buf << 32;
    }

    else
    {
      v25 = 0;
    }

    if (v25)
    {
      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    if (v24)
    {
      v26 = *sub_5544(14);
      v27 = v26;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v28 = "Dis";
        *buf = 136316162;
        v59 = "RunTimeDefaults.mm";
        v60 = 1024;
        v61 = 1583;
        v63 = "CaptureBorealis";
        v62 = 2080;
        if (v23)
        {
          v28 = "En";
        }

        v64 = 1024;
        LODWORD(v65[0]) = HIDWORD(v25);
        WORD2(v65[0]) = 2080;
        *(v65 + 6) = v28;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling VA Borealis capture.", buf, 0x2Cu);
      }
    }
  }

  if (!MGGetBoolAnswer())
  {
    v29 = sub_1C2530();
    if (v23)
    {
      v19 = 6;
    }

    else
    {
      v19 = 0;
    }

    if (!v29)
    {
      goto LABEL_79;
    }

LABEL_65:
    if (MGGetBoolAnswer() && sub_1276A4("EnableHALMediaMonitor") >= 1)
    {
      v30 = sub_1276A4("EnableHALMediaMonitor");
    }

    else
    {
      v30 = sub_1C2530();
    }

    if ((v30 - 1) <= 3)
    {
      v19 |= qword_519500[v30 - 1];
    }

    v31 = 1;
    goto LABEL_80;
  }

  if (sub_1276A4("EnableHALMediaMonitor") >= 1)
  {
    if (v23)
    {
      v19 = 6;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_65;
  }

  v32 = sub_1C2530();
  if (v23)
  {
    v19 = 6;
  }

  else
  {
    v19 = 0;
  }

  if (v32)
  {
    goto LABEL_65;
  }

LABEL_79:
  v31 = 0;
LABEL_80:
  v33 = sub_5544(17);
  if (*(v33 + 8))
  {
    v34 = *v33;
    if (*v33)
    {
      if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
      {
        v35 = "is NOT";
        v59 = "AggregateDevice.cpp";
        *buf = 136315650;
        if (v23)
        {
          v35 = "is";
        }

        v60 = 1024;
        v61 = 701;
        v62 = 2080;
        v63 = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d VA Borealis capture %s allowed", buf, 0x1Cu);
      }
    }
  }

  v36 = sub_5544(17);
  if (*(v36 + 8))
  {
    v37 = *v36;
    if (*v36)
    {
      if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
      {
        v38 = "is NOT";
        v59 = "AggregateDevice.cpp";
        *buf = 136315650;
        if (v31)
        {
          v38 = "is";
        }

        v60 = 1024;
        v61 = 702;
        v62 = 2080;
        v63 = v38;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEBUG, "%25s:%-5d HAL Borealis capture %s allowed", buf, 0x1Cu);
      }
    }
  }

LABEL_122:
  if (*(a1 + 16) == 1667329133)
  {
    v19 |= 7uLL;
    v52 = sub_5544(17);
    if (*(v52 + 8))
    {
      v53 = *v52;
      if (*v52)
      {
        if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v59 = "AggregateDevice.cpp";
          v60 = 1024;
          v61 = 740;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alarm VA media capture is allowed", buf, 0x12u);
        }
      }
    }

    v54 = sub_5544(17);
    if (*(v54 + 8))
    {
      v55 = *v54;
      if (*v54)
      {
        if (os_log_type_enabled(*v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v59 = "AggregateDevice.cpp";
          v60 = 1024;
          v61 = 741;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Alarm HAL media capture is allowed", buf, 0x12u);
        }
      }
    }
  }

  return v19;
}

BOOL sub_127524()
{
  CFPreferencesAppSynchronize(@"com.apple.audio.virtualaudio");
  v8 = 0;
  v0 = sub_1235F4(@"CaptureIOData", @"com.apple.audio.virtualaudio", &v8);
  v1 = v8;
  if (v0)
  {
    v2 = v8;
  }

  else
  {
    v2 = 0;
  }

  if (!v0)
  {
    return (caulk::build::detail::get_kind(v0) & 1) != 0 && MGGetSInt32Answer() == 7;
  }

  v3 = v8 != 0;
  v4 = *sub_5544(14);
  v5 = v4;
  if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "Dis";
    v8 = 136316162;
    v9 = "RunTimeDefaults.mm";
    v11 = 1568;
    v13 = "CaptureIOData";
    v10 = 1024;
    v12 = 2080;
    if (v1)
    {
      v6 = "En";
    }

    v14 = 1024;
    v15 = v2;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling VA IO capture.", &v8, 0x2Cu);
  }

  return v3;
}

uint64_t sub_1276A4(const char *a1)
{
  CFPreferencesAppSynchronize(@"com.apple.coreaudio");
  v2 = strlen(a1);
  if (a1)
  {
    v3 = CFStringCreateWithBytes(0, a1, v2, 0x8000100u, 0);
    *cf = v3;
    if (!v3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v3 = 0;
    *cf = 0;
  }

  v14 = 0;
  v5 = sub_1235F4(v3, @"com.apple.coreaudio", &v14);
  v6 = v5;
  v7 = v14;
  if (v5)
  {
    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  v9 = *cf;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v6)
  {
    v10 = *sub_5544(14);
    v11 = v10;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "En";
      *cf = 136316162;
      *&cf[4] = "RunTimeDefaults.mm";
      v16 = 1024;
      v17 = 1621;
      if (!v7)
      {
        v12 = "Dis";
      }

      v18 = 2080;
      v19 = a1;
      v20 = 1024;
      v21 = v8;
      v22 = 2080;
      v23 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Defaults key %s was defined to %d. %sabling HAL IO capture.", cf, 0x2Cu);
    }
  }

  else if (caulk::build::detail::get_kind(v9))
  {
    if (MGGetSInt32Answer() == 7)
    {
      return 2;
    }

    else
    {
      return v8;
    }
  }

  return v8;
}

void sub_12788C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_20B45C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1278D8()
{
  if ((atomic_load_explicit(&qword_6E84E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E84E8))
  {
    byte_6E84E2 = sub_289BF0();
    __cxa_guard_release(&qword_6E84E8);
  }

  return byte_6E84E2;
}

uint64_t sub_12794C(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_543D0(*a2, inAddress, a4, a5);
    ioDataSize = result;
    if (result)
    {
      outData = 0;
      result = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, &outData);
      *a1 = result;
      if (!result)
      {
        v11 = outData;
        v12[0] = &off_6DACD8;
        v12[1] = 0;
        *(a1 + 8) = &off_6DACD8;
        *(a1 + 16) = v11;
        *(a1 + 24) = 1;
        return sub_8AAAC(v12);
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

uint64_t sub_127A6C(const void **a1)
{
  inAddress.mSelector = 1;
  __p.__r_.__value_.__r.__words[0] = 0x676C6F62636C6B23;
  LODWORD(__p.__r_.__value_.__r.__words[1]) = 0;
  sub_127F10(buf, &inAddress.mSelector, &__p, 0, 0);
  if (buf[32])
  {
    v3 = *&buf[8];
    v4 = *&buf[16];
    v5 = sub_5544(17);
    v1 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_128174(&__p, v3, v4);
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "AggregateDeviceUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 294;
      *&buf[18] = 2080;
      *&buf[20] = v6;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Clock IDs: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v7 = v3;
    if (v3 != v4)
    {
      LODWORD(v1) = 1024;
      v7 = v3;
      while (1)
      {
        v8 = *v7;
        inAddress.mElement = 0;
        v29 = v8;
        *&inAddress.mSelector = 0x676C6F6263756964;
        sub_12794C(buf, &v29, &inAddress, 0, 0);
        if ((buf[24] & 1) == 0)
        {
          goto LABEL_35;
        }

        v9 = *&buf[16];
        *&buf[16] = 0;
        __p.__r_.__value_.__r.__words[0] = &off_6DACD8;
        __p.__r_.__value_.__l.__size_ = v9;
        __p.__r_.__value_.__s.__data_[16] = 1;
        sub_8AAAC(&buf[8]);
        if ((__p.__r_.__value_.__s.__data_[16] & 1) == 0)
        {
          goto LABEL_35;
        }

        v10 = sub_5544(17);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v7;
          *buf = 136315906;
          *&buf[4] = "AggregateDeviceUtilities.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 301;
          *&buf[18] = 1024;
          *&buf[20] = v12;
          *&buf[24] = 2112;
          *&buf[26] = __p.__r_.__value_.__l.__size_;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d \tClock UID   %d : %@", buf, 0x22u);
        }

        sub_48540(buf, __p.__r_.__value_.__l.__size_);
        v13 = buf[23];
        if (buf[23] >= 0)
        {
          v14 = buf[23];
        }

        else
        {
          v14 = *&buf[8];
        }

        v15 = *(a1 + 23);
        v16 = v15;
        if (v15 < 0)
        {
          v15 = a1[1];
        }

        if (v14 != v15)
        {
          break;
        }

        if (buf[23] >= 0)
        {
          v17 = buf;
        }

        else
        {
          v17 = *buf;
        }

        if (v16 >= 0)
        {
          v18 = a1;
        }

        else
        {
          v18 = *a1;
        }

        v19 = memcmp(v17, v18, v14) == 0;
        if (v13 < 0)
        {
          goto LABEL_31;
        }

LABEL_32:
        if (__p.__r_.__value_.__s.__data_[16])
        {
          sub_8AAAC(&__p);
        }

        if (v19)
        {
          goto LABEL_41;
        }

LABEL_35:
        if (++v7 == v4)
        {
          goto LABEL_44;
        }
      }

      v19 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

LABEL_31:
      operator delete(*buf);
      goto LABEL_32;
    }

LABEL_41:
    if (v7 != v4)
    {
      LODWORD(v22) = *v7;
      LODWORD(v1) = *v7 >> 8;
      v23 = 1;
      if (!v3)
      {
        return v22 | ((v1 & 0xFFFFFF) << 8) | (v23 << 32);
      }

      goto LABEL_53;
    }

LABEL_44:
    v24 = sub_5544(17);
    v22 = *v24;
    if (*v24)
    {
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 23) >= 0)
        {
          v25 = a1;
        }

        else
        {
          v25 = *a1;
        }

        *buf = 136315650;
        *&buf[4] = "AggregateDeviceUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 313;
        *&buf[18] = 2080;
        *&buf[20] = v25;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No clock with UID %s found!", buf, 0x1Cu);
      }

      v23 = 0;
      LOBYTE(v22) = 0;
    }

    else
    {
      v23 = 0;
    }

    if (v3)
    {
LABEL_53:
      operator delete(v3);
    }
  }

  else
  {
    v20 = sub_5544(17);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDeviceUtilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 290;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No clock devices in the system ?", buf, 0x12u);
    }

    LOBYTE(v22) = 0;
    v23 = 0;
  }

  return v22 | ((v1 & 0xFFFFFF) << 8) | (v23 << 32);
}

void sub_127EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_127F10(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress, UInt32 a4, const void *a5)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    v15 = 2003329396;
    LOBYTE(__p[0]) = 0;
    v18 = 0;
    v10 = sub_543D0(*a2, inAddress, a4, a5);
    ioDataSize = v10;
    if (v10)
    {
      sub_128080(outData, v10 >> 2);
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, a4, a5, &ioDataSize, outData[0]);
      v15 = PropertyData;
      if (PropertyData)
      {
        *a1 = PropertyData;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
      }

      else
      {
        sub_1280F8(__p, outData);
        v12 = v18;
        *a1 = v15;
        *(a1 + 8) = 0;
        *(a1 + 32) = 0;
        if (v12)
        {
          *(a1 + 8) = *__p;
          *(a1 + 24) = v17;
          __p[1] = 0;
          v17 = 0;
          __p[0] = 0;
          *(a1 + 32) = 1;
        }
      }

      if (outData[0])
      {
        outData[1] = outData[0];
        operator delete(outData[0]);
        if (v18)
        {
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 8) = 0;
      *(a1 + 32) = 1;
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 32) = 0;
  }
}

void *sub_128080(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_469FC(result, a2);
  }

  return result;
}

void sub_1280DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1280F8(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_16B928(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_46980(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

std::string *sub_128174(std::string *a1, unsigned int *a2, unsigned int *a3)
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

void sub_128250(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_128274(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x12825CLL);
}

uint64_t sub_12828C(uint64_t a1)
{
  if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
  {
    operator delete(*(a1 + 320));
  }

  if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  sub_477A0(*(a1 + 272));
  v2 = *(a1 + 256);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_65310((a1 + 224));
  if (*(a1 + 200) == 1)
  {
    v3 = *(a1 + 192);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 176);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v6 = (a1 + 40);
  sub_F5714(&v6);
  sub_128368((a1 + 16));
  return a1;
}

void sub_128368(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_65310(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1283DC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_5544(17);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = "input";
    *buf = 136315650;
    *&buf[4] = "AggregateDevice_Common.cpp";
    if (a2)
    {
      v10 = "output";
    }

    *&buf[12] = 1024;
    *&buf[14] = 93;
    v57 = 2080;
    *v58 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Building StreamUsageMask for %s.", buf, 0x1Cu);
  }

  v11 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  LOBYTE(v53[0]) = a2;
  v53[1] = a3;
  v12 = a2;
  v49 = a2;
  while (1)
  {
    v54 = v11;
    sub_119590(buf, v53);
    v13 = *&buf[8];
    if (!*&buf[8])
    {
      break;
    }

    v14 = std::__shared_weak_count::lock(*&buf[8]);
    if (!v14)
    {
      goto LABEL_58;
    }

    v15 = v14;
    v16 = *buf;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *buf = 0;
    *&buf[8] = 0;
    std::__shared_weak_count::__release_weak(v13);
    sub_1A8C0(v15);
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      v13 = v15;
LABEL_58:
      std::__shared_weak_count::__release_weak(v13);
      break;
    }

    sub_1A8C0(v17);
    std::__shared_weak_count::__release_weak(v15);
    if (!v16)
    {
      break;
    }

    sub_119590(buf, v53);
    sub_5659C(&v51, buf, "", 98);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_weak(*&buf[8]);
    }

    v18 = v51;
    if (!(*(*v51 + 88))(v51, v12))
    {
      v38 = sub_5544(17);
      v39 = *v38;
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
      {
        v40 = (*(*v18 + 120))(v18);
        (*(*v18 + 128))(&__p, v18);
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "AggregateDevice_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 114;
        v57 = 1024;
        *v58 = v40;
        *&v58[4] = 2080;
        *&v58[6] = p_p;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d Bypassing PhysicalDevice ID %u (uid %s).", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_54;
    }

    v19 = a4;
    if (a4[1] == a4)
    {
      goto LABEL_41;
    }

    v20 = v52;
    v19 = a4[1];
    do
    {
      v21 = v19[3];
      if (!v21)
      {
        v23 = 0;
LABEL_21:
        v24 = 0;
        if (!v20)
        {
          goto LABEL_23;
        }

LABEL_22:
        atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_23;
      }

      v22 = std::__shared_weak_count::lock(v21);
      v23 = v22;
      if (!v22)
      {
        goto LABEL_21;
      }

      v24 = v19[2];
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v22);
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_23:
      if (v23)
      {
        v25 = std::__shared_weak_count::lock(v23);
        if (!v25)
        {
          v24 = 0;
        }

        if (!v20)
        {
LABEL_32:
          v27 = v24 == 0;
          if (!v25)
          {
            goto LABEL_34;
          }

LABEL_33:
          sub_1A8C0(v25);
          goto LABEL_34;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        if (!v20)
        {
          goto LABEL_32;
        }
      }

      v26 = std::__shared_weak_count::lock(v20);
      if (!v26)
      {
        goto LABEL_32;
      }

      v27 = v24 == v18;
      sub_1A8C0(v26);
      if (v25)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (v20)
      {
        std::__shared_weak_count::__release_weak(v20);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_weak(v23);
      }

      if (v27)
      {
        goto LABEL_41;
      }

      v19 = v19[1];
    }

    while (v19 != a4);
    v19 = a4;
LABEL_41:
    v28 = *(a1 + 8);
    buf[0] = v19 != a4;
    sub_118D68(a1, v28, 1uLL, buf);
    v29 = *(a1 + 8);
    v12 = v49;
    v30 = (*(*v18 + 88))(v18, v49);
    buf[0] = 0;
    sub_118D68(a1, v29, (v30 - 1), buf);
    v31 = sub_5544(17);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
    {
      v33 = (*(*v18 + 120))(v18);
      (*(*v18 + 128))(&__p, v18);
      v34 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v35 = __p.__r_.__value_.__r.__words[0];
      v36 = (*(*v18 + 96))(v18, v49, 0);
      *buf = 136316162;
      v37 = &__p;
      if (v34 < 0)
      {
        v37 = v35;
      }

      *&buf[4] = "AggregateDevice_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 109;
      v57 = 1024;
      *v58 = v33;
      *&v58[4] = 2080;
      *&v58[6] = v37;
      *&v58[14] = 2048;
      *&v58[16] = v36;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding element for PhysicalDevice ID %u (uid %s), (first) stream %p.", buf, 0x2Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = v49;
    }

LABEL_54:
    if (v52)
    {
      sub_1A8C0(v52);
    }

    ++v11;
  }

  v42 = sub_5544(17);
  v43 = *v42;
  if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEBUG))
  {
    if (v49)
    {
      v44 = "output";
    }

    else
    {
      v44 = "input";
    }

    sub_53E8(v53, v44);
    v45 = v55;
    v46 = v53[0];
    sub_36FFE4(&__p, *a1, *(a1 + 8));
    v47 = v53;
    if (v45 < 0)
    {
      v47 = v46;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &__p;
    }

    else
    {
      v48 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = "AggregateDevice_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 118;
    v57 = 2080;
    *v58 = v47;
    *&v58[8] = 2080;
    *&v58[10] = v48;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d Built StreamUsageMask for %s: %s.", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v55 < 0)
    {
      operator delete(v53[0]);
    }
  }
}

void sub_128A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_128B2C(void *a1, uint64_t *a2, int a3)
{
  if (a3 == 1)
  {
    v5 = a2[2];
LABEL_9:

    sub_65234(a1, v5);
    return;
  }

  if ((a3 & 0xFFFFFFFE) == 2)
  {
    sub_5659C(v16, a2, "", 183);
    v6 = (*(**v16 + 312))(*v16);
    if (*&v16[8])
    {
      sub_1A8C0(*&v16[8]);
    }

    if ((v6 & 0x100000000) == 0)
    {
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136315394;
        *&v16[4] = "AggregateDevice_Simple.cpp";
        *&v16[12] = 1024;
        *&v16[14] = 184;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v16, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v7 = a2[2];
    if (0xAAAAAAAAAAAAAAABLL * ((a2[3] - v7) >> 3) <= v6)
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136315394;
        *&v16[4] = "AggregateDevice_Simple.cpp";
        *&v16[12] = 1024;
        *&v16[14] = 185;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v16, 0x12u);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v15, "Precondition failure.");
    }

    v5 = v7 + 24 * v6;
    goto LABEL_9;
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *v16 = 136315394;
    *&v16[4] = "AggregateDevice_Simple.cpp";
    *&v16[12] = 1024;
    *&v16[14] = 190;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unsupported speaker input", v16, 0x12u);
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
}

void sub_128F10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_128F2C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_469FC(a1, a2);
}

void sub_12901C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_129038(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1290A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1290BC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int *a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  sub_1261C0(a1);
  v23 = 0;
  if (a2)
  {
    sub_1222C0(a1, *(a5 + 20), a6, 0, 0, a2, a4, *(a5 + 136));
  }

  v22 = 0;
  if (a3)
  {
    v14 = *(a5 + 24);
    if ((v14 & 0x100000000) != 0)
    {
      v15 = *(a5 + 24);
    }

    else
    {
      v15 = *(a5 + 20);
    }

    if ((v14 & 0x100000000) != 0)
    {
      v16 = a7;
    }

    else
    {
      v16 = a6;
    }

    if (*(a7 + 16))
    {
      v17 = v16;
    }

    else
    {
      v17 = a6;
    }

    v20 = *v17;
    sub_1222C0(a1, v15, &v20, 1, 0, a3, a4, 0);
  }

  v20 = 0uLL;
  v21 = 0;
  memset(v19, 0, sizeof(v19));
  sub_149978(a1, &v20, v19);
  v24 = v19;
  sub_F5714(&v24);
  v19[0] = &v20;
  sub_F5714(v19);
  return (*(*a1 + 632))(a1);
}

void sub_1292EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v8 = va_arg(va1, void **);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, std::__shared_weak_count *);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  sub_1A8C0(v5);
  va_copy(v8, va1);
  sub_F5714(va);
  if (v4)
  {
    if (v13)
    {
      sub_1A8C0(v13);
    }
  }

  sub_35AD0C(va2);
  sub_35AD0C((v6 - 80));
  _Unwind_Resume(a1);
}

void *sub_129378(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
    }

    a1[7] = 0;
  }

  sub_12500C(a1);
  return a1;
}

void sub_1293F0(std::mutex *a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, _OWORD *a4@<X8>)
{
  sub_4DFC0(a1);
  v8 = 272;
  if (a2)
  {
    v8 = 296;
  }

  v9 = (&a1->__m_.__sig + v8);
  if (a3 >= ((v9[1] - *v9) >> 4))
  {
    v19 = a3;
    v11 = sub_5544(14);
    v12 = sub_468EC(1, *v11, *(v11 + 8));
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        if (a2)
        {
          v15 = "output";
        }

        else
        {
          v15 = "input";
        }

        sub_53E8(__p, v15);
        v16 = __p[0];
        if (v21 >= 0)
        {
          v16 = __p;
        }

        v17 = (v9[1] - *v9) >> 4;
        *buf = 136316162;
        v23 = "Device_HAL_Common.mm";
        v24 = 1024;
        v25 = 366;
        v26 = 1024;
        v27 = v19;
        v28 = 2080;
        v29 = v16;
        v30 = 2048;
        v31 = v17;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::range_error): Requested index %u, but %s stream has only %lu streams.", buf, 0x2Cu);
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_36E9A8(exception, "Requested index %u, but %s stream has only %lu streams.");
  }

  v10 = *(*v9 + 16 * a3);
  *a4 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 16), 1uLL, memory_order_relaxed);
  }
}

void *sub_129608(void *result, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  v5 = 16;
  if (a2)
  {
    v5 = 40;
  }

  v7 = a4 + v5;
  v6 = *(a4 + v5);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - v6) >> 3) <= a3)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "StreamUtilities.cpp";
      v26 = 1024;
      v27 = 41;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): invalid stream index", &v24, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "invalid stream index");
  }

  v8 = v6 + 24 * a3;
  v9 = *(v8 + 8);
  if (v8 != v9)
  {
    v10 = a5 + 16;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = (a5 + 24);
    while (1)
    {
      v14 = *v13;
      if (v10 == *v13)
      {
        break;
      }

      if (v11 && (v15 = std::__shared_weak_count::lock(v11)) != 0)
      {
        v16 = v15;
        if (v12)
        {
          v17 = v14 + 16;
          if (!sub_10A9EC(v12, (v14 + 16)))
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }

        sub_1A8C0(v16);
      }

      else
      {
        v17 = 0;
      }

      v13 = (v14 + 8);
      if (v17)
      {
        operator new();
      }
    }

    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "StreamUtilities.cpp";
      v26 = 1024;
      v27 = 61;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [matchingConnection is NULL]: could not find matching connection", &v24, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v20, "could not find matching connection");
  }

  return result;
}

std::string *sub_129944(std::string *a1, uint64_t a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ DSPChainConfig:", 0x11uLL);
  v4 = *(a2 + 47);
  if (v4 >= 0)
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 24);
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 47);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  std::string::append(a1, v5, v6);
  std::string::append(a1, "; Device Type:", 0xEuLL);
  sub_22170(&__p, *(a2 + 48));
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

  std::string::append(a1, "; Should Cache:", 0xFuLL);
  if (*(a2 + 52))
  {
    v9 = "true";
  }

  else
  {
    v9 = "false";
  }

  if (*(a2 + 52))
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  std::string::append(a1, v9, v10);
  v11 = *a2;
  v32 = *(a2 + 8);
  if (*a2 != v32)
  {
    do
    {
      v12 = *v11;
      v13 = v11[1];
      v33 = v11;
      while (v12 != v13)
      {
        sub_12505C(&v38, *v12);
        v14 = v39;
        sub_53E8(&v36, " [ DSPBlockConfig: ");
        if (v14 != &v38)
        {
          v15 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
          do
          {
            if ((v15 & 0x80u) != 0)
            {
              v15 = v36.__r_.__value_.__l.__size_;
            }

            sub_B0848(&__p, v15 + 1);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v16 = &__p;
            }

            else
            {
              v16 = __p.__r_.__value_.__r.__words[0];
            }

            if (v15)
            {
              if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v17 = &v36;
              }

              else
              {
                v17 = v36.__r_.__value_.__r.__words[0];
              }

              memmove(v16, v17, v15);
            }

            *(&v16->__r_.__value_.__l.__data_ + v15) = 44;
            v18 = *(v14 + 39);
            if (v18 >= 0)
            {
              v19 = (v14 + 2);
            }

            else
            {
              v19 = v14[2];
            }

            if (v18 >= 0)
            {
              v20 = *(v14 + 39);
            }

            else
            {
              v20 = v14[3];
            }

            v21 = std::string::append(&__p, v19, v20);
            v22 = v21->__r_.__value_.__r.__words[0];
            v42[0] = v21->__r_.__value_.__l.__size_;
            *(v42 + 7) = *(&v21->__r_.__value_.__r.__words[1] + 7);
            v15 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
            v21->__r_.__value_.__r.__words[0] = 0;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v36.__r_.__value_.__l.__data_);
            }

            v36.__r_.__value_.__r.__words[0] = v22;
            v36.__r_.__value_.__l.__size_ = v42[0];
            *(&v36.__r_.__value_.__r.__words[1] + 7) = *(v42 + 7);
            *(&v36.__r_.__value_.__s + 23) = v15;
            v14 = v14[1];
          }

          while (v14 != &v38);
        }

        v37 = v36;
        memset(&v36, 0, sizeof(v36));
        v23 = std::string::append(&v37, " ]", 2uLL);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v35 = v23->__r_.__value_.__r.__words[2];
        *v34 = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v36.__r_.__value_.__l.__data_);
        }

        if (v40)
        {
          v25 = v39;
          v26 = *(v38 + 8);
          v27 = *v39;
          *(v27 + 8) = v26;
          *v26 = v27;
          v40 = 0;
          while (v25 != &v38)
          {
            v28 = v25[1];
            sub_D16F0(v25);
            v25 = v28;
          }
        }

        if (v35 >= 0)
        {
          v29 = v34;
        }

        else
        {
          v29 = v34[0];
        }

        if (v35 >= 0)
        {
          v30 = HIBYTE(v35);
        }

        else
        {
          v30 = v34[1];
        }

        std::string::append(a1, v29, v30);
        if (SHIBYTE(v35) < 0)
        {
          operator delete(v34[0]);
        }

        ++v12;
      }

      v11 = v33 + 3;
    }

    while (v33 + 3 != v32);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_129CBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (*(v38 + 23) < 0)
  {
    operator delete(*v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_129D78(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 88);
  return std::ostream::operator<<();
}

uint64_t sub_129D90(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_80330(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_EF5E8(a1, *(i + 4));
  }

  return a1;
}

void sub_129E08(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_129D90(__p, a2);
  v3 = *(v2 + 64);
  if (*(v3 + 23) < 0)
  {
    v3[1] = 3;
    v3 = *v3;
  }

  else
  {
    *(v3 + 23) = 3;
  }

  *v3 = 7364973;
  sub_EF820(__p[2]);
  v4 = __p[0];
  __p[0] = 0;
  if (v4)
  {
    operator delete(v4);
  }
}

uint64_t sub_129E80(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4[0] = a1;
  v4[1] = a1;
  v4[2] = a1;
  v4[3] = a1;
  v4[4] = a1;
  v4[5] = a1;
  v4[6] = a1;
  v4[7] = a1;
  v4[8] = a1;
  v4[9] = a1;
  v4[10] = a1;
  v4[11] = a1;
  v2 = *(a2 + 40);
  if (v2 == -1)
  {
    sub_20B4EC();
  }

  v5 = v4;
  return (off_6B8DB8[v2])(&v5);
}

void sub_129EF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_129F14(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v5[0] = a1;
  v5[1] = a3;
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a1;
  v5[7] = a3;
  v5[8] = a2;
  v3 = *(a2 + 40);
  if (v3 == -1)
  {
    sub_20B4EC();
  }

  v6 = v5;
  return (off_6B8E10[v3])(&v6);
}

void sub_129F9C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_129D90(&v13, a2);
  v4 = *v2;
  v3 = *(v2 + 8);
  if (*(v3 + 23) < 0)
  {
    sub_54A0(__p, *v3, *(v3 + 1));
  }

  else
  {
    v5 = *v3;
    v16 = *(v3 + 2);
    *__p = v5;
  }

  sub_1250D4(&v17, v14, __p);
  v6 = v19;
  if (v19)
  {
    v8 = v17;
    v7 = v18;
    v9 = *(v17 + 8);
    v10 = *v18;
    *(v10 + 8) = v9;
    *v9 = v10;
    v11 = *v4;
    *(v11 + 8) = v7;
    *v7 = v11;
    *v4 = v8;
    *(v8 + 8) = v4;
    v4[2] += v6;
    v19 = 0;
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  sub_EF820(v14);
  v12 = v13;
  v13 = 0;
  if (v12)
  {
    operator delete(v12);
  }
}

void **sub_12A09C(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_12A0BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_22564((*(v2 + 112) + 16), "std::function<VariantMap()>", 27);
  if (v3)
  {

    sub_1A8C0(v3);
  }
}

void sub_12A12C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_12A144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    sub_1A8C0(v2);
  }
}

void **sub_12A154(void **result, CFTypeRef *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*a2)
  {
    result = CFRetain(*a2);
  }

  *v2 = v3;
  return result;
}

void sub_12A18C(uint64_t *a1, CFTypeRef *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v3 = *a1;
  CFRetain(*a2);
  v4 = *(v3 + 104);
  sub_125D8(__p, v2);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  sub_22564((v4 + 16), v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  CFRelease(v2);
}

void sub_12A25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_free_exception(v15);
  sub_452F0(&a9);
  _Unwind_Resume(a1);
}

void sub_12A2A0(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

uint64_t sub_12A2C4(uint64_t a1)
{
  sub_EF820(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_12A318(uint64_t **a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = **a1;
  return std::ostream::operator<<();
}

void **sub_12A32C(void **result, void *a2)
{
  v2 = *result;
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_12A364(uint64_t a1)
{
  v1 = *(*a1 + 48);
  v2 = *(*a1 + 56);
  sub_1257B8(&__p, *(*a1 + 64));
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::insert(&__p, 0, v4, v5);
  v7 = v6->__r_.__value_.__r.__words[0];
  v10[0] = v6->__r_.__value_.__l.__size_;
  *(v10 + 7) = *(&v6->__r_.__value_.__r.__words[1] + 7);
  v8 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_12A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_12A4A0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_12AFB0(&v9, a2);
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  if (*(v3 + 23) < 0)
  {
    sub_54A0(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v5 = *v3;
    v11 = *(v3 + 2);
    *__dst = v5;
  }

  v12[0] = v12;
  v12[1] = v12;
  v12[2] = 0;
  if (v11 >= 0)
  {
    v6 = HIBYTE(v11);
  }

  else
  {
    v6 = __dst[1];
  }

  v7 = &v13;
  sub_B0848(&v13, v6 + 1);
  if (v14 < 0)
  {
    v7 = v13;
  }

  if (v6)
  {
    if (v11 >= 0)
    {
      v8 = __dst;
    }

    else
    {
      v8 = __dst[0];
    }

    memmove(v7, v8, v6);
  }

  *(v7 + v6) = 123;
  operator new();
}

void sub_12A888(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  v4 = *(a2 + 8);
  if (v4)
  {

    sub_1A8C0(v4);
  }
}

uint64_t *sub_12A8D8(uint64_t a1, unsigned int a2)
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

uint64_t sub_12A9BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 40) = -1;
  sub_EF868(a1);
  v4 = *(a2 + 40);
  if (v4 != -1)
  {
    v6 = a1;
    (off_6B8EC0[v4])(&v6, a2);
    *(a1 + 40) = v4;
  }

  return a1;
}

uint64_t sub_12AA54(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 56);
  return std::ostream::operator<<();
}

void sub_12AA74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v2 + 80);
  if (*(v5 + 23) < 0)
  {
    v5[1] = 4;
    v5 = *v5;
  }

  else
  {
    *(v5 + 23) = 4;
  }

  strcpy(v5, "pair");
  if (v4)
  {
    sub_1A8C0(v4);
  }

  if (v3)
  {

    sub_1A8C0(v3);
  }
}

void sub_12AB1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a2[1];
  v11 = *a2;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[3];
  v12 = a2[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (*(v5 + 23) < 0)
  {
    sub_54A0(__dst, *v5, *(v5 + 1));
  }

  else
  {
    v7 = *v5;
    v14 = *(v5 + 2);
    *__dst = v7;
  }

  v15[0] = v15;
  v15[1] = v15;
  v15[2] = 0;
  if (v14 >= 0)
  {
    v8 = HIBYTE(v14);
  }

  else
  {
    v8 = __dst[1];
  }

  v9 = &v16;
  sub_B0848(&v16, v8 + 7);
  if (v17 < 0)
  {
    v9 = v16;
  }

  if (v8)
  {
    if (v14 >= 0)
    {
      v10 = __dst;
    }

    else
    {
      v10 = __dst[0];
    }

    memmove(v9, v10, v8);
  }

  strcpy(v9 + v8, "PAIR: {");
  operator new();
}

void *sub_12AFB0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_12A818();
  }

  return result;
}

void sub_12B01C(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_6BFEC0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_49BE8((a1 + 6));
  a1[42] = 0;
  a1[43] = 0;
  a1[44] = 0;
  sub_123B00();
}

void sub_12B3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, void **a12)
{
  sub_477A0(*v14);
  sub_914D8(v12 + 592);
  sub_914D8(v13);
  a12 = (v12 + 424);
  sub_13BD24(&a12);
  a12 = (v12 + 400);
  sub_13BD24(&a12);
  v16 = *(v12 + 384);
  if (v16)
  {
    sub_1A8C0(v16);
  }

  v17 = *(v12 + 368);
  if (v17)
  {
    sub_1A8C0(v17);
  }

  a12 = (v12 + 336);
  sub_F5714(&a12);
  sub_13AB3C(v12 + 48);
  a12 = a11;
  sub_13BD24(&a12);
  v18 = *(v12 + 16);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  _Unwind_Resume(a1);
}

void sub_12B604(void *a1, uint64_t a2, void *a3, unsigned int *a4, int *a5, _DWORD *a6, char a7, int a8)
{
  v364 = a4;
  v8 = *a2;
  if (*a2 == *(a2 + 8))
  {
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  v368 = a1;
  v9 = *v8;
  if (!*v8 || (a7 & 1) == 0 && (v15 = sub_DD858(), v16 = sub_1192CC(v15), v9 = **a2, v16 != 3) && (*v9 == *(v9 + 8) ? (v17 = *a6 == 1668703084) : (v17 = 0), v17 ? (v18 = *a5 == 1919776355) : (v18 = 0), v18))
  {
    v21 = v368;
    *v368 = 0;
    v21[1] = 0;
    return;
  }

  v358 = a5;
  v19 = *sub_5544(25);
  v380 = v9;
  if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    sub_129944(v425, v9);
    if (v425[23] >= 0)
    {
      v20 = v425;
    }

    else
    {
      v20 = *v425;
    }

    *v433 = 136315650;
    *&v433[4] = "RouteUtilities.cpp";
    *&v433[12] = 1024;
    *&v433[14] = 444;
    *&v433[18] = 2080;
    *&v433[20] = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPChainConfig: %s", v433, 0x1Cu);
    if ((v425[23] & 0x80000000) != 0)
    {
      operator delete(*v425);
    }

    v9 = v380;
  }

  if (*(v9 + 47) < 0)
  {
    v22 = *(v9 + 32);
    if (v22)
    {
      sub_54A0(&v389, *(v9 + 24), v22);
LABEL_28:
      v9 = v380;
      goto LABEL_29;
    }

LABEL_27:
    sub_16AAB0(&v389, a3);
    goto LABEL_28;
  }

  if (!*(v9 + 47))
  {
    goto LABEL_27;
  }

  v389 = *(v9 + 24);
LABEL_29:
  v23 = sub_DD858();
  v24 = 1;
  if (sub_1192CC(v23) != 3 && *a6 != 1668703084 && *v358 != 1919776355)
  {
    v25 = *(v9 + 8);
    if (*v9 == v25 || (v26 = sub_229BB8(*v9, v25), (v27 = sub_130F70(v26, 1685090932)) == 0))
    {
      v24 = 0;
    }

    else
    {
      v28 = v27[3];
      if (v28[10] != 1)
      {
        v348 = sub_5544(14);
        v349 = *v348;
        if (*v348 && os_log_type_enabled(*v348, OS_LOG_TYPE_ERROR))
        {
          *v433 = 136315394;
          *&v433[4] = "DSPChainUtilities.cpp";
          *&v433[12] = 1024;
          *&v433[14] = 164;
          _os_log_impl(&dword_0, v349, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v433, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Precondition failure.");
      }

      v24 = *v28 == 1685287015;
    }
  }

  v29 = sub_5544(25);
  v30 = *v29;
  if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = &v389;
    if ((v389.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v31 = v389.__r_.__value_.__r.__words[0];
    }

    *v433 = 136315906;
    *&v433[4] = "RouteUtilities.cpp";
    *&v433[12] = 1024;
    *&v433[14] = 453;
    *&v433[18] = 2080;
    *&v433[20] = v31;
    *&v433[28] = 1024;
    *&v433[30] = v24;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d dspchain name is %s, graph-based: %d", v433, 0x22u);
  }

  v32 = *(v9 + 48);
  v372 = a3;
  if (!v24)
  {
    sub_1696DC(v368, &v389, v32, a2, a8);
  }

  if (a8)
  {
    sub_1696DC(v368, &v389, v32, a2, 1);
  }

  v33 = sub_5544(25);
  v34 = *v33;
  if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_DEFAULT))
  {
    v35 = SHIBYTE(v389.__r_.__value_.__r.__words[2]);
    v36 = v389.__r_.__value_.__r.__words[0];
    sub_22170(v425, v32);
    v37 = &v389;
    if (v35 < 0)
    {
      v37 = v36;
    }

    if (v425[23] >= 0)
    {
      v38 = v425;
    }

    else
    {
      v38 = *v425;
    }

    *v433 = 136315906;
    *&v433[4] = "DSPGraphChain.cpp";
    *&v433[12] = 1024;
    *&v433[14] = 29;
    *&v433[18] = 2080;
    *&v433[20] = v37;
    *&v433[28] = 2080;
    *&v433[30] = v38;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Creating DSP Graph Chain %s, chain type: %s", v433, 0x26u);
    if ((v425[23] & 0x80000000) != 0)
    {
      operator delete(*v425);
    }
  }

  if (v32 > 1684434035)
  {
    if (v32 != 1936749172)
    {
      if (v32 != 1869375603)
      {
        if (v32 == 1684434036)
        {
          operator new();
        }

        goto LABEL_64;
      }

LABEL_63:
      operator new();
    }

    goto LABEL_62;
  }

  if (v32 == 1668049011)
  {
    goto LABEL_63;
  }

  if (v32 == 1668051824)
  {
LABEL_62:
    operator new();
  }

LABEL_64:
  v39 = sub_5544(25);
  v40 = *v39;
  v41 = 0uLL;
  if (*v39)
  {
    if (os_log_type_enabled(*v39, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v425, v32);
      v42 = v425[23] >= 0 ? v425 : *v425;
      *v433 = 136315650;
      *&v433[4] = "DSPGraphChain.cpp";
      *&v433[12] = 1024;
      *&v433[14] = 52;
      *&v433[18] = 2080;
      *&v433[20] = v42;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unsupported DSP Chain Type: %s", v433, 0x1Cu);
      if ((v425[23] & 0x80000000) != 0)
      {
        operator delete(*v425);
      }
    }

    v43 = v380;
    v41 = 0uLL;
  }

  else
  {
    v43 = v380;
  }

  *v368 = v41;
  sub_E933C();
  LOBYTE(v386[0]) = 0;
  v388 = 0;
  v45 = *v43;
  v365 = *(v43 + 8);
  if (v45 == v365)
  {
    v367 = 0;
    v374 = 0;
    v316 = v368;
    if (*v368)
    {
      goto LABEL_719;
    }

    goto LABEL_744;
  }

  v374 = 0;
  v377 = 0;
  v378 = 0;
  v360 = 0;
  v367 = 0;
  v371 = &v435;
  v355 = v436;
  v356 = &v433[32];
  v353 = &v442;
  v354 = &v439;
  v351 = v446;
  v352 = v445;
  *&v44 = 136315650;
  v366 = v44;
  *&v44 = 136315394;
  v359 = v44;
  *&v44 = 136316162;
  v369 = v44;
  *&v44 = 136315906;
  v357 = v44;
  do
  {
    v370 = v45;
    v373 = **v45;
    v46 = sub_130F70(v373, 1685090932);
    if (!v46)
    {
      v337 = sub_5544(14);
      v338 = *v337;
      if (*v337 && os_log_type_enabled(*v337, OS_LOG_TYPE_ERROR))
      {
        *v433 = v359;
        *&v433[4] = "RouteUtilities.cpp";
        *&v433[12] = 1024;
        *&v433[14] = 480;
        _os_log_impl(&dword_0, v338, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Routing database error: Unable to locate kDSP_Processor_Type within a DSP processor map entry.", v433, 0x12u);
      }

      v339 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v339, "Routing database error: Unable to locate kDSP_Processor_Type within a DSP processor map entry.");
    }

    v47 = v46[3];
    if (v47[10] != 1)
    {
      sub_20B4EC();
    }

    v379 = *v47;
    v48 = sub_5544(25);
    if (*(v48 + 8))
    {
      v49 = *v48;
      if (*v48)
      {
        if (os_log_type_enabled(*v48, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(v425, v379);
          v50 = v425[23] >= 0 ? v425 : *v425;
          *v433 = v366;
          *&v433[4] = "RouteUtilities.cpp";
          *&v433[12] = 1024;
          *&v433[14] = 483;
          *&v433[18] = 2080;
          *&v433[20] = v50;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found DSP Processor type %s", v433, 0x1Cu);
          if ((v425[23] & 0x80000000) != 0)
          {
            operator delete(*v425);
          }
        }
      }
    }

    v51 = sub_130F70(v373, 1701736511);
    if (v51)
    {
      v52 = v51[3];
      if (v52[10] != 1)
      {
        sub_20B4EC();
      }

      v53 = *v52 != 0;
    }

    (*(qword_6EB0E0 + 40))(&v384);
    if (!v384)
    {
      v334 = sub_5544(14);
      v335 = *v334;
      if (*v334 && os_log_type_enabled(*v334, OS_LOG_TYPE_ERROR))
      {
        *v433 = v359;
        *&v433[4] = "RouteUtilities.cpp";
        *&v433[12] = 1024;
        *&v433[14] = 490;
        _os_log_impl(&dword_0, v335, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [inst.get() is NULL]: Unable to instantiate DSPProcessor.", v433, 0x12u);
      }

      v336 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v336, "Unable to instantiate DSPProcessor.");
    }

    v54 = sub_5544(25);
    v55 = *v54;
    if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_DEFAULT))
    {
      v56 = (*(*v384 + 160))(v384);
      sub_22170(v425, v56);
      v57 = v425[23];
      v58 = *v425;
      v59 = (*(*v384 + 152))(v384);
      v60 = *v368;
      v61 = v57 >= 0 ? v425 : v58;
      *v433 = v369;
      *&v433[4] = "RouteUtilities.cpp";
      *&v433[12] = 1024;
      *&v433[14] = 492;
      *&v433[18] = 2080;
      *&v433[20] = v61;
      *&v433[28] = 1024;
      *&v433[30] = v59;
      *&v433[34] = 2048;
      *&v433[36] = v60;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Instantiated DSP Processor type '%s', instanceID: %u dspchain: %p", v433, 0x2Cu);
      if ((v425[23] & 0x80000000) != 0)
      {
        operator delete(*v425);
      }
    }

    v62 = sub_130F70(v373, 1685090928);
    if (v62)
    {
      v63 = v62[3];
      if (*(v63 + 40) != 7)
      {
        sub_20B4EC();
      }

      sub_EEB58(*(v63 + 16), v384);
    }

    v64 = sub_130F70(v373, 1768907891);
    if (v64)
    {
      v65 = v64[3];
      if (*(v65 + 40) != 9)
      {
        sub_20B4EC();
      }

      v66 = *v65;
      v67 = *(v65 + 8);
      *v433 = *v65;
      *&v433[8] = v67;
      if (v67)
      {
        atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
      }

      v69 = *(v65 + 16);
      v68 = *(v65 + 24);
      *&v433[16] = v69;
      *&v433[24] = v68;
      if (v68)
      {
        atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v66[10] != 1)
      {
        sub_20B4EC();
      }

      v376 = v68;
      *&v381 = v67;
      if (*(v69 + 40) != 8)
      {
        sub_20B4EC();
      }

      v360 = *v66;
      for (i = *(v69 + 8); i != v69; i = i[1])
      {
        v71 = i[2];
        v72 = i[3];
        if (v72)
        {
          atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(v71 + 10) != 9)
        {
          sub_20B4EC();
        }

        v73 = *v71;
        v74 = v71[1];
        *v425 = *v71;
        *&v425[8] = v74;
        if (v74)
        {
          atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v75 = v71[2];
        v76 = v71[3];
        *&v425[16] = v75;
        *&v425[24] = v76;
        if (v76)
        {
          atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v73[10] != 1 || v75[10] != 1)
        {
          sub_20B4EC();
        }

        v77 = *v73 | (*v75 << 32);
        v78 = v378;
        if (v378 >= v377)
        {
          v79 = v378 - v374;
          v80 = v378 - v374;
          v81 = v80 + 1;
          if ((v80 + 1) >> 61)
          {
            sub_189A00();
          }

          v82 = v377 - v374;
          if ((v377 - v374) >> 2 > v81)
          {
            v81 = v82 >> 2;
          }

          if (v82 >= 0x7FFFFFFFFFFFFFF8)
          {
            v83 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v83 = v81;
          }

          if (v83)
          {
            sub_1E2544(v83);
          }

          *(8 * v80) = v77;
          v377 = 0;
          v378 = (8 * v80 + 8);
          v84 = v374;
          memcpy(0, v374, v79);
          if (v84)
          {
            operator delete(v84);
          }

          v374 = 0;
        }

        else
        {
          *v378 = v77;
          v378 = v78 + 1;
        }

        v43 = v380;
        if (v76)
        {
          sub_1A8C0(v76);
        }

        if (v74)
        {
          sub_1A8C0(v74);
        }

        if (v72)
        {
          sub_1A8C0(v72);
        }
      }

      if (v376)
      {
        sub_1A8C0(v376);
      }

      a3 = v372;
      if (v381)
      {
        sub_1A8C0(v381);
      }
    }

    v85 = v373;
    v363 = sub_125AFC(v373, 1936746861);
    v362 = sub_125AFC(v85, 1835235437);
    v86 = sub_130F70(v85, 1886352244);
    if (v86)
    {
      v87 = v86[3];
      if (*(v87 + 40) != 5)
      {
        sub_20B4EC();
      }

      v88 = *v87;
      if (*v87)
      {
        CFRetain(*v87);
      }

      if (v367)
      {
        CFRelease(v367);
      }

      v367 = v88;
    }

    v89 = sub_130F70(v373, 1835233903);
    if (v89)
    {
      v90 = v89[3];
      if (*(v90 + 40) != 5)
      {
        sub_20B4EC();
      }

      v91 = *v368;
      v92 = *(*v368 + 1144);
      v93 = *v90;
      *(*v368 + 1144) = *v90;
      if (v93)
      {
        CFRetain(v93);
      }

      if (v92)
      {
        CFRelease(v92);
      }
    }

    else
    {
      v91 = *v368;
      if (!*v368)
      {
        goto LABEL_350;
      }
    }

    sub_125B3C(0, 1701737068, 1635087216, v373, v91);
    sub_125B3C(1, 1818326117, 1635087216, v373, v91);
    sub_125B3C(2, 1701080167, 1635087216, v373, v91);
    sub_125B3C(3, 1633972835, 1600941675, v373, v91);
    v94 = *v364;
    if (sub_99D84() != 2 && sub_99D84() != 3 && sub_99D84() != 5)
    {
      goto LABEL_169;
    }

    if ((atomic_load_explicit(&qword_701650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_701650))
    {
      sub_47B33C();
      __cxa_guard_release(&qword_701650);
      a3 = v372;
      v43 = v380;
    }

    v95 = qword_701640;
    if (!qword_701640)
    {
      goto LABEL_169;
    }

    v96 = &qword_701640;
    v97 = qword_701640;
    do
    {
      v98 = *(v97 + 32);
      v99 = v98 >= v94;
      v100 = v98 < v94;
      if (v99)
      {
        v96 = v97;
      }

      v97 = *(v97 + 8 * v100);
    }

    while (v97);
    if (v96 != &qword_701640 && *(v96 + 8) <= v94)
    {
      while (1)
      {
        while (1)
        {
          v151 = *(v95 + 32);
          if (v151 <= v94)
          {
            break;
          }

          v95 = *v95;
          if (!v95)
          {
            goto LABEL_763;
          }
        }

        if (v151 >= v94)
        {
          break;
        }

        v95 = *(v95 + 8);
        if (!v95)
        {
LABEL_763:
          sub_DE7DC("map::at:  key not found");
        }
      }

      memset(v433, 0, 24);
      v312 = *(v95 + 40);
      v313 = *(v95 + 48);
      *v425 = v433;
      v425[8] = 0;
      if (v313 != v312)
      {
        v314 = 0x8E38E38E38E38E39 * ((v313 - v312) >> 4);
        if (v314 <= 0x1C71C71C71C71C7)
        {
          sub_344984(v314);
        }

        sub_189A00();
      }

      v43 = v380;
    }

    else
    {
LABEL_169:
      memset(v433, 0, 24);
    }

    *v425 = v433;
    sub_133AF0(v425);
    v101 = sub_130F70(v373, 1668248691);
    if (!v101 || *(v43 + 128) != 1)
    {
      goto LABEL_350;
    }

    v102 = v101[3];
    if (*(v102 + 40) != 5)
    {
      sub_20B4EC();
    }

    v103 = *v368;
    v391 = 0uLL;
    v390 = 0;
    sub_36C454(&p_isa, *v102);
    sub_36C454(&v414, *v102);
    v415 = (v417 - v416) >> 3;
    while (1)
    {
      if (p_isa && v428 != (v430 - v429) >> 3)
      {
        v104 = v414;
        goto LABEL_180;
      }

      v104 = v414;
      if (!v414 || v415 == (v417 - v416) >> 3)
      {
        break;
      }

LABEL_180:
      if (p_isa == v104 && v428 == v415)
      {
        break;
      }

      sub_36C4D8(v411, &p_isa);
      if ((atomic_load_explicit(&qword_6EB448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EB448))
      {
        sub_53E8(v433, "wind");
        *&v433[24] = 5;
        sub_53E8(v356, "wind_and_dynamics");
        v435 = (&dword_4 + 2);
        sub_53E8(v355, "enrollment");
        v438 = 0;
        sub_53E8(v354, "late_night_mode");
        *(&v441 + 1) = 1;
        sub_53E8(v353, "enhance_dialog");
        v444 = 2;
        sub_53E8(v352, "auto_drc");
        v445[3] = 3;
        sub_53E8(v351, "enhance_dialog_with_levels");
        v447 = 7;
        sub_36C5B4(v433, 7);
        for (j = 0; j != -224; j -= 32)
        {
          if (v446[j + 23] < 0)
          {
            operator delete(*&v446[j]);
          }
        }

        __cxa_guard_release(&qword_6EB448);
        a3 = v372;
      }

      v105 = sub_1DC1CC(v411);
      v106 = *(&xmmword_6EB420 + 1);
      if (!*(&xmmword_6EB420 + 1))
      {
        goto LABEL_321;
      }

      v107 = v105;
      v108 = vcnt_s8(*(&xmmword_6EB420 + 8));
      v108.i16[0] = vaddlv_u8(v108);
      v109 = v108.u32[0];
      if (v108.u32[0] > 1uLL)
      {
        v110 = v105;
        if (v105 >= *(&xmmword_6EB420 + 1))
        {
          v110 = v105 % *(&xmmword_6EB420 + 1);
        }
      }

      else
      {
        v110 = (*(&xmmword_6EB420 + 1) - 1) & v105;
      }

      v111 = *(xmmword_6EB420 + 8 * v110);
      if (!v111)
      {
        goto LABEL_321;
      }

      v112 = *v111;
      if (!*v111)
      {
        goto LABEL_321;
      }

      while (1)
      {
        v113 = v112[1];
        if (v107 == v113)
        {
          break;
        }

        if (v109 > 1)
        {
          if (v113 >= v106)
          {
            v113 %= v106;
          }
        }

        else
        {
          v113 &= v106 - 1;
        }

        if (v113 != v110)
        {
          goto LABEL_321;
        }

LABEL_198:
        v112 = *v112;
        if (!v112)
        {
          goto LABEL_321;
        }
      }

      if (!sub_1DC61C(v112 + 2, v411))
      {
        goto LABEL_198;
      }

      v114 = v112[5];
      v115 = v413;
      if (v413)
      {
        CFRetain(v413);
      }

      v410 = v115;
      sub_53E8(v433, "propertyID");
      *v425 = 1635087216;
      v116 = sub_2902F4(&v410, v433, v425);
      if ((v433[23] & 0x80000000) != 0)
      {
        operator delete(*v433);
      }

      if (!v115)
      {
        v341 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v341, "Could not construct");
      }

      CFRelease(v115);
      sub_36CA70(&v408, v115, "tunings");
      if (v409)
      {
        v117 = v408;
        sub_36CAF8(&v402, v408);
        sub_36CAF8(&v396, v117);
        v397 = (v399 - v398) >> 3;
        v118 = v380;
        while (1)
        {
          if (v402 && v403 != ((v405 - v404) >> 3))
          {
            v119 = v396;
          }

          else
          {
            v119 = v396;
            if (!v396 || v397 == (v399 - v398) >> 3)
            {
LABEL_309:
              if (v400)
              {
                v401 = v400;
                operator delete(v400);
              }

              if (v398)
              {
                v399 = v398;
                operator delete(v398);
              }

              if (v406)
              {
                v407 = v406;
                operator delete(v406);
              }

              if (v404)
              {
                v405 = v404;
                operator delete(v404);
              }

              if ((v409 & 1) != 0 && v408)
              {
                CFRelease(v408);
              }

              goto LABEL_320;
            }
          }

          if (v402 == v119 && v403 == v397)
          {
            goto LABEL_309;
          }

          sub_36CB7C(&v394, &v402);
          sub_1E1A58(v425, &v394);
          sub_1E1AC0(v433, v118 + 80, v425);
          if ((v425[23] & 0x80000000) != 0)
          {
            operator delete(*v425);
          }

          if ((v433[23] & 0x80000000) != 0)
          {
            sub_54A0(v425, *v433, *&v433[8]);
          }

          else
          {
            *v425 = *v433;
            *&v425[16] = *&v433[16];
          }

          v120 = std::__fs::filesystem::path::__extension(v425);
          if ((v425[23] & 0x80000000) != 0)
          {
            operator delete(*v425);
            if (v120.__size_)
            {
              goto LABEL_243;
            }
          }

          else if (v120.__size_)
          {
            goto LABEL_243;
          }

          sub_53E8(v425, "");
          if (v116 == 1635087216)
          {
            break;
          }

          if (v116 == 1886548848)
          {
            if ((v425[23] & 0x80000000) != 0)
            {
              *&v425[8] = 10;
              v121 = *v425;
            }

            else
            {
              v425[23] = 10;
              v121 = v425;
            }

            *(v121 + 4) = 28777;
            *v121 = *".propstrip";
            v123 = v121 + 10;
LABEL_234:
            *v123 = 0;
          }

          v124 = v425[23];
          v125 = v425[23];
          if (v425[23] < 0)
          {
            v124 = *&v425[8];
          }

          if (v124)
          {
            sub_1E1A58(&v421, v425);
            std::__fs::filesystem::path::replace_extension(v433, &v421);
            if (SBYTE7(v423) < 0)
            {
              operator delete(v421);
            }

            v125 = v425[23];
          }

          if (v125 < 0)
          {
            operator delete(*v425);
          }

LABEL_243:
          if ((v433[23] & 0x80000000) != 0)
          {
            sub_54A0(&v392, *v433, *&v433[8]);
            if ((v433[23] & 0x80000000) != 0)
            {
              operator delete(*v433);
            }
          }

          else
          {
            v392 = *v433;
            v393 = *&v433[16];
          }

          if (v114 == 7)
          {
            if (!v395 || (v128 = CFGetTypeID(v395), v128 != CFNumberGetTypeID()))
            {
LABEL_275:
              v425[8] = 0;
              v426 = 0;
              goto LABEL_276;
            }

            sub_290014(&v421, &v395);
            v129 = v421;
            if (!v421)
            {
              v342 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v342, "Could not construct");
            }

            TypeID = CFNumberGetTypeID();
            if (TypeID != CFGetTypeID(v129) || (v420 = 0, !CFNumberGetValue(v129, kCFNumberIntType, &v420)))
            {
              v340 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v340, "Could not convert");
            }

            *&v425[8] = v420;
            v426 = 4;
            v131 = v421;
            if (v421)
            {
LABEL_308:
              CFRelease(v131);
            }
          }

          else if (v114 == 6)
          {
            if (!v395)
            {
              goto LABEL_275;
            }

            v126 = CFGetTypeID(v395);
            if (v126 == CFNumberGetTypeID())
            {
              if (!v395)
              {
                goto LABEL_789;
              }

              v127 = sub_113A0(v395);
              *&v425[8] = v127 & (v127 << 31 >> 63) & 3;
              v426 = 3;
            }

            else
            {
              if (!v395)
              {
                goto LABEL_275;
              }

              v133 = CFGetTypeID(v395);
              if (v133 != CFDictionaryGetTypeID())
              {
                goto LABEL_275;
              }

              if (v395)
              {
                v134 = CFGetTypeID(v395);
                if (v134 != CFDictionaryGetTypeID())
                {
LABEL_789:
                  v343 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v343, "Could not construct");
                }

                v135 = v395;
              }

              else
              {
                v135 = 0;
              }

              sub_10FD4(&v421, v135);
              if (!v421)
              {
                v347 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v347, "Could not construct");
              }

              v147 = sub_36CC44(v421, "wind");
              if (!v421)
              {
                v346 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v346, "Could not construct");
              }

              v148 = sub_36CC44(v421, "dynamics");
              v149 = 2;
              if (((v147 > 0xFFu) & v147) == 0)
              {
                v149 = 0;
              }

              *&v425[8] = v149 | (v148 > 0xFFu) & v148;
              v426 = 3;
              v131 = v421;
              if (v421)
              {
                goto LABEL_308;
              }
            }
          }

          else
          {
            if (!v395)
            {
              goto LABEL_275;
            }

            v132 = CFGetTypeID(v395);
            if (v132 == CFBooleanGetTypeID())
            {
              sub_33CBE0(&v421, &v395);
              if (!v421)
              {
                v344 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v344, "Could not construct");
              }

              v425[8] = sub_27CA94(v421);
              v426 = 0;
              v131 = v421;
              if (v421)
              {
                goto LABEL_308;
              }
            }

            else
            {
              if (!v395)
              {
                goto LABEL_275;
              }

              v136 = CFGetTypeID(v395);
              if (v136 != CFNumberGetTypeID())
              {
                goto LABEL_275;
              }

              sub_290014(&v421, &v395);
              if (!v421)
              {
                v345 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v345, "Could not construct");
              }

              v425[8] = sub_4A8F8(v421) != 0;
              v426 = 0;
              v131 = v421;
              if (v421)
              {
                goto LABEL_308;
              }
            }
          }

LABEL_276:
          sub_344ADC(v433, v114, v116, &v392, v425);
          v137 = v391;
          if (v391 >= *(&v391 + 1))
          {
            v139 = 0x8E38E38E38E38E39 * ((v391 - v390) >> 4) + 1;
            if (v139 > 0x1C71C71C71C71C7)
            {
              sub_189A00();
            }

            if (0x1C71C71C71C71C72 * ((*(&v391 + 1) - v390) >> 4) > v139)
            {
              v139 = 0x1C71C71C71C71C72 * ((*(&v391 + 1) - v390) >> 4);
            }

            if (0x8E38E38E38E38E39 * ((*(&v391 + 1) - v390) >> 4) >= 0xE38E38E38E38E3)
            {
              v140 = 0x1C71C71C71C71C7;
            }

            else
            {
              v140 = v139;
            }

            v424 = &v390;
            if (v140)
            {
              sub_344984(v140);
            }

            v142 = 16 * ((v391 - v390) >> 4);
            v421 = 0;
            v422 = v142;
            v423 = v142;
            *v142 = *v433;
            sub_2CCB20(v142 + 16, &v433[16]);
            *(v142 + 104) = v440;
            if (SHIBYTE(v442) < 0)
            {
              sub_54A0((v142 + 112), v441, *(&v441 + 1));
            }

            else
            {
              v143 = v441;
              *(v142 + 128) = v442;
              *(v142 + 112) = v143;
            }

            *(v142 + 136) = v443;
            *&v423 = v423 + 144;
            v144 = (v390 + v422 - v391);
            sub_3449E0(v390, v391, v144);
            v145 = v390;
            v146 = *(&v391 + 1);
            v390 = v144;
            v381 = v423;
            v391 = v423;
            *&v423 = v145;
            *(&v423 + 1) = v146;
            v422 = v145;
            v421 = v145;
            sub_344A8C(&v421);
            v141 = v381;
          }

          else
          {
            *v391 = *v433;
            sub_2CCB20(v137 + 16, &v433[16]);
            *(v137 + 104) = v440;
            if (SHIBYTE(v442) < 0)
            {
              sub_54A0((v137 + 112), v441, *(&v441 + 1));
            }

            else
            {
              v138 = v441;
              *(v137 + 128) = v442;
              *(v137 + 112) = v138;
            }

            *(v137 + 136) = v443;
            v141 = v137 + 144;
          }

          *&v391 = v141;
          if (SHIBYTE(v442) < 0)
          {
            operator delete(v441);
          }

          sub_DD7C4(&v433[16]);
          sub_DD7C4(&v425[8]);
          if (SHIBYTE(v393) < 0)
          {
            operator delete(v392);
          }

          if (v395)
          {
            CFRelease(v395);
          }

          if (SHIBYTE(v394.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v394.__r_.__value_.__l.__data_);
          }

          v403 = (v403 + 1);
        }

        if ((v425[23] & 0x80000000) != 0)
        {
          *&v425[8] = 8;
          v122 = *v425;
        }

        else
        {
          v425[23] = 8;
          v122 = v425;
        }

        *v122 = 0x706972747375612ELL;
        v123 = v122 + 1;
        goto LABEL_234;
      }

LABEL_320:
      a3 = v372;
LABEL_321:
      if (v413)
      {
        CFRelease(v413);
      }

      v43 = v380;
      if (v412 < 0)
      {
        operator delete(v411[0]);
      }

      ++v428;
    }

    if (v418)
    {
      v419 = v418;
      operator delete(v418);
    }

    if (v416)
    {
      v417 = v416;
      operator delete(v416);
    }

    if (v431)
    {
      v432 = v431;
      operator delete(v431);
    }

    if (v429)
    {
      v430 = v429;
      operator delete(v429);
    }

    v152 = v390;
    v153 = v391;
    while (v152 != v153)
    {
      sub_344400(v103, v152);
      v152 += 144;
    }

    *v433 = &v390;
    sub_133AF0(v433);
LABEL_350:
    v154 = sub_130F70(v373, 1684303986);
    if (!v154)
    {
      goto LABEL_614;
    }

    v155 = v154[3];
    if (*(v155 + 40) != 8)
    {
      sub_20B4EC();
    }

    shared_owners = *(v155 + 8);
    v375 = v154[3];
    if (v155 == shared_owners)
    {
      goto LABEL_614;
    }

    do
    {
      v376 = shared_owners;
      shared_weak_owners = shared_owners->__shared_weak_owners_;
      if (shared_weak_owners)
      {
        v158 = shared_weak_owners[10];
        if (v158 == 9)
        {
          v402 = &v402;
          v403 = &v402;
          v404 = 0;
          v159 = *(shared_weak_owners + 2);
          if (v159[10] != 1)
          {
            sub_20B4EC();
          }

          v160 = *v159;
          v396 = 0;
          v397 = 0;
          v398 = 0;
          v161 = *shared_weak_owners;
          if (!*shared_weak_owners)
          {
            goto LABEL_386;
          }

          v162 = *(v161 + 40);
          if (v162 != 8)
          {
            if (v162 == 1)
            {
              sub_AFD28(&v396, v161);
              v163 = v396;
              v164 = v397;
LABEL_387:
              memset(v433, 0, 24);
              sub_46980(v433, v163, v164, (v164 - v163) >> 2);
              strcpy(&v433[24], "cwdv");
              v433[32] = 0;
              *&v433[40] = 3;
              v176 = v371;
              a3 = v372;
              *v371 = 0;
              v176[1] = 0;
              v434 = v176;
              v436[2] = 44739242;
              v438 = 0;
              v439 = 0;
              v437 = 0;
              sub_46D2AC(v425, a3, v433);
              sub_11DB30(&v402, v425);
              sub_65310(v425);
              if (!v404)
              {
                v268 = sub_5544(14);
                v269 = *v268;
                if (*v268 && os_log_type_enabled(*v268, OS_LOG_TYPE_ERROR))
                {
                  sub_28C6F0(&v414, v396, v397);
                  sub_53E8(&v421, ",");
                  sub_28C504(&p_isa, &v414, &v421);
                  v270 = SHIBYTE(v429);
                  v271 = p_isa;
                  sub_22170(v411, v160);
                  v272 = &p_isa;
                  if (v270 < 0)
                  {
                    v272 = v271;
                  }

                  v273 = v411;
                  if (v412 < 0)
                  {
                    v273 = v411[0];
                  }

                  *v425 = v357;
                  *&v425[4] = "RouteUtilities.cpp";
                  *&v425[12] = 1024;
                  *&v425[14] = 588;
                  *&v425[18] = 2080;
                  *&v425[20] = v272;
                  *&v425[28] = 2080;
                  *&v425[30] = v273;
                  _os_log_impl(&dword_0, v269, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: No ports found that match any of the ones requested (%s) for property %s, skipping it", v425, 0x26u);
                  if (v412 < 0)
                  {
                    operator delete(v411[0]);
                  }

                  v155 = v375;
                  if (SHIBYTE(v429) < 0)
                  {
                    operator delete(p_isa);
                  }

                  if (SBYTE7(v423) < 0)
                  {
                    operator delete(v421);
                  }

                  sub_20BC1C(&v414);
                }

                if (!v404)
                {
                  goto LABEL_590;
                }
              }

              sub_88A00(&v394, v403 + 2, "", 594);
              v178 = v394.__r_.__value_.__r.__words[0];
              LODWORD(v390) = v160;
              *&v392 = 0;
              if (v160 <= 1751937132)
              {
                if (v160 > 1668641397)
                {
                  if (v160 != 1668641398)
                  {
                    if (v160 == 1718184292)
                    {
                      sub_34BB3C(&v414, v394.__r_.__value_.__l.__data_);
                      sub_344458(v425, &v390);
                      sub_344578(&v425[16], &v414);
                      p_isa = v425;
                      v428 = 2;
                      v181 = sub_69CE8(&p_isa);
                      v223 = 0;
                      *&v392 = v181;
                      do
                      {
                        v224 = *&v425[v223 + 24];
                        if (v224)
                        {
                          CFRelease(v224);
                        }

                        v225 = *&v425[v223 + 16];
                        if (v225)
                        {
                          CFRelease(v225);
                        }

                        v223 -= 16;
                      }

                      while (v223 != -32);
                      v226 = v414;
                      if (!v414)
                      {
                        goto LABEL_580;
                      }

LABEL_497:
                      CFRelease(v226);
                      goto LABEL_580;
                    }

                    if (v160 == 1751935092)
                    {
                      v177.n128_u32[0] = 1174423552;
                      if (*(v394.__r_.__value_.__r.__words[0] + 148) == 1885544823)
                      {
                        v182 = sub_344610(v394.__r_.__value_.__l.__data_);
                        if (!HIDWORD(v182) || !v182)
                        {
                          goto LABEL_588;
                        }

                        v177.n128_f32[0] = v182;
                      }

                      (*(*v384 + 80))(v384, 1751935092, 0, 0, v177);
                      goto LABEL_588;
                    }

                    goto LABEL_518;
                  }
                }

                else
                {
                  if (v160 == 1)
                  {
                    if ((*(*v384 + 160))(v384) == 1936747629)
                    {
                      v213 = sub_347F08(v178);
                      (*(*v384 + 80))(v384, 1, 0, 0, v213);
                    }

                    else
                    {
                      v249 = sub_5544(21);
                      v250 = *v249;
                      if (*v249 && os_log_type_enabled(*v249, OS_LOG_TYPE_ERROR))
                      {
                        v251 = (*(*v384 + 160))(v384);
                        sub_22170(&p_isa, v251);
                        v252 = &p_isa;
                        if (SHIBYTE(v429) < 0)
                        {
                          v252 = p_isa;
                        }

                        *v425 = v357;
                        *&v425[4] = "RouteUtilities.cpp";
                        *&v425[12] = 1024;
                        *&v425[14] = 231;
                        *&v425[18] = 1024;
                        *&v425[20] = 1;
                        *&v425[24] = 2080;
                        *&v425[26] = v252;
                        v240 = v250;
                        v241 = "%25s:%-5d No known process for collecting port specific data for parameter %d on processor type %s";
                        v242 = 34;
                        goto LABEL_544;
                      }
                    }

LABEL_588:
                    if (v394.__r_.__value_.__l.__size_)
                    {
                      sub_1A8C0(v394.__r_.__value_.__l.__size_);
                    }

LABEL_590:
                    if (SHIBYTE(v439) < 0)
                    {
                      operator delete(v437);
                    }

                    sub_477A0(v435);
                    if (*v433)
                    {
                      *&v433[8] = *v433;
                      operator delete(*v433);
                    }

                    if (v396)
                    {
                      operator delete(v396);
                    }

                    sub_65310(&v402);
                    goto LABEL_597;
                  }

                  if (v160 != 64001)
                  {
                    v179 = 64003;
                    goto LABEL_397;
                  }
                }

                sub_3486F0(&v421, v394.__r_.__value_.__l.__data_);
                sub_348288(v178);
                v197 = sub_5544(21);
                v198 = *v197;
                if (*v197 && os_log_type_enabled(*v197, OS_LOG_TYPE_DEFAULT))
                {
                  v199 = CFCopyDescription(v421);
                  v414 = v199;
                  sub_1267C(&p_isa, v199);
                  if (v199)
                  {
                    CFRelease(v199);
                  }

                  v200 = &p_isa;
                  if (SHIBYTE(v429) < 0)
                  {
                    v200 = p_isa;
                  }

                  *v425 = v366;
                  *&v425[4] = "RouteUtilities.cpp";
                  *&v425[12] = 1024;
                  *&v425[14] = 261;
                  *&v425[18] = 2080;
                  *&v425[20] = v200;
                  _os_log_impl(&dword_0, v198, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Headset volume curve: %s", v425, 0x1Cu);
                  if (SHIBYTE(v429) < 0)
                  {
                    operator delete(p_isa);
                  }
                }

                if (v160 == 64001)
                {
                  v201 = v421;
                  *v425 = v421;
                  (*(*v384 + 56))(v384, 64001, v425, 8, 0, 0);
                  v181 = 0;
                  if (!v201)
                  {
LABEL_580:
                    if (v181)
                    {
                      v265 = sub_5544(21);
                      v266 = *v265;
                      if (*v265 && os_log_type_enabled(*v265, OS_LOG_TYPE_DEFAULT))
                      {
                        sub_22170(&p_isa, v390);
                        v267 = &p_isa;
                        if (SHIBYTE(v429) < 0)
                        {
                          v267 = p_isa;
                        }

                        *v425 = v366;
                        *&v425[4] = "RouteUtilities.cpp";
                        *&v425[12] = 1024;
                        *&v425[14] = 366;
                        *&v425[18] = 2080;
                        *&v425[20] = v267;
                        _os_log_impl(&dword_0, v266, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting property %s on the DSP Processor instance", v425, 0x1Cu);
                        if (SHIBYTE(v429) < 0)
                        {
                          operator delete(p_isa);
                        }
                      }

                      operator new();
                    }

                    goto LABEL_588;
                  }
                }

                else
                {
                  sub_344458(v425, &v390);
                  sub_3445C4(&v425[16], &v421);
                  p_isa = v425;
                  v428 = 2;
                  v181 = sub_69CE8(&p_isa);
                  v246 = 0;
                  *&v392 = v181;
                  do
                  {
                    v247 = *&v425[v246 + 24];
                    if (v247)
                    {
                      CFRelease(v247);
                    }

                    v248 = *&v425[v246 + 16];
                    if (v248)
                    {
                      CFRelease(v248);
                    }

                    v246 -= 16;
                  }

                  while (v246 != -32);
                  v201 = v421;
                  if (!v421)
                  {
                    goto LABEL_580;
                  }
                }

                CFRelease(v201);
                goto LABEL_580;
              }

              if (v160 > 1936749412)
              {
                if (v160 == 1936749413)
                {
                  v214 = sub_347F08(v394.__r_.__value_.__l.__data_);
                  (*(*v384 + 80))(v384, 1936749413, 0, 0, v214);
                  goto LABEL_588;
                }

                if (v160 == 1936749683)
                {
                  v227 = sub_5544(21);
                  v228 = *v227;
                  if (*v227 && os_log_type_enabled(*v227, OS_LOG_TYPE_DEFAULT))
                  {
                    *v425 = v359;
                    *&v425[4] = "RouteUtilities.cpp";
                    *&v425[12] = 1024;
                    *&v425[14] = 329;
                    _os_log_impl(&dword_0, v228, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting Speaker Thiele-Small data From FDR", v425, 0x12u);
                  }

                  sub_4CC644(&v421);
                  v229 = v421;
                  if (v421)
                  {
                    v230 = sub_5544(21);
                    v231 = *v230;
                    if (*v230 && os_log_type_enabled(*v230, OS_LOG_TYPE_DEFAULT))
                    {
                      v232 = CFCopyDescription(v229);
                      v414 = v232;
                      sub_1267C(&p_isa, v232);
                      if (v232)
                      {
                        CFRelease(v232);
                      }

                      v233 = &p_isa;
                      if (SHIBYTE(v429) < 0)
                      {
                        v233 = p_isa;
                      }

                      *v425 = v366;
                      *&v425[4] = "RouteUtilities.cpp";
                      *&v425[12] = 1024;
                      *&v425[14] = 332;
                      *&v425[18] = 2080;
                      *&v425[20] = v233;
                      _os_log_impl(&dword_0, v231, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Speaker Thiele-Small data: %s", v425, 0x1Cu);
                      if (SHIBYTE(v429) < 0)
                      {
                        operator delete(p_isa);
                      }
                    }

                    sub_344458(v425, &v390);
                    sub_344578(&v425[16], &v421);
                    p_isa = v425;
                    v428 = 2;
                    v181 = sub_69CE8(&p_isa);
                    v234 = 0;
                    *&v392 = v181;
                    do
                    {
                      v235 = *&v425[v234 + 24];
                      if (v235)
                      {
                        CFRelease(v235);
                      }

                      v236 = *&v425[v234 + 16];
                      if (v236)
                      {
                        CFRelease(v236);
                      }

                      v234 -= 16;
                    }

                    while (v234 != -32);
                    if (v229)
                    {
                      CFRelease(v229);
                    }

                    goto LABEL_580;
                  }

                  v261 = sub_5544(21);
                  v262 = *v261;
                  if (*v261 && os_log_type_enabled(*v261, OS_LOG_TYPE_DEFAULT))
                  {
                    *v425 = v359;
                    *&v425[4] = "RouteUtilities.cpp";
                    *&v425[12] = 1024;
                    *&v425[14] = 337;
                    _os_log_impl(&dword_0, v262, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR doesn't have Speaker Thiele-Small data", v425, 0x12u);
                  }

                  goto LABEL_403;
                }

                if (v160 != 1953655149)
                {
                  goto LABEL_518;
                }

                sub_34B75C(&p_isa, v394.__r_.__value_.__l.__data_);
                v183 = p_isa;
                sub_280AF8(&v421, p_isa, v428 - p_isa);
                sub_344458(v425, &v390);
                sub_34452C(&v425[16], &v421);
                v414 = v425;
                v415 = 2;
                v181 = sub_69CE8(&v414);
                v184 = 0;
                *&v392 = v181;
                do
                {
                  v185 = *&v425[v184 + 24];
                  if (v185)
                  {
                    CFRelease(v185);
                  }

                  v186 = *&v425[v184 + 16];
                  if (v186)
                  {
                    CFRelease(v186);
                  }

                  v184 -= 16;
                }

                while (v184 != -32);
                if (v421)
                {
                  CFRelease(v421);
                }

                if (!v183)
                {
                  goto LABEL_580;
                }

                v187 = v183;
                goto LABEL_579;
              }

              if (v160 == 1751937133)
              {
                (*(*v384 + 80))(v384, 1751937133, 0, 0, 1.0);
                goto LABEL_588;
              }

              if (v160 != 1936745841)
              {
                v179 = 1936746611;
LABEL_397:
                if (v160 == v179)
                {
                  LODWORD(v421) = 0;
                  if (*(v394.__r_.__value_.__r.__words[0] + 148) == 1885544823)
                  {
                    v180 = sub_344610(v394.__r_.__value_.__l.__data_);
                    if (HIDWORD(v180))
                    {
                      LODWORD(v421) = v180;
                    }
                  }

                  if (v160 == 64003)
                  {
                    (*(*v384 + 56))(v384, 64003, &v421, 4, 0, 0);
LABEL_403:
                    v181 = 0;
                    goto LABEL_580;
                  }

                  sub_280AF8(&v414, &v421, 4);
                  sub_344458(v425, &v390);
                  sub_34452C(&v425[16], &v414);
                  p_isa = v425;
                  v428 = 2;
                  v181 = sub_69CE8(&p_isa);
                  v243 = 0;
                  *&v392 = v181;
                  do
                  {
                    v244 = *&v425[v243 + 24];
                    if (v244)
                    {
                      CFRelease(v244);
                    }

                    v245 = *&v425[v243 + 16];
                    if (v245)
                    {
                      CFRelease(v245);
                    }

                    v243 -= 16;
                  }

                  while (v243 != -32);
                  v226 = v414;
                  if (!v414)
                  {
                    goto LABEL_580;
                  }

                  goto LABEL_497;
                }

LABEL_518:
                v237 = sub_5544(25);
                v238 = *v237;
                if (*v237 && os_log_type_enabled(*v237, OS_LOG_TYPE_ERROR))
                {
                  sub_22170(&p_isa, v160);
                  v239 = &p_isa;
                  if (SHIBYTE(v429) < 0)
                  {
                    v239 = p_isa;
                  }

                  *v425 = v366;
                  *&v425[4] = "RouteUtilities.cpp";
                  *&v425[12] = 1024;
                  *&v425[14] = 360;
                  *&v425[18] = 2080;
                  *&v425[20] = v239;
                  v240 = v238;
                  v241 = "%25s:%-5d Unsupported device specific property: %s";
                  v242 = 28;
LABEL_544:
                  _os_log_impl(&dword_0, v240, OS_LOG_TYPE_ERROR, v241, v425, v242);
                  if (SHIBYTE(v429) < 0)
                  {
                    operator delete(p_isa);
                  }

                  goto LABEL_588;
                }

                goto LABEL_588;
              }

              v215 = sub_5544(21);
              v216 = *v215;
              if (*v215 && os_log_type_enabled(*v215, OS_LOG_TYPE_DEFAULT))
              {
                *v425 = v359;
                *&v425[4] = "RouteUtilities.cpp";
                *&v425[12] = 1024;
                *&v425[14] = 343;
                _os_log_impl(&dword_0, v216, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting SpEQ data from FDR", v425, 0x12u);
              }

              v217 = *(v178 + 200);
              v411[0] = *(v178 + 192);
              v411[1] = v217;
              if (v217)
              {
                atomic_fetch_add_explicit(&v217->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              sub_5659C(&v421, v411, "", 345);
              sub_2C40CC(v425, v421, COERCE_DOUBLE(1869968496));
              v415 = 0;
              v414 = 0;
              v416 = 0;
              v218 = v425[24];
              v219 = &v414;
              if (v425[24])
              {
                v219 = v425;
              }

              v220 = *v219;
              v221 = *&v425[8];
              if (!v425[24])
              {
                v221 = 0;
              }

              v222 = v219[2];
              *v219 = 0;
              v219[1] = 0;
              v219[2] = 0;
              p_isa = &v220->isa;
              v428 = v221;
              v429 = v222;
              if (v414)
              {
                operator delete(v414);
                if ((v218 & 1) == 0)
                {
                  goto LABEL_549;
                }
              }

              else if (!v218)
              {
LABEL_549:
                if (v422)
                {
                  sub_1A8C0(v422);
                }

                if (v217)
                {
                  std::__shared_weak_count::__release_weak(v217);
                }

                sub_4CD1F0(v411, &p_isa);
                v253 = v411[0];
                if (v411[0])
                {
                  v254 = sub_5544(21);
                  v255 = *v254;
                  if (*v254 && os_log_type_enabled(*v254, OS_LOG_TYPE_DEFAULT))
                  {
                    v256 = CFCopyDescription(v253);
                    v421 = v256;
                    sub_1267C(&v414, v256);
                    if (v256)
                    {
                      CFRelease(v256);
                    }

                    v257 = &v414;
                    if (SHIBYTE(v416) < 0)
                    {
                      v257 = &v414->isa;
                    }

                    *v425 = v366;
                    *&v425[4] = "RouteUtilities.cpp";
                    *&v425[12] = 1024;
                    *&v425[14] = 350;
                    *&v425[18] = 2080;
                    *&v425[20] = v257;
                    _os_log_impl(&dword_0, v255, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR Speaker EQ data: %s", v425, 0x1Cu);
                    if (SHIBYTE(v416) < 0)
                    {
                      operator delete(v414);
                    }
                  }

                  sub_344458(v425, &v390);
                  sub_3445C4(&v425[16], v411);
                  v414 = v425;
                  v415 = 2;
                  v181 = sub_69CE8(&v414);
                  v258 = 0;
                  *&v392 = v181;
                  do
                  {
                    v259 = *&v425[v258 + 24];
                    if (v259)
                    {
                      CFRelease(v259);
                    }

                    v260 = *&v425[v258 + 16];
                    if (v260)
                    {
                      CFRelease(v260);
                    }

                    v258 -= 16;
                  }

                  while (v258 != -32);
                  if (v253)
                  {
                    CFRelease(v253);
                  }
                }

                else
                {
                  v263 = sub_5544(21);
                  v264 = *v263;
                  if (*v263 && os_log_type_enabled(*v263, OS_LOG_TYPE_DEFAULT))
                  {
                    *v425 = v359;
                    *&v425[4] = "RouteUtilities.cpp";
                    *&v425[12] = 1024;
                    *&v425[14] = 355;
                    _os_log_impl(&dword_0, v264, OS_LOG_TYPE_DEFAULT, "%25s:%-5d FDR doesn't have Speaker EQ data", v425, 0x12u);
                  }

                  v181 = 0;
                }

                v187 = p_isa;
                if (!p_isa)
                {
                  goto LABEL_580;
                }

                v428 = p_isa;
LABEL_579:
                operator delete(v187);
                goto LABEL_580;
              }

              if (*v425)
              {
                operator delete(*v425);
              }

              goto LABEL_549;
            }

LABEL_386:
            v164 = 0;
            v163 = 0;
            goto LABEL_387;
          }

          v188 = *(v161 + 8);
          if (v188 == v161)
          {
            v164 = 0;
            v163 = 0;
            v43 = v380;
            goto LABEL_387;
          }

          v361 = v160;
          v163 = 0;
          *&v381 = 0;
          v164 = 0;
          while (1)
          {
            v189 = v188[2];
            v190 = v188[3];
            if (v190)
            {
              atomic_fetch_add_explicit(&v190->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v189[10] != 1)
            {
              v397 = v164;
              v398 = v381;
              v396 = 0;
              sub_20B4EC();
            }

            v191 = *v189;
            if (v164 >= v381)
            {
              break;
            }

            *v164 = v191;
            v164 += 4;
            if (v190)
            {
              goto LABEL_432;
            }

LABEL_433:
            v188 = v188[1];
            if (v188 == v161)
            {
              v43 = v380;
              v397 = v164;
              v398 = v381;
              v396 = 0;
              v160 = v361;
              goto LABEL_387;
            }
          }

          v192 = v161;
          v193 = v164;
          v194 = v164 >> 2;
          v195 = (v164 >> 2) + 1;
          if (v195 >> 62)
          {
            v397 = v164;
            v398 = v381;
            v396 = 0;
            sub_189A00();
          }

          if (v381 >> 1 > v195)
          {
            v195 = v381 >> 1;
          }

          if (v381 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v196 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v196 = v195;
          }

          if (v196)
          {
            sub_1D7C28(v196);
          }

          *&v381 = 0;
          *(4 * v194) = v191;
          v164 = 4 * v194 + 4;
          memcpy(0, 0, v193);
          v163 = 0;
          v155 = v375;
          v161 = v192;
          if (!v190)
          {
            goto LABEL_433;
          }

LABEL_432:
          sub_1A8C0(v190);
          goto LABEL_433;
        }
      }

      else
      {
        v158 = 1163157343;
      }

      if (v158 != 1)
      {
        sub_20B4EC();
      }

      v165 = *shared_weak_owners;
      v414 = (v379 | (v165 << 32));
      LODWORD(v402) = 0;
      strcpy(v425, "ppfdbolg");
      v425[9] = 0;
      *&v425[10] = 0;
      for (k = a3[1]; ; k = k[1])
      {
        if (k == a3)
        {
          v43 = v380;
          goto LABEL_375;
        }

        sub_88A00(v433, k + 2, "", 76);
        if (*v433)
        {
          v167 = *(*v433 + 200);
          if (v167)
          {
            v168 = *(*v433 + 192);
            atomic_fetch_add_explicit(&v167->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v169 = std::__shared_weak_count::lock(v167);
            std::__shared_weak_count::__release_weak(v167);
            if (v169)
            {
              break;
            }
          }
        }

LABEL_371:
        if (*&v433[8])
        {
          sub_1A8C0(*&v433[8]);
        }
      }

      if (!v168 || !(*(*v168 + 16))(v168, v425) || (LODWORD(v402) = (*(*v168 + 32))(v168, v425, 8, &v414), !v402))
      {
        sub_1A8C0(v169);
        goto LABEL_371;
      }

      atomic_fetch_add_explicit(&v169->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_1A8C0(v169);
      if (*&v433[8])
      {
        sub_1A8C0(*&v433[8]);
      }

      v202 = std::__shared_weak_count::lock(v169);
      std::__shared_weak_count::__release_weak(v169);
      v43 = v380;
      if (v202)
      {
        if (v402)
        {
          v204 = __chkstk_darwin(v203);
          v206 = &v351 - ((v205 + 15) & 0x1FFFFFFF0);
          strcpy(v433, "ppfdbolg");
          v433[9] = 0;
          *&v433[10] = 0;
          (*(*v168 + 40))(v168, v433, 8, &v414, &v402, v206, v204);
          v207 = sub_5544(25);
          if (*(v207 + 8))
          {
            v208 = *v207;
            if (*v207)
            {
              if (os_log_type_enabled(*v207, OS_LOG_TYPE_DEBUG))
              {
                sub_22170(v425, v165);
                v209 = v425[23];
                v210 = *v425;
                sub_22170(&p_isa, v379);
                v211 = v425;
                if (v209 < 0)
                {
                  v211 = v210;
                }

                p_p_isa = &p_isa;
                if (SHIBYTE(v429) < 0)
                {
                  p_p_isa = p_isa;
                }

                *v433 = v369;
                *&v433[4] = "RouteUtilities.cpp";
                *&v433[12] = 1024;
                *&v433[14] = 613;
                *&v433[18] = 2080;
                *&v433[20] = v211;
                *&v433[28] = 1024;
                *&v433[30] = v165;
                *&v433[34] = 2080;
                *&v433[36] = p_p_isa;
                _os_log_impl(&dword_0, v208, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting device-specific property '%s' (%u) on DSP processor with type '%s'", v433, 0x2Cu);
                if (SHIBYTE(v429) < 0)
                {
                  operator delete(p_isa);
                }

                v43 = v380;
                if ((v425[23] & 0x80000000) != 0)
                {
                  operator delete(*v425);
                }
              }
            }
          }

          (*(*v384 + 56))(v384, v165, v206, v402, 0, 0);
        }

        sub_1A8C0(v202);
        v155 = v375;
        goto LABEL_597;
      }

LABEL_375:
      v170 = sub_5544(21);
      v155 = v375;
      v171 = *v170;
      if (*v170 && os_log_type_enabled(*v170, OS_LOG_TYPE_INFO))
      {
        sub_22170(v425, v379);
        v172 = v425[23];
        v173 = *v425;
        sub_22170(&p_isa, v165);
        if (v172 >= 0)
        {
          v174 = v425;
        }

        else
        {
          v174 = v173;
        }

        v175 = &p_isa;
        if (SHIBYTE(v429) < 0)
        {
          v175 = p_isa;
        }

        *v433 = v369;
        *&v433[4] = "RouteUtilities.cpp";
        *&v433[12] = 1024;
        *&v433[14] = 604;
        *&v433[18] = 2080;
        *&v433[20] = v174;
        *&v433[28] = 2080;
        *&v433[30] = v175;
        *&v433[38] = 1024;
        *&v433[40] = v165;
        _os_log_impl(&dword_0, v171, OS_LOG_TYPE_INFO, "%25s:%-5d Unable to find a physical device that provides device-specific data for DSP processor %s, property '%s' (%u)", v433, 0x2Cu);
        if (SHIBYTE(v429) < 0)
        {
          operator delete(p_isa);
        }

        v155 = v375;
        if ((v425[23] & 0x80000000) != 0)
        {
          operator delete(*v425);
        }
      }

LABEL_597:
      shared_owners = v376->__shared_owners_;
    }

    while (v155 != shared_owners);
LABEL_614:
    v274 = *v370;
    v275 = v370[1];
    while (v274 != v275)
    {
      v276 = *v274;
      if (!*v274)
      {
        v317 = sub_5544(14);
        v318 = *v317;
        if (*v317 && os_log_type_enabled(*v317, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v425, v379);
          v319 = v425[23] >= 0 ? v425 : *v425;
          *v433 = v366;
          *&v433[4] = "RouteUtilities.cpp";
          *&v433[12] = 1024;
          *&v433[14] = 624;
          *&v433[18] = 2080;
          *&v433[20] = v319;
          _os_log_impl(&dword_0, v318, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [config is NULL]: Routing database error: NULL configuration in list of configs for processor of type '%s'", v433, 0x1Cu);
          if ((v425[23] & 0x80000000) != 0)
          {
            operator delete(*v425);
          }
        }

        v320 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v320, "Routing database error: NULL configuration in list of configs for processor of type '%s'");
      }

      v277 = sub_130F70(*v274, 1685090932);
      if (v277)
      {
        v278 = v277[3];
        if (v278[10] != 1)
        {
          sub_20B4EC();
        }

        v279 = *v278;
        if (v379 != *v278)
        {
          v285 = sub_5544(14);
          v286 = *v285;
          if (*v285)
          {
            if (os_log_type_enabled(*v285, OS_LOG_TYPE_ERROR))
            {
              sub_22170(v425, v279);
              v287 = v425[23];
              v288 = *v425;
              sub_22170(&p_isa, v379);
              if (v287 >= 0)
              {
                v289 = v425;
              }

              else
              {
                v289 = v288;
              }

              v290 = &p_isa;
              if (SHIBYTE(v429) < 0)
              {
                v290 = p_isa;
              }

              *v433 = v369;
              *&v433[4] = "RouteUtilities.cpp";
              *&v433[12] = 1024;
              *&v433[14] = 632;
              *&v433[18] = 2048;
              *&v433[20] = v276;
              *&v433[28] = 2080;
              *&v433[30] = v289;
              *&v433[38] = 2080;
              *&v433[40] = v290;
              _os_log_impl(&dword_0, v286, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Type for config at %p ('%s') does not match master config's type ('%s')", v433, 0x30u);
              if (SHIBYTE(v429) < 0)
              {
                operator delete(p_isa);
              }

              v43 = v380;
              if ((v425[23] & 0x80000000) != 0)
              {
                operator delete(*v425);
              }
            }
          }
        }
      }

      v280 = sub_130F70(v276, 1685086576);
      if (v280)
      {
        v281 = v280[3];
        if (v281)
        {
          v282 = *(v281 + 40);
          if (v282 == 7)
          {
            for (m = *(v281 + 16); m; m = *m)
            {
              v284 = m[3];
              if (*(v284 + 10) != 2)
              {
                sub_20B4EC();
              }

              (*(*v384 + 80))(v384, *(m + 4), 0, 0, *v284);
            }
          }

          else if (v282 == 5)
          {
            *v433 = *v281;
            (*(*v384 + 104))(v384, v433);
          }
        }
      }

      ++v274;
    }

    v291 = sub_130F70(v373, 1684171107);
    if (v291)
    {
      v292 = v291[3];
      if (v292[10] != 1)
      {
        sub_20B4EC();
      }

      (*(*v384 + 240))(v384, 1, *v292);
    }

    v293 = sub_130F70(v373, 1684172643);
    if (v293)
    {
      v294 = v293[3];
      if (v294[10] != 1)
      {
        sub_20B4EC();
      }

      (*(*v384 + 240))(v384, 2, *v294);
    }

    v295 = sub_130F70(v373, 1685088623);
    if (v295)
    {
      v296 = v295[3];
      if (*(v296 + 40) != 7)
      {
        sub_20B4EC();
      }

      for (n = *(v296 + 16); n; n = *n)
      {
        v298 = n[3];
        if (*(v298 + 10) != 8)
        {
          sub_20B4EC();
        }

        v299 = *(n + 4);
        if (v298[2] != 2)
        {
          v303 = sub_5544(14);
          v304 = *v303;
          if (*v303)
          {
            if (os_log_type_enabled(*v303, OS_LOG_TYPE_ERROR))
            {
              *v433 = v359;
              *&v433[4] = "RouteUtilities.cpp";
              *&v433[12] = 1024;
              *&v433[14] = 693;
              _os_log_impl(&dword_0, v304, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid channel list size", v433, 0x12u);
            }
          }
        }

        v300 = *(v298[1] + 16);
        if (v300[10] != 1)
        {
          sub_20B4EC();
        }

        v301 = *(*v298 + 16);
        if (v301[10] != 1)
        {
          sub_20B4EC();
        }

        v302 = *v301;
        if (*v300)
        {
          (*(*v384 + 248))(v384, 1, v299);
        }

        if (v302)
        {
          (*(*v384 + 248))(v384, 2, v299, v302);
        }
      }
    }

    v305 = sub_130F70(v373, 1970496883);
    if (v305)
    {
      v306 = v305[3];
      if (*(v306 + 40) != 4)
      {
        sub_20B4EC();
      }

      v307 = *v306;
      if (*v306)
      {
        if (v388 == 1)
        {
          if (v386 != v307)
          {
            v387 = *(v307 + 32);
            sub_1360DC(v386, *(v307 + 16));
          }
        }

        else
        {
          sub_DDBBC(v386, v307);
          v388 = 1;
        }
      }
    }

    v308 = *v368;
    if (*v368)
    {
      v382 = v384;
      v383 = v385;
      if (v385)
      {
        atomic_fetch_add_explicit(&v385->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v309 = (*(*v308 + 24))(v308, &v382);
      if (v383)
      {
        sub_1A8C0(v383);
      }

      if (v309)
      {
        v310 = sub_5544(21);
        v311 = *v310;
        if (*v310)
        {
          if (os_log_type_enabled(*v310, OS_LOG_TYPE_ERROR))
          {
            *v433 = v366;
            *&v433[4] = "RouteUtilities.cpp";
            *&v433[12] = 1024;
            *&v433[14] = 726;
            *&v433[18] = 1024;
            *&v433[20] = v309;
            _os_log_impl(&dword_0, v311, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %u adding DSP processor", v433, 0x18u);
          }
        }
      }
    }

    if (v385)
    {
      sub_1A8C0(v385);
    }

    v45 = (v370 + 3);
  }

  while (v370 + 3 != v365);
  if (v308)
  {
    if (v374 != v378)
    {
      v428 = 0;
      p_isa = 0;
      v429 = 0;
      sub_135DFC(&p_isa, v374, v378, v378 - v374);
      v315 = v308[2];
      *v433 = v308[1];
      *&v433[8] = v315;
      if (v315)
      {
        atomic_fetch_add_explicit((v315 + 16), 1uLL, memory_order_relaxed);
      }

      memset(&v433[16], 0, 24);
      sub_135DFC(&v433[16], p_isa, v428, (v428 - p_isa) >> 3);
      *&v425[24] = 0;
      operator new();
    }

    if (((v363 > 0xFFu) & v363) != 0)
    {
      v322 = *(*v368 + 8);
      v321 = *(*v368 + 16);
      if (v321)
      {
        atomic_fetch_add_explicit((v321 + 16), 1uLL, memory_order_relaxed);
      }

      *v433 = off_6C0440;
      *&v433[8] = v322;
      *&v433[16] = v321;
      *&v433[24] = v433;
      operator new();
    }

    if (((v362 > 0xFFu) & v362) != 0)
    {
      v323 = *v368;
      if (*(*v368 + 735) < 0)
      {
        sub_54A0(v433, *(v323 + 712), *(v323 + 720));
      }

      else
      {
        *v433 = *(v323 + 712);
        *&v433[16] = *(v323 + 728);
      }

      v324 = *(v323 + 16);
      v414 = *(v323 + 8);
      v415 = v324;
      if (v324)
      {
        atomic_fetch_add_explicit((v324 + 16), 1uLL, memory_order_relaxed);
      }

      sub_37D2FC();
    }

    v325 = v367;
    if (v367 && (v326 = *(*v368 + 1080), *(*v368 + 1080) = v367, CFRetain(v325), v326))
    {
      CFRelease(v326);
      v316 = v368;
    }

    else
    {
      v316 = v368;
    }

LABEL_719:
    std::string::operator=(*v316 + 31, (v43 + 144));
    v327 = *v368;
    v328 = (*v368 + 768);
    if (v328 != a3)
    {
      sub_136004(v328, a3[1], a3);
    }

    if (v388 == 1 && (v327 + 1008) != v386)
    {
      *(v327 + 1040) = v387;
      sub_1360DC((v327 + 1008), v386[2]);
    }

    v329 = 0;
    v330 = *v358;
    if (*v358 > 1919776354)
    {
      if (v330 > 1987081832)
      {
        if (v330 == 1987081833)
        {
          goto LABEL_738;
        }

        v332 = 30319;
      }

      else
      {
        if (v330 == 1919776355)
        {
          goto LABEL_738;
        }

        v332 = 26467;
      }

      v331 = v332 | 0x76700000;
      goto LABEL_736;
    }

    if (v330 > 1768779618)
    {
      if (v330 != 1768779619)
      {
        v331 = 1768781411;
        goto LABEL_736;
      }
    }

    else if (v330 != 1735222132)
    {
      v331 = 1768057203;
LABEL_736:
      if (v330 != v331)
      {
        v329 = 1;
      }
    }

LABEL_738:
    *(v327 + 798) = v329;
    v333 = sub_5544(25);
    if ((*(v333 + 8) & 1) != 0 && *v333 && os_log_type_enabled(*v333, OS_LOG_TYPE_DEBUG))
    {
      sub_649C8(v327);
      sub_618A4(v425);
    }
  }

  if (v367)
  {
    CFRelease(v367);
  }

LABEL_744:
  if (v388 == 1)
  {
    sub_DDE50(v386);
  }

  if (v374)
  {
    operator delete(v374);
  }

  if (SHIBYTE(v389.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v389.__r_.__value_.__l.__data_);
  }
}

void sub_130278(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_701650);
  v3 = *(v1 + 312);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  v4 = *(v1 + 144);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(v1 + 360) == 1)
  {
    sub_DDE50(v1 + 320);
  }

  v5 = *(v1 + 216);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(*(v1 + 152) + 8);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_130F70(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_131024(uint64_t a1, unsigned int a2)
{
  v26 = a2;
  if ((atomic_load_explicit(&qword_6EB130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EB130))
  {
    byte_6EB128 = _os_feature_enabled_impl();
    __cxa_guard_release(&qword_6EB130);
  }

  v3 = v26;
  if (v26 == 1685287015)
  {
    if (sub_3115C4())
    {
      v4 = sub_5544(25);
      v5 = *v4;
      v3 = 1685287015;
      if (*v4)
      {
        v6 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
        v3 = 1685287015;
        if (v6)
        {
          *buf = 136315394;
          *&buf[4] = "DSPProcessorManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 179;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using AUDSPGraph 2.0", buf, 0x12u);
          v3 = v26;
        }
      }
    }

    else
    {
      if ((byte_6EB128 & 1) == 0)
      {
        v7 = sub_5544(25);
        v8 = *v7;
        if (*v7)
        {
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "DSPProcessorManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 184;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using AUDSPGraph 1.0 (AUDSPGraph 2.0 is disabled)", buf, 0x12u);
          }
        }
      }

      v9 = sub_5544(25);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "DSPProcessorManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 186;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using AUDSPGraph 1.0", buf, 0x12u);
      }

      v3 = 1685286961;
      v26 = 1685286961;
    }
  }

  *buf = &v26;
  v11 = sub_12A8D8(a1 + 8, v3)[5];
  if (v11)
  {
    __p = 0;
    v22 = 0uLL;
    v23 = 0;
    v24 = 0u;
    v25 = 0u;
    memset(&v17, 0, sizeof(v17));
    v16 = v11;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    AudioComponentGetDescription(v11, &v17);
    memset(buf, 0, 28);
    v29 = 0;
    v30 = 0;
    v28 = 0;
    sub_1318F0(buf, &v16);
    operator new();
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_22170(&__p, v26);
    if (v22 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315650;
    *&buf[4] = "DSPProcessorManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 193;
    *&buf[18] = 2080;
    *&buf[20] = p_p;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [component is NULL]: Unable to instantiate DSPProcessor. Type ID %s not found.", buf, 0x1Cu);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Unable to instantiate DSPProcessor. Type ID %s not found.");
}

void sub_13187C(uint64_t a1, int a2)
{
  if (a2)
  {
    operator delete();
  }

  JUMPOUT(0x131874);
}

uint64_t sub_1318F0(uint64_t a1, uint64_t a2)
{
  sub_12500C(a1);
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v4;
  v5 = *(a2 + 32);
  if (v5)
  {
    *(a1 + 32) = v5;
    CFRetain(v5);
  }

  v6 = *(a2 + 40);
  if (v6)
  {
    *(a1 + 40) = v6;
    CFRetain(v6);
  }

  v7 = *(a2 + 48);
  if (v7)
  {
    *(a1 + 48) = v7;
    CFRetain(v7);
  }

  return a1;
}

uint64_t sub_131964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  if (v3 != v4)
  {
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
      }

      v4 = *(a2 + 56);
    }

    *(a1 + 56) = v4;
    if (v4)
    {
      atomic_fetch_add(v4 + 2, 1u);
    }

    sub_1318F0(a1, a2);
  }

  return a1;
}

uint64_t sub_1319FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  *a1 = off_6C3528;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  sub_131964(a1 + 16, a3);
  *(a1 + 88) = 0u;
  *(a1 + 80) = a4;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 4096;
  *(a1 + 140) = a5 & 1;
  v10 = *(a3 + 56);
  if (v10)
  {
    v11 = *(v10 + 16);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 141) = AudioComponentInstanceCanDo(v11, 21) != 0;
  *(a1 + 142) = 0;
  if (!a2)
  {
    v37 = sub_5544(14);
    v38 = *v37;
    if (*v37)
    {
      if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "DSPProcessorManager.cpp";
        v46 = 1024;
        v47 = 411;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid DSP processor instance ID", buf, 0x12u);
      }
    }
  }

  if (!a4)
  {
    v39 = sub_5544(14);
    v40 = *v39;
    if (*v39)
    {
      if (os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v45 = "DSPProcessorManager.cpp";
        v46 = 1024;
        v47 = 412;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid AudioComponent object", buf, 0x12u);
      }
    }
  }

  inData = 0;
  v12 = *(a1 + 72);
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = 0;
  }

  if (AudioUnitSetProperty(v13, 0x33u, 1u, 0, &inData, 4u))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "DSPProcessorManager.cpp";
      v46 = 1024;
      v47 = 418;
LABEL_24:
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v16 = *(a1 + 72);
  if (v16)
  {
    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  if (AudioUnitSetProperty(v17, 0x33u, 2u, 0, &inData, 4u))
  {
    v18 = sub_5544(14);
    v15 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "DSPProcessorManager.cpp";
      v46 = 1024;
      v47 = 419;
      goto LABEL_24;
    }

LABEL_25:
    v20 = sub_5544(25);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "DSPProcessorManager.cpp";
      v46 = 1024;
      v47 = 431;
      v22 = "%25s:%-5d Error while constructing the DSP instance";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
      v25 = 18;
LABEL_28:
      _os_log_impl(&dword_0, v23, v24, v22, buf, v25);
      return a1;
    }

    return a1;
  }

  if (sub_132030(*(a1 + 72), *(a1 + 136)))
  {
    v19 = sub_5544(14);
    v15 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v45 = "DSPProcessorManager.cpp";
      v46 = 1024;
      v47 = 421;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  sub_132070(a1, 1u);
  sub_132070(a1, 2u);
  v27 = sub_5544(25);
  if (*(v27 + 8))
  {
    v28 = *v27;
    if (*v27)
    {
      if (os_log_type_enabled(*v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = (*(*a1 + 160))(a1);
        sub_22170(__p, v29);
        if (v42 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        v31 = *(a1 + 8);
        v32 = *(a1 + 140);
        *buf = 136316162;
        v45 = "DSPProcessorManager.cpp";
        v46 = 1024;
        v47 = 426;
        v48 = 2080;
        v49 = v30;
        v50 = 1024;
        *v51 = v31;
        *&v51[4] = 1024;
        *&v51[6] = v32;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Processor of type '%s' with ID %u is enhancement processor: %u", buf, 0x28u);
        if (v42 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v33 = sub_5544(25);
  if (*(v33 + 8))
  {
    v34 = *v33;
    if (*v33)
    {
      if (os_log_type_enabled(*v33, OS_LOG_TYPE_DEBUG))
      {
        v35 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - *(a1 + 88)) >> 4);
        v36 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 120) - *(a1 + 112)) >> 4);
        *buf = 136315906;
        v45 = "DSPProcessorManager.cpp";
        v46 = 1024;
        v47 = 427;
        v48 = 2048;
        v49 = v35;
        v50 = 2048;
        *v51 = v36;
        v22 = "%25s:%-5d # of InputFmts: %lu, # of OutputFmts: %lu";
        v23 = v34;
        v24 = OS_LOG_TYPE_DEBUG;
        v25 = 38;
        goto LABEL_28;
      }
    }
  }

  return a1;
}

void sub_131FB4(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    v1[15] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[12] = v6;
    operator delete(v6);
  }

  sub_129378(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_132030(OpaqueAudioComponentInstance *a1, int a2)
{
  inData = a2;
  if (a1)
  {
    a1 = *(a1 + 2);
  }

  return AudioUnitSetProperty(a1, 0xEu, 0, 0, &inData, 4u);
}

void sub_132070(uint64_t a1, AudioUnitScope inScope)
{
  if (inScope == 1)
  {
    v4 = 88;
  }

  else
  {
    v4 = 112;
  }

  outData = 0;
  ioDataSize[0] = 4;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  if (AudioUnitGetProperty(v6, 0xBu, inScope, 0, &outData, ioDataSize))
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      ioDataSize[0] = 136315394;
      *&ioDataSize[1] = "DSPProcessorManager.cpp";
      LOWORD(ioDataSize[3]) = 1024;
      *(&ioDataSize[3] + 2) = 850;
      v9 = ioDataSize;
LABEL_11:
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", v9, 0x12u);
    }
  }

  else
  {
    v13 = a1 + v4;
    *(a1 + v4 + 8) = *(a1 + v4);
    if (!outData)
    {
      return;
    }

    v14 = 0;
    while (1)
    {
      v35 = 0;
      memset(ioDataSize, 0, sizeof(ioDataSize));
      *v32 = 40;
      v15 = *(a1 + 72);
      v16 = v15 ? *(v15 + 16) : 0;
      if (AudioUnitGetProperty(v16, 8u, inScope, v14, ioDataSize, v32))
      {
        break;
      }

      *v32 = *ioDataSize;
      *&v32[16] = *&ioDataSize[4];
      v33 = v35;
      v17 = *(v13 + 8);
      v18 = *(v13 + 16);
      if (v17 >= v18)
      {
        v22 = *v13;
        v23 = v17 - *v13;
        v24 = 0xAAAAAAAAAAAAAAABLL * (v23 >> 4) + 1;
        if (v24 > 0x555555555555555)
        {
          sub_189A00();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v22) >> 4);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x2AAAAAAAAAAAAAALL)
        {
          v26 = 0x555555555555555;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 <= 0x555555555555555)
          {
            operator new();
          }

          sub_6ACD8();
        }

        v27 = 16 * (v23 >> 4);
        v28 = *&v32[16];
        *v27 = *v32;
        *(v27 + 16) = v28;
        *(v27 + 32) = v33;
        *(v27 + 40) = 0;
        v21 = v27 + 48;
        v29 = v27 - v23;
        memcpy((v27 - v23), v22, v23);
        *v13 = v29;
        *(v13 + 8) = v21;
        *(v13 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        v19 = *ioDataSize;
        v20 = *&ioDataSize[4];
        *(v17 + 32) = v35;
        *v17 = v19;
        *(v17 + 16) = v20;
        *(v17 + 40) = 0;
        v21 = v17 + 48;
      }

      *(v13 + 8) = v21;
      if (++v14 >= outData)
      {
        return;
      }
    }

    v30 = sub_5544(14);
    v8 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      *v32 = 136315394;
      *&v32[4] = "DSPProcessorManager.cpp";
      *&v32[12] = 1024;
      *&v32[14] = 857;
      v9 = v32;
      goto LABEL_11;
    }
  }

  v10 = sub_5544(25);
  v11 = *v10;
  if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    v12 = "output";
    *&ioDataSize[1] = "DSPProcessorManager.cpp";
    ioDataSize[0] = 136315650;
    if (inScope == 1)
    {
      v12 = "input";
    }

    LOWORD(ioDataSize[3]) = 1024;
    *(&ioDataSize[3] + 2) = 862;
    HIWORD(ioDataSize[4]) = 2080;
    *&ioDataSize[5] = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while updating DSP instance bus %s formats", ioDataSize, 0x1Cu);
  }
}

uint64_t sub_13242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_5FB04(a2, a1) && sub_5FB04(a3, a1 + 40))
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v12 = *(a2 + 32);
  v8 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v8;
  v10 = *(a3 + 32);
  return sub_8C708(a1, v11, v9);
}

void sub_1324BC(uint64_t a1)
{
  std::recursive_mutex::lock((a1 + 888));
  for (i = qword_6E9258; i != &qword_6E9250; i = i[1])
  {
    if (i[4] == a1)
    {
      i[4] = 0;
    }
  }

  v3 = *(a1 + 480);
  v47 = (a1 + 48);
  v48 = 1;
  sub_26C0(a1 + 48);
  v4 = *(a1 + 32) - *(a1 + 24);
  if (v4)
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v8 = 0;
      v9 = *(a1 + 24) + 24 * v5;
      v10 = 1;
      do
      {
        v11 = v8;
        v12 = *((*(**(v9 + 8) + 136))(*(v9 + 8), v10, 0) + 24);
        if (v12 > v3)
        {
          v3 = v12;
        }

        v10 = 2;
        v8 = 1;
      }

      while ((v11 & 1) == 0);
      ++v5;
    }

    while (v5 != v7);
  }

  sub_3174(a1 + 48);
  if (*(a1 + 448))
  {
    goto LABEL_25;
  }

  if (!*(a1 + 584) && !*(a1 + 672))
  {
    v13 = *(a1 + 1160);
    if ((!v13 || (*(v13 + 104) & 1) == 0) && !*(a1 + 1168) && *(a1 + 800) != 1)
    {
      goto LABEL_57;
    }
  }

  v14 = *(a1 + 1160);
  if (!v14)
  {
LABEL_25:
    v16 = sub_8E078(a1);
    sub_658AC(&v47, v16);
    sub_5D7F4((a1 + 952), &v47);
    sub_5D988(&v47);
  }

  else
  {
    if ((*(v14 + 156) & 0x20) != 0)
    {
      v15 = *(v14 + 172);
    }

    else
    {
      v15 = 1;
    }

    sub_658AC(&v47, v15);
    sub_5D7F4((a1 + 952), &v47);
    sub_5D988(&v47);
    v3 = *(*(a1 + 1160) + 168);
  }

  v17 = v3 << 12;
  if (**(a1 + 952))
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v20 = sub_132D68(a1, v17);
      v21 = *(a1 + 952);
      v22 = &v21[v18];
      *(v22 + 2) = v20;
      v22[3] = v17;
      if ((*(a1 + 468) & 0x20) != 0)
      {
        v23 = 1;
      }

      else
      {
        v23 = *(a1 + 484);
      }

      v22[2] = v23;
      ++v19;
      v24 = *v21;
      v18 += 4;
    }

    while (v19 < v24);
    if (*v21)
    {
      v25 = 0;
      v26 = (v21 + 4);
      do
      {
        if (*v26)
        {
          bzero(*v26, *(v26 - 1));
          v24 = *v21;
        }

        ++v25;
        v26 += 2;
      }

      while (v25 < v24);
    }
  }

  if (*(a1 + 448) == 1)
  {
    v47 = (a1 + 48);
    v48 = 1;
    sub_26C0(a1 + 48);
    v27 = *(a1 + 32) - *(a1 + 24);
    if (v27)
    {
      v28 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 3);
      v29 = 1;
      v30 = 8;
      do
      {
        v31 = (*(**(*(a1 + 24) + v30) + 224))(*(*(a1 + 24) + v30));
        v32 = v29++ >= v28;
        v30 += 24;
      }

      while (((v32 | v31) & 1) == 0);
    }

    else
    {
      v31 = 0;
    }

    sub_3174(a1 + 48);
    if (v31)
    {
      v33 = sub_8E078(a1);
      sub_658AC(&v47, v33);
      sub_5D7F4((a1 + 968), &v47);
      sub_5D988(&v47);
      if (**(a1 + 968))
      {
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = sub_132D68(a1, v17);
          v37 = *(a1 + 968);
          v38 = &v37[v34];
          *(v38 + 2) = v36;
          v38[3] = v17;
          if ((*(a1 + 468) & 0x20) != 0)
          {
            v39 = 1;
          }

          else
          {
            v39 = *(a1 + 484);
          }

          v38[2] = v39;
          ++v35;
          v40 = *v37;
          v34 += 4;
        }

        while (v35 < v40);
        if (*v37)
        {
          v41 = 0;
          v42 = (v37 + 4);
          do
          {
            if (*v42)
            {
              bzero(*v42, *(v42 - 1));
              v40 = *v37;
            }

            ++v41;
            v42 += 2;
          }

          while (v41 < v40);
        }
      }
    }
  }

LABEL_57:
  v43 = qword_6E9258;
  if (qword_6E9258 != &qword_6E9250)
  {
    do
    {
      if (v43[4])
      {
        v44 = v43[1];
      }

      else
      {
        v44 = v43[1];
        v45 = v43[2];
        v46 = *v43;
        *(v46 + 8) = v44;
        *v44 = v46;
        --qword_6E9260;
        operator delete(v43);
        if (v45)
        {
          free(v45);
        }
      }

      v43 = v44;
    }

    while (v44 != &qword_6E9250);
  }

  std::recursive_mutex::unlock((a1 + 888));
}

void sub_1328D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int *a9)
{
  sub_5D988(&a9);
  std::recursive_mutex::unlock((v9 + 888));
  _Unwind_Resume(a1);
}

void sub_132938(uint64_t a1, unsigned int **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 4;
      sub_5D988(v4 - 2);
      sub_5D988(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void sub_132994(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1[117] & 0xFFFFFFFELL) == 2)
  {
    sub_8D290(&v21, a1 + 118, "", 705);
    v6 = v21;
    if ((*(*v21 + 88))(v21, 0) > *(a1[123] + 4))
    {
      v7 = (*(*v6 + 96))(v6, 0);
      (*(*v7 + 120))(v7, a1[126] + 40);
      *(a1[126] + 40) = (*(*a1 + 104))(a1);
      sub_61EEC(a1, 0);
      v8 = *(a4 + 16);
      *buf = *a4;
      *&buf[16] = v8;
      v23 = *(a4 + 32);
      v9 = a1[126];
      v10 = *(v9 + 72);
      v11 = *(v9 + 56);
      v24 = *(v9 + 40);
      v25 = v11;
      v26 = v10;
      v19 = 0;
      v20 = 0;
      __p = 0;
      sub_638B0();
    }

    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_Simple.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 706;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v12 = sub_5544(14);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AggregateDevice_Simple.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 703;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v14, "Precondition failure.");
}

void sub_132D04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  __cxa_free_exception(v14);
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_132D68(uint64_t a1, size_t size)
{
  if (!a1)
  {
    v7 = sub_5544(14);
    v8 = sub_468EC(1, *v7, *(v7 + 8));
    v9 = v8;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "DSPChain.mm";
      v17 = 1024;
      v18 = 126;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [inOwner is NULL]: specified buffer owner is NULL", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "specified buffer owner is NULL");
  }

  if (!size)
  {
    v11 = sub_5544(14);
    v12 = sub_468EC(1, *v11, *(v11 + 8));
    v13 = v12;
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "DSPChain.mm";
      v17 = 1024;
      v18 = 127;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): specified buffer size is 0", &v15, 0x12u);
    }

    v14 = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(v14, "specified buffer size is 0");
  }

  v2 = &qword_6E9258;
  do
  {
    v3 = *v2;
    if (v3 == &qword_6E9250)
    {
      malloc_type_malloc(size, 0x5E1221FEuLL);
      operator new();
    }

    if (*(v3 + 32))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v3 + 24) >= size;
    }

    if (v4)
    {
      v5 = *(v3 + 16);
      *(v3 + 32) = a1;
    }

    else
    {
      v5 = 0;
    }

    v2 = (v3 + 8);
  }

  while (!v5);
  return v5;
}

uint64_t sub_13300C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_5D7F4(a1, a2);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_5D7F4((a1 + 16), a2 + 16);
  return a1;
}

NSObject *sub_133068(uint64_t a1)
{
  if (*(a1 + 142) == 1)
  {
    v1 = sub_5544(25);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 450;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Skipping initialization because the AU is already initialized.", buf, 0x12u);
      }

      return 0;
    }
  }

  else
  {
    v4 = *(a1 + 72);
    if (v4)
    {
      v5 = *(v4 + 16);
    }

    else
    {
      v5 = 0;
    }

    v2 = AudioUnitInitialize(v5);
    if (v2)
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 454;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
      }

      v8 = sub_5544(25);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = (*(*a1 + 160))(a1);
        sub_22170(__p, v10);
        v11 = v14 >= 0 ? __p : __p[0];
        *buf = 136315906;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 458;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = v2;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Processor initialization of type '%s' failed with error: %d", buf, 0x22u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      *(a1 + 142) = 1;
    }
  }

  return v2;
}

uint64_t sub_1332B8(uint64_t a1, uint64_t *a2)
{
  sub_13330C(v5, a2);
  sub_13242C(a1, a2, v5);
  return sub_13242C(a1 + 88, v5, a2);
}

uint64_t sub_13330C(uint64_t result, uint64_t *a2)
{
  v2 = *(a2 + 3);
  if ((v2 & 0x20) != 0)
  {
    v16 = *(a2 + 1);
    *result = *a2;
    *(result + 16) = v16;
    *(result + 32) = a2[4];
    return result;
  }

  if (*(a2 + 2) != 1819304813 || *(a2 + 5) != 1)
  {
    goto LABEL_38;
  }

  v4 = *(a2 + 6);
  if (v4 != *(a2 + 4))
  {
    goto LABEL_38;
  }

  v5 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v4 < v6 >> 3 || v5 == 0)
  {
    goto LABEL_38;
  }

  v8 = v4 / v5;
  if (v4 != v4 / v5 * v5)
  {
    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  if ((v2 & 2) != 0 || 8 * v8 != v6)
  {
    goto LABEL_36;
  }

  v12 = *a2;
  if (v2)
  {
    if ((v2 & 0x1F84) == 0)
    {
      if (v8 == 4)
      {
        v17 = &unk_517000;
        v14 = 32;
      }

      else
      {
        if (v8 != 8)
        {
          goto LABEL_25;
        }

        v17 = &unk_517000;
        v14 = 64;
      }

      v10 = v17[464];
      v15 = 1;
      v11 = *a2;
      v9 = v8;
      goto LABEL_28;
    }

LABEL_38:
    sub_1EC054();
  }

  if ((v2 & 4) != 0)
  {
    v13 = (v2 >> 7) & 0x3F;
    if (v13 == 24 && v8 == 4)
    {
      v14 = 32;
      v10 = 0xC2C6C70636DLL;
      v15 = 1;
      v9 = 4;
      v11 = *a2;
LABEL_28:
      v18 = *(a2 + 7);
      goto LABEL_37;
    }

    if (!v13 && v8 == 4)
    {
      v14 = 32;
      v15 = 1;
      v9 = 4;
      goto LABEL_35;
    }

    v9 = 0;
    if (!v13)
    {
      v15 = 0;
      v18 = 0;
      v14 = 0;
      if (v8 != 2)
      {
        goto LABEL_37;
      }

      v14 = 16;
      v15 = 1;
      v9 = 2;
LABEL_35:
      v11 = *a2;
      v18 = *(a2 + 7);
      v10 = 0x2C6C70636DLL;
      goto LABEL_37;
    }

LABEL_36:
    v15 = 0;
    v18 = 0;
    v14 = 0;
    goto LABEL_37;
  }

LABEL_25:
  v9 = 0;
  v15 = 0;
  v18 = 0;
  v14 = 0;
LABEL_37:
  *result = v11;
  *(result + 8) = v10;
  *(result + 16) = v9;
  *(result + 20) = v15;
  *(result + 24) = v9;
  *(result + 28) = v18;
  *(result + 32) = v14;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_1334B4(uint64_t result)
{
  if (*(result + 8) == 1)
  {
    v1 = result;
    v2 = *result;
    result = ExtendedAudioBufferList_Destroy();
    *(v1 + 8) = 0;
  }

  return result;
}

uint64_t sub_1334F0(void *a1, AudioUnitScope inScope, AudioUnitElement a3, int a4)
{
  if (inScope - 3 <= 0xFFFFFFFD)
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      ioDataSize[0] = 136315394;
      *&ioDataSize[1] = "DSPProcessorManager.cpp";
      LOWORD(ioDataSize[3]) = 1024;
      *(&ioDataSize[3] + 2) = 711;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", ioDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  outData = 0;
  ioDataSize[0] = 4;
  v8 = a1[9];
  if (v8)
  {
    v9 = *(v8 + 16);
  }

  else
  {
    v9 = 0;
  }

  Property = AudioUnitGetProperty(v9, 0xBu, inScope, 0, &outData, ioDataSize);
  if (Property)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      ioDataSize[0] = 136315394;
      *&ioDataSize[1] = "DSPProcessorManager.cpp";
      LOWORD(ioDataSize[3]) = 1024;
      *(&ioDataSize[3] + 2) = 714;
LABEL_26:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", ioDataSize, 0x12u);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (outData <= a3)
  {
    v33 = sub_5544(14);
    v34 = *v33;
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      ioDataSize[0] = 136315650;
      *&ioDataSize[1] = "DSPProcessorManager.cpp";
      LOWORD(ioDataSize[3]) = 1024;
      *(&ioDataSize[3] + 2) = 715;
      HIWORD(ioDataSize[4]) = 1024;
      ioDataSize[5] = inScope;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement cannot exceed bus count for scope: %u", ioDataSize, 0x18u);
    }

    v35 = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(v35, "inElement cannot exceed bus count for scope: %u");
  }

  v13 = 14;
  if (inScope == 1)
  {
    v13 = 11;
  }

  v14 = &a1[v13];
  v15 = a1[v13];
  if (0xAAAAAAAAAAAAAAABLL * ((v14[1] - v15) >> 4) <= a3)
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      ioDataSize[0] = 136315650;
      *&ioDataSize[1] = "DSPProcessorManager.cpp";
      LOWORD(ioDataSize[3]) = 1024;
      *(&ioDataSize[3] + 2) = 720;
      HIWORD(ioDataSize[4]) = 1024;
      ioDataSize[5] = inScope;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement cannot exceed bus count for scope: %u", ioDataSize, 0x18u);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(v38, "inElement cannot exceed bus count for scope: %u");
  }

  v16 = v15 + 48 * a3;
  if (*(v16 + 28) == a4)
  {
LABEL_14:
    Property = 0;
    *(v15 + 48 * a3 + 40) = 1;
    return Property;
  }

  memset(ioDataSize, 0, 40);
  v41[0] = 40;
  v17 = a1[9];
  if (v17)
  {
    v18 = *(v17 + 16);
  }

  else
  {
    v18 = 0;
  }

  Property = AudioUnitGetProperty(v18, 8u, inScope, a3, ioDataSize, v41);
  if (!Property)
  {
    sub_EB5C4(ioDataSize, a4, (ioDataSize[3] & 0x20) == 0);
    v19 = a1[9];
    v20 = v19 ? *(v19 + 16) : 0;
    Property = AudioUnitSetProperty(v20, 8u, inScope, a3, ioDataSize, 0x28u);
    if (!Property)
    {
      sub_EB5C4(v16, a4, (*(v16 + 12) & 0x20) == 0);
      v15 = *v14;
      goto LABEL_14;
    }
  }

  v21 = sub_5544(14);
  v12 = *v21;
  if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
  {
    ioDataSize[0] = 136315394;
    *&ioDataSize[1] = "DSPProcessorManager.cpp";
    LOWORD(ioDataSize[3]) = 1024;
    *(&ioDataSize[3] + 2) = 727;
    goto LABEL_26;
  }

LABEL_27:
  v22 = sub_5544(25);
  v23 = *v22;
  if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
  {
    v24 = (*(*a1 + 160))(a1);
    sub_22170(v41, v24);
    v25 = v42;
    v26 = *v41;
    sub_22170(__p, Property);
    v27 = v41;
    if (v25 < 0)
    {
      v27 = v26;
    }

    if (v40 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    ioDataSize[0] = 136316162;
    *&ioDataSize[1] = "DSPProcessorManager.cpp";
    LOWORD(ioDataSize[3]) = 1024;
    *(&ioDataSize[3] + 2) = 738;
    HIWORD(ioDataSize[4]) = 2080;
    *&ioDataSize[5] = v27;
    LOWORD(ioDataSize[7]) = 1024;
    *(&ioDataSize[7] + 2) = Property;
    HIWORD(ioDataSize[8]) = 2080;
    *&ioDataSize[9] = v28;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d DSP (%s) static channel setup failed with error: (%d) %s", ioDataSize, 0x2Cu);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (v42 < 0)
    {
      operator delete(*v41);
    }
  }

  return Property;
}

void sub_133AF0(void ***a1)
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
        v4 -= 144;
        sub_2C9A90(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_133B74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_133B84(uint64_t a1)
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

uint64_t sub_133C04(uint64_t a1)
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

NSObject *sub_133C84(uint64_t a1)
{
  if (*(a1 + 142))
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = *(v2 + 16);
    }

    else
    {
      v3 = 0;
    }

    v5 = AudioUnitUninitialize(v3);
    if (v5)
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 473;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
      }

      v8 = sub_5544(25);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = (*(*a1 + 160))(a1);
        sub_22170(__p, v10);
        if (v14 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136315906;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 477;
        v19 = 2080;
        v20 = v11;
        v21 = 1024;
        v22 = v5;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Processor un-initialization of type '%s' failed with error: %d", buf, 0x22u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      *(a1 + 142) = 0;
    }
  }

  else
  {
    v4 = sub_5544(25);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v16 = "DSPProcessorManager.cpp";
        v17 = 1024;
        v18 = 468;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Skipping uninitialization because the AU is already uninitialized.", buf, 0x12u);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_133ECC(void *a1, AudioUnitScope a2, AudioUnitElement a3, __int128 *a4)
{
  if (a2 - 3 <= 0xFFFFFFFD)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "DSPProcessorManager.cpp";
      v40 = 1024;
      v41 = 643;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  v7 = 14;
  if (a2 == 1)
  {
    v7 = 11;
  }

  v8 = &a1[v7];
  v9 = a1[v7];
  if (0xAAAAAAAAAAAAAAABLL * ((v8[1] - v9) >> 4) <= a3)
  {
    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v33 = -1431655765 * ((v8[1] - *v8) >> 4);
      *buf = 136316162;
      v39 = "DSPProcessorManager.cpp";
      v40 = 1024;
      v41 = 647;
      v42 = 1024;
      v43 = a3;
      v44 = 1024;
      v45 = v33;
      v46 = 1024;
      v47 = a2;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): inElement (%u) cannot exceed bus count (%u) for scope: %u", buf, 0x24u);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(v34, "inElement (%u) cannot exceed bus count (%u) for scope: %u");
  }

  v12 = v9 + 48 * a3;
  if (*(v12 + 40) == 1)
  {
    if (*v12 != *a4 || *(v12 + 8) != *(a4 + 2) || *(v12 + 12) != *(a4 + 3))
    {
      v13 = v9 + 48 * a3;
LABEL_13:
      v15 = *(v13 + 28);
      v17 = *a4;
      v16 = a4[1];
      *(v13 + 32) = *(a4 + 4);
      *v13 = v17;
      *(v13 + 16) = v16;
      sub_EB5C4(v13, v15, (*(v13 + 12) & 0x20) == 0);
      goto LABEL_14;
    }

    return 0;
  }

  if (sub_136868(v12, a4, 3u))
  {
    return 0;
  }

  v13 = *v8 + 48 * a3;
  if (*(v13 + 40))
  {
    goto LABEL_13;
  }

  v26 = *a4;
  v27 = a4[1];
  *(v13 + 32) = *(a4 + 4);
  *v13 = v26;
  *(v13 + 16) = v27;
LABEL_14:
  v18 = a1[9];
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = 0;
  }

  v14 = AudioUnitSetProperty(v19, 8u, a2, a3, (*v8 + 48 * a3), 0x28u);
  if (v14)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v39 = "DSPProcessorManager.cpp";
      v40 = 1024;
      v41 = 653;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", buf, 0x12u);
    }

    v22 = sub_5544(25);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v23 = (*(*a1 + 160))(a1);
      sub_22170(&v37, v23);
      sub_22170(&v36, v14);
      v24 = *v8;
      sub_618A4(&__p);
    }
  }

  return v14;
}

void sub_1343B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_134404(_BYTE *a1, _BYTE *a2, int a3)
{
  if (a1 == a2)
  {
    v4 = a1;
  }

  else
  {
    v3 = 0;
    v4 = a1;
    do
    {
      if (*v4 == 2)
      {
        if (v3 == a3)
        {
          goto LABEL_9;
        }

        ++v3;
      }

      ++v4;
    }

    while (v4 != a2);
    v4 = a2;
  }

LABEL_9:
  if (v4 == a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AggregateDevice_Common.cpp";
      v11 = 1024;
      v12 = 862;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): No speaker input stream found", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "No speaker input stream found");
  }

  return (v4 - a1);
}

uint64_t sub_134564(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1345DC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 4664;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = atomic_load(v1 + 70);
  if (v3 != pthread_self())
  {
    v4 = atomic_load(v1 + 83);
    if (v4 != pthread_self())
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        v23 = 136315394;
        v24 = "VirtualAudio_Device.cpp";
        v25 = 1024;
        v26 = 4665;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v22, "Precondition failure.");
    }
  }

  if ((*(*v1 + 528))(v1))
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v23 = 136315394;
      v24 = "VirtualAudio_Device.cpp";
      v25 = 1024;
      v26 = 4666;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v23, 0x12u);
    }

    v19 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v19, "Precondition failure.");
  }

  v5 = 1;
  do
  {
    v6 = v5;
    v7 = (v5 & 1) == 0;
    if (v5)
    {
      v8 = 35;
    }

    else
    {
      v8 = 38;
    }

    if (v7)
    {
      v9 = 39;
    }

    else
    {
      v9 = 36;
    }

    v10 = &v1[v8];
    v11 = v1[v8];
    if (((v1[v9] - v11) & 0x7FFFFFFF8) != 0)
    {
      v12 = 0;
      do
      {
        if (v12 >= (v10[1] - v11) >> 3)
        {
          v13 = 0;
        }

        else
        {
          v13 = *(v11 + 8 * v12);
        }

        sub_164850(v13);
        ++v12;
        v11 = *v10;
      }

      while (v12 < ((v1[v9] - *v10) >> 3));
    }

    v5 = 0;
  }

  while ((v6 & 1) != 0);
}

void *sub_134980(void *result, int a2, char **a3)
{
  v5 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    while (1)
    {
      v6 = *v5;
      if (*v5)
      {
        if (*(v6 + 388) == a2 && *(v6 + 384) == result)
        {
          break;
        }
      }

      v5 += 8;
      if (v5 == v4)
      {
        v5 = a3[1];
        break;
      }
    }
  }

  v8 = v4 - (v5 + 8);
  if (v4 != v5 + 8)
  {
    result = memmove(v5, v5 + 8, v4 - (v5 + 8));
  }

  a3[1] = &v5[v8];
  return result;
}

void sub_134A00()
{
  if ((atomic_load_explicit(&qword_6F5AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F5AA0))
  {
    qword_6F5A50 = 0;
    qword_6F5A48 = &qword_6F5A50;
    qword_6F5A58 = 0;
    unk_6F5A60 = 850045863;
    xmmword_6F5A68 = 0u;
    unk_6F5A78 = 0u;
    xmmword_6F5A88 = 0u;
    qword_6F5A98 = 0;

    __cxa_guard_release(&qword_6F5AA0);
  }
}

uint64_t sub_134A80(_DWORD *a1)
{
  v2 = sub_8703C();
  result = (*(*v2 + 272))(v2);
  if (result)
  {
    if (sub_45168() || (result = sub_10AA80(), result))
    {
      if (*a1 == 1668576377 || *a1 == 1668703084)
      {
        return 1;
      }

      v5 = a1[1];
      result = 1;
      if (v5 <= 1987077986)
      {
        if (v5 == 1768057203)
        {
          return result;
        }

        v6 = 1919776355;
        goto LABEL_17;
      }

      if (v5 != 1987077987 && v5 != 1987081833)
      {
        v6 = 1987081839;
LABEL_17:
        if (v5 != v6)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_134B74(void *a1, unsigned int a2, uint64_t a3)
{
  sub_27A4();
  v24 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      v28 = 2356;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
LABEL_24:
    __cxa_throw(exception, v21, v20);
  }

  if (*(a3 + 16))
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "RoutingManager.cpp";
      v27 = 1024;
      v28 = 2358;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_24;
  }

  v7 = (*a1 + 8);
  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_11;
  }

  v9 = *a1 + 8;
  do
  {
    v10 = *(v8 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * v12);
  }

  while (v8);
  if (v9 != v7 && *(v9 + 32) <= a2)
  {
    v15 = 1667850851;
    if (*(v9 + 72) == 1667396196)
    {
      v15 = 0x163696263;
    }

    *buf = v15;
    LOBYTE(v26) = BYTE4(v15);
    sub_13A194(a3, 1667850851);
    v16 = *(v9 + 77);
    *buf = 1667854445;
    LOBYTE(v26) = v16;
    sub_13A194(a3, 1667854445);
    v13 = 0;
  }

  else
  {
LABEL_11:
    v13 = 2;
  }

  sub_210C50(&v24);
  return v13;
}

uint64_t sub_134E90(void *a1, uint64_t *a2)
{
  v4 = (a1 + 6);
  v10 = a1 + 6;
  v11 = 1;
  sub_47BD8((a1 + 6));
  v5 = a2[1];
  v8 = *a2;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(*a1 + 32))(a1, &v8, 0xAAAAAAAAAAAAAAABLL * ((a1[4] - a1[3]) >> 3));
  if (v9)
  {
    sub_1A8C0(v9);
  }

  sub_47C90(v4);
  return v6;
}

void sub_134F58(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    sub_1A8C0(a3);
  }

  sub_216C10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_134F78(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (sub_907D4(a1) >= 2)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "DSPGraphChain.cpp";
      v15 = 1024;
      v16 = 120;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Only one DSPProcessorInstance allowed in graph-based chain", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Only one DSPProcessorInstance allowed in graph-based chain");
  }

  v6 = *a2;
  v7 = a2[1];
  v12[0] = v6;
  v12[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1350F8(a1, v12, a3);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  return 0;
}

uint64_t sub_1350F8(uint64_t a1, void *a2, unint64_t a3)
{
  (*(**a2 + 144))(*a2, *(a1 + 496));
  if ((*(a1 + 449) & 1) == 0 && (*(**a2 + 216))())
  {
    (*(**a2 + 184))(*a2, 0);
  }

  v6 = (*(**a2 + 152))();
  v7 = *sub_5544(25);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = (*(**a2 + 168))();
      v11 = v10;
      if (v10)
      {
        v12 = CFGetTypeID(v10);
        if (v12 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      *buf = 136316162;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2106;
      *&buf[18] = 2112;
      *&buf[20] = v11;
      v40 = 1024;
      v41 = v6;
      v42 = 2048;
      v43 = a3;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding DSP processor of type %@ with instance ID %u at chain index %lu", buf, 0x2Cu);
      if (v11)
      {
        CFRelease(v11);
      }
    }
  }

  sub_47BD8(a1 + 48);
  v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3);
  if (v13 < a3)
  {
    v33 = sub_5544(14);
    v34 = sub_468EC(1, *v33, *(v33 + 8));
    v35 = v34;
    if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPChain.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2113;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Bad index into DSP chain.", buf, 0x12u);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v36, "Bad index into DSP chain.");
  }

  *&buf[2] = *(a1 + 680);
  *buf = *(a1 + 680);
  HIWORD(v38) = *(a1 + 680);
  LOWORD(v38) = HIWORD(v38) == 0;
  v14 = *buf;
  atomic_compare_exchange_strong((a1 + 680), &v14, v38);
  v15 = 400;
  if (!*(a1 + 680))
  {
    v15 = 424;
  }

  v16 = (a1 + v15);
  if (v13 <= a3)
  {
    sub_135A80(v16, *(a1 + 24), *(a1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 32) - *(a1 + 24)) >> 3));
    *buf = v6;
    v21 = a2[1];
    *&buf[8] = *a2;
    *&buf[16] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }

    sub_13595C(v16, buf);
    if (*&buf[16])
    {
      sub_1A8C0(*&buf[16]);
    }
  }

  else
  {
    sub_13E73C((a1 + v15));
    v17 = 0;
    v18 = 1;
    do
    {
      if (v17 == a3)
      {
        *buf = v6;
        v19 = a2[1];
        *&buf[8] = *a2;
        *&buf[16] = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        sub_13595C(v16, buf);
        if (*&buf[16])
        {
          sub_1A8C0(*&buf[16]);
        }
      }

      sub_2C3D3C(v16, *(a1 + 24) + 24 * v17);
      v17 = v18;
    }

    while (v13 > v18++);
  }

  sub_135A80((a1 + 24), *v16, v16[1], 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3));
  sub_47C90(a1 + 48);
  sub_135C94((a1 + 680));
  *(a1 + 448) = 1;
  v22 = *(a1 + 880);
  if (v22)
  {
    v23 = *a2;
    v24 = (*(*v23 + 176))(v23);
    *&buf[8] = 0;
    *buf = *v24;
    *&buf[8] = *(v24 + 8);
    *&buf[16] = v23;
    sub_37E5B8(v22, a3, buf);
    v25 = v22[2];
    if (AUPBRegisterAU())
    {
      v27 = v22[3];
      v26 = v22[4];
      if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3) > a3)
      {
        v28 = v27 + 24 * a3;
        v29 = v26 - (v28 + 24);
        if (v26 != v28 + 24)
        {
          memmove(v28, (v28 + 24), v26 - (v28 + 24));
        }

        v22[4] = v28 + v29;
      }
    }
  }

  if (*(a1 + 392) == 1)
  {
    v30 = *(a1 + 880);
    if (v30)
    {
      *buf = 1635087726;
      v31 = *(v30 + 16);
      AUPBPropertiesChanged();
    }
  }

  return 0;
}

void sub_1356CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_free_exception(v15);
  sub_1DB0E0(&a10);

  _Unwind_Resume(a1);
}

uint64_t sub_135764(uint64_t a1, int a2)
{
  if (*(a1 + 136) == a2)
  {
    return 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = *(v5 + 16);
  }

  else
  {
    v6 = 0;
  }

  v7 = AudioUnitUninitialize(v6);
  if (v7)
  {
    v2 = v7;
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "DSPProcessorManager.cpp";
      v18 = 1024;
      v19 = 671;
LABEL_21:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &v16, 0x12u);
    }
  }

  else
  {
    v10 = sub_132030(*(a1 + 72), a2);
    if (v10)
    {
      v2 = v10;
      v11 = sub_5544(14);
      v9 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "DSPProcessorManager.cpp";
        v18 = 1024;
        v19 = 673;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = *(a1 + 72);
      if (v12)
      {
        v13 = *(v12 + 16);
      }

      else
      {
        v13 = 0;
      }

      v2 = AudioUnitInitialize(v13);
      if (!v2)
      {
        *(a1 + 136) = a2;
        return v2;
      }

      v14 = sub_5544(14);
      v9 = *v14;
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "DSPProcessorManager.cpp";
        v18 = 1024;
        v19 = 675;
        goto LABEL_21;
      }
    }
  }

  return v2;
}

size_t *sub_13595C(size_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_189A00();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v15[4] = v2;
    if (v9)
    {
      sub_2C3ECC(v9);
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = 24 * v6 + 24;
    v11 = v2[1] - *v2;
    v12 = v10 - v11;
    memcpy((v10 - v11), *v2, v11);
    v13 = *v2;
    *v2 = v12;
    v2[1] = v5;
    v14 = v2[2];
    v2[2] = 0;
    v15[2] = v13;
    v15[3] = v14;
    v15[0] = v13;
    v15[1] = v13;
    result = sub_135C34(v15);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = v3 + 24;
  }

  v2[1] = v5;
  return result;
}

void sub_135A80(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      sub_13E73C(a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xAAAAAAAAAAAAAAALL)
      {
        sub_2C3ECC(v12);
      }
    }

    sub_189A00();
  }

  v13 = a1[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_2C3E7C(v9, v6);
        v6 += 24;
        v9 += 24;
      }

      while (v6 != a3);
      v13 = a1[1];
    }

    while (v13 != v9)
    {
      v16 = *(v13 - 8);
      if (v16)
      {
        sub_1A8C0(v16);
      }

      v13 -= 24;
    }

    a1[1] = v9;
  }

  else
  {
    if (v13 != v9)
    {
      v15 = a2 + v14;
      do
      {
        sub_2C3E7C(v9, v6);
        v6 += 24;
        v9 += 24;
        v14 -= 24;
      }

      while (v14);
      v13 = a1[1];
      v6 = v15;
    }

    a1[1] = sub_135DBC(a1, v6, a3, v13);
  }
}

uint64_t sub_135C34(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 24;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_1A8C0(v4);
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

void sub_135C94(atomic_uint *a1)
{
  HIWORD(v7) = *a1 == 0;
  LOWORD(v7) = *a1;
  HIWORD(v6) = HIWORD(v7);
  LOWORD(v6) = HIWORD(v7);
  v1 = v7;
  v2 = v7;
  atomic_compare_exchange_strong(a1, &v2, v6);
  if (v2 != v1)
  {
    v3 = sub_5544(14);
    v4 = sub_468EC(1, *v3, *(v3 + 8));
    v5 = v4;
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v9 = "AtomicUtils.h";
        v10 = 1024;
        v11 = 145;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: this shouldn't happen: failed to atomically swap banks.", buf, 0x12u);
      }
    }
  }
}

uint64_t sub_135DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (result = a4; a2 != a3; result += 24)
  {
    *result = *a2;
    v5 = *(a2 + 16);
    *(result + 8) = *(a2 + 8);
    *(result + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    a2 += 24;
  }

  return result;
}

uint64_t sub_135DFC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_45E90(result, a4);
  }

  return result;
}

void sub_135E54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_135E70(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_6C0440;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_135EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }
}

void sub_135FC4(void *a1)
{
  __cxa_begin_catch(a1);
  while (1)
  {
    v2 = *v1;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    v1 = v2;
    if (!v2)
    {
      __cxa_rethrow();
    }
  }
}

void sub_136004(void *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  if (a2 != a3 && v6 != a1)
  {
    do
    {
      v8 = v4[2];
      v7 = v4[3];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
      }

      v9 = v6[3];
      v6[2] = v8;
      v6[3] = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      v4 = v4[1];
      v6 = v6[1];
    }

    while (v4 != a3 && v6 != a1);
  }

  if (v6 == a1)
  {

    sub_135EA8(a1, a1, v4, a3);
  }

  else
  {

    sub_876E0(a1, v6, a1);
  }
}

void sub_1360DC(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 4);
      *(v6 + 4) = v7;
      *(v6 + 20) = *(a2 + 20);
      v8 = *v6;
      v6[1] = v7;
      v9 = sub_136230(a1, v7, v6 + 4);
      sub_136590(a1, v6, v9);
      a2 = *a2;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_1361EC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_136230(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_6ACD8();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && *(v18 + 4) == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *sub_136590(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t sub_136678(uint64_t a1)
{
  v2 = a1 + 48;
  sub_26C0(a1 + 48);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    v7 = 0;
  }

  else
  {
    v5 = v3 + 24;
    do
    {
      v14 = 0;
      v6 = (*(**(v5 - 16) + 256))(*(v5 - 16), 1, 0, &v14);
      if (v6)
      {
        v10 = sub_5544(14);
        v11 = sub_468EC(1, *v10, *(v10 + 8));
        v12 = v11;
        if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v16 = "DSPChain.mm";
          v17 = 1024;
          v18 = 1930;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stat) [error stat is an error]: Unexpected error from HasStaticChannelCountForBus", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = v6;
      }

      v7 = v14;
      if (v14)
      {
        break;
      }

      v8 = v5 == v4;
      v5 += 24;
    }

    while (!v8);
  }

  sub_3174(v2);
  return v7;
}

void sub_136838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_136868(_DWORD *a1, _DWORD *a2, unsigned int a3)
{
  v4 = *a1;
  if ((a3 & 1) == 0)
  {
    if (v4 == *a2)
    {
      v5 = a1[2];
      if (v5 == a2[2] && a1[4] == a2[4] && a1[5] == a2[5] && a1[7] == a2[7] && a1[8] == a2[8])
      {
        goto LABEL_36;
      }
    }

    return 0;
  }

  if (v4 != 0.0 && *a2 != 0.0 && v4 != *a2)
  {
    return 0;
  }

  v5 = a1[2];
  if (v5)
  {
    v7 = a2[2];
    if (v7)
    {
      if (v5 != v7)
      {
        return 0;
      }
    }
  }

  v8 = a1[4];
  if (v8)
  {
    v9 = a2[4];
    if (v9)
    {
      if (v8 != v9)
      {
        return 0;
      }
    }
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = a2[5];
    if (v11)
    {
      if (v10 != v11)
      {
        return 0;
      }
    }
  }

  v12 = a1[6];
  if (v12)
  {
    v13 = a2[6];
    if (v13)
    {
      if (v12 != v13)
      {
        return 0;
      }
    }
  }

  v14 = a1[7];
  if (v14)
  {
    v15 = a2[7];
    if (v15)
    {
      if (v14 != v15)
      {
        return 0;
      }
    }
  }

  v16 = a1[8];
  if (v16)
  {
    v17 = a2[8];
    if (v17)
    {
      if (v16 != v17)
      {
        return 0;
      }
    }
  }

  v19.i64[0] = *(a1 + 1);
  v19.i64[1] = *(a2 + 1);
  if (vmaxv_u16(vmovn_s32(vceqzq_s32(v19))))
  {
    return 1;
  }

LABEL_36:
  if (v5 == 1819304813)
  {
    v20 = (a3 >> 1) & 1;
    v21 = sub_20B3A8(a1, v20);
    return v21 == sub_20B3A8(a2, v20);
  }

  else
  {
    return a1[3] == a2[3];
  }
}

uint64_t sub_136A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 28);
  if (*(a1 + 52) == 1)
  {
    v4 = v2 == 1819304813 && (*(a2 + 12) & 1) == 0;
    if (!v4 || v3 != *(a1 + 48))
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v2 > 1836343667)
  {
    if (v2 <= 1836343923)
    {
      if (v2 == 1836343668)
      {
        goto LABEL_50;
      }

      if (v2 != 1836343851)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v2 == 1836343924)
      {
        goto LABEL_50;
      }

      if (v2 != 1836344107)
      {
        if (v2 == 1836344180)
        {
          goto LABEL_50;
        }

        goto LABEL_44;
      }
    }

LABEL_37:
    v9 = *(a1 + 8);
    if (v9 == 3)
    {
      goto LABEL_50;
    }

    if (v9 == 2)
    {
      if (v2 != 1836344107)
      {
        goto LABEL_50;
      }
    }

    else if (v9 == 1 && v2 != 1836343851)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v2 <= 1667443506)
  {
    if (v2 == 1633889587 || v2 == 1667326771)
    {
      goto LABEL_27;
    }

LABEL_44:
    v10 = 0;
    if (v2 != 1819304813 || (*(a2 + 12) & 1) != 0 || v3 < 3)
    {
      return v10;
    }

    if (v3 == 8)
    {
      if (*(a1 + 4))
      {
        goto LABEL_50;
      }
    }

    else if (v3 == 6)
    {
      if (*(a1 + 3))
      {
        goto LABEL_50;
      }
    }

    else if (*(a1 + 1))
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (v2 == 1667443507 || v2 == 1667509043)
  {
    goto LABEL_37;
  }

  if (v2 != 1667588915)
  {
    goto LABEL_44;
  }

LABEL_27:
  if ((*a1 & 1) == 0)
  {
    if (*(a1 + 24) != 1)
    {
      return 0;
    }

    v7 = *(a1 + 16);
    if (*(a2 + 48) >= v7 && *(a2 + 40) <= v7)
    {
      return 0;
    }
  }

LABEL_50:
  v11 = sub_5544(23);
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1243E4(&__p);
  }

  return 1;
}