void sub_21E274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int buf, std::__shared_weak_count *a44, __int16 a45, __int16 a46, int a47, int a48, __int16 a49, int a50, __int16 a51, __int16 a52, int a53)
{
  if (a11)
  {
    (*(*a10 + 24))(a10);
  }

  sub_477A0(a22);
  sub_477A0(a25);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_21F4BC(unint64_t a1, uint64_t a2)
{
  if (!*(a1 + 872))
  {
    v64 = sub_5544(14);
    v65 = *v64;
    if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1345;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_27A4();
  v67 = (*(qword_6E94F8 + 16))();
  v4 = *(a1 + 384);
  sub_A1DF4(buf, *(a1 + 376));
  v5 = *&buf[4] << 32;
  sub_4AE8C(buf);
  if ((v4 == 1987277417 || v4 == 1986291046) && v5 == 0x7261772000000000)
  {
    v6 = sub_5544(42);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, v4);
        v8 = v73 >= 0 ? &__p : *&__p.mSelector;
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1359;
        *&buf[18] = 2080;
        *&buf[20] = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disabling DRC in kVirtualAudioPlugInMode_Raw for device %s", buf, 0x1Cu);
        if (v73 < 0)
        {
          operator delete(*&__p.mSelector);
        }
      }
    }
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_30;
  }

  v9 = *a2 == 1920167273 || *a2 == 1920167288;
  v10 = v9;
  if (*(a2 + 4) == 1 && (v10 & 1) != 0)
  {
    v11 = 1;
    goto LABEL_31;
  }

  v12 = *(a1 + 880);
  if (v12 == (a1 + 888))
  {
LABEL_30:
    v11 = 0;
  }

  else
  {
    while (1)
    {
      v13 = *(v12 + 7);
      LODWORD(v70[0]) = 0;
      __p.mSelector = v13;
      strcpy(buf, "eiaabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v14 = sub_542F0(&__p.mSelector, buf, 4u, v70);
      *(&v16 + 1) = v15;
      *&v16 = v14;
      v11 = ((v16 >> 32) >> 32) & (HIDWORD(v14) != 0);
      if (v11)
      {
        break;
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
      if (v18 == (a1 + 888))
      {
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  if (v4 == 1987277417 || v4 == 1986291046)
  {
    if (v11)
    {
      v19 = sub_5544(42);
      v20 = *v19;
      if (*v19)
      {
        if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, v4);
          v21 = v73 >= 0 ? &__p : *&__p.mSelector;
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1372;
          *&buf[18] = 2080;
          *&buf[20] = v21;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Studio mic enabled, allowing PV in HW volume mode for device %s.", buf, 0x1Cu);
          if (v73 < 0)
          {
            operator delete(*&__p.mSelector);
          }
        }
      }
    }
  }

  if (!sub_DD8CC(*(a1 + 872), 1))
  {
    goto LABEL_78;
  }

  if ((v11 & 1) == 0)
  {
    v22 = *(a1 + 872);
    strcpy(buf, "newsbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v23 = sub_59410(v22);
    *(&v26 + 1) = v24;
    *&v26 = v23;
    v25 = v26 >> 32;
    if ((v25 & 0x100000000) == 0 || !v25)
    {
      v37 = sub_5544(42);
      v31 = *v37;
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1270;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VirtualAudio_Device::IsAdaptiveVolumeEnabled() - software volume is disabled.", buf, 0x12u);
        }

        goto LABEL_78;
      }

      goto LABEL_106;
    }
  }

  __p.mSelector = *(a1 + 8);
  strcpy(buf, "lvdabolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v27 = sub_542F0(&__p.mSelector, buf, 0, 0);
  v29 = v27;
  if (v27)
  {
    if (v27 == 2003332927)
    {
      v30 = sub_5544(42);
      v31 = *v30;
      if (*v30)
      {
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(&__p, 0x6164766Cu);
          v32 = v73;
          v33 = *&__p.mSelector;
          (*(**(a1 + 872) + 128))(v70);
          p_p = &__p;
          if (v32 < 0)
          {
            p_p = v33;
          }

          if (v71 >= 0)
          {
            v35 = v70;
          }

          else
          {
            v35 = v70[0];
          }

          *buf = 136315906;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1288;
          *&buf[18] = 2080;
          *&buf[20] = p_p;
          v75 = 2080;
          v76 = v35;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VirtualAudio_Device::IsAdaptiveVolumeEnabled() - property %s not supported on device %s.", buf, 0x26u);
LABEL_74:
          if (v71 < 0)
          {
            operator delete(v70[0]);
          }

          if (v73 < 0)
          {
            operator delete(*&__p.mSelector);
          }

          goto LABEL_78;
        }

        goto LABEL_78;
      }
    }

    else
    {
      v38 = sub_5544(42);
      v31 = *v38;
      if (*v38)
      {
        if (os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&__p, v29);
          if (v73 >= 0)
          {
            v39 = &__p;
          }

          else
          {
            v39 = *&__p.mSelector;
          }

          sub_22170(v70, 0x6164766Cu);
          v40 = v71;
          v41 = v70[0];
          (*(**(a1 + 872) + 128))(v68);
          v42 = v70;
          if (v40 < 0)
          {
            v42 = v41;
          }

          if (v69 >= 0)
          {
            v43 = v68;
          }

          else
          {
            v43 = v68[0];
          }

          *buf = 136316162;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1295;
          *&buf[18] = 2080;
          *&buf[20] = v39;
          v75 = 2080;
          v76 = v42;
          v77 = 2080;
          v78 = v43;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d VirtualAudio_Device::IsAdaptiveVolumeEnabled() - error %s retrieving property %s on device %s.", buf, 0x30u);
          if (v69 < 0)
          {
            operator delete(v68[0]);
          }

          goto LABEL_74;
        }

LABEL_78:
        v36 = 0;
        v31 = 0;
        goto LABEL_79;
      }
    }

LABEL_106:
    v36 = 0;
    goto LABEL_79;
  }

  v31 = 0;
  v36 = (HIDWORD(v27) != 0) & v28;
  if (v36 == 1 && v5 != 0x7261772000000000)
  {
    if (sub_DD8CC(*(a1 + 872), 2))
    {
      v31 = sub_2204C4(a1);
    }

    else
    {
      v31 = 0;
    }

    v36 = 1;
  }

LABEL_79:
  if (v4 == 1987277417 || v4 == 1986291046)
  {
    v44 = sub_5544(42);
    v45 = *v44;
    if (*v44)
    {
      if (os_log_type_enabled(*v44, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(&__p, v4);
        v46 = "disabled";
        if (v31)
        {
          v47 = "enabled";
        }

        else
        {
          v47 = "disabled";
        }

        if (v36)
        {
          v46 = "enabled";
        }

        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1387;
        v48 = *&__p.mSelector;
        *buf = 136316162;
        *&buf[18] = 2080;
        if (v73 >= 0)
        {
          v48 = &__p;
        }

        *&buf[20] = v46;
        v75 = 2080;
        v76 = v47;
        v77 = 2080;
        v78 = v48;
        _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adaptive volume is %s auto-DRC is %s for device %s", buf, 0x30u);
        if (v73 < 0)
        {
          operator delete(*&__p.mSelector);
          if (v31)
          {
            goto LABEL_92;
          }

LABEL_109:
          sub_DDF68();
          sub_DDFE4(a1);
          goto LABEL_110;
        }
      }
    }
  }

  if (!v31)
  {
    goto LABEL_109;
  }

LABEL_92:
  sub_DDF68();
  v49 = sub_5544(42);
  v50 = *v49;
  if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 112))(&__p, a1);
    v51 = v73 >= 0 ? &__p : *&__p.mSelector;
    *buf = 136315650;
    *&buf[4] = "AVHIDEventListener.h";
    *&buf[12] = 1024;
    *&buf[14] = 170;
    *&buf[18] = 2080;
    *&buf[20] = v51;
    _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Registering VAD '%s' for updates.", buf, 0x1Cu);
    if (v73 < 0)
    {
      operator delete(*&__p.mSelector);
    }
  }

  *buf = &unk_6E68F0;
  buf[8] = 1;
  sub_47BD8(&unk_6E68F0);
  v52 = qword_6E6A18;
  if (!qword_6E6A18)
  {
LABEL_105:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v53 = v52;
      v54 = *(v52 + 32);
      if (v54 <= a1)
      {
        break;
      }

      v52 = *v53;
      if (!*v53)
      {
        goto LABEL_105;
      }
    }

    if (v54 >= a1)
    {
      break;
    }

    v52 = v53[1];
    if (!v52)
    {
      goto LABEL_105;
    }
  }

  sub_47C90(&unk_6E68F0);
LABEL_110:
  (*(**(a1 + 872) + 456))(*(a1 + 872), v36, v31);
  if (v31)
  {
    sub_220864(a1);
  }

  memset(buf, 0, 24);
  v55 = *(a1 + 904);
  v56 = (a1 + 912);
  if (v55 == (a1 + 912))
  {
    v62 = 0;
    v61 = 0;
  }

  else
  {
    do
    {
      v57 = *(v55 + 7);
      *&__p.mSelector = 0x676C6F626164766CLL;
      __p.mElement = 0;
      if (AudioObjectHasProperty(v57, &__p))
      {
        *&__p.mSelector = 0x676C6F626164766CLL;
        __p.mElement = 0;
        v58 = sub_163EF0(buf, v57);
        sub_172ED8(v58, &__p);
      }

      v59 = v55[1];
      if (v59)
      {
        do
        {
          v60 = v59;
          v59 = *v59;
        }

        while (v59);
      }

      else
      {
        do
        {
          v60 = v55[2];
          v9 = *v60 == v55;
          v55 = v60;
        }

        while (!v9);
      }

      v55 = v60;
    }

    while (v60 != v56);
    v61 = *buf;
    v62 = *&buf[8];
  }

  sub_DED5C(v61, v62);
  *&__p.mSelector = buf;
  sub_DECD0(&__p);
  return sub_210C50(&v67);
}

uint64_t sub_2204C4(uint64_t a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    if ((atomic_load_explicit(&qword_6E85F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E85F0))
    {
      byte_6E85E8 = sub_28AC58();
      __cxa_guard_release(&qword_6E85F0);
    }

    if (byte_6E85E8)
    {
      return 0;
    }

    LODWORD(v23[0]) = *(a1 + 8);
    strcpy(&buf, "rdvpbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    v3 = sub_542F0(v23, &buf, 0, 0);
    v5 = v3;
    if (v3 == 2003332927)
    {
      v6 = sub_5544(42);
      v7 = *v6;
      if (!*v6)
      {
        return 0;
      }

      result = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
      if (result)
      {
        sub_22170(v23, 0x70766472u);
        v8 = v24;
        v9 = v23[0];
        (*(**(a1 + 872) + 128))(v21);
        v10 = v23;
        if (v8 < 0)
        {
          v10 = v9;
        }

        if (v22 >= 0)
        {
          v11 = v21;
        }

        else
        {
          v11 = v21[0];
        }

        buf.mSelector = 136315906;
        *&buf.mScope = "VirtualAudio_Device.cpp";
        v26 = 1024;
        v27 = 1324;
        v28 = 2080;
        v29 = v10;
        v30 = 2080;
        v31 = v11;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VirtualAudio_Device::IsAutoDRCEnabled() - property %s not supported on device %s.", &buf, 0x26u);
        goto LABEL_28;
      }
    }

    else
    {
      if (!v3)
      {
        return (HIDWORD(v3) != 0) & v4;
      }

      v12 = sub_5544(42);
      v13 = *v12;
      if (!*v12)
      {
        return 0;
      }

      result = os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v14 = v23;
        sub_22170(v23, v5);
        if (v24 < 0)
        {
          v14 = v23[0];
        }

        sub_22170(v21, 0x70766472u);
        v15 = v22;
        v16 = v21[0];
        (*(**(a1 + 872) + 128))(__p);
        v17 = v21;
        if (v15 < 0)
        {
          v17 = v16;
        }

        if (v20 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        buf.mSelector = 136316162;
        *&buf.mScope = "VirtualAudio_Device.cpp";
        v26 = 1024;
        v27 = 1330;
        v28 = 2080;
        v29 = v14;
        v30 = 2080;
        v31 = v17;
        v32 = 2080;
        v33 = v18;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d VirtualAudio_Device::IsAutoDRCEnabled() - error %s retrieving property %s on device %s.", &buf, 0x30u);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }

LABEL_28:
        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        return 0;
      }
    }
  }

  return result;
}

void sub_220864(uint64_t a1)
{
  sub_27A4();
  v2 = atomic_load(&qword_6E9558);
  if (v2 != pthread_self())
  {
    v23 = sub_5544(14);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "VirtualAudio_Device.cpp";
      v39 = 1024;
      v40 = 1412;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a1 + 872))
  {
    v26 = sub_5544(14);
    v27 = *v26;
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "VirtualAudio_Device.cpp";
      v39 = 1024;
      v40 = 1413;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    v28 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v28, "Precondition failure.");
  }

  if ((sub_2204C4(a1) & 1) == 0)
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      inAddress.mSelector = 136315394;
      *&inAddress.mScope = "VirtualAudio_Device.cpp";
      v39 = 1024;
      v40 = 1414;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &inAddress, 0x12u);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v31, "Precondition failure.");
  }

  v3 = *(a1 + 8);
  *&inAddress.mSelector = 0x676C6F6270766463;
  inAddress.mElement = 0;
  if (!AudioObjectHasProperty(v3, &inAddress))
  {
    goto LABEL_19;
  }

  ioDataSize[0] = sub_543D0(v3, &inAddress, 0, 0);
  if (ioDataSize[0])
  {
    LOBYTE(outData[0]) = 0;
    PropertyData = AudioObjectGetPropertyData(v3, &inAddress, 0, 0, ioDataSize, outData);
    v5 = PropertyData;
    if (PropertyData)
    {
      v6 = 0;
    }

    else
    {
      v6 = LOBYTE(outData[0]);
    }

    if (PropertyData != 2003332927)
    {
      if (!PropertyData)
      {
        v7 = sub_5544(42);
        v8 = *v7;
        if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          (*(**(a1 + 872) + 128))(ioDataSize);
          if (v37 >= 0)
          {
            v9 = ioDataSize;
          }

          else
          {
            v9 = *ioDataSize;
          }

          inAddress.mSelector = 136315906;
          *&inAddress.mScope = "VirtualAudio_Device.cpp";
          v39 = 1024;
          v40 = 1427;
          v41 = 2048;
          v42 = v6;
          v43 = 2080;
          v44 = v9;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting PV DRC personalization coefficient to %lu on device %s.", &inAddress, 0x26u);
          if (v37 < 0)
          {
            operator delete(*ioDataSize);
          }
        }

        (*(**(a1 + 872) + 464))(*(a1 + 872), v6);
        return;
      }

      goto LABEL_28;
    }

LABEL_19:
    v10 = sub_5544(42);
    v11 = *v10;
    if (!*v10 || !os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    sub_22170(ioDataSize, 0x70766463u);
    v12 = v37;
    v13 = *ioDataSize;
    (*(**(a1 + 872) + 128))(outData);
    v14 = ioDataSize;
    if (v12 < 0)
    {
      v14 = v13;
    }

    if (v35 >= 0)
    {
      v15 = outData;
    }

    else
    {
      v15 = outData[0];
    }

    inAddress.mSelector = 136315906;
    *&inAddress.mScope = "VirtualAudio_Device.cpp";
    v39 = 1024;
    v40 = 1437;
    v41 = 2080;
    v42 = v14;
    v43 = 2080;
    v44 = v15;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Property %s not supported on device %s.", &inAddress, 0x26u);
    goto LABEL_39;
  }

  v5 = 2003329396;
