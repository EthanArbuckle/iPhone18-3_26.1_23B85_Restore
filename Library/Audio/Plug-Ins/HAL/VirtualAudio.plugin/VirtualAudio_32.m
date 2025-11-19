void sub_292010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  __cxa_free_exception(v13);
  sub_1DB160(v12);
  if (a12)
  {
    sub_8AAAC(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29204C(const __CFDictionary *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v1 = sub_43354(a1, "earpiece design");
  if (v1 && (v2 = sub_113A0(v1), (v2 & 0x100000000) != 0) && (v3 = v2 - 1, (v2 - 1) <= 7))
  {
    v4 = qword_519038[v3];
    v5 = qword_519078[v3];
    v6 = qword_5190B8[v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  return v5 | v4 | v6;
}

uint64_t sub_292110(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  if (*(a1 + 113) == 1)
  {
    sub_164A14(*(a1 + 104), "kcajptuo", sub_290710, a1);
  }

  if (*(a1 + 112) == 1)
  {
    sub_164A14(*(a1 + 104), "kcajtpni", sub_290710, a1);
  }

  if (v2)
  {
    (*(*a1 + 24))(a1);
  }

  sub_4E0BC((a1 + 120));

  return sub_42A4D8(a1);
}

unint64_t sub_292208(uint64_t a1)
{
  sub_291EC4(&theDict, a1);
  if (!theDict)
  {
    goto LABEL_7;
  }

  Count = CFDictionaryGetCount(theDict);
  if (Count)
  {
    v1 = (sub_29204C(theDict) >> 32) & 1;
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (!Count)
  {
LABEL_7:
    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

void sub_292278(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BA7C(va);
  _Unwind_Resume(a1);
}

void sub_292290(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(a1 + 584) = a3;
  sub_2922D0(a1, a4);

  sub_F7240(a1);
}

void sub_2922D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 584) != 1)
  {
    return;
  }

  v2 = a2;
  if (a2 <= 1781740086)
  {
    if (a2 <= 1647718501)
    {
      if (a2 != 1647393080 && a2 != 1647521842)
      {
        goto LABEL_55;
      }
    }

    else if (a2 != 1647718502 && a2 != 1647718503)
    {
      if (a2 != 1781739824)
      {
        goto LABEL_55;
      }

      v4 = 0;
      v2 = 1647522096;
      goto LABEL_24;
    }

    v4 = 0;
    goto LABEL_24;
  }

  if (a2 > 1784965231)
  {
    switch(a2)
    {
      case 0x6A646870:
        v4 = 0;
        v2 = 1751410292;
        break;
      case 0x6A757362:
        v4 = 0;
        v2 = 1970496068;
        break;
      case 0x6A646873:
        v4 = 0;
        v2 = 1214539380;
        break;
      default:
        goto LABEL_55;
    }
  }

  else
  {
    switch(a2)
    {
      case 0x6A333237:
        v4 = 1;
        break;
      case 0x6A613336:
        v4 = 0;
        v2 = 1214329654;
        break;
      case 0x6A623135:
        v4 = 0;
        v2 = 1214394677;
        break;
      default:
LABEL_55:
        v23 = sub_5544(14);
        v24 = *v23;
        if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Port_HeadphonesWired_Aspen.cpp";
          v31 = 1024;
          v32 = 165;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unknown HALJackStateHandler::JackDescriptor.", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Unknown HALJackStateHandler::JackDescriptor.");
    }
  }

LABEL_24:
  v5 = *(*a1 + 104);
  if (v4)
  {
    v5(a1, 1781740087);
    *(a1 + 308) = v2;
    *(a1 + 312) = 1;
    v6 = sub_5544(24);
    v7 = sub_5544(31);
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
        goto LABEL_35;
      }
    }

    if ((v9 & v10) == 0)
    {
      v6 = v7;
    }

LABEL_35:
    v16 = *v6;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v28, 0x6A333237u);
      v17 = v29;
      v18 = v28[0];
      sub_22170(__p, v2);
      v19 = v28;
      if (v17 < 0)
      {
        v19 = v18;
      }

      if (v27 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "Port_HeadphonesWired_Aspen.cpp";
      v31 = 1024;
      v32 = 244;
      v33 = 2080;
      v34 = v19;
      v35 = 2080;
      v36 = v20;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port sub-type has been updated to '%s' with tuning sub-type '%s'", buf, 0x26u);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_52;
    }
  }

  else
  {
    v5(a1, v2);
    v11 = sub_5544(24);
    v12 = sub_5544(31);
    v13 = 0;
    *buf = 0x100000002;
    v14 = *(v11 + 8);
    while (1)
    {
      v15 = *&buf[v13];
      if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
      {
        break;
      }

      v13 += 4;
      if (v13 == 8)
      {
        goto LABEL_46;
      }
    }

    if ((v14 & v15) == 0)
    {
      v11 = v12;
    }

LABEL_46:
    v21 = *v11;
    if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v28, v2);
      if (v29 >= 0)
      {
        v22 = v28;
      }

      else
      {
        v22 = v28[0];
      }

      *buf = 136315650;
      *&buf[4] = "Port_HeadphonesWired_Aspen.cpp";
      v31 = 1024;
      v32 = 250;
      v33 = 2080;
      v34 = v22;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port sub-type has been updated to '%s'", buf, 0x1Cu);
LABEL_52:
      if (v29 < 0)
      {
        operator delete(v28[0]);
      }
    }
  }
}

uint64_t sub_292814(uint64_t a1)
{
  v1 = 0x165706870;
  v14 = 1;
  v2 = *(a1 + 200);
  if (v2)
  {
    v3 = *(a1 + 192);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    std::__shared_weak_count::__release_weak(v2);
    if (v4)
    {
      if (v3)
      {
        (*(*v3 + 128))(__p, v3);
        if ((v12 & 0x80u) == 0)
        {
          v5 = __p;
        }

        else
        {
          v5 = __p[0];
        }

        if (v5)
        {
          if ((v12 & 0x80u) == 0)
          {
            v6 = v12;
          }

          else
          {
            v6 = __p[1];
          }

          v7 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
          cf = v7;
          if (!v7)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          v7 = 0;
          cf = 0;
        }

        if (qword_6EB708 != -1)
        {
          v10 = v7;
          dispatch_once(&qword_6EB708, &stru_6BDAC0);
          v7 = v10;
        }

        if (off_6EB7B8)
        {
          off_6EB7B8(&v14, v7);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_1A8C0(v4);
      if (!v14)
      {
        return 0x165706F74;
      }
    }
  }

  return v1;
}

void sub_2929C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  sub_1DB0E0(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1A8C0(v16);
  _Unwind_Resume(a1);
}

void sub_292A28(id a1)
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

void sub_292D8C(void *a1)
{
  *a1 = off_6BD250;
  sub_24EBDC(a1);

  operator delete();
}

void sub_292E00(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(a1 + 584) = a3;
  sub_2922D0(a1, a4);
  if ((*(a1 + 584) & 1) == 0)
  {
    *(a1 + 585) = 0;
  }

  sub_F7240(a1);
}

void sub_292E4C(uint64_t a1, int a2)
{
  v4 = a1 + 616;
  v28 = a1 + 616;
  v5 = (*(*(a1 + 616) + 16))(a1 + 616);
  v29 = v5;
  if ((*(a1 + 584) & 1) == 0 && a2)
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v31 = "Port_HeadphonesWired_Aspen.cpp";
      *&v31[8] = 1024;
      *&v31[10] = 356;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kVirtualAudioObjectRoutingNotSupportedError): Ports cannot be set routable if not connected.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 1852797556;
  }

  v6 = sub_5544(24);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v25;
    (*(*a1 + 144))(&v25, a1);
    if (v27 < 0)
    {
      v8 = v25;
    }

    if (*(a1 + 303) < 0)
    {
      sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__dst = *(a1 + 280);
      v24 = *(a1 + 296);
    }

    v9 = SHIBYTE(v24);
    v10 = __dst[0];
    sub_22170(__p, *(a1 + 144));
    v11 = __dst;
    if (v9 < 0)
    {
      v11 = v10;
    }

    if (v22 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136316418;
    *v31 = "Port_HeadphonesWired_Aspen.cpp";
    *&v31[8] = 1024;
    *&v31[10] = 358;
    v32 = 1024;
    v33 = a2;
    v34 = 2080;
    v35 = v8;
    v36 = 2080;
    v37 = v11;
    v38 = 2080;
    v39 = v12;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Changing port routability to %u for port with name %s, UID %s, and type '%s'", buf, 0x36u);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v27 < 0)
    {
      operator delete(v25);
    }
  }

  v13 = *(a1 + 585);
  *(a1 + 585) = a2;
  if (v13 != a2)
  {
    sub_F7240(a1);
    v14 = atomic_load((a1 + 712));
    if (v14 != pthread_self())
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *v31 = "Port_HeadphonesWired_Aspen.cpp";
          *&v31[8] = 1024;
          *&v31[10] = 432;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mutex not owned by current thread", buf, 0x12u);
        }
      }
    }

    sub_115B6C(buf, a1 + 592);
    sub_24F408(&v25, v4);
    __dst[0] = 0x676C6F6270697372;
    LODWORD(__dst[1]) = 0;
    for (i = *&v31[4]; i != buf; i = *(i + 8))
    {
      (*(i + 16))(0, 1, __dst, *(i + 24));
    }

    if (v26 == 1)
    {
      (*(*v25 + 16))(v25);
    }

    sub_4E0BC(buf);
  }

  if (v5)
  {
    (*(*v4 + 24))(v4);
  }
}

void sub_29327C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_224F4C(&a25);
  _Unwind_Resume(a1);
}

NSObject *sub_293310(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 77;
  v9 = (*(a1[77] + 16))(a1 + 77);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (*a2 != 1885959026 || v11 != 1735159650 || v12 != 0)
  {
    if (v11 == 1735159650)
    {
      if (v10 == 1886282093 || (v10 != 1886614625 ? (v15 = v10 == 1886613101) : (v15 = 1), v15))
      {
        if (!v12)
        {
LABEL_26:
          v21 = (&dword_0 + 1);
          if (!v9)
          {
            return v21;
          }

          goto LABEL_33;
        }
      }
    }

    goto LABEL_31;
  }

  v16 = a1 + 74;
  for (i = a1[75]; i != v16; i = i[1])
  {
    if (i[2] == a3 && i[3] == a4)
    {
      if (i != v16)
      {
        v20 = *i;
        v19 = i[1];
        *(v20 + 8) = v19;
        *v19 = v20;
        --a1[76];
        operator delete(i);
        goto LABEL_26;
      }

      break;
    }
  }

  v22 = sub_5544(24);
  v21 = *v22;
  if (*v22)
  {
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "Port_HeadphonesWired_Aspen.cpp";
      v26 = 1024;
      v27 = 415;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified routability listener does not exist", buf, 0x12u);
    }

LABEL_31:
    v21 = 0;
  }

  if (v9)
  {
LABEL_33:
    (*(*v8 + 24))(v8);
  }

  return v21;
}

NSObject *sub_293538(void *a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 77;
  v9 = (*(a1[77] + 16))(a1 + 77);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  if (*a2 == 1885959026 && v11 == 1735159650 && v12 == 0)
  {
    v16 = a1 + 74;
    for (i = a1[75]; ; i = i[1])
    {
      if (i == v16)
      {
        goto LABEL_30;
      }

      if (i[2] == a3 && i[3] == a4)
      {
        break;
      }
    }

    if (i == v16)
    {
LABEL_30:
      operator new();
    }

    v19 = sub_5544(24);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v23 = "Port_HeadphonesWired_Aspen.cpp";
        v24 = 1024;
        v25 = 386;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified routability listener already exists", buf, 0x12u);
      }

LABEL_28:
      v20 = 0;
      if (v9)
      {
        goto LABEL_33;
      }

      return v20;
    }
  }

  else
  {
    if (v11 != 1735159650)
    {
      goto LABEL_28;
    }

    if (v10 != 1886282093 && v10 != 1886614625 && v10 != 1886613101)
    {
      goto LABEL_28;
    }

    if (v12)
    {
      goto LABEL_28;
    }

    v20 = (&dword_0 + 1);
  }

  if (v9)
  {
LABEL_33:
    (*(*v8 + 24))(v8);
  }

  return v20;
}

void sub_293780(void *a1)
{
  sub_2937B8(a1);

  operator delete();
}

uint64_t sub_2937B8(void *a1)
{
  *a1 = off_6BD680;
  sub_42A4D8((a1 + 77));
  sub_4E0BC(a1 + 74);
  *a1 = off_6BD250;

  return sub_24EBDC(a1);
}

void sub_293838(uint64_t a1, int a2, int a3)
{
  *(a1 + 584) = a2 & a3;
  if ((a2 & a3 & 1) == 0)
  {
    *(a1 + 585) = 0;
  }

  sub_F7240(a1);
}

void sub_29384C(void *a1)
{
  sub_2937B8(a1);

  operator delete();
}

void *sub_293888(void *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t a5, __int128 *a6, void *a7)
{
  sub_53E8(__p, "");
  sub_250178(a1, a2, a3, a4, a5, a6, a7, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_6DD710;
  return a1;
}

void sub_293944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_293968(uint64_t a1, void *a2, int a3, uint64_t a4, __int128 *a5)
{
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v7 = &qword_6E87D8;
  }

  else
  {
    v7 = &qword_6E87A8;
  }

  memset(v9, 0, sizeof(v9));
  sub_293888(a1, v7, a2, v10, a4, a5, v9);
  v11 = v9;
  sub_72C14(&v11);
  *a1 = off_6BD250;
  *(a1 + 584) = 0;
  return a1;
}

void sub_293A08(_Unwind_Exception *a1)
{
  *(v2 - 24) = v1;
  sub_72C14((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_293A20(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  if (AudioObjectHasProperty(*a2, inAddress))
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    ioDataSize = sub_543D0(*a2, inAddress, 0, 0);
    if (ioDataSize)
    {
      outData = 0;
      PropertyData = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = PropertyData;
      if (!PropertyData)
      {
        v7 = outData;
        v10 = outData;
        sub_23F428(&v9, &v10);
        v8 = v9;
        *(a1 + 16) = 1;
        *(a1 + 8) = v8;
        if (v7)
        {
          CFRelease(v7);
        }
      }
    }
  }

  else
  {
    *a1 = 2003332927;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

_BYTE *sub_293B14@<X0>(uint64_t a1@<X0>, UInt8 *a2@<X8>)
{
  v2 = *(a1 + 592);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return sub_125D8(a2, v2);
}

BOOL sub_293BBC(uint64_t a1)
{
  v1 = *(a1 + 592);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_125D8(v5, v1);
  if ((v6 & 0x80000000) == 0)
  {
    return v6 != 0;
  }

  v2 = v5[1] != 0;
  operator delete(v5[0]);
  return v2;
}

void sub_293C88(void *a1)
{
  sub_293CC0(a1);

  operator delete();
}

uint64_t sub_293CC0(void *a1)
{
  *a1 = off_6BD468;
  v2 = a1[74];
  if (v2)
  {
    CFRelease(v2);
  }

  *a1 = off_6BD250;

  return sub_24EBDC(a1);
}

uint64_t sub_293D3C(uint64_t a1, void *a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (*(a5 + 72) == 1)
  {
    if (*(a5 + 23) < 0)
    {
      sub_54A0(buf, *a5, *(a5 + 8));
    }

    else
    {
      *buf = *a5;
      *&buf[16] = *(a5 + 16);
    }

    if (*(a5 + 47) < 0)
    {
      sub_54A0(&buf[24], *(a5 + 24), *(a5 + 32));
    }

    else
    {
      *&buf[24] = *(a5 + 24);
      v28 = *(a5 + 40);
    }

    if (*(a5 + 71) < 0)
    {
      sub_54A0(&__p, *(a5 + 48), *(a5 + 56));
    }

    else
    {
      __p = *(a5 + 48);
      v30 = *(a5 + 64);
    }
  }

  else
  {
    sub_24FEE8(buf, qword_6E8808);
  }

  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  sub_293888(a1, &qword_6E8838, a2, v25, buf, a6, a4);
  v12 = SHIBYTE(v30);
  *a1 = off_6BD250;
  *(a1 + 584) = 0;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *a1 = off_6BD680;
  *(a1 + 585) = a3 == 0;
  *(a1 + 592) = a1 + 592;
  *(a1 + 600) = a1 + 592;
  *(a1 + 608) = 0;
  sub_53E8(buf, "Port Routability Mutex");
  *(a1 + 616) = off_6D3C50;
  v13 = (a1 + 624);
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_54A0(v13, *buf, *&buf[8]);
    v14 = buf[23];
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
    if (v14 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *v13 = *buf;
    *(a1 + 640) = *&buf[16];
    *(a1 + 648) = 850045863;
    *(a1 + 656) = 0u;
    *(a1 + 672) = 0u;
    *(a1 + 688) = 0u;
    *(a1 + 704) = 0u;
  }

  if ((*(a1 + 184) & 0x40) == 0)
  {
    v17 = sub_5544(14);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_HeadphonesWired_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 328;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): CanSetRoutable() must be true.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "CanSetRoutable() must be true.");
LABEL_39:
    __cxa_throw(exception, v21, v20);
  }

  v15 = *(a6 + 23);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a6 + 8);
  }

  if (!v15)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v25, qword_6E8808);
      if (v26 >= 0)
      {
        v24 = v25;
      }

      else
      {
        v24 = v25[0];
      }

      *buf = 136315650;
      *&buf[4] = "Port_HeadphonesWired_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 330;
      *&buf[18] = 2080;
      *&buf[20] = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): UID is empty for port type: %s", buf, 0x1Cu);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "UID is empty for port type: %s");
    goto LABEL_39;
  }

  return a1;
}

