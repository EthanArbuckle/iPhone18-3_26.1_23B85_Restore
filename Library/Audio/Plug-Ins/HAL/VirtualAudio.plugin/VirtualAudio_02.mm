void sub_3694C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  sub_847FC(&a23);
  sub_210C50(&a40);
  _Unwind_Resume(a1);
}

BOOL sub_37E90(const __CFDictionary **a1)
{
  v2 = off_6CDA40;
  v3 = 32;
  do
  {
    if (!*a1)
    {
LABEL_15:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_1DB154(exception);
    }

    if (!sub_47D0C(*a1, *v2))
    {
      v7 = sub_5544(14);
      v8 = sub_468EC(1, *v7, *(v7 + 8));
      v9 = v8;
      if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = v2[1];
        v18 = 136315906;
        v19 = "VirtualAudio_PlugIn.mm";
        v20 = 1024;
        v21 = 1175;
        v22 = 2080;
        v23 = "kVirtualAudioPlugInPropertyRouteConfigurationSupportsPortType";
        v24 = 2080;
        v25 = v10;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s requires that RouteConfiguration dictionary has %s.", &v18, 0x26u);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      *v11 = &off_6DDDD0;
      v11[2] = 1852797029;
    }

    v2 += 2;
    v3 -= 16;
  }

  while (v3);
  v4 = off_6CDA60;
  v5 = 224;
  do
  {
    if (!*a1)
    {
      goto LABEL_15;
    }

    result = sub_47D0C(*a1, *v4);
    if (result)
    {
      v13 = sub_5544(14);
      v14 = sub_468EC(1, *v13, *(v13 + 8));
      v15 = v14;
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = v4[1];
          v18 = 136315906;
          v19 = "VirtualAudio_PlugIn.mm";
          v20 = 1024;
          v21 = 1179;
          v22 = 2080;
          v23 = "kVirtualAudioPlugInPropertyRouteConfigurationSupportsPortType";
          v24 = 2080;
          v25 = v16;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): %s doesn't support %s.", &v18, 0x26u);
        }
      }

      v17 = __cxa_allocate_exception(0x10uLL);
      *v17 = &off_6DDDD0;
      v17[2] = 1852797029;
    }

    v4 += 2;
    v5 -= 16;
  }

  while (v5);
  return result;
}

void sub_38188(uint64_t a1, uint64_t a2, const __CFDictionary **a3, char a4, int a5)
{
  if (!*a3)
  {
    v922 = sub_5544(14);
    v923 = sub_468EC(1, *v922, *(v922 + 8));
    v924 = v923;
    if (v923 && os_log_type_enabled(v923, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2796;
      _os_log_impl(&dword_0, v924, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v1051 = a1 + 376;
  if (a4)
  {
    v5 = 1;
  }

  else
  {
    v6 = sub_5544(2);
    v7 = sub_5544(35);
    v8 = 0;
    *buf = 0x100000002;
    v9 = v6[1];
    do
    {
      v10 = *&buf[v8];
      if (((v9 & v10) != 0) != ((*(v7 + 8) & v10) != 0))
      {
        if ((v9 & v10) == 0)
        {
          v6 = v7;
        }

        if ((v6[1] & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_12;
      }

      v8 += 4;
    }

    while (v8 != 8);
    if ((v9 & 1) == 0)
    {
LABEL_8:
      v11 = 0;
      goto LABEL_13;
    }

LABEL_12:
    v11 = *v6;
LABEL_13:
    v5 = v11 != 0;
  }

  v1054 = v5;
  v12 = sub_5544(2);
  v13 = sub_5544(35);
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
        goto LABEL_30;
      }

      goto LABEL_22;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

  if (*(v12 + 8))
  {
LABEL_22:
    v17 = *v12;
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_B1190(__p, *a3);
        v19 = __p[23] >= 0 ? __p : *__p;
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2801;
        *&buf[18] = 2080;
        *&buf[20] = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d inRouteChangeDictionary: %s.", buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }
  }

LABEL_30:
  v1049 = sub_43458(a3, *(*(a2 + 112) + 144), *(*(a2 + 112) + 408));
  v1038 = sub_3A64A0(a3);
  if (!*a3)
  {
    v926 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v926);
  }

  v20 = sub_43354(*a3, "expanse session");
  if (v20 && (v21 = sub_113A0(v20), (v21 & 0x100000000) != 0))
  {
    v22 = v21;
    if (v1054)
    {
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
          goto LABEL_41;
        }
      }

      if ((v26 & v27) == 0)
      {
        v23 = v24;
      }

LABEL_41:
      v28 = *v23;
      v29 = v28;
      if (v28)
      {
        v30 = v28;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2815;
          *&buf[18] = 2048;
          *&buf[20] = v22;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Colistening: %lu", buf, 0x1Cu);
        }
      }
    }

    v1043 = v22 != 0;
  }

  else
  {
    v1043 = 0;
  }

  if (!a5 || (v1049 & 1) != 0)
  {
    goto LABEL_52;
  }

  v31 = !v1043;
  if (!*(a2 + 472))
  {
    v31 = 1;
  }

  if (v31)
  {
    v39 = 0;
    v1041 = 0;
    v1042 = 0;
    v41 = 0;
    v37 = 0;
    v36 = 0;
  }

  else
  {
LABEL_52:
    v32 = *sub_5544(2);
    v33 = v32;
    if (v32)
    {
      v34 = v32;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        sub_D086C(__p, (a2 + 472));
        v35 = __p[23] >= 0 ? __p : *__p;
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2825;
        *&buf[18] = 2080;
        *&buf[20] = v35;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using cached colistening state %s", buf, 0x1Cu);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }
    }

    v36 = *(a2 + 472);
    v37 = *(a2 + 476);
    v39 = *(a2 + 480);
    v38 = *(a2 + 488);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v41 = *(a2 + 496);
    v40 = *(a2 + 504);
    v1041 = v40;
    v1042 = v38;
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  v42 = *(a2 + 224);
  v43 = *(a2 + 216);
  v44 = *v43;
  buf[0] = 0;
  buf[8] = 0;
  v45 = *(v43 + 16);
  if (v45 == 1)
  {
    v1058 = v42;
    sub_98A64(buf, v43[1]);
    v42 = v1058;
    buf[8] = 1;
  }

  *a1 = v42;
  *(a1 + 24) = 0u;
  v1033 = a1 + 24;
  *(a1 + 16) = a1 + 24;
  v1046 = (a1 + 16);
  *(a1 + 48) = 0u;
  *(a1 + 40) = a1 + 48;
  v1052 = (a1 + 40);
  *(a1 + 72) = 0u;
  *(a1 + 64) = a1 + 72;
  *(a1 + 96) = 0u;
  v1039 = (a1 + 96);
  *(a1 + 88) = a1 + 96;
  v1047 = (a1 + 88);
  *(a1 + 120) = 0u;
  v1035 = (a1 + 120);
  *(a1 + 112) = a1 + 120;
  v1050 = (a1 + 112);
  *(a1 + 136) = 0u;
  v1032 = (a1 + 136);
  *(a1 + 156) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1668248944;
  v1031 = 1852797029;
  *(a1 + 176) = 0u;
  v1037 = (a1 + 176);
  *(a1 + 168) = 1852796517;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 200) = 0x756E64656175746FLL;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 288) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 1065353216;
  *(a1 + 368) = 1065353216;
  *(a1 + 376) = 0;
  *(a1 + 380) = 0;
  *(a1 + 392) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 384) = 0;
  *(a1 + 456) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 464) = v44;
  *(a1 + 480) = 0u;
  *(a1 + 472) = a1 + 480;
  *(a1 + 504) = 0u;
  v1036 = (a1 + 504);
  *(a1 + 496) = a1 + 504;
  *(a1 + 528) = 0u;
  v1057 = (a1 + 208);
  v1059 = (a1 + 528);
  *(a1 + 520) = a1 + 528;
  *(a1 + 552) = 0u;
  v1055 = (a1 + 552);
  *(a1 + 544) = a1 + 552;
  *(a1 + 576) = 0u;
  *(a1 + 568) = a1 + 576;
  *(a1 + 600) = 0u;
  *(a1 + 592) = a1 + 600;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0;
  if (v45)
  {
    sub_98A64((a1 + 616), *buf);
    *(a1 + 624) = 1;
  }

  *(a1 + 660) = 0;
  *(a1 + 664) = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  *(a1 + 684) = 0;
  *(a1 + 688) = 0;
  *(a1 + 632) = 0;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  *(a1 + 696) = v36;
  *(a1 + 700) = v37;
  *(a1 + 704) = v39;
  *(a1 + 712) = v1042;
  if (v1042)
  {
    atomic_fetch_add_explicit(&v1042->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 720) = v41;
  *(a1 + 728) = v1041;
  if (v1041)
  {
    atomic_fetch_add_explicit(&v1041->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 736) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0;
  *(a1 + 792) = 0;
  *(a1 + 800) = 0;
  *(v1051 + 432) = 0;
  *(v1051 + 428) = 0;
  if (buf[8] == 1 && *buf)
  {
    CFRelease(*buf);
  }

  *(a1 + 384) = v1049;
  if (!*a3)
  {
    v927 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v927, "Could not construct");
  }

  if (sub_47EF0(*a3, "enabled sub-ports"))
  {
    v46 = sub_5544(2);
    v47 = sub_5544(35);
    v48 = 0;
    *buf = 0x100000002;
    v49 = *(v46 + 8);
    while (1)
    {
      v50 = *&buf[v48];
      if (((v49 & v50) != 0) != ((*(v47 + 8) & v50) != 0))
      {
        break;
      }

      v48 += 4;
      if (v48 == 8)
      {
        goto LABEL_84;
      }
    }

    if ((v49 & v50) == 0)
    {
      v46 = v47;
    }

LABEL_84:
    v51 = *v46;
    v52 = v51;
    if (v51)
    {
      v53 = v51;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2841;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationEnabledSubPortsKey is no longer supported. Please use kVirtualAudioPlugInRouteConfigurationPreferredSubPortsKey", buf, 0x12u);
      }
    }
  }

  if (!*a3)
  {
    v928 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v928, "Could not construct");
  }

  sub_438C8(buf, *a3, "preferred sub-ports");
  if (buf[8] == 1 && (v54 = *buf) != 0)
  {
    CFRetain(*buf);
    theDict = v54;
    CFRelease(v54);
  }

  else
  {
    theDict = 0;
  }

  if (!*a3)
  {
    v929 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v929, "Could not construct");
  }

  v55 = sub_47FE0(*a3, "mode");
  if (v55)
  {
    v55 = sub_43A54(v55);
  }

  if ((v55 & 0x100000000) != 0)
  {
    v56 = v55;
  }

  else
  {
    v56 = 0;
  }

  if (theDict)
  {
    if (v56 > 1936749156)
    {
      if (v56 != 1936749157)
      {
        v57 = 1937007472;
LABEL_106:
        if (v56 != v57)
        {
          if (v1054 && CFDictionaryGetCount(theDict))
          {
            v58 = sub_5544(2);
            v59 = sub_5544(35);
            v60 = 0;
            *buf = 0x100000002;
            v61 = *(v58 + 8);
            while (1)
            {
              v62 = *&buf[v60];
              if (((v61 & v62) != 0) != ((*(v59 + 8) & v62) != 0))
              {
                break;
              }

              v60 += 4;
              if (v60 == 8)
              {
                goto LABEL_115;
              }
            }

            if ((v61 & v62) == 0)
            {
              v58 = v59;
            }

LABEL_115:
            v63 = *v58;
            v64 = v63;
            if (v63)
            {
              v65 = v63;
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2854;
                _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Preferred Sub-Ports:", buf, 0x12u);
              }
            }
          }

          sub_E2B64(buf, theDict);
          sub_E2B64(__p, theDict);
          *&__p[8] = (*&__p[24] - *&__p[16]) >> 3;
          while (1)
          {
            if (*buf && *&buf[8] != (*&buf[24] - *&buf[16]) >> 3)
            {
              v66 = *__p;
            }

            else
            {
              v66 = *__p;
              if (!*__p || *&__p[8] == (*&__p[24] - *&__p[16]) >> 3)
              {
LABEL_160:
                if (v1081)
                {
                  v1082 = v1081;
                  operator delete(v1081);
                }

                if (*&__p[16])
                {
                  *&__p[24] = *&__p[16];
                  operator delete(*&__p[16]);
                }

                if (*&buf[40])
                {
                  v1085 = *&buf[40];
                  operator delete(*&buf[40]);
                }

                if (*&buf[16])
                {
                  *&buf[24] = *&buf[16];
                  operator delete(*&buf[16]);
                }

                goto LABEL_168;
              }
            }

            if (*buf == v66 && *&buf[8] == *&__p[8])
            {
              goto LABEL_160;
            }

            sub_E2CE8(&cf, buf);
            if (!cf.__r_.__value_.__r.__words[0] || (v67 = CFGetTypeID(cf.__r_.__value_.__l.__data_), v67 != CFNumberGetTypeID()))
            {
              v862 = sub_5544(14);
              v863 = sub_468EC(1, *v862, *(v862 + 8));
              v864 = v863;
              if (v863)
              {
                v865 = v863;
                if (os_log_type_enabled(v865, OS_LOG_TYPE_ERROR))
                {
                  sub_3A6698(&theArray, &cf);
                  v866 = sub_4A8F8(*theArray.__r_.__value_.__l.__data_);
                  LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315650;
                  *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2861;
                  WORD1(v1079[0].__r_.__value_.__r.__words[2]) = 2048;
                  *(&v1079[0].__r_.__value_.__r.__words[2] + 4) = v866;
                  _os_log_impl(&dword_0, v865, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unknown type (%lu) used as key in preferred sub-ports dictionary (expected NumberRef).", v1079, 0x1Cu);
                }
              }

              v867 = __cxa_allocate_exception(0x10uLL);
              *v867 = &off_6DDDD0;
              v867[2] = 1852797029;
            }

            if (!cf.__r_.__value_.__l.__size_)
            {
              v900 = sub_5544(14);
              v1031 = 2003329396;
              v901 = sub_468EC(1, *v900, *(v900 + 8));
              v902 = v901;
              if (v901 && os_log_type_enabled(v901, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315394;
                *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2864;
                v903 = "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Dictionary claimed to have a key, but failed to retrieve it.";
                v904 = v902;
                v905 = 18;
                goto LABEL_1725;
              }

LABEL_1726:

              v909 = __cxa_allocate_exception(0x10uLL);
              *v909 = &off_6DDDD0;
              v909[2] = v1031;
            }

            v68 = CFGetTypeID(cf.__r_.__value_.__l.__size_);
            if (v68 != CFArrayGetTypeID())
            {
              v906 = sub_5544(14);
              v907 = sub_468EC(1, *v906, *(v906 + 8));
              v902 = v907;
              if (v907 && os_log_type_enabled(v907, OS_LOG_TYPE_ERROR))
              {
                v908 = sub_3A6704(cf.__r_.__value_.__l.__size_);
                LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315650;
                *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2867;
                WORD1(v1079[0].__r_.__value_.__r.__words[2]) = 2048;
                *(&v1079[0].__r_.__value_.__r.__words[2] + 4) = v908;
                v903 = "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unknown type (%lu) used as key in preferred sub-ports dictionary (expected ArrayRef).";
                v904 = v902;
                v905 = 28;
LABEL_1725:
                _os_log_impl(&dword_0, v904, OS_LOG_TYPE_ERROR, v903, v1079, v905);
              }

              goto LABEL_1726;
            }

            if (!cf.__r_.__value_.__r.__words[0])
            {
              v899 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v899, "Could not construct");
            }

            v69 = sub_4A8F8(cf.__r_.__value_.__l.__data_);
            *&v1074 = sub_9E618(*(a2 + 128), v69);
            if (!v1074)
            {
              v703 = sub_5544(14);
              v704 = sub_468EC(1, *v703, *(v703 + 8));
              v705 = v704;
              if (v704 && os_log_type_enabled(v704, OS_LOG_TYPE_ERROR))
              {
                LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315650;
                *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2872;
                WORD1(v1079[0].__r_.__value_.__r.__words[2]) = 2048;
                *(&v1079[0].__r_.__value_.__r.__words[2] + 4) = v69;
                _os_log_impl(&dword_0, v705, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [port is NULL]: Requested port ID (%lu) to enable does not exist.", v1079, 0x1Cu);
              }

              v706 = __cxa_allocate_exception(0x10uLL);
              *v706 = &off_6DDDD0;
              v706[2] = 1852797029;
            }

            if (v1054)
            {
              v70 = sub_5544(2);
              v71 = sub_5544(35);
              v72 = 0;
              v1079[0].__r_.__value_.__r.__words[0] = 0x100000002;
              v73 = *(v70 + 8);
              while (1)
              {
                v74 = *(&v1079[0].__r_.__value_.__l.__data_ + v72);
                if (((v73 & v74) != 0) != ((*(v71 + 8) & v74) != 0))
                {
                  break;
                }

                v72 += 4;
                if (v72 == 8)
                {
                  goto LABEL_142;
                }
              }

              if ((v73 & v74) == 0)
              {
                v70 = v71;
              }

LABEL_142:
              v75 = *v70;
              v76 = v75;
              if (v75)
              {
                v77 = v75;
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  size = cf.__r_.__value_.__l.__size_;
                  (*(*v1074 + 112))(&theArray);
                  p_theArray = &theArray;
                  if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_theArray = theArray.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315906;
                  *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2875;
                  WORD1(v1079[0].__r_.__value_.__r.__words[2]) = 2112;
                  *(&v1079[0].__r_.__value_.__r.__words[2] + 4) = size;
                  WORD2(v1079[1].__r_.__value_.__r.__words[0]) = 2080;
                  *(v1079[1].__r_.__value_.__r.__words + 6) = p_theArray;
                  _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d     - VirtualAudioSubPortIDs %@ on Port %s.", v1079, 0x26u);
                  if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(theArray.__r_.__value_.__l.__data_);
                  }
                }
              }
            }

            sub_6A9B8(&theArray, &cf.__r_.__value_.__l.__size_);
            if (!theArray.__r_.__value_.__r.__words[0])
            {
              v916 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v916, "Could not construct");
            }

            if (!CFArrayGetCount(theArray.__r_.__value_.__l.__data_))
            {
              v910 = sub_5544(14);
              v911 = sub_468EC(1, *v910, *(v910 + 8));
              v912 = v911;
              if (v911)
              {
                v913 = v911;
                if (os_log_type_enabled(v913, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(v1079[0].__r_.__value_.__l.__data_) = 136315394;
                  *(v1079[0].__r_.__value_.__r.__words + 4) = "VirtualAudio_PlugIn.mm";
                  WORD2(v1079[0].__r_.__value_.__r.__words[1]) = 1024;
                  *(&v1079[0].__r_.__value_.__r.__words[1] + 6) = 2878;
                  _os_log_impl(&dword_0, v913, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Preferred sub-port IDs array is empty.", v1079, 0x12u);
                }
              }

              v914 = __cxa_allocate_exception(0x10uLL);
              *v914 = &off_6DDDD0;
              v914[2] = 2003329396;
            }

            if (!theArray.__r_.__value_.__r.__words[0])
            {
              v915 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v915, "Could not construct");
            }

            v80 = sub_233EB4(theArray.__r_.__value_.__l.__data_, 0);
            v1079[0].__r_.__value_.__r.__words[0] = &v1074;
            v81 = sub_3A6724(a1 + 472, v1074);
            *(v81 + 48) = 0;
            *(v81 + 10) = v80;
            *(v81 + 11) = 0;
            if (theArray.__r_.__value_.__r.__words[0])
            {
              CFRelease(theArray.__r_.__value_.__l.__data_);
            }

            if (cf.__r_.__value_.__l.__size_)
            {
              CFRelease(cf.__r_.__value_.__l.__size_);
            }

            if (cf.__r_.__value_.__r.__words[0])
            {
              CFRelease(cf.__r_.__value_.__l.__data_);
            }

            ++*&buf[8];
          }
        }

        goto LABEL_176;
      }
    }

    else if (v56 != 1835229549)
    {
      v57 = 1936745328;
      goto LABEL_106;
    }

    goto LABEL_176;
  }