LABEL_28:
  v16 = sub_5544(42);
  v17 = *v16;
  if (!*v16 || !os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
  {
    return;
  }

  v18 = ioDataSize;
  sub_22170(ioDataSize, v5);
  if (v37 < 0)
  {
    v18 = *ioDataSize;
  }

  sub_22170(outData, 0x70766463u);
  v19 = v35;
  v20 = outData[0];
  (*(**(a1 + 872) + 128))(__p);
  v21 = outData;
  if (v19 < 0)
  {
    v21 = v20;
  }

  if (v33 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  inAddress.mSelector = 136316162;
  *&inAddress.mScope = "VirtualAudio_Device.cpp";
  v39 = 1024;
  v40 = 1443;
  v41 = 2080;
  v42 = v18;
  v43 = 2080;
  v44 = v21;
  v45 = 2080;
  v46 = v22;
  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %s retrieving property %s on device %s.", &inAddress, 0x30u);
  if (v33 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_39:
  if (v35 < 0)
  {
    operator delete(outData[0]);
  }

  if (v37 < 0)
  {
    operator delete(*ioDataSize);
  }
}

void sub_220EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

uint64_t sub_221220(uint64_t a1, AudioObjectID *a2, AudioObjectPropertyAddress *inAddress)
{
  result = AudioObjectHasProperty(*a2, inAddress);
  if (result)
  {
    *a1 = 2003329396;
    *(a1 + 8) = 0;
    *(a1 + 24) = 0;
    result = sub_543D0(*a2, inAddress, 0, 0);
    ioDataSize = result;
    if (result)
    {
      outData = 0;
      result = AudioObjectGetPropertyData(*a2, inAddress, 0, 0, &ioDataSize, &outData);
      *a1 = result;
      if (!result)
      {
        v7 = outData;
        v8[0] = &off_6DDB78;
        v8[1] = 0;
        *(a1 + 8) = &off_6DDB78;
        *(a1 + 16) = v7;
        *(a1 + 24) = 1;
        return sub_8AAAC(v8);
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

uint64_t sub_221330(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_22138C(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void sub_2213C8(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void sub_22142C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B9978;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

__n128 sub_2214A0(uint64_t a1, __n128 *a2)
{
  result = *a2;
  v3 = a2->n128_u64[1];
  v4 = a2->n128_u64[0];
  if (a2->n128_u64[0] != v3)
  {
    do
    {
      sub_2820();
      v5 = *v4++;
      sub_3C3570(*(v5 + 8));
    }

    while (v4 != v3);
    operator new();
  }

  return result;
}

void sub_221560(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v4 = 304;
  if (a2)
  {
    v4 = 280;
  }

  v5 = 312;
  if (a2)
  {
    v5 = 288;
  }

  v6 = (a1 + v4);
  v7 = *(a1 + v5) - *(a1 + v4);
  if ((v7 & 0x7FFFFFFF8) != 0)
  {
    v11 = 0;
    v12 = a3 + 8;
    v13 = (v7 >> 3);
    do
    {
      if (v11 >= ((v6[1] - *v6) >> 3))
      {
        v14 = 0;
      }

      else
      {
        v14 = *(*v6 + 8 * v11);
      }

      if (v11 < (a4[1] - *a4) >> 3 && (v15 = *(*a4 + 8 * v11)) != 0)
      {
        if (!a2 || byte_6E4A44 != 1 || (byte_6E4A45 & 1) == 0)
        {
          bzero(v15 + 4, v15[2]);
        }

        v16 = v15[3];
        *v12 = *(*(v14 + 104) + 44);
        *(v12 + 4) = v16;
        v17 = v15 + 4;
      }

      else
      {
        v18 = *(v14 + 104);
        *v12 = v18[11];
        v19 = sub_5519C(v18, *(a1 + 272));
        v17 = 0;
        *(v12 + 4) = v19;
      }

      *(v12 + 8) = v17;
      ++v11;
      v12 += 16;
    }

    while (v13 != v11);
  }
}

uint64_t sub_2216B4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 8) = 0;
  return result;
}

void sub_221704(void *a1)
{
  sub_22173C(a1);

  operator delete();
}

void *sub_22173C(void *a1)
{
  *a1 = off_6B99F8;
  if (a1[1])
  {
    v2 = sub_5544(14);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v5 = 136315394;
        v6 = "VirtualAudio_Device.cpp";
        v7 = 1024;
        v8 = 4250;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to execute command prior to destruction.", &v5, 0x12u);
      }
    }
  }

  return a1;
}

void sub_221824(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

_BYTE *sub_221830(unint64_t *a1, uint64_t a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 == pthread_self())
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "VirtualAudio_Device.cpp";
      v16 = 1024;
      v17 = 929;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = atomic_load(a1 + 70);
  if (v5 != pthread_self())
  {
    v6 = atomic_load(a1 + 83);
    if (v6 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        v14 = 136315394;
        v15 = "VirtualAudio_Device.cpp";
        v16 = 1024;
        v17 = 930;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v14, 0x12u);
      }

      v13 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v13, "Precondition failure.");
    }
  }

  sub_1481C0(a1, 1);

  return sub_184994(a1, a2, 0, 1, 0);
}

_BYTE *sub_221A90(_BYTE *result)
{
  v1 = result;
  if (result[988] == 1)
  {
    result[989] = 1;
  }

  else
  {
    v2 = sub_5544(1);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      buf[0] = 136315394;
      *&buf[1] = "VirtualAudio_Device.cpp";
      v30 = 1024;
      v31 = 1007;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Stream preference state change begun.", buf, 0x12u);
    }

    sub_27A4();
    v28[0] = (*(qword_6E94F8 + 16))();
    v4 = atomic_load(v1 + 70);
    if (v4 == pthread_self() || (v5 = atomic_load(v1 + 83), v5 == pthread_self()))
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "VirtualAudio_Device.cpp";
        v30 = 1024;
        v31 = 1012;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v6 = v1[39] - v1[38];
    if ((v6 & 0x7FFFFFFF8) != 0)
    {
      sub_212F34(v27, v1);
      v7 = atomic_load(v1 + 70);
      if (v7 == pthread_self() || (v8 = atomic_load(v1 + 83), v8 == pthread_self()))
      {
        v9 = 0;
        memset(v26, 0, sizeof(v26));
        while (1)
        {
          v10 = v1[38];
          if (v9 >= (v1[39] - v10) >> 3)
          {
            v11 = 0;
          }

          else
          {
            v11 = *(v10 + 8 * v9);
          }

          v12 = sub_5544(1);
          v13 = *v12;
          if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
          {
            buf[0] = 136315650;
            *&buf[1] = "VirtualAudio_Device.cpp";
            v30 = 1024;
            v31 = 1029;
            v32 = 2048;
            v33 = v11;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Refreshing output stream %p for stream format preference change.", buf, 0x1Cu);
          }

          sub_23B68C(v11, v26);
          if ((v6 >> 3) == ++v9)
          {
            if (sub_CE3DC((v1[109] + 272)))
            {
              v14 = v1[35];
              v15 = v1[36];
              if (((v15 - v14) & 0x7FFFFFFF8) != 0)
              {
                v16 = 0;
                do
                {
                  if (v16 >= (v15 - v14) >> 3)
                  {
                    v17 = 0;
                  }

                  else
                  {
                    v17 = *(v14 + 8 * v16);
                  }

                  v18 = sub_5544(1);
                  v19 = *v18;
                  if (*v18)
                  {
                    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
                    {
                      buf[0] = 136315650;
                      *&buf[1] = "VirtualAudio_Device.cpp";
                      v30 = 1024;
                      v31 = 1043;
                      v32 = 2048;
                      v33 = v17;
                      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Refreshing input stream %p for stream format preference change.", buf, 0x1Cu);
                    }
                  }

                  sub_23B68C(v17, v26);
                  ++v16;
                  v14 = v1[35];
                  v15 = v1[36];
                }

                while (v16 < ((v15 - v14) >> 3));
              }
            }

            sub_13738C(v1[55]);
          }
        }
      }

      v23 = sub_5544(14);
      v24 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
      {
        buf[0] = 136315394;
        *&buf[1] = "VirtualAudio_Device.cpp";
        v30 = 1024;
        v31 = 1021;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
      }

      v25 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v25, "Invariant failure.");
    }

    return sub_210C50(v28);
  }

  return result;
}

void sub_221F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t buf, int a28, __int16 a29, int a30, __int16 a31, uint64_t a32, __int16 a33, uint64_t a34, __int16 a35, int a36)
{
  sub_213484(&a15);
  sub_210C50(&a20);
  _Unwind_Resume(a1);
}

void sub_222268(void *a1, uint64_t a2, uint64_t a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 == pthread_self())
  {
    v7 = atomic_load(a1 + 70);
    if (v7 != pthread_self())
    {
      v8 = atomic_load(a1 + 83);
      if (v8 != pthread_self())
      {
        memset(v28, 0, sizeof(v28));
        sub_212F34(v24, a1);
        v9 = atomic_load(a1 + 70);
        if (v9 == pthread_self() || (v10 = atomic_load(a1 + 83), v10 == pthread_self()))
        {
          v11 = (*(*a3 + 152))(a3, a2);
          if (!v11)
          {
            sub_2149F0(a1, v28);
            sub_1C76AC(a1);
            sub_13738C(a1[55]);
          }

          v12 = sub_5544(14);
          v13 = *v12;
          if (*v12)
          {
            if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315394;
              *&buf[1] = "VirtualAudio_Device.cpp";
              v26 = 1024;
              v27 = 1627;
              _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theResult) [error theResult is an error]: error setting the format on the hardware stream", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = v11;
        }

        v21 = sub_5544(14);
        v22 = *v21;
        if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          buf[0] = 136315394;
          *&buf[1] = "VirtualAudio_Device.cpp";
          v26 = 1024;
          v27 = 1610;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d INVARIANT FAILURE (std::logic_error).", buf, 0x12u);
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v23, "Invariant failure.");
      }
    }

    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      *v28 = 136315394;
      *&v28[4] = "VirtualAudio_Device.cpp";
      *&v28[12] = 1024;
      *&v28[14] = 1602;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
    }

    v17 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v17, "Precondition failure.");
  }

  v18 = sub_5544(14);
  v19 = *v18;
  if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
  {
    *v28 = 136315394;
    *&v28[4] = "VirtualAudio_Device.cpp";
    *&v28[12] = 1024;
    *&v28[14] = 1601;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", v28, 0x12u);
  }

  v20 = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(v20, "Precondition failure.");
}

void sub_222670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_213484(&a9);
  a11 = &a15;
  sub_DECD0(&a11);
  _Unwind_Resume(a1);
}

void sub_2226F4(uint64_t a1, const __CFDictionary *a2, int a3)
{
  if (*&a2 == 0.0)
  {
    v93 = sub_5544(14);
    v94 = *v93;
    if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1643;
      _os_log_impl(&dword_0, v94, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a3 > 1936749156)
  {
    if (a3 == 1937007472)
    {
      goto LABEL_8;
    }

    v6 = 29285;
  }

  else
  {
    if (a3 == 1835229549)
    {
      goto LABEL_8;
    }

    v6 = 25456;
  }

  if (a3 != (v6 | 0x73700000))
  {
    goto LABEL_83;
  }

LABEL_8:
  *buf = 0x63666F7663646972;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  sub_4625C(&v115, buf, &buf[8], 2uLL);
  v7 = v115;
  v8 = v116;
  if (v115 == v116)
  {
    if (!v115)
    {
      goto LABEL_28;
    }

    v116 = v115;
    v17 = v115;
    goto LABEL_27;
  }

  v9 = 1;
  v10 = v115;
  do
  {
    v9 &= (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, *v10++, 0);
  }

  while (v10 != v8);
  if (v7)
  {
    v116 = v7;
    operator delete(v7);
  }

  if ((v9 & 1) == 0)
  {
    v11 = sub_5544(1);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v113, 0x63646972u);
        v13 = v114;
        v14 = v113[0];
        sub_22170(__p, 0x63666F76u);
        *&v15 = COERCE_DOUBLE(v113);
        if (v13 < 0)
        {
          v15 = v14;
        }

        if (v112 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1667;
        v119 = 2080;
        v120 = *&v15;
        v121 = 2080;
        v122 = v16;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d Camera parameters [%s %s] not supported by DSP chain", buf, 0x26u);
        if (v112 < 0)
        {
          operator delete(__p[0]);
        }

        if (v114 < 0)
        {
          v17 = v113[0];
LABEL_27:
          operator delete(v17);
        }
      }
    }
  }

LABEL_28:
  if (a3 > 1936749156)
  {
    if (a3 == 1937007472)
    {
      goto LABEL_34;
    }

    v18 = 29285;
  }

  else
  {
    if (a3 == 1835229549)
    {
      goto LABEL_34;
    }

    v18 = 25456;
  }

  if (a3 != (v18 | 0x73700000))
  {
    goto LABEL_83;
  }

LABEL_34:
  *buf = 0x63666F7663646972;
  v109 = 0;
  v110 = 0;
  v108 = 0;
  sub_4625C(&v108, buf, &buf[8], 2uLL);
  v19 = v108;
  v20 = v109;
  if (v108 == v109)
  {
    if (v108)
    {
      v109 = v108;
      operator delete(v108);
    }
  }

  else
  {
    v21 = 1;
    v22 = v108;
    do
    {
      v21 &= (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, *v22++, 0);
    }

    while (v22 != v20);
    if (v19)
    {
      v109 = v19;
      operator delete(v19);
      if ((v21 & 1) == 0)
      {
        goto LABEL_83;
      }
    }

    else if (!v21)
    {
      goto LABEL_83;
    }
  }

  v23 = sub_5544(1);
  v24 = *v23;
  if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1672;
    v119 = 2112;
    v120 = *&a2;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting camera parameters on input DSP: %@", buf, 0x1Cu);
  }

  v25 = sub_127D0(a2, "camera wind suppression");
  if (v25)
  {
    v26 = sub_113A0(v25);
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_148DA8(a2, "camera real time dynamics");
  if (!v27)
  {
    v28 = 0;
    if ((v26 & 0x100000000) == 0)
    {
      goto LABEL_71;
    }

LABEL_53:
    v29 = sub_5544(1);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1680;
      v119 = 1024;
      LODWORD(v120) = v26;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting wind suppression overlay tuning to %u", buf, 0x18u);
    }

    v31 = *(a1 + 872);
    v113[0] = &dword_4 + 1;
    buf[8] = v26 != 0;
    v125 = 0;
    (*(*v31 + 448))(v31, v113, buf, 1768845428);
    sub_DD7C4(&buf[8]);
    if ((v28 & 0x100000000) != 0)
    {
      v32 = sub_5544(1);
      v33 = (v28 != 0) | (2 * (v26 != 0));
      v34 = *v32;
      if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
      {
        v35 = 0;
        v36 = 0;
        v114 = 2;
        strcpy(v113, "00");
        do
        {
          v37 = v35;
          if ((v33 >> v36))
          {
            v38 = v36 ^ 1;
            if (v114 >= 0)
            {
              v39 = v113;
            }

            else
            {
              v39 = v113[0];
            }

            *(v39 + v38) = 49;
          }

          v35 = 1;
          v36 = 1;
        }

        while ((v37 & 1) == 0);
        *&v40 = COERCE_DOUBLE(v113);
        if (v114 < 0)
        {
          v40 = v113[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1693;
        v119 = 2080;
        v120 = *&v40;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting wind and dynamics processing overlay tuning to %s", buf, 0x1Cu);
        if (v114 < 0)
        {
          operator delete(v113[0]);
        }
      }

      v41 = *(a1 + 872);
      v113[0] = &dword_4 + 2;
      *&buf[8] = v33;
      v125 = 3;
      (*(*v41 + 448))(v41, v113, buf, 1768845428);
      sub_DD7C4(&buf[8]);
    }

    goto LABEL_71;
  }

  v28 = sub_113A0(v27);
  if ((v26 & 0x100000000) != 0)
  {
    goto LABEL_53;
  }

LABEL_71:
  v42 = sub_A4A44(a2, "camera dir");
  if (v42)
  {
    v43 = sub_113A0(v42);
    if ((v43 & 0x100000000) != 0)
    {
      v44 = v43;
      v45 = sub_5544(17);
      v46 = *v45;
      if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1702;
        v119 = 1024;
        LODWORD(v120) = v44;
        _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting camera direction %d on DSP", buf, 0x18u);
      }

      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1667524978, 0, v44);
    }
  }

  v47 = sub_A4A44(a2, "camera fov");
  if (v47)
  {
    v48 = sub_725A0(v47);
    if (HIDWORD(v48))
    {
      v49 = *&v48;
      v50 = sub_5544(17);
      v51 = v49;
      v52 = *v50;
      if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1708;
        v119 = 2048;
        v120 = v51;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting camera fov %f on DSP", buf, 0x1Cu);
      }

      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1667657590, 0, v51);
    }
  }

LABEL_83:
  if (a3 != 1835229549)
  {
    goto LABEL_133;
  }

  qmemcpy(buf, "tnfmkcbmnmom", 12);
  v106 = 0;
  v107 = 0;
  v105 = 0;
  sub_4625C(&v105, buf, &buf[12], 3uLL);
  v53 = v105;
  v54 = v106;
  if (v105 == v106)
  {
    if (!v105)
    {
      goto LABEL_108;
    }

    v106 = v105;
    v57 = v105;
    goto LABEL_92;
  }

  v55 = 1;
  v56 = v105;
  do
  {
    v55 &= (*(**(a1 + 872) + 400))(*(a1 + 872), 1685287015, *v56++, 0);
  }

  while (v56 != v54);
  if (v53)
  {
    v106 = v53;
    operator delete(v53);
    if (v55)
    {
      goto LABEL_108;
    }
  }

  else if (v55)
  {
    goto LABEL_108;
  }

  v58 = sub_5544(1);
  v59 = *v58;
  if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
  {
    *&v60 = COERCE_DOUBLE(v113);
    sub_22170(v113, 0x6D666E74u);
    if (v114 < 0)
    {
      v60 = v113[0];
    }

    sub_22170(__p, 0x6D62636Bu);
    v61 = v112;
    v62 = __p[0];
    sub_22170(v103, 0x6D6F6D6Eu);
    v63 = __p;
    if (v61 < 0)
    {
      v63 = v62;
    }

    if (v104 >= 0)
    {
      v64 = v103;
    }

    else
    {
      v64 = v103[0];
    }

    *buf = 136316162;
    *&buf[4] = "VirtualAudio_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1716;
    v119 = 2080;
    v120 = *&v60;
    v121 = 2080;
    v122 = v63;
    v123 = 2080;
    v124 = v64;
    _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d Camera properties [%s %s %s] not supported by DSP chain", buf, 0x30u);
    if (v104 < 0)
    {
      operator delete(v103[0]);
    }

    if (v112 < 0)
    {
      operator delete(__p[0]);
    }

    if (v114 < 0)
    {
      v57 = v113[0];
LABEL_92:
      operator delete(v57);
    }
  }

LABEL_108:
  qmemcpy(buf, "tnfmkcbmnmom", 12);
  v101 = 0;
  v102 = 0;
  v100 = 0;
  sub_4625C(&v100, buf, &buf[12], 3uLL);
  v65 = v100;
  v66 = v101;
  if (v100 == v101)
  {
    if (v100)
    {
      v101 = v100;
      operator delete(v100);
    }
  }

  else
  {
    v67 = 1;
    v68 = v100;
    do
    {
      v67 &= (*(**(a1 + 872) + 400))(*(a1 + 872), 1685287015, *v68++, 0);
    }

    while (v68 != v66);
    if (v65)
    {
      v101 = v65;
      operator delete(v65);
      if ((v67 & 1) == 0)
      {
        goto LABEL_133;
      }
    }

    else if (!v67)
    {
      goto LABEL_133;
    }
  }

  v69 = sub_2238C8(a2, "camera mics");
  if (v69 && (v70 = sub_113A0(v69), (v70 & 0x100000000) != 0))
  {
    v76 = v70;
    LODWORD(v113[0]) = 1;
    if ((v70 & 4) != 0)
    {
      (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1835429492, v113, 4, 0, 0);
    }

    if ((v76 & 2) != 0)
    {
      (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1835164523, v113, 4, 0, 0);
    }

    if (v76)
    {
      (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1836019054, v113, 4, 0, 0);
      goto LABEL_133;
    }

    if (!v76)
    {
      v77 = sub_5544(17);
      v78 = *v77;
      if (*v77)
      {
        if (os_log_type_enabled(*v77, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1742;
          v119 = 1024;
          LODWORD(v120) = 0;
          v73 = "%25s:%-5d Invalid value %u for kVirtualAudioDeviceCameraMicsKey";
          v74 = v78;
          v75 = 24;
          goto LABEL_122;
        }
      }
    }
  }

  else
  {
    v71 = sub_5544(17);
    v72 = *v71;
    if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1748;
      v73 = "%25s:%-5d No value set for kVirtualAudioDeviceCameraMicsKey";
      v74 = v72;
      v75 = 18;
LABEL_122:
      _os_log_impl(&dword_0, v74, OS_LOG_TYPE_ERROR, v73, buf, v75);
    }
  }