void sub_294154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_42A4D8(v27);
  sub_4E0BC(v26);
  *v24 = v25;
  sub_24EBDC(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_294204(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_294278(void *a1)
{
  *a1 = off_6BDAF0;
  sub_24EBDC(a1);

  operator delete();
}

uint64_t sub_2942EC(_BYTE *a1, void *a2)
{
  sub_63250(&v31);
  v4 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_22564(&v31, "Input: ", 7);
      sub_22170(&__p, *(v4 + 8));
      if ((v30 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v30 & 0x80u) == 0)
      {
        v6 = v30;
      }

      else
      {
        v6 = v29;
      }

      sub_22564(&v31, p_p, v6);
      sub_22564(&v31, " Count: ", 8);
      v7 = v4[5];
      v8 = std::ostream::operator<<();
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v39, &std::ctype<char>::id);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
      if (v30 < 0)
      {
        operator delete(__p);
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
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != a2 + 1);
  }

  v13 = a2[3];
  if (v13 != a2 + 4)
  {
    do
    {
      sub_22564(&v31, "Output: ", 8);
      sub_22170(&__p, *(v13 + 8));
      if ((v30 & 0x80u) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p;
      }

      if ((v30 & 0x80u) == 0)
      {
        v15 = v30;
      }

      else
      {
        v15 = v29;
      }

      sub_22564(&v31, v14, v15);
      sub_22564(&v31, " Count: ", 8);
      v16 = v13[5];
      v17 = std::ostream::operator<<();
      std::ios_base::getloc((v17 + *(*v17 - 24)));
      v18 = std::locale::use_facet(&v39, &std::ctype<char>::id);
      (v18->__vftable[2].~facet_0)(v18, 10);
      std::locale::~locale(&v39);
      std::ostream::put();
      std::ostream::flush();
      if (v30 < 0)
      {
        operator delete(__p);
      }

      v19 = v13[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v13[2];
          v12 = *v20 == v13;
          v13 = v20;
        }

        while (!v12);
      }

      v13 = v20;
    }

    while (v20 != a2 + 4);
  }

  sub_22564(&v31, "VP Use Count: ", 14);
  v21 = a2[6];
  v22 = std::ostream::operator<<();
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&__p, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  if ((v38 & 0x10) != 0)
  {
    v25 = v37;
    if (v37 < v34)
    {
      v37 = v34;
      v25 = v34;
    }

    locale = v33[4].__locale_;
  }

  else
  {
    if ((v38 & 8) == 0)
    {
      v24 = 0;
      a1[23] = 0;
      goto LABEL_44;
    }

    locale = v33[1].__locale_;
    v25 = v33[3].__locale_;
  }

  v24 = v25 - locale;
  if ((v25 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v24 >= 0x17)
  {
    operator new();
  }

  a1[23] = v24;
  if (v24)
  {
    memmove(a1, locale, v24);
  }

LABEL_44:
  a1[v24] = 0;
  if (v36 < 0)
  {
    operator delete(v35);
  }

  std::locale::~locale(v33);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_294818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::locale::~locale(&__p);
  sub_241A64(&a15);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

const void **sub_294888(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_2948BC(uint64_t a1)
{
  *a1 = off_6C1100;
  sub_477A0(*(a1 + 40));
  sub_477A0(*(a1 + 16));

  operator delete();
}

uint64_t sub_29492C(uint64_t a1)
{
  sub_477A0(*(a1 + 32));
  sub_477A0(*(a1 + 8));
  return a1;
}

uint64_t sub_294960(uint64_t a1, const __CFDictionary **a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = vdupq_n_s64(0x40BF400000000000uLL);
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v4 = sub_72578(*a2, kCTAudioVocoderType);
  if (v4)
  {
    sub_1DAF78(buf, v4);
    if (buf[24])
    {
      v5 = buf[23];
      if ((buf[23] & 0x80000000) != 0)
      {
        sub_54A0(v41, *buf, *&buf[8]);
        if ((buf[24] & 1) != 0 && v5 < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        *v41 = *buf;
        v42 = *&buf[16];
      }

      goto LABEL_8;
    }
  }

  else
  {
    buf[0] = 0;
    buf[24] = 0;
  }

  v41[0] = 0;
  v41[1] = 0;
  v42 = 0;
LABEL_8:
  if (!*a2)
  {
    v38 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v38, "Could not construct");
  }

  v6 = sub_72578(*a2, kCTAudioVocoderSampleRate);
  if (v6)
  {
    v6 = sub_113A0(v6);
  }

  if ((v6 & 0x100000000) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!*a2)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
  }

  v8 = sub_72578(*a2, kCTAudioVocoderI2SClockRate);
  if (v8)
  {
    v8 = sub_113A0(v8);
  }

  if ((v8 & 0x100000000) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_5544(13);
  v11 = sub_5544(40);
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
      goto LABEL_26;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_26:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v41;
    if (v42 < 0)
    {
      v16 = v41[0];
    }

    *buf = 136316162;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 338;
    *&buf[18] = 2080;
    *&buf[20] = v16;
    v70 = 1024;
    *v71 = v7;
    *&v71[4] = 1024;
    *&v71[6] = v9;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d vocoder type is %s, vocoder sample rate is %u Hz, hardware sample rate is %u", buf, 0x28u);
  }

  *(a1 + 8) = sub_295514(v7);
  *(a1 + 16) = sub_295514(v9);
  if ((atomic_load_explicit(&qword_6E8A08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8A08))
  {
    sub_48540(__p, kCTAudioVocoderTypeQCELP13);
    *buf = *__p;
    *&buf[16] = v68[0];
    __p[1] = 0;
    v68[0] = 0;
    __p[0] = 0;
    *&buf[24] = 1902341232;
    sub_48540(&v65, kCTAudioVocoderTypeEVRC);
    *&v71[2] = v65;
    v72 = v66;
    v66 = 0;
    v65 = 0uLL;
    v73 = 1702261347;
    sub_48540(v63, kCTAudioVocoderTypeEVRCB);
    v74 = *v63;
    v75 = v64;
    v63[1] = 0;
    v64 = 0;
    v63[0] = 0;
    v76 = 1702261346;
    sub_48540(&v61, kCTAudioVocoderType4GVNB);
    v77 = v61;
    v78 = v62;
    v62 = 0;
    v61 = 0uLL;
    v79 = 880176738;
    sub_48540(v59, kCTAudioVocoderType4GVWB);
    v80 = *v59;
    v81 = v60;
    v59[1] = 0;
    v60 = 0;
    v59[0] = 0;
    v82 = 880179042;
    sub_48540(&v57, kCTAudioVocoderType4GVNW);
    v83 = v57;
    v84 = v58;
    v58 = 0;
    v57 = 0uLL;
    v85 = 880176759;
    sub_48540(v55, kCTAudioVocoderTypeFR);
    v86 = *v55;
    v87 = v56;
    v55[1] = 0;
    v56 = 0;
    v55[0] = 0;
    v88 = 1718755360;
    sub_48540(&v53, kCTAudioVocoderTypeHR);
    v89 = v53;
    v90 = v54;
    v54 = 0;
    v53 = 0uLL;
    v91 = 1752309792;
    sub_48540(v51, kCTAudioVocoderTypeEFR);
    v92 = *v51;
    v93 = v52;
    v51[1] = 0;
    v52 = 0;
    v51[0] = 0;
    v94 = 1701212704;
    sub_48540(v49, kCTAudioVocoderTypeAMR);
    v95 = *v49;
    v96 = v50;
    v49[1] = 0;
    v50 = 0;
    v49[0] = 0;
    v97 = 1935764850;
    sub_48540(v47, kCTAudioVocoderTypeWAMR);
    v98 = *v47;
    v99 = v48;
    v47[1] = 0;
    v48 = 0;
    v47[0] = 0;
    v100 = 1935767394;
    sub_48540(v45, kCTAudioVocoderTypeEAMR);
    v101 = *v45;
    v102 = v46;
    v45[1] = 0;
    v46 = 0;
    v45[0] = 0;
    v103 = 1700883826;
    sub_48540(v43, kCTAudioVocoderTypeEVS);
    v104 = *v43;
    v105 = v44;
    v43[1] = 0;
    v44 = 0;
    v43[0] = 0;
    v106 = 1936029299;
    sub_295660(buf, 13);
    v40 = 52;
    do
    {
      if (SHIBYTE(v68[v40]) < 0)
      {
        operator delete(__p[v40]);
      }

      v40 -= 4;
    }

    while (v40 * 8);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v45[0]);
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(v47[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(v49[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    if (SHIBYTE(v54) < 0)
    {
      operator delete(v53);
    }

    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55[0]);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(v59[0]);
    }

    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61);
    }

    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[0]);
    }

    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (SHIBYTE(v68[0]) < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_guard_release(&qword_6E8A08);
  }

  v17 = sub_1DC1CC(v41);
  v18 = *(&xmmword_6E89E0 + 1);
  if (*(&xmmword_6E89E0 + 1))
  {
    v19 = v17;
    v20 = vcnt_s8(*(&xmmword_6E89E0 + 8));
    v20.i16[0] = vaddlv_u8(v20);
    v21 = v20.u32[0];
    if (v20.u32[0] > 1uLL)
    {
      v22 = v17;
      if (v17 >= *(&xmmword_6E89E0 + 1))
      {
        v22 = v17 % *(&xmmword_6E89E0 + 1);
      }
    }

    else
    {
      v22 = (*(&xmmword_6E89E0 + 1) - 1) & v17;
    }

    v23 = *(xmmword_6E89E0 + 8 * v22);
    if (v23)
    {
      for (i = *v23; i; i = *i)
      {
        v25 = i[1];
        if (v19 == v25)
        {
          if (sub_1DC61C(i + 2, v41))
          {
            v34 = i[5] & 0xFFFFFF00;
            v35 = *(i + 10);
            v36 = 0x100000000;
            goto LABEL_67;
          }
        }

        else
        {
          if (v21 > 1)
          {
            if (v25 >= v18)
            {
              v25 %= v18;
            }
          }

          else
          {
            v25 &= v18 - 1;
          }

          if (v25 != v22)
          {
            break;
          }
        }
      }
    }
  }

  v26 = sub_5544(13);
  v27 = sub_5544(40);
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
      goto LABEL_54;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

LABEL_54:
  v31 = *v26;
  if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    if (SHIBYTE(v42) < 0)
    {
      sub_54A0(__p, v41[0], v41[1]);
    }

    else
    {
      *__p = *v41;
      v68[0] = v42;
    }

    v32 = __p;
    if (v68[0] < 0)
    {
      v32 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 53;
    *&buf[18] = 2080;
    *&buf[20] = v32;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d Unhandled vocoder type: %s", buf, 0x1Cu);
    if (SHIBYTE(v68[0]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v36 = 0;
  v35 = 0;
  v34 = 0;
LABEL_67:
  *(a1 + 4) = BYTE4(v36);
  *a1 = v36 | v34 | v35;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[0]);
  }

  return a1;
}

void sub_2952E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  v80 = (v78 + 407);
  v81 = -416;
  v82 = v80;
  while (1)
  {
    v83 = *v82;
    v82 -= 32;
    if (v83 < 0)
    {
      operator delete(*(v80 - 23));
    }

    v80 = v82;
    v81 += 32;
    if (!v81)
    {
      if (a21 < 0)
      {
        operator delete(__p);
      }

      if (a27 < 0)
      {
        operator delete(a22);
      }

      if (a33 < 0)
      {
        operator delete(a28);
      }

      if (a39 < 0)
      {
        operator delete(a34);
      }

      if (a45 < 0)
      {
        operator delete(a40);
      }

      if (a51 < 0)
      {
        operator delete(a46);
      }

      if (a57 < 0)
      {
        operator delete(a52);
      }

      if (a63 < 0)
      {
        operator delete(a58);
      }

      if (a69 < 0)
      {
        operator delete(a64);
      }

      if (a72 < 0)
      {
        operator delete(a70);
      }

      if (a74 < 0)
      {
        operator delete(a73);
      }

      if (a76 < 0)
      {
        operator delete(a75);
      }

      if (a78 < 0)
      {
        operator delete(a77);
      }

      __cxa_guard_abort(&qword_6E8A08);
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }
  }
}

double sub_295514(unsigned int a1)
{
  if (a1)
  {
    return a1;
  }

  v3 = sub_5544(13);
  v4 = sub_5544(40);
  v5 = 0;
  *v9 = 0x100000002;
  v6 = *(v3 + 8);
  while (1)
  {
    v7 = *&v9[v5];
    if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
    {
      break;
    }

    v5 += 4;
    if (v5 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v6 & v7) == 0)
  {
    v3 = v4;
  }

LABEL_10:
  v8 = *v3;
  v1 = 8000.0;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 136315906;
    *&v9[4] = "CoreTelephonyInterface.cpp";
    v10 = 1024;
    v11 = 99;
    v12 = 1024;
    v13 = 0;
    v14 = 1024;
    v15 = 8000;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid vocoder sample rate: %u Hz. Setting to default sample rate: %u Hz", v9, 0x1Eu);
  }

  return v1;
}