LABEL_168:
  if (v56 > 1937007471)
  {
    if (v56 == 1937007472 || v56 == 2003133037)
    {
      goto LABEL_176;
    }

    v82 = 2003133027;
  }

  else
  {
    if (v56 == 1835229549 || v56 == 1936745328)
    {
      goto LABEL_176;
    }

    v82 = 1936749157;
  }

  if (v56 == v82)
  {
LABEL_176:
    sub_BCBE0(a2);
  }

  if (!*a3)
  {
    v930 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v930, "Could not construct");
  }

  v83 = sub_11094(*a3, "sub-port preferences");
  if (!v83 || (v84 = v83, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v84)))
  {
    __p[0] = 0;
    __p[24] = 0;
    goto LABEL_198;
  }

  Count = CFArrayGetCount(v84);
  memset(v1079, 0, 24);
  sub_BDC9C(v1079, Count);
  if (Count < 1)
  {
LABEL_196:
    *__p = v1079[0];
    memset(v1079, 0, 24);
    __p[24] = 1;
  }

  else
  {
    v87 = 0;
    v88 = __p[24];
    v89 = Count & 0x7FFFFFFF;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v84, v87);
      v91 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        break;
      }

      CFRetain(ValueAtIndex);
      v92 = CFGetTypeID(v91);
      if (v92 != CFDictionaryGetTypeID())
      {
        CFRelease(v91);
        break;
      }

      v93 = v1079[0].__r_.__value_.__l.__size_;
      if (v1079[0].__r_.__value_.__l.__size_ >= v1079[0].__r_.__value_.__r.__words[2])
      {
        v95 = (v1079[0].__r_.__value_.__l.__size_ - v1079[0].__r_.__value_.__r.__words[0]) >> 3;
        if ((v95 + 1) >> 61)
        {
          __p[24] = v88;
          sub_189A00();
        }

        v96 = (v1079[0].__r_.__value_.__r.__words[2] - v1079[0].__r_.__value_.__r.__words[0]) >> 2;
        if (v96 <= v95 + 1)
        {
          v96 = v95 + 1;
        }

        if (v1079[0].__r_.__value_.__r.__words[2] - v1079[0].__r_.__value_.__r.__words[0] >= 0x7FFFFFFFFFFFFFF8)
        {
          v97 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v97 = v96;
        }

        *&buf[32] = v1079;
        if (v97)
        {
          sub_1DB8DC(v97);
        }

        *buf = 0;
        *&buf[8] = 8 * v95;
        *&buf[24] = 0;
        **&buf[8] = v91;
        *&buf[16] = 8 * v95 + 8;
        sub_76010(v1079, buf);
        v94 = v1079[0].__r_.__value_.__l.__size_;
        sub_760C0(buf);
      }

      else
      {
        *v1079[0].__r_.__value_.__l.__size_ = v91;
        v94 = v93 + 8;
      }

      v1079[0].__r_.__value_.__l.__size_ = v94;
      if (v89 == ++v87)
      {
        goto LABEL_196;
      }
    }

    __p[24] = 0;
    __p[0] = 0;
  }

  *buf = v1079;
  sub_761AC(buf);
  if ((__p[24] & 1) == 0)
  {
    goto LABEL_198;
  }

  v346 = *&__p[8];
  v347 = *__p;
  if (*__p == *&__p[8])
  {
    if (v1054)
    {
      v349 = sub_5544(2);
      v350 = sub_5544(35);
      v351 = 0;
      *buf = 0x100000002;
      v352 = *(v349 + 8);
      while (1)
      {
        v353 = *&buf[v351];
        if (((v352 & v353) != 0) != ((*(v350 + 8) & v353) != 0))
        {
          break;
        }

        v351 += 4;
        if (v351 == 8)
        {
          goto LABEL_1215;
        }
      }

      if ((v352 & v353) == 0)
      {
        v349 = v350;
      }

LABEL_1215:
      v653 = *v349;
      v654 = v653;
      if (v653)
      {
        v655 = v653;
        if (os_log_type_enabled(v655, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2897;
          _os_log_impl(&dword_0, v655, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Clearing all sub-port preferences:", buf, 0x12u);
        }
      }
    }

    sub_BCBE0(a2);
    goto LABEL_198;
  }

  if (v56 > 1937007471)
  {
    if (v56 == 1937007472 || v56 == 2003133027)
    {
      goto LABEL_198;
    }

    v348 = 2003133037;
  }

  else
  {
    if (v56 == 1835229549 || v56 == 1936745328)
    {
      goto LABEL_198;
    }

    v348 = 1936749157;
  }

  if (v56 == v348)
  {
    goto LABEL_198;
  }

  *&v1079[0].__r_.__value_.__r.__words[1] = 0uLL;
  v1079[0].__r_.__value_.__r.__words[0] = &v1079[0].__r_.__value_.__l.__size_;
  do
  {
    v354 = sub_5544(2);
    v355 = *v354;
    if (*v354 && os_log_type_enabled(*v354, OS_LOG_TYPE_DEBUG))
    {
      v356 = *v347;
      *buf = 136315650;
      *&buf[4] = "PortTypes.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 44;
      *&buf[18] = 2112;
      *&buf[20] = v356;
      _os_log_impl(&dword_0, v355, OS_LOG_TYPE_DEBUG, "%25s:%-5d Parsing sub port preference entry: %@", buf, 0x1Cu);
    }

    if (!*v347)
    {
      v988 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v988, "Could not construct");
    }

    v357 = sub_35D9C0(*v347, "port id");
    if (!v357)
    {
      v989 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v989, "Could not find item");
    }

    LODWORD(cf.__r_.__value_.__l.__data_) = sub_4A8F8(v357);
    if (!*v347)
    {
      v990 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v990, "Could not construct");
    }

    v358 = sub_2238C8(*v347, "sub-port id");
    if (!v358)
    {
      v991 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v991, "Could not find item");
    }

    LODWORD(v1074) = sub_4A8F8(v358);
    if (!*v347)
    {
      v992 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v992, "Could not construct");
    }

    v359 = sub_379E24(*v347, "polar pattern");
    if (v359)
    {
      v360 = sub_113A0(v359);
    }

    else
    {
      v360 = 0;
    }

    v361 = v1079[0].__r_.__value_.__l.__size_;
    if (!v1079[0].__r_.__value_.__l.__size_)
    {
      goto LABEL_667;
    }

    p_size = &v1079[0].__r_.__value_.__l.__size_;
    do
    {
      v363 = v361;
      v364 = p_size;
      v365 = *(v361 + 32);
      if (v365 >= LODWORD(cf.__r_.__value_.__l.__data_))
      {
        p_size = v361;
      }

      v361 = *(v361 + 8 * (v365 < LODWORD(cf.__r_.__value_.__l.__data_)));
    }

    while (v361);
    if (p_size == &v1079[0].__r_.__value_.__r.__words[1])
    {
      goto LABEL_667;
    }

    if (v365 < LODWORD(cf.__r_.__value_.__l.__data_))
    {
      v363 = v364;
    }

    if (LODWORD(cf.__r_.__value_.__l.__data_) >= *(v363 + 32))
    {
      if ((v360 & 0x100000000) != 0)
      {
        goto LABEL_671;
      }

      *(p_size + 10) = v1074;
    }

    else
    {
LABEL_667:
      *buf = v1074;
      *&buf[16] = 0;
      *&buf[24] = 0;
      *&buf[8] = &buf[16];
      theArray.__r_.__value_.__r.__words[0] = &cf;
      v366 = sub_379BFC(v1079, cf.__r_.__value_.__l.__data_);
      v368 = v366 + 7;
      v367 = v366[7];
      *(v366 + 10) = *buf;
      sub_477A0(v367);
      v369 = *&buf[16];
      v366[6] = *&buf[8];
      v366[7] = v369;
      v370 = *&buf[24];
      v366[8] = *&buf[24];
      if (v370)
      {
        v369[2] = v368;
        *&buf[8] = &buf[16];
        *&buf[16] = 0;
        *&buf[24] = 0;
        v369 = 0;
      }

      else
      {
        v366[6] = v368;
      }

      sub_477A0(v369);
      if ((v360 & 0x100000000) != 0)
      {
LABEL_671:
        *buf = &cf;
        v371 = sub_379BFC(v1079, cf.__r_.__value_.__l.__data_);
        *buf = &v1074;
        *(sub_379CF0((v371 + 6), v1074) + 8) = v360;
      }
    }

    ++v347;
  }

  while (v347 != v346);
  v656 = v1079[0].__r_.__value_.__r.__words[0];
  if (v1079[0].__r_.__value_.__l.__data_ != &v1079[0].__r_.__value_.__r.__words[1])
  {
    do
    {
      v657 = *(v656 + 56);
      v658 = *(v656 + 40);
      if (v657)
      {
        v659 = v656 + 56;
        do
        {
          v660 = *(v657 + 28);
          v629 = v660 >= v658;
          v661 = v660 < v658;
          if (v629)
          {
            v659 = v657;
          }

          v657 = *(v657 + 8 * v661);
        }

        while (v657);
        if (v659 == v656 + 56 || v658 < *(v659 + 28))
        {
          v662 = 0;
          v663 = 0;
          LODWORD(v657) = 0;
        }

        else
        {
          LODWORD(v657) = *(v659 + 32) & 0xFFFFFF00;
          v663 = *(v659 + 32);
          v662 = 0x100000000;
        }
      }

      else
      {
        v662 = 0;
        v663 = 0;
      }

      *buf = *(v656 + 40);
      *&buf[4] = v662 | v657 | v663;
      v664 = v658;
      theArray.__r_.__value_.__r.__words[0] = *buf;
      LODWORD(theArray.__r_.__value_.__r.__words[1]) = HIDWORD(v662);
      v665 = sub_9E618(*(a2 + 128), *(v656 + 32));
      cf.__r_.__value_.__r.__words[0] = v665;
      if (!v665)
      {
        v995 = sub_5544(14);
        v996 = sub_468EC(1, *v995, *(v995 + 8));
        v997 = v996;
        if (v996)
        {
          v998 = v996;
          if (os_log_type_enabled(v998, OS_LOG_TYPE_ERROR))
          {
            v999 = *(v656 + 32);
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2910;
            *&buf[18] = 1024;
            *&buf[20] = v999;
            _os_log_impl(&dword_0, v998, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Requested port ID (%u) to enable does not exist.", buf, 0x18u);
          }
        }

        v1000 = __cxa_allocate_exception(0x10uLL);
        *v1000 = &off_6DDDD0;
        v1000[2] = 1852797029;
      }

      *buf = v664;
      v666 = theArray.__r_.__value_.__s.__data_[8];
      *&buf[4] = *(theArray.__r_.__value_.__r.__words + 4);
      v667 = *buf;
      *buf = &cf;
      v668 = sub_3A6724(a1 + 472, v665);
      v668[5] = v667;
      *(v668 + 48) = v666;
      v669 = *(v656 + 8);
      if (v669)
      {
        do
        {
          v670 = v669;
          v669 = v669->__r_.__value_.__r.__words[0];
        }

        while (v669);
      }

      else
      {
        do
        {
          v670 = *(v656 + 16);
          v146 = v670->__r_.__value_.__r.__words[0] == v656;
          v656 = v670;
        }

        while (!v146);
      }

      v656 = v670;
    }

    while (v670 != &v1079[0].__r_.__value_.__r.__words[1]);
  }

  sub_379DD0(v1079[0].__r_.__value_.__l.__size_);
LABEL_198:
  if (__p[24] == 1)
  {
    *buf = __p;
    sub_761AC(buf);
  }

  if (!*a3)
  {
    v931 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v931, "Could not construct");
  }

  sub_438C8(__p, *a3, "active data sources");
  v98 = *__p;
  if ((__p[8] & v1054) == 1 && *__p)
  {
    v99 = sub_5544(2);
    v100 = sub_5544(35);
    v101 = 0;
    *buf = 0x100000002;
    v102 = *(v99 + 8);
    while (1)
    {
      v103 = *&buf[v101];
      if (((v102 & v103) != 0) != ((*(v100 + 8) & v103) != 0))
      {
        break;
      }

      v101 += 4;
      if (v101 == 8)
      {
        goto LABEL_212;
      }
    }

    if ((v102 & v103) == 0)
    {
      v99 = v100;
    }

LABEL_212:
    v104 = *v99;
    v105 = v104;
    if (v104)
    {
      v106 = v104;
      if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2921;
        *&buf[18] = 2080;
        *&buf[20] = "active data sources";
        _os_log_impl(&dword_0, v106, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s is no longer supported.  It will be ignored.", buf, 0x1Cu);
      }
    }

LABEL_217:
    CFRelease(v98);
  }

  else if (__p[8] && *__p)
  {
    goto LABEL_217;
  }

  if (!*a3)
  {
    v932 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v932, "Could not construct");
  }

  sub_480F4(&theArray, *a3, "routable ports");
  if (theArray.__r_.__value_.__s.__data_[8] == 1)
  {
    v1048 = theArray.__r_.__value_.__r.__words[0];
    if (theArray.__r_.__value_.__r.__words[0])
    {
      if (v1054)
      {
        v107 = sub_5544(2);
        v108 = sub_5544(35);
        v109 = 0;
        *buf = 0x100000002;
        v110 = *(v107 + 8);
        while (1)
        {
          v111 = *&buf[v109];
          if (((v110 & v111) != 0) != ((*(v108 + 8) & v111) != 0))
          {
            break;
          }

          v109 += 4;
          if (v109 == 8)
          {
            goto LABEL_228;
          }
        }

        if ((v110 & v111) == 0)
        {
          v107 = v108;
        }

LABEL_228:
        v112 = *v107;
        v113 = v112;
        if (v112)
        {
          v114 = v112;
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2930;
            *&buf[18] = 2112;
            *&buf[20] = v1048;
            _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Routable Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v115 = CFArrayGetCount(v1048);
      v1045 = CFArrayGetCount(v1048);
      if (v115)
      {
        v116 = 0;
        v1034 = (a1 + 432);
        v1030 = v115;
        do
        {
          if (v116 == v1045)
          {
            break;
          }

          sub_A3B9C(&cf, v1048, v116);
          v117 = cf.__r_.__value_.__r.__words[0];
          if (!cf.__r_.__value_.__r.__words[0])
          {
            v897 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v897, "Could not construct");
          }

          v118 = sub_113A0(cf.__r_.__value_.__l.__data_);
          if ((v118 & 0x100000000) == 0)
          {
            v892 = sub_5544(14);
            v893 = sub_468EC(1, *v892, *(v892 + 8));
            v894 = v893;
            if (v893)
            {
              v895 = v893;
              if (os_log_type_enabled(v895, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2939;
                _os_log_impl(&dword_0, v895, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationRoutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v896 = __cxa_allocate_exception(0x10uLL);
            *v896 = &off_6DDDD0;
            v896[2] = 1852797029;
          }

          v119 = v118;
          sub_2820();
          v120 = sub_3D90(v119);
          *&v1074 = v120;
          if (!v120)
          {
            v697 = sub_5544(14);
            v698 = sub_468EC(1, *v697, *(v697 + 8));
            v699 = v698;
            if (v698)
            {
              v700 = v698;
              if (os_log_type_enabled(v700, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2942;
                _os_log_impl(&dword_0, v700, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v701 = __cxa_allocate_exception(0x10uLL);
            *v701 = &off_6DDDD0;
            v701[2] = 560947818;
          }

          if (!*a3)
          {
            v898 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v898, "Could not construct");
          }

          v121 = sub_43950(*a3, "add fallback device");
          if (v121 && (sub_113A0(v121) & 0x1FFFFFFFFLL) == 0x100000001)
          {
            v122 = *(a1 + 455);
            if ((v122 & 0x80u) != 0)
            {
              v122 = *(a1 + 440);
            }

            if (v122)
            {
              v123 = *(v120 + 96);
              if (v123)
              {
                v124 = *(v120 + 88);
                atomic_fetch_add_explicit(&v123->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v125 = std::__shared_weak_count::lock(v123);
                if (v125)
                {
                  v126 = v124;
                }

                else
                {
                  v126 = 0;
                }
              }

              else
              {
                v125 = 0;
                v126 = 0;
              }

              if (*(v126 + 303) < 0)
              {
                sub_54A0(buf, *(v126 + 280), *(v126 + 288));
              }

              else
              {
                v131 = v126 + 280;
                *buf = *v131;
                *&buf[16] = *(v131 + 16);
              }

              v132 = buf[23];
              v133 = buf[23];
              v134 = *buf;
              if (buf[23] >= 0)
              {
                v135 = buf;
              }

              else
              {
                v135 = *buf;
              }

              if (buf[23] < 0)
              {
                v132 = *&buf[8];
              }

              v136 = *(a1 + 455);
              if (v136 >= 0)
              {
                v137 = (a1 + 432);
              }

              else
              {
                v137 = *(a1 + 432);
              }

              if (v136 >= 0)
              {
                v138 = *(a1 + 455);
              }

              else
              {
                v138 = *(a1 + 440);
              }

              if (v138)
              {
                v1029 = v125;
                v139 = &v135[v132];
                if (v132 >= v138)
                {
                  v1027 = *buf;
                  v1028 = v123;
                  v142 = *v137;
                  v143 = v135;
                  do
                  {
                    v144 = v132 - v138;
                    if (v144 == -1)
                    {
                      break;
                    }

                    v145 = memchr(v143, v142, v144 + 1);
                    if (!v145)
                    {
                      break;
                    }

                    v140 = v145;
                    if (!memcmp(v145, v137, v138))
                    {
                      goto LABEL_278;
                    }

                    v143 = v140 + 1;
                    v132 = v139 - (v140 + 1);
                  }

                  while (v132 >= v138);
                  v140 = v139;
LABEL_278:
                  v134 = v1027;
                  v123 = v1028;
                }

                else
                {
                  v140 = &v135[v132];
                }

                v146 = v140 == v139 || v140 - v135 == -1;
                v141 = v146;
                v125 = v1029;
              }

              else
              {
                v141 = 0;
              }

              v115 = v1030;
              if (v133 < 0)
              {
                operator delete(v134);
              }

              if (v125)
              {
                sub_1A8C0(v125);
              }

              if (v123)
              {
                std::__shared_weak_count::__release_weak(v123);
              }

              if (v141)
              {
                v965 = sub_5544(14);
                v966 = sub_468EC(1, *v965, *(v965 + 8));
                v967 = v966;
                if (v966)
                {
                  v968 = v966;
                  if (os_log_type_enabled(v968, OS_LOG_TYPE_ERROR))
                  {
                    v969 = *(a1 + 455);
                    v970 = *(a1 + 432);
                    v972 = *(v120 + 88);
                    v971 = *(v120 + 96);
                    atomic_fetch_add_explicit(&v971->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v973 = std::__shared_weak_count::lock(v971);
                    sub_23148(__p, v972 + 2);
                    v974 = a1 + 432;
                    if (v969 < 0)
                    {
                      v974 = v970;
                    }

                    if (__p[23] >= 0)
                    {
                      v975 = __p;
                    }

                    else
                    {
                      v975 = *__p;
                    }

                    *buf = 136315906;
                    *&buf[4] = "VirtualAudio_PlugIn.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 2960;
                    *&buf[18] = 2080;
                    *&buf[20] = v974;
                    *&buf[28] = 2080;
                    *&buf[30] = v975;
                    _os_log_impl(&dword_0, v968, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Setting fallback device but routable ports don't have consistent UID. Saved fallback UID %s does not  match this port UID %s", buf, 0x26u);
                    if ((__p[23] & 0x80000000) != 0)
                    {
                      operator delete(*__p);
                    }

                    sub_1A8C0(v973);
                    std::__shared_weak_count::__release_weak(v971);
                  }
                }

                v976 = __cxa_allocate_exception(0x10uLL);
                *v976 = &off_6DDDD0;
                v976[2] = 1852797029;
              }
            }

            else
            {
              v127 = *(v120 + 96);
              if (v127)
              {
                v128 = *(v120 + 88);
                atomic_fetch_add_explicit(&v127->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v129 = std::__shared_weak_count::lock(v127);
                if (v129)
                {
                  v130 = v128;
                }

                else
                {
                  v130 = 0;
                }
              }

              else
              {
                v129 = 0;
                v130 = 0;
              }

              if (*(v130 + 303) < 0)
              {
                sub_54A0(__p, *(v130 + 280), *(v130 + 288));
              }

              else
              {
                v147 = v130 + 280;
                *__p = *v147;
                *&__p[16] = *(v147 + 16);
              }

              sub_34DE34(buf, __p);
              if (*(a1 + 455) < 0)
              {
                operator delete(*v1034);
              }

              *v1034 = *buf;
              *(a1 + 448) = *&buf[16];
              buf[23] = 0;
              buf[0] = 0;
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }

              if (v129)
              {
                sub_1A8C0(v129);
              }

              if (v127)
              {
                std::__shared_weak_count::__release_weak(v127);
              }
            }
          }

          v148 = *(a1 + 455);
          if ((v148 & 0x80u) != 0)
          {
            v148 = *(a1 + 440);
          }

          if (v148)
          {
            sub_114B44(a1 + 544, v120);
            v1068 = 0;
            __dst = 0;
            v1070 = 0;
            v149 = *(a1 + 544);
            if (v149 != v1055)
            {
              do
              {
                v150 = v149[4];
                sub_22CB9C(__p, v150, 1735159650, 2);
                v151 = *sub_5544(2);
                v152 = v151;
                if (v151)
                {
                  v153 = v151;
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                  {
                    (*(*v150 + 112))(v1079, v150);
                    v154 = v1079;
                    if ((v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v154 = v1079[0].__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315906;
                    *&buf[4] = "VirtualAudio_PlugIn.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 910;
                    *&buf[18] = 2080;
                    *&buf[20] = v154;
                    *&buf[28] = 2048;
                    *&buf[30] = (*&__p[8] - *__p) >> 2;
                    _os_log_impl(&dword_0, v153, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Siblings for port %s : %zd", buf, 0x26u);
                    if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v1079[0].__r_.__value_.__l.__data_);
                    }
                  }
                }

                v155 = *__p;
                sub_3A67EC(&v1068, __dst, *__p, *&__p[8], (*&__p[8] - *__p) >> 2);
                if (v155)
                {
                  operator delete(v155);
                }

                v156 = v149[1];
                if (v156)
                {
                  do
                  {
                    v157 = v156;
                    v156 = *v156;
                  }

                  while (v156);
                }

                else
                {
                  do
                  {
                    v157 = v149[2];
                    v146 = *v157 == v149;
                    v149 = v157;
                  }

                  while (!v146);
                }

                v149 = v157;
              }

              while (v157 != v1055);
              v159 = v1068;
              v158 = __dst;
              v160 = v1068;
              if (v1068 != __dst)
              {
                do
                {
                  v161 = *v160;
                  sub_2820();
                  v162 = sub_3D90(v161);
                  v1079[0].__r_.__value_.__r.__words[0] = v162;
                  if (!v162)
                  {
                    v671 = sub_5544(14);
                    v672 = sub_468EC(1, *v671, *(v671 + 8));
                    v673 = v672;
                    if (v672 && os_log_type_enabled(v672, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      *&buf[4] = "VirtualAudio_PlugIn.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 918;
                      *&buf[18] = 1024;
                      *&buf[20] = v161;
                      _os_log_impl(&dword_0, v673, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID (%u)", buf, 0x18u);
                    }

                    v674 = __cxa_allocate_exception(0x10uLL);
                    *v674 = &off_6DDDD0;
                    v674[2] = 560947818;
                  }

                  v163 = *sub_5544(2);
                  v164 = v163;
                  if (v163)
                  {
                    v165 = v163;
                    if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
                    {
                      (*(*v162 + 112))(__p, v162);
                      v166 = __p;
                      if (__p[23] < 0)
                      {
                        v166 = *__p;
                      }

                      *buf = 136315650;
                      *&buf[4] = "VirtualAudio_PlugIn.mm";
                      *&buf[12] = 1024;
                      *&buf[14] = 919;
                      *&buf[18] = 2080;
                      *&buf[20] = v166;
                      _os_log_impl(&dword_0, v165, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Added %s to port list", buf, 0x1Cu);
                      if ((__p[23] & 0x80000000) != 0)
                      {
                        operator delete(*__p);
                      }
                    }
                  }

                  sub_114B44(a1 + 544, v162);
                  ++v160;
                }

                while (v160 != v158);
              }

              if (v159)
              {
                __dst = v159;
                operator delete(v159);
              }
            }
          }

          else
          {
            sub_114B44(a1 + 496, v120);
          }

          CFRelease(v117);
          ++v116;
        }

        while (v116 != v115);
      }

      if (v1049)
      {
        if (*(a2 + 472))
        {
          sub_3A6A58(v1067, (a1 + 496));
          if (v1067[0])
          {
            v1067[1] = v1067[0];
            operator delete(v1067[0]);
          }
        }
      }

      if (theArray.__r_.__value_.__r.__words[0])
      {
        CFRelease(theArray.__r_.__value_.__l.__data_);
      }
    }
  }

  if (!*a3)
  {
    v933 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v933, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "unroutable ports");
  if (__p[8] == 1)
  {
    v167 = *__p;
    if (*__p)
    {
      if (v1054)
      {
        v168 = sub_5544(2);
        v169 = sub_5544(35);
        v170 = 0;
        *buf = 0x100000002;
        v171 = *(v168 + 8);
        while (1)
        {
          v172 = *&buf[v170];
          if (((v171 & v172) != 0) != ((*(v169 + 8) & v172) != 0))
          {
            break;
          }

          v170 += 4;
          if (v170 == 8)
          {
            goto LABEL_355;
          }
        }

        if ((v171 & v172) == 0)
        {
          v168 = v169;
        }

LABEL_355:
        v173 = *v168;
        v174 = v173;
        if (v173)
        {
          v175 = v173;
          if (os_log_type_enabled(v175, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2989;
            *&buf[18] = 2112;
            *&buf[20] = v167;
            _os_log_impl(&dword_0, v175, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Unroutable Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v176 = CFArrayGetCount(v167);
      v177 = CFArrayGetCount(v167);
      if (v176)
      {
        v178 = v177;
        for (i = 0; i != v176; ++i)
        {
          if (v178 == i)
          {
            break;
          }

          sub_A3B9C(v1079, v167, i);
          v180 = v1079[0].__r_.__value_.__r.__words[0];
          if (!v1079[0].__r_.__value_.__r.__words[0])
          {
            v873 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v873, "Could not construct");
          }

          v181 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
          if ((v181 & 0x100000000) == 0)
          {
            v868 = sub_5544(14);
            v869 = sub_468EC(1, *v868, *(v868 + 8));
            v870 = v869;
            if (v869)
            {
              v871 = v869;
              if (os_log_type_enabled(v871, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2998;
                _os_log_impl(&dword_0, v871, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v872 = __cxa_allocate_exception(0x10uLL);
            *v872 = &off_6DDDD0;
            v872[2] = 1852797029;
          }

          v182 = v181;
          sub_2820();
          v183 = sub_3D90(v182);
          theArray.__r_.__value_.__r.__words[0] = v183;
          if (!v183)
          {
            v692 = sub_5544(14);
            v693 = sub_468EC(1, *v692, *(v692 + 8));
            v694 = v693;
            if (v693)
            {
              v695 = v693;
              if (os_log_type_enabled(v695, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3001;
                _os_log_impl(&dword_0, v695, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v696 = __cxa_allocate_exception(0x10uLL);
            *v696 = &off_6DDDD0;
            v696[2] = 560947818;
          }

          sub_114B44(a1 + 520, v183);
          CFRelease(v180);
        }
      }

      if (!*a3)
      {
        v993 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v993, "Could not construct");
      }

      if (sub_47E08(*a3))
      {
        sub_3A6A58(buf, (a1 + 520));
        if (*(a1 + 760) == 1)
        {
          v184 = *(a1 + 736);
          if (v184)
          {
            *(a1 + 744) = v184;
            operator delete(v184);
          }

          *(a1 + 736) = *buf;
          *(a1 + 752) = *&buf[16];
        }

        else
        {
          *(a1 + 736) = *buf;
          *(a1 + 752) = *&buf[16];
          *(a1 + 760) = 1;
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  v185 = *a3;
  if (!*a3)
  {
    v934 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v934, "Could not construct");
  }

  v186 = CFStringCreateWithBytes(0, "voice processing configuration", 30, 0x8000100u, 0);
  *buf = v186;
  if (!v186)
  {
    v935 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v935, "Could not construct");
  }

  Value = CFDictionaryGetValue(v185, v186);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (!Value)
  {
    goto LABEL_388;
  }

  CFRetain(Value);
  v188 = CFGetTypeID(Value);
  if (v188 != CFDictionaryGetTypeID())
  {
    CFRelease(Value);
LABEL_388:
    __p[0] = 0;
    __p[8] = 0;
    goto LABEL_389;
  }

  *__p = Value;
  __p[8] = 1;
  sub_BDD1C(a1 + 616, Value, 1u);
  *(a1 + 464) = CFDictionaryGetCount(Value) != 0;
  if (v1054)
  {
    v189 = sub_5544(2);
    v190 = sub_5544(35);
    v191 = 0;
    *buf = 0x100000002;
    v192 = *(v189 + 8);
    while (1)
    {
      v193 = *&buf[v191];
      if (((v192 & v193) != 0) != ((*(v190 + 8) & v193) != 0))
      {
        break;
      }

      v191 += 4;
      if (v191 == 8)
      {
        goto LABEL_508;
      }
    }

    if ((v192 & v193) == 0)
    {
      v189 = v190;
    }

LABEL_508:
    v271 = *v189;
    v272 = v271;
    if (v271)
    {
      v273 = v271;
      if (os_log_type_enabled(v273, OS_LOG_TYPE_DEBUG))
      {
        v274 = "false";
        v275 = *(a1 + 464);
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *buf = 136315650;
        if (v275)
        {
          v274 = "true";
        }

        *&buf[12] = 1024;
        *&buf[14] = 3022;
        *&buf[18] = 2080;
        *&buf[20] = v274;
        _os_log_impl(&dword_0, v273, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Voice Processing Enabled: %s.", buf, 0x1Cu);
      }
    }

    v276 = sub_5544(2);
    v277 = sub_5544(35);
    v278 = 0;
    *buf = 0x100000002;
    v279 = *(v276 + 8);
    while (1)
    {
      v280 = *&buf[v278];
      if (((v279 & v280) != 0) != ((*(v277 + 8) & v280) != 0))
      {
        break;
      }

      v278 += 4;
      if (v278 == 8)
      {
        goto LABEL_520;
      }
    }

    if ((v279 & v280) == 0)
    {
      v276 = v277;
    }

LABEL_520:
    v281 = *v276;
    v282 = v281;
    if (v281)
    {
      v283 = v281;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3025;
        *&buf[18] = 2112;
        *&buf[20] = Value;
        _os_log_impl(&dword_0, v283, OS_LOG_TYPE_DEBUG, "%25s:%-5d - VP configuration data: %@.", buf, 0x1Cu);
      }
    }
  }

LABEL_389:
  if (__p[8] == 1 && *__p)
  {
    CFRelease(*__p);
  }

  sub_53E8(buf, "screen dark policy enabled");
  v194 = sub_4A268(a3, buf);
  *(a1 + 152) = v194;
  *(a1 + 156) = BYTE4(v194);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v1054 && *(a1 + 156) == 1)
  {
    v195 = sub_5544(2);
    v196 = sub_5544(35);
    v197 = 0;
    *buf = 0x100000002;
    v198 = *(v195 + 8);
    while (1)
    {
      v199 = *&buf[v197];
      if (((v198 & v199) != 0) != ((*(v196 + 8) & v199) != 0))
      {
        break;
      }

      v197 += 4;
      if (v197 == 8)
      {
        goto LABEL_402;
      }
    }

    if ((v198 & v199) == 0)
    {
      v195 = v196;
    }

LABEL_402:
    v200 = *v195;
    v201 = v200;
    if (v200)
    {
      v202 = v200;
      if (os_log_type_enabled(v202, OS_LOG_TYPE_DEBUG))
      {
        if ((*(a1 + 156) & 1) == 0)
        {
          sub_1EC054();
        }

        v203 = "false";
        v204 = *(a1 + 152);
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *buf = 136315650;
        if (v204 == 1)
        {
          v203 = "true";
        }

        *&buf[12] = 1024;
        *&buf[14] = 3033;
        *&buf[18] = 2080;
        *&buf[20] = v203;
        _os_log_impl(&dword_0, v202, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Screen dark policy enabled: %s.", buf, 0x1Cu);
      }
    }
  }

  if (!*a3)
  {
    v936 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v936, "Could not construct");
  }

  sub_4A5E0(&v1071, *a3, "device hints");
  if (v1072 == 1)
  {
    v205 = v1071;
    if (v1071)
    {
      CFRetain(v1071);
      v206 = 0;
      v207 = 0;
      v1066[0] = v205;
      buf[0] = 0;
      while (v207 < CFArrayGetCount(v205))
      {
        if (CFArrayGetCount(v205) <= v207 || (v208 = CFArrayGetValueAtIndex(v205, v207), (v209 = v208) == 0))
        {
          LOBYTE(v1085) = v206;
          goto LABEL_1665;
        }

        CFRetain(v208);
        v210 = CFGetTypeID(v209);
        if (v210 != CFDataGetTypeID())
        {
          LOBYTE(v1085) = v206;
          CFRelease(v209);
LABEL_1665:
          v1079[0].__r_.__value_.__s.__data_[0] = 0;
          v1079[0].__r_.__value_.__s.__data_[8] = 0;
          v845 = sub_5544(14);
          v846 = sub_468EC(1, *v845, *(v845 + 8));
          v847 = v846;
          if (v846)
          {
            v848 = v846;
            if (os_log_type_enabled(v848, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 3052;
              _os_log_impl(&dword_0, v848, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDeviceHintsKey does not contain CFDataRefs.", __p, 0x12u);
            }
          }

          v849 = __cxa_allocate_exception(0x10uLL);
          *v849 = &off_6DDDD0;
          v849[2] = 1852797029;
        }

        v1079[0].__r_.__value_.__r.__words[0] = v209;
        v1079[0].__r_.__value_.__s.__data_[8] = 1;
        BytePtr = CFDataGetBytePtr(v209);
        v212 = BytePtr;
        if (!BytePtr)
        {
          LOBYTE(v1085) = v206;
          v675 = sub_5544(14);
          v676 = sub_468EC(1, *v675, *(v675 + 8));
          v677 = v676;
          if (v676)
          {
            v678 = v676;
            if (os_log_type_enabled(v678, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315650;
              *&__p[4] = "VirtualAudio_PlugIn.mm";
              *&__p[12] = 1024;
              *&__p[14] = 3056;
              *&__p[18] = 2048;
              *&__p[20] = v207;
              _os_log_impl(&dword_0, v678, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError) [deviceHint is NULL]: The CFDataRef specified at index %lu by kVirtualAudioPlugInRouteConfigurationDeviceHintsKey is NULL.", __p, 0x1Cu);
            }
          }

          v679 = __cxa_allocate_exception(0x10uLL);
          *v679 = &off_6DDDD0;
          v679[2] = 1852797029;
        }

        if (*(BytePtr + 1) == 1651861092)
        {
          if (v206)
          {
            v213 = *sub_5544(2);
            v214 = v213;
            if (v213)
            {
              v215 = v213;
              if (os_log_type_enabled(v215, OS_LOG_TYPE_INFO))
              {
                *__p = 136315394;
                *&__p[4] = "VirtualAudio_PlugIn.mm";
                *&__p[12] = 1024;
                *&__p[14] = 3061;
                _os_log_impl(&dword_0, v215, OS_LOG_TYPE_INFO, "%25s:%-5d Buffer Duration hint being set a second time, discarding previously set value", __p, 0x12u);
              }
            }
          }

          else
          {
            v206 = 1;
          }

          *buf = *v212;
          *&buf[16] = *(v212 + 1);
          *&buf[32] = *(v212 + 2);
        }

        else
        {
          sub_BDDA0(a1 + 632, BytePtr);
        }

        CFRelease(v209);
        ++v207;
      }

      LOBYTE(v1085) = v206;
      if (v206)
      {
        sub_BDDA0(a1 + 632, buf);
      }

      sub_53E8(&v1083, "{ ");
      v216 = *(a1 + 632);
      if (*(a1 + 640) != v216)
      {
        v217 = *(v216 + 4);
        v218 = *(v216 + 8);
        v219 = *(v216 + 32);
        v220 = *(v216 + 40);
        sub_22170(&cf, *v216);
        v221 = std::string::insert(&cf, 0, "[ ", 2uLL);
        v222 = *&v221->__r_.__value_.__l.__data_;
        theArray.__r_.__value_.__r.__words[2] = v221->__r_.__value_.__r.__words[2];
        *&theArray.__r_.__value_.__l.__data_ = v222;
        v221->__r_.__value_.__l.__size_ = 0;
        v221->__r_.__value_.__r.__words[2] = 0;
        v221->__r_.__value_.__r.__words[0] = 0;
        v223 = std::string::append(&theArray, ": ", 2uLL);
        v224 = *&v223->__r_.__value_.__l.__data_;
        v1079[0].__r_.__value_.__r.__words[2] = v223->__r_.__value_.__r.__words[2];
        *&v1079[0].__r_.__value_.__l.__data_ = v224;
        v223->__r_.__value_.__l.__size_ = 0;
        v223->__r_.__value_.__r.__words[2] = 0;
        v223->__r_.__value_.__r.__words[0] = 0;
        LODWORD(v1061) = v217;
        *(&v1061 + 4) = v218;
        sub_22CE0(&v1074);
      }

      std::string::append(&v1083, " }", 2uLL);
      v225 = sub_5544(2);
      v226 = sub_5544(35);
      v227 = 0;
      *__p = 0x100000002;
      v228 = *(v225 + 8);
      while (1)
      {
        v229 = *&__p[v227];
        if (((v228 & v229) != 0) != ((*(v226 + 8) & v229) != 0))
        {
          break;
        }

        v227 += 4;
        if (v227 == 8)
        {
          goto LABEL_440;
        }
      }

      if ((v228 & v229) == 0)
      {
        v225 = v226;
      }

LABEL_440:
      v230 = *v225;
      v231 = v230;
      if (v230)
      {
        v232 = v230;
        if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
        {
          v233 = &v1083;
          if ((v1083.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v233 = v1083.__r_.__value_.__r.__words[0];
          }

          *__p = 136315650;
          *&__p[4] = "VirtualAudio_PlugIn.mm";
          *&__p[12] = 1024;
          *&__p[14] = 3074;
          *&__p[18] = 2080;
          *&__p[20] = v233;
          _os_log_impl(&dword_0, v232, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Device Hints: %s.", __p, 0x1Cu);
        }
      }

      if (SHIBYTE(v1083.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1083.__r_.__value_.__l.__data_);
      }

      CFRelease(v205);
      CFRelease(v205);
    }
  }

  if (!*a3)
  {
    v937 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v937, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "disallowed ports");
  if (__p[8] == 1)
  {
    v234 = *__p;
    if (*__p)
    {
      if (v1054)
      {
        v235 = sub_5544(2);
        v236 = sub_5544(35);
        v237 = 0;
        *buf = 0x100000002;
        v238 = *(v235 + 8);
        while (1)
        {
          v239 = *&buf[v237];
          if (((v238 & v239) != 0) != ((*(v236 + 8) & v239) != 0))
          {
            break;
          }

          v237 += 4;
          if (v237 == 8)
          {
            goto LABEL_459;
          }
        }

        if ((v238 & v239) == 0)
        {
          v235 = v236;
        }

LABEL_459:
        v240 = *v235;
        v241 = v240;
        if (v240)
        {
          v242 = v240;
          if (os_log_type_enabled(v242, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3083;
            *&buf[18] = 2112;
            *&buf[20] = v234;
            _os_log_impl(&dword_0, v242, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Disallowed Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      sub_27A4();
      theArray.__r_.__value_.__s.__data_[0] = (*(qword_6E94F8 + 16))();
      v243 = CFArrayGetCount(v234);
      v244 = CFArrayGetCount(v234);
      if (v243)
      {
        v245 = v244;
        for (j = 0; j != v243; ++j)
        {
          if (v245 == j)
          {
            break;
          }

          sub_A3B9C(v1079, v234, j);
          v247 = v1079[0].__r_.__value_.__r.__words[0];
          if (!v1079[0].__r_.__value_.__r.__words[0])
          {
            v855 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v855, "Could not construct");
          }

          v248 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
          if ((v248 & 0x100000000) == 0)
          {
            v850 = sub_5544(14);
            v851 = sub_468EC(1, *v850, *(v850 + 8));
            v852 = v851;
            if (v851)
            {
              v853 = v851;
              if (os_log_type_enabled(v853, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3094;
                _os_log_impl(&dword_0, v853, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDisallowedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v854 = __cxa_allocate_exception(0x10uLL);
            *v854 = &off_6DDDD0;
            v854[2] = 1852797029;
          }

          v249 = v248;
          sub_2820();
          v250 = sub_3D90(v249);
          if (!v250)
          {
            v680 = sub_5544(14);
            v681 = sub_468EC(1, *v680, *(v680 + 8));
            v682 = v681;
            if (v681)
            {
              v683 = v681;
              if (os_log_type_enabled(v683, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3097;
                _os_log_impl(&dword_0, v683, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
              }
            }

            v684 = __cxa_allocate_exception(0x10uLL);
            *v684 = &off_6DDDD0;
            v684[2] = 560947818;
          }

          v251 = *(v250 + 96);
          if (v251 && (v252 = *(v250 + 88), atomic_fetch_add_explicit(&v251->__shared_weak_owners_, 1uLL, memory_order_relaxed), (v253 = std::__shared_weak_count::lock(v251)) != 0))
          {
            atomic_fetch_add_explicit(&v253->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            *buf = v252;
            *&buf[8] = v253;
            sub_1A8C0(v253);
          }

          else
          {
            *&buf[8] = 0;
            *buf = 0;
          }

          sub_CB814(v1052, buf);
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_weak(*&buf[8]);
          }

          if (v251)
          {
            std::__shared_weak_count::__release_weak(v251);
          }

          CFRelease(v247);
        }
      }

      sub_210C50(&theArray);
      CFRelease(v234);
    }
  }

  sub_53E8(buf, "ignore ringer switch");
  v254 = sub_4A268(a3, buf);
  *v1051 = v254;
  *(v1051 + 4) = BYTE4(v254);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v1054 && *(a1 + 380) == 1)
  {
    v255 = sub_5544(2);
    v256 = sub_5544(35);
    v257 = 0;
    *buf = 0x100000002;
    v258 = *(v255 + 8);
    while (1)
    {
      v259 = *&buf[v257];
      if (((v258 & v259) != 0) != ((*(v256 + 8) & v259) != 0))
      {
        break;
      }

      v257 += 4;
      if (v257 == 8)
      {
        goto LABEL_490;
      }
    }

    if ((v258 & v259) == 0)
    {
      v255 = v256;
    }

LABEL_490:
    v260 = *v255;
    v261 = v260;
    if (v260)
    {
      v262 = v260;
      if (os_log_type_enabled(v262, OS_LOG_TYPE_DEBUG))
      {
        if ((*(a1 + 380) & 1) == 0)
        {
          sub_1EC054();
        }

        v263 = "false";
        v264 = *v1051;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *buf = 136315650;
        if (v264 == 1)
        {
          v263 = "true";
        }

        *&buf[12] = 1024;
        *&buf[14] = 3109;
        *&buf[18] = 2080;
        *&buf[20] = v263;
        _os_log_impl(&dword_0, v262, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Ignoring silent mode: %s.", buf, 0x1Cu);
      }
    }
  }

  if (!*a3)
  {
    v938 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v938, "Could not construct");
  }

  sub_4A1E0(__p, *a3, "aggregated ports");
  if (__p[8] == 1)
  {
    v265 = *__p;
    if (*__p)
    {
      if (v1054)
      {
        v266 = sub_5544(2);
        v267 = sub_5544(35);
        v268 = 0;
        *buf = 0x100000002;
        v269 = *(v266 + 8);
        while (1)
        {
          v270 = *&buf[v268];
          if (((v269 & v270) != 0) != ((*(v267 + 8) & v270) != 0))
          {
            break;
          }

          v268 += 4;
          if (v268 == 8)
          {
            goto LABEL_527;
          }
        }

        if ((v269 & v270) == 0)
        {
          v266 = v267;
        }

LABEL_527:
        v284 = *v266;
        v285 = v284;
        if (v284)
        {
          v286 = v284;
          if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3117;
            *&buf[18] = 2112;
            *&buf[20] = v265;
            _os_log_impl(&dword_0, v286, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Aggregated Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v287 = CFArrayGetCount(v265);
      v288 = CFArrayGetCount(v265);
      if (v287)
      {
        v289 = v288;
        for (k = 0; k != v287; ++k)
        {
          if (v289 == k)
          {
            break;
          }

          sub_A3B9C(v1079, v265, k);
          v291 = v1079[0].__r_.__value_.__r.__words[0];
          if (!v1079[0].__r_.__value_.__r.__words[0])
          {
            v879 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v879, "Could not construct");
          }

          v292 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
          LODWORD(theArray.__r_.__value_.__l.__data_) = v292;
          theArray.__r_.__value_.__s.__data_[4] = BYTE4(v292);
          if ((v292 & 0x100000000) == 0)
          {
            v874 = sub_5544(14);
            v875 = sub_468EC(1, *v874, *(v874 + 8));
            v876 = v875;
            if (v875)
            {
              v877 = v875;
              if (os_log_type_enabled(v877, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3126;
                _os_log_impl(&dword_0, v877, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationAggregatedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v878 = __cxa_allocate_exception(0x10uLL);
            *v878 = &off_6DDDD0;
            v878[2] = 1852797029;
          }

          sub_75788(a1 + 568, v292);
          CFRelease(v291);
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  if (!*a3)
  {
    v939 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v939, "Could not construct");
  }

  sub_4A76C(__p, *a3, "deaggregated ports");
  if (__p[8] == 1)
  {
    v293 = *__p;
    if (*__p)
    {
      if (v1054)
      {
        v294 = sub_5544(2);
        v295 = sub_5544(35);
        v296 = 0;
        *buf = 0x100000002;
        v297 = *(v294 + 8);
        while (1)
        {
          v298 = *&buf[v296];
          if (((v297 & v298) != 0) != ((*(v295 + 8) & v298) != 0))
          {
            break;
          }

          v296 += 4;
          if (v296 == 8)
          {
            goto LABEL_550;
          }
        }

        if ((v297 & v298) == 0)
        {
          v294 = v295;
        }

LABEL_550:
        v299 = *v294;
        v300 = v299;
        if (v299)
        {
          v301 = v299;
          if (os_log_type_enabled(v301, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3138;
            *&buf[18] = 2112;
            *&buf[20] = v293;
            _os_log_impl(&dword_0, v301, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Deaggregated Ports: %@.", buf, 0x1Cu);
          }
        }
      }

      v302 = CFArrayGetCount(v293);
      v303 = CFArrayGetCount(v293);
      if (v302)
      {
        v304 = v303;
        for (m = 0; m != v302; ++m)
        {
          if (v304 == m)
          {
            break;
          }

          sub_A3B9C(v1079, v293, m);
          v306 = v1079[0].__r_.__value_.__r.__words[0];
          if (!v1079[0].__r_.__value_.__r.__words[0])
          {
            v885 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v885, "Could not construct");
          }

          v307 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
          LODWORD(theArray.__r_.__value_.__l.__data_) = v307;
          theArray.__r_.__value_.__s.__data_[4] = BYTE4(v307);
          if ((v307 & 0x100000000) == 0)
          {
            v880 = sub_5544(14);
            v881 = sub_468EC(1, *v880, *(v880 + 8));
            v882 = v881;
            if (v881)
            {
              v883 = v881;
              if (os_log_type_enabled(v883, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3147;
                _os_log_impl(&dword_0, v883, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationDeaggregatedPortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
              }
            }

            v884 = __cxa_allocate_exception(0x10uLL);
            *v884 = &off_6DDDD0;
            v884[2] = 1852797029;
          }

          sub_75788(a1 + 592, v307);
          CFRelease(v306);
        }
      }

      if (*__p)
      {
        CFRelease(*__p);
      }
    }
  }

  if (!*a3)
  {
    v940 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v940, "Could not construct");
  }

  v308 = *a1;
  if (sub_43D7C(*a3, "category"))
  {
    if (*a3)
    {
      v309 = sub_4A7F4(*a3, "category");
      if (v309)
      {
        v308 = sub_4A8F8(v309);
        if (v1054)
        {
          v310 = sub_5544(2);
          v311 = sub_5544(35);
          v312 = 0;
          *buf = 0x100000002;
          v313 = *(v310 + 8);
          while (1)
          {
            v314 = *&buf[v312];
            if (((v313 & v314) != 0) != ((*(v311 + 8) & v314) != 0))
            {
              break;
            }

            v312 += 4;
            if (v312 == 8)
            {
              goto LABEL_574;
            }
          }

          if ((v313 & v314) == 0)
          {
            v310 = v311;
          }

LABEL_574:
          v315 = *v310;
          v316 = v315;
          if (v315)
          {
            v317 = v315;
            if (os_log_type_enabled(v317, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, v308);
              v318 = __p[23] >= 0 ? __p : *__p;
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3162;
              *&buf[18] = 2080;
              *&buf[20] = v318;
              _os_log_impl(&dword_0, v317, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Category: %s.", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }
        }

        goto LABEL_583;
      }

      v977 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v977, "Could not find item");
    }

    else
    {
      v977 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v977, "Could not construct");
    }
  }

LABEL_583:
  v319 = *a3;
  if (!*a3)
  {
    v941 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v941, "Could not construct");
  }

  v320 = *(a1 + 4);
  v321 = CFStringCreateWithBytes(0, "mode", 4, 0x8000100u, 0);
  *buf = v321;
  if (!v321)
  {
    v942 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v942, "Could not construct");
  }

  v322 = CFDictionaryContainsKey(v319, v321);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v322)
  {
    if (*a3)
    {
      v323 = sub_47FE0(*a3, "mode");
      if (v323)
      {
        v320 = sub_4A8F8(v323);
        if (v1054)
        {
          v324 = sub_5544(2);
          v325 = sub_5544(35);
          v326 = 0;
          *buf = 0x100000002;
          v327 = *(v324 + 8);
          while (1)
          {
            v328 = *&buf[v326];
            if (((v327 & v328) != 0) != ((*(v325 + 8) & v328) != 0))
            {
              break;
            }

            v326 += 4;
            if (v326 == 8)
            {
              goto LABEL_597;
            }
          }

          if ((v327 & v328) == 0)
          {
            v324 = v325;
          }

LABEL_597:
          v329 = *v324;
          v330 = v329;
          if (v329)
          {
            v331 = v329;
            if (os_log_type_enabled(v331, OS_LOG_TYPE_DEBUG))
            {
              sub_22170(__p, v320);
              v332 = __p[23] >= 0 ? __p : *__p;
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3171;
              *&buf[18] = 2080;
              *&buf[20] = v332;
              _os_log_impl(&dword_0, v331, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Mode: %s.", buf, 0x1Cu);
              if ((__p[23] & 0x80000000) != 0)
              {
                operator delete(*__p);
              }
            }
          }
        }

        goto LABEL_606;
      }

      v963 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v963, "Could not find item");
    }

    else
    {
      v963 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v963, "Could not construct");
    }
  }

LABEL_606:
  if (!*a3)
  {
    v943 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v943, "Could not construct");
  }

  v333 = sub_4A994(*a3, "aggregate device clock device");
  if (v333)
  {
    v334 = v333;
    CFRetain(v333);
    v335 = CFGetTypeID(v334);
    if (v335 == CFStringGetTypeID())
    {
      *__p = v334;
      __p[8] = 1;
      if (v1054)
      {
        v336 = sub_5544(2);
        v337 = sub_5544(35);
        v338 = 0;
        *buf = 0x100000002;
        v339 = *(v336 + 8);
        while (1)
        {
          v340 = *&buf[v338];
          if (((v339 & v340) != 0) != ((*(v337 + 8) & v340) != 0))
          {
            break;
          }

          v338 += 4;
          if (v338 == 8)
          {
            goto LABEL_617;
          }
        }

        if ((v339 & v340) == 0)
        {
          v336 = v337;
        }

LABEL_617:
        v341 = *v336;
        v342 = v341;
        if (v341)
        {
          v343 = v341;
          if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3180;
            *&buf[18] = 2112;
            *&buf[20] = v334;
            _os_log_impl(&dword_0, v343, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Aggregate Clock Device: %@", buf, 0x1Cu);
          }
        }
      }

      sub_125D8(buf, v334);
      v344 = buf[23];
      v345 = buf[23];
      if (buf[23] < 0)
      {
        v344 = *&buf[8];
      }

      if (v344)
      {
        if (*(a1 + 416) == 1)
        {
          std::string::operator=((a1 + 392), buf);
        }

        else
        {
          if ((buf[23] & 0x80000000) != 0)
          {
            sub_54A0((a1 + 392), *buf, *&buf[8]);
          }

          else
          {
            *(a1 + 392) = *buf;
            *(a1 + 408) = *&buf[16];
          }

          *(a1 + 416) = 1;
        }

        v345 = buf[23];
      }

      if (v345 < 0)
      {
        operator delete(*buf);
      }
    }

    CFRelease(v334);
  }

  if ((*(a1 + 416) & 1) == 0 && v320 == 1768057203)
  {
    sub_53E8(buf, "NetworkUplinkClock_UID");
    if (*(a1 + 416) == 1)
    {
      if (*(a1 + 415) < 0)
      {
        operator delete(*(a1 + 392));
      }

      *(a1 + 392) = *buf;
      *(a1 + 408) = *&buf[16];
    }

    else
    {
      *(a1 + 392) = *buf;
      *(a1 + 408) = *&buf[16];
      *(a1 + 416) = 1;
    }
  }

  if (!*a3)
  {
    v944 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v944, "Could not construct");
  }

  v372 = sub_11094(*a3, "optional output mode");
  if (v372 && (v373 = sub_113A0(v372), (v373 & 0x100000000) != 0))
  {
    v376 = v373;
    if (v1054)
    {
      v377 = sub_5544(2);
      v378 = sub_5544(35);
      v379 = 0;
      *buf = 0x100000002;
      v380 = *(v377 + 8);
      while (1)
      {
        v381 = *&buf[v379];
        if (((v380 & v381) != 0) != ((*(v378 + 8) & v381) != 0))
        {
          break;
        }

        v379 += 4;
        if (v379 == 8)
        {
          goto LABEL_703;
        }
      }

      if ((v380 & v381) == 0)
      {
        v377 = v378;
      }

LABEL_703:
      v382 = *v377;
      v383 = v382;
      if (v382)
      {
        v384 = v382;
        if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(__p, v376);
          v385 = __p[23] >= 0 ? __p : *__p;
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2780;
          *&buf[18] = 2080;
          *&buf[20] = v385;
          _os_log_impl(&dword_0, v384, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Optional Output Mode: %s", buf, 0x1Cu);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }
    }

    v375 = v376 & 0xFFFFFF00;
    v374 = 0x100000000;
  }

  else if (v1043)
  {
    v374 = 0x100000000;
    v375 = 1768776704;
    LOBYTE(v376) = 102;
  }

  else
  {
    v374 = 0;
    LOBYTE(v376) = 0;
    v375 = 0;
  }

  v1066[0] = __PAIR64__(v320, v308);
  v1066[1] = v375 | v376 | v374;
  if (!*a3)
  {
    v945 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v945, "Could not construct");
  }

  sub_4AA98(buf, *a3);
  if (buf[8] != 1 || (v386 = *buf) == 0)
  {
    v1065 = 0;
    *buf = 1852796517;
    memset(&buf[8], 0, 24);
    *&buf[32] = 0x756E64656175746FLL;
    goto LABEL_723;
  }

  CFRetain(*buf);
  v1065 = v386;
  CFRelease(v386);
  v387 = sub_10A424(v1066, &v1065);
  v388 = 1635087471;
  if (v387 != 1635087471)
  {
    sub_10984C(__p, v386, v387);
    *buf = v387;
    if ((__p[23] & 0x80000000) != 0)
    {
      sub_54A0(&buf[8], *__p, *&__p[8]);
      *&buf[32] = 0x756E64656175746FLL;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    else
    {
      *&buf[8] = *__p;
      *&buf[24] = *&__p[16];
      *&buf[32] = 0x756E64656175746FLL;
    }

    if (!sub_10A958(v387))
    {
      goto LABEL_723;
    }

    v405 = v1065;
    if (v1065)
    {
      v406 = 1970168933;
      if (CFDictionaryGetCount(v1065))
      {
        v407 = sub_148DA8(v405, "activation call direction");
        if (v407)
        {
          v407 = sub_113A0(v407);
        }

        if ((v407 & 0x100000000) != 0)
        {
          v406 = v407;
        }

        else
        {
          v406 = 1970168933;
        }
      }

      *&buf[36] = v406;
      if (!CFDictionaryGetCount(v405))
      {
        goto LABEL_762;
      }

      v408 = CFStringCreateWithBytes(0, "activation accessibility preference", 35, 0x8000100u, 0);
      *__p = v408;
      if (!v408)
      {
        v1022 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v1022, "Could not construct");
      }

      v409 = CFDictionaryGetValue(v405, v408);
      if (*__p)
      {
        CFRelease(*__p);
      }

      if (v409)
      {
        v410 = sub_113A0(v409);
        if ((v410 & 0x100000000) != 0)
        {
          v388 = v410;
LABEL_762:
          *&buf[32] = v388;
          goto LABEL_723;
        }
      }

      v1025 = sub_5544(14);
      v1026 = *v1025;
      if (*v1025 && os_log_type_enabled(*v1025, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VirtualAudio_Utilities.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 520;
        _os_log_impl(&dword_0, v1026, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Route activation description does not contain accessibility preference", __p, 0x12u);
      }

      v1016 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v1016, "Route activation description does not contain accessibility preference");
    }

    else
    {
      v1014 = sub_5544(14);
      v1015 = *v1014;
      if (*v1014 && os_log_type_enabled(*v1014, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "VirtualAudio_Utilities.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 528;
        _os_log_impl(&dword_0, v1015, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
      }

      v1016 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v1016, "Precondition failure.");
    }
  }

  v389 = a2;
  v390 = *(a2 + 240);
  if (v390 == 1852796517)
  {
    v391 = sub_5544(2);
    v392 = sub_5544(35);
    v393 = 0;
    *__p = 0x100000002;
    v394 = *(v391 + 8);
    while (1)
    {
      v395 = *&__p[v393];
      if (((v394 & v395) != 0) != ((*(v392 + 8) & v395) != 0))
      {
        break;
      }

      v393 += 4;
      if (v393 == 8)
      {
        goto LABEL_786;
      }
    }

    if ((v394 & v395) == 0)
    {
      v391 = v392;
    }

LABEL_786:
    v422 = *v391;
    v423 = v422;
    if (v422)
    {
      v424 = v422;
      if (os_log_type_enabled(v424, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v1079, 0x6175746Fu);
        v425 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
        *__p = 136315650;
        *&__p[4] = "VirtualAudio_PlugIn.mm";
        *&__p[12] = 1024;
        *&__p[14] = 3660;
        *&__p[18] = 2080;
        *&__p[20] = v425;
        _os_log_impl(&dword_0, v424, OS_LOG_TYPE_ERROR, "%25s:%-5d Current trigger is '%s', but previous trigger is unknown", __p, 0x1Cu);
        if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1079[0].__r_.__value_.__l.__data_);
        }
      }
    }

    v389 = a2;
    v390 = *(a2 + 240);
  }

  *buf = v390;
  if (*(v389 + 271) < 0)
  {
    sub_54A0(&buf[8], *(v389 + 248), *(v389 + 256));
  }

  else
  {
    *&buf[8] = *(v389 + 248);
    *&buf[24] = *(v389 + 264);
  }

  *&buf[32] = *(a2 + 272);
LABEL_723:
  *(a1 + 168) = *buf;
  if (*(a1 + 199) < 0)
  {
    operator delete(*v1037);
  }

  *v1037 = *&buf[8];
  *(a1 + 192) = *&buf[24];
  *(a1 + 200) = *&buf[32];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v396 = *a3;
    if (!*a3)
    {
      v978 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v978, "Could not construct");
    }

    *buf = 0;
    sub_4AB28(v1079, v396, "persistent route", buf);
    if (*buf)
    {
      CFRelease(*buf);
    }

    v397 = v1079[0].__r_.__value_.__r.__words[0];
    if (v1079[0].__r_.__value_.__r.__words[0])
    {
      sub_23ECB0(buf, v1079);
      sub_12790(v1057);
      *(a1 + 208) = *buf;
      *(a1 + 224) = *&buf[16];
      memset(buf, 0, 24);
      sub_12790(a1 + 232);
      *(a1 + 232) = *&buf[24];
      *(a1 + 248) = *&buf[40];
      memset(&buf[24], 0, 24);
      sub_23BD00(a1 + 256, &v1085);
      sub_23BD00(a1 + 296, &v1090);
      sub_23BD00(a1 + 336, &v1093);
      sub_4B0A0(v1094);
      v398 = v1093;
      v1093 = 0;
      if (v398)
      {
        operator delete(v398);
      }

      sub_4B0A0(v1092);
      v399 = v1090;
      v1090 = 0;
      if (v399)
      {
        operator delete(v399);
      }

      sub_4B0A0(v1087);
      v400 = v1085;
      v1085 = 0;
      if (v400)
      {
        operator delete(v400);
      }

      *__p = &buf[24];
      sub_11C50(__p);
      *__p = buf;
      sub_11C50(__p);
      if (!*a3)
      {
        v994 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v994, "Could not construct");
      }

      if (CFDictionaryGetCount(*a3) == 1)
      {
        sub_7FF98(buf, (*(a2 + 112) + 240));
        v401 = *(a1 + 208);
        v402 = *(a1 + 216);
        v403 = *buf;
        if (v402 - v401 != *&buf[8] - *buf)
        {
          goto LABEL_768;
        }

        while (v401 != v402)
        {
          v404 = sub_1DC61C(v401, v403);
          if (!v404)
          {
            goto LABEL_769;
          }

          v401 += 24;
          v403 += 3;
        }

        v411 = *(a1 + 232);
        v412 = *(a1 + 240);
        v413 = *&buf[24];
        if (v412 - v411 == *&buf[32] - *&buf[24])
        {
          if (v411 == v412)
          {
            LOBYTE(v404) = 1;
          }

          else
          {
            do
            {
              v404 = sub_1DC61C(v411, v413);
              if (!v404)
              {
                break;
              }

              v411 += 24;
              v413 += 3;
            }

            while (v411 != v412);
          }
        }

        else
        {
LABEL_768:
          LOBYTE(v404) = 0;
        }

LABEL_769:
        *(a1 + 424) = v404;
        sub_4B0A0(v1094);
        v414 = v1093;
        v1093 = 0;
        if (v414)
        {
          operator delete(v414);
        }

        sub_4B0A0(v1092);
        v415 = v1090;
        v1090 = 0;
        if (v415)
        {
          operator delete(v415);
        }

        sub_4B0A0(v1087);
        v416 = v1085;
        v1085 = 0;
        if (v416)
        {
          operator delete(v416);
        }

        *__p = &buf[24];
        sub_11C50(__p);
        *__p = buf;
        sub_11C50(__p);
      }

      else
      {
        *(a1 + 424) = 0;
      }

      if (v1054 && (*(a1 + 280) || *(a1 + 320) || *(a1 + 360)))
      {
        v417 = sub_5544(2);
        v418 = sub_5544(35);
        v419 = 0;
        *buf = 0x100000002;
        v420 = *(v417 + 8);
        while (1)
        {
          v421 = *&buf[v419];
          if (((v420 & v421) != 0) != ((*(v418 + 8) & v421) != 0))
          {
            break;
          }

          v419 += 4;
          if (v419 == 8)
          {
            goto LABEL_801;
          }
        }

        if ((v420 & v421) == 0)
        {
          v417 = v418;
        }

LABEL_801:
        v426 = *v417;
        v427 = v426;
        if (v426)
        {
          v428 = v426;
          if (os_log_type_enabled(v428, OS_LOG_TYPE_DEFAULT))
          {
            sub_2AB344(__p, v1057);
            v429 = __p[23] >= 0 ? __p : *__p;
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3223;
            *&buf[18] = 2080;
            *&buf[20] = v429;
            _os_log_impl(&dword_0, v428, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Persistent route info: %s.", buf, 0x1Cu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }
      }

      CFRelease(v397);
    }
  }

  if (!*a3)
  {
    v946 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v946, "Could not construct");
  }

  v430 = (v1051 + 428);
  v431 = sub_11094(*a3, "echo cancelled input");
  if (v431)
  {
    v431 = sub_113A0(v431);
  }

  if ((v431 & 0x100000000) != 0)
  {
    v432 = v431;
  }

  else
  {
    v432 = 0;
  }

  *v430 = v432;
  if (v1054)
  {
    v433 = sub_5544(2);
    v434 = sub_5544(35);
    v435 = 0;
    *buf = 0x100000002;
    v436 = *(v433 + 8);
    while (1)
    {
      v437 = *&buf[v435];
      if (((v436 & v437) != 0) != ((*(v434 + 8) & v437) != 0))
      {
        break;
      }

      v435 += 4;
      if (v435 == 8)
      {
        goto LABEL_824;
      }
    }

    if ((v436 & v437) == 0)
    {
      v433 = v434;
    }

LABEL_824:
    v438 = *v433;
    v439 = v438;
    if (v438)
    {
      v440 = v438;
      if (os_log_type_enabled(v440, OS_LOG_TYPE_DEFAULT))
      {
        v441 = *v430;
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3231;
        *&buf[18] = 1024;
        *&buf[20] = v441;
        _os_log_impl(&dword_0, v440, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Echo cancelled input: %u", buf, 0x18u);
      }
    }
  }

  v443 = *(a1 + 624) == 1 && (v442 = *(a1 + 616)) != 0 && CFDictionaryGetCount(v442) != 0;
  sub_43E6C(__p, v1066, v443, *v430);
  *a1 = *__p;
  if (v1047 != &__p[16])
  {
    sub_4ABC8(v1047, *&__p[16], &__p[24]);
  }

  if (!*a3)
  {
    v947 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v947, "Could not construct");
  }

  sub_4A1E0(&theArray, *a3, "overridden ports");
  v444 = theArray.__r_.__value_.__r.__words[0];
  if (theArray.__r_.__value_.__r.__words[0])
  {
    v445 = theArray.__r_.__value_.__s.__data_[8];
  }

  else
  {
    v445 = 0;
  }

  if (v445 != 1)
  {
    if (*a3)
    {
      if (CFDictionaryGetCount(*a3) != 1)
      {
        goto LABEL_887;
      }

      v451 = *a3;
      if (*a3)
      {
        v452 = CFStringCreateWithBytes(0, "voice processing configuration", 30, 0x8000100u, 0);
        *buf = v452;
        if (!v452)
        {
          v1001 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v1001, "Could not construct");
        }

        v453 = CFDictionaryContainsKey(v451, v452);
        if (*buf)
        {
          CFRelease(*buf);
        }

        if (v453 && !sub_3A70B4(a1))
        {
          v454 = *(a2 + 112);
          v1079[0].__r_.__value_.__r.__words[0] = v1079;
          v1079[0].__r_.__value_.__l.__size_ = v1079;
          v1079[0].__r_.__value_.__r.__words[2] = 0;
          sub_1CA268(buf, v454, v1079);
          sub_4B0F4(*(a1 + 24));
          v455 = *&buf[8];
          *(a1 + 16) = *buf;
          *(a1 + 24) = v455;
          v456 = *&buf[16];
          *(a1 + 32) = *&buf[16];
          if (v456)
          {
            v455[2] = v1033;
            *buf = &buf[8];
            *&buf[8] = 0;
            *&buf[16] = 0;
            v455 = 0;
          }

          else
          {
            *v1046 = v1033;
          }

          sub_4B0F4(v455);
          sub_65310(v1079);
        }

        goto LABEL_887;
      }

      v982 = __cxa_allocate_exception(0x10uLL);
      v983 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v982, "Could not construct");
    }

    else
    {
      v979 = sub_5544(14);
      v980 = sub_468EC(1, *v979, *(v979 + 8));
      v981 = v980;
      if (v980 && os_log_type_enabled(v980, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 944;
        _os_log_impl(&dword_0, v981, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v982 = __cxa_allocate_exception(0x10uLL);
      v983 = &std::logic_error::~logic_error;
      std::logic_error::logic_error(v982, "Precondition failure.");
    }

    __cxa_throw(v982, v984, v983);
  }

  if (v1054)
  {
    v446 = sub_5544(2);
    v447 = sub_5544(35);
    v448 = 0;
    *buf = 0x100000002;
    v449 = *(v446 + 8);
    while (1)
    {
      v450 = *&buf[v448];
      if (((v449 & v450) != 0) != ((*(v447 + 8) & v450) != 0))
      {
        break;
      }

      v448 += 4;
      if (v448 == 8)
      {
        goto LABEL_857;
      }
    }

    if ((v449 & v450) == 0)
    {
      v446 = v447;
    }

LABEL_857:
    v457 = *v446;
    v458 = v457;
    if (v457)
    {
      v459 = v457;
      if (os_log_type_enabled(v459, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3247;
        *&buf[18] = 2112;
        *&buf[20] = v444;
        _os_log_impl(&dword_0, v459, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Overridden Ports: %@.", buf, 0x1Cu);
      }
    }
  }

  sub_27A4();
  cf.__r_.__value_.__s.__data_[0] = (*(qword_6E94F8 + 16))();
  v460 = CFArrayGetCount(v444);
  v461 = CFArrayGetCount(v444);
  if (v460)
  {
    v462 = v461;
    for (n = 0; n != v460; ++n)
    {
      if (n == v462)
      {
        break;
      }

      sub_A3B9C(v1079, v444, n);
      v464 = v1079[0].__r_.__value_.__r.__words[0];
      if (!v1079[0].__r_.__value_.__r.__words[0])
      {
        v861 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v861, "Could not construct");
      }

      v465 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
      if ((v465 & 0x100000000) == 0)
      {
        v856 = sub_5544(14);
        v857 = sub_468EC(1, *v856, *(v856 + 8));
        v858 = v857;
        if (v857)
        {
          v859 = v857;
          if (os_log_type_enabled(v859, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3258;
            _os_log_impl(&dword_0, v859, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey does not contain VirtualAudioPortIDs.", buf, 0x12u);
          }
        }

        v860 = __cxa_allocate_exception(0x10uLL);
        *v860 = &off_6DDDD0;
        v860[2] = 1852797029;
      }

      v466 = v465;
      sub_2820();
      v467 = sub_3D90(v466);
      v468 = v467;
      if (!v467)
      {
        v685 = sub_5544(14);
        v686 = sub_468EC(1, *v685, *(v685 + 8));
        v687 = v686;
        if (v686)
        {
          v688 = v686;
          if (os_log_type_enabled(v688, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3261;
            _os_log_impl(&dword_0, v688, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [theVAPort is NULL]: no virtual audio port object with the specified ID", buf, 0x12u);
          }
        }

        v689 = __cxa_allocate_exception(0x10uLL);
        *v689 = &off_6DDDD0;
        v689[2] = 560947818;
      }

      v469 = *(a1 + 520);
      if (v469 != v1059)
      {
        while (v469[4] != v467)
        {
          v470 = v469[1];
          if (v470)
          {
            do
            {
              v471 = v470;
              v470 = *v470;
            }

            while (v470);
          }

          else
          {
            do
            {
              v471 = v469[2];
              v146 = *v471 == v469;
              v469 = v471;
            }

            while (!v146);
          }

          v469 = v471;
          if (v471 == v1059)
          {
            goto LABEL_878;
          }
        }

        if (v469 != v1059)
        {
          v917 = sub_5544(14);
          v918 = sub_468EC(1, *v917, *(v917 + 8));
          v919 = v918;
          if (v918)
          {
            v920 = v918;
            if (os_log_type_enabled(v920, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3266;
              _os_log_impl(&dword_0, v920, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid use of route configuration! Cannot override to a port that is set as unroutable!", buf, 0x12u);
            }
          }

          v921 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v921, "Invalid use of route configuration! Cannot override to a port that is set as unroutable!");
        }
      }

LABEL_878:
      if (!sub_3A70B4(a1))
      {
        v472 = *(v468 + 96);
        *buf = *(v468 + 88);
        *&buf[8] = v472;
        if (v472)
        {
          atomic_fetch_add_explicit(&v472->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_842C0(v1046, buf);
        if (v472)
        {
          std::__shared_weak_count::__release_weak(v472);
        }
      }

      CFRelease(v464);
    }
  }

  sub_210C50(&cf);
  CFRelease(v444);
LABEL_887:
  if (!*a3)
  {
    v948 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v948, "Could not construct");
  }

  if (sub_3A7260(*a3))
  {
    if (!*a3)
    {
      v985 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v985, "Could not construct");
    }

    v473 = sub_11094(*a3, "user preferred input");
    if (v473)
    {
      v474 = v473;
      CFRetain(v473);
      v475 = CFGetTypeID(v474);
      if (v475 == CFNumberGetTypeID())
      {
        v1079[0].__r_.__value_.__r.__words[0] = v474;
        v1079[0].__r_.__value_.__s.__data_[8] = 1;
        if (v1054)
        {
          v476 = sub_5544(2);
          v477 = sub_5544(35);
          v478 = 0;
          *buf = 0x100000002;
          v479 = *(v476 + 8);
          while (1)
          {
            v480 = *&buf[v478];
            if (((v479 & v480) != 0) != ((*(v477 + 8) & v480) != 0))
            {
              break;
            }

            v478 += 4;
            if (v478 == 8)
            {
              goto LABEL_912;
            }
          }

          if ((v479 & v480) == 0)
          {
            v476 = v477;
          }

LABEL_912:
          v489 = *v476;
          v490 = v489;
          if (v489)
          {
            v491 = v489;
            if (os_log_type_enabled(v491, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3289;
              *&buf[18] = 2112;
              *&buf[20] = v474;
              _os_log_impl(&dword_0, v491, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - User Preferred Ports: %@", buf, 0x1Cu);
            }
          }
        }

        v492 = sub_113A0(v474);
        if ((v492 & 0x100000000) == 0)
        {
          v1003 = sub_5544(14);
          v1004 = sub_468EC(1, *v1003, *(v1003 + 8));
          v1005 = v1004;
          if (v1004)
          {
            v1006 = v1004;
            if (os_log_type_enabled(v1006, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3293;
              _os_log_impl(&dword_0, v1006, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Invalid port ID in  kVirtualAudioPlugInRouteConfigurationUserPreferredPortKey", buf, 0x12u);
            }
          }

          v1007 = __cxa_allocate_exception(0x10uLL);
          *v1007 = &off_6DDDD0;
          v1007[2] = 1852797029;
        }

        v493 = v492;
        sub_2820();
        v494 = sub_3D90(v493);
        v495 = v494;
        if (!v494)
        {
          v835 = sub_5544(14);
          v836 = sub_468EC(1, *v835, *(v835 + 8));
          v837 = v836;
          if (v836)
          {
            v838 = v836;
            if (os_log_type_enabled(v838, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3297;
              *&buf[18] = 1024;
              *&buf[20] = v493;
              _os_log_impl(&dword_0, v838, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError) [vaPort is NULL]: No virtual audio port object with the specified ID: %u", buf, 0x18u);
            }
          }

          v839 = __cxa_allocate_exception(0x10uLL);
          *v839 = &off_6DDDD0;
          v839[2] = 560947818;
        }

        v496 = *(a1 + 520);
        if (v496 != v1059)
        {
          while (v496[4] != v494)
          {
            v497 = v496[1];
            if (v497)
            {
              do
              {
                v498 = v497;
                v497 = *v497;
              }

              while (v497);
            }

            else
            {
              do
              {
                v498 = v496[2];
                v146 = *v498 == v496;
                v496 = v498;
              }

              while (!v146);
            }

            v496 = v498;
            if (v498 == v1059)
            {
              goto LABEL_929;
            }
          }

          if (v496 != v1059)
          {
            v1017 = sub_5544(14);
            v1018 = sub_468EC(1, *v1017, *(v1017 + 8));
            v1019 = v1018;
            if (v1018)
            {
              v1020 = v1018;
              if (os_log_type_enabled(v1020, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3300;
                *&buf[18] = 1024;
                *&buf[20] = v493;
                _os_log_impl(&dword_0, v1020, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Invalid use of route configuration. Cannot override to a port (%u) that is set as unroutable", buf, 0x18u);
              }
            }

            v1021 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v1021, "Invalid use of route configuration. Cannot override to a port (%u) that is set as unroutable");
          }
        }

LABEL_929:
        v499 = *(v494 + 96);
        if (v499)
        {
          v500 = *(v494 + 88);
          atomic_fetch_add_explicit(&v499->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v501 = std::__shared_weak_count::lock(v499);
          std::__shared_weak_count::__release_weak(v499);
          if (v501)
          {
            if (v500 && (*(v500 + 184) & 1) != 0 && !sub_3A70B4(a1))
            {
              v502 = *(v495 + 88);
              v503 = *(v495 + 96);
              if (v503)
              {
                atomic_fetch_add_explicit(&v503->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v503->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v504 = *(a1 + 144);
              *(a1 + 136) = v502;
              *(a1 + 144) = v503;
              if (v504)
              {
                std::__shared_weak_count::__release_weak(v504);
              }

              if (v503)
              {
                std::__shared_weak_count::__release_weak(v503);
              }
            }

            sub_1A8C0(v501);
          }
        }

        goto LABEL_941;
      }

      CFRelease(v474);
    }

    v1079[0].__r_.__value_.__s.__data_[0] = 0;
    v1079[0].__r_.__value_.__s.__data_[8] = 0;
    if (v1054)
    {
      v481 = sub_5544(2);
      v482 = sub_5544(35);
      v483 = 0;
      *buf = 0x100000002;
      v484 = *(v481 + 8);
      while (1)
      {
        v485 = *&buf[v483];
        if (((v484 & v485) != 0) != ((*(v482 + 8) & v485) != 0))
        {
          break;
        }

        v483 += 4;
        if (v483 == 8)
        {
          goto LABEL_905;
        }
      }

      if ((v484 & v485) == 0)
      {
        v481 = v482;
      }

LABEL_905:
      v486 = *v481;
      v487 = v486;
      if (v486)
      {
        v488 = v486;
        if (os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3311;
          _os_log_impl(&dword_0, v488, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Clearing User Preferred Ports.", buf, 0x12u);
        }
      }
    }

LABEL_941:
    *(a1 + 457) = v1038;
    if (v1079[0].__r_.__value_.__s.__data_[8] == 1 && v1079[0].__r_.__value_.__r.__words[0])
    {
      CFRelease(v1079[0].__r_.__value_.__l.__data_);
    }
  }

  v505 = (a1 + 696);
  if (v1043 && !*(a2 + 472))
  {
    sub_36DEB0(a1 + 696);
  }

  if (*v505)
  {
    *(a1 + 386) = 1;
    *(a1 + 387) = *(a1 + 700);
    if (*(a1 + 712))
    {
      sub_26AF78(v1052, (a1 + 704));
      v506 = *(a1 + 728);
      if (v506)
      {
        v507 = std::__shared_weak_count::lock(v506);
        if (v507)
        {
          v508 = v507;
          v509 = *(a1 + 720);
          if (v509)
          {
            *buf = *(v509 + 144);
            sub_75788(v1050, *buf);
          }

          sub_1A8C0(v508);
        }
      }
    }

    if (*v505)
    {
      v510 = *sub_5544(2);
      v511 = v510;
      if (v510)
      {
        v512 = v510;
        if (os_log_type_enabled(v512, OS_LOG_TYPE_DEFAULT))
        {
          sub_D086C(v1079, v505);
          v513 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3336;
          *&buf[18] = 2080;
          *&buf[20] = v513;
          _os_log_impl(&dword_0, v512, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Colistening state: %s", buf, 0x1Cu);
          if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1079[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  if (!((a5 == 0) | (v1049 | v1038) & 1))
  {
    if (!*a3)
    {
      v986 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v986, "Could not construct");
    }

    v519 = sub_4A0DC(*a3, "studio mic input");
    if (v519)
    {
      v519 = sub_113A0(v519);
    }

    v520 = (a1 + 456);
    *(a1 + 456) = BYTE4(v519) & (v519 != 0);
    if (v1054)
    {
      goto LABEL_982;
    }

    goto LABEL_997;
  }

  if (!v1054)
  {
    v521 = a1;
    v520 = (a1 + 456);
    *(a1 + 456) = *(a2 + 560) != 0;
    *(a1 + 808) = (*(*(a2 + 112) + 472) & 0x1FFFFFFFFLL) == 0x172666172;
    goto LABEL_1008;
  }

  v514 = sub_5544(2);
  v515 = sub_5544(35);
  v516 = 0;
  *buf = 0x100000002;
  v517 = *(v514 + 8);
  while (1)
  {
    v518 = *&buf[v516];
    if (((v517 & v518) != 0) != ((*(v515 + 8) & v518) != 0))
    {
      break;
    }

    v516 += 4;
    if (v516 == 8)
    {
      goto LABEL_978;
    }
  }

  if ((v517 & v518) == 0)
  {
    v514 = v515;
  }

LABEL_978:
  v522 = *v514;
  v523 = v522;
  if (v522 && os_log_type_enabled(v522, OS_LOG_TYPE_DEFAULT))
  {
    v524 = *(a2 + 560);
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3344;
    *&buf[18] = 1024;
    *&buf[20] = v524;
    _os_log_impl(&dword_0, v523, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using cached studio mic input preference: %u", buf, 0x18u);
  }

  v520 = (a1 + 456);
  *(a1 + 456) = *(a2 + 560) != 0;
LABEL_982:
  v525 = sub_5544(2);
  v526 = sub_5544(35);
  v527 = 0;
  *buf = 0x100000002;
  v528 = *(v525 + 8);
  while (1)
  {
    v529 = *&buf[v527];
    if (((v528 & v529) != 0) != ((*(v526 + 8) & v529) != 0))
    {
      break;
    }

    v527 += 4;
    if (v527 == 8)
    {
      goto LABEL_988;
    }
  }

  if ((v528 & v529) == 0)
  {
    v525 = v526;
  }

LABEL_988:
  v530 = *v525;
  v531 = v530;
  if (v530)
  {
    v532 = v530;
    if (os_log_type_enabled(v532, OS_LOG_TYPE_DEFAULT))
    {
      v533 = *v520;
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3353;
      *&buf[18] = 1024;
      *&buf[20] = v533;
      _os_log_impl(&dword_0, v532, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Prefer studio mic input: %u", buf, 0x18u);
    }
  }

  if (!((a5 == 0) | (v1049 | v1038) & 1))
  {
LABEL_997:
    if (!*a3)
    {
      v987 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v987, "Could not construct");
    }

    v541 = sub_43354(*a3, "far field input");
    if (v541)
    {
      v541 = sub_113A0(v541);
    }

    v535 = BYTE4(v541) & (v541 != 0);
    goto LABEL_1001;
  }

  v534 = *(*(a2 + 112) + 472) & 0x1FFFFFFFFLL;
  v535 = v534 == 0x172666172;
  v536 = sub_5544(2);
  v537 = sub_5544(35);
  v538 = 0;
  *buf = 0x100000002;
  v539 = *(v536 + 8);
  while (1)
  {
    v540 = *&buf[v538];
    if (((v539 & v540) != 0) != ((*(v537 + 8) & v540) != 0))
    {
      break;
    }

    v538 += 4;
    if (v538 == 8)
    {
      goto LABEL_1075;
    }
  }

  if ((v539 & v540) == 0)
  {
    v536 = v537;
  }

LABEL_1075:
  v574 = *v536;
  v575 = v574;
  if (v574 && os_log_type_enabled(v574, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_PlugIn.mm";
    *&buf[12] = 1024;
    *&buf[14] = 3364;
    *&buf[18] = 1024;
    *&buf[20] = v534 == 0x172666172;
    _os_log_impl(&dword_0, v575, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using cached far field preference: %u", buf, 0x18u);
  }

LABEL_1001:
  *(a1 + 808) = v535;
  if (v1054)
  {
    v542 = *sub_5544(2);
    v543 = v542;
    if (v542)
    {
      v544 = v542;
      if (os_log_type_enabled(v544, OS_LOG_TYPE_DEFAULT))
      {
        v545 = *(a1 + 808);
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3371;
        *&buf[18] = 1024;
        *&buf[20] = v545;
        _os_log_impl(&dword_0, v544, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Enable Far-Field Input on route: %u", buf, 0x18u);
      }
    }
  }

  v521 = a1;
LABEL_1008:
  v546 = (v1051 + 304);
  if (*(v521 + 624) == 1)
  {
    v547 = *(a1 + 616);
    if (v547)
    {
      if (CFDictionaryGetCount(v547))
      {
        if ((*(a1 + 624) & 1) == 0)
        {
          sub_1EC054();
        }

        v548 = *(a1 + 616);
        if (!v548)
        {
          v1002 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v1002, "Could not construct");
        }

        v549 = sub_4A994(v548, "vp client stereo chat enabled");
        if (v549)
        {
          v550 = sub_11DA8(v549);
          if (v550 >= 0x100u && (v550 & 1) != 0)
          {
            v551 = 1936090368;
            goto LABEL_1022;
          }
        }
      }
    }
  }

  if (_os_feature_enabled_impl() && (*v520 & 1) != 0)
  {
    v551 = 1920167168;
    v552 = 105;
    goto LABEL_1023;
  }

  if (*(a1 + 808))
  {
    v551 = 1919312128;
LABEL_1022:
    v552 = 114;
LABEL_1023:
    LOBYTE(v553) = 1;
LABEL_1024:
    *(v1051 + 308) = v553;
    *v546 = v551 | v552;
    if (v1054 && (v553 & 1) != 0)
    {
      v554 = sub_5544(2);
      v555 = sub_5544(35);
      v556 = 0;
      *buf = 0x100000002;
      v557 = *(v554 + 8);
      while (1)
      {
        v558 = *&buf[v556];
        if (((v557 & v558) != 0) != ((*(v555 + 8) & v558) != 0))
        {
          break;
        }

        v556 += 4;
        if (v556 == 8)
        {
          goto LABEL_1039;
        }
      }

      if ((v557 & v558) == 0)
      {
        v554 = v555;
      }

LABEL_1039:
      v565 = *v554;
      v566 = v565;
      if (v565)
      {
        v567 = v565;
        if (os_log_type_enabled(v567, OS_LOG_TYPE_DEFAULT))
        {
          if ((*(a1 + 684) & 1) == 0)
          {
            sub_1EC054();
          }

          sub_22170(v1079, *v546);
          if ((v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v568 = v1079;
          }

          else
          {
            v568 = v1079[0].__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3411;
          *&buf[18] = 2080;
          *&buf[20] = v568;
          _os_log_impl(&dword_0, v567, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device activation reason override: %s.", buf, 0x1Cu);
          if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1079[0].__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  else
  {
    if (*(a1 + 457) != 1)
    {
      LOBYTE(v553) = 0;
      v552 = 0;
      v551 = 0;
      goto LABEL_1024;
    }

    v559 = *(*(a2 + 112) + 472);
    v553 = HIDWORD(v559);
    if (v1054)
    {
      v560 = sub_5544(2);
      v561 = sub_5544(35);
      v562 = 0;
      v551 = v559 & 0xFFFFFF00;
      *buf = 0x100000002;
      v563 = *(v560 + 8);
      while (1)
      {
        v564 = *&buf[v562];
        if (((v563 & v564) != 0) != ((*(v561 + 8) & v564) != 0))
        {
          break;
        }

        v562 += 4;
        if (v562 == 8)
        {
          goto LABEL_1205;
        }
      }

      if ((v563 & v564) == 0)
      {
        v560 = v561;
      }

LABEL_1205:
      v649 = *v560;
      v650 = v649;
      if (v649)
      {
        v651 = v649;
        if (os_log_type_enabled(v651, OS_LOG_TYPE_DEFAULT))
        {
          if ((v559 & 0x100000000) != 0)
          {
            sub_22170(v1079, v559);
            if ((v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v652 = v1079;
            }

            else
            {
              v652 = v1079[0].__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3402;
            *&buf[18] = 2080;
            *&buf[20] = v652;
            _os_log_impl(&dword_0, v651, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using routing manager's cached device activation reason: %s ", buf, 0x1Cu);
            if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1079[0].__r_.__value_.__l.__data_);
            }
          }

          else
          {
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3402;
            *&buf[18] = 2080;
            *&buf[20] = "none";
            _os_log_impl(&dword_0, v651, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Using routing manager's cached device activation reason: %s ", buf, 0x1Cu);
          }
        }
      }

      v552 = v559;
      goto LABEL_1024;
    }

    *v546 = v559;
    *(v1051 + 308) = BYTE4(v559);
  }

  if (!*a3)
  {
    v949 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v949, "Could not construct");
  }

  v569 = sub_4A994(*a3, "multichannel mode preferences");
  if (v569)
  {
    v570 = v569;
    CFRetain(v569);
    v571 = CFGetTypeID(v570);
    if (v571 == CFArrayGetTypeID())
    {
      v572 = *(a1 + 688);
      *(a1 + 688) = v570;
      CFRetain(v570);
      if (v572)
      {
        CFRelease(v572);
      }
    }

    CFRelease(v570);
  }

  if (!v1065)
  {
    goto LABEL_1080;
  }

  v573 = *(a1 + 168);
  if (!sub_C2448(v573))
  {
    if (v573 != 1768764005)
    {
      if (v573 == 1768780647)
      {
        goto LABEL_1065;
      }

      if (sub_10A958(v573))
      {
        sub_3A7418(a2, a1);
      }

      else if (v573 != 1852796517)
      {
        v840 = sub_5544(14);
        v841 = sub_468EC(1, *v840, *(v840 + 8));
        v842 = v841;
        if (v841)
        {
          v843 = v841;
          if (os_log_type_enabled(v843, OS_LOG_TYPE_ERROR))
          {
            sub_22170(v1079, *(a1 + 168));
            v844 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 4103;
            *&buf[18] = 2080;
            *&buf[20] = v844;
            _os_log_impl(&dword_0, v843, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid route activation trigger - %s", buf, 0x1Cu);
            if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1079[0].__r_.__value_.__l.__data_);
            }
          }
        }
      }

      goto LABEL_1080;
    }

LABEL_1068:
    sub_1C4454(v1047, 0x70726563u);
    *buf = 1886613611;
    sub_75788(v1047, 0x7073706Bu);
    goto LABEL_1080;
  }

  if (v573 == 1651795060 || v573 == 1751414371)
  {
    *buf = 1885892706;
    sub_75788(v1047, 0x70687062u);
    v573 = *(a1 + 168);
LABEL_1067:
    if (v573 != 845504882)
    {
      goto LABEL_1065;
    }

    goto LABEL_1068;
  }

  if (v573 != 1752396914)
  {
    goto LABEL_1067;
  }

  if (*(a1 + 4) == 1987208039)
  {
    *(a1 + 4) = 1986556788;
  }

LABEL_1065:
  *buf = 1886545251;
  sub_75788(v1047, 0x70726563u);
LABEL_1080:
  if (!*a3)
  {
    v950 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v950, "Could not construct");
  }

  v576 = sub_4ADC8(*a3, "default to speaker");
  if (v576 >= 0x100u)
  {
    if (*a1 == 1668509810 || *a1 == 1668309362)
    {
      if (v576)
      {
        *buf = 1886545251;
        sub_75788(v1047, 0x70726563u);
      }
    }

    else
    {
      v577 = sub_5544(2);
      v578 = sub_5544(35);
      v579 = 0;
      *buf = 0x100000002;
      v580 = *(v577 + 8);
      while (1)
      {
        v581 = *&buf[v579];
        if (((v580 & v581) != 0) != ((*(v578 + 8) & v581) != 0))
        {
          break;
        }

        v579 += 4;
        if (v579 == 8)
        {
          goto LABEL_1092;
        }
      }

      if ((v580 & v581) == 0)
      {
        v577 = v578;
      }

LABEL_1092:
      v582 = *v577;
      v583 = v582;
      if (v582)
      {
        v584 = v582;
        if (os_log_type_enabled(v584, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3444;
          _os_log_impl(&dword_0, v584, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationDefaultToSpeakerKey used with wrong category", buf, 0x12u);
        }
      }
    }
  }

  if (!*a3)
  {
    v951 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v951, "Could not construct");
  }

  v585 = sub_4A960(*a3, "disallow hfp");
  if (v585 >= 0x100u)
  {
    v586 = *a1;
    if (*a1 == 1668309362 || v586 == 1668509810 || v586 == 1668441443)
    {
      if (v585)
      {
        *buf = 1886216820;
        sub_75788(v1047, 0x706D6274u);
        *buf = 1885892706;
        sub_75788(v1047, 0x70687062u);
      }
    }

    else
    {
      v587 = sub_5544(2);
      v588 = sub_5544(35);
      v589 = 0;
      *buf = 0x100000002;
      v590 = *(v587 + 8);
      while (1)
      {
        v591 = *&buf[v589];
        if (((v590 & v591) != 0) != ((*(v588 + 8) & v591) != 0))
        {
          break;
        }

        v589 += 4;
        if (v589 == 8)
        {
          goto LABEL_1110;
        }
      }

      if ((v590 & v591) == 0)
      {
        v587 = v588;
      }

LABEL_1110:
      v592 = *v587;
      v593 = v592;
      if (v592)
      {
        v594 = v592;
        if (os_log_type_enabled(v594, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3463;
          _os_log_impl(&dword_0, v594, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationDisallowHFPKey used with wrong category", buf, 0x12u);
        }
      }
    }
  }

  sub_53E8(buf, "decoupled input/output");
  v595 = sub_4A268(a3, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (HIDWORD(v595))
  {
    if (!v595)
    {
LABEL_1143:
      v596 = 1668248944;
      goto LABEL_1144;
    }

    v598 = *a1;
    v597 = *(a1 + 4);
    if (*a1 != 1667330668 && v598 != 1668309362)
    {
      v1008 = sub_5544(14);
      v1009 = sub_468EC(1, *v1008, *(v1008 + 8));
      v1010 = v1009;
      if (v1009)
      {
        v1011 = v1009;
        if (os_log_type_enabled(v1011, OS_LOG_TYPE_ERROR))
        {
          sub_22170(v1079, v598);
          v1012 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3479;
          *&buf[18] = 2080;
          *&buf[20] = v1012;
          _os_log_impl(&dword_0, v1011, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): kVirtualAudioPlugInRouteConfigurationDecoupledInputOutputKey can only be true when category is kVirtualAudioPlugInRoutingCategoryPlayAndRecord  or kVirtualAudioPlugInRoutingCategoryEARCLoopback; currently requested category is %s.", buf, 0x1Cu);
          if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1079[0].__r_.__value_.__l.__data_);
          }
        }
      }

      v1013 = __cxa_allocate_exception(0x10uLL);
      *v1013 = &off_6DDDD0;
      v1013[2] = 1852797029;
    }

    if (v597 <= 1987077986)
    {
      if (v597 != 1768057203)
      {
        v599 = 1919776355;
LABEL_1130:
        v596 = 1684366192;
        if (v597 != v599)
        {
LABEL_1144:
          *(a1 + 160) = v596;
          goto LABEL_1145;
        }
      }
    }

    else if (v597 != 1987077987 && v597 != 1987081839)
    {
      v599 = 1987081833;
      goto LABEL_1130;
    }

    if (v1054)
    {
      v600 = sub_5544(2);
      v601 = sub_5544(35);
      v602 = 0;
      *buf = 0x100000002;
      v603 = *(v600 + 8);
      while (1)
      {
        v604 = *&buf[v602];
        if (((v603 & v604) != 0) != ((*(v601 + 8) & v604) != 0))
        {
          break;
        }

        v602 += 4;
        if (v602 == 8)
        {
          goto LABEL_1138;
        }
      }

      if ((v603 & v604) == 0)
      {
        v600 = v601;
      }

LABEL_1138:
      v605 = *v600;
      v606 = v605;
      if (v605)
      {
        v607 = v605;
        if (os_log_type_enabled(v607, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3486;
          _os_log_impl(&dword_0, v607, OS_LOG_TYPE_DEBUG, "%25s:%-5d Overriding unsupported StreamCouplingPolicy::DecoupleInputOutput to StreamCouplingPolicy::CoupleInputOutput.", buf, 0x12u);
        }
      }
    }

    goto LABEL_1143;
  }

  if (*a1 == 1668309362)
  {
    v596 = 1684366192;
    if (*(a1 + 4) == 1768778864)
    {
      goto LABEL_1144;
    }
  }

LABEL_1145:
  if (!*a3)
  {
    v952 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v952, "Could not construct");
  }

  sub_4A76C(&v1063, *a3, "allowed port types");
  if (v1064 != 1)
  {
    goto LABEL_1333;
  }

  v608 = v1063;
  if (!v1063)
  {
    goto LABEL_1333;
  }

  if (v1054)
  {
    v609 = sub_5544(2);
    v610 = sub_5544(35);
    v611 = 0;
    *buf = 0x100000002;
    v612 = *(v609 + 8);
    while (1)
    {
      v613 = *&buf[v611];
      if (((v612 & v613) != 0) != ((*(v610 + 8) & v613) != 0))
      {
        break;
      }

      v611 += 4;
      if (v611 == 8)
      {
        goto LABEL_1155;
      }
    }

    if ((v612 & v613) == 0)
    {
      v609 = v610;
    }

LABEL_1155:
    v614 = *v609;
    v615 = v614;
    if (v614)
    {
      v616 = v614;
      if (os_log_type_enabled(v616, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3505;
        *&buf[18] = 2112;
        *&buf[20] = v608;
        _os_log_impl(&dword_0, v616, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Allowed Port Types: %@.", buf, 0x1Cu);
      }
    }
  }

  v617 = CFArrayGetCount(v608);
  v618 = CFArrayGetCount(v608);
  if (v617)
  {
    v619 = v618;
    for (ii = 0; ii != v617; ++ii)
    {
      if (v619 == ii)
      {
        break;
      }

      sub_A3B9C(v1079, v608, ii);
      v621 = v1079[0].__r_.__value_.__r.__words[0];
      if (!v1079[0].__r_.__value_.__r.__words[0])
      {
        v891 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v891, "Could not construct");
      }

      v622 = sub_113A0(v1079[0].__r_.__value_.__l.__data_);
      LODWORD(theArray.__r_.__value_.__l.__data_) = v622;
      theArray.__r_.__value_.__s.__data_[4] = BYTE4(v622);
      if ((v622 & 0x100000000) == 0)
      {
        v886 = sub_5544(14);
        v887 = sub_468EC(1, *v886, *(v886 + 8));
        v888 = v887;
        if (v887)
        {
          v889 = v887;
          if (os_log_type_enabled(v889, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3514;
            _os_log_impl(&dword_0, v889, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): The array specified by kVirtualAudioPlugInRouteConfigurationAllowedPortTypesKey does not contain VirtualAudioPortType.", buf, 0x12u);
          }
        }

        v890 = __cxa_allocate_exception(0x10uLL);
        *v890 = &off_6DDDD0;
        v890[2] = 1852797029;
      }

      sub_75788(v1050, v622);
      CFRelease(v621);
    }
  }

  v623 = *(a2 + 112);
  *(&v1061 + 1) = 0;
  v1062 = 0;
  *&v1061 = &v1061 + 8;
  if (!*(a1 + 128))
  {
    goto LABEL_1327;
  }

  v624 = 1885892706;
  v625 = a1 + 120;
  v626 = *v1035;
  if (!*v1035)
  {
    goto LABEL_1175;
  }

  v627 = a1 + 120;
  do
  {
    v628 = *(v626 + 28);
    v629 = v628 >= 0x70687042;
    v630 = v628 < 0x70687042;
    if (v629)
    {
      v627 = v626;
    }

    v626 = *(v626 + 8 * v630);
  }

  while (v626);
  v625 = a1 + 120;
  if (v627 == v1035 || *(v627 + 28) > 0x70687042u)
  {
LABEL_1175:
    v627 = v625;
  }

  v631 = a1 + 96;
  v632 = *v1039;
  if (!*v1039)
  {
LABEL_1191:
    v637 = v631;
    goto LABEL_1192;
  }

  v633 = a1 + 96;
  v634 = *v1039;
  do
  {
    v635 = *(v634 + 28);
    v629 = v635 >= 0x70687062;
    v636 = v635 < 0x70687062;
    if (v629)
    {
      v633 = v634;
    }

    v634 = *(v634 + 8 * v636);
  }

  while (v634);
  if (v633 != v1039 && *(v633 + 28) < 0x70687063u)
  {
    goto LABEL_1327;
  }

  v637 = a1 + 96;
  do
  {
    v638 = *(v632 + 28);
    v629 = v638 >= 0x706D6274;
    v639 = v638 < 0x706D6274;
    if (v629)
    {
      v637 = v632;
    }

    v632 = *(v632 + 8 * v639);
  }

  while (v632);
  v631 = a1 + 96;
  if (v637 == v1039 || *(v637 + 28) > 0x706D6274u)
  {
    goto LABEL_1191;
  }

LABEL_1192:
  if (v627 == v1035 || v637 != v1039)
  {
    goto LABEL_1327;
  }

  v640 = *a1;
  v641 = *(a1 + 8);
  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  *&v1079[0].__r_.__value_.__r.__words[1] = 0uLL;
  v1079[0].__r_.__value_.__r.__words[0] = &v1079[0].__r_.__value_.__l.__size_;
  v642 = sub_45324(*v623, v640, v641, 0x70687062u, buf, v1079, *(a1 + 386), *(a1 + 456));
  sub_477A0(v1079[0].__r_.__value_.__l.__size_);
  sub_477A0(*&buf[8]);
  v643 = 1885892674;
  if (!v642)
  {
LABEL_1298:
    v624 = 1885892674;
    v643 = 1885892706;
    goto LABEL_1299;
  }

  v644 = *(a1 + 144);
  if (!v644)
  {
    goto LABEL_1299;
  }

  v645 = std::__shared_weak_count::lock(v644);
  if (!v645)
  {
    goto LABEL_1299;
  }

  if (!*v1032)
  {
    sub_1A8C0(v645);
    goto LABEL_1299;
  }

  v646 = *(*v1032 + 144);
  sub_1A8C0(v645);
  if (v646 == 1886216820)
  {
    goto LABEL_1299;
  }

  v647 = *a1;
  if (*a1 <= 1668313714)
  {
    if (v647 != 1668301427 && v647 != 1668309362)
    {
      v648 = 29250;
      goto LABEL_1268;
    }

    goto LABEL_1269;
  }

  if (v647 == 1668703084 || v647 == 1668576377)
  {
    goto LABEL_1296;
  }

  v648 = 29299;
LABEL_1268:
  if (v647 != (v648 | 0x63700000))
  {
LABEL_1297:
    v1079[0].__r_.__value_.__r.__words[0] = v646 | 0x7068704200000000;
    sub_4BA00(buf, v1079, 2);
    v708 = sub_2729B4(*v623, a1, buf);
    sub_477A0(*&buf[8]);
    if ((v708 & 1) == 0)
    {
      v829 = sub_5544(8);
      v830 = *v829;
      if (*v829 && os_log_type_enabled(*v829, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v1079, v646);
        v831 = SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]);
        v832 = v1079[0].__r_.__value_.__r.__words[0];
        sub_22170(&theArray, 0x70687042u);
        v833 = v1079;
        if (v831 < 0)
        {
          v833 = v832;
        }

        if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v834 = &theArray;
        }

        else
        {
          v834 = theArray.__r_.__value_.__r.__words[0];
        }

        *buf = 136315906;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4997;
        *&buf[18] = 2080;
        *&buf[20] = v833;
        *&buf[28] = 2080;
        *&buf[30] = v834;
        _os_log_impl(&dword_0, v830, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Preferring HFP port because no route exists for (%s/%s)", buf, 0x26u);
        if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(theArray.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1079[0].__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_1299;
    }

    goto LABEL_1298;
  }

LABEL_1269:
  v690 = *(a1 + 4);
  if (v690 > 1919776354)
  {
    if (v690 > 1987081832)
    {
      if (v690 == 1987081839)
      {
        goto LABEL_1296;
      }

      v702 = 30313;
    }

    else
    {
      if (v690 == 1919776355)
      {
        goto LABEL_1296;
      }

      v702 = 26467;
    }

    v691 = v702 | 0x76700000;
LABEL_1295:
    if (v690 == v691)
    {
      goto LABEL_1296;
    }

    goto LABEL_1297;
  }

  if (v690 > 1768779618)
  {
    if (v690 == 1768779619)
    {
      goto LABEL_1296;
    }

    v691 = 1768781411;
    goto LABEL_1295;
  }

  if (v690 != 1735222132)
  {
    v691 = 1768057203;
    goto LABEL_1295;
  }

LABEL_1296:
  v1079[0].__r_.__value_.__r.__words[0] = v646 | 0x7068706200000000;
  sub_4BA00(buf, v1079, 2);
  v707 = sub_2729B4(*v623, a1, buf);
  sub_477A0(*&buf[8]);
  if ((v707 & 1) == 0)
  {
    goto LABEL_1297;
  }

LABEL_1299:
  v709 = sub_809C0();
  LODWORD(cf.__r_.__value_.__l.__data_) = v643;
  memset(v1079, 0, 24);
  sub_4625C(v1079, &cf, cf.__r_.__value_.__r.__words + 4, 1uLL);
  *buf = v1079[0];
  strcpy(&buf[24], "cwdv");
  buf[32] = 0;
  *&buf[40] = 3;
  v1087 = 0;
  v1086 = 0;
  v1085 = &v1086;
  v1088 = 44739242;
  v1091 = 0;
  v1089 = 0;
  v1090 = 0;
  v1079[0].__r_.__value_.__r.__words[0] = off_6BC4E0;
  v1079[1].__r_.__value_.__r.__words[0] = v1079;
  sub_2574C4(&theArray, v709, buf, v1079);
  v710 = (a1 + 48);
  sub_85148(v1079);
  if (SHIBYTE(v1091) < 0)
  {
    operator delete(v1089);
  }

  sub_477A0(v1086);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_76388(v1079, &theArray);
  for (jj = v1079[0].__r_.__value_.__l.__size_; jj != v1079; jj = jj->__r_.__value_.__l.__size_)
  {
    sub_11319C(&cf, jj->__r_.__value_.__r.__words[2]);
    if (cf.__r_.__value_.__r.__words[2])
    {
      *(&v1074 + 1) = 0;
      v1075 = 0;
      *&v1074 = &v1074 + 8;
      v712 = *v1052;
      v1083.__r_.__value_.__r.__words[0] = cf.__r_.__value_.__l.__size_;
      v1071 = v712;
      *buf = &v1074;
      *&buf[8] = &v1074 + 8;
      v1078 = 0;
      if (v712 == v710)
      {
        goto LABEL_1309;
      }

      do
      {
        v713 = v1083.__r_.__value_.__r.__words[0];
        v1083.__r_.__value_.__r.__words[0] = sub_142090(v1083.__r_.__value_.__l.__data_, &cf, v712 + 4);
        sub_272BFC((v1083.__r_.__value_.__r.__words[0] == v713), &v1083, &v1071, buf, &v1078);
        if (v1083.__r_.__value_.__l.__data_ == &cf)
        {
          break;
        }

        v714 = v1071;
        v1071 = sub_272CA4(v1071, v710, (v1083.__r_.__value_.__r.__words[0] + 16));
        sub_272BFC((v1071 == v714), &v1083, &v1071, buf, &v1078);
        v712 = v1071;
      }

      while (v1071 != v710);
      if (!v1075)
      {
LABEL_1309:
        v715 = sub_5544(8);
        v716 = *v715;
        if (*v715 && os_log_type_enabled(*v715, OS_LOG_TYPE_DEFAULT))
        {
          sub_23148(&v1083, (jj->__r_.__value_.__r.__words[2] + 8));
          v717 = SHIBYTE(v1083.__r_.__value_.__r.__words[2]);
          v718 = v1083.__r_.__value_.__r.__words[0];
          sub_22170(&v1071, v624);
          v719 = &v1083;
          if (v717 < 0)
          {
            v719 = v718;
          }

          v720 = &v1071;
          if (v1073 < 0)
          {
            v720 = v1071;
          }

          *buf = 136315906;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 5027;
          *&buf[18] = 2080;
          *&buf[20] = v719;
          *&buf[28] = 2080;
          *&buf[30] = v720;
          _os_log_impl(&dword_0, v716, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowing port (%s) as %s is preferred for this route configuration", buf, 0x26u);
          if (v1073 < 0)
          {
            operator delete(v1071);
          }

          if (SHIBYTE(v1083.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v1083.__r_.__value_.__l.__data_);
          }
        }

        data = jj[1].__r_.__value_.__l.__data_;
        *buf = *(&jj->__r_.__value_.__l + 2);
        *&buf[8] = data;
        if (data)
        {
          atomic_fetch_add_explicit(data + 2, 1uLL, memory_order_relaxed);
        }

        sub_CB814(&v1061, buf);
        v710 = (a1 + 48);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_weak(*&buf[8]);
        }
      }

      sub_4B0F4(*(&v1074 + 1));
    }

    sub_65310(&cf);
  }

  sub_87980(v1079);
  sub_65310(&theArray);
  if (v1062)
  {
    v618 = sub_7FE64(v1052, v1061, &v1061 + 1);
  }

LABEL_1327:
  if (*(a1 + 160) == 1684366192)
  {
    v722 = *a1;
    *&buf[16] = 0;
    *&buf[8] = 0;
    *buf = &buf[8];
    if (caulk::product::get_device_class(v618) == 6 && v722 == 0x696D646663706172)
    {
      LODWORD(v1079[0].__r_.__value_.__l.__data_) = 1885892674;
      sub_75788(buf, 0x70687042u);
    }

    sub_47714(v1050, *buf, &buf[8]);
    sub_477A0(*&buf[8]);
  }

  sub_4B0F4(*(&v1061 + 1));
  CFRelease(v608);
LABEL_1333:
  sub_53E8(buf, "disable speaker vad");
  v723 = sub_4A268(a3, buf);
  *(v1051 + 280) = v723;
  *(v1051 + 284) = BYTE4(v723);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v724 = *a3;
  if (!*a3)
  {
    v953 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v953, "Could not construct");
  }

  v725 = CFStringCreateWithBytes(0, "create speaker vad", 18, 0x8000100u, 0);
  *buf = v725;
  if (!v725)
  {
    v954 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v954, "Could not construct");
  }

  v726 = CFDictionaryContainsKey(v724, v725);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v726)
  {
    v727 = sub_5544(2);
    v728 = sub_5544(35);
    v729 = 0;
    *buf = 0x100000002;
    v730 = *(v727 + 8);
    while (1)
    {
      v731 = *&buf[v729];
      if (((v730 & v731) != 0) != ((*(v728 + 8) & v731) != 0))
      {
        break;
      }

      v729 += 4;
      if (v729 == 8)
      {
        goto LABEL_1346;
      }
    }

    if ((v730 & v731) == 0)
    {
      v727 = v728;
    }

LABEL_1346:
    v732 = *v727;
    v733 = v732;
    if (v732)
    {
      v734 = v732;
      if (os_log_type_enabled(v734, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3545;
        _os_log_impl(&dword_0, v734, OS_LOG_TYPE_ERROR, "%25s:%-5d kVirtualAudioPlugInRouteConfigurationCreateSpeakerAlertVADKey is no longer supported. Please use kVirtualAudioPlugInRouteConfigurationDisableSpeakerAlertVADKey to explicitly disable the default-created speaker alert VAD.", buf, 0x12u);
      }
    }
  }

  v735 = *a3;
  if (!*a3)
  {
    v955 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v955, "Could not construct");
  }

  v736 = CFStringCreateWithBytes(0, "session routing information", 27, 0x8000100u, 0);
  *buf = v736;
  if (!v736)
  {
    v956 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v956, "Could not construct");
  }

  v737 = CFDictionaryContainsKey(v735, v736);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v737)
  {
    sub_A3240(buf, a3);
    v738 = (a1 + 768);
    if (*(a1 + 792) == 1)
    {
      if (v738 != buf)
      {
        v739 = *&buf[8];
        v740 = *(a1 + 776);
        if (*&buf[8] != buf && v740 != v738)
        {
          do
          {
            sub_233C40((v740 + 2), v739 + 16);
            v739 = *(v739 + 8);
            v740 = v740[1];
          }

          while (v739 != buf && v740 != v738);
        }

        if (v740 == v738)
        {
          if (v739 != buf)
          {
            sub_A4DBC();
          }
        }

        else
        {
          v742 = *(*(a1 + 768) + 8);
          v743 = *v740;
          *(v743 + 8) = v742;
          *v742 = v743;
          do
          {
            v744 = v740[1];
            --*(a1 + 784);
            sub_A5114((v740 + 2));
            operator delete(v740);
            v740 = v744;
          }

          while (v744 != v738);
        }
      }
    }

    else
    {
      sub_75848((a1 + 768), buf);
      *(a1 + 792) = 1;
    }

    sub_76304(buf);
    if (!*a3)
    {
      v964 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v964, "Could not construct");
    }

    if (CFDictionaryGetCount(*a3) == 1)
    {
LABEL_1372:
      v745 = 1;
      goto LABEL_1403;
    }

    if ((*(a1 + 792) & 1) == 0)
    {
      sub_1EC054();
    }

    v746 = *(a1 + 776);
    if (v746 != v738)
    {
      while (2)
      {
        sub_A4E68(buf, (v746 + 2));
        sub_A4E28(v1079, buf);
        if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
        {
          if (v1079[0].__r_.__value_.__l.__size_ != 21 || (*v1079[0].__r_.__value_.__l.__data_ == 0x6C7070612E6D6F63 ? (v749 = *(v1079[0].__r_.__value_.__r.__words[0] + 8) == 0x656C69626F6D2E65) : (v749 = 0), v749 ? (v750 = *(v1079[0].__r_.__value_.__r.__words[0] + 13) == 0x6369676F6C656C69) : (v750 = 0), !v750))
          {
            operator delete(v1079[0].__r_.__value_.__l.__data_);
            goto LABEL_1395;
          }
        }

        else if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) != 21 || (v1079[0].__r_.__value_.__r.__words[0] == 0x6C7070612E6D6F63 ? (v747 = v1079[0].__r_.__value_.__l.__size_ == 0x656C69626F6D2E65) : (v747 = 0), v747 ? (v748 = *(&v1079[0].__r_.__value_.__r.__words[1] + 5) == 0x6369676F6C656C69) : (v748 = 0), !v748))
        {
LABEL_1395:
          sub_A5114(buf);
LABEL_1396:
          v746 = v746[1];
          if (v746 == v738)
          {
            goto LABEL_1402;
          }

          continue;
        }

        break;
      }

      v751 = _os_feature_enabled_impl();
      if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1079[0].__r_.__value_.__l.__data_);
      }

      sub_A5114(buf);
      if (v751)
      {
        goto LABEL_1372;
      }

      goto LABEL_1396;
    }

LABEL_1402:
    v745 = 0;
LABEL_1403:
    *(a1 + 385) = v745;
  }

  if (!*a3)
  {
    v957 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v957, "Could not construct");
  }

  v752 = sub_1129C(*a3, "is longform media");
  if (v752)
  {
    v753 = sub_11DA8(v752);
    if (v753 >= 0x100u)
    {
      *(a1 + 800) = v753;
    }
  }

  v754 = *a1;
  if (!*a1)
  {
    v958 = sub_5544(14);
    v959 = sub_468EC(1, *v958, *(v958 + 8));
    v960 = v959;
    if (v959 && os_log_type_enabled(v959, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1229;
      _os_log_impl(&dword_0, v960, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_1779;
  }

  v755 = *(a1 + 4);
  if (v755 <= 1918990111)
  {
    if (v755 > 1768779618)
    {
      if (v755 > 1835230309)
      {
        if (v755 <= 1835361381)
        {
          if (v755 == 1835230310)
          {
            goto LABEL_1510;
          }

          if (v755 != 1835232630)
          {
            goto LABEL_1631;
          }
        }

        else
        {
          if (v755 == 1835361382)
          {
            goto LABEL_1510;
          }

          if (v755 != 1836021360)
          {
            if (v755 == 1836281204)
            {
              goto LABEL_1510;
            }

            goto LABEL_1631;
          }
        }

        goto LABEL_1461;
      }

      if (v755 <= 1768781425)
      {
        if (v755 == 1768779619)
        {
          goto LABEL_1481;
        }

        v756 = 1768781411;
LABEL_1444:
        if (v755 == v756)
        {
          if (v754 > 1668313665)
          {
            if (v754 != 1668313666 && v754 != 1668313715)
            {
              v760 = 1668703092;
              goto LABEL_1487;
            }

            goto LABEL_1510;
          }

          goto LABEL_1482;
        }

        goto LABEL_1631;
      }

      if (v755 != 1768781426)
      {
        v761 = 1835229549;
        goto LABEL_1480;
      }

      goto LABEL_1537;
    }

    if (v755 > 1735222131)
    {
      if (v755 <= 1768057202)
      {
        if (v755 == 1735222132)
        {
          goto LABEL_1481;
        }

        v761 = 1751212899;
        goto LABEL_1480;
      }

      if (v755 == 1768057203)
      {
        goto LABEL_1481;
      }

      if (v755 == 1768776806)
      {
        goto LABEL_1510;
      }

      v757 = 1768778864;
LABEL_1470:
      if (v755 != v757)
      {
        goto LABEL_1631;
      }

LABEL_1537:
      if (v754 > 1668313714)
      {
        if (v754 != 1668313715 && v754 != 1668440898)
        {
          v760 = 1668441443;
          goto LABEL_1487;
        }

        goto LABEL_1510;
      }

      if (v754 == 1668301427 || v754 == 1668309362)
      {
        goto LABEL_1510;
      }

      v762 = 29250;
      goto LABEL_1486;
    }

    if (v755 > 1701013791)
    {
      if (v755 != 1701013792)
      {
        v761 = 1701013869;
        goto LABEL_1480;
      }

      goto LABEL_1537;
    }

    if (v755 == 1650811758)
    {
      if (v754 != 1667591521)
      {
        v760 = 1667591533;
        goto LABEL_1487;
      }

      goto LABEL_1510;
    }

    if (v755 == 1685089378)
    {
      v760 = 1668117868;
      goto LABEL_1487;
    }

    if (v755)
    {
      goto LABEL_1631;
    }

    v1023 = sub_5544(14);
    v1024 = sub_468EC(1, *v1023, *(v1023 + 8));
    v960 = v1024;
    if (v1024 && os_log_type_enabled(v1024, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1230;
      _os_log_impl(&dword_0, v960, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_1779:

    v961 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v961, "Precondition failure.");
  }

  if (v755 <= 1986556787)
  {
    if (v755 > 1936747373)
    {
      if (v755 > 1936749156)
      {
        if (v755 == 1936749157 || v755 == 1937007472)
        {
          goto LABEL_1481;
        }

        v758 = 1986098036;
LABEL_1474:
        if (v755 == v758)
        {
          goto LABEL_1475;
        }

        goto LABEL_1631;
      }

      if (v755 != 1936747374)
      {
        v759 = 1936748652;
        goto LABEL_1459;
      }

LABEL_1461:
      if (v754 == 1668441443 || v754 == 1668440898)
      {
        goto LABEL_1488;
      }

      goto LABEL_1510;
    }

    if (v755 > 1936683885)
    {
      if (v755 == 1936683886)
      {
        v760 = 1667329133;
        goto LABEL_1487;
      }

      v761 = 1936745328;
    }

    else
    {
      if (v755 == 1918990112)
      {
        goto LABEL_1510;
      }

      v761 = 1919776355;
    }

LABEL_1480:
    if (v755 == v761)
    {
      goto LABEL_1481;
    }

    goto LABEL_1631;
  }

  if (v755 <= 1987081838)
  {
    if (v755 > 1987077986)
    {
      if (v755 != 1987077987)
      {
        if (v755 != 1987080813)
        {
          v756 = 1987081833;
          goto LABEL_1444;
        }

LABEL_1460:
        v760 = 1668505974;
LABEL_1487:
        if (v754 != v760)
        {
LABEL_1488:
          v763 = sub_5544(2);
          v764 = sub_5544(35);
          v765 = 0;
          *buf = 0x100000002;
          v766 = *(v763 + 8);
          while (1)
          {
            v767 = *&buf[v765];
            if (((v766 & v767) != 0) != ((*(v764 + 8) & v767) != 0))
            {
              break;
            }

            v765 += 4;
            if (v765 == 8)
            {
              if ((v766 & 1) == 0)
              {
                goto LABEL_1510;
              }

              goto LABEL_1496;
            }
          }

          if ((v766 & v767) == 0)
          {
            v763 = v764;
          }

          if ((*(v763 + 8) & 1) == 0)
          {
            goto LABEL_1510;
          }

LABEL_1496:
          v768 = *v763;
          if (!v768)
          {
            goto LABEL_1510;
          }

          v769 = v768;
          if (os_log_type_enabled(v769, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v1079, v755);
            v770 = SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]);
            v771 = v1079[0].__r_.__value_.__r.__words[0];
            sub_22170(&theArray, v754);
            v772 = v1079;
            if (v770 < 0)
            {
              v772 = v771;
            }

            if ((theArray.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v773 = &theArray;
            }

            else
            {
              v773 = theArray.__r_.__value_.__r.__words[0];
            }

            *buf = 136315906;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1309;
            *&buf[18] = 2080;
            *&buf[20] = v772;
            *&buf[28] = 2080;
            *&buf[30] = v773;
            _os_log_impl(&dword_0, v769, OS_LOG_TYPE_DEBUG, "%25s:%-5d Mode '%s' is not allowed with category '%s'", buf, 0x26u);
            if (SHIBYTE(theArray.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(theArray.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v1079[0].__r_.__value_.__l.__data_);
            }
          }

          v774 = v769;
LABEL_1508:

          goto LABEL_1509;
        }

        goto LABEL_1510;
      }

LABEL_1481:
      if (v754 > 1668313665)
      {
        if (v754 == 1668313666)
        {
          goto LABEL_1510;
        }

        v762 = 29299;
      }

      else
      {
LABEL_1482:
        if (v754 == 1668301427)
        {
          goto LABEL_1510;
        }

        v762 = 24946;
      }

LABEL_1486:
      v760 = v762 | 0x63700000;
      goto LABEL_1487;
    }

    if (v755 != 1986556788)
    {
      v757 = 1986884455;
      goto LABEL_1470;
    }

LABEL_1475:
    v760 = 1668509810;
    goto LABEL_1487;
  }

  if (v755 <= 1987211116)
  {
    if (v755 == 1987081839)
    {
      goto LABEL_1481;
    }

    v758 = 1987208039;
    goto LABEL_1474;
  }

  if (v755 == 1987211117)
  {
    goto LABEL_1475;
  }

  if (v755 == 2003133027)
  {
    goto LABEL_1460;
  }

  v759 = 2003133037;
LABEL_1459:
  if (v755 == v759)
  {
    goto LABEL_1460;
  }

LABEL_1631:
  v827 = *sub_5544(14);
  v774 = v827;
  if (v827)
  {
    v769 = v827;
    if (os_log_type_enabled(v769, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v1079, v755);
      v828 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1304;
      *&buf[18] = 2080;
      *&buf[20] = v828;
      _os_log_impl(&dword_0, v769, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unhandled VirtualAudioPlugInMode '%s'", buf, 0x1Cu);
      if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v1079[0].__r_.__value_.__l.__data_);
      }
    }

    goto LABEL_1508;
  }

LABEL_1509:

LABEL_1510:
  if (!*a3)
  {
    v962 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v962, "Could not construct");
  }

  sub_4ADFC(v1079, *a3);
  if (v1079[0].__r_.__value_.__s.__data_[8] == 1)
  {
    v775 = v1079[0].__r_.__value_.__r.__words[0];
    if (v1079[0].__r_.__value_.__r.__words[0])
    {
      v776 = *sub_5544(2);
      v777 = v776;
      if (v776)
      {
        v778 = v776;
        if (os_log_type_enabled(v778, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 3575;
          _os_log_impl(&dword_0, v778, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsing camera parameters ", buf, 0x12u);
        }
      }

      v779 = (a1 + 664);
      if (*(a1 + 672) == 1)
      {
        v780 = *v779;
        *v779 = v775;
        CFRetain(v775);
        if (v780)
        {
          CFRelease(v780);
        }
      }

      else
      {
        sub_98A64(v779, v775);
        *(a1 + 672) = 1;
      }

      CFRelease(v775);
    }
  }

  if (*(a1 + 684) == 1 && *(a1 + 680) == 1920167273)
  {
    v781 = *v1039;
    if (*v1039)
    {
      v782 = a1 + 96;
      do
      {
        v783 = *(v781 + 28);
        v629 = v783 >= 0x706D6274;
        v784 = v783 < 0x706D6274;
        if (v629)
        {
          v782 = v781;
        }

        v781 = *(v781 + 8 * v784);
      }

      while (v781);
      if (v782 != v1039 && *(v782 + 28) < 0x706D6275u)
      {
        if (v1054)
        {
          v785 = sub_5544(2);
          v786 = sub_5544(35);
          v787 = 0;
          *buf = 0x100000002;
          v788 = *(v785 + 8);
          while (1)
          {
            v789 = *&buf[v787];
            if (((v788 & v789) != 0) != ((*(v786 + 8) & v789) != 0))
            {
              break;
            }

            v787 += 4;
            if (v787 == 8)
            {
              goto LABEL_1549;
            }
          }

          if ((v788 & v789) == 0)
          {
            v785 = v786;
          }

LABEL_1549:
          v790 = *v785;
          v791 = v790;
          if (v790)
          {
            v792 = v790;
            if (os_log_type_enabled(v792, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 3584;
              _os_log_impl(&dword_0, v792, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing HFP port types from disallowed ports for studio mic input preference.", buf, 0x12u);
            }
          }
        }

        sub_1C4454(v1047, 0x706D6274u);
        sub_1C4454(v1047, 0x70687062u);
        v793 = *(a1 + 144);
        if (v793)
        {
          v794 = std::__shared_weak_count::lock(v793);
          if (v794)
          {
            v795 = v794;
            v796 = *v1032;
            if (*v1032)
            {
              if ((*(*v796 + 160))(*v1032))
              {
                *buf = 256;
                if (sub_34D04C(v796, buf))
                {
                  sub_1A8C0(v795);
                  goto LABEL_1605;
                }
              }
            }

            sub_1A8C0(v795);
          }
        }

        if ((v1049 & 1) == 0)
        {
          v797 = *(a1 + 496);
          if (v797 != v1036)
          {
            do
            {
              v798 = v797[4];
              v799 = *(v798 + 96);
              if (v799)
              {
                v800 = *(v798 + 88);
                atomic_fetch_add_explicit(&v799->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v801 = std::__shared_weak_count::lock(v799);
                std::__shared_weak_count::__release_weak(v799);
                if (v801)
                {
                  if (v800)
                  {
                    *buf = 256;
                    v802 = sub_34D04C(v800, buf);
                    sub_1A8C0(v801);
                    if (v802)
                    {
                      goto LABEL_1605;
                    }
                  }

                  else
                  {
                    sub_1A8C0(v801);
                  }
                }
              }

              v803 = v797[1];
              if (v803)
              {
                do
                {
                  v804 = v803;
                  v803 = *v803;
                }

                while (v803);
              }

              else
              {
                do
                {
                  v804 = v797[2];
                  v146 = *v804 == v797;
                  v797 = v804;
                }

                while (!v146);
              }

              v797 = v804;
            }

            while (v804 != v1036);
          }
        }

        if (!v1038 || *(a1 + 144))
        {
          goto LABEL_1588;
        }

        v805 = sub_809C0();
        v1083.__r_.__value_.__r.__words[0] = 0x70687062706D6274;
        v1075 = 0;
        v1074 = 0uLL;
        sub_4625C(&v1074, &v1083, &v1083.__r_.__value_.__l.__size_, 2uLL);
        *buf = v1074;
        *&buf[16] = v1075;
        v1075 = 0;
        v1074 = 0uLL;
        strcpy(&buf[24], "cwdv");
        buf[32] = 0;
        *&buf[40] = 3;
        v1087 = 0;
        v1086 = 0;
        v1085 = &v1086;
        v1088 = 44739242;
        v1091 = 0;
        v1089 = 0;
        v1090 = 0;
        v1079[0].__r_.__value_.__r.__words[0] = off_6CDD68;
        v1079[1].__r_.__value_.__r.__words[0] = v1079;
        sub_256FB0(&cf, v805, buf, v1079);
        sub_B0484(&theArray, &cf);
        v806 = theArray.__r_.__value_.__l.__size_;
        if (theArray.__r_.__value_.__l.__size_ == &theArray)
        {
LABEL_1581:
          v808 = 1;
        }

        else
        {
          while (1)
          {
            if ((*(*v806->__r_.__value_.__r.__words[2] + 160))(v806->__r_.__value_.__r.__words[2]))
            {
              v807 = v806->__r_.__value_.__r.__words[2];
              LOWORD(v1071) = 256;
              if (sub_34D04C(v807, &v1071))
              {
                break;
              }
            }

            v806 = v806->__r_.__value_.__l.__size_;
            if (v806 == &theArray)
            {
              goto LABEL_1581;
            }
          }

          v808 = 0;
        }

        sub_87980(&theArray);
        sub_65310(&cf);
        sub_85148(v1079);
        if (SHIBYTE(v1091) < 0)
        {
          operator delete(v1089);
        }

        sub_477A0(v1086);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (v808)
        {
LABEL_1588:
          if (v1054)
          {
            v809 = sub_5544(2);
            v810 = sub_5544(35);
            v811 = 0;
            *buf = 0x100000002;
            v812 = *(v809 + 8);
            while (1)
            {
              v813 = *&buf[v811];
              if (((v812 & v813) != 0) != ((*(v810 + 8) & v813) != 0))
              {
                break;
              }

              v811 += 4;
              if (v811 == 8)
              {
                goto LABEL_1595;
              }
            }

            if ((v812 & v813) == 0)
            {
              v809 = v810;
            }

LABEL_1595:
            v814 = *v809;
            v815 = v814;
            if (v814)
            {
              v816 = v814;
              if (os_log_type_enabled(v816, OS_LOG_TYPE_DEFAULT))
              {
                sub_22170(v1079, 0x72736D78u);
                v817 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
                *buf = 136315650;
                *&buf[4] = "VirtualAudio_PlugIn.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3631;
                *&buf[18] = 2080;
                *&buf[20] = v817;
                _os_log_impl(&dword_0, v816, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No routable HFP port in dictionary, setting activation reason to %s.", buf, 0x1Cu);
                if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v1079[0].__r_.__value_.__l.__data_);
                }
              }
            }
          }

          *(a1 + 680) = 1920167288;
          *(a1 + 684) = 1;
        }
      }
    }
  }

LABEL_1605:
  if (v1054)
  {
    v818 = sub_5544(2);
    v819 = sub_5544(35);
    v820 = 0;
    *buf = 0x100000002;
    v821 = *(v818 + 8);
    while (1)
    {
      v822 = *&buf[v820];
      if (((v821 & v822) != 0) != ((*(v819 + 8) & v822) != 0))
      {
        break;
      }

      v820 += 4;
      if (v820 == 8)
      {
        goto LABEL_1612;
      }
    }

    if ((v821 & v822) == 0)
    {
      v818 = v819;
    }

LABEL_1612:
    v823 = *v818;
    v824 = v823;
    if (v823)
    {
      v825 = v823;
      if (os_log_type_enabled(v825, OS_LOG_TYPE_DEBUG))
      {
        sub_BCD50(v1079, a1);
        v826 = (v1079[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v1079 : v1079[0].__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 3639;
        *&buf[18] = 2080;
        *&buf[20] = v826;
        _os_log_impl(&dword_0, v825, OS_LOG_TYPE_DEBUG, "%25s:%-5d outConfiguration.mRouteConfiguration: %s.", buf, 0x1Cu);
        if (SHIBYTE(v1079[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v1079[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_477A0(*&__p[24]);
  if (v1065)
  {
    CFRelease(v1065);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v1041)
  {
    std::__shared_weak_count::__release_weak(v1041);
  }

  if (v1042)
  {
    std::__shared_weak_count::__release_weak(v1042);
  }
}

void sub_42428(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_42448()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    v0 = STACK[0x260];
    JUMPOUT(0x428CCLL);
  }

  JUMPOUT(0x432A4);
}

void sub_42470(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_85148(&STACK[0x230]);
  sub_46934(&STACK[0x2C0]);
  sub_4B0F4(a53);
  JUMPOUT(0x43298);
}

void sub_424DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, CFTypeRef cf, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, char a55, uint64_t a56, const void *a57)
{
  sub_4B0F4(a53);
  sub_247B70(&a55);
  sub_477A0(STACK[0x278]);
  sub_4BA7C(&a57);
  if (cf)
  {
    CFRelease(cf);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_424F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_4257C()
{
  if (v0)
  {
    sub_1A8C0(v0);
    if (v1)
    {
      goto LABEL_5;
    }
  }

  else if (v1)
  {
LABEL_5:
    std::__shared_weak_count::__release_weak(v1);
  }

  sub_1D5FE0(&v2);
  sub_247B70(&v3);
  JUMPOUT(0x43310);
}

void sub_42588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  sub_3A7074(&STACK[0x260]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_425C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  sub_477A0(STACK[0x2C8]);
  sub_4B0F4(a53);
  JUMPOUT(0x43298);
}

void sub_425E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_425EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_425F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42610()
{
  __cxa_free_exception(v0);
  sub_4BA7C(&v1);
  JUMPOUT(0x432A4);
}

void sub_42658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_4B0F4(a70);
  sub_65310(&a72);
  sub_87980(&STACK[0x230]);
  JUMPOUT(0x431DCLL);
}

void sub_4267C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42684(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4268C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42694(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4269C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_426A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_426AC()
{
  if (v0)
  {
    sub_1A8C0(v0);
  }

  if (!v1)
  {
    sub_1D5FE0(&v2);
    sub_247B70(&v3);
    JUMPOUT(0x43310);
  }

  JUMPOUT(0x4293CLL);
}

void sub_42734(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4273C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4277C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, const void *a58)
{
  __cxa_free_exception(v58);
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  sub_46228(&a58);
  JUMPOUT(0x4330CLL);
}

void sub_427A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_427FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42804(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4280C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42818(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42820(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42828(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42830(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4284C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_4285C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42864(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42870(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42878(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42888(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42894(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_428F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42908()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
    if (v0)
    {
      goto LABEL_3;
    }
  }

  else if (v0)
  {
LABEL_3:
    sub_1A8C0(v0);
    if (!v1)
    {
      goto LABEL_8;
    }

LABEL_7:
    std::__shared_weak_count::__release_weak(v1);
LABEL_8:
    JUMPOUT(0x43300);
  }

  if (!v1)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_42944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EA34(&a72);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_23EA34(&a72);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_4298C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_379DD0(STACK[0x238]);
  if (LOBYTE(STACK[0x278]) == 1)
  {
    STACK[0x230] = &STACK[0x260];
    sub_761AC(&STACK[0x230]);
  }

  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_429D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42A50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42A58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42A60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_1DB0E0(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42AEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42AF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42B14(void *a1, int a2)
{
  if (a2)
  {
    sub_1DB0E0(&STACK[0x2C0]);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x39CC8);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  __cxa_free_exception(v51);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (STACK[0x2C8])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2C8]);
  }

  sub_4B0F4(a70);
  sub_65310(&a72);
  sub_87980(&STACK[0x230]);
  JUMPOUT(0x431DCLL);
}

void sub_42BD4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42BDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42BE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42BF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42BF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C08(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C10(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C3C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C4C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42C70(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      sub_A5114((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x43348);
}

void sub_42CA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42CC0()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  sub_A5114(&STACK[0x2C0]);
  JUMPOUT(0x4329CLL);
}

void sub_42CF8()
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  JUMPOUT(0x4329CLL);
}

void sub_42D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_452F0(&STACK[0x2C0]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D68(void *a1, int a2)
{
  if (a2)
  {
    sub_452F0(&STACK[0x2C0]);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x39CC8);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D7C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x42D84);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42D94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  sub_3A6658(&STACK[0x260]);
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v72);
  sub_23EA34(&a72);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_42E00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42E18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42E20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42E34()
{
  __cxa_free_exception(v0);
  sub_1D5FE0(&v1);
  sub_247B70(&v2);
  JUMPOUT(0x43310);
}

void sub_42E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, std::__shared_weak_count *a27, uint64_t a28, const void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  if (a29)
  {
    CFRelease(a29);
  }

  sub_4AE8C(a51);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  JUMPOUT(0x4334CLL);
}

void sub_42EC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42ED4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42EDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42EE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42EF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_46228(&STACK[0x210]);
  sub_23EA34(&a72);
  sub_23EA78(&STACK[0x260]);
  sub_23EA78(&STACK[0x2C0]);
  JUMPOUT(0x43310);
}

void sub_42F18(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42F20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42F2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42F38(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&a72);
  JUMPOUT(0x43294);
}

void sub_42F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v72);
  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&a72);
  JUMPOUT(0x43294);
}

void sub_42F8C(void *a1, int a2)
{
  if (a2)
  {
    LOBYTE(STACK[0x278]) = v2;
    sub_1CC130(a1);
  }

  JUMPOUT(0x43348);
}

void sub_42F98(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42FAC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42FCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42FD8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_42FEC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_43014()
{
  LOBYTE(STACK[0x2F0]) = v0;
  sub_2B50D0(&STACK[0x230]);
  JUMPOUT(0x432D8);
}

void sub_43020(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_43028(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_43038(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130();
  }

  _Unwind_Resume(a1);
}

void sub_43040()
{
  if (STACK[0x2C8])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2C8]);
  }

  if (v0)
  {
    std::__shared_weak_count::__release_weak(v0);
  }

  JUMPOUT(0x432B4);
}

void sub_43078()
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    JUMPOUT(0x4312CLL);
  }

  JUMPOUT(0x43130);
}

void sub_430EC()
{
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  JUMPOUT(0x432D8);
}

void sub_430F4()
{
  if (SLOBYTE(STACK[0x277]) < 0)
  {
    operator delete(STACK[0x260]);
  }

  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
  }

  JUMPOUT(0x432D8);
}

void sub_430FC()
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  JUMPOUT(0x43120);
}

void sub_43144()
{
  if (v1)
  {
    operator delete(v1);
  }

  sub_1D5FE0(&v2);
  sub_247B70(&v3);
  JUMPOUT(0x43310);
}

void sub_4315C(void *a1, int a2)
{
  if (a2)
  {
    LOBYTE(STACK[0x2F0]) = v2;
    sub_1CC130(a1);
  }

  JUMPOUT(0x43348);
}

void sub_431A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (STACK[0x260])
  {
    operator delete(STACK[0x260]);
  }

  if (a63)
  {
    operator delete(a63);
  }

  JUMPOUT(0x43300);
}

void sub_43264()
{
  sub_1D5FE0(&v0);
  sub_247B70(&v1);
  JUMPOUT(0x43310);
}

void sub_432B0()
{
  sub_1D5FE0(&STACK[0x230]);
  sub_210C50(&STACK[0x210]);
  JUMPOUT(0x432C4);
}

const void *sub_43354(const __CFDictionary *a1, char *__s)
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

void sub_43408(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x433B8);
}

CFIndex sub_43458(const __CFDictionary **a1, int a2, int a3)
{
  v4 = *a1;
  if (!v4)
  {
    v21 = sub_5544(14);
    v22 = sub_468EC(1, *v21, *(v21 + 8));
    v23 = v22;
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      LODWORD(cf.isa) = 136315394;
      *(&cf.isa + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(cf.info) = 1024;
      *(&cf.info + 6) = 811;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &cf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = CFDictionaryGetCount(v4);
  if (!result)
  {
    return result;
  }

  v8 = result;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (!sub_47E08(*a1))
  {
    goto LABEL_8;
  }

  v9 = *a1;
  if (!*a1)
  {
LABEL_34:
    v20 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v20);
  }

  v10 = CFStringCreateWithBytes(0, "unroutable ports", 16, 0x8000100u, 0);
  cf.isa = v10;
  if (!v10)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v25, "Could not construct");
  }

  v11 = CFDictionaryContainsKey(v9, v10);
  CFRelease(cf.isa);
  if (!v11)
  {
    v26 = sub_5544(14);
    v27 = sub_468EC(1, *v26, *(v26 + 8));
    v28 = v27;
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(cf.isa) = 136315394;
      *(&cf.isa + 4) = "VirtualAudio_PlugIn.mm";
      WORD2(cf.info) = 1024;
      *(&cf.info + 6) = 821;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey required.", &cf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "kVirtualAudioPlugInRouteConfigurationUnroutablePortsKey required.");
  }

LABEL_8:
  v12 = 0;
  v13 = 0;
  do
  {
    if (!*a1)
    {
      goto LABEL_34;
    }

    v13 += sub_47D0C(*a1, off_6CDC08[v12++]);
  }

  while (v12 != 5);
  if (v8 != v13)
  {
    return 0;
  }

  sub_53E8(&cf, "decoupled input/output");
  v14 = sub_4A268(a1, &cf);
  if (SHIBYTE(cf.data) < 0)
  {
    operator delete(cf.isa);
  }

  if (!*a1)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(v30);
  }

  if (v14)
  {
    v15 = 1684366192;
  }

  else
  {
    v15 = 1668248944;
  }

  if (HIDWORD(v14))
  {
    v16 = v15 == a2;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  v18 = sub_43354(*a1, "expanse session");
  if (v18)
  {
    v18 = sub_113A0(v18);
  }

  if ((v18 & 0x100000000) == 0 || v18 == a3)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_438C8(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = sub_43950(a2, __s);
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

const void *sub_43950(const __CFDictionary *a1, char *__s)
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

void sub_43A04(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x439B4);
}

uint64_t sub_43A54(const __CFNumber *a1)
{
  if (a1)
  {
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      switch(CFNumberGetType(a1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_28;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_21;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_13;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_28:
          LOBYTE(v11) = LOBYTE(valuePtr);
          if (!Value)
          {
            LOBYTE(v11) = 0;
          }

          v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
          v13.i64[0] = Value != 0;
          v13.i64[1] = v12 << 63 >> 63;
          break;
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_21:
          if (v10)
          {
            v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
          }

          else
          {
            v11 = 0;
          }

          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_36;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_13:
          v9 = *&valuePtr;
          goto LABEL_37;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_25;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_36;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_36:
          v9 = LODWORD(valuePtr);
          goto LABEL_37;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_25:
          v9 = valuePtr;
LABEL_37:
          v11 = v9 | 0x100000000;
          if (!v8)
          {
            v11 = 0;
          }

LABEL_39:
          v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_517100);
          break;
        default:
          LOBYTE(v11) = 0;
          v13 = 0uLL;
          break;
      }

      v14 = vandq_s8(vshlq_u64(v13, xmmword_517110), xmmword_517120);
      v4 = v14.i64[0] | v11 | v14.i64[1];
    }

    else
    {
      v5 = CFBooleanGetTypeID();
      if (v5 == CFGetTypeID(a1))
      {
        v6 = CFBooleanGetValue(a1);
        v7 = 0x100000000;
      }

      else
      {
        v6 = 0;
        v7 = 0;
      }

      v4 = v7 | v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 0xFFFFFFFFFFLL;
}

BOOL sub_43D7C(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = CFDictionaryContainsKey(a1, v5);
  CFRelease(cf);
  return v6 != 0;
}

void sub_43E34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  _Unwind_Resume(a1);
}

void sub_43E6C(uint64_t a1, int *a2, int a3, int a4)
{
  v4 = *a2;
  if (!v4)
  {
    v64 = sub_5544(14);
    v65 = *v64;
    if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 861;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = a2[1];
  if (!v6)
  {
    v67 = sub_5544(14);
    v68 = *v67;
    if (*v67 && os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 862;
      _os_log_impl(&dword_0, v68, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v69 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v69, "Precondition failure.");
  }

  if (v4 == 1668706147)
  {
    v70 = sub_5544(14);
    v71 = *v70;
    if (*v70 && os_log_type_enabled(*v70, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 864;
      _os_log_impl(&dword_0, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): kVirtualAudioPlugInRoutingCategoryVoiceChat is obsolete. Please use kVirtualAudioPlugInRoutingCategoryPlayAndRecord + kVirtualAudioPlugInMode_VoiceChat.", buf, 0x12u);
    }

    v72 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v72, "kVirtualAudioPlugInRoutingCategoryVoiceChat is obsolete. Please use kVirtualAudioPlugInRoutingCategoryPlayAndRecord + kVirtualAudioPlugInMode_VoiceChat.");
  }

  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  if (v4 <= 1668313714)
  {
    if (v4 == 1668301427)
    {
      if (v6 != 1751212899)
      {
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u);
        *buf = 1885892706;
        sub_75788(&v73, 0x70687062u);
      }

      *buf = 1886545251;
      sub_75788(&v73, 0x70726563u);
      v25 = sub_5544(2);
      v26 = sub_5544(35);
      v27 = 0;
      *buf = 0x100000002;
      v28 = *(v25 + 8);
      while (1)
      {
        v29 = *&buf[v27];
        if (((v28 & v29) != 0) != ((*(v26 + 8) & v29) != 0))
        {
          break;
        }

        v27 += 4;
        if (v27 == 8)
        {
          if ((v28 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_66;
        }
      }

      if ((v28 & v29) == 0)
      {
        v25 = v26;
      }

      if ((*(v25 + 8) & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_66:
      v31 = *v25;
      if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 899;
        v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeakerNoBT is now obsolete.";
LABEL_69:
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, v32, buf, 0x12u);
      }

      goto LABEL_70;
    }

    if (v4 == 1668313666)
    {
      if (v6 != 1751212899)
      {
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u);
        *buf = 1885892706;
        sub_75788(&v73, 0x70687062u);
      }

      v10 = sub_5544(2);
      v11 = sub_5544(35);
      v12 = 0;
      *buf = 0x100000002;
      v13 = *(v10 + 8);
      while (1)
      {
        v14 = *&buf[v12];
        if (((v13 & v14) != 0) != ((*(v11 + 8) & v14) != 0))
        {
          break;
        }

        v12 += 4;
        if (v12 == 8)
        {
          if ((v13 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_60;
        }
      }

      if ((v13 & v14) == 0)
      {
        v10 = v11;
      }

      if ((*(v10 + 8) & 1) == 0)
      {
        goto LABEL_70;
      }

LABEL_60:
      v31 = *v10;
      if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 881;
        v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordNoBT is now obsolete.";
        goto LABEL_69;
      }

      goto LABEL_70;
    }
  }

  else
  {
    switch(v4)
    {
      case 0x63707273:
        *buf = 1886545251;
        sub_75788(&v73, 0x70726563u);
        v15 = sub_5544(2);
        v16 = sub_5544(35);
        v17 = 0;
        *buf = 0x100000002;
        v18 = *(v15 + 8);
        while (1)
        {
          v19 = *&buf[v17];
          if (((v18 & v19) != 0) != ((*(v16 + 8) & v19) != 0))
          {
            break;
          }

          v17 += 4;
          if (v17 == 8)
          {
            if ((v18 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_39;
          }
        }

        if ((v18 & v19) == 0)
        {
          v15 = v16;
        }

        if ((*(v15 + 8) & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_39:
        v31 = *v15;
        if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 887;
          v32 = "%25s:%-5d kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeaker is now obsolete.";
          goto LABEL_69;
        }

        goto LABEL_70;
      case 0x63726342:
        *buf = 1886216820;
        sub_75788(&v73, 0x706D6274u);
        v20 = sub_5544(2);
        v21 = sub_5544(35);
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
            goto LABEL_45;
          }
        }

        if ((v23 & v24) == 0)
        {
          v20 = v21;
        }

        v23 = *(v20 + 8);
LABEL_45:
        v4 = 1668441443;
        v30 = 1668441443;
        if (v23)
        {
          v33 = *v20;
          if (v33)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "VirtualAudio_Utilities.cpp";
              v78 = 1024;
              v79 = 905;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d kVirtualAudioPlugInRoutingCategoryRecordNoBT is now obsolete.", buf, 0x12u);
            }
          }
        }

        goto LABEL_49;
      case 0x63766374:
        v6 = 1768781411;
        v4 = 1668309362;
LABEL_76:
        _os_feature_enabled_impl();
        goto LABEL_77;
    }
  }

  if (v4 == 1668309362)
  {
LABEL_70:
    if (v6 == 1987208039 || (v4 = 1668309362, v6 == 1986098036))
    {
      if (_os_feature_enabled_impl())
      {
        v6 = 1987208039;
      }

      else
      {
        v6 = v6;
      }

      v4 = 1668509810;
    }

    goto LABEL_76;
  }

  v30 = v4;
LABEL_49:
  v34 = _os_feature_enabled_impl() ^ 1;
  if (v30 != 1668117868)
  {
    LOBYTE(v34) = 1;
  }

  if ((v34 & 1) == 0)
  {
    v4 = 1668114797;
    if (v6 != 1685089378)
    {
      if ((atomic_load_explicit(&qword_6E8630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8630))
      {
        word_6E8628 = sub_28B2C0();
        __cxa_guard_release(&qword_6E8630);
      }

      if ((word_6E8628 & 0x100) == 0 || (word_6E8628 & 1) == 0)
      {
        v4 = 1668117868;
      }
    }
  }

LABEL_77:
  if (a3)
  {
    if (v6 > 1919776354)
    {
      if (v6 > 1987081832)
      {
        if (v6 == 1987081833)
        {
          goto LABEL_115;
        }

        v41 = 30319;
      }

      else
      {
        if (v6 == 1919776355)
        {
          goto LABEL_115;
        }

        v41 = 26467;
      }

      v35 = v41 | 0x76700000;
    }

    else
    {
      if (v6 > 1768779618)
      {
        if (v6 == 1768779619)
        {
LABEL_114:
          v6 = 1987081839;
          goto LABEL_115;
        }

        if (v6 == 1768781411)
        {
          v6 = 1987081833;
          goto LABEL_115;
        }

LABEL_103:
        if (!sub_31135C())
        {
          goto LABEL_139;
        }

        v44 = *a2;
        if (*a2 > 1668313665)
        {
          if (v44 != 1668313715)
          {
            v45 = 29250;
LABEL_110:
            if (v44 == (v45 | 0x63700000))
            {
              goto LABEL_111;
            }

LABEL_139:
            if ((sub_31135C() & 1) == 0)
            {
              v56 = sub_5544(2);
              v57 = *v56;
              if (*v56)
              {
                if (os_log_type_enabled(*v56, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_Utilities.cpp";
                  v78 = 1024;
                  v79 = 948;
                  _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Not a VP vX device, so using the original behavior", buf, 0x12u);
                }
              }
            }

            v58 = *a2;
            if (*a2 > 1668313665)
            {
              if (v58 == 1668313666)
              {
                goto LABEL_115;
              }

              v59 = 29299;
            }

            else
            {
              if (v58 == 1668301427)
              {
                goto LABEL_115;
              }

              v59 = 24946;
            }

            if (v58 != (v59 | 0x63700000))
            {
              v60 = sub_5544(2);
              v37 = *v60;
              if (*v60)
              {
                if (os_log_type_enabled(*v60, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "VirtualAudio_Utilities.cpp";
                  v78 = 1024;
                  v79 = 950;
                  v38 = "%25s:%-5d Not in a play & record category, so using the original behavior";
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_115;
          }
        }

        else if (v44 != 1668301427)
        {
          v45 = 24946;
          goto LABEL_110;
        }

LABEL_111:
        v46 = sub_5544(2);
        v47 = *v46;
        if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 942;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Is VP vX device, so we will turn this non chat mode into voice chat for now.", buf, 0x12u);
        }

        goto LABEL_114;
      }

      if (v6 == 1735222132)
      {
        v6 = 1987077987;
        goto LABEL_115;
      }

      v35 = 1768057203;
    }

    if (v6 == v35)
    {
      goto LABEL_115;
    }

    goto LABEL_103;
  }

  if (v6 == 1936749157)
  {
    v42 = sub_5544(2);
    v6 = 1937007472;
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 964;
      v38 = "%25s:%-5d Converting SpatialRecording to StereoCapture";
      v39 = v43;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_95;
    }
  }

  else if (v6 == 1919776355)
  {
    v36 = sub_5544(2);
    v6 = 1768779619;
    if (*(v36 + 8))
    {
      v37 = *v36;
      if (*v36)
      {
        if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 960;
          v38 = "%25s:%-5d Converting RemoteVoiceChat mode to VoiceChat mode since the VP is not (yet) in use";
LABEL_88:
          v39 = v37;
          v40 = OS_LOG_TYPE_DEBUG;
LABEL_95:
          _os_log_impl(&dword_0, v39, v40, v38, buf, 0x12u);
        }
      }
    }
  }

LABEL_115:
  if (a4 && sub_DB94C())
  {
    v48 = v4 | (v6 << 32);
    v76[0] = v48;
    v76[1] = 0;
    if (v4 == 1668309362 && v6 == 1768776806 || v4 == 1668114797 && v6 == 1685089378)
    {
      HIDWORD(v76[0]) = 1701013869;
      v48 = v76[0];
    }

    else
    {
      v53 = sub_5544(21);
      v54 = *v53;
      if (*v53 && os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        sub_879F8(&__p, v76);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 183;
        v80 = 2080;
        v81 = p_p;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Incorrect category/mode (%s). Echo Cancelled Input supported only for PlayAndRecord/Default routes", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v6 = HIDWORD(v48);
    LODWORD(v4) = v48;
  }

  if (v4 > 1668313714)
  {
    if (v4 == 1668313715)
    {
      v62 = sub_5544(14);
      v50 = *v62;
      if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 979;
        v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeaker is illegal here.";
        goto LABEL_161;
      }
    }

    else if (v4 == 1668440898)
    {
      v63 = sub_5544(14);
      v50 = *v63;
      if (*v63)
      {
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Utilities.cpp";
          v78 = 1024;
          v79 = 983;
          v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryRecordNoBT is illegal here.";
          goto LABEL_161;
        }
      }
    }
  }

  else if (v4 == 1668313666)
  {
    v61 = sub_5544(14);
    v50 = *v61;
    if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      v78 = 1024;
      v79 = 977;
      v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordNoBT is illegal here.";
      goto LABEL_161;
    }
  }

  else if (v4 == 1668301427)
  {
    v49 = sub_5544(14);
    v50 = *v49;
    if (*v49)
    {
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        v78 = 1024;
        v79 = 981;
        v51 = "%25s:%-5d ASSERTION FAILURE: outCategory == kVirtualAudioPlugInRoutingCategoryPlayAndRecordDefaultToSpeakerNoBT is illegal here.";
LABEL_161:
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, v51, buf, 0x12u);
      }
    }
  }

  v52 = *(a2 + 1);
  *a1 = v4;
  *(a1 + 4) = v6;
  *(a1 + 8) = v52;
  sub_44E44((a1 + 16), &v73);
  sub_477A0(v74[0]);
}