LABEL_133:
  v79 = CFStringCreateWithBytes(0, "camera capture is audio only", 28, 0x8000100u, 0);
  *buf = v79;
  if (!v79)
  {
    v96 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v96, "Could not construct");
  }

  Value = CFDictionaryGetValue(a2, v79);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (Value)
  {
    v81 = sub_113A0(Value);
    if ((v81 & 0x100000000) != 0)
    {
      v82 = v81;
      *buf = 1667850607;
      v98 = 0;
      v99 = 0;
      v97 = 0;
      sub_4625C(&v97, buf, &buf[4], 1uLL);
      v83 = v97;
      v84 = v98;
      if (v97 == v98)
      {
        if (v97)
        {
          operator delete(v97);
        }
      }

      else
      {
        v85 = 1;
        v86 = v97;
        do
        {
          v85 &= (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, *v86++, 0);
        }

        while (v86 != v84);
        if (v83)
        {
          operator delete(v83);
          if ((v85 & 1) == 0)
          {
            return;
          }
        }

        else if (!v85)
        {
          return;
        }
      }

      v87 = sub_5544(17);
      v89 = *v87;
      if (*v87 && os_log_type_enabled(*v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1757;
        v119 = 1024;
        LODWORD(v120) = v82;
        _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting camera capture is audio only %u on DSP", buf, 0x18u);
      }

      v88.n128_u64[0] = 0;
      if (v82)
      {
        v88.n128_f32[0] = 1.0;
      }

      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1667850607, 0, v88);
      v90 = (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 1969844082, 0);
      v91 = sub_5544(17);
      v92 = *v91;
      if (*v91)
      {
        if (os_log_type_enabled(*v91, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "VirtualAudio_Device.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1764;
          v119 = 2048;
          *&v120 = v90;
          _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting orientation %lu on DSP", buf, 0x1Cu);
        }
      }

      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1969844082, 0, v90);
    }
  }
}

void sub_2237C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_2238C8(const __CFDictionary *a1, char *__s)
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

void sub_22397C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_20B45C(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x22392CLL);
}

uint64_t sub_2239CC(uint64_t a1, int a2)
{
  v2 = *(a1 + 800);
  v3 = *(a1 + 808);
  if (v2 != v3)
  {
    while ((*(**v2 + 152))() != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(a1 + 808);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

uint64_t sub_223A60(uint64_t a1, int a2)
{
  v2 = *(a1 + 848);
  v3 = *(a1 + 856);
  if (v2 != v3)
  {
    while ((*(**v2 + 152))() != a2)
    {
      v2 += 8;
      if (v2 == v3)
      {
        v2 = v3;
        break;
      }
    }

    v3 = *(a1 + 856);
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return *v2;
  }
}

void sub_223B6C(uint64_t a1, int a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    v2 = sub_5544(18);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4616;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Request to select a custom property time for the NetworkUplinkClock but no dedicated clock was found.", buf, 0x12u);
      }
    }

    return;
  }

  v5 = a1;
  v29 = a1;
  __p = 0x676C6F6263756964;
  LODWORD(v24) = 0;
  sub_12794C(buf, &v29, &__p, 0, 0);
  if (*buf || (v31 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v22 = *buf;
    *exception = &off_6DDDD0;
    exception[2] = v22;
  }

  sub_224064(&__p, *&buf[16]);
  __p = &off_6DACD8;
  if (v31 == 1)
  {
    sub_8AAAC(&buf[8]);
  }

  v6 = v24;
  v24 = 0;
  v26 = &off_6DACD8;
  theString = v6;
  v28 = 1;
  sub_8AAAC(&__p);
  if (v28 != 1)
  {
    goto LABEL_36;
  }

  sub_48540(buf, theString);
  sub_53E8(&__p, "NetworkUplinkClock_UID");
  v7 = buf[23];
  if (buf[23] >= 0)
  {
    v8 = buf[23];
  }

  else
  {
    v8 = *&buf[8];
  }

  v9 = v25;
  v10 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v9 = v24;
  }

  if (v8 != v9)
  {
    v13 = 1;
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (buf[23] >= 0)
  {
    v11 = buf;
  }

  else
  {
    v11 = *buf;
  }

  if ((v25 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v13 = memcmp(v11, p_p, v8) != 0;
  if (v10 < 0)
  {
LABEL_25:
    operator delete(__p);
    v7 = buf[23];
  }

LABEL_26:
  if ((v7 & 0x80) == 0)
  {
    if (v13)
    {
      goto LABEL_28;
    }

LABEL_36:
    if (a2)
    {
      v17 = sub_5544(18);
      v18 = *v17;
      if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4634;
        *&buf[18] = 1024;
        *&buf[20] = v5;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Network Uplink Clock UID %d Timing information is derived from cellular baseband", buf, 0x18u);
      }

      *buf = 1128614988;
      sub_2240BC(v5, buf, COERCE_DOUBLE(1735159650));
    }

    else
    {
      v19 = sub_5544(18);
      v20 = *v19;
      if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Device.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4641;
        *&buf[18] = 1024;
        *&buf[20] = v5;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Network Uplink Clock UID %d Timing information is synthesized from local device clock", buf, 0x18u);
      }

      *buf = 1280262988;
      sub_2240BC(v5, buf, COERCE_DOUBLE(1735159650));
    }

    goto LABEL_45;
  }

  operator delete(*buf);
  if (!v13)
  {
    goto LABEL_36;
  }

LABEL_28:
  v14 = sub_5544(18);
  v15 = *v14;
  if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    sub_48540(&__p, theString);
    v16 = (v25 & 0x80u) == 0 ? &__p : __p;
    *buf = 136315906;
    *&buf[4] = "VirtualAudio_Device.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 4627;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    v31 = 2080;
    v32 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Request to select a custom property time for the NetworkUplinkClock but the dedicated clock device is ID: %d, UID %s", buf, 0x22u);
    if (v25 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_45:
  if (v28 == 1)
  {
    sub_8AAAC(&v26);
  }
}

void sub_223FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a15 == 1)
  {
    sub_8AAAC(&a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_224064(void *a1, CFTypeRef cf)
{
  *a1 = off_6DD2E0;
  if (cf)
  {
    CFRetain(cf);
  }

  a1[1] = cf;
  return a1;
}

uint64_t sub_2240BC(AudioObjectID a1, void *inData, double a3)
{
  inAddress.mSelector = 1414746691;
  *&inAddress.mScope = a3;
  result = AudioObjectSetPropertyData(a1, &inAddress, 0, 0, 4u, inData);
  if (result)
  {
    v4 = result;
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v4;
  }

  return result;
}

void sub_224158(void *a1)
{
  sub_8AAAC(a1);

  operator delete();
}

void sub_224194(uint64_t a1, int a2, int a3, int a4)
{
  if ((*(a1 + 938) & 1) != 0 || !sub_DD8CC(*(a1 + 872), 0))
  {
    return;
  }

  if (!a2)
  {
LABEL_100:
    LODWORD(v48) = a2 ^ 1;
    (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1652123756, &v48, 4, 1, 0);
    v42 = sub_5544(2);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136315650;
      *&__p[4] = "VirtualAudio_Device.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 5197;
      *&__p[18] = 1024;
      *&__p[20] = v48;
      v25 = "%25s:%-5d PME Bypass state change %u";
      v26 = v43;
      v27 = 24;
      goto LABEL_103;
    }

    return;
  }

  v50 = 0;
  v8 = *(a1 + 904);
  if (v8 != (a1 + 912))
  {
    v47 = a2;
    v9 = 0;
    v10 = 0;
    do
    {
      sub_2820();
      v11 = sub_3D90(*(v8 + 7));
      v12 = *(v11 + 96);
      *__p = *(v11 + 88);
      *&__p[8] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(&v48, __p, "", 5110);
      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = v48;
      if (v48)
      {
        if (v48[303] < 0)
        {
          sub_54A0(__p, *(v48 + 35), *(v48 + 36));
        }

        else
        {
          *__p = *(v48 + 280);
          *&__p[16] = *(v48 + 37);
        }

        if (__p[23] >= 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = *__p;
        }

        if (v14)
        {
          if (__p[23] >= 0)
          {
            v15 = __p[23];
          }

          else
          {
            v15 = *&__p[8];
          }

          v16 = CFStringCreateWithBytes(0, v14, v15, 0x8000100u, 0);
          if (!v16)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Could not construct");
          }
        }

        else
        {
          v16 = 0;
        }

        v50 = v16;
        if (v9)
        {
          CFRelease(v9);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v10 = *(v48 + 36) == 1885892706;
        v9 = v16;
      }

      if (v49)
      {
        sub_1A8C0(v49);
      }

      if (v13)
      {
        break;
      }

      v17 = v8[1];
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
          v18 = v8[2];
          v20 = *v18 == v8;
          v8 = v18;
        }

        while (!v20);
      }

      v8 = v18;
    }

    while (v18 != (a1 + 912));
    v19 = v50;
    a2 = v47;
    if (v50)
    {
      v20 = a3 == 1668309362 && a4 == 1751212899;
      v21 = v20;
      if (!v20)
      {
        v22 = 2;
        if (a4 > 1919776354)
        {
          if (a4 > 1987081832)
          {
            if (a4 == 1987081833)
            {
              goto LABEL_64;
            }

            v29 = 30319;
          }

          else
          {
            if (a4 == 1919776355)
            {
              goto LABEL_64;
            }

            v29 = 26467;
          }

          v28 = v29 | 0x76700000;
        }

        else if (a4 > 1768779618)
        {
          if (a4 == 1768779619)
          {
            goto LABEL_64;
          }

          v28 = 1768781411;
        }

        else
        {
          if (a4 == 1735222132)
          {
            goto LABEL_64;
          }

          v28 = 1768057203;
        }

        if (a4 == v28 || v10)
        {
LABEL_64:
          v30 = sub_45A1A0(&v50, v22);
          v31 = 1;
          if (((v10 | v21) & 1) == 0)
          {
            if (a4 > 1919776354)
            {
              if (a4 > 1987081832)
              {
                if (a4 == 1987081833)
                {
                  goto LABEL_79;
                }

                v33 = 30319;
              }

              else
              {
                if (a4 == 1919776355)
                {
                  goto LABEL_79;
                }

                v33 = 26467;
              }

              v32 = v33 | 0x76700000;
            }

            else if (a4 > 1768779618)
            {
              if (a4 == 1768779619)
              {
                goto LABEL_79;
              }

              v32 = 1768781411;
            }

            else
            {
              if (a4 == 1735222132)
              {
                goto LABEL_79;
              }

              v32 = 1768057203;
            }

            if (a4 != v32)
            {
              v31 = 0;
            }
          }

LABEL_79:
          v34 = sub_5544(18);
          v35 = *v34;
          if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_DEFAULT))
          {
            v36 = *(a1 + 400);
            v37 = "media";
            *&__p[4] = "VirtualAudio_Device.cpp";
            *&__p[12] = 1024;
            if (v31)
            {
              v37 = "speech";
            }

            v38 = "global";
            *&__p[14] = 5146;
            *&__p[18] = 2112;
            *__p = 136316162;
            *&__p[20] = v36;
            v52 = 2080;
            if (v30)
            {
              v38 = "device specific";
            }

            v53 = v37;
            v54 = 2080;
            v55 = v38;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device %@ using %s PME preset which is %s", __p, 0x30u);
          }

          if (v31)
          {
            if (v30)
            {
              v39 = sub_45A430(&v50);
            }

            else
            {
              v39 = sub_45A2E0();
            }
          }

          else if (v30)
          {
            v39 = sub_45A398(&v50);
          }

          else
          {
            v39 = sub_45A250();
          }

          v40 = v39;
          v48 = v39;
          if (v39)
          {
            (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1601203557, &v48, 8, 1, 0);
            v41.n128_u32[0] = 2.0;
            if (v21)
            {
              v41.n128_f32[0] = 1.0;
            }

            if (!v31)
            {
              v41.n128_f32[0] = 1.0;
            }

            (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751937133, 0, v41);
          }

          else
          {
            v44 = sub_5544(2);
            v45 = *v44;
            if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
            {
              *__p = 136315394;
              *&__p[4] = "VirtualAudio_Device.cpp";
              *&__p[12] = 1024;
              *&__p[14] = 5178;
              _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d HandlePMEEnableStateChange: Preset Configuration is not available", __p, 0x12u);
            }
          }

          CFRelease(v19);
          if (!v40)
          {
            return;
          }

          goto LABEL_100;
        }
      }

      v22 = 4;
      goto LABEL_64;
    }
  }

  v23 = sub_5544(1);
  v24 = *v23;
  if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 136315394;
    *&__p[4] = "VirtualAudio_Device.cpp";
    *&__p[12] = 1024;
    *&__p[14] = 5121;
    v25 = "%25s:%-5d Unable to retrieve output port UID for output chain";
    v26 = v24;
    v27 = 18;
LABEL_103:
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, __p, v27);
  }
}

uint64_t sub_224990(uint64_t result, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t *a5, unsigned int a6, uint64_t *a7)
{
  if (*(result + 448) == 1)
  {
    v7 = result;
    WORD1(v30) = *(result + 682);
    LOWORD(v30) = *(result + 682);
    WORD1(v29) = *(result + 682) == 0;
    LOWORD(v29) = *(result + 682);
    v8 = v30;
    atomic_compare_exchange_strong((result + 680), &v8, v29);
    v9 = 400;
    if (!*(result + 682))
    {
      v9 = 424;
    }

    v10 = (result + v9);
    v11 = *(result + v9 + 8) - *(result + v9);
    if (v11)
    {
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
      v27 = v14 - 1;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = 16;
      v17 = 8;
      do
      {
        v18 = a5;
        if (v13)
        {
          v18 = (*(v7 + 984) + v16 - 16);
        }

        v19 = a7;
        if (v27 != v13)
        {
          v19 = (*(v7 + 984) + v16);
        }

        v20 = *v18;
        v29 = *v19;
        v21 = *v10;
        result = (*(**(*v10 + v17) + 224))(*(*v10 + v17));
        if (result)
        {
          v30 = v20;
          v31 = 0;
          if (((a4 > 1) & sub_46DC8C(*(v21 + v17))) == 1)
          {
            v31 = a5[1];
            v22 = a4;
          }

          else
          {
            v22 = 1;
          }

          result = (*(**(v21 + v17) + 120))(*(v21 + v17), a2, a3, v22, &v30, a6, &v29);
        }

        else if (v29)
        {
          result = (*(**(v21 + v17) + 112))(*(v21 + v17), a2, a3);
        }

        ++v13;
        v16 += 32;
        v17 += 24;
      }

      while (v15 != v13);
    }
  }

  return result;
}

void sub_224BD4(unint64_t a1)
{
  sub_224C0C(a1);

  operator delete();
}

unint64_t sub_224C0C(unint64_t a1)
{
  *a1 = off_6B9A40;
  v2 = sub_5544(25);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 735) < 0)
    {
      sub_54A0(__p, *(a1 + 712), *(a1 + 720));
    }

    else
    {
      *__p = *(a1 + 712);
      v7 = *(a1 + 728);
    }

    v4 = __p;
    if (v7 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315650;
    v9 = "DSPGraphChain_SpeakerProtection.cpp";
    v10 = 1024;
    v11 = 95;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deleting DSPGraphChain_SpeakerProtection %s", buf, 0x1Cu);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_13A50C(a1);
  return a1;
}