BOOL sub_295660(_BOOL8 result, uint64_t a2)
{
  xmmword_6E89E0 = 0u;
  *&qword_6E89F0 = 0u;
  dword_6E8A00 = 1065353216;
  if (a2)
  {
    v2 = result;
    v3 = (result + 32 * a2);
    do
    {
      v4 = sub_1DC1CC(v2);
      v5 = v4;
      v6 = *(&xmmword_6E89E0 + 1);
      if (!*(&xmmword_6E89E0 + 1))
      {
        goto LABEL_19;
      }

      v7 = vcnt_s8(*(&xmmword_6E89E0 + 8));
      v7.i16[0] = vaddlv_u8(v7);
      v8 = v7.u32[0];
      if (v7.u32[0] > 1uLL)
      {
        v9 = v4;
        if (v4 >= *(&xmmword_6E89E0 + 1))
        {
          v9 = v4 % *(&xmmword_6E89E0 + 1);
        }
      }

      else
      {
        v9 = (*(&xmmword_6E89E0 + 1) - 1) & v4;
      }

      v10 = *(xmmword_6E89E0 + 8 * v9);
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

void sub_295AE8(_Unwind_Exception *a1)
{
  sub_295B94(1, v1);
  sub_295B1C();
  _Unwind_Resume(a1);
}

void sub_295B1C()
{
  v0 = qword_6E89F0;
  if (qword_6E89F0)
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

  v2 = xmmword_6E89E0;
  *&xmmword_6E89E0 = 0;
  if (v2)
  {

    operator delete(v2);
  }
}

void sub_295B94(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_295E54()
{
  sub_477A0(*v2);
  sub_29492C(v1);
  sub_4BA7C(v0);
  operator delete();
}

void *sub_295EF4(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_17D224(a1, v4, *a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_295F70(uint64_t a1)
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

void sub_295FF0()
{
  v0 = qword_6E8910;
  qword_6E8910 = 0;
  if (v0)
  {
    v3 = v0;
    v1 = sub_68E60();
    if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
    {
      sub_2963F8(v0);
    }

    else
    {
      v4 = &v3;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_296570;
      block[3] = &unk_6BDD18;
      block[4] = &v4;
      dispatch_sync(v1, block);
    }

    sub_477A0(*(v0 + 88));
    sub_477A0(*(v0 + 56));
    sub_477A0(*(v0 + 32));
    v2 = *(v0 + 16);
    if (v2)
    {
      CFRelease(v2);
    }

    operator delete();
  }
}

void sub_2963F8(CFTypeRef *a1)
{
  if (!*a1)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "CoreTelephonyInterface.cpp";
      v10 = 1024;
      v11 = 530;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  _CTServerConnectionUnregisterForNotification();
  v2 = *a1;
  _CTServerConnectionUnregisterForNotification();
  v3 = *a1;
  _CTServerConnectionUnregisterForNotification();
  v4 = *a1;
  _CTServerConnectionUnregisterForNotification();
  CFRelease(*a1);
  *a1 = 0;
}

void sub_296864(uint64_t a1, const __CFString *a2, CFTypeRef cf)
{
  if (!a2)
  {
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v39 = 1024;
      v40 = 561;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = *(a1 + 32);
  if (cf)
  {
    CFRetain(cf);
    cfa = cf;
    v6 = CFGetTypeID(cf);
    if (v6 != CFDictionaryGetTypeID())
    {
      v7 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v7, "Could not construct");
    }
  }

  else
  {
    cfa = 0;
  }

  v8 = sub_5544(13);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_65388(v31, a2);
    v10 = v31[0];
    if (cfa)
    {
      v11 = CFCopyDescription(cfa);
      v33 = v11;
      sub_1267C(__p, v11);
      if (v11)
      {
        CFRelease(v11);
      }

      v12 = __p;
      if (SHIBYTE(v36) < 0)
      {
        v12 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v39 = 1024;
      v40 = 566;
      v41 = 2112;
      v42 = v10;
      v43 = 2080;
      v44 = v12;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CoreTelephony Notification: [%@] with info: %s", buf, 0x26u);
      if (SHIBYTE(v36) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315906;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v39 = 1024;
      v40 = 566;
      v41 = 2112;
      v42 = v31[0];
      v43 = 2080;
      v44 = "nil";
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received CoreTelephony Notification: [%@] with info: %s", buf, 0x26u);
    }

    if (v31[0])
    {
      CFRelease(v31[0]);
    }
  }

  if (CFStringCompare(a2, kCTAudioVocoderInfoNotification, 0) == kCFCompareEqualTo)
  {
    if (cfa)
    {
      sub_105304();
      sub_294960(buf, &cfa);
      sub_297858(buf);
      goto LABEL_44;
    }

    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v39 = 1024;
      v40 = 570;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

LABEL_58:
    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "Precondition failure.");
  }

  if (CFStringCompare(a2, kCTAudioSampleRateSwitchCompleteNotification, 0))
  {
    if (CFStringCompare(a2, kCTDaemonReadyNotification, 0))
    {
      if (CFStringCompare(a2, kCTConnectionInvalidatedNotification, 0) == kCFCompareEqualTo)
      {
        v5[8] = 0;
      }
    }

    else
    {
      v5[8] = 1;
      v20 = atomic_load(v5 + 9);
      if (v20)
      {
        atomic_store(0, v5 + 9);
        v33 = v5;
        v34 = 1;
        v37 = 0;
        __p[0] = v5;
        __p[1] = &v37;
        v36 = &v33;
        sub_2983E8(__p);
      }

      sub_687A8(v5);
    }

    goto LABEL_44;
  }

  if (!cfa)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v39 = 1024;
      v40 = 575;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    goto LABEL_58;
  }

  sub_105304();
  if (qword_6E89D0)
  {
    if (!cfa)
    {
      v30 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v30, "Could not construct");
    }

    v13 = sub_72578(cfa, kCTAudioSampleRateSwitchCompleteStatus);
    if (!v13 || (v14 = sub_11DA8(v13), v14 < 0x100u) || (v14 & 1) == 0)
    {
      v15 = sub_5544(13);
      v16 = sub_5544(40);
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
          goto LABEL_40;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

LABEL_40:
      v21 = *v15;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "CoreTelephonyInterface.cpp";
        v39 = 1024;
        v40 = 585;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Sample rate switch did not complete, this most likely means we are on a VoWifi call, so dont wait for confirmation", buf, 0x12u);
      }
    }

    sub_105304();
    dispatch_semaphore_signal(qword_6E89D0);
  }

LABEL_44:
  if (cfa)
  {
    CFRelease(cfa);
  }
}

void sub_29723C(uint64_t **a1)
{
  v1 = **a1;
  CommCenterInitializationState = _CTServerConnectionGetCommCenterInitializationState();
  v3 = CommCenterInitializationState;
  v4 = HIDWORD(CommCenterInitializationState);
  if (HIDWORD(CommCenterInitializationState))
  {
    v5 = 0;
  }

  else
  {
    v5 = CommCenterInitializationState == 0;
  }

  if (!v5)
  {
    v6 = sub_5544(13);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v11 = "CoreTelephonyInterface.cpp";
        v12 = 1024;
        v13 = 404;
        v14 = 1024;
        v15 = v3;
        v16 = 1024;
        v17 = v4;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d _CTServerConnectionGetCommCenterInitializationState returned error: {domain, error} : {%d, %d}", buf, 0x1Eu);
      }
    }
  }

  v8 = sub_5544(13);
  v9 = *v8;
  if (*v8)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "CoreTelephonyInterface.cpp";
      v12 = 1024;
      v13 = 413;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", buf, 0x12u);
    }
  }

  operator delete();
}

void sub_29754C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_297590(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29759CLL);
  }

  JUMPOUT(0x297580);
}

void sub_2975A8(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2975B4);
  }

  JUMPOUT(0x297580);
}

void sub_2975C4(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2975D0);
  }

  JUMPOUT(0x297580);
}

void sub_297858(double *a1)
{
  std::mutex::lock(&unk_6E8918);
  v2 = BYTE4(xmmword_6E8958);
  v3 = *(a1 + 4);
  v4 = BYTE4(xmmword_6E8958) != v3 || BYTE4(xmmword_6E8958) == 0;
  if (v4)
  {
    if (BYTE4(xmmword_6E8958) != v3)
    {
      v26 = 0;
      v27 = 0;
      v25 = &v26;
LABEL_18:
      *buf = 0;
      sub_297E50(&v25, 0);
      goto LABEL_19;
    }
  }

  else if (xmmword_6E8958 != *a1)
  {
    goto LABEL_12;
  }

  if (*(&xmmword_6E8958 + 1) == a1[1] && dbl_6E8968[0] == a1[2])
  {
    v26 = 0;
    v27 = 0;
    v25 = &v26;
    goto LABEL_52;
  }

LABEL_12:
  v26 = 0;
  v27 = 0;
  v25 = &v26;
  if (BYTE4(xmmword_6E8958) == v3 && v3 != 0)
  {
    v2 = *a1;
    v3 = xmmword_6E8958;
  }

  if (v2 != v3)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (a1[1] != *(&xmmword_6E8958 + 1))
  {
    *buf = 1;
    sub_297E50(&v25, 1);
  }

  if (a1[2] != dbl_6E8968[0])
  {
    *buf = 2;
    sub_297E50(&v25, 2);
  }

  v6 = *a1;
  dbl_6E8968[0] = a1[2];
  xmmword_6E8958 = v6;
  v7 = sub_5544(13);
  v8 = sub_5544(40);
  v9 = 0;
  *buf = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&buf[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_29;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_29:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v25;
    memset(&v28, 0, sizeof(v28));
    std::string::append(&v28, "{ ", 2uLL);
    if (v13 != &v26)
    {
      while (1)
      {
        std::to_string(&v29, *(v13 + 7));
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v29;
        }

        else
        {
          v14 = v29.__r_.__value_.__r.__words[0];
        }

        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v29.__r_.__value_.__l.__size_;
        }

        std::string::append(&v28, v14, size);
        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
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
            v4 = *v17 == v13;
            v13 = v17;
          }

          while (!v4);
        }

        if (v17 == &v26)
        {
          break;
        }

        std::string::append(&v28, ", ", 2uLL);
        v13 = v17;
      }
    }

    std::string::append(&v28, " }", 2uLL);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v28;
    }

    else
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 812;
    *&buf[18] = 2080;
    *&buf[20] = v18;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Result of vocoder update was %s", buf, 0x1Cu);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }
  }

LABEL_52:
  std::mutex::unlock(&unk_6E8918);
  v19 = &buf[8];
  *&buf[8] = 0uLL;
  *buf = &buf[8];
  if (v27)
  {
LABEL_53:
    if (qword_6E8988)
    {
      sub_8703C();
      operator new();
    }
  }

  else
  {
    v20 = v25;
    while (v20 != &v26)
    {
      if (*(v20 + 7) != *(v19 + 7))
      {
        goto LABEL_53;
      }

      v21 = v20[1];
      v22 = v20;
      if (v21)
      {
        do
        {
          v20 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v20 = v22[2];
          v4 = *v20 == v22;
          v22 = v20;
        }

        while (!v4);
      }

      v23 = *(v19 + 1);
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
          v24 = *(v19 + 2);
          v4 = *v24 == v19;
          v19 = v24;
        }

        while (!v4);
      }

      v19 = v24;
    }
  }

  sub_477A0(v26);
}

void sub_297D80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  sub_477A0(a12);
  operator delete();
}

void sub_297E38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x297E0CLL);
}

uint64_t sub_297E50(uint64_t result, int a2)
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *sub_297F10(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }
      }

      else
      {
        v9 = result + 1;
        if (v3)
        {
          v9 = result + 1;
          while (1)
          {
            while (1)
            {
              v12 = v3;
              v13 = *(v3 + 28);
              if (v8 >= v13)
              {
                break;
              }

              v3 = *v12;
              v9 = v12;
              if (!*v12)
              {
                goto LABEL_12;
              }
            }

            if (v13 >= v8)
            {
              break;
            }

            v9 = v12 + 1;
            v3 = v12[1];
            if (!v3)
            {
              goto LABEL_12;
            }
          }
        }
      }

      if (!*v9)
      {
LABEL_12:
        operator new();
      }

      v10 = v2[1];
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
          v11 = v2[2];
          v7 = *v11 == v2;
          v2 = v11;
        }

        while (!v7);
      }

      v2 = v11;
    }

    while (v11 != a2 + 1);
  }

  return result;
}

void sub_2980B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    sub_46A74();
  }

  (*(*v2 + 48))(v2);

  sub_21991C(a2, 1920099684);
}

void sub_298120(uint64_t a1)
{
  sub_4C70(a1 + 16);

  operator delete();
}

void *sub_298198(void *result)
{
  v1 = result[2];
  v2 = result + 3;
  if (v1 != result + 3)
  {
    v3 = result[1];
    do
    {
      result = *(v3 + 120);
      if (result)
      {
        v7 = *(v1 + 7);
        result = (*(*result + 48))(result, &v7);
      }

      v4 = v1[1];
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
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }

  return result;
}

void sub_298248(void **a1)
{
  sub_477A0(a1[3]);

  operator delete(a1);
}

void *sub_29828C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_6BDDB8;
  a2[1] = v2;
  return sub_297F10(a2 + 2, (a1 + 16));
}

void sub_298338(uint64_t a1)
{
  *a1 = off_6BDDB8;
  sub_477A0(*(a1 + 24));

  operator delete();
}

uint64_t sub_2983A0(uint64_t a1)
{
  *a1 = off_6BDDB8;
  sub_477A0(*(a1 + 24));
  return a1;
}

void sub_2983E8(uint64_t a1)
{
  if (!**a1)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "CoreTelephonyInterface.cpp";
      *&block[12] = 1024;
      *&block[14] = 502;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(*a1 + 8))
  {
    v1 = *(a1 + 16);
    if (!**(a1 + 8))
    {
      sub_68E60();
      *block = *v1;
      block[8] = v1[8];
      operator new();
    }

    v2 = sub_68E60();
    if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
    {
      sub_298B90(v1);
    }

    else
    {
      v8 = v1;
      *block = _NSConcreteStackBlock;
      *&block[8] = 0x40000000;
      *&block[16] = sub_298D50;
      v10 = &unk_6BDD58;
      v11 = &v8;
      dispatch_sync(v2, block);
    }
  }

  else
  {
    v3 = sub_5544(13);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "CoreTelephonyInterface.cpp";
      *&block[12] = 1024;
      *&block[14] = 506;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", block, 0x12u);
    }
  }
}

void sub_298914(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x298920);
  }

  JUMPOUT(0x2988ECLL);
}

void sub_298B90(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = atomic_load((*a1 + 9));
  if (a1[8] != (v2 & 1))
  {
    v4 = sub_5544(13);
    if (*(v4 + 8))
    {
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
        {
          v6 = "False";
          v7 = a1[8];
          v17 = "CoreTelephonyInterface.cpp";
          v16 = 136315650;
          if (v7)
          {
            v6 = "True";
          }

          v18 = 1024;
          v19 = 429;
          v20 = 2080;
          v21[0] = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating TTY enabled state: %s", &v16, 0x1Cu);
        }
      }
    }

    v8 = *v1;
    v9 = a1[8];
    v10 = _CTServerConnectionSetTTYMode();
    v11 = v10;
    v12 = HIDWORD(v10);
    if (HIDWORD(v10))
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 == 0;
    }

    if (v13)
    {
      atomic_store(a1[8], v1 + 9);
    }

    else
    {
      v14 = sub_5544(13);
      v15 = *v14;
      if (*v14)
      {
        if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315906;
          v17 = "CoreTelephonyInterface.cpp";
          v18 = 1024;
          v19 = 433;
          v20 = 1024;
          LODWORD(v21[0]) = v11;
          WORD2(v21[0]) = 1024;
          *(v21 + 6) = v12;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d _CTServerConnectionSetTTYMode returned error: {domain, error} : {%d, %d}", &v16, 0x1Eu);
        }
      }
    }
  }
}

void sub_299040(unsigned __int8 *a1)
{
  sub_298B90(a1);
  if (a1)
  {
    operator delete();
  }
}

uint64_t sub_299364(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_2993E8()
{
  v0 = MGGetBoolAnswer();
  if ((v0 & 1) == 0)
  {
    v1 = sub_5544(13);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        v4 = 136315394;
        v5 = "CoreTelephonyInterface.cpp";
        v6 = 1024;
        v7 = 705;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Baseband is not supported", &v4, 0x12u);
      }
    }
  }

  return v0;
}

double sub_2994BC(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = *(a1 + 80);
  v3 = sub_5544(13);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "CoreTelephonyInterface.cpp";
    v8 = 1024;
    v9 = 722;
    v10 = 2048;
    v11 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Vocoder rate is %f", &v6, 0x1Cu);
  }

  std::mutex::unlock((a1 + 8));
  return v2;
}

double sub_2995BC(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = *(a1 + 88);
  v3 = sub_5544(13);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "CoreTelephonyInterface.cpp";
    v8 = 1024;
    v9 = 732;
    v10 = 2048;
    v11 = v2;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Vocoder hardware rate is %f", &v6, 0x1Cu);
  }

  std::mutex::unlock((a1 + 8));
  return v2;
}