void sub_224D54(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_224D68(uint64_t *a1, uint64_t *a2)
{
  sub_87980(a1);
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

void sub_224ED8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B9B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

_BYTE *sub_224F4C(_BYTE *a1)
{
  if (a1[8] == 1)
  {
    v2 = *a1;
    (*(**a1 + 24))();
  }

  return a1;
}

void sub_225118(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

void sub_22512C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 24);
  sub_25704(&v32, v3 + 2, "", 46);
  sub_25704(&v31, v3 + 4, "", 47);
  v4 = v32;
  v5 = *(v32 + 144);
  v6 = *(v32 + 200);
  if (v6)
  {
    v7 = *(v32 + 192);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v8 = std::__shared_weak_count::lock(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (v8)
    {
      if (v7)
      {
        sub_CE1E4(&v29, v7, v4, a2, v3[9], *(a2 + 12));
        sub_FC464(&v29, v3 + 2, v7);
        *buf = 0;
        *&buf[8] = 0;
        v9 = v3[3];
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          v11 = v10;
          if (v10)
          {
            v12 = v3[2];
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            *buf = v12;
            *&buf[8] = v10;
            sub_1A8C0(v10);
          }

          else
          {
            *buf = 0;
            *&buf[8] = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        sub_301DE0(&__p, &v29, buf);
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        v33 = 0;
        v34 = 0;
        v13 = v3[3];
        if (v13)
        {
          v14 = std::__shared_weak_count::lock(v13);
          if (v14)
          {
            v15 = v14;
            v16 = v3[2];
            atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v17 = v34;
            v33 = v16;
            v34 = v15;
            if (v17)
            {
              std::__shared_weak_count::__release_weak(v17);
            }

            sub_1A8C0(v15);
          }

          else
          {
            v18 = v34;
            v33 = 0;
            v34 = 0;
            if (v18)
            {
              std::__shared_weak_count::__release_weak(v18);
            }
          }
        }

        sub_CF934(&v26, &v33, 1);
        operator new();
      }
    }
  }

  v19 = sub_5544(14);
  v20 = *v19;
  if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    (*(*v4 + 144))(&v29, v4);
    v21 = v30;
    v22 = v29;
    sub_22170(&__p, v5);
    v23 = &v29;
    if (v21 < 0)
    {
      v23 = v22;
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = "RoutingHandler_Record_Unk.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 52;
    v36 = 2080;
    v37 = v23;
    v38 = 2080;
    v39 = p_p;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [device.get() is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(v29);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 2003329396;
}

void sub_2258B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (v36)
  {
    sub_1A8C0(v36);
  }

  if (a34)
  {
    sub_1A8C0(a34);
  }

  if (a36)
  {
    sub_1A8C0(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_225AB4(uint64_t a1)
{
  sub_248A0(&v3, (a1 + 504), "", 128);
  v1 = (*(*(v3 + 80) + 32))();
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_225B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_225B50(uint64_t a1)
{
  sub_248A0(&v2, (a1 + 504), "", 124);
  (*(*(v2 + 80) + 24))();
  v1 = v3;
  if (v3)
  {

    sub_1A8C0(v1);
  }
}

void sub_225BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_225C00(uint64_t a1)
{
  sub_248A0(&v2, (a1 + 504), "", 120);
  (*(*(v2 + 80) + 16))();
  v1 = v3;
  if (v3)
  {

    sub_1A8C0(v1);
  }
}

void sub_225C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_225CA8(uint64_t a1)
{
  sub_225CE4((a1 - 80));

  operator delete();
}

uint64_t sub_225CE4(void *a1)
{
  *a1 = off_6DB980;
  a1[10] = off_6DBA48;
  v2 = a1[64];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_1405C0(a1);
}

void sub_225D70(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_225D7C()
{
  v0 = sub_5544(14);
  v1 = *v0;
  if (*v0)
  {
    if (os_log_type_enabled(*v0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "VolumeControl.h";
      v5 = 1024;
      v6 = 191;
      _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempting to add sub volume control to an unsupported VolumeControl object.", &v3, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::logic_error::logic_error(exception, "Attempting to add sub volume control to an unsupported VolumeControl object.");
}

double sub_225E78(uint64_t a1)
{
  sub_248A0(&v3, (a1 + 504), "", 112);
  v1 = (*(*v3 + 104))(v3);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_225F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_225F1C(uint64_t a1)
{
  sub_248A0(&v3, (a1 + 504), "", 108);
  v1 = (*(*v3 + 96))(v3);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_225FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_225FC0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_248A0(&v11, (a1 + 504), "", 103);
  v7 = v11;
  v9 = 0;
  v10 = 0;
  __p = 0;
  sub_20A634(&__p, *a2, a2[1], (a2[1] - *a2) >> 4);
  (*(*v7 + 88))(v7, &__p, a3, a4);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v12)
  {
    sub_1A8C0(v12);
  }
}

void sub_226084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_2260B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_248A0(&v10, (a1 + 504), "", 95);
  (*(*v10 + 80))(v10, a2, a3, a4, a5);
  v9 = v11;
  if (v11)
  {

    sub_1A8C0(v9);
  }
}

void sub_226170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_226188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_248A0(&v9, (a1 + 504), "", 143);
  v7 = (*(*v9 + 64))(v9, a2, a3, a4);
  if (v10)
  {
    sub_1A8C0(v10);
  }

  return v7;
}

void sub_226224(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22623C(uint64_t a1, uint64_t a2)
{
  sub_248A0(&v5, (a1 + 504), "", 58);
  v3 = (*(*v5 + 24))(v5, a2);
  if (v6)
  {
    sub_1A8C0(v6);
  }

  return v3;
}

void sub_2262C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2262D8(void *a1)
{
  sub_225CE4(a1);

  operator delete();
}

void sub_22633C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DB948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_2263B0(uint64_t a1, uint64_t a2)
{
  sub_24784(*(a1 + 80), *(a1 + 88));
  v4 = (*(***(a1 + 80) + 24))(**(a1 + 80), a2);
  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  while (v6 != v5)
  {
    if (v4 != (*(**v6 + 24))(*v6, a2))
    {
      v8 = sub_5544(14);
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
        {
          v11 = 136315394;
          v12 = "ControlSet.h";
          v13 = 1024;
          v14 = 98;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Internal state failure. Differing responses to IsPropertySettable in the contained control list", &v11, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Internal state failure. Differing responses to IsPropertySettable in the contained control list");
    }

    v6 += 2;
  }

  return v4;
}

uint64_t sub_226560(uint64_t a1)
{
  *a1 = off_6DB8B0;
  v3 = (a1 + 80);
  sub_F5714(&v3);

  return sub_13BFA8(a1);
}

void sub_2265E4(uint64_t a1, int **a2, int a3)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - *a2) >= 5)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v36 = "Device_Thunderbolt_Aspen.cpp";
      v37 = 1024;
      v38 = 221;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (v3 != v4)
  {
    v7 = *v3;
    v34 = *v3;
    v8 = sub_5544(18);
    if (*(v8 + 8))
    {
      v9 = *v8;
      if (*v8)
      {
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v36 = "Device_Thunderbolt_Aspen.cpp";
          v37 = 1024;
          v38 = 228;
          v39 = 1024;
          LODWORD(v40) = v7;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate sub-port with ID %u", buf, 0x18u);
        }
      }
    }

    sub_4B4674(v31, a1);
    sub_76388(&v32, v31);
    v10 = v33;
    if (v33 == &v32)
    {
      sub_87980(&v32);
      sub_65310(v31);
      goto LABEL_40;
    }

    v11 = 0;
    while (1)
    {
      (*(*v10[2] + 168))(&v29);
      v12 = v29;
      v13 = v29;
      if (v29 != v30)
      {
        v13 = v29;
        while (*v13 != v34)
        {
          if (++v13 == v30)
          {
            goto LABEL_21;
          }
        }
      }

      if (v13 == v30)
      {
LABEL_21:
        v16 = 1;
        if (!v29)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10[2] + 144);
        if ((v14 == 1886675561) != a3)
        {
          v17 = sub_5544(14);
          v18 = *v17;
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            sub_23148(__p, (v10[2] + 8));
            v19 = v28 >= 0 ? __p : __p[0];
            *buf = 136315650;
            v36 = "Device_Thunderbolt_Aspen.cpp";
            v37 = 1024;
            v38 = 242;
            v39 = 2080;
            v40 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Scope of Port (%s) does not match scope of input parameter", buf, 0x1Cu);
            if (v28 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v20 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v20, "Scope of Port (%s) does not match scope of input parameter");
        }

        if (v14 == 1886675561)
        {
          v15 = 1768845428;
        }

        else
        {
          v15 = 1869968496;
        }

        *buf = 1936945763;
        v36 = v15;
        (*(*a1 + 48))(a1, buf, 0, 0, 4, &v34);
        v16 = 0;
        v11 = 1;
        v12 = v29;
        if (!v29)
        {
          goto LABEL_23;
        }
      }

      v30 = v12;
      operator delete(v12);
LABEL_23:
      if (v16)
      {
        v10 = v10[1];
        if (v10 != &v32)
        {
          continue;
        }
      }

      sub_87980(&v32);
      sub_65310(v31);
      if (v11)
      {
        return;
      }

LABEL_40:
      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24)
      {
        if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v36 = "Device_Thunderbolt_Aspen.cpp";
          v37 = 1024;
          v38 = 252;
          v39 = 1024;
          LODWORD(v40) = v34;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Could not locate sub-port with ID: %u in order to activate it.", buf, 0x18u);
        }
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v26, "Could not locate sub-port with ID: %u in order to activate it.");
    }
  }
}

void sub_226AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_87980(&a19);
  sub_65310(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_226B34(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886675567 && a2 != 1886675561)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_Thunderbolt_Aspen.cpp";
      v15 = 1024;
      v16 = 212;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_Thunderbolt_Aspen.cpp";
        v15 = 1024;
        v16 = 213;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

uint64_t sub_226D14(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "Device_Thunderbolt_Aspen.cpp";
    v7 = 1024;
    v8 = 115;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Creating controls and ports", buf, 0x12u);
  }

  if ((*(*a1 + 88))(a1, 1))
  {
    (*(*a1 + 448))(a1, 1);
    sub_4B7D7C();
  }

  if ((*(*a1 + 88))(a1, 0))
  {
    (*(*a1 + 448))(a1, 0);
    sub_4B8CE4();
  }

  return 1;
}

void sub_227970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v32 - 144);
  _Unwind_Resume(a1);
}

void sub_227C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_227D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_227D84(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_227DC0(uint64_t a1, UInt32 a2, __int128 *a3)
{
  *sub_4B1A68(a1, a2, a3, a3, 0) = off_6B9BB8;
  v4 = sub_5544(18);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "Device_Thunderbolt_Aspen.cpp";
    v9 = 1024;
    v10 = 85;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Created DriverKit device", &v7, 0x12u);
  }

  return a1;
}

uint64_t sub_227EC0(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885430644)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_Actuator_Aspen.cpp";
      v14 = 1024;
      v15 = 148;
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
      v13 = "Device_Actuator_Aspen.cpp";
      v14 = 1024;
      v15 = 149;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_228094(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v4 = 0x6F7574706D757465;
  v5 = 0;
  if ((*(*a1 + 16))(a1, &v4))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &v4, 0, 0, 4, buf);
  }

  v2 = 0x6F757470766F6C64;
  v3 = 0;
  if ((*(*a1 + 16))(a1, &v2))
  {
    *buf = 0;
    (*(*a1 + 48))(a1, &v2, 0, 0, 4, buf);
  }

  sub_15DD68();
}

void sub_229438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_73C20(&a69);
  std::condition_variable::~condition_variable(&STACK[0x210]);
  std::mutex::~mutex((v69 - 240));
  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_2296D0(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 4);
  *buf = *(a2 + 4);
  v4 = *(a2 + 16);
  *&buf[8] = *(a2 + 12);
  sub_127F10(&v13, a2, buf, v4, *(a2 + 24));
  v5 = v13;
  if (v13)
  {
    v6 = sub_5544(14);
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_22170(&v12, v5);
        v9 = *v3;
        v10 = *(v3 + 2);
        sub_22CE0(&__p);
      }
    }
  }

  if (v16 == 1)
  {
    memset(buf, 0, sizeof(buf));
    v18 = 0;
    v7 = v14;
    sub_46980(buf, v14, v15, (v15 - v14) >> 2);
    v8 = v18;
    *a1 = *buf;
    *(a1 + 16) = v8;
    *(a1 + 24) = v5;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v5;
  }
}

void sub_2298D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (a22 == 1)
  {
    if (__p)
    {
      operator delete(__p);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_229938(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6B9F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_2299AC(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

void *sub_2299E8(void *result, unsigned int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *(v6 + 7);
      v11 = *v3;
      if (v10 < *v3 || v10 == v11 && *(v6 + 8) < v3[1])
      {
LABEL_9:
        v12 = v4 ? v6 + 1 : result + 1;
      }

      else
      {
        v12 = result + 1;
        if (v4)
        {
          v13 = v3[1];
          v12 = result + 1;
          while (1)
          {
            while (1)
            {
              v14 = v4;
              v15 = *(v4 + 7);
              if (v11 >= v15 && (v11 != v15 || v13 >= *(v14 + 8)))
              {
                break;
              }

              v4 = *v14;
              v12 = v14;
              if (!*v14)
              {
                goto LABEL_13;
              }
            }

            if (v15 >= v11 && *(v14 + 8) >= v13)
            {
              break;
            }

            v12 = v14 + 1;
            v4 = v14[1];
            if (!v4)
            {
              goto LABEL_13;
            }
          }
        }
      }

      if (!*v12)
      {
LABEL_13:
        operator new();
      }

      v3 += 3;
      if (v3 == &a2[3 * a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

uint64_t sub_229BB8(void *a1, void *a2)
{
  if (a1 == a2)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "DSPChainUtilities.cpp";
      v11 = 1024;
      v12 = 32;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a1 == a1[1])
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "DSPChainUtilities.cpp";
      v11 = 1024;
      v12 = 36;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v9, 0x12u);
    }

    v8 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v8, "Precondition failure.");
  }

  return **a1;
}

__int128 *sub_229D90(void *a1, void *a2)
{
  v2 = sub_229BB8(a1, a2);
  v3 = sub_130F70(v2, 1685090928);
  if (!v3)
  {
    return &xmmword_6E6CD8;
  }

  result = v3[3];
  if (*(result + 10) != 7)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "DSPChainUtilities.cpp";
        v10 = 1024;
        v11 = 95;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v8, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}

void sub_229ED0(CFStringRef *a1, void *a2, void *a3)
{
  v4 = sub_229D90(a2, a3);
  v5 = sub_130F70(v4, 1685287015);
  if (v5)
  {
    v6 = v5[3];
    if (*(v6 + 40) != 6)
    {
      sub_20B4EC();
    }

    v7 = *v6;
    if (*v6)
    {
      CFRetain(*v6);
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  sub_125D8(__p, v7);
  sub_EE24C(&theData, __p);
  if (!theData)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  BytePtr = CFDataGetBytePtr(theData);
  if (!theData || (Length = CFDataGetLength(theData), (v10 = CFStringCreateWithBytes(0, BytePtr, Length, 0x8000100u, 0)) == 0))
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
  }

  *a1 = v10;
  v11 = CFGetTypeID(v10);
  if (v11 != CFStringGetTypeID())
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v14, "Could not construct");
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
    if (!v7)
    {
      return;
    }
  }

  else if (!v7)
  {
    return;
  }

  CFRelease(v7);
}

void sub_22A290(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v19 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v19)
  {
LABEL_6:
    __cxa_end_catch();
    JUMPOUT(0x22A2CCLL);
  }

  __cxa_free_exception(v18);
  goto LABEL_6;
}

void sub_22A2E8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

const void **sub_22A300(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_22A334(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_22A3DC(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_130F70(a2, a3);
  if (!v5)
  {
    *a1 = 0;
    return;
  }

  v6 = v5[3];
  if (v6)
  {
    v7 = *(v6 + 10);
    if (v7 == 10)
    {
      v8 = *(*v6 + 3);
      if (!v8)
      {
        sub_46A74();
      }

      (*(*v8 + 48))(__p);
      sub_22A3DC(a1, __p, a3);
      sub_EF820(__p[2]);
      v9 = __p[0];
      __p[0] = 0;
      if (v9)
      {
        operator delete(v9);
      }

      return;
    }
  }

  else
  {
    v7 = 1163157343;
  }

  if (v7 != 5)
  {
    sub_20B4EC();
  }

  v10 = *v6;
  if (*v6)
  {
    CFRetain(*v6);
  }

  *a1 = v10;
}

void sub_22A4C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_22A4D8(CFArrayRef *a1, void **a2)
{
  v4 = sub_5544(25);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_129944(&__p, a2);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    v13 = "DSPChainUtilities.cpp";
    v14 = 1024;
    v15 = 225;
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d DSPChain config is %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = sub_229BB8(*a2, a2[1]);
  v8 = sub_130F70(v7, 1685090928);
  if (!v8)
  {
    buf[0] = 0;
    v18 = 0;
    goto LABEL_14;
  }

  sub_12A9BC(buf, v8[3]);
  v18 = 1;
  sub_22A6EC(&__p, buf, 1735553138, 1936749683);
  v9 = __p.__r_.__value_.__r.__words[0];
  if (!__p.__r_.__value_.__r.__words[0])
  {
LABEL_14:
    *a1 = 0;
    goto LABEL_15;
  }

  CFRetain(__p.__r_.__value_.__l.__data_);
  cf = v9;
  __p.__r_.__value_.__r.__words[0] = &cf;
  __p.__r_.__value_.__l.__size_ = 1;
  *a1 = sub_22A750(&__p);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v9);
LABEL_15:
  if (v18 == 1)
  {
    sub_EF868(buf);
  }
}

void sub_22A694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22A6EC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a4;
  v8 = a3;
  v6[0] = &v8;
  v6[1] = &v7;
  v6[2] = &v8;
  v6[3] = &v7;
  v6[4] = &v7;
  v4 = *(a2 + 40);
  if (v4 == -1)
  {
    sub_20B4EC();
  }

  v9 = v6;
  return (off_6B9FC0[v4])(&v9);
}

CFArrayRef sub_22A750(uint64_t a1)
{
  sub_4788C(&__p, *(a1 + 8));
  v2 = *(a1 + 8);
  v3 = __p;
  if (v2)
  {
    v4 = *a1;
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      *v3++ = v6;
      v5 -= 8;
    }

    while (v5);
    v3 = __p;
  }

  v7 = sub_47904(v3, v10);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return v7;
}

void sub_22A7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22A7F8(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_12AFB0(v10, a2);
  v5 = v10;
  while (1)
  {
    v5 = v5[1];
    if (v5 == v10)
    {
      break;
    }

    v6 = v5[2];
    if (*(v6 + 40) != 7)
    {
      v7 = sub_5544(14);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v12 = "DSPChainUtilities.cpp";
        v13 = 1024;
        v14 = 138;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    sub_22A6EC(a3, v6, **(v4 + 16), **(v4 + 24));
    if (*a3)
    {
      goto LABEL_7;
    }
  }

  *a3 = 0;
LABEL_7:
  sub_87980(v10);
}

void sub_22A988(int ***a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  sub_129D90(__p, a2);
  v5 = **v4;
  if (sub_130F70(__p, v5))
  {
    v6 = sub_130F70(__p, v5);
    if (!v6)
    {
      sub_DE7DC("unordered_map::at: key not found");
    }

    sub_22A6EC(a3, v6[3], v5, *v4[1]);
  }

  else
  {
    *a3 = 0;
  }

  sub_EF820(__p[2]);
  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_22AA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_12A2C4(va);
  _Unwind_Resume(a1);
}

void sub_22AA50(uint64_t *a1@<X0>, CFTypeRef *a2@<X1>, const __CFDictionary **a3@<X8>)
{
  v4 = *a2;
  if (!*a2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "DSPChainUtilities.cpp";
      v15 = 1024;
      v16 = 148;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v11 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
LABEL_13:
    __cxa_throw(exception, v12, v11);
  }

  v5 = *a1;
  CFRetain(*a2);
  if (!sub_47D0C(v4, "ID"))
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  v6 = sub_22AC44(v4, "ID");
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v11 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Could not find item");
    goto LABEL_13;
  }

  if (sub_4A8F8(v6) != **(v5 + 32))
  {
    goto LABEL_6;
  }

  CFRetain(v4);
  v7 = v4;
LABEL_7:
  *a3 = v7;
  CFRelease(v4);
}

void sub_22AC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const UInt8 *sub_22AC44(const __CFDictionary *a1, const UInt8 *__s)
{
  Value = __s;
  v4 = strlen(__s);
  if (!Value)
  {
    v5 = 0;
    cf = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_7:
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v5 = CFStringCreateWithBytes(0, Value, v4, 0x8000100u, 0);
  cf = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  Value = CFDictionaryGetValue(a1, v5);
  v5 = cf;
  if (cf)
  {
LABEL_8:
    CFRelease(v5);
  }

LABEL_9:
  if (!a1)
  {
    return 0;
  }

  return Value;
}

void sub_22AD20(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x22ACCCLL);
}

void sub_22AD94(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_88A00(&v16, a2, "", 21);
  sub_88A00(&v15, a3, "", 22);
  v4 = v16;
  v5 = (v16 + 192);
  v6 = *(v16 + 200);
  *buf = *(v16 + 192);
  *&buf[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(&v14, buf, "", 24);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v14;
  strcpy(buf, "essaurtp");
  buf[9] = 0;
  *&buf[10] = 0;
  v8 = (*(*v14 + 16))(v14, buf);
  strcpy(buf, "edqsurtp");
  buf[9] = 0;
  *&buf[10] = 0;
  if ((v8 | (*(*v7 + 16))(v7, buf)))
  {
    v9 = *(v4 + 200);
    if (!v9)
    {
LABEL_11:
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingHandler_Utilities_N51.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 34;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get sidetone device", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003329396;
    }
  }

  else
  {
    v9 = *(v15 + 200);
    if (!v9)
    {
      goto LABEL_11;
    }

    v5 = (v15 + 192);
  }

  v10 = *v5;
  atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  operator new();
}

void sub_22B03C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22B0E4(uint64_t a1)
{
  sub_25704(&v3, (a1 + 88), "", 180);
  v1 = (*(*v3 + 200))(v3);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1 & 0xFFFFFFFFFFLL;
}

void sub_22B160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B178(uint64_t a1)
{
  sub_25704(&v15, (a1 + 88), "", 123);
  v2 = sub_5544(3);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(a1 + 8);
        sub_23148(__p, v15 + 2);
        v5 = v14 >= 0 ? __p : __p[0];
        *buf = 136316162;
        *&buf[4] = "VirtualAudio_Port.cpp";
        v18 = 1024;
        v19 = 126;
        v20 = 1024;
        v21 = v4;
        v22 = 2048;
        v23 = a1;
        v24 = 2080;
        v25 = v5;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Tearing down VirtualAudio_Port with ID %u at address %p (underlying port: %s).", buf, 0x2Cu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_Port.cpp";
        v18 = 1024;
        v19 = 127;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: routing mutex not held", buf, 0x12u);
      }
    }
  }

  atomic_store(0, (a1 + 104));
  v7 = v15;
  strcpy(buf, "manpbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  sub_164A14(v15, buf, sub_22B6BC, a1);
  strcpy(buf, "mnspbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  sub_164A14(v7, buf, sub_22B6BC, a1);
  strcpy(buf, "atspbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  sub_164A14(v7, buf, sub_22B6BC, a1);
  if ((v7[46]._os_unfair_lock_opaque & 0x40) != 0)
  {
    strcpy(buf, "rsipbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_115A44, a1);
  }

  if ((*(*&v7->_os_unfair_lock_opaque + 360))(v7))
  {
    strcpy(buf, "eitbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
    strcpy(buf, "pitbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
    strcpy(buf, "sitbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
    strcpy(buf, "sptbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
  }

  strcpy(buf, "casobolg");
  buf[9] = 0;
  *&buf[10] = 0;
  if ((*(*&v7->_os_unfair_lock_opaque + 16))(v7, buf))
  {
    strcpy(buf, "fcasbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
    strcpy(buf, "casobolg");
    buf[9] = 0;
    *&buf[10] = 0;
    sub_164A14(v7, buf, sub_22B6BC, a1);
  }

  v8 = qword_6E6DE0;
  for (i = qword_6E6DE8; v8 != i; ++v8)
  {
    v10 = *v8;
    *buf = *v8;
    *&buf[4] = 1735159650;
    if ((*(*&v7->_os_unfair_lock_opaque + 16))(v7, buf))
    {
      *buf = v10;
      *&buf[4] = 1735159650;
      sub_164A14(v7, buf, sub_22B6BC, a1);
    }
  }

  if (v16)
  {
    sub_1A8C0(v16);
  }
}

void sub_22B64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1A8C0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_22B6BC(uint64_t a1, unsigned int a2, int *a3, void *a4)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (!a2)
  {
    return;
  }

  v6 = a2;
  do
  {
    v7 = *a3;
    if (*a3 <= 1886282092)
    {
      if (v7 <= 1651798130)
      {
        if (v7 > 1651796324)
        {
          if ((v7 - 1651796325) <= 0xE && ((1 << (v7 - 101)) & 0x4801) != 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v7 == 1165513555 || v7 == 1633773925)
          {
            goto LABEL_46;
          }

          if (v7 == 1650551924)
          {
            v9 = a4;
            v10 = a4[10];
            sub_A1DF4(&v32, v10);
            v11 = v32;
            sub_4AE8C(&v32);
            *&v32 = &v32;
            *(&v32 + 1) = &v32;
            v33 = 0;
            v12 = *(v10 + 112);
            v13 = *(v12 + 408);
            v14 = *(v12 + 410);
            v25 = v11;
            sub_175EEC(v26, &v32);
            v27 = v13;
            v28 = v14;
            sub_260684(v29, 1919971427, &v25);
            sub_3A4124(v10, v29);
            a4 = v9;
            if (v31 == 1)
            {
              sub_175F78(v30);
            }

            sub_175F78(v26);
            sub_175F78(&v32);
            LODWORD(v32) = *a3;
            *(&v32 + 4) = 1735159650;
            sub_E9D44(&v22, &v32);
          }
        }

        goto LABEL_47;
      }

      if (v7 <= 1752327776)
      {
        v15 = v7 == 1651798131;
        v17 = 1668051827;
      }

      else
      {
        v15 = v7 == 1752327777 || v7 == 1819505773;
        v17 = 1869832547;
      }

      goto LABEL_41;
    }

    if (v7 <= 1936745837)
    {
      if (v7 <= 1886614624)
      {
        v15 = v7 == 1886282093;
        v17 = 1886613101;
        goto LABEL_41;
      }

      v15 = v7 == 1886614625 || v7 == 1935762278;
      v16 = 25446;
LABEL_40:
      v17 = v16 | 0x73700000;
LABEL_41:
      if (v15 || v7 == v17)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v7 <= 1936747875)
    {
      v15 = v7 == 1936745838;
      v16 = 26739;
      goto LABEL_40;
    }

    if ((v7 - 1936747876) < 2 || v7 == 2004050279)
    {
LABEL_46:
      LODWORD(v32) = *a3;
      *(&v32 + 4) = 1735159650;
      sub_E9D44(&v22, &v32);
    }

LABEL_47:
    a3 += 3;
    --v6;
  }

  while (v6);
  v21 = v22;
  if (v22 != v23)
  {
    (*(*a4 + 88))(a4, -1431655765 * ((v23 - v22) >> 2), v22, 1);
  }

  if (v21)
  {
    operator delete(v21);
  }
}

void sub_22BA08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22BA74(uint64_t a1, int *a2, uint64_t a3, unsigned int *a4, uint64_t a5, float *a6)
{
  v6 = atomic_load((a1 + 104));
  if ((v6 & 1) == 0)
  {
    v41 = sub_5544(14);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1043;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v44 = sub_5544(14);
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      v60 = *a2;
      LODWORD(v61) = a2[2];
      sub_22CE0(&__p);
    }

    v45 = __cxa_allocate_exception(0x10uLL);
    *v45 = &off_6DDDD0;
    v45[2] = 2003332927;
  }

  if ((a3 != 0) == (a4 == 0))
  {
    v46 = sub_5544(14);
    if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
    {
      v60 = *a2;
      LODWORD(v61) = a2[2];
      sub_22CE0(&__p);
    }

    v47 = __cxa_allocate_exception(0x10uLL);
    *v47 = &off_6DDDD0;
    v47[2] = 561211770;
  }

  if (!a6)
  {
    v48 = sub_5544(14);
    if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
    {
      v60 = *a2;
      LODWORD(v61) = a2[2];
      sub_22CE0(&__p);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    *v49 = &off_6DDDD0;
    v49[2] = 561211770;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v50 = sub_5544(14);
    if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
    {
      v60 = *a2;
      LODWORD(v61) = a2[2];
      sub_22CE0(&__p);
    }

    v51 = __cxa_allocate_exception(0x10uLL);
    *v51 = &off_6DDDD0;
    v51[2] = 1852797029;
  }

  v13 = *a2;
  if (*a2 > 1869832546)
  {
    if (v13 > 1936747875)
    {
      if (v13 > 1986164322)
      {
        if (v13 == 1986164323)
        {
          sub_25704(buf, (a1 + 88), "", 1090);
          (*(**buf + 48))(*buf, a2, a3, a4, a5, a6);
LABEL_41:
          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          return;
        }

        if (v13 == 1986814563)
        {
LABEL_39:
          if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
          {
            v52 = sub_5544(14);
            if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
            {
              v60 = *a2;
              LODWORD(v61) = a2[2];
              sub_22CE0(&__p);
            }

            v53 = __cxa_allocate_exception(0x10uLL);
            *v53 = &off_6DDDD0;
            v53[2] = 561211770;
          }

          sub_25704(buf, (a1 + 88), "", 1086);
          (*(**buf + 48))(*buf, a2, a3, a4, a5, a6);
          goto LABEL_41;
        }

        v14 = 2004050279;
      }

      else
      {
        if (v13 == 1936747876 || v13 == 1937204590)
        {
          goto LABEL_39;
        }

        v14 = 1952609377;
      }
    }

    else
    {
      if (v13 > 1936745317)
      {
        if (v13 == 1936745318 || v13 == 1936745838)
        {
          goto LABEL_39;
        }

        v15 = 26739;
      }

      else
      {
        if (v13 == 1869832547 || v13 == 1936221550)
        {
          goto LABEL_39;
        }

        v15 = 24944;
      }

      v14 = v15 | 0x73700000;
    }
  }

  else if (v13 > 1685287025)
  {
    if (v13 > 1752462194)
    {
      if (v13 == 1752462195 || v13 == 1767989616)
      {
        goto LABEL_39;
      }

      v14 = 1819505773;
    }

    else
    {
      if (v13 == 1685287026)
      {
        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v54 = sub_5544(14);
          if (*v54 && os_log_type_enabled(*v54, OS_LOG_TYPE_ERROR))
          {
            v60 = *a2;
            LODWORD(v61) = a2[2];
            sub_22CE0(&__p);
          }

          v55 = __cxa_allocate_exception(0x10uLL);
          *v55 = &off_6DDDD0;
          v55[2] = 561211770;
        }

        if (a3 != 8 || !a4)
        {
          v56 = sub_5544(14);
          if (*v56 && os_log_type_enabled(*v56, OS_LOG_TYPE_ERROR))
          {
            v60 = *a2;
            LODWORD(v61) = a2[2];
            sub_22CE0(&__p);
          }

          v57 = __cxa_allocate_exception(0x10uLL);
          *v57 = &off_6DDDD0;
          v57[2] = 561211770;
        }

        v17 = *(a1 + 80);
        v18 = *(a1 + 8);
        v20 = *a4;
        v19 = a4[1];
        v21 = *a6;
        sub_27A4();
        LOBYTE(__p) = (*(qword_6E94F8 + 16))();
        if (__PAIR64__(v19, v20) == 1650814258)
        {
          sub_3AF734(v17[27], v21);
        }

        v22 = v17[27];
        if (*v22 != 1 || !*(v22 + 24))
        {
          v23 = v17[18];
          if (v17[19] == v23)
          {
LABEL_71:
            v37 = sub_5544(14);
            v38 = sub_468EC(1, *v37, *(v37 + 8));
            v39 = v38;
            if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1807;
              v63 = 1024;
              LODWORD(v64) = v18;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Unable to locate a VirtualAudio_Device that uses VirtualAudioPortID %u.", buf, 0x18u);
            }

            v40 = __cxa_allocate_exception(0x10uLL);
            *v40 = &off_6DDDD0;
            v40[2] = 1852797029;
          }

          v24 = 0;
          v25 = 0;
LABEL_59:
          v26 = 0;
          v27 = *(v23 + 8 * v24);
          while (1)
          {
            v28 = v26;
            v29 = sub_9F278(v27, v26 & 1);
            v32 = *(v29 + 8);
            v30 = v29 + 8;
            v31 = v32;
            if (v32)
            {
              v33 = v30;
              do
              {
                v34 = *(v31 + 28);
                v35 = v34 >= v18;
                v36 = v34 < v18;
                if (v35)
                {
                  v33 = v31;
                }

                v31 = *(v31 + 8 * v36);
              }

              while (v31);
              if (v33 != v30 && *(v33 + 28) <= v18 && (*(**(v27 + 872) + 368))(*(v27 + 872), v20, v19, 0))
              {
                break;
              }
            }

            v26 = 1;
            if (v28)
            {
              v23 = v17[18];
              v24 = ++v25;
              if (v25 >= ((v17[19] - v23) >> 3))
              {
                goto LABEL_71;
              }

              goto LABEL_59;
            }
          }

          (*(**(v27 + 872) + 384))(*(v27 + 872), v20, v19, 0, v21);
        }

        sub_210C50(&__p);
        return;
      }

      if (v13 == 1702392685)
      {
        sub_25704(&__p, (a1 + 88), "", 67);
        v16 = *(__p + 25);
        v60 = *(__p + 24);
        v61 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        if (v59)
        {
          sub_1A8C0(v59);
        }

        sub_22CB30(buf, &v60, 1);
        sub_4DC394(a2, a3, a4, a5, a6, buf);
        sub_65310(buf);
        if (v61)
        {
          std::__shared_weak_count::__release_weak(v61);
        }

        return;
      }

      v14 = 1752327777;
    }
  }

  else if (v13 > 1651797099)
  {
    if (v13 == 1651797100 || v13 == 1651798886)
    {
      goto LABEL_39;
    }

    v14 = 1668051827;
  }

  else
  {
    if (v13 == 1633973868 || v13 == 1650551924)
    {
      goto LABEL_39;
    }

    v14 = 1651271025;
  }

  if (v13 == v14)
  {
    goto LABEL_39;
  }

  sub_20BAC(a1, a2, a3, a4, a5, a6);
}

void sub_22CA98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22CB30(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_849B8();
  }

  return result;
}

void sub_22CB9C(void *a1, uint64_t a2, int a3, int a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_25704(&v26, (a2 + 88), "", 1126);
  v8 = v26;
  if (!sub_114ABC(v26))
  {
    goto LABEL_18;
  }

  sub_250A70(v22, v8);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  strcpy(v14, "cwdv");
  v14[8] = 0;
  v15 = 3;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (a4 == 1)
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    v9 = 44731034;
    if (a3 != 1869968496)
    {
      v9 = 44731050;
    }

    if (a3 == 1768845428)
    {
      v9 = 44731018;
    }
  }

  else
  {
    v9 = 44739226;
    v18 = 44739242;
    v20 = 0;
    v21 = 0;
    __p = 0;
    if (a3 == 1768845428)
    {
      v9 = 44739210;
    }

    else if (a3 != 1869968496)
    {
      goto LABEL_13;
    }
  }

  v18 = v9;
LABEL_13:
  sub_46D2AC(v23, v22, &v11);
  sub_22D864(&v24, *(a2 + 80), v23, a4);
  v10 = v25;
  *a1 = v24;
  a1[2] = v10;
  sub_65310(v23);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v17[0]);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  sub_65310(v22);
LABEL_18:
  if (v27)
  {
    sub_1A8C0(v27);
  }
}

void sub_22CD50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  sub_65310((v2 - 120));
  sub_46934(va);
  sub_65310(va1);
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  _Unwind_Resume(a1);
}

void sub_22CD94(os_signpost_id_t *a1, uint64_t a2)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_GetPartnerPorts", 0x12uLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v4 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = qword_6F6848;
      if (os_signpost_enabled(qword_6F6848))
      {
        sub_25704(&v11, (a2 + 88), "", 793);
        v6 = v11;
        v11 = 0uLL;
        v10 = *(&v6 + 1);
        sub_23148(__p, (v6 + 8));
        if (SBYTE3(v18) >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = *__p;
        }

        *buf = 136315138;
        v13 = v7;
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "VA_GetPartnerPorts", "Get Partner Ports for (%s)", buf, 0xCu);
        if (SBYTE3(v18) < 0)
        {
          operator delete(*__p);
        }

        if (v10)
        {
          sub_1A8C0(v10);
        }

        if (*(&v11 + 1))
        {
          sub_1A8C0(*(&v11 + 1));
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  v8 = sub_5544(43);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        *__p = 136315650;
        *&__p[4] = "SignpostUtilities.h";
        v15 = 1024;
        v16 = 78;
        v17 = 2080;
        v18 = "kGetPartnerPorts";
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", __p, 0x1Cu);
      }
    }
  }
}

void sub_22D020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (*(&a9 + 1))
  {
    sub_1A8C0(*(&a9 + 1));
  }

  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D050(void *a1, uint64_t a2, int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_25704(&v17, (a2 + 88), "", 1152);
  v6 = v17;
  if (v17)
  {
    if (sub_22D7DC(v17))
    {
      sub_11319C(v13, v6);
      memset(buf, 0, 24);
      strcpy(&buf[24], "cwdv");
      buf[32] = 0;
      v20 = 3;
      v22[0] = 0;
      v22[1] = 0;
      v21 = v22;
      v25 = 0;
      v26 = 0;
      if (a3 == 1869968496)
      {
        v7 = 44731034;
      }

      else
      {
        v7 = 44731050;
      }

      __p = 0;
      if (a3 == 1768845428)
      {
        v8 = 44731018;
      }

      else
      {
        v8 = v7;
      }

      v23 = v8;
      sub_46D2AC(v14, v13, buf);
      sub_22D864(v15, *(a2 + 80), v14, 1);
      v9 = v16;
      *a1 = *v15;
      a1[2] = v9;
      sub_65310(v14);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v22[0]);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      sub_65310(v13);
    }

    else
    {
      v10 = sub_5544(24);
      v11 = *v10;
      if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        sub_23148(v15, v6 + 2);
        v12 = v16 >= 0 ? v15 : v15[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Port.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1161;
        *&buf[18] = 2080;
        *&buf[20] = v12;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No partner ports found for (%s)", buf, 0x1Cu);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }
      }
    }
  }

  if (v18)
  {
    sub_1A8C0(v18);
  }
}

void sub_22D290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char a21)
{
  if (a20)
  {
    sub_1A8C0(a20);
  }

  _Unwind_Resume(exception_object);
}

os_signpost_id_t *sub_22D2E4(os_signpost_id_t *a1)
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
        v10 = 78;
        v11 = 2080;
        v12 = "kGetPartnerPorts";
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
        _os_signpost_emit_with_name_impl(&dword_0, v5, OS_SIGNPOST_INTERVAL_END, v4, "VA_GetPartnerPorts", "", &v7, 2u);
      }
    }
  }

  return a1;
}