void sub_2996BC(uint64_t *a1, double a2)
{
  v4 = sub_5544(13);
  v5 = sub_5544(40);
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
      if ((v7 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

  if (*(v4 + 8))
  {
LABEL_9:
    v9 = *v4;
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v49 = 1024;
      v50 = 740;
      v51 = 2048;
      v52 = a2;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d +- CoreTelephonyInterface::confirmVocoderSampleRate(inSampleRate %f)", buf, 0x1Cu);
    }
  }

LABEL_12:
  if ((*(a1 + 76) & 1) == 0)
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v49 = 1024;
      v50 = 742;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v10 = sub_5544(13);
  v11 = sub_5544(40);
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
      goto LABEL_19;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

LABEL_19:
  v15 = *v10;
  if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    v49 = 1024;
    v50 = 745;
    v51 = 2048;
    v52 = a2;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Confirming sample rate switch with CoreTelephony for sample rate %f Hz", buf, 0x1Cu);
  }

  v16 = dispatch_semaphore_create(0);
  v17 = a1[24];
  a1[24] = v16;
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *a1;
  sub_65388(&cf, kCTAudioVocoderI2SClockRate);
  v19 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v57 = v19;
  *buf = a2;
  v58 = CFNumberCreate(0, kCFNumberIntType, buf);
  if (!v58)
  {
    v39 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v39, "Could not construct");
  }

  v44[0] = &v57;
  v44[1] = 1;
  v20 = sub_69CE8(v44);
  v21 = v20;
  v45 = v20;
  v46 = v18;
  if (v20)
  {
    CFRetain(v20);
  }

  v47 = v21;
  if (!*v18)
  {
    v40 = sub_5544(14);
    v41 = *v40;
    if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "CoreTelephonyInterface.cpp";
      v49 = 1024;
      v50 = 502;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v42 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v42, "Precondition failure.");
  }

  if (*(v18 + 8))
  {
    sub_68E60();
    if (v47)
    {
      CFRetain(v47);
    }

    operator new();
  }

  v22 = sub_5544(13);
  v23 = *v22;
  if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    v49 = 1024;
    v50 = 506;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", buf, 0x12u);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  mach_absolute_time();
  v24 = dispatch_walltime(0, 2000000000);
  v25 = dispatch_semaphore_wait(a1[24], v24);
  mach_absolute_time();
  v26 = __udivti3();
  v27 = __udivti3();
  v28 = sub_5544(13);
  v29 = sub_5544(40);
  v30 = 0;
  v31 = (v27 - v26) / 0xF4240uLL;
  *buf = 0x100000002;
  v32 = *(v28 + 8);
  while (1)
  {
    v33 = *&buf[v30];
    if (((v32 & v33) != 0) != ((*(v29 + 8) & v33) != 0))
    {
      break;
    }

    v30 += 4;
    if (v30 == 8)
    {
      goto LABEL_53;
    }
  }

  if ((v32 & v33) == 0)
  {
    v28 = v29;
  }

LABEL_53:
  v34 = *v28;
  if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    *&buf[4] = "CoreTelephonyInterface.cpp";
    v49 = 1024;
    v50 = 764;
    v51 = 2048;
    v52 = *&v31;
    v53 = 2048;
    v54 = a2;
    v55 = 2048;
    v56 = v25;
    _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d waited %llu milliseconds for sample rate confirmation notification for sample rate %f Hz (timed out = %ld)", buf, 0x30u);
  }

  v35 = a1[24];
  a1[24] = 0;
  if (v35)
  {
    dispatch_release(v35);
  }
}

uint64_t sub_29A120(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_29A154()
{
  v0 = _CTServerConnectionAudioSampleRateSwitchDidComplete();
  v1 = v0;
  v2 = HIDWORD(v0);
  if (HIDWORD(v0) || v0)
  {
    v3 = sub_5544(13);
    v4 = sub_5544(40);
    v5 = 0;
    *v9 = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&v9[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_9;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_9:
    v8 = *v3;
    if (v8)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 136315906;
        *&v9[4] = "CoreTelephonyInterface.cpp";
        v10 = 1024;
        v11 = 455;
        v12 = 1024;
        v13 = v1;
        v14 = 1024;
        v15 = v2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d _CTServerConnectionAudioSampleRateSwitchDidComplete returned error: {domain, error} : {%d, %d}", v9, 0x1Eu);
      }
    }
  }
}

uint64_t *sub_29A298(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_29A2F0(uint64_t a1)
{
  v4[0] = a1;
  v1 = *(a1 + 8);
  v2 = **a1;
  sub_29A154();
  return sub_29A298(v4);
}

uint64_t sub_29A5F4(uint64_t a1)
{
  v12 = 0;
  v10 = a1;
  v11 = &v12;
  if (!*a1)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "CoreTelephonyInterface.cpp";
      *&block[12] = 1024;
      *&block[14] = 502;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*(a1 + 8))
  {
    v2 = sub_68E60();
    if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
    {
      v5 = atomic_load((a1 + 9));
      *v11 = v5 & 1;
    }

    else
    {
      v13 = &v10;
      *block = _NSConcreteStackBlock;
      *&block[8] = 0x40000000;
      *&block[16] = sub_29AAC4;
      v15 = &unk_6BDD38;
      v16 = &v13;
      dispatch_sync(v2, block);
    }
  }

  else
  {
    v3 = sub_5544(13);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "CoreTelephonyInterface.cpp";
      *&block[12] = 1024;
      *&block[14] = 506;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d No CommCenter process active.", block, 0x12u);
    }
  }

  return v12;
}

uint64_t sub_29AAC4(uint64_t result)
{
  v1 = **(result + 32);
  v3 = *v1;
  v2 = v1[1];
  LOBYTE(v3) = atomic_load((v3 + 9));
  *v2 = v3 & 1;
  return result;
}

void sub_29AAE4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_88A00(&v16, a2, "", 49);
  v4 = *(v16 + 200);
  *buf = *(v16 + 192);
  *&buf[8] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v14, buf, "", 50);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = v14;
  strcpy(buf, "essaurtp");
  buf[9] = 0;
  *&buf[10] = 0;
  v6 = (*(*v14 + 16))(v14, buf);
  strcpy(buf, "edqsurtp");
  buf[9] = 0;
  *&buf[10] = 0;
  if ((v6 | (*(*v5 + 16))(v5, buf)))
  {
    v13[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_88A00(&v11, a3, "", 59);
    v7 = *(v11 + 200);
    *buf = *(v11 + 192);
    *&buf[8] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(v13, buf, "", 59);
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v12)
    {
      sub_1A8C0(v12);
    }

    if (!v13[0])
    {
      v8 = sub_5544(14);
      v9 = *v8;
      if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingHandler_Call_N71.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 61;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [sidetoneDevice is NULL]: could not get sidetone device", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003329396;
    }
  }

  operator new();
}

void sub_29ADD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AE84(void *a1@<X8>)
{
  sub_CE168();
  v3 = 5;
  strcpy(v2, "Codec");
  sub_CDEB8(a1, v2);
}

void sub_29AEF8(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  sub_103670(v3, *(a1 + 8), a2);
  operator new();
}

void sub_29B37C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  __cxa_free_exception(v31);
  (*(*v30 + 8))(v30);
  a18 = &a13;
  sub_F5714(&a18);
  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_29B4D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_5544(21);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    buf = 136315394;
    buf_4 = "RoutingHandler_SplitterPlayback_GenericConfig1.cpp";
    buf_12 = 1024;
    buf_14 = 109;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring splitter playback route controls", &buf, 0x12u);
  }

  memset(&v21[2], 0, 24);
  v5 = *(*a2 + 24);
  if (v5 != *a2 + 16)
  {
    sub_25704(v21, (v5 + 32), "", 117);
    v6 = v21[0];
    v7 = *(v21[0] + 200);
    if (v7)
    {
      v8 = *(v21[0] + 144);
      v9 = *(v21[0] + 304);
      v10 = *(v21[0] + 192);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v11 = std::__shared_weak_count::lock(v7);
      std::__shared_weak_count::__release_weak(v7);
      if (v11)
      {
        if (v10)
        {
          (*(*v10 + 120))(v10);
          sub_1D7C28(1uLL);
        }
      }
    }

    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      (*(*v6 + 144))(v22, v6);
      v14 = SHIBYTE(v23);
      v15 = v22[0];
      sub_22170(v19, v6[36]);
      v16 = v22;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v20 >= 0)
      {
        v17 = v19;
      }

      else
      {
        v17 = v19[0];
      }

      buf = 136315906;
      buf_4 = "RoutingHandler_SplitterPlayback_GenericConfig1.cpp";
      buf_12 = 1024;
      buf_14 = 126;
      v28 = 2080;
      v29 = v16;
      v30 = 2080;
      v31 = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [controlDevice.get() is NULL]: could not get device for port \\%s\\ (type: '%s').", &buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  operator new();
}

void sub_29C1B0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, void *a33, std::__shared_weak_count *a34, int a35, __int16 a36, char a37, char a38)
{
  v40 = *v38;
  if (*v38)
  {
    v39[22].__shared_weak_owners_ = v40;
    operator delete(v40);
  }

  sub_1405C0(a16);
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v39);
  operator delete(v41);
  operator delete();
}

void sub_29C404(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6BDEA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29C478(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*(*a2 + 4) && *v2 == 1986291046)
  {
    sub_25704(&v6, (*(v2 + 24) + 32), "", 155);
    (*(*v6 + 272))(buf);
    if (v7)
    {
      sub_1A8C0(v7);
    }

    operator new();
  }

  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v9 = "RoutingHandler_SplitterPlayback_GenericConfig1.cpp";
    v10 = 1024;
    v11 = 152;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Precondition failure.");
}

void sub_29C6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  sub_65310(va);
  _Unwind_Resume(a1);
}