void sub_22D474(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_22D480(uint64_t a1, uint64_t a2)
{
  v10 = 0uLL;
  v11 = 0;
  sub_25704(&v6, (a2 + 88), "", 1250);
  v3 = *(v6 + 128);
  v8 = v3;
  v9 = BYTE4(v3);
  if (v7)
  {
    sub_1A8C0(v7);
  }

  if ((v3 & 0x100000000) != 0)
  {
    sub_9EF84(&v10, &v8);
    v5 = v10;
    v4 = v10;
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
  }

  sub_A06B0(a1, v5, *(&v5 + 1));
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_22D540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D558(uint64_t a1, _DWORD *a2, void *a3)
{
  sub_25704(&v8, (a1 + 88), "", 1190);
  sub_250794(&v10, v8);
  if (v9)
  {
    sub_1A8C0(v9);
  }

  v5 = v10;
  v6 = (v11 - v10) >> 2;
  if (v6 >= *a2 >> 2)
  {
    v6 = *a2 >> 2;
  }

  v7 = (4 * v6);
  *a2 = v7;
  if (v6)
  {
    memcpy(a3, v5, v7);
  }

  if (v5)
  {
    v11 = v5;
    operator delete(v5);
  }
}

void sub_22D604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_22D61C(void *a1, uint64_t a2, char *a3, int a4)
{
  v5[0] = v5;
  v5[1] = v5;
  v5[2] = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    sub_25704(&v6, (v4 + 16), a3, a4);
    operator new();
  }

  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_87980(v5);
}

void sub_22D734(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_87980(va);
  _Unwind_Resume(a1);
}

void sub_22D75C(void *a1, uint64_t *a2)
{
  sub_25704(&v5, a2, "", 67);
  v3 = *(v5 + 200);
  *a1 = *(v5 + 192);
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = v6;
  if (v6)
  {

    sub_1A8C0(v4);
  }
}

BOOL sub_22D7DC(uint64_t a1)
{
  v2 = a1 + 368;
  v3 = (*(*(a1 + 368) + 16))(a1 + 368);
  v4 = *(a1 + 360);
  if (v3)
  {
    (*(*v2 + 24))(v2);
  }

  return v4 != 0;
}

void sub_22D864(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v21 = 0;
  v22 = 0;
  __p = 0;
  if (a4 == 1)
  {
    v5 = 44731050;
  }

  else
  {
    v5 = 44739242;
  }

  strcpy(v15, "cwdv");
  v15[8] = 0;
  v16 = 3;
  v17 = v18;
  v19 = v5;
  sub_87760(&v23, a2, a3, &v12);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  sub_477A0(v18[0]);
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  v6 = v23;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  if (v6 != v24)
  {
    v7 = 0;
    v8 = v6;
    while (1)
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
      if (v10 == v24)
      {
        sub_469FC(a1, v7);
      }
    }
  }

  sub_477A0(v24[0]);
}

void sub_22D9D8(_Unwind_Exception *a1)
{
  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  sub_477A0(*(v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_22DA0C(uint64_t a1, int a2)
{
  sub_25704(&v22, (a1 + 88), "", 1112);
  v4 = v22;
  if (sub_114ABC(v22))
  {
    sub_250A70(v20, v4);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    strcpy(v12, "cwdv");
    v12[8] = 0;
    v13 = 3;
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    v18 = 0;
    v19 = 0;
    if (a2 == 1869968496)
    {
      v5 = 44731034;
    }

    else
    {
      v5 = 44731050;
    }

    __p = 0;
    if (a2 == 1768845428)
    {
      v6 = 44731018;
    }

    else
    {
      v6 = v5;
    }

    v16 = v6;
    sub_46D2AC(v21, v20, &v9);
    v7 = sub_22DD24(a1, v21);
    sub_65310(v21);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v15[0]);
    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    sub_65310(v20);
  }

  else
  {
    v7 = 0;
  }

  if (v23)
  {
    sub_1A8C0(v23);
  }

  return v7;
}

void sub_22DB54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310((v2 - 72));
  sub_46934(va);
  sub_65310((v2 - 96));
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22DB98(uint64_t a1, int a2)
{
  sub_25704(&v22, (a1 + 88), "", 1141);
  v4 = v22;
  if (sub_22D7DC(v22))
  {
    sub_11319C(v20, v4);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    strcpy(v12, "cwdv");
    v12[8] = 0;
    v13 = 3;
    v15[0] = 0;
    v15[1] = 0;
    v14 = v15;
    v18 = 0;
    v19 = 0;
    if (a2 == 1869968496)
    {
      v5 = 44731034;
    }

    else
    {
      v5 = 44731050;
    }

    __p = 0;
    if (a2 == 1768845428)
    {
      v6 = 44731018;
    }

    else
    {
      v6 = v5;
    }

    v16 = v6;
    sub_46D2AC(v21, v20, &v9);
    v7 = sub_22DD24(a1, v21);
    sub_65310(v21);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v15[0]);
    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    sub_65310(v20);
  }

  else
  {
    v7 = 0;
  }

  if (v23)
  {
    sub_1A8C0(v23);
  }

  return v7;
}

void sub_22DCE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_65310((v2 - 72));
  sub_46934(va);
  sub_65310((v2 - 96));
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22DD24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  do
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    strcpy(v14, "cwdv");
    v14[8] = 0;
    v15 = 3;
    v17[0] = 0;
    v17[1] = 0;
    v16 = v17;
    v20 = 0;
    v21 = 0;
    __p = 0;
    v18 = 44731048;
    v6 = *(a1 + 80);
    sub_88A00(&v9, (v2 + 16), "", 1175);
    v7 = sub_9DE4C(*(v6 + 128), v9, &v11);
    if (v10)
    {
      sub_1A8C0(v10);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    sub_477A0(v17[0]);
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v7)
    {
      v5 = (v5 + 1);
    }

    else
    {
      v5 = v5;
    }

    v2 = *(v2 + 8);
  }

  while (v2 != a2);
  return v5;
}

void sub_22DE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_46934(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22DE78(uint64_t a1, int *a2)
{
  v2 = atomic_load((a1 + 104));
  if ((v2 & 1) == 0)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 393;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  v4 = 0;
  v5 = *a2;
  if (*a2 <= 1886353261)
  {
    if (v5 <= 1752327776)
    {
      if (v5 <= 1651797099)
      {
        if (v5 > 1650551923)
        {
          if (v5 > 1651796324)
          {
            v10 = v5 - 1651796325;
            if (v10 <= 0xE && ((1 << v10) & 0x4801) != 0)
            {
              return v4;
            }

            goto LABEL_126;
          }

          if (v5 == 1650551924 || v5 == 1651271025)
          {
            goto LABEL_120;
          }

          v6 = 1651794290;
          goto LABEL_119;
        }

        if (v5 > 1633773924)
        {
          if (v5 == 1633773925 || v5 == 1633973868)
          {
            goto LABEL_120;
          }

          v6 = 1650551140;
          goto LABEL_119;
        }

        if (v5 == 1165513555)
        {
          goto LABEL_120;
        }

        v8 = 1633772644;
        goto LABEL_115;
      }

      if (v5 <= 1685021039)
      {
        if (v5 > 1651798885)
        {
          if (v5 == 1651798886 || v5 == 1668051827)
          {
            goto LABEL_120;
          }

          v6 = 1684826732;
          goto LABEL_119;
        }

        if (v5 == 1651797100)
        {
          goto LABEL_120;
        }

        v8 = 1651798131;
        goto LABEL_115;
      }

      if (v5 <= 1685287025)
      {
        if (v5 == 1685021040)
        {
          return v4;
        }

        v8 = 1685088612;
        goto LABEL_115;
      }

      if (v5 != 1685287026)
      {
        if (v5 != 1685484390)
        {
          if (v5 == 1702392685)
          {
            v15 = *a2;
            v16 = a2[2];
            sub_22D75C(&v17, (a1 + 88));
            sub_22CB30(buf, &v17, 1);
            v4 = sub_BE40C(&v15, buf);
            sub_65310(buf);
            if (v18)
            {
              std::__shared_weak_count::__release_weak(v18);
            }

            return v4;
          }

          goto LABEL_126;
        }

        return v4;
      }

      return 1;
    }

    if (v5 > 1885561195)
    {
      if (v5 <= 1885956207)
      {
        if (v5 <= 1885696115)
        {
          if (v5 == 1885561196)
          {
            return v4;
          }

          v8 = 1885566064;
        }

        else
        {
          if (v5 == 1885696116 || v5 == 1885759844)
          {
            return v4;
          }

          v8 = 1885955428;
        }
      }

      else if (v5 > 1886220901)
      {
        if (v5 == 1886220902 || v5 == 1886282093)
        {
          return v4;
        }

        v8 = 1886282099;
      }

      else
      {
        if (v5 == 1885956208 || v5 == 1885959026)
        {
          return v4;
        }

        v8 = 1886218596;
      }

      goto LABEL_115;
    }

    if (v5 <= 1819503986)
    {
      if (v5 > 1767989615)
      {
        if (v5 == 1767989616)
        {
          goto LABEL_120;
        }

        if (v5 == 1768382832)
        {
          return v4;
        }

        v8 = 1819046768;
        goto LABEL_115;
      }

      if (v5 != 1752327777)
      {
        v6 = 1752462195;
        goto LABEL_119;
      }

      return v4;
    }

    if (v5 <= 1869832546)
    {
      if (v5 == 1819503987)
      {
        goto LABEL_120;
      }

      v6 = 1819505773;
LABEL_119:
      if (v5 == v6)
      {
        goto LABEL_120;
      }

      goto LABEL_126;
    }

    if (v5 == 1869832547)
    {
      goto LABEL_120;
    }

    if (v5 == 1885430643)
    {
      return v4;
    }

    v8 = 1885434722;
LABEL_115:
    if (v5 != v8)
    {
      goto LABEL_126;
    }

    return v4;
  }

  if (v5 <= 1936746610)
  {
    if (v5 <= 1886681455)
    {
      if (v5 > 1886611809)
      {
        if (v5 <= 1886613618)
        {
          if (v5 == 1886611810)
          {
            return v4;
          }

          v9 = 28269;
        }

        else
        {
          if (v5 == 1886613619 || v5 == 1886614625)
          {
            return v4;
          }

          v9 = 30050;
        }

        v8 = v9 | 0x70730000;
      }

      else if (v5 <= 1886417523)
      {
        if (v5 == 1886353262)
        {
          return v4;
        }

        v8 = 1886415204;
      }

      else
      {
        if (v5 == 1886417524 || v5 == 1886417762)
        {
          return v4;
        }

        v8 = 1886484338;
      }

      goto LABEL_115;
    }

    if (v5 <= 1936221549)
    {
      if (v5 <= 1886810225)
      {
        if (v5 == 1886681456)
        {
          return v4;
        }

        v8 = 1886742884;
      }

      else
      {
        if (v5 == 1886810226 || v5 == 1935762278)
        {
          return v4;
        }

        v8 = 1935895923;
      }

      goto LABEL_115;
    }

    if (v5 > 1936745317)
    {
      if (v5 == 1936745318)
      {
        goto LABEL_120;
      }

      if (v5 == 1936745586)
      {
        return v4;
      }

      v7 = 25966;
    }

    else
    {
      if (v5 == 1936221550 || v5 == 1936225136)
      {
        goto LABEL_120;
      }

      v7 = 24944;
    }

    goto LABEL_91;
  }

  if (v5 <= 1953653605)
  {
    if (v5 > 1936749679)
    {
      if (v5 <= 1937204589)
      {
        if (v5 != 1936749680)
        {
          v6 = 1936945763;
          goto LABEL_119;
        }

        return v4;
      }

      if (v5 == 1937204590 || v5 == 1952609377)
      {
        goto LABEL_120;
      }

      v8 = 1952740208;
      goto LABEL_115;
    }

    if (v5 > 1936748140)
    {
      if (v5 == 1936748141)
      {
        return v4;
      }

      v8 = 1936748656;
      goto LABEL_115;
    }

    if ((v5 - 1936747876) < 2)
    {
      goto LABEL_120;
    }

    v7 = 26739;
LABEL_91:
    v6 = v7 | 0x73700000;
    goto LABEL_119;
  }

  if (v5 <= 1986164322)
  {
    if (v5 <= 1953719141)
    {
      if (v5 == 1953653606)
      {
        return v4;
      }

      v8 = 1953655149;
    }

    else
    {
      if (v5 == 1953719142 || v5 == 1970040164)
      {
        return v4;
      }

      v8 = 1970496630;
    }

    goto LABEL_115;
  }

  if (v5 > 1986947427)
  {
    if (v5 == 1986947428 || v5 == 2004050279)
    {
      goto LABEL_120;
    }

    v8 = 2004054901;
    goto LABEL_115;
  }

  if (v5 == 1986164323)
  {
LABEL_120:
    sub_25704(buf, (a1 + 88), "", 489);
    v4 = (*(**buf + 24))(*buf, a2);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    return v4;
  }

  if (v5 == 1986814563)
  {
    return 1;
  }

LABEL_126:

  return sub_201D4(a1, a2);
}

void sub_22E71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
{
  sub_65310(&a13);
  if (a12)
  {
    std::__shared_weak_count::__release_weak(a12);
  }

  _Unwind_Resume(a1);
}

BOOL sub_22E774()
{
  sub_27A4();
  v0 = atomic_load(&qword_6E9558);
  return v0 == pthread_self();
}

uint64_t sub_22E7B0()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 24);

  return v0();
}

uint64_t sub_22E800()
{
  sub_27A4();
  v0 = *(qword_6E94F8 + 16);

  return v0();
}

void sub_22E850(uint64_t a1)
{
  sub_22E888(a1);

  operator delete();
}

uint64_t sub_22E888(uint64_t a1)
{
  *a1 = off_6BA068;
  v2 = sub_5544(3);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 8);
    v7 = 136315906;
    v8 = "VirtualAudio_Port.cpp";
    v9 = 1024;
    v10 = 118;
    v11 = 1024;
    v12 = v4;
    v13 = 2048;
    v14 = a1;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroying VirtualAudio_Port with ID %u at address %p.", &v7, 0x22u);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_13E5EC(a1);
  return a1;
}

void sub_22E994(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

_BYTE *sub_22E9A4(uint64_t a1, uint64_t a2)
{
  sub_27A4();
  v26 = (*(qword_6E94F8 + 16))();
  v4 = atomic_load((a1 + 104));
  if ((v4 & 1) == 0)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Port.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 201;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Underlying Port is not valid", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Underlying Port is not valid");
  }

  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  v7 = (a1 + 88);
  *buf = v6;
  *&buf[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  sub_22ED54(v25, buf, 1);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_weak(*&buf[8]);
  }

  v8 = sub_5544(3);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
  {
    sub_25704(&v21, v7, "", 210);
    v10 = v23;
    sub_22170(v23, *(v21 + 144));
    if (v24 < 0)
    {
      v10 = v23[0];
    }

    sub_25704(&v17, v7, "", 210);
    if (*(v17 + 303) < 0)
    {
      sub_54A0(__p, *(v17 + 280), *(v17 + 288));
    }

    else
    {
      *__p = *(v17 + 280);
      v20 = *(v17 + 296);
    }

    v11 = __p;
    if (v20 < 0)
    {
      v11 = __p[0];
    }

    *buf = 136316162;
    *&buf[4] = "VirtualAudio_Port.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 210;
    v28 = 1024;
    v29 = a2;
    v30 = 2080;
    v31 = v10;
    v32 = 2080;
    v33 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%25s:%-5d Request to set port routability to %u for port with type '%s' and UID %s", buf, 0x2Cu);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (v18)
    {
      sub_1A8C0(v18);
    }

    if (v24 < 0)
    {
      operator delete(v23[0]);
    }

    if (v22)
    {
      sub_1A8C0(v22);
    }
  }

  sub_1DB7C8(buf);
  v12 = sub_809C0();
  sub_1150D4(v12, v25, a2, 0);
  sub_1DB63C(buf);
  sub_65310(v25);
  return sub_210C50(&v26);
}

void sub_22ECB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_1A8C0(a15);
  }

  sub_65310(&a22);
  sub_210C50((v22 - 97));
  _Unwind_Resume(a1);
}

void *sub_22ED54(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    sub_849B8();
  }

  return result;
}

BOOL sub_22EDC8(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4 = 4;
  if (sub_44FB2C(*(a1 + 8), 0x63647370u, 0, 0, &v4, &v5, a2))
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  return !v2;
}

BOOL sub_22EE68(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v4 = 4;
  if (sub_44FB2C(*(a1 + 8), 0x45616E63u, 0, 0, &v4, &v5, a2))
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  return !v2;
}

uint64_t sub_22EEC4(uint64_t **a1, int a2, uint64_t a3)
{
  v10 = a2;
  result = sub_44F7FC(a1[1], 0x45616E63u, 0, 0, 4, &v10, a3);
  if (a2 && !result)
  {
    v7 = -11;
    while (!__CFADD__(v7++, 1))
    {
      usleep(0xBB8u);
      v9 = 0;
      ((*a1)[6])(a1, a1[1], a1 + 3, 196621, 1, 1, &v9, a3);
      if ((v9 & 2) != 0)
      {
        return 0;
      }
    }

    return 5;
  }

  return result;
}

uint64_t sub_22EF9C(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v10 = *a2;
    v9 = a2[1];
    if (v9 != *a2)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v8 = *(a3 + 3);
  v10 = *a2;
  v9 = a2[1];
  if (v9 == *a2)
  {
    if (*(a3 + 3))
    {
      v22 = 0;
      *(a3 + 4) = 0;
      return v22;
    }

    return 0;
  }

  if (!*(a3 + 3))
  {
LABEL_6:
    v34 = 0;
    v33 = 0;
    goto LABEL_7;
  }

  v33 = mach_absolute_time();
  v10 = *a2;
  v9 = a2[1];
  v34 = 1;
LABEL_7:
  __src = 0;
  v37 = 0;
  v38 = 0;
  if (v9 != v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v35 = a4;
    do
    {
      v16 = atomic_load(a1 + 40);
      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = (*a2 + 8 * v11);
      v19 = *v17;
      v18 = v17[1];
      if (v15)
      {
        sub_F2A2C(&__src, 0);
        v13 = (v19 - 1);
        v14 = v19;
      }

      if (v19 - v13 == 1)
      {
        v20 = v37;
        if (v37 >= v38)
        {
          v23 = __src;
          v24 = v37 - __src;
          v25 = (v37 - __src) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            sub_189A00();
          }

          v27 = v38 - __src;
          if ((v38 - __src) >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v28 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            sub_1D7C28(v28);
          }

          v29 = (4 * v25);
          v30 = &v29[-((v37 - __src) >> 2)];
          *v29 = v18;
          v21 = (v29 + 1);
          memcpy(v30, v23, v24);
          v31 = __src;
          __src = v30;
          v37 = v21;
          v38 = 0;
          if (v31)
          {
            operator delete(v31);
          }

          a4 = v35;
        }

        else
        {
          *v37 = v18;
          v21 = v20 + 4;
        }

        v37 = v21;
        v11 = ++v12;
        if (v12 == (a2[1] - *a2) >> 3)
        {
          v22 = (*(*a1 + 88))(a1, v14, &__src, a3, a4);
          if (v22)
          {
            goto LABEL_34;
          }

          v15 = 1;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v22 = (*(*a1 + 88))(a1, v14, &__src, a3, a4);
        if (v22)
        {
          goto LABEL_34;
        }

        v11 = v12;
        v15 = 1;
        v19 = v13;
      }

      v13 = v19;
    }

    while (v11 < (a2[1] - *a2) >> 3);
  }

  v22 = 0;
LABEL_34:
  if (v34)
  {
    *(a3 + 4) = sub_37D544(v33);
  }

  if (__src)
  {
    v37 = __src;
    operator delete(__src);
  }

  return v22;
}

void sub_22F250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22F274(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v70 = (*(*a1 + 24))(a1);
  if (a4)
  {
    v67 = *a4 ^ 1;
    v8 = *(a4 + 3);
    v62 = *(a4 + 1);
  }

  else
  {
    v8 = 0;
    v62 = 0;
    v67 = 1;
  }

  v9 = *(a1 + 16);
  if (!v9)
  {
    v9 = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    *(a1 + 16) = v9;
  }

  if (!(v67 & 1 | ((v62 & 1) == 0)))
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v72 = "L71Device.cpp";
      v73 = 1024;
      v74 = 274;
      v75 = 2080;
      v76 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s cannot write memory asynchronously with verifyWrite enabled.", buf, 0x1Cu);
    }

    return 5;
  }

  if (a3[1] == *a3)
  {
    v12 = 0;
    if (v8)
    {
      *(a4 + 4) = 0;
    }

    return v12;
  }

  if (a4 && *(a4 + 3) == 1)
  {
    v56 = mach_absolute_time();
    v9 = *(a1 + 16);
  }

  else
  {
    v56 = 0;
  }

  if (v70)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v57 = v8;
  v58 = v13;
  if (v62)
  {
    v69 = malloc_type_calloc(v9, 4uLL, 0x100004052888210uLL);
  }

  else
  {
    v69 = 0;
  }

  v14 = a3;
  v15 = a3[1];
  v60 = v14;
  v16 = *v14;
  if ((v70 & 1) == 0)
  {
    if (v16 != v15)
    {
      v17 = *v16;
      operator new();
    }

    goto LABEL_95;
  }

  if (v15 == v16)
  {
LABEL_95:
    v12 = 0;
    goto LABEL_96;
  }

  v61 = a4;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v63 = v9 >> v58;
  v21 = v60;
  while (1)
  {
    v22 = atomic_load((a1 + 40));
    if ((v22 & 1) == 0)
    {
LABEL_94:
      v12 = 0;
      a4 = v61;
LABEL_96:
      v47 = v57;
      goto LABEL_97;
    }

    v23 = *v21;
    v24 = (v21[1] - *v21) >> 2;
    if (v63 >= v24 - v20)
    {
      v25 = v24 - v20;
    }

    else
    {
      v25 = v63;
    }

    if (v70)
    {
      v26 = v23 + 4 * v19;
    }

    else
    {
      v26 = v19;
    }

    v66 = v26;
    if (v70)
    {
      v27 = 0;
    }

    else
    {
      v27 = v19;
    }

    if (v70)
    {
      v28 = (v23 + 4 * v19);
    }

    else
    {
      v28 = 0;
    }

    if (!*(a1 + 16))
    {
      *(a1 + 16) = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    }

    if (!v61 || *(v61 + 2) != 1)
    {
      break;
    }

    if (v70)
    {
      if (!v25)
      {
        goto LABEL_93;
      }

      v29 = 0;
      v30 = (v18 + v24);
      if (v63 < v30)
      {
        v30 = v63;
      }

      do
      {
        v31 = *v28++;
        v29 |= v31;
        --v30;
      }

      while (v30);
    }

    else
    {
      if (!v25)
      {
        goto LABEL_93;
      }

      v29 = 0;
      v32 = (v18 + v24);
      if (v63 < v32)
      {
        v32 = v63;
      }

      do
      {
        v33 = *v27++;
        v29 |= v33;
        --v32;
      }

      while (v32);
    }

    if (v29)
    {
      break;
    }

LABEL_93:
    v21 = v60;
    v18 -= v63;
    v20 += v63;
    v19 = v20;
    if (v20 >= ((v60[1] - *v60) >> 2))
    {
      goto LABEL_94;
    }
  }

  v34 = atomic_load((a1 + 40));
  if ((v34 & 1) == 0)
  {
    goto LABEL_93;
  }

  v35 = v20 + a2;
  v65 = v25 << v58;
  if (v63 >= (v18 + v24))
  {
    v36 = (v18 + v24);
  }

  else
  {
    v36 = v63;
  }

  v64 = v23 + 4 * v20;
  v37 = 1;
  v38 = 5;
  while (2)
  {
    v12 = (*(*a1 + 56))(a1, *(a1 + 8), a1 + 24, v67 & 1, v35, v25, v65, v66, a5);
    if (!v12)
    {
      if ((v62 & 1) != 0 && !sub_22FC28(a1, v35))
      {
        v12 = (*(*a1 + 48))(a1, *(a1 + 8), a1 + 24, v35, v25, v65, v69, a5);
        if (v12)
        {
          v49 = sub_5544(26);
          v50 = *v49;
          if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316418;
            v72 = "L71Device.cpp";
            v73 = 1024;
            v74 = 347;
            v75 = 2080;
            v76 = "SetDataBlockWithOptions";
            v77 = 1024;
            v78 = v20 + a2;
            v79 = 1024;
            v80 = v25;
            v81 = 1024;
            v82 = v12;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s _GetRegister( addr=0x%x, len=%d) failed, status = %d", buf, 0x2Eu);
          }

          goto LABEL_105;
        }

        if (!v25)
        {
          goto LABEL_93;
        }

        v42 = 0;
        while (1)
        {
          if (v70)
          {
            v43 = *(v64 + 4 * v42);
            v44 = v69[v42];
          }

          else
          {
            v43 = *(v20 + v42);
            v44 = *(v69 + v42);
          }

          if (v43 != v44)
          {
            if (HIBYTE(v44) != 255)
            {
              break;
            }

            if ((v43 & 0xFF800000) != 0x800000 || ((v44 ^ v43) & 0xFFFFFF) != 0)
            {
              break;
            }
          }

          if (v36 == ++v42)
          {
            goto LABEL_93;
          }
        }

        v46 = *sub_5544(26);
        if (v46)
        {
          log = v46;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316674;
            v72 = "L71Device.cpp";
            v73 = 1024;
            v74 = 371;
            v75 = 2080;
            v76 = "SetDataBlockWithOptions";
            v77 = 1024;
            v78 = v43;
            v79 = 1024;
            v80 = v44;
            v81 = 1024;
            v82 = v35 + v42;
            v83 = 1024;
            v84 = v38;
            _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s verify failed (0x%x != 0x%x), addr=0x%x. Tries remaining = %u", buf, 0x34u);
          }
        }
      }

      else if (v37)
      {
        goto LABEL_93;
      }

      v37 = 0;
      v12 = 0;
      goto LABEL_70;
    }

    v39 = sub_5544(26);
    v40 = *v39;
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v72 = "L71Device.cpp";
      v73 = 1024;
      v74 = 340;
      v75 = 2080;
      v76 = "SetDataBlockWithOptions";
      v77 = 1024;
      v78 = v20 + a2;
      v79 = 1024;
      v80 = v25;
      v81 = 1024;
      v82 = v12;
      v83 = 1024;
      v84 = v38 - 1;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s _SetRegister( addr=0x%x, len=%d) failed, status = %d. Tries remaining = %d", buf, 0x34u);
    }

LABEL_70:
    if (--v38)
    {
      v41 = atomic_load((a1 + 40));
      if (v41)
      {
        continue;
      }
    }

    break;
  }

  if (v12)
  {
LABEL_105:
    v51 = sub_5544(26);
    v52 = *v51;
    a4 = v61;
    v47 = v57;
    if (*v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v72 = "L71Device.cpp";
      v73 = 1024;
      v74 = 381;
      v75 = 2080;
      v76 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s Failed", buf, 0x1Cu);
    }

    goto LABEL_97;
  }

  if (v37)
  {
    goto LABEL_93;
  }

  v53 = sub_5544(26);
  v54 = *v53;
  a4 = v61;
  v47 = v57;
  if (*v53)
  {
    if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v72 = "L71Device.cpp";
      v73 = 1024;
      v74 = 386;
      v75 = 2080;
      v76 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s verification failed", buf, 0x1Cu);
    }

    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v12 = 0xFFFFFFFFLL;
  }

LABEL_97:
  if (v62)
  {
    free(v69);
  }

  if (v47)
  {
    *(a4 + 4) = sub_37D544(v56);
  }

  return v12;
}

void sub_22FBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22FD34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  if (sub_44FE3C(a2, 1935831628, v19, a3) || sub_44FE3C(a2, 1935832908, v17, a3))
  {
    __cxa_allocate_exception(0x10uLL);
    operator new();
  }

  v5 = v20;
  v6 = v18;
  if (!v20 || v20 != v18)
  {
    v9 = sub_5544(26);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 136316162;
      *&v12[1] = "L71Device.cpp";
      *(&v12[3] + 2) = 51;
      HIWORD(v12[4]) = 2080;
      LOWORD(v12[3]) = 1024;
      *&v12[5] = "GetBufferSize";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s ERROR: Audio driver returned invalid buffer lengths (read=%u, write=%u)", v12, 0x28u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Audio driver returned invalid buffer lengths");
  }

  return v20;
}

uint64_t sub_230040(int a1, uint64_t a2, NSObject **a3, uint64_t a4, int a5, int a6, size_t size, void *buffer, uint64_t a9)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  if (!a9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  if (a6)
  {
    v9 = a4;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_2301D0;
    v14[3] = &unk_6BA0F8;
    v15 = size;
    v16 = a5;
    v14[6] = a2;
    v14[7] = a9;
    v17 = a6;
    v18 = a4;
    v14[4] = &v19;
    v14[5] = dispatch_data_create(buffer, size, 0, 0);
    v11 = *a3;
    if (v9)
    {
      dispatch_sync(v11, v14);
      v9 = *(v20 + 6);
    }

    else
    {
      dispatch_async(v11, v14);
      *(v20 + 6) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_2301A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2301D0(uint64_t a1)
{
  v12 = 0;
  buffer_ptr = 0;
  v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &v12);
  if (v12 >= *(a1 + 64))
  {
    v7 = sub_44F7FC(*(a1 + 48), 0x73627761u, 0, 0, 4, (a1 + 68), *(a1 + 56));
    if (!v7)
    {
      v7 = sub_44F7FC(*(a1 + 48), 0x7362776Cu, 0, 0, 4, (a1 + 72), *(a1 + 56));
      if (!v7)
      {
        *buf = 0;
        v7 = sub_44F7FC(*(a1 + 48), 0x63616E63u, 4, buf, *(a1 + 64), buffer_ptr, *(a1 + 56));
      }
    }

    v6 = v7;
  }

  else
  {
    v3 = sub_5544(26);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      *buf = 136316162;
      v15 = "L71Device.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 2080;
      v19 = "SetRegister_block_invoke";
      v20 = 2048;
      *v21 = v12;
      *&v21[8] = 1024;
      v22[0] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s Invalid data buffer size (%lu != %u)", buf, 0x2Cu);
    }

    v6 = -2;
  }

  dispatch_release(v2);
  dispatch_release(*(a1 + 40));
  if (v6)
  {
    v8 = sub_5544(26);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 68);
        v11 = *(a1 + 72);
        *buf = 136316418;
        v15 = "L71Device.cpp";
        v16 = 1024;
        v17 = 89;
        v18 = 2080;
        v19 = "SetRegister_block_invoke";
        v20 = 1024;
        *v21 = v10;
        *&v21[4] = 1024;
        *&v21[6] = v11;
        LOWORD(v22[0]) = 1024;
        *(v22 + 2) = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
      }
    }
  }

  if (*(a1 + 76) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t sub_230434(uint64_t a1, uint64_t a2, NSObject **a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  if (!a8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  v8 = a5;
  if (a5)
  {
    v10 = *a3;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_23064C;
    v16[3] = &unk_6BA148;
    v16[4] = &v20;
    v16[5] = a2;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v16[6] = a8;
    v16[7] = a7;
    dispatch_sync(v10, v16);
    if (*(v21 + 6))
    {
      v11 = sub_5544(26);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v21 + 6);
          *buf = 136316418;
          v25 = "L71Device.cpp";
          v26 = 1024;
          v27 = 128;
          v28 = 2080;
          v29 = "GetRegister";
          v30 = 1024;
          v31 = a4;
          v32 = 1024;
          v33 = v8;
          v34 = 1024;
          v35 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
        }
      }
    }

    v8 = *(v21 + 6);
  }

  _Block_object_dispose(&v20, 8);
  return v8;
}

void sub_230620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23064C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_2306D8;
  v3[3] = &unk_6BA120;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return sub_138DB0(v3);
}

uint64_t sub_2306D8(uint64_t a1)
{
  result = sub_44F7FC(*(a1 + 40), 0x73627261u, 0, 0, 4, (a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    result = sub_44F7FC(*(a1 + 40), 0x7362726Cu, 0, 0, 4, (a1 + 68), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (!result)
    {
      v3 = *(a1 + 72);
      v4 = 0;
      result = sub_44FB2C(*(a1 + 40), 0x63616E63u, 4, &v4, &v3, *(a1 + 56), *(a1 + 48));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void sub_2307C8(uint64_t a1)
{
  sub_1D8A20(a1);

  operator delete();
}

void sub_230804(uint64_t a1)
{
  *a1 = off_6BA328;
  sub_230874(*(a1 + 48));
  sub_4E0BC((a1 + 8));

  operator delete();
}

void sub_230874(void *a1)
{
  if (a1)
  {
    sub_230874(*a1);
    sub_230874(a1[1]);
    sub_2308C8((a1 + 4));

    operator delete(a1);
  }
}

void sub_2308C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_23093C(uint64_t a1)
{
  *a1 = off_6BA328;
  sub_230874(*(a1 + 48));
  sub_4E0BC((a1 + 8));
  return a1;
}

uint64_t sub_23098C(uint64_t a1, void *a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *v19 = 136315394;
        *&v19[4] = "VirtualAudio_PortManager.cpp";
        *&v19[12] = 1024;
        *&v19[14] = 216;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: routing mutex not held", v19, 0x12u);
      }
    }
  }

  if ((*(*a2 + 152))(a2))
  {
    memset(v19, 0, sizeof(v19));
    strcpy(v20, "cwdv");
    v20[8] = 0;
    v21 = 3;
    v23[0] = 0;
    v23[1] = 0;
    v22 = v23;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 44739240;
    if (sub_9DE4C(a1, a2, v19))
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v29 = "VirtualAudio_PortManager.cpp";
        v30 = 1024;
        v31 = 228;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v5 = *(*(a1 + 32) + 8);
    if (!AudioObjectCreate())
    {
      v11 = a2[10];
      v10 = a2[11];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
      }

      v12 = *(a1 + 32);
      operator new();
    }

    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "VirtualAudio_PortManager.cpp";
      v30 = 1024;
      v31 = 237;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theResult): error creating virtual audio port object", buf, 0x12u);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v25);
    }

    sub_477A0(v23[0]);
    if (*v19)
    {
      *&v19[8] = *v19;
      operator delete(*v19);
    }
  }

  else
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "VirtualAudio_PortManager.cpp";
      *&v19[12] = 1024;
      *&v19[14] = 220;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: specified port is not connected", v19, 0x12u);
    }
  }

  return 0;
}

void sub_2316A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_46934(&a15);
  _Unwind_Resume(a1);
}

void sub_231844(void *a1, unint64_t *a2)
{
  v3 = sub_869CC(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = *(v3 + 8);
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    --a1[2];
    sub_75234(v9, v4);
    sub_2308C8((v4 + 4));

    operator delete(v4);
  }
}