BOOL sub_29C7A0(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      sub_1DE47C();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void sub_29C8B4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29C96C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CA24(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CADC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CB94(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CC4C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CD04(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CDBC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CE74(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CF2C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29CFE4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D09C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D154(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D20C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D2C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D37C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D434(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D4EC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D5A4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D65C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_29E284(v1);
  __cxa_rethrow();
}

void sub_29D6A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D708(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D768(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D7C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D828(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D888(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D8E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D948(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29D9A8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DA08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DA68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DAC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DB28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DB88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DBE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DC48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DCA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DD08(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DD68(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DDC8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DE28(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DE88(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DEE8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DF48(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29DFA8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E068(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E0C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E128(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E188(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E1E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_29E248(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_29E284(uint64_t a1)
{
  v2 = sub_8703C();
  result = (*(*v2 + 336))(v2);
  if (a1)
  {
    v4[0] = v4;
    v4[1] = v4;
    v4[2] = 0;
    operator new();
  }

  return result;
}

void sub_29E350(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4E0BC(va);
  _Unwind_Resume(a1);
}

void sub_29E364(unint64_t *a1, void *a2, int a3)
{
  if (a2[2])
  {
    if (a3)
    {
      sub_68E60();
      *buf = buf;
      *&buf[8] = buf;
      *&buf[16] = 0;
      v4 = a2[2];
      if (v4)
      {
        v6 = *a2;
        v5 = a2[1];
        v7 = *(*a2 + 8);
        v8 = *v5;
        *(v8 + 8) = v7;
        *v7 = v8;
        v9 = *buf;
        *(*buf + 8) = v5;
        *v5 = v9;
        *(v6 + 8) = buf;
        *buf = v6;
        *&buf[16] = v4;
        a2[2] = 0;
      }

      operator new();
    }

    v10 = atomic_load(a1);
    if (v10 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          *&buf[12] = 1024;
          *&buf[14] = 72;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously deleting objects from outside of a managed ObjectDestruction event", buf, 0x12u);
        }
      }
    }

    while (a2[2])
    {
      v13 = a2[1];
      v14 = v13[2];
      if (!v14)
      {
        v17 = sub_5544(14);
        v18 = *v17;
        if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          *&buf[12] = 1024;
          *&buf[14] = 149;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inObject is NULL]: Null object", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "Null object");
      }

      (*(*v14 + 8))(v14);
      v16 = *v13;
      v15 = v13[1];
      *(v16 + 8) = v15;
      *v15 = v16;
      --a2[2];
      operator delete(v13);
    }
  }
}

void sub_29E690(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_29E6C0(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_4E0BC(v1);
    operator delete();
  }

  return result;
}

void sub_29E710(uint64_t a1)
{
  v1 = a1;
  sub_8703C();
  operator new();
}

void sub_29E888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  sub_4E0BC(&a10);
  sub_29E6C0(&a9);
  _Unwind_Resume(a1);
}

void sub_29E8D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 24);
  memset(&v9, 0, sizeof(v9));
  std::string::append(&v9, "{ ", 2uLL);
  if (v4 != a1 + 16)
  {
    while (1)
    {
      v5 = *(v4 + 16);
      if (v5)
      {
        sub_23148(__p, v5 + 2);
      }

      else
      {
        sub_53E8(__p, "NULL");
      }

      if ((v11 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = __p[1];
      }

      std::string::append(&v9, v6, v7);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = *(v4 + 8);
      if (v4 == a1 + 16)
      {
        break;
      }

      std::string::append(&v9, ", ", 2uLL);
    }
  }

  std::string::append(&v9, " }", 2uLL);
  v8 = std::string::insert(&v9, 0, "Destroying core object(s): ", 0x1BuLL);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_29EA18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29EA40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x29EA28);
}

uint64_t sub_29EA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_70A338;
  if (atomic_load(qword_70A338))
  {
    v6 = atomic_load(qword_70A338);
    if (v6 != pthread_self())
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          v19 = 1024;
          v20 = 124;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mExecutionThread has been set outside of this command's execution", buf, 0x12u);
        }
      }
    }
  }

  v7 = atomic_load(v4);
  if (v7 == pthread_self())
  {
    v8 = sub_5544(14);
    v9 = sub_5544(16);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_10:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ObjectDestructionManager.h";
      v19 = 1024;
      v20 = 127;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Called recursively", buf, 0x12u);
    }
  }

  v17[0] = off_6BDF08;
  v17[1] = v4;
  v17[3] = v17;
  sub_51FD0(buf, 0, v17);
  sub_4C70(v17);
  atomic_store(pthread_self(), v4);
  sub_29E364(v4, (a1 + 16), 0);
  sub_21991C(a2, 1920099684);
  return sub_53BA4(buf);
}

void sub_29EC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29ECE4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6BDF08;
  a2[1] = v2;
  return result;
}

void sub_29ED78(void *a1)
{
  sub_29EDB0(a1);

  operator delete();
}

void *sub_29EDB0(void *a1)
{
  v2 = a1 + 2;
  if (a1[4])
  {
    v3 = sub_5544(14);
    v4 = sub_5544(16);
    v5 = 0;
    *__p = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&__p[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_8:
    v8 = *v3;
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[3];
      memset(&v15, 0, sizeof(v15));
      std::string::append(&v15, "{ ", 2uLL);
      if (v9 != v2)
      {
        while (1)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            sub_23148(__p, v10 + 2);
          }

          else
          {
            sub_53E8(__p, "NULL");
          }

          if (SBYTE3(v18) >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = *__p;
          }

          if (SBYTE3(v18) >= 0)
          {
            v12 = BYTE3(v18);
          }

          else
          {
            v12 = *&__p[8];
          }

          std::string::append(&v15, v11, v12);
          if (SBYTE3(v18) < 0)
          {
            operator delete(*__p);
          }

          v9 = *(v9 + 8);
          if (v9 == v2)
          {
            break;
          }

          std::string::append(&v15, ", ", 2uLL);
        }
      }

      std::string::append(&v15, " }", 2uLL);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v15;
      }

      else
      {
        v13 = v15.__r_.__value_.__r.__words[0];
      }

      *__p = 136315650;
      *&__p[4] = "ObjectDestructionManager.h";
      *&__p[12] = 1024;
      *&__p[14] = 115;
      v17 = 2080;
      v18 = v13;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Destructor called without an intervening call to Execute. Contained objects (%s) will be leaked!.", __p, 0x1Cu);
      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_4E0BC(v2);
  return a1;
}

void sub_29EFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    if (a15 < 0)
    {
      operator delete(__p);
    }

    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29F0C8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10();
  *(a1 + 104) = 0;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  if ((*(a1 + 4) & 1) == 0)
  {
    *(a1 + 4) = 1;
  }

  *a1 = 1953460273;
  if ((*(a1 + 12) & 1) == 0)
  {
    *(a1 + 12) = 1;
  }

  *(a1 + 8) = 1;
  LODWORD(__p) = 1;
  sub_1F8148((a1 + 24), &__p, &__p + 4, 1uLL);
  __p = 0x200000001;
  sub_1F8148((a1 + 48), &__p, v19, 2uLL);
  *(a1 + 72) = 0x101010101000101;
  *(a1 + 84) = 257;
  *(a1 + 88) = 16843008;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 2;
  *(a1 + 304) = -1047527424;
  *(a1 + 308) = 1;
  *(a1 + 340) = 1103101952;
  *(a1 + 344) = 1;
  *(a1 + 364) = 0;
  *(a1 + 368) = 1;
  *(a1 + 372) = 0;
  *(a1 + 376) = 1;
  *(a1 + 356) = 0;
  *(a1 + 360) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 380) = -1040187392;
  *(a1 + 384) = 1;
  *(a1 + 312) = 0;
  *(a1 + 316) = 1;
  *(a1 + 428) = 16843009;
  sub_53E8(&v3, "graph_configurations.plist");
  sub_30F0DC(&__p, &v3);
  sub_4DF190(v14, &__p);
  if (v19[15] < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v3.__r_.__value_.__l.__data_);
  }

  sub_1E1128((a1 + 432), &v15);
  sub_1E1238(a1 + 512, v14);
  *(a1 + 121) = 1;
  sub_53E8(&v3, "speaker_hal");
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_53E8(v7, "speaker_hal");
  sub_53E8(v8, "speaker_hal");
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 1684434036;
  LODWORD(v16[0]) = 1936749683;
  v16[1] = 0;
  memset(v13, 0, sizeof(v13));
  sub_1E13D0(v13, v16, &v17, 1uLL);
}

void sub_29FA44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29FC88(uint64_t a1, uint64_t a2)
{
  (*(*(a1 + 8) + 16))(a1 + 8);
  *(a1 + 152) = *a2;
  if (a1 + 152 != a2)
  {
    sub_26D7C0((a1 + 160), *(a2 + 8), (a2 + 16));
  }

  sub_68E60();
  operator new();
}

void sub_2A00C4(uint64_t a1)
{
  v2 = sub_42A43C(a1 + 8);
  sub_44E44(&v70, a1 + 112);
  v67 = *(a1 + 152);
  sub_2726F4(&v68, a1 + 160);
  if (v2)
  {
    sub_42A318(a1 + 8);
  }

  sub_2A0CAC(&v65);
  v64[0] = 0;
  v64[1] = 0;
  v63 = v64;
  *&v54 = v65;
  *&__s = v66;
  *v73 = v70;
  v61 = v71;
  v57.n128_u64[0] = &v63;
  v57.n128_u64[1] = v64;
  sub_10CB08(buf, &v54, &__s, v73, &v61, &v57);
  v62[0] = 0;
  v62[1] = 0;
  v61 = v62;
  *&v54 = v70;
  *&__s = v71;
  v72 = v66;
  *v73 = v65;
  v57.n128_u64[0] = &v61;
  v57.n128_u64[1] = v62;
  sub_10CB08(buf, &v54, &__s, v73, &v72, &v57);
  sub_44E44(&v57, &v63);
  sub_44E44(v58, &v61);
  sub_44E44(v59, &v65);
  sub_44E44(v60, &v70);
  v49 = (a1 + 112);
  v50 = a1;
  v3 = sub_5544(7);
  if ((*(v3 + 8) & 1) != 0 && *v3)
  {
    sub_2A0F64(&v70, "Cached Devices");
    sub_2A0F64(&v65, "Fetched Devices");
  }

  sub_2A0F64(&v63, "New Devices");
  sub_2A0F64(&v61, "Old Devices");
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v4 = v63;
  if (v63 != v64)
  {
    do
    {
      sub_2A1214(&__s, *(v4 + 7));
      v5 = SBYTE7(v52);
      if ((SBYTE7(v52) & 0x8000000000000000) != 0)
      {
        v7 = *(&__s + 1);
        if (!*(&__s + 1))
        {
LABEL_24:
          v13 = sub_5544(7);
          v14 = *v13;
          if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
          {
            v15 = *(v4 + 7);
            *buf = 136315650;
            *&buf[4] = "DeviceListener_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 180;
            v79 = 1024;
            LODWORD(v80) = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d UID is NULL for newly connected device with AudioObjectID %u ... ignoring device", buf, 0x18u);
          }

          goto LABEL_64;
        }

        p_s = __s;
      }

      else
      {
        if (!BYTE7(v52))
        {
          goto LABEL_24;
        }

        p_s = &__s;
        v7 = SBYTE7(v52);
      }

      if (v7 >= 19)
      {
        v8 = p_s + v7;
        v9 = p_s;
        do
        {
          v10 = memchr(v9, 86, v7 - 18);
          if (!v10)
          {
            break;
          }

          v11 = *v10 == 0x416C617574726956 && *(v10 + 1) == 0x697665446F696475;
          if (v11 && *(v10 + 11) == 0x5F6563697665446FLL)
          {
            if (v10 != v8 && v10 - p_s != -1)
            {
              goto LABEL_64;
            }

            break;
          }

          v9 = (v10 + 1);
          v7 = v8 - v9;
        }

        while (v8 - v9 >= 19);
      }

      v16 = v68;
      if (v68 == v69)
      {
LABEL_48:
        if (v67 == 3)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v17 = (v5 & 0x80000000) != 0;
        if ((v5 & 0x80000000) != 0)
        {
          v5 = *(&__s + 1);
        }

        if (v17)
        {
          v18 = __s;
        }

        else
        {
          v18 = &__s;
        }

        while (1)
        {
          v19 = *(v16 + 55);
          v20 = v19;
          if (v19 < 0)
          {
            v19 = v16[5];
          }

          if (v19 == v5)
          {
            v21 = v20 >= 0 ? v16 + 4 : v16[4];
            if (!memcmp(v21, v18, v5))
            {
              break;
            }
          }

          v22 = v16[1];
          if (v22)
          {
            do
            {
              v23 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v23 = v16[2];
              v11 = *v23 == v16;
              v16 = v23;
            }

            while (!v11);
          }

          v16 = v23;
          if (v23 == v69)
          {
            goto LABEL_48;
          }
        }

        if ((v67 != 3) != (v69 == v16))
        {
LABEL_49:
          v24 = sub_5544(7);
          v25 = *v24;
          if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_INFO))
          {
            v26 = &__s;
            if (SBYTE7(v52) < 0)
            {
              v26 = __s;
            }

            v27 = *(v4 + 7);
            *buf = 136315906;
            *&buf[4] = "DeviceListener_Aspen.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 193;
            v79 = 2080;
            v80 = v26;
            v81 = 1024;
            v82 = v27;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%25s:%-5d Newly connected device located. UID: %s, AudioObjectID: %u", buf, 0x22u);
          }

          v28 = *(&v54 + 1);
          v29 = 16 * (v55 - *(&v54 + 1)) - 1;
          if (v55 == *(&v54 + 1))
          {
            v29 = 0;
          }

          v30 = *(&v56 + 1) + v56;
          if (v29 == *(&v56 + 1) + v56)
          {
            sub_2A19BC(&v54);
            v28 = *(&v54 + 1);
            v30 = *(&v56 + 1) + v56;
          }

          v31 = (*(v28 + ((v30 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v30 & 0x7F));
          *v31 = *(v4 + 7);
          v32 = v31 + 2;
          if (SBYTE7(v52) < 0)
          {
            sub_54A0(v32, __s, *(&__s + 1));
          }

          else
          {
            v33 = __s;
            *(v32 + 2) = v52;
            *v32 = v33;
          }

          ++*(&v56 + 1);
          goto LABEL_64;
        }
      }

      sub_1C4454(&v65, *(v4 + 7));
LABEL_64:
      if (SBYTE7(v52) < 0)
      {
        operator delete(__s);
      }

      v34 = v4[1];
      if (v34)
      {
        do
        {
          v35 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v4[2];
          v11 = *v35 == v4;
          v4 = v35;
        }

        while (!v11);
      }

      v4 = v35;
    }

    while (v35 != v64);
  }

  v36 = *(a1 + 136);
  if (v36)
  {
    v36(&v54, 0, *(a1 + 144));
  }

  v52 = 0u;
  v53 = 0u;
  __s = 0u;
  sub_63250(buf);
  v37 = v61;
  if (v61 != v62)
  {
    do
    {
      v38 = *(&__s + 1);
      v39 = 16 * (v52 - *(&__s + 1)) - 1;
      if (v52 == *(&__s + 1))
      {
        v39 = 0;
      }

      v40 = *(&v53 + 1) + v53;
      if (v39 == *(&v53 + 1) + v53)
      {
        sub_2A19BC(&__s);
        v38 = *(&__s + 1);
        v40 = *(&v53 + 1) + v53;
      }

      v41 = *(v38 + ((v40 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v40 & 0x7F);
      *v41 = *(v37 + 7);
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      *(v41 + 8) = 0;
      ++*(&v53 + 1);
      v42 = sub_5544(7);
      v43 = *v42;
      if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_INFO))
      {
        v44 = *(v37 + 7);
        *v73 = 136315650;
        *&v73[4] = "DeviceListener_Aspen.cpp";
        v74 = 1024;
        v75 = 223;
        v76 = 1024;
        v77 = v44;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_INFO, "%25s:%-5d Newly disconnected device located. AudioObjectID: %u", v73, 0x18u);
      }

      v45 = v37[1];
      if (v45)
      {
        do
        {
          v46 = v45;
          v45 = *v45;
        }

        while (v45);
      }

      else
      {
        do
        {
          v46 = v37[2];
          v11 = *v46 == v37;
          v37 = v46;
        }

        while (!v11);
      }

      v37 = v46;
    }

    while (v46 != v62);
  }

  v47 = *(a1 + 136);
  if (v47)
  {
    v47(&__s, 1, *(a1 + 144));
  }

  v48 = sub_42A43C(a1 + 8);
  if (v49 != &v65)
  {
    sub_4ABC8(v49, v65, v66);
  }

  if (v48)
  {
    sub_42A318(v50 + 8);
  }

  if (v84 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&buf[16]);
  std::ostream::~ostream();
  std::ios::~ios();
  sub_2A1810(&__s);
  sub_2A1810(&v54);
  sub_477A0(v60[1]);
  sub_477A0(v59[1]);
  sub_477A0(v58[1]);
  sub_477A0(v57.n128_u64[1]);
  sub_477A0(v62[0]);
  sub_477A0(v64[0]);
  sub_477A0(v66[0]);
  sub_98A08(v69[0]);
  sub_477A0(v71[0]);
}

void sub_2A0974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char *a53, uint64_t a54, uint64_t a55, void *a56)
{
  sub_98A08(a53);
  sub_477A0(a56);
  _Unwind_Resume(a1);
}

uint64_t sub_2A0CAC(void *a1)
{
  inAddress_8 = 0;
  inAddress = 0x676C6F6272647623;
  PropertyDataSize = AudioObjectGetPropertyDataSize(1u, &inAddress, 0, 0, &inAddress_8 + 1);
  v3 = PropertyDataSize;
  if (PropertyDataSize)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "DeviceListener_Aspen.cpp";
      v20 = 1024;
      v21 = 249;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read the property size for kAudioHardwarePropertyPhysicalDevices", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v3;
  }

  HIDWORD(inAddress_8) += 40;
  __chkstk_darwin(PropertyDataSize);
  v5 = (&inAddress - ((v4 + 15) & 0x1FFFFFFF0));
  result = AudioObjectGetPropertyData(1u, &inAddress, 0, 0, &inAddress_8 + 1, v5);
  v7 = result;
  if (result)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "DeviceListener_Aspen.cpp";
      v20 = 1024;
      v21 = 260;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to read current device list", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    *v15 = &off_6DDDD0;
    v15[2] = v7;
  }

  v8 = HIDWORD(inAddress_8);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (v8 >= 4)
  {
    v9 = v8 >> 2;
    do
    {
      result = sub_75788(a1, *v5++);
      --v9;
    }

    while (v9);
  }

  return result;
}

void sub_2A0F64(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (a1[2])
    {
      v4 = sub_5544(7);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v25 = "DeviceListener_Aspen.cpp";
          v26 = 1024;
          v27 = 299;
          v28 = 2080;
          v29[0] = a2;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }
    }
  }

  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v6 != v8)
  {
    do
    {
      v9 = *(v7 + 7);
      sub_2A1214(__p, v9);
      v10 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v10 = __p[1];
      }

      if (v10)
      {
        v11 = sub_5544(7);
        v12 = *v11;
        if (!*v11 || !os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        v13 = __p;
        if ((v23 & 0x80u) != 0)
        {
          v13 = __p[0];
        }

        *buf = 136315906;
        v25 = "DeviceListener_Aspen.cpp";
        v26 = 1024;
        v27 = 308;
        v28 = 1024;
        LODWORD(v29[0]) = v9;
        WORD2(v29[0]) = 2080;
        *(v29 + 6) = v13;
        v14 = v12;
        v15 = "%25s:%-5d AudioObjectID: %u, UID = %s";
        v16 = 34;
      }

      else
      {
        v17 = sub_5544(7);
        v18 = *v17;
        if (!*v17 || !os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        *buf = 136315650;
        v25 = "DeviceListener_Aspen.cpp";
        v26 = 1024;
        v27 = 312;
        v28 = 1024;
        LODWORD(v29[0]) = v9;
        v14 = v18;
        v15 = "%25s:%-5d AudioObjectID: %u, UID is NULL";
        v16 = 24;
      }

      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, v15, buf, v16);
LABEL_19:
      if (v23 < 0)
      {
        operator delete(__p[0]);
      }

      v19 = v7[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v7[2];
          v21 = *v20 == v7;
          v7 = v20;
        }

        while (!v21);
      }

      v7 = v20;
    }

    while (v6 != v20);
  }
}

void sub_2A11EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A1214(uint64_t a1, AudioObjectID inObjectID)
{
  outData = 0;
  inAddress.mElement = 0;
  ioDataSize = 8;
  *&inAddress.mSelector = 0x676C6F6275696420;
  PropertyData = AudioObjectGetPropertyData(inObjectID, &inAddress, 0, 0, &ioDataSize, &outData);
  if (PropertyData || (ioDataSize == 8 ? (v5 = outData == 0) : (v5 = 1), v5))
  {
    v6 = sub_5544(7);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      *&buf[4] = "DeviceListener_Aspen.cpp";
      v23 = 1024;
      *cf = 281;
      *&cf[4] = 1024;
      *&cf[6] = inObjectID;
      v25 = 1024;
      *v26 = PropertyData;
      *&v26[4] = 1024;
      *&v26[6] = ioDataSize;
      v27 = 2048;
      v28 = outData;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d failed to read device UID for device %u; device may have already been removed (status = %d, propSize = %u, uid = %p)", buf, 0x2Eu);
    }

    if (outData)
    {
      CFRelease(outData);
      outData = 0;
    }
  }

  v8 = sub_5544(7);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        *&v17.mSelector = 0x676C6F626C6E616DLL;
        v17.mElement = 0;
        if (AudioObjectHasProperty(inObjectID, &v17))
        {
          v21 = inObjectID;
          v15 = 0x676C6F626C6E616DLL;
          LODWORD(v16) = 0;
          sub_12794C(buf, &v21, &v15, 0, 0);
          if (*buf || (v25 & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v14 = *buf;
            *exception = &off_6DDDD0;
            exception[2] = v14;
          }

          sub_224064(&v15, *&cf[2]);
          v15 = &off_6DACD8;
          if (v25 == 1)
          {
            sub_8AAAC(&buf[8]);
          }

          *buf = 136315906;
          *&buf[4] = "DeviceListener_Aspen.cpp";
          v23 = 1024;
          *cf = 289;
          *&cf[4] = 1024;
          *&cf[6] = inObjectID;
          v25 = 2112;
          *v26 = v16;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %u is kAudioObjectPropertyName %@.", buf, 0x22u);
          sub_8AAAC(&v15);
        }

        else
        {
          *buf = 136315906;
          *&buf[4] = "DeviceListener_Aspen.cpp";
          v23 = 1024;
          *cf = 289;
          *&cf[4] = 1024;
          *&cf[6] = inObjectID;
          v25 = 2112;
          *v26 = @"<unknown>";
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d AudioObjectID %u is kAudioObjectPropertyName %@.", buf, 0x22u);
        }
      }
    }
  }

  v10 = outData;
  if (outData)
  {
    *buf = outData;
    v11 = CFGetTypeID(outData);
    if (v11 != CFStringGetTypeID())
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
    }

    sub_F76D4(a1, v10);
    if (*buf)
    {
      CFRelease(*buf);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_2A15E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A1658(uint64_t a1)
{
  v2 = sub_5544(7);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "DeviceListener_Aspen.cpp";
    v6 = 1024;
    v7 = 159;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", &v4, 0x12u);
  }

  sub_2A0F64((a1 + 72), "Cached Devices");
  sub_2A0F64((a1 + 48), "Fetched Devices");
}

uint64_t **sub_2A1738(unsigned int **a1, unsigned int *a2, unsigned int **a3, unsigned int *a4, uint64_t **a5)
{
  v7 = a2;
  if (a1 == a3)
  {
    while (v7 != a4)
    {
      v8 = *v7++;
      sub_1C4454(a5, v8);
    }
  }

  else
  {
    v11 = (*a1 + 1024);
    if (v11 != a2)
    {
      do
      {
        v12 = *v7++;
        sub_1C4454(a5, v12);
      }

      while (v7 != v11);
    }

    for (i = a1 + 1; i != a3; ++i)
    {
      v14 = 0;
      v15 = *i;
      do
      {
        sub_1C4454(a5, v15[v14++]);
      }

      while (v14 != 1024);
    }

    for (j = *i; j != a4; ++j)
    {
      v17 = *j;
      sub_1C4454(a5, v17);
    }
  }

  return a5;
}

uint64_t sub_2A1810(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 >> 7];
    v7 = *v6;
    v8 = *v6 + 32 * (v5 & 0x7F);
    v9 = *(v3 + (((*(a1 + 40) + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v5) & 0x7F);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 32;
        if (v8 - v7 == 4096)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 128;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_2A1978(void **a1)
{
  sub_477A0(a1[10]);
  sub_477A0(a1[7]);
  sub_477A0(a1[4]);
  sub_477A0(a1[1]);
  return a1;
}

void *sub_2A19BC(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    sub_1DC9A4(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return sub_1DC8A0(a1, &v10);
}

void sub_2A1E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_2A1E70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 8;
  v8 = *(a1 + 8);
  v25[1] = a1 + 8;
  v10 = (*(v8 + 16))(a1 + 8);
  v11 = *(a1 + 136);
  v26 = v10;
  if ((a2 == 0) != (v11 != 0))
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceListener_Aspen.cpp";
      *&block[12] = 1024;
      *&block[14] = 63;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): DeviceListener_Aspen::SetDeviceListener requires that either proc be valid (non-NULL) if no listener is registered, or NULL, if a listener is already registered.", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "DeviceListener_Aspen::SetDeviceListener requires that either proc be valid (non-NULL) if no listener is registered, or NULL, if a listener is already registered.");
LABEL_27:
  }

  v12 = v10;
  if (!a2 && a3)
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      *block = 136315394;
      *&block[4] = "DeviceListener_Aspen.cpp";
      *&block[12] = 1024;
      *&block[14] = 64;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): DeviceListener_Aspen::SetDeviceListener requires that clientData be NULL if proc is NULL", block, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "DeviceListener_Aspen::SetDeviceListener requires that clientData be NULL if proc is NULL");
    goto LABEL_27;
  }

  *(a1 + 152) = *a4;
  *(a1 + 136) = a2;
  *(a1 + 144) = a3;
  if (a1 + 152 != a4)
  {
    sub_26D7C0((a1 + 160), *(a4 + 8), (a4 + 16));
    a2 = *(a1 + 136);
  }

  if (a2)
  {
    v25[0] = a1;
    v13 = sub_68E60();
    if (dispatch_get_specific("VirtualAudioQueueKey") == "VirtualAudioQueueKey")
    {
      sub_2A00C4(a1);
    }

    else
    {
      *&v27[0].mSelector = v25;
      *block = _NSConcreteStackBlock;
      *&block[8] = 0x40000000;
      *&block[16] = sub_2A2588;
      v29 = &unk_6BEC98;
      v30 = v27;
      dispatch_sync(v13, block);
    }

    *&v27[0].mSelector = 0x676C6F6272647623;
    v27[0].mElement = 0;
    sub_4E890();
    v16 = sub_73838(1u, v27, sub_2A28A8, a1);
    if (v16)
    {
      v17 = sub_5544(14);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
      {
        *block = 136315394;
        *&block[4] = "DeviceListener_Aspen.cpp";
        *&block[12] = 1024;
        *&block[14] = 92;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: failed to add device listener", block, 0x12u);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = v16;
    }
  }

  else
  {
    strcpy(block, "#vdrbolg");
    block[9] = 0;
    *&block[10] = 0;
    sub_4E890();
    sub_74D2C(1, block, sub_2A28A8, a1);
    v15 = *(a1 + 120);
    v14 = (a1 + 120);
    sub_477A0(v15);
    *v14 = 0;
    v14[1] = 0;
    *(v14 - 1) = v14;
  }

  if (v12)
  {
    (*(*v9 + 24))(v9);
  }
}

void sub_2A229C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *v2 = 0;
    v2[1] = 0;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_2A2504(uint64_t a1, ...)
{
  va_start(va, a1);
  __cxa_end_catch();
  sub_224F4C(va);
  JUMPOUT(0x2A2580);
}

void sub_2A252C(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2A2580);
}

void sub_2A253C(uint64_t a1, ...)
{
  va_start(va, a1);
  __cxa_free_exception(v1);
  sub_224F4C(va);
  JUMPOUT(0x2A2580);
}

void sub_2A25F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  __cxa_rethrow();
}

void sub_2A288C(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x2A25FCLL);
}

void sub_2A28A8(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  if (a2)
  {
    if (a3)
    {
      if (a4)
      {
        for (i = 0; i != a2; ++i)
        {
          v5 = *a3;
          a3 += 3;
          if (v5 == 1919186467)
          {
            sub_68E60();
            operator new();
          }
        }

        v6 = sub_5544(14);
        v7 = *v6;
        if (*v6)
        {
          if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "DeviceListener_Aspen.cpp";
            v19 = 1024;
            v20 = 131;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses", buf, 0x12u);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        v9 = &std::runtime_error::~runtime_error;
        std::runtime_error::runtime_error(exception, "Unable to locate kAudioHardwarePropertyPhysicalDevices in inAddresses");
LABEL_11:
        __cxa_throw(exception, v10, v9);
      }

      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "DeviceListener_Aspen.cpp";
        v19 = 1024;
        v20 = 117;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    else
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "DeviceListener_Aspen.cpp";
        v19 = 1024;
        v20 = 116;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }
  }

  else
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "DeviceListener_Aspen.cpp";
      v19 = 1024;
      v20 = 115;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  v9 = &std::logic_error::~logic_error;
  std::logic_error::logic_error(exception, "Precondition failure.");
  goto LABEL_11;
}

void sub_2A31DC(unint64_t a1)
{
  sub_2A3214(a1);

  operator delete();
}

unint64_t sub_2A3214(unint64_t a1)
{
  *a1 = off_6BEC60;
  v2 = a1 + 8;
  v3 = (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(a1 + 136) || *(a1 + 144))
  {
    v4 = sub_5544(7);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v7.mSelector = 136315394;
        *&v7.mScope = "DeviceListener_Aspen.cpp";
        v8 = 1024;
        v9 = 48;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destructor of DeviceListener_Aspen called while the DeviceListenerProc / client data was still valid...", &v7, 0x12u);
      }
    }
  }

  *&v7.mSelector = 0x676C6F6272647623;
  v7.mElement = 0;
  sub_4E890();
  sub_74D2C(1, &v7, sub_2A28A8, a1);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  sub_98A08(*(a1 + 168));
  sub_477A0(*(a1 + 120));
  sub_42A4D8(v2);
  return a1;
}

void sub_2A33B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2A33C8(_BYTE *a1)
{
  v4 = +[NSFileManager defaultManager];
  v2 = [v4 temporaryDirectory];
  v3 = [v2 path];
  sub_53E8(a1, [v3 UTF8String]);
}

uint64_t sub_2A3480(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886216809)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 113;
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
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 114;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2A3654(uint64_t a1)
{
  sub_4ADCC0(a1);
  if (((*(a1 + 280) - *(a1 + 272)) & 0xFFFFFFFF0) != 0)
  {
    sub_24FEE8(v18, qword_6E8C88);
    v2 = sub_5544(18);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = v13;
      sub_2500F8(v13, v18);
      if (v14 < 0)
      {
        v4 = v13[0];
      }

      if (*(a1 + 471) < 0)
      {
        sub_54A0(__p, *(a1 + 448), *(a1 + 456));
      }

      else
      {
        *__p = *(a1 + 448);
        v12 = *(a1 + 464);
      }

      v5 = __p;
      if (v12 < 0)
      {
        v5 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "Device_Puffin.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 91;
      *&buf[18] = 2080;
      *&buf[20] = v4;
      v16 = 2080;
      v17 = v5;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a Puffin output port with name %s and UID %s", buf, 0x26u);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v14) < 0)
      {
        operator delete(v13[0]);
      }
    }

    memset(buf, 0, 24);
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v6 = *(a1 + 88);
    v10 = *(a1 + 80);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    if (*(a1 + 471) < 0)
    {
      sub_54A0(__p, *(a1 + 448), *(a1 + 456));
    }

    else
    {
      *__p = *(a1 + 448);
      v12 = *(a1 + 464);
    }

    sub_20EAA4();
  }

  v7 = sub_5544(14);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    *v18 = 136315394;
    *&v18[4] = "Device_Puffin.cpp";
    v19 = 1024;
    v20 = 85;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Puffin audio device has no input streams", v18, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Puffin audio device has no input streams");
}

void sub_2A3978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v26 - 112);
  _Unwind_Resume(a1);
}

void sub_2A3A10(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_2A3A4C(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886613611)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 261;
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
      v13 = "Device_Puffin.cpp";
      v14 = 1024;
      v15 = 262;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_2A3C20(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if (((*(a1 + 38) - *(a1 + 37)) & 0xFFFFFFFF0) != 0)
  {
    v2 = *(a1 + 11);
    *buf = *(a1 + 10);
    v7 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v3 = sub_5544(14);
  v4 = *v3;
  if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "Device_Puffin.cpp";
    v10 = 1024;
    v11 = 225;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Puffin audio device has no output streams", &v8, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Puffin audio device has no output streams");
}

void sub_2A4034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v26 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_2A4108(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  sub_318678(a1, &v4);
  if (*(&v4 + 1))
  {
    sub_1A8C0(*(&v4 + 1));
  }

  return v3;
}

void sub_2A4154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2A416C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2A41E0(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (a2->mSelector == 1064725619)
  {
    if (a2->mScope != 1869968496)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_4DFC0(a1);
    if (!AudioObjectHasProperty(*(a1 + 268), a2))
    {
LABEL_3:
      v12 = sub_5544(14);
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v21 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(__p);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v22 = *&a2->mSelector;
      v26 = a2->mElement;
      sub_22CE0(__p);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    *v16 = &off_6DDDD0;
    v16[2] = 561211770;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v23 = *&a2->mSelector;
      v27 = a2->mElement;
      sub_22CE0(__p);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561211770;
  }

  if (a2->mSelector == 1064725619)
  {
    v14 = *a5;
    if (v14 != sub_2A47DC(a1, a2, a3, a4))
    {
      v19 = sub_5544(14);
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        v24 = *&a2->mSelector;
        v28 = a2->mElement;
        sub_22CE0(__p);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      *v20 = &off_6DDDD0;
      v20[2] = 561211770;
    }

    *a6 = 1;
  }

  else
  {

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
  }
}

void sub_2A47B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2A47DC(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (a2->mSelector == 1064725619)
  {
    if (a2->mScope != 1869968496)
    {
LABEL_3:
      v8 = sub_5544(14);
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v13 = *&a2->mSelector;
          mElement = a2->mElement;
          sub_22CE0(__p);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      v10 = 2003332927;
      goto LABEL_18;
    }
  }

  else
  {
    sub_4DFC0(a1);
    if (!AudioObjectHasProperty(*(a1 + 268), a2))
    {
      goto LABEL_3;
    }
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *&a2->mSelector;
      v16 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v10 = 561211770;
LABEL_18:
    exception[2] = v10;
  }

  if (a2->mSelector == 1064725619)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_2A4B24(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1064725619)
  {
    return a2->mScope == 1869968496;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_2A4B8C(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_2A4BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  result = (*(*a1 + 16))(a1);
  if ((result & 1) == 0)
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v18 = *a2;
      v21 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 2003332927;
LABEL_20:
    exception[2] = v15;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19 = *a2;
      v22 = *(a2 + 8);
      sub_22CE0(__p);
    }

    goto LABEL_19;
  }

  if (!a6)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v20 = *a2;
      v23 = *(a2 + 8);
      sub_22CE0(__p);
    }

LABEL_19:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v15 = 561211770;
    goto LABEL_20;
  }

  if (*a2 == 1886810226)
  {
    *a6 = 1;
  }

  else
  {

    return sub_24DFD8(a1, a2, a3, a4, v12, a6);
  }

  return result;
}

uint64_t sub_2A4FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *a2;
      v15 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_15:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v16 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_15;
  }

  if (*a2 == 1886810226)
  {
    return 4;
  }

  sub_24E33C(a1, a2, a3, a4);
  return 0;
}

void sub_2A528C(void *a1)
{
  sub_24FAA4(a1);

  operator delete();
}

void sub_2A52F0(uint64_t a1@<X0>, UInt8 *a2@<X8>)
{
  v3 = *(a1 + 200);
  v6[0] = *(a1 + 192);
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v7, v6, "", 269);
  v4 = *(v7 + 536);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_125D8(a2, v4);
  if (v8)
  {
    sub_1A8C0(v8);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2A53D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  __cxa_free_exception(v13);
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2A5414(uint64_t a1)
{
  v1 = *(a1 + 200);
  v4[0] = *(a1 + 192);
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v5, v4, "", 264);
  v2 = *(v5 + 544);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  return v2;
}

void sub_2A5488(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2A54A0(uint64_t a1)
{
  v1 = *(a1 + 200);
  v4[0] = *(a1 + 192);
  v4[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v5, v4, "", 259);
  v2 = sub_3515A8(*(v5 + 536));
  if (v6)
  {
    sub_1A8C0(v6);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  return v2;
}

void sub_2A5520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_2A5578(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_2A55B4(uint64_t a1, int a2, int a3)
{
  if (((a2 - 1886614625) > 0xE || ((1 << (a2 - 97)) & 0x4101) == 0) && a2 != 1885565044 && a2 != 1886609775)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 31;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 != 1885544823 && a3 != 1885566825)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 32;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v12 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v12, "Precondition failure.");
  }

  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (a2 > 1886614632)
  {
    if (a2 != 1886614633 && a2 != 1886614639)
    {
      goto LABEL_21;
    }
  }

  else if (a2 != 1885565044)
  {
    if (a2 == 1886614625)
    {
      sub_75788(buf, 0x76737972u);
      *a1 = 1886614625;
      *(a1 + 4) = a3;
      *(a1 + 8) = 1701869160;
      *(a1 + 12) = 1;
      sub_44E44((a1 + 16), buf);
LABEL_22:
      v9 = *(a1 + 40) & 0xF800;
      v7 = 660;
      goto LABEL_23;
    }

LABEL_21:
    sub_75788(buf, 0x76737269u);
    *a1 = a2;
    *(a1 + 4) = a3;
    *(a1 + 8) = 1701869160;
    *(a1 + 12) = 1;
    sub_44E44((a1 + 16), buf);
    goto LABEL_22;
  }

  sub_75788(buf, 0x76646566u);
  if (a2 == 1886614633)
  {
    sub_75788(buf, 0x76737064u);
    sub_75788(buf, 0x766F6464u);
  }

  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 1701869160;
  *(a1 + 12) = 1;
  sub_44E44((a1 + 16), buf);
  v6 = a2 == 1886614633;
  if (a2 == 1885565044)
  {
    v6 = 1;
  }

  v7 = *(a1 + 40) & 0xF800;
  if (a2 == 1885565044)
  {
    v8 = 710;
  }

  else
  {
    v8 = 726;
  }

  v9 = v8 | v6;
LABEL_23:
  *(a1 + 40) = v9 | v7;
  sub_477A0(*&buf[8]);
}