void sub_231984(void *a1, uint64_t a2)
{
  if (!a1[2])
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 381;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: handed empty port list", buf, 0x12u);
      }
    }
  }

  if (!a2)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 382;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: handed NULL client data", buf, 0x12u);
      }
    }
  }

  v18 = 0uLL;
  v19 = 0;
  sub_27A4();
  v17 = (*(qword_6E94F8 + 16))();
  v4 = a1[1];
  if (v4 != a1)
  {
    v5 = 0;
    while (1)
    {
      v6 = v4[3];
      if (!v6)
      {
        break;
      }

      v7 = std::__shared_weak_count::lock(v6);
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = v4[2];
      if (!v8)
      {
        goto LABEL_12;
      }

      if ((*(*v8 + 152))(v4[2]))
      {
        memset(buf, 0, sizeof(buf));
        strcpy(v21, "cwdv");
        v21[8] = 0;
        v22 = 3;
        v24[0] = 0;
        v24[1] = 0;
        v23 = v24;
        v27 = 0;
        v28 = 0;
        __p = 0;
        v25 = 44739240;
        if (sub_9DE4C(a2, v8, buf))
        {
          v9 = 0;
        }

        else
        {
          v9 = sub_23098C(a2, v8);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        sub_477A0(v24[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        v9 = sub_231DE8(a2, v8, &v18);
      }

      v5 |= v9 != 0;
LABEL_24:
      sub_1A8C0(v7);
LABEL_25:
      v4 = v4[1];
      if (v4 == a1)
      {
        goto LABEL_28;
      }
    }

    v7 = 0;
LABEL_12:
    v10 = sub_5544(3);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Expired port in port update list.", buf, 0x12u);
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v5 = 0;
LABEL_28:
  sub_218AD4(&v18);
  sub_210C50(&v17);
  *buf = &v18;
  sub_218D2C(buf);
  if (v5)
  {
    sub_49C48(&v18);
    strcpy(buf, "strpbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(**(a2 + 32) + 88))(*(a2 + 32), 1, buf, 1);
    v12 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    if (v12)
    {
      sub_1DB63C(v12);
      operator delete();
    }
  }
}

void sub_231D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1DB848(va, 0);
  _Unwind_Resume(a1);
}

NSObject *sub_231DE8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47)
    {
      if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: routing mutex not held", buf, 0x12u);
      }
    }
  }

  v55 = 0;
  v56 = 0;
  v7 = *(a2 + 88);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    v9 = v8;
    if (v8)
    {
      v10 = *(a2 + 80);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v55 = v10;
      v56 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v55 = 0;
      v56 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_869CC((a1 + 5), &v55);
  if (a1 + 6 == v11)
  {
    v15 = sub_5544(3);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 298;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d could not find virtual audio port for specified port", buf, 0x12u);
      }

      v16 = 0;
    }
  }

  else
  {
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;
    v54 = *(v12 + 2);
    sub_231844(a1 + 5, &v55);
    if (sub_7E96C())
    {
      v13 = a1 + 1;
      v14 = a1[2];
      if (v14 != a1 + 1)
      {
        while (*(v14 + 4) != v54)
        {
          v14 = v14[1];
          if (v14 == v13)
          {
            goto LABEL_19;
          }
        }
      }

      if (v14 != v13)
      {
        v18 = *v14;
        v17 = v14[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        --a1[3];
        operator delete(v14);
      }
    }

LABEL_19:
    (*(*v12 + 120))(v12);
    sub_49C48(buf);
    v19 = *(a1[4] + 8);
    v20 = AudioObjectsPublishedAndDied();
    v21 = *buf;
    *buf = 0;
    if (v21)
    {
      sub_1DB63C(v21);
      operator delete();
    }

    if (v20)
    {
      v22 = sub_5544(14);
      v23 = *v22;
      if (*v22)
      {
        if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PortManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 332;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theResult): got an error telling the HAL that a port went away", buf, 0x12u);
        }
      }
    }

    (*(*v12 + 112))(v52, v12);
    v24 = sub_5544(3);
    v25 = sub_5544(16);
    v26 = 0;
    *buf = 0x100000002;
    v27 = *(v24 + 8);
    while (1)
    {
      v28 = *&buf[v26];
      if (((v27 & v28) != 0) != ((*(v25 + 8) & v28) != 0))
      {
        break;
      }

      v26 += 4;
      if (v26 == 8)
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }
    }

    if ((v27 & v28) == 0)
    {
      v24 = v25;
    }

    if (*(v24 + 8))
    {
LABEL_33:
      v29 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
      {
        v30 = v12[12];
        v49[0] = v12[11];
        v49[1] = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_11AB44(__p, v49);
        if (v51 >= 0)
        {
          v31 = __p;
        }

        else
        {
          v31 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 338;
        *&buf[18] = 2048;
        *&buf[20] = v12;
        *&buf[28] = 2080;
        *&buf[30] = v31;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing VirtualAudio_Port %p (%s) for deletion.", buf, 0x26u);
        if (v51 < 0)
        {
          operator delete(__p[0]);
        }

        if (v30)
        {
          std::__shared_weak_count::__release_weak(v30);
        }
      }
    }

LABEL_44:
    v33 = *(a3 + 8);
    v32 = *(a3 + 16);
    if (v33 >= v32)
    {
      v35 = *a3;
      v36 = v33 - *a3;
      v37 = v36 >> 3;
      v38 = (v36 >> 3) + 1;
      if (v38 >> 61)
      {
        sub_189A00();
      }

      v39 = v32 - v35;
      if (v39 >> 2 > v38)
      {
        v38 = v39 >> 2;
      }

      if (v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        v40 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v40 = v38;
      }

      *&buf[32] = a3;
      if (v40)
      {
        sub_1DC9A4(v40);
      }

      *(8 * v37) = v12;
      v34 = 8 * v37 + 8;
      memcpy(0, v35, v36);
      v41 = *a3;
      *a3 = 0;
      *(a3 + 8) = v34;
      v42 = *(a3 + 16);
      *(a3 + 16) = 0;
      *&buf[16] = v41;
      *&buf[24] = v42;
      *buf = v41;
      *&buf[8] = v41;
      sub_218DD4(buf);
    }

    else
    {
      *v33 = v12;
      v34 = (v33 + 1);
    }

    *(a3 + 8) = v34;
    if (v20)
    {
      v16 = 0;
    }

    else
    {
      v16 = v54;
    }

    v43 = sub_5544(3);
    v44 = *v43;
    if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_DEFAULT))
    {
      v45 = v52;
      if (v53 < 0)
      {
        v45 = v52[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 349;
      *&buf[18] = 2080;
      *&buf[20] = v45;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Queued for deletion and unpublished port: %s.", buf, 0x1Cu);
    }

    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    v9 = v56;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v16;
}

void sub_2323F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2324D4(uint64_t a1, uint64_t a2)
{
  sub_27A4();
  v14 = (*(qword_6E94F8 + 16))();
  v4 = *(a1 + 40);
  v5 = (a1 + 48);
  if (v4 == (a1 + 48))
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    do
    {
      sub_88A00(&v25, v4 + 4, "", 141);
      v7 = v25;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      sub_46980(&v15, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v18 = *(a2 + 24);
      v19 = *(a2 + 32);
      v20 = *(a2 + 40);
      sub_44E44(v21, a2 + 48);
      v8 = *(a2 + 72);
      v22 = v8;
      if (*(a2 + 103) < 0)
      {
        sub_54A0(&__p, *(a2 + 80), *(a2 + 88));
        v8 = v22;
      }

      else
      {
        __p = *(a2 + 80);
        v24 = *(a2 + 96);
      }

      v22 = v8 & 0xFFFFFFFC;
      v9 = sub_46398(v7, &v15);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v21[1]);
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v26)
      {
        sub_1A8C0(v26);
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

      v6 = (v6 + v9);
      v4 = v11;
    }

    while (v11 != v5);
  }

  sub_210C50(&v14);
  return v6;
}

void sub_232694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_477A0(a20);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    sub_1A8C0(v22);
  }

  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2326F4(uint64_t a1)
{
  sub_27A4();
  v4 = (*(qword_6E94F8 + 16))();
  if (*(a1 + 24))
  {
    v2 = *(*(a1 + 8) + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_210C50(&v4);
  return v2;
}

_BYTE *sub_232774(void *a1, uint64_t a2, int a3)
{
  sub_27A4();
  v9 = (*(qword_6E94F8 + 16))();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  for (i = *(a2 + 16); i != a2 + 8; i = *(i + 8))
  {
    if (a3 == 1735159650 || *(i + 20) == a3)
    {
      sub_1D7C28(1uLL);
    }
  }

  return sub_210C50(&v9);
}

void sub_2328EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v14)
  {
    *(v13 + 8) = v14;
    operator delete(v14);
  }

  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_232914(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v74.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v74.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      v74.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v74.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  if (!a6)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v74.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v74.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      v74.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v74.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = 1852797029;
  }

  if (*a2 == 1936024431)
  {
    sub_10FD4(&cf, *a6);
    v12 = sub_5544(35);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 187;
      v72 = 2112;
      v73 = cf;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting session configuration: %@.", buf, 0x1Cu);
    }

    v14 = cf;
    if (cf)
    {
      CFRetain(cf);
      *buf = v14;
      sub_A3D70(__p, buf);
      CFRelease(v14);
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
      *&v66[8] = 0u;
      v64 = 1065353216;
      v61 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      *__p = 0u;
      v41 = 0u;
      DWORD2(v61) = 1065353216;
      v62 = 0u;
      v63 = 0u;
      v65 = 0u;
      *v66 = 0u;
      *&v66[16] = 1065353216;
    }

    if (!sub_2335B8(a1 + 88, __p))
    {
      sub_233C40(a1 + 88, __p);
      v17 = *(a1 + 16);
      sub_A4E68(buf, a1 + 88);
      v70[0] = v70;
      v70[1] = v70;
      v70[2] = 0;
      sub_A4DBC();
    }

    v15 = sub_5544(35);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 195;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant session configuration update", buf, 0x12u);
    }

    sub_3B49C4(v70, *(a1 + 16));
    if (_os_feature_enabled_impl())
    {
      sub_2337D8(&v39, *(a1 + 80), v70);
    }

    else
    {
      sub_233BF4(&v74, v70);
      *buf = &v74;
      *&buf[8] = 1;
      v39 = sub_69CE8(buf);
      if (v74.__r_.__value_.__l.__size_)
      {
        CFRelease(v74.__r_.__value_.__l.__size_);
      }

      if (v74.__r_.__value_.__r.__words[0])
      {
        CFRelease(v74.__r_.__value_.__l.__data_);
      }
    }

    if (v70[0])
    {
      CFRelease(v70[0]);
    }

    v18 = v39;
    if (!v39)
    {
      v35 = sub_5544(14);
      v36 = *v35;
      if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_AudioSession.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 211;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v37 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v37, "Postcondition failure.");
    }

    v19 = sub_5544(35);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
    {
      sub_B1190(&v74, v18);
      if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v74;
      }

      else
      {
        v21 = v74.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 213;
      v72 = 2080;
      v73 = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%25s:%-5d Full session route description dictionary: %s.", buf, 0x1Cu);
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      v18 = v39;
      if (!v39)
      {
        v38 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v38, "Could not construct");
      }
    }

    sub_480F4(buf, v18, "active devices");
    if (buf[8] == 1)
    {
      v22 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
        v74.__r_.__value_.__r.__words[0] = v22;
        CFRelease(v22);
        goto LABEL_42;
      }
    }

    else
    {
      v22 = 0;
    }

    v74.__r_.__value_.__r.__words[0] = 0;
LABEL_42:
    sub_2337D8(v70, *(a1 + 80), &v74);
    v23 = sub_5544(35);
    v24 = *v23;
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      v72 = 2112;
      v73 = v70[0];
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Completed session configuration: %@.", buf, 0x1Cu);
    }

    *(a6 + 24) = 8;
    if (_os_feature_enabled_impl())
    {
      **(a6 + 16) = v70[0];
    }

    else
    {
      v25 = v39;
      v39 = 0;
      v26 = v70[0];
      **(a6 + 16) = v25;
      if (v26)
      {
        CFRelease(v26);
      }
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    sub_A5114(__p);
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  sub_20BAC(a1, a2, a3, a4, a5, a6);
}

void sub_233498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_4BA7C(&a10);
  sub_A5114(&a11);
  sub_4BA7C(&a69);
  _Unwind_Resume(a1);
}

BOOL sub_2335B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 119);
  if (v4 >= 0)
  {
    v5 = *(a1 + 119);
  }

  else
  {
    v5 = *(a1 + 104);
  }

  v6 = *(a2 + 119);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 104);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 96) : *(a1 + 96);
  v9 = v7 >= 0 ? (a2 + 96) : *(a2 + 96);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 143);
  if (v10 >= 0)
  {
    v11 = *(a1 + 143);
  }

  else
  {
    v11 = *(a1 + 128);
  }

  v12 = *(a2 + 143);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 128);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 120) : *(a1 + 120);
  v15 = v13 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 167);
  if (v16 >= 0)
  {
    v17 = *(a1 + 167);
  }

  else
  {
    v17 = *(a1 + 152);
  }

  v18 = *(a2 + 167);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 152);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 144) : *(a1 + 144);
  v21 = v19 >= 0 ? (a2 + 144) : *(a2 + 144);
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

  v22 = *(a1 + 168);
  v23 = *(a1 + 176) - v22;
  v24 = *(a2 + 168);
  if (v23 != *(a2 + 176) - v24)
  {
    return 0;
  }

  if (memcmp(v22, v24, v23))
  {
    return 0;
  }

  v25 = *(a1 + 192);
  v26 = *(a1 + 200) - v25;
  v27 = *(a2 + 192);
  if (v26 != *(a2 + 200) - v27 || memcmp(v25, v27, v26) || *(a1 + 216) != *(a2 + 216) || *(a1 + 217) != *(a2 + 217))
  {
    return 0;
  }

  v28 = *(a1 + 252);
  v29 = *(a2 + 252);
  if (v28 == v29 && *(a1 + 252))
  {
    v28 = *(a1 + 248);
    v29 = *(a2 + 248);
  }

  if (v28 != v29 || *(a1 + 256) != *(a2 + 256))
  {
    return 0;
  }

  result = sub_233F50(a1 + 264, a2 + 264);
  if (result)
  {
    v31 = *(a2 + 456);
    v32 = *(a1 + 456);
    result = v32 == v31;
    if (v32 == v31)
    {
      if (*(a1 + 456))
      {

        return sub_1DC61C((a1 + 432), (a2 + 432));
      }
    }
  }

  return result;
}

void sub_2337D8(CFDictionaryRef *a1, int a2, CFArrayRef *a3)
{
  memset(v25, 0, sizeof(v25));
  v3 = *a3;
  if (*a3)
  {
    Count = CFArrayGetCount(*a3);
    v7 = Count;
    v8 = *a3;
    if (*a3)
    {
      v23 = CFArrayGetCount(*a3);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
      if (!Count)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    do
    {
      if (v3 == v8 && v9 == v23)
      {
        break;
      }

      sub_233E00(&cf, v3, v9);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (sub_47EF0(cf, "audio session ids"))
      {
        if (!cf)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
        }

        v10 = sub_1129C(cf, "audio session ids");
        if (!v10)
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v19, "Could not find item");
        }

        v11 = v10;
        CFRetain(v10);
        theArray[0] = v11;
        v12 = CFGetTypeID(v11);
        if (v12 != CFArrayGetTypeID())
        {
          v21 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v21, "Could not construct");
        }

        v13 = CFArrayGetCount(theArray[0]);
        v14 = CFArrayGetCount(theArray[0]);
        v15 = 0;
        while (v13 != v15 && v14 != v15)
        {
          v16 = sub_233EB4(theArray[0], v15++);
          if (v16 == a2)
          {
            sub_98AA0(v25, &cf);
            break;
          }
        }

        CFRelease(theArray[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      ++v9;
    }

    while (v9 != v7);
  }

LABEL_23:
  v17 = sub_76110(v25);
  sub_88CE8(&cf, "active devices");
  CFRetain(v17);
  v27 = v17;
  theArray[0] = &cf;
  theArray[1] = (&dword_0 + 1);
  *a1 = sub_69CE8(theArray);
  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v17);
  theArray[0] = v25;
  sub_761AC(theArray);
}

void sub_233B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233BF4(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "active devices");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_233C40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_D03B8((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_D03B8((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_48C94((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = v4;
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  if (a1 == a2)
  {
    *(a1 + 216) = *(a2 + 216);
    v6 = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 248) = v6;
  }

  else
  {
    sub_16B928((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
    sub_16B928((a1 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
    *(a1 + 216) = *(a2 + 216);
    sub_48C94((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 3);
    v5 = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 248) = v5;
    sub_D03B8((a1 + 264), *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    sub_D03B8((a1 + 288), *(a2 + 288), *(a2 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 3));
    *(a1 + 344) = *(a2 + 344);
    sub_D055C((a1 + 312), *(a2 + 328));
    *(a1 + 384) = *(a2 + 384);
    sub_D055C((a1 + 352), *(a2 + 368));
    *(a1 + 424) = *(a2 + 424);
    sub_D055C((a1 + 392), *(a2 + 408));
  }

  sub_1789EC((a1 + 432), (a2 + 432));
  return a1;
}

void *sub_233E00(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_10FD4(a1, ValueAtIndex);
}

uint64_t sub_233EB4(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_4A8F8(ValueAtIndex);
}

BOOL sub_233F50(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if ((v3 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = sub_1DC61C(v2, v4);
    if (!result)
    {
      return result;
    }

    v2 += 3;
    v4 += 3;
  }

  v10 = a1 + 24;
  v8 = *(a1 + 24);
  v9 = *(v10 + 8);
  v12 = a2 + 24;
  v11 = *(a2 + 24);
  if (v9 - v8 != *(v12 + 8) - v11)
  {
    return 0;
  }

  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    result = sub_1DC61C(v8, v11);
    if (!result)
    {
      break;
    }

    v8 += 24;
    v11 += 3;
  }

  while (v8 != v9);
  return result;
}

void sub_234010(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int *a5, CFDictionaryRef *a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = 561211770;
  }

  if (!a6)
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = &off_6DDDD0;
    v36[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 == 1936024431)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    sub_88CE8(v44, "session id");
    LODWORD(valuePtr) = *(a1 + 80);
    *&v44[8] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!*&v44[8])
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
    }

    sub_88E68(&v47, v44);
    if (*&v44[8])
    {
      CFRelease(*&v44[8]);
    }

    if (*v44)
    {
      CFRelease(*v44);
    }

    sub_A4E28(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v14 = v44;
    }

    else
    {
      v14 = *v44;
    }

    if (v14)
    {
      if (SBYTE3(v46) >= 0)
      {
        v15 = BYTE3(v46);
      }

      else
      {
        v15 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v14, v15, 0x8000100u, 0);
      if (!v41)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "bundle id");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    sub_AEE74(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v21 = v44;
    }

    else
    {
      v21 = *v44;
    }

    if (v21)
    {
      if (SBYTE3(v46) >= 0)
      {
        v22 = BYTE3(v46);
      }

      else
      {
        v22 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v21, v22, 0x8000100u, 0);
      if (!v41)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v23, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "category");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    sub_A5750(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v24 = v44;
    }

    else
    {
      v24 = *v44;
    }

    if (v24)
    {
      if (SBYTE3(v46) >= 0)
      {
        v25 = BYTE3(v46);
      }

      else
      {
        v25 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
      if (!v41)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v26, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "mode");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    v27 = *(a1 + 336);
    if ((v27 & 0x100000000) != 0)
    {
      sub_88CE8(v44, "isolated use case ID");
      LODWORD(valuePtr) = v27;
      *&v44[8] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!*&v44[8])
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
      }

      sub_88E68(&v47, v44);
      if (*&v44[8])
      {
        CFRelease(*&v44[8]);
      }

      if (*v44)
      {
        CFRelease(*v44);
      }
    }

    v28 = sub_65448(&v47);
    valuePtr = v28;
    v29 = sub_5544(35);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
    {
      *v44 = 136315650;
      *&v44[4] = "VirtualAudio_AudioSession.cpp";
      *&v44[12] = 1024;
      *&v44[14] = 143;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d Returning session information dictionary: %@.", v44, 0x1Cu);
    }

    *a6 = v28;
    *v44 = &v47;
    sub_65830(v44);
  }

  else if (v12 == 1936028271)
  {
    sub_3B49C4(&valuePtr, *(a1 + 16));
    if (_os_feature_enabled_impl())
    {
      sub_2337D8(&v41, *(a1 + 80), &valuePtr);
    }

    else
    {
      sub_233BF4(&v47, &valuePtr);
      *v44 = &v47;
      *&v44[8] = 1;
      v41 = sub_69CE8(v44);
      if (v48)
      {
        CFRelease(v48);
      }

      if (v47)
      {
        CFRelease(v47);
      }
    }

    v17 = sub_5544(35);
    v18 = *v17;
    if (*v17)
    {
      v19 = os_log_type_enabled(*v17, OS_LOG_TYPE_INFO);
      v20 = v41;
      if (v19)
      {
        *v44 = 136315650;
        *&v44[4] = "VirtualAudio_AudioSession.cpp";
        *&v44[12] = 1024;
        *&v44[14] = 158;
        v45 = 2112;
        v46 = v41;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Route description dictionary: %@.", v44, 0x1Cu);
      }
    }

    else
    {
      v20 = v41;
    }

    *a6 = v20;
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }
  }

  else if (v12 == 1936025956)
  {
    v13 = *a5;
    if (v13 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v37 = sub_5544(14);
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          valuePtr = *a2;
          LODWORD(v43) = a2[2];
          sub_22CE0(&v47);
        }
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      *v38 = &off_6DDDD0;
      v38[2] = 561211770;
    }

    *a6 = *(a1 + 80);
  }

  else
  {

    sub_A654C(a1, a2, a3, a4, a5, a6);
  }
}