void *sub_2A59F0(void *a1, void *a2, uint64_t a3, __int128 *a4, int a5, int a6)
{
  sub_2A55B4(buf, a5, a6);
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  sub_53E8(__p, "CarPlayPartnershipUID");
  sub_25160C(a1, buf, a2, v25, a3, a4, v24, __p, 0, 1);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v24;
  sub_72C14(__p);
  sub_477A0(*&v30[4]);
  *a1 = &off_6BF0A8;
  if (a5 != 1885565044 && a5 != 1886614633 && a5 != 1886614639)
  {
    v19 = sub_5544(14);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Port_CarPlay_Aspen.cpp";
      v27 = 1024;
      v28 = 132;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v11 = sub_5544(24);
  v12 = sub_5544(28);
  v13 = 0;
  *buf = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&buf[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_12;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_12:
  v16 = *v11;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = "Input";
    *&buf[4] = "Port_CarPlay_Aspen.cpp";
    *buf = 136315650;
    if (a5 == 1886614639)
    {
      v17 = "Output";
    }

    v27 = 1024;
    v28 = 133;
    v29 = 2080;
    *v30 = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating CarPlay Main Audio %s port", buf, 0x1Cu);
  }

  return a1;
}

void sub_2A5D40(uint64_t a1)
{
  sub_24EBDC(a1);

  operator delete();
}

void sub_2A5D7C(int a1, _BYTE *a2)
{
  *a2 = 1;
  if (a1 <= 195)
  {
    switch(a1)
    {
      case 9:

        sub_4E572C();
      case 10:
        goto LABEL_53;
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 44:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 76:
      case 79:
      case 82:
      case 89:
        goto LABEL_71;
      case 17:
      case 18:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10();
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
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
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 257;
        *v41 = 0x10101010101;
        *&v41[10] = 16843009;
        *&v36[2] = 4;
        __src[0] = 0x300000002;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        LODWORD(__src[0]) = 4;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        HIWORD(v43) = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      case 19:
      case 20:
      case 40:
      case 41:
      case 45:
        goto LABEL_3;
      case 26:

        sub_28BE5C();
        return;
      case 27:

        sub_3FF66C();
        return;
      case 28:

        sub_3FF748();
        return;
      case 29:
      case 30:
      case 42:
      case 43:
        goto LABEL_9;
      case 31:

        sub_3188AC();
      case 32:

        sub_2A9DD0();
        return;
      case 33:

        sub_2AA418();
        return;
      case 34:

        sub_2AA4F4();
        return;
      case 35:

        sub_2AA5D0();
        return;
      case 36:

        sub_2DEC34();
      case 37:

        sub_2DECB0();
      case 38:
      case 39:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10();
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
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
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 257;
        *v41 = 0x10101010101;
        *&v41[10] = 16843009;
        *&v36[2] = 4;
        __src[0] = 0x300000002;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        LODWORD(__src[0]) = 4;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        HIWORD(v43) = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      case 46:

        sub_2ACCD4();
        return;
      case 73:

        sub_452894();
        return;
      case 74:

        sub_4016D4();
      case 75:

        sub_406EF0();
      case 77:

        sub_36CDB8();
        return;
      case 78:

        sub_36D83C();
        return;
      case 80:
      case 81:
        sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *v41 = 0;
        v6 = sub_106F10();
        v41[4] = (v6 > 0xFFu) & v6;
        v41[5] = 1;
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
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
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        LOBYTE(v34) = 1;
        *buf = 1953460273;
        LOBYTE(v35) = 1;
        HIDWORD(v34) = 1;
        *&v36[2] = 2;
        LODWORD(__src[0]) = 1;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        __src[0] = 0x200000001;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        *v41 = 0x101010101000101;
        *&v41[12] = 257;
        v43 = 16843009;
        v93 = -1047527424;
        v94 = 1;
        v102 = 1103101952;
        v103 = 1;
        v108 = 0;
        v109 = 1;
        v110 = 0;
        v111 = 1;
        v106 = 0;
        v107 = 1;
        v122 = 0;
        v123 = 1;
        v112 = -1040187392;
        v113 = 1;
        v95 = 0;
        v96 = 1;
        v124 = 16843009;
        if ((v136 & 1) == 0)
        {
          v136 = 1;
        }

        v135 = 2;
        if ((v138 & 1) == 0)
        {
          v138 = 1;
        }

        v137 = 2;
        if ((v140 & 1) == 0)
        {
          v140 = 1;
        }

        v139 = 0;
        operator new();
      case 83:

        sub_3E2E58();
        return;
      case 84:

        sub_325AD0();
        return;
      case 85:

        sub_30DB50();
      case 86:

        sub_379334();
      case 87:

        sub_24AEF0();
        return;
      case 88:

        sub_2AA6AC();
        return;
      case 90:
      case 91:
        goto LABEL_22;
      case 92:

        sub_4C6440();
      case 93:

        sub_30D2BC();
      case 94:

        sub_29F04C();
      case 95:

        sub_29FC0C();
      case 96:

        sub_4F010C();
        return;
      case 97:

        sub_1F7A88();
        return;
      case 98:
      case 99:
        goto LABEL_12;
      case 100:

        sub_2E6C70();
        return;
      case 101:

        sub_44CCE0();
        return;
      case 102:
      case 103:
        goto LABEL_63;
      case 104:
      case 105:
        sub_3BE980(buf);
      case 106:
      case 107:
        goto LABEL_20;
      default:
        if (a1 == 180)
        {
LABEL_53:
          sub_4E57A8(buf);
        }

        if (a1 != 195)
        {
          goto LABEL_71;
        }

        sub_44DFEC();
        break;
    }

    return;
  }

  if (a1 > 2029)
  {
    if (a1 <= 8020)
    {
      if ((a1 - 2030) < 2)
      {
LABEL_22:
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        *v41 = 0;
        v4 = sub_106F10();
        v41[4] = (v4 > 0xFFu) & v4;
        v41[5] = 1;
        *&v41[6] = 0;
        v42 = 0;
        v43 = 16777473;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 256;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
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
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        LOBYTE(v34) = 1;
        *buf = 1953460273;
        LOBYTE(v35) = 1;
        HIDWORD(v34) = 1;
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        LODWORD(__src[0]) = 1;
        sub_1F8148(&v38, __src, __src + 4, 1uLL);
        __src[0] = 0x200000001;
        sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
        *v41 = 16777473;
        *&v41[6] = 257;
        v43 = 16843009;
        v93 = -1047527424;
        v94 = 1;
        v102 = 1103101952;
        v103 = 1;
        v108 = 0;
        v109 = 1;
        v110 = 0;
        v111 = 1;
        v106 = 0;
        v107 = 1;
        v122 = 0;
        v123 = 1;
        v112 = -1040187392;
        v113 = 1;
        v95 = 0;
        v96 = 1;
        v124 = 16843009;
        if ((v138 & 1) == 0)
        {
          v138 = 1;
        }

        v137 = 2;
        sub_53E8(&v31, "graph_configurations.plist");
        sub_30F0DC(&__p, &v31);
        sub_4DF190(__src, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        sub_1E1128(v125, &v30);
        sub_1E1238(v127, __src);
        sub_53E8(&__p, "multicam_recording");
        if (sub_390E58(v127, &__p))
        {
          v5 = 257;
        }

        else
        {
          v5 = 256;
        }

        *&v41[12] = v5;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        sub_441310();
      }

      if (a1 == 8010)
      {
LABEL_3:
        buf[0] = 0;
        LOBYTE(v34) = 0;
        BYTE4(v34) = 0;
        LOBYTE(v35) = 0;
        *&v36[2] = sub_310AF4();
        LOBYTE(v37) = 1;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        sub_106F10();
        v42 = 0;
        v43 = 16843009;
        v46 = 0;
        v45 = 0;
        v44 = &v45;
        v47 = 0;
        v48 = 0;
        v49 = -1044381696;
        v50 = 1;
        v51 = -1044381696;
        v52 = 1;
        v53 = 0;
        v54 = 1;
        v55 = -1056964608;
        v56 = 1;
        v57 = -1033371648;
        v58 = 1;
        v59 = 0;
        v60 = 1;
        v61 = -1033371648;
        v62 = 1;
        v63 = 0;
        v64 = 1;
        v65 = -1044381696;
        v66 = 1;
        v67 = 0;
        v68 = 1;
        v69 = -1033371648;
        v70 = 1;
        v71 = 0;
        v72 = 1;
        v73 = -1033371648;
        v74 = 1;
        v75 = -1055916032;
        v76 = 1;
        v77 = -1033371648;
        v78 = 1;
        v79 = 0;
        v80 = 1;
        v81 = -1055916032;
        v82 = 1;
        v83 = -1033371648;
        v84 = 1;
        v85 = -1055916032;
        v86 = 1;
        v87 = -1033371648;
        v88 = 1;
        v89 = 0;
        v90 = 1;
        v91 = -1055916032;
        v92 = 1;
        v93 = -1043333120;
        v94 = 1;
        v95 = 0x40000000;
        v96 = 1;
        v97 = 16777472;
        v98 = 0;
        v99 = 1;
        v100 = 0;
        v101 = 1;
        v102 = 1103626240;
        v103 = 1;
        v104 = 0;
        v105 = 1;
        v106 = 1094713344;
        v107 = 1;
        v108 = 1094713344;
        v109 = 1;
        v110 = 1094713344;
        v111 = 1;
        v112 = -1061158912;
        v113 = 1;
        v114 = 1107296256;
        v115 = 1;
        v116 = 1107296256;
        v117 = 1;
        v118 = 1092616192;
        v119 = 1;
        v120 = 0;
        v121 = 1;
        v122 = 0;
        v123 = 1;
        v124 = 16777472;
        v125[0].__r_.__value_.__s.__data_[0] = 0;
        v126 = 0;
        LOBYTE(v127[0]) = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v131 = 0;
        v132 = 0;
        v133 = 0;
        v134 = 0;
        LOBYTE(v135) = 0;
        v136 = 0;
        LOBYTE(v137) = 0;
        v138 = 0;
        LOBYTE(v139) = 0;
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
        v165 = 1;
        v166 = 0;
        v167 = 0;
        v168 = 0;
        v169 = 0;
        v170 = 0;
        v171 = 0;
        v172 = 0;
        v173 = 0;
        v174 = 0;
        v175 = 0;
        v176 = 0;
        v177 = 0;
        v178 = 0;
        v179 = 0;
        v180 = 0;
        v181 = 0;
        v182 = 0;
        v183 = 0;
        v184 = 0;
        v185 = 0;
        v186 = 0;
        v187 = 0;
        v188 = 0;
        v189 = 0;
        v190 = 0;
        v191 = 0;
        v192 = 0;
        v193 = 0;
        v194 = 0;
        v195 = 0;
        v196 = 0;
        LOBYTE(v197) = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = 0;
        v202 = 0;
        v203 = 0;
        v204 = 0;
        v205 = 0;
        v206 = 0;
        v207 = 256;
        v208 = 0;
        v209 = 0;
        LOBYTE(v210) = 0;
        v211 = 0;
        LOBYTE(v212) = 0;
        v213 = 0;
        v214 = 0;
        *&v41[8] = 16843009;
        *v41 = 0x10001010101;
        *&v41[12] = 257;
        *__src = xmmword_517160;
        sub_1DFEA0(&v44, __src, &v29);
        v118 = 1077936128;
        v119 = 1;
        HIWORD(v97) = 257;
        if ((v198 & 1) == 0)
        {
          v198 = 1;
        }

        v197 = 2;
        operator new();
      }
    }

    else
    {
      if ((a1 - 8021) < 3)
      {
LABEL_9:
        sub_1E0658(buf);
      }

      if (a1 == 8024)
      {

        sub_1E2E6C();
      }
    }

    goto LABEL_71;
  }

  if (a1 > 2026)
  {
    if ((a1 - 2028) < 2)
    {
LABEL_20:
      sub_3BE980(buf);
    }

    if (a1 == 2027)
    {
LABEL_63:
      BYTE4(v34) = 0;
      LOBYTE(v35) = 0;
      *&v36[2] = sub_310AF4();
      LOBYTE(v37) = 1;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      sub_106F10();
      *&v41[6] = 0;
      v42 = 0;
      v43 = 16777473;
      v46 = 0;
      v45 = 0;
      v44 = &v45;
      v47 = 0;
      v48 = 0;
      v49 = -1044381696;
      v50 = 1;
      v51 = -1044381696;
      v52 = 1;
      v53 = 0;
      v54 = 1;
      v55 = -1056964608;
      v56 = 1;
      v57 = -1033371648;
      v58 = 1;
      v59 = 0;
      v60 = 1;
      v61 = -1033371648;
      v62 = 1;
      v63 = 0;
      v64 = 1;
      v65 = -1044381696;
      v66 = 1;
      v67 = 0;
      v68 = 1;
      v69 = -1033371648;
      v70 = 1;
      v71 = 0;
      v72 = 1;
      v73 = -1033371648;
      v74 = 1;
      v75 = -1055916032;
      v76 = 1;
      v77 = -1033371648;
      v78 = 1;
      v79 = 0;
      v80 = 1;
      v81 = -1055916032;
      v82 = 1;
      v83 = -1033371648;
      v84 = 1;
      v85 = -1055916032;
      v86 = 1;
      v87 = -1033371648;
      v88 = 1;
      v89 = 0;
      v90 = 1;
      v91 = -1055916032;
      v92 = 1;
      v93 = -1043333120;
      v94 = 1;
      v95 = 0x40000000;
      v96 = 1;
      v97 = 16777472;
      v98 = 0;
      v99 = 1;
      v100 = 0;
      v101 = 1;
      v102 = 1103626240;
      v103 = 1;
      v104 = 0;
      v105 = 1;
      v106 = 1094713344;
      v107 = 1;
      v108 = 1094713344;
      v109 = 1;
      v110 = 1094713344;
      v111 = 1;
      v112 = -1061158912;
      v113 = 1;
      v114 = 1107296256;
      v115 = 1;
      v116 = 1107296256;
      v117 = 1;
      v118 = 1092616192;
      v119 = 1;
      v120 = 0;
      v121 = 1;
      v122 = 0;
      v123 = 1;
      v124 = 16777472;
      v125[0].__r_.__value_.__s.__data_[0] = 0;
      v126 = 0;
      LOBYTE(v127[0]) = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v131 = 0;
      v132 = 0;
      v133 = 0;
      v134 = 0;
      LOBYTE(v135) = 0;
      v136 = 0;
      LOBYTE(v137) = 0;
      v138 = 0;
      LOBYTE(v139) = 0;
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
      v165 = 1;
      v166 = 0;
      v167 = 0;
      v168 = 0;
      v169 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
      v174 = 0;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v178 = 0;
      v179 = 0;
      v180 = 0;
      v181 = 0;
      v182 = 0;
      v183 = 0;
      v184 = 0;
      v185 = 0;
      v186 = 0;
      v187 = 0;
      v188 = 0;
      v189 = 0;
      v190 = 0;
      v191 = 0;
      v192 = 0;
      v193 = 0;
      v194 = 0;
      v195 = 0;
      v196 = 0;
      LOBYTE(v197) = 0;
      v198 = 0;
      v199 = 0;
      v200 = 0;
      v201 = 0;
      v202 = 0;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 256;
      v208 = 0;
      v209 = 0;
      LOBYTE(v210) = 0;
      v211 = 0;
      LOBYTE(v212) = 0;
      v213 = 0;
      v214 = 0;
      LOBYTE(v34) = 1;
      *buf = 1953460273;
      *v41 = 16777473;
      *&v41[4] = 257;
      *&v41[10] = 16843009;
      __src[0] = 0x100000002;
      sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
      LODWORD(__src[0]) = 1;
      sub_1F8148(&v38, __src, __src + 4, 1uLL);
      HIWORD(v43) = 257;
      if ((v138 & 1) == 0)
      {
        v138 = 1;
      }

      v137 = 4;
      *&v41[6] = 257;
      *__src = xmmword_517160;
      sub_1DFEA0(&v44, __src, &v29);
      v122 = 1090519040;
      v123 = 1;
      v118 = 1077936128;
      v119 = 1;
      HIWORD(v97) = 257;
      v93 = -1047527424;
      v94 = 1;
      v102 = 1103101952;
      v103 = 1;
      v108 = 0;
      v109 = 1;
      v110 = 0;
      v111 = 1;
      v106 = 0;
      v107 = 1;
      v112 = -1040187392;
      v113 = 1;
      v95 = 0;
      v96 = 1;
      v124 = 16843009;
      sub_53E8(&__p, "graph_configurations.plist");
      sub_30F0DC(__src, &__p);
      sub_4DF190(&v31, __src);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_1E1128(v125, &v32);
      sub_1E1238(v127, &v31);
      HIBYTE(v47) = 1;
      sub_53E8(&__p, "speaker_hal");
      v13 = 0;
      v14 = 0;
      v15 = 0;
      sub_53E8(v16, "speaker_hal");
      sub_53E8(v17, "speaker_hal");
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 1684434036;
      LODWORD(v25) = 1936749683;
      cf = 0;
      v23 = 0;
      v24 = 0;
      v22 = 0;
      sub_1E13D0(&v22, &v25, v27, 1uLL);
    }

LABEL_71:
    v7 = sub_5544(21);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v34 = "RoutingSettingsFactory_Aspen.cpp";
      v35 = 1024;
      *v36 = 249;
      *&v36[4] = 1024;
      v37 = a1;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown product ID (%d): unable to return a valid iOS RoutingDatabase", buf, 0x18u);
    }

    v9 = sub_5544(21);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = sub_DD858();
      *buf = 136315650;
      v34 = "RoutingSettingsFactory_Aspen.cpp";
      v35 = 1024;
      *v36 = 464;
      *&v36[4] = 1024;
      v37 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Unknown product ID (%d): unable to return a valid RoutingDatabase", buf, 0x18u);
    }

    *a2 = 0;
    sub_377ADC();
  }

  if ((a1 - 2025) < 2)
  {
LABEL_12:
    BYTE4(v34) = 0;
    LOBYTE(v35) = 0;
    *&v36[2] = sub_310AF4();
    LOBYTE(v37) = 1;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    sub_106F10();
    *&v41[6] = 0x101010100000000;
    v42 = 0;
    v43 = 16777473;
    v46 = 0;
    v45 = 0;
    v44 = &v45;
    v47 = 0;
    v48 = 0;
    v49 = -1044381696;
    v50 = 1;
    v51 = -1044381696;
    v52 = 1;
    v53 = 0;
    v54 = 1;
    v55 = -1056964608;
    v56 = 1;
    v57 = -1033371648;
    v58 = 1;
    v59 = 0;
    v60 = 1;
    v61 = -1033371648;
    v62 = 1;
    v63 = 0;
    v64 = 1;
    v65 = -1044381696;
    v66 = 1;
    v67 = 0;
    v68 = 1;
    v69 = -1033371648;
    v70 = 1;
    v71 = 0;
    v72 = 1;
    v73 = -1033371648;
    v74 = 1;
    v75 = -1055916032;
    v76 = 1;
    v77 = -1033371648;
    v78 = 1;
    v79 = 0;
    v80 = 1;
    v81 = -1055916032;
    v82 = 1;
    v83 = -1033371648;
    v84 = 1;
    v85 = -1055916032;
    v86 = 1;
    v87 = -1033371648;
    v88 = 1;
    v89 = 0;
    v90 = 1;
    v91 = -1055916032;
    v92 = 1;
    v93 = -1043333120;
    v94 = 1;
    v95 = 0x40000000;
    v96 = 1;
    v97 = 16777472;
    v98 = 0;
    v99 = 1;
    v100 = 0;
    v101 = 1;
    v102 = 1103626240;
    v103 = 1;
    v104 = 0;
    v105 = 1;
    v106 = 1094713344;
    v107 = 1;
    v108 = 1094713344;
    v109 = 1;
    v110 = 1094713344;
    v111 = 1;
    v112 = -1061158912;
    v113 = 1;
    v114 = 1107296256;
    v115 = 1;
    v116 = 1107296256;
    v117 = 1;
    v118 = 1092616192;
    v119 = 1;
    v120 = 0;
    v121 = 1;
    v122 = 0;
    v123 = 1;
    v124 = 16777472;
    v125[0].__r_.__value_.__s.__data_[0] = 0;
    v126 = 0;
    LOBYTE(v127[0]) = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    LOBYTE(v135) = 0;
    v136 = 0;
    LOBYTE(v137) = 0;
    v138 = 0;
    LOBYTE(v139) = 0;
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
    v165 = 1;
    v166 = 0;
    v167 = 0;
    v168 = 0;
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v174 = 0;
    v175 = 0;
    v176 = 0;
    v177 = 0;
    v178 = 0;
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v190 = 0;
    v191 = 0;
    v192 = 0;
    v193 = 0;
    v194 = 0;
    v195 = 0;
    v196 = 0;
    LOBYTE(v197) = 0;
    v198 = 0;
    v199 = 0;
    v200 = 0;
    v201 = 0;
    v202 = 0;
    v203 = 0;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = 256;
    v208 = 0;
    v209 = 0;
    LOBYTE(v210) = 0;
    v211 = 0;
    LOBYTE(v212) = 0;
    v213 = 0;
    v214 = 0;
    LOBYTE(v34) = 1;
    *buf = 1953460273;
    *v41 = 16777473;
    *&v41[4] = 257;
    __src[0] = 0x100000002;
    sub_1F8148(&v39 + 1, __src, &__src[1], 2uLL);
    LODWORD(__src[0]) = 1;
    sub_1F8148(&v38, __src, __src + 4, 1uLL);
    HIWORD(v43) = 257;
    if ((v138 & 1) == 0)
    {
      v138 = 1;
    }

    v137 = 2;
    *&v41[6] = 257;
    *__src = xmmword_517160;
    sub_1DFEA0(&v44, __src, &v29);
    v122 = 1090519040;
    v123 = 1;
    v118 = 1077936128;
    v119 = 1;
    HIWORD(v97) = 257;
    v93 = -1047527424;
    v94 = 1;
    v102 = 1103101952;
    v103 = 1;
    v108 = 0;
    v109 = 1;
    v110 = 0;
    v111 = 1;
    v106 = 0;
    v107 = 1;
    v112 = -1040187392;
    v113 = 1;
    v95 = 0;
    v96 = 1;
    v124 = 16843009;
    sub_53E8(&__p, "graph_configurations.plist");
    sub_30F0DC(__src, &__p);
    sub_4DF190(&v31, __src);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__src[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1E1128(v125, &v32);
    sub_1E1238(v127, &v31);
    HIBYTE(v47) = 1;
    sub_53E8(&__p, "speaker_hal");
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_53E8(v16, "speaker_hal");
    sub_53E8(v17, "speaker_hal");
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1684434036;
    LODWORD(v25) = 1936749683;
    cf = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_1E13D0(&v22, &v25, v27, 1uLL);
  }

  if (a1 != 196)
  {
    goto LABEL_71;
  }

  sub_360AB4();
}

void sub_2A9D68(uint64_t *a1, uint64_t *a2)
{
  sub_24A81C(a1);
  v4 = a2[2];
  if (v4)
  {
    v6 = *a2;
    v5 = a2[1];
    v7 = *(*a2 + 8);
    v8 = *v5;
    *(v8 + 8) = v7;
    *v7 = v8;
    v9 = *a1;
    *(v9 + 8) = v5;
    *v5 = v9;
    *a1 = v6;
    *(v6 + 8) = a1;
    a1[2] += v4;
    a2[2] = 0;
  }
}

void sub_2A9DD0()
{
  sub_2A9EAC(v0);
  sub_30F70C(&v10, 32);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_2A9E94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2A9EAC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = sub_310AF4();
  *(a1 + 20) = 1;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  v2 = sub_106F10();
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 76) = (v2 > 0xFFu) & v2;
  *(a1 + 77) = 1;
  *(a1 + 78) = 0;
  *(a1 + 86) = 0;
  *(a1 + 88) = 16777473;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 122) = 0;
  *(a1 + 128) = -1044381696;
  *(a1 + 132) = 1;
  *(a1 + 136) = -1044381696;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 152) = -1056964608;
  *(a1 + 156) = 1;
  *(a1 + 160) = -1033371648;
  *(a1 + 164) = 1;
  *(a1 + 168) = 0;
  *(a1 + 172) = 1;
  *(a1 + 176) = -1033371648;
  *(a1 + 180) = 1;
  *(a1 + 184) = 0;
  *(a1 + 188) = 1;
  *(a1 + 192) = -1044381696;
  *(a1 + 196) = 1;
  *(a1 + 200) = 0;
  *(a1 + 204) = 1;
  *(a1 + 208) = -1033371648;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 220) = 1;
  *(a1 + 224) = -1033371648;
  *(a1 + 228) = 1;
  *(a1 + 232) = -1055916032;
  *(a1 + 236) = 1;
  *(a1 + 240) = -1033371648;
  *(a1 + 244) = 1;
  *(a1 + 248) = 0;
  *(a1 + 252) = 1;
  *(a1 + 256) = -1055916032;
  *(a1 + 260) = 1;
  *(a1 + 264) = -1033371648;
  *(a1 + 268) = 1;
  *(a1 + 272) = -1055916032;
  *(a1 + 276) = 1;
  *(a1 + 280) = -1033371648;
  *(a1 + 284) = 1;
  *(a1 + 288) = 0;
  *(a1 + 292) = 1;
  *(a1 + 296) = -1055916032;
  *(a1 + 300) = 1;
  *(a1 + 304) = -1043333120;
  *(a1 + 308) = 1;
  *(a1 + 312) = 0x40000000;
  *(a1 + 316) = 1;
  *(a1 + 320) = 16777472;
  *(a1 + 324) = 0;
  *(a1 + 328) = 1;
  *(a1 + 332) = 0;
  *(a1 + 336) = 1;
  *(a1 + 340) = 1103626240;
  *(a1 + 344) = 1;
  *(a1 + 348) = 0;
  *(a1 + 352) = 1;
  *(a1 + 356) = 1094713344;
  *(a1 + 360) = 1;
  *(a1 + 364) = 1094713344;
  *(a1 + 368) = 1;
  *(a1 + 372) = 1094713344;
  *(a1 + 376) = 1;
  *(a1 + 380) = -1061158912;
  *(a1 + 384) = 1;
  *(a1 + 388) = 1107296256;
  *(a1 + 392) = 1;
  *(a1 + 396) = 1107296256;
  *(a1 + 400) = 1;
  *(a1 + 404) = 1092616192;
  *(a1 + 408) = 1;
  *(a1 + 412) = 0;
  *(a1 + 416) = 1;
  *(a1 + 420) = 0;
  *(a1 + 424) = 1;
  *(a1 + 428) = 16777472;
  *(a1 + 432) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  *(a1 + 680) = 0;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0;
  *(a1 + 696) = 0;
  *(a1 + 700) = 0;
  *(a1 + 704) = 0;
  *(a1 + 708) = 0;
  *(a1 + 712) = 0;
  *(a1 + 716) = 0;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0;
  *(a1 + 732) = 0;
  *(a1 + 736) = 0;
  *(a1 + 740) = 0;
  *(a1 + 744) = 0;
  *(a1 + 748) = 0;
  *(a1 + 752) = 0;
  *(a1 + 756) = 0;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0;
  *(a1 + 768) = 0;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 780) = 0;
  *(a1 + 784) = 0;
  *(a1 + 788) = 0;
  *(a1 + 792) = 0;
  *(a1 + 796) = 0;
  *(a1 + 800) = 0;
  *(a1 + 804) = 0;
  *(a1 + 808) = 0;
  *(a1 + 812) = 0;
  *(a1 + 816) = 1;
  *(a1 + 820) = 0;
  *(a1 + 824) = 0;
  *(a1 + 828) = 0;
  *(a1 + 832) = 0;
  *(a1 + 836) = 0;
  *(a1 + 840) = 0;
  *(a1 + 844) = 0;
  *(a1 + 848) = 0;
  *(a1 + 852) = 0;
  *(a1 + 856) = 0;
  *(a1 + 860) = 0;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 876) = 0;
  *(a1 + 880) = 0;
  *(a1 + 884) = 0;
  *(a1 + 888) = 0;
  *(a1 + 892) = 0;
  *(a1 + 896) = 0;
  *(a1 + 900) = 0;
  *(a1 + 904) = 0;
  *(a1 + 908) = 0;
  *(a1 + 912) = 0;
  *(a1 + 916) = 0;
  *(a1 + 920) = 0;
  *(a1 + 924) = 0;
  *(a1 + 928) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 940) = 0;
  *(a1 + 944) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 976) = 0;
  *(a1 + 984) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1016) = 0;
  *(a1 + 1040) = 0;
  *(a1 + 1048) = 0;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 256;
  *(a1 + 1084) = 0;
  *(a1 + 1088) = 0;
  *(a1 + 1092) = 0;
  *(a1 + 1096) = 0;
  *(a1 + 1100) = 0;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  *(a1 + 80) = 257;
  *(a1 + 72) = 16843009;
  *(a1 + 76) = 257;
  *(a1 + 82) = 16843009;
  if ((*(a1 + 20) & 1) == 0)
  {
    *(a1 + 20) = 1;
  }

  *(a1 + 16) = 4;
  *&v4 = 0x300000002;
  sub_1F8148((a1 + 48), &v4, &v4 + 8, 2uLL);
  LODWORD(v4) = 4;
  sub_1F8148((a1 + 24), &v4, &v4 + 4, 1uLL);
  *(a1 + 90) = 257;
  v4 = xmmword_517160;
  result = sub_1DFEA0((a1 + 96), &v4, &v5);
  *(a1 + 420) = 1090519040;
  *(a1 + 424) = 1;
  *(a1 + 404) = 1077936128;
  *(a1 + 408) = 1;
  *(a1 + 322) = 257;
  *(a1 + 912) = 15;
  *(a1 + 916) = 1;
  *(a1 + 828) = 15;
  *(a1 + 832) = 1;
  *(a1 + 904) = 7;
  *(a1 + 908) = 1;
  *(a1 + 728) = 13;
  *(a1 + 732) = 1;
  *(a1 + 736) = 13;
  *(a1 + 740) = 1;
  *(a1 + 744) = 13;
  *(a1 + 748) = 1;
  *(a1 + 752) = 13;
  *(a1 + 756) = 1;
  *(a1 + 768) = 13;
  *(a1 + 772) = 1;
  if ((*(a1 + 948) & 1) == 0)
  {
    *(a1 + 948) = 1;
  }

  *(a1 + 944) = 2;
  if ((*(a1 + 700) & 1) == 0)
  {
    *(a1 + 700) = 1;
  }

  *(a1 + 696) = 2;
  if ((*(a1 + 708) & 1) == 0)
  {
    *(a1 + 708) = 1;
  }

  *(a1 + 704) = 2;
  if ((*(a1 + 716) & 1) == 0)
  {
    *(a1 + 716) = 1;
  }

  *(a1 + 712) = 4;
  if ((*(a1 + 868) & 1) == 0)
  {
    *(a1 + 868) = 1;
  }

  *(a1 + 864) = 4;
  if ((*(a1 + 884) & 1) == 0)
  {
    *(a1 + 884) = 1;
  }

  *(a1 + 880) = 2;
  if ((*(a1 + 876) & 1) == 0)
  {
    *(a1 + 876) = 1;
  }

  *(a1 + 872) = 2;
  return result;
}

void sub_2AA418()
{
  sub_2A9EAC(v0);
  sub_30F70C(&v10, 33);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_2AA4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA4F4()
{
  sub_2A9EAC(v0);
  sub_30F70C(&v10, 34);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_2AA5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA5D0()
{
  sub_2A9EAC(v0);
  sub_30F70C(&v10, 35);
  if (v9 == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p);
    }

    __p = v10;
    v8 = v11;
  }

  else
  {
    __p = v10;
    v8 = v11;
    v9 = 1;
  }

  sub_18B160(v0);
  sub_1E0054(&v6);
  sub_477A0(v5);
  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }

  if (v1)
  {
    v2 = v1;
    operator delete(v1);
  }
}

void sub_2AA694(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

void sub_2AA6AC()
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
  v159 = 0;
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
  v3 = 2;
  v5 = 5;
  LODWORD(__src) = 1;
  sub_1F8148(v7, &__src, &__src + 4, 1uLL);
  *&__src = 0x400000003;
  sub_1F8148(&v8[1], &__src, &__src + 8, 2uLL);
  v10 = 16843009;
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
  LOWORD(v68) = 257;
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

  v101 = 8;
  if ((v104 & 1) == 0)
  {
    v104 = 1;
  }

  v103 = 8;
  v107 = 13;
  v108 = 1;
  v109 = 13;
  v110 = 1;
  v111 = 13;
  v112 = 1;
  v115 = 13;
  v116 = 1;
  v132 = 17;
  v133 = 1;
  v134 = 3;
  v135 = 1;
  v136 = 12;
  v137 = 1;
  v138 = 17;
  v139 = 1;
  v151 = 6;
  v152 = 1;
  v153 = 17;
  v154 = 1;
  v155 = 10;
  v156 = 1;
  v157 = 5;
  v158 = 1;
  v140 = 257;
  sub_30F70C(&__src, 88);
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