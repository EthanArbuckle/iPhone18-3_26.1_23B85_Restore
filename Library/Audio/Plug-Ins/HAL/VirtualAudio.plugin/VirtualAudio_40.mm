void sub_34E4FC(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_34E538(uint64_t a1)
{
  sub_4ADCC0(a1);
  v2 = (*(*a1 + 88))(a1, 1);
  v3 = (*(*a1 + 88))(a1, 0);
  v4 = *(a1 + 532);
  if (v4 == 1937010030 && v3 == 0)
  {
    v41 = sub_5544(14);
    v42 = *v41;
    if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 287;
      _os_log_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay main audio device lacks an input stream.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "CarPlay main audio device lacks an input stream.");
  }

  if (v4 == 1937010030 && v2 == 0)
  {
    v44 = sub_5544(14);
    v45 = *v44;
    if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 288;
      _os_log_impl(&dword_0, v45, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay main audio device lacks an output stream.", buf, 0x12u);
    }

    v46 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v46, "CarPlay main audio device lacks an output stream.");
  }

  if (v4 == 1937006956)
  {
    if (v3)
    {
      v50 = sub_5544(14);
      v51 = *v50;
      if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
      {
        buf[0].mSelector = 136315394;
        *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
        LOWORD(buf[1].mSelector) = 1024;
        *(&buf[1].mSelector + 2) = 289;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay alternate audio device incorrectly has an input stream.", buf, 0x12u);
      }

      v52 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v52, "CarPlay alternate audio device incorrectly has an input stream.");
    }

    if (!v2)
    {
      v53 = sub_5544(14);
      v54 = *v53;
      if (*v53)
      {
        if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
        {
          buf[0].mSelector = 136315394;
          *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
          LOWORD(buf[1].mSelector) = 1024;
          *(&buf[1].mSelector + 2) = 290;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay alternate audio device lacks an output stream.", buf, 0x12u);
        }
      }

      v55 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v55, "CarPlay alternate audio device lacks an output stream.");
    }

    goto LABEL_16;
  }

  if (v4 == 1937006968 && (v2 != 0) == (v3 != 0))
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 291;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): CarPlay aux audio device has incorrect streams", buf, 0x12u);
    }

    v49 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v49, "CarPlay aux audio device has incorrect streams");
  }

  if (v2)
  {
LABEL_16:
    sub_15DCEC();
  }

  if (v3)
  {
    sub_15DD68();
  }

  *v56 = *(a1 + 268);
  strcpy(buf, "tttsbolg");
  BYTE1(buf[0].mElement) = 0;
  HIWORD(buf[0].mElement) = 0;
  v8 = sub_542F0(v56, buf, 0, 0);
  if (v8 || (v7 & 1) == 0)
  {
    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = v8;
  }

  if (*(a1 + 532) == 1937010030)
  {
    v9 = sub_5544(18);
    v10 = sub_5544(30);
    v11 = 0;
    *&buf[0].mSelector = 0x100000002;
    v12 = *(v9 + 8);
    while (1)
    {
      v13 = *(&buf[0].mSelector + v11);
      if (((v12 & v13) != 0) != ((*(v10 + 8) & v13) != 0))
      {
        break;
      }

      v11 += 4;
      if (v11 == 8)
      {
        goto LABEL_28;
      }
    }

    if ((v12 & v13) == 0)
    {
      v9 = v10;
    }

LABEL_28:
    v14 = *v9;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].mSelector = 136315394;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 325;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Main audio device does not support input and output.", buf, 0x12u);
    }
  }

  sub_24FF44(v56, 0x70737469u, *(a1 + 268));
  if (*(a1 + 532) == 1937010030)
  {
    sub_34D4D4(0, 0);
  }

  strcpy(v62, "dcvsbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  if ((*(*a1 + 16))(a1, v62))
  {
    *&buf[0].mSelector = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    LOWORD(buf[0].mElement) = 257;
    sub_FDA38(buf, @"vocoder sample rate", 0.0);
    sub_A1CA4(buf, @"vocoder type", 0);
    (*(*a1 + 48))(a1, v62, 0, 0, 8, buf);
    sub_A1D30(buf);
  }

  if ((*(*a1 + 16))(a1, &qword_6EAE98))
  {
    v15 = (*(*a1 + 120))(a1);
    *(a1 + 544) = sub_3503D0(v15);
    v64 = qword_6EAE98;
    v65 = dword_6EAEA0;
    memset(buf, 0, 24);
    sub_2C8104(buf, &v64, &v66, 1uLL);
  }

  if (v61 < 0)
  {
    operator delete(v60);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  if (v57 < 0)
  {
    operator delete(*v56);
  }

  v16 = sub_5544(18);
  v17 = sub_5544(30);
  v18 = 0;
  *&buf[0].mSelector = 0x100000002;
  v19 = *(v16 + 8);
  while (1)
  {
    v20 = *(&buf[0].mSelector + v18);
    if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
    {
      break;
    }

    v18 += 4;
    if (v18 == 8)
    {
      goto LABEL_49;
    }
  }

  if ((v19 & v20) == 0)
  {
    v16 = v17;
  }

LABEL_49:
  v21 = *v16;
  if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_23148(v56, (a1 + 8));
    v22 = v57 >= 0 ? v56 : *v56;
    buf[0].mSelector = 136315650;
    *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
    LOWORD(buf[1].mSelector) = 1024;
    *(&buf[1].mSelector + 2) = 426;
    HIWORD(buf[1].mScope) = 2080;
    *&buf[1].mElement = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay device: %s.", buf, 0x1Cu);
    if (v57 < 0)
    {
      operator delete(*v56);
    }
  }

  if ((*(*a1 + 88))(a1, 0))
  {
    v23 = sub_5544(18);
    v24 = sub_5544(30);
    v25 = 0;
    *&buf[0].mSelector = 0x100000002;
    v26 = *(v23 + 8);
    while (1)
    {
      v27 = *(&buf[0].mSelector + v25);
      if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
      {
        break;
      }

      v25 += 4;
      if (v25 == 8)
      {
        goto LABEL_63;
      }
    }

    if ((v26 & v27) == 0)
    {
      v23 = v24;
    }

LABEL_63:
    v28 = *v23;
    if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = (*(*a1 + 96))(a1, 0, 0);
      sub_23148(v56, v29 + 2);
      v30 = v57 >= 0 ? v56 : *v56;
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 427;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v30;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay input stream: %s.", buf, 0x1Cu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }
  }

  if ((*(*a1 + 88))(a1, 1))
  {
    v31 = sub_5544(18);
    v32 = sub_5544(30);
    v33 = 0;
    *&buf[0].mSelector = 0x100000002;
    v34 = *(v31 + 8);
    while (1)
    {
      v35 = *(&buf[0].mSelector + v33);
      if (((v34 & v35) != 0) != ((*(v32 + 8) & v35) != 0))
      {
        break;
      }

      v33 += 4;
      if (v33 == 8)
      {
        goto LABEL_77;
      }
    }

    if ((v34 & v35) == 0)
    {
      v31 = v32;
    }

LABEL_77:
    v36 = *v31;
    if (v36 && os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v37 = (*(*a1 + 96))(a1, 1, 0);
      sub_23148(v56, v37 + 2);
      v38 = v57 >= 0 ? v56 : *v56;
      buf[0].mSelector = 136315650;
      *&buf[0].mScope = "Device_CarPlay_Aspen.cpp";
      LOWORD(buf[1].mSelector) = 1024;
      *(&buf[1].mSelector + 2) = 428;
      HIWORD(buf[1].mScope) = 2080;
      *&buf[1].mElement = v38;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created CarPlay output stream: %s.", buf, 0x1Cu);
      if (v57 < 0)
      {
        operator delete(*v56);
      }
    }
  }

  return 1;
}

void sub_3500F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a11)
  {
    sub_1A8C0(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3503D0(AudioObjectID a1)
{
  v15 = a1;
  strcpy(&buf, "tvtsbolg");
  BYTE1(buf.mElement) = 0;
  HIWORD(buf.mElement) = 0;
  v2 = sub_542F0(&v15, &buf, 0, 0);
  *(&v5 + 1) = v3;
  *&v5 = v2;
  v4 = v5 >> 32;
  if ((v4 & 0x100000000) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_5544(29);
  v8 = sub_5544(24);
  v9 = 0;
  *&buf.mSelector = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *(&buf.mSelector + v9);
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_10;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_10:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "yes";
    buf.mSelector = 136315906;
    *&buf.mScope = "Device_CarPlay_Aspen.cpp";
    v18 = 70;
    v17 = 1024;
    if (!v6)
    {
      v13 = "no";
    }

    v19 = 1024;
    v20 = a1;
    v21 = 2080;
    v22 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Device %u supports voice trigger: %s.", &buf, 0x22u);
  }

  return v6 != 0;
}

uint64_t sub_350560(uint64_t a1, unsigned int a2, unsigned int *a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v7 = sub_5544(18);
      v8 = *v7;
      if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v31, *a3);
        v9 = SHIBYTE(v32);
        v10 = v31[0];
        (*(*a4 + 128))(&__p, a4);
        v11 = v31;
        if (v9 < 0)
        {
          v11 = v10;
        }

        p_p = &__p;
        if (v29 < 0)
        {
          p_p = __p;
        }

        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 236;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        *&buf[28] = 2080;
        *&buf[30] = p_p;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received notification (%s) from audio device with UID %s", buf, 0x26u);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }
      }

      if (*a3 == 1937012340)
      {
        v13 = (*(*a4 + 120))(a4);
        v14 = sub_3503D0(v13);
        v15 = sub_5544(18);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
        {
          (*(*a4 + 128))(v31, a4);
          v17 = v31;
          if (v32 < 0)
          {
            v17 = v31[0];
          }

          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 255;
          *&buf[18] = 1024;
          *&buf[20] = v14;
          *&buf[24] = 2080;
          *&buf[26] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Voice trigger support changed to %u for audio device with UID %s", buf, 0x22u);
          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }
        }

        if (a4[544] != v14)
        {
          a4[544] = v14;
          v28 = 0;
          v29 = 0;
          __p = &v28;
          v30 = 1886609775;
          v31[1] = 0;
          v32 = 0;
          v31[0] = 0;
          sub_4625C(v31, &v30, v31, 1uLL);
          *buf = *v31;
          *&buf[16] = v32;
          strcpy(&buf[24], "cwdv");
          buf[32] = 0;
          v34 = 3;
          v36[0] = 0;
          v36[1] = 0;
          v35 = v36;
          v37 = 44739242;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          sub_161C7C(v26, a4, buf);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(v38);
          }

          sub_477A0(v36[0]);
          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          *buf = 1886418288;
          sub_80C2C(&buf[8], v26);
          sub_1165C0(&__p, *buf);
          sub_65310(&buf[8]);
          v18 = sub_809C0();
          sub_11ABFC(v18, &__p, 0);
          sub_65310(v26);
          sub_D169C(v28);
        }
      }

      else
      {
        v19 = sub_5544(18);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_22170(v31, *a3);
          v21 = SHIBYTE(v32);
          v22 = v31[0];
          (*(*a4 + 128))(&__p, a4);
          v23 = v31;
          if (v21 < 0)
          {
            v23 = v22;
          }

          v24 = &__p;
          if (v29 < 0)
          {
            v24 = __p;
          }

          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 243;
          *&buf[18] = 2080;
          *&buf[20] = v23;
          *&buf[28] = 2080;
          *&buf[30] = v24;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unhandled notification (%s) from bluetooth audio device with UID %s", buf, 0x26u);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(v31[0]);
          }
        }
      }

      a3 += 3;
      --v6;
    }

    while (v6);
  }

  return 0;
}

void sub_350A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_350AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350B80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C2F48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_350C90(uint64_t a1)
{
  sub_350D90((a1 + 672));
  v2 = qword_6EAE98;
  v3 = dword_6EAEA0;
  memset(__p, 0, sizeof(__p));
  sub_2C8104(__p, &v2, &v4, 1uLL);
}

void sub_350D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

AudioObjectID **sub_350D90(AudioObjectID **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = sub_5544(18);
    v3 = sub_5544(30);
    v4 = 0;
    *buf = 0x100000002;
    v5 = *(v2 + 8);
    while (1)
    {
      v6 = *&buf[v4];
      if (((v5 & v6) != 0) != ((*(v3 + 8) & v6) != 0))
      {
        break;
      }

      v4 += 4;
      if (v4 == 8)
      {
        goto LABEL_9;
      }
    }

    if ((v5 & v6) == 0)
    {
      v2 = v3;
    }

LABEL_9:
    v7 = *v2;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *v1;
      *buf = 136315650;
      *&buf[4] = "Device_CarPlay_Aspen.cpp";
      v19 = 1024;
      v20 = 106;
      v21 = 2048;
      v22[0] = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Removing config change listener for CarPlay device ID: %lu", buf, 0x1Cu);
    }

    sub_1DB7C8(&v17);
    v9 = AudioObjectRemovePropertyListener(*v1, "egfcbolg", sub_351044, v1);
    if (v9)
    {
      v10 = sub_5544(18);
      v11 = sub_5544(30);
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
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *v1;
        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        v19 = 1024;
        v20 = 114;
        v21 = 1024;
        LODWORD(v22[0]) = v9;
        WORD2(v22[0]) = 1024;
        *(v22 + 6) = v16;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d unregistering CarPlay property listener on id %u.", buf, 0x1Eu);
      }
    }

    sub_1DB63C(&v17);

    operator delete();
  }

  return result;
}

void sub_351038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_351044(unsigned int a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  if (a4)
  {
    __p = 0;
    v37 = 0;
    v38 = 0;
    sub_4EF90(&__p, a3, a3 + 12 * a2, a2);
    if (*a4 == a1)
    {
      v6 = __p;
      v7 = v37;
      v8 = __p;
      if (__p != v37)
      {
        v8 = __p;
        while (1)
        {
          v9 = *(v8 + 2);
          *buf = *v8;
          *&buf[8] = v9;
          if (sub_15414(buf, "egfcbolg"))
          {
            break;
          }

          v8 = (v8 + 12);
          if (v8 == v7)
          {
            v8 = v7;
            break;
          }
        }
      }

      v10 = sub_5544(18);
      v11 = sub_5544(30);
      if (v8 == v7)
      {
        v22 = 0;
        *buf = 0x100000002;
        v23 = *(v10 + 8);
        while (1)
        {
          v24 = *&buf[v22];
          if (((v23 & v24) != 0) != ((*(v11 + 8) & v24) != 0))
          {
            break;
          }

          v22 += 4;
          if (v22 == 8)
          {
            goto LABEL_42;
          }
        }

        if ((v23 & v24) == 0)
        {
          v10 = v11;
        }

LABEL_42:
        v33 = *v10;
        if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *a4;
          sub_1DB6A0(&v39, v6, v7);
          v35 = (v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v39 : v39.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          v41 = 1024;
          v42 = 150;
          v43 = 2048;
          v44 = v34;
          v45 = 2080;
          v46 = v35;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for CarPlay device ID: %lu for different addresses %s", buf, 0x26u);
          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
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
            goto LABEL_28;
          }
        }

        if ((v13 & v14) == 0)
        {
          v10 = v11;
        }

LABEL_28:
        v25 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *a4;
          *buf = 136315650;
          *&buf[4] = "Device_CarPlay_Aspen.cpp";
          v41 = 1024;
          v42 = 156;
          v43 = 2048;
          v44 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for CarPlay device ID: %lu", buf, 0x1Cu);
        }

        v27 = *(a4 + 2);
        std::mutex::lock(v27);
        v28 = *(a4 + 3);
        if (*v28 == 1)
        {
          v29 = sub_5544(14);
          v30 = *v29;
          if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *a4;
            *buf = 136315650;
            *&buf[4] = "Device_CarPlay_Aspen.cpp";
            v41 = 1024;
            v42 = 163;
            v43 = 2048;
            v44 = v31;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Already notified for config change property on CarPlay device ID: %lu. Returning.", buf, 0x1Cu);
          }
        }

        else
        {
          *v28 = 1;
          std::condition_variable::notify_all(*(a4 + 1));
        }

        std::mutex::unlock(v27);
      }
    }

    else
    {
      v15 = sub_5544(18);
      v16 = sub_5544(30);
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
          goto LABEL_19;
        }
      }

      if ((v18 & v19) == 0)
      {
        v15 = v16;
      }

LABEL_19:
      v20 = *v15;
      if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a4;
        *buf = 136315906;
        *&buf[4] = "Device_CarPlay_Aspen.cpp";
        v41 = 1024;
        v42 = 138;
        v43 = 2048;
        v44 = a1;
        v45 = 2048;
        v46 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Config change listener fired for device ID: %lu not CarPlay device ID: %lu", buf, 0x26u);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_3514C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  std::mutex::unlock(v10);
  if (v9)
  {
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_3514F4(uint64_t a1)
{
  sub_35152C(a1);

  operator delete();
}

uint64_t sub_35152C(uint64_t a1)
{
  *a1 = off_6C2D20;
  sub_350D90((a1 + 672));
  std::condition_variable::~condition_variable((a1 + 616));
  std::mutex::~mutex((a1 + 552));
  v2 = *(a1 + 536);
  if (v2)
  {
    CFRelease(v2);
  }

  return sub_4B2820(a1);
}

BOOL sub_3515A8(const __CFString *a1)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  sub_125D8(v4, a1);
  if ((v5 & 0x80000000) == 0)
  {
    return v5 != 0;
  }

  v1 = v4[1] != 0;
  operator delete(v4[0]);
  return v1;
}

void sub_351648(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6C2D20;
  v5 = *(v4 + 268);
  __p.mSelector = v5;
  strcpy(buf, "tstsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  v6 = sub_542F0(&__p.mSelector, buf, 0, 0);
  v8 = v6;
  if (!v6 && (v7 & 1) != 0)
  {
    *(a1 + 532) = HIDWORD(v6);
    v9 = (*(*a1 + 120))(a1);
    v10 = CFStringCreateWithBytes(0, "", 0, 0x8000100u, 0);
    v17 = v10;
    if (v10)
    {
      v18 = v9;
      *&__p.mSelector = 0x676C6F6273747575;
      __p.mElement = 0;
      sub_293A20(buf, &v18, &__p);
      if (buf[16])
      {
        v11 = *&buf[8];
      }

      else
      {
        CFRetain(v10);
        v11 = v10;
      }

      *(a1 + 536) = v11;
      CFRelease(v10);
      *(a1 + 544) = 0;
      *(a1 + 552) = 850045863;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *(a1 + 592) = 0u;
      *(a1 + 608) = 0;
      *(a1 + 616) = 1018212795;
      *(a1 + 624) = 0u;
      *(a1 + 640) = 0u;
      *(a1 + 649) = 0u;
      operator new();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v12 = sub_5544(18);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "Device_CarPlay_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 210;
    v20 = 1024;
    LODWORD(v21) = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to retrieve CarPlay stream type for object %u.", buf, 0x18u);
  }

  v14 = __cxa_allocate_exception(0x10uLL);
  *v14 = &off_6DDDD0;
  v14[2] = v8;
}

void sub_351D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v17);
  sub_350D90((v13 + 672));
  std::condition_variable::~condition_variable(v16);
  std::mutex::~mutex(v15);
  sub_28C4D0(v14);
  sub_4B2820(v13);
  _Unwind_Resume(a1);
}

void sub_351E04(void *a1)
{
  sub_351E3C(a1);

  operator delete();
}

void *sub_351E3C(void *a1)
{
  *a1 = off_6C2FB8;
  v2 = a1[39];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[37];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[35];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[33];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  sub_42A4D8((a1 + 19));
  sub_292110((a1 + 1));
  return a1;
}

void sub_351EC0(void *a1)
{
  if (!a1[33] && !a1[35] && !a1[37] && !a1[39])
  {
    v25 = sub_5544(22);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        v36 = 136315394;
        v37 = "HeadsetJackHandler.cpp";
        v38 = 1024;
        v39 = 229;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d All port types are NULL...", &v36, 0x12u);
      }
    }
  }

  if (a1[35])
  {
    if (!a1[33])
    {
      v7 = sub_5544(22);
      v8 = *v7;
      if (*v7)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          v9 = a1[35];
          if (v9)
          {
            v10 = std::__shared_weak_count::lock(v9);
            if (v10)
            {
              v11 = a1[34];
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
            v10 = 0;
          }

          v27 = a1[33];
          if (v27)
          {
            v28 = std::__shared_weak_count::lock(v27);
            if (v28)
            {
              v29 = a1[32];
            }

            else
            {
              v29 = 0;
            }
          }

          else
          {
            v29 = 0;
            v28 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 240;
          v40 = 2048;
          v41 = v11;
          v42 = 2048;
          v43 = v29;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Wired microphone Port is non-NULL but wired headphones Port is NULL... mWiredMicrophonePort: %p; mWiredHeadphonesPort: %p.", &v36, 0x26u);
          if (v28)
          {
            sub_1A8C0(v28);
          }

          if (v10)
          {
            sub_1A8C0(v10);
          }
        }
      }
    }
  }

  if ((a1[37] == 0) != (a1[39] == 0))
  {
    v2 = sub_5544(22);
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
      {
        v4 = a1[37];
        if (v4)
        {
          v5 = std::__shared_weak_count::lock(v4);
          if (v5)
          {
            v6 = a1[36];
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
          v5 = 0;
        }

        v12 = a1[39];
        if (v12)
        {
          v13 = std::__shared_weak_count::lock(v12);
          if (v13)
          {
            v14 = a1[38];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
          v13 = 0;
        }

        v36 = 136315906;
        v37 = "HeadsetJackHandler.cpp";
        v38 = 1024;
        v39 = 251;
        v40 = 2048;
        v41 = v6;
        v42 = 2048;
        v43 = v14;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY output and input are mismatched... mTTYOutputPort: %p; mTTYInputPort: %p.", &v36, 0x26u);
        if (v13)
        {
          sub_1A8C0(v13);
        }

        if (v5)
        {
          sub_1A8C0(v5);
        }
      }
    }
  }

  if (a1[37])
  {
    if (!a1[33])
    {
      v15 = sub_5544(22);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          v17 = a1[37];
          if (v17)
          {
            v18 = std::__shared_weak_count::lock(v17);
            if (v18)
            {
              v19 = a1[36];
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
            v18 = 0;
          }

          v30 = a1[33];
          if (v30)
          {
            v31 = std::__shared_weak_count::lock(v30);
            if (v31)
            {
              v32 = a1[32];
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
            v31 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 262;
          v40 = 2048;
          v41 = v19;
          v42 = 2048;
          v43 = v32;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY output is non-NULL, but wired headphones is NULL... mTTYOutputPort: %p; mWiredHeadphonesPort: %p.", &v36, 0x26u);
          if (v31)
          {
            sub_1A8C0(v31);
          }

          if (v18)
          {
            sub_1A8C0(v18);
          }
        }
      }
    }
  }

  if (a1[39])
  {
    if (!a1[35])
    {
      v20 = sub_5544(22);
      v21 = *v20;
      if (*v20)
      {
        if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
        {
          v22 = a1[39];
          if (v22)
          {
            v23 = std::__shared_weak_count::lock(v22);
            if (v23)
            {
              v24 = a1[38];
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
            v23 = 0;
          }

          v33 = a1[35];
          if (v33)
          {
            v34 = std::__shared_weak_count::lock(v33);
            if (v34)
            {
              v35 = a1[34];
            }

            else
            {
              v35 = 0;
            }
          }

          else
          {
            v35 = 0;
            v34 = 0;
          }

          v36 = 136315906;
          v37 = "HeadsetJackHandler.cpp";
          v38 = 1024;
          v39 = 273;
          v40 = 2048;
          v41 = v24;
          v42 = 2048;
          v43 = v35;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d TTY input is non-NULL, but wired microphone is NULL... mTTYInputPort: %p; mWiredMicrophonePort: %p.", &v36, 0x26u);
          if (v34)
          {
            sub_1A8C0(v34);
          }

          if (v23)
          {
            sub_1A8C0(v23);
          }
        }
      }
    }
  }
}

void sub_3523D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "HeadsetJackHandler.cpp";
      v9 = 1024;
      v10 = 99;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument) [clientData is NULL]: clientData was NULL", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "clientData was NULL");
  }

  sub_35250C(a4, a1, a2, a3);
}

void sub_35250C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1 + 19;
  v8 = a1[19];
  v43 = a1 + 19;
  v10 = (*(v8 + 16))(a1 + 19);
  v44 = v10;
  sub_351EC0(a1);
  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 113);
    v11 = (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v11 = 0;
  }

  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 115);
    v12 = (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v12 = 0;
  }

  if (a1[39] && a1[37])
  {
    sub_25704(buf, a1 + 38, "", 118);
    if ((*(**buf + 152))(*buf))
    {
      sub_25704(&v40, a1 + 36, "", 118);
      v13 = (*(*v40 + 152))(v40);
      if (v41)
      {
        sub_1A8C0(v41);
      }
    }

    else
    {
      v13 = 0;
    }

    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  else
  {
    v13 = 0;
  }

  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 123);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 126);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[39] && a1[37])
  {
    sub_25704(buf, a1 + 38, "", 130);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    sub_25704(buf, a1 + 36, "", 131);
    (*(**buf + 512))(*buf, a2, a3, a4);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }
  }

  if (a1[33])
  {
    v14 = sub_5544(22);
    v15 = *v14;
    if (*v14)
    {
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
      {
        sub_25704(&v40, a1 + 32, "", 139);
        v16 = (*(*v40 + 152))(v40);
        *buf = 136315906;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 139;
        v46 = 1024;
        *v47 = v16;
        *&v47[4] = 1024;
        *&v47[6] = v11;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Wired headphones state: %u; headphones cached state: %u.", buf, 0x1Eu);
        if (v41)
        {
          sub_1A8C0(v41);
        }
      }
    }
  }

  if (a1[35])
  {
    v17 = sub_5544(22);
    v18 = *v17;
    if (*v17)
    {
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
      {
        sub_25704(&v40, a1 + 34, "", 145);
        v19 = (*(*v40 + 152))(v40);
        *buf = 136315906;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 145;
        v46 = 1024;
        *v47 = v19;
        *&v47[4] = 1024;
        *&v47[6] = v12;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d Wired microphone state: %u; wire microphone cached state: %u.", buf, 0x1Eu);
        if (v41)
        {
          sub_1A8C0(v41);
        }
      }
    }
  }

  if (!a1[39])
  {
    v40 = &v40;
    v41 = &v40;
    v42 = 0;
    goto LABEL_51;
  }

  if (a1[37])
  {
    v20 = sub_5544(22);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "HeadsetJackHandler.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 150;
        v46 = 1024;
        *v47 = v13;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d TTY cached state (all connected): %u.", buf, 0x18u);
      }
    }
  }

  v22 = a1[39];
  v40 = &v40;
  v41 = &v40;
  v42 = 0;
  if (!v22 || !a1[37])
  {
LABEL_51:
    if (v13)
    {
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  sub_25704(buf, a1 + 38, "", 160);
  if ((*(**buf + 152))(*buf))
  {
    sub_25704(&v37, a1 + 36, "", 160);
    v23 = (*(*v37 + 152))(v37);
    if (v38)
    {
      sub_1A8C0(v38);
    }
  }

  else
  {
    v23 = 0;
  }

  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v13 != v23)
  {
LABEL_57:
    sub_849B8();
  }

LABEL_58:
  if (a1[35])
  {
    sub_25704(buf, a1 + 34, "", 168);
    v24 = v12 ^ (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v24)
    {
      sub_849B8();
    }
  }

  if (a1[33])
  {
    sub_25704(buf, a1 + 32, "", 173);
    v25 = v11 ^ (*(**buf + 152))(*buf);
    if (*&buf[8])
    {
      sub_1A8C0(*&buf[8]);
    }

    if (v25)
    {
      sub_849B8();
    }

    v26 = a1[33];
    v37 = &v37;
    v38 = &v37;
    v39 = 0;
    if (v26 && ((a1[35] != 0) & v11) == 1)
    {
      sub_25704(buf, a1 + 32, "", 183);
      if ((*(**buf + 152))(*buf))
      {
        sub_25704(&__p, a1 + 34, "", 184);
        v27 = v12 ^ (*(*__p.__r_.__value_.__l.__data_ + 152))(__p.__r_.__value_.__r.__words[0]);
        if (__p.__r_.__value_.__l.__size_)
        {
          sub_1A8C0(__p.__r_.__value_.__l.__size_);
        }
      }

      else
      {
        v27 = 0;
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v27)
      {
        sub_849B8();
      }
    }
  }

  else
  {
    v37 = &v37;
    v38 = &v37;
    v39 = 0;
  }

  v28 = sub_5544(22);
  v29 = *v28;
  if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
  {
    sub_26D058(v35, v41, &v40);
    sub_8E920(&__p, v35, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HeadsetJackHandler.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 194;
    v46 = 2080;
    *v47 = p_p;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d fullCachePortList: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_65310(v35);
  }

  v31 = sub_5544(22);
  v32 = *v31;
  if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
  {
    sub_26D058(v35, v38, &v37);
    sub_8E920(&__p, v35, 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &__p;
    }

    else
    {
      v33 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = "HeadsetJackHandler.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 198;
    v46 = 2080;
    *v47 = v33;
    _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d portPropertyUpdatePortList: %s.", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_65310(v35);
  }

  if (v42)
  {
    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
    *buf = 1717793397;
    sub_80C2C(&buf[8], &v40);
    sub_1165C0(&__p, *buf);
    sub_65310(&buf[8]);
    if (!v39)
    {
      goto LABEL_101;
    }
  }

  else
  {
    if (!v39)
    {
      goto LABEL_102;
    }

    *&__p.__r_.__value_.__r.__words[1] = 0uLL;
    __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  }

  *buf = 1886418288;
  sub_80C2C(&buf[8], &v37);
  sub_1165C0(&__p, *buf);
  sub_65310(&buf[8]);
LABEL_101:
  v34 = sub_809C0();
  sub_11ABFC(v34, &__p, 0);
  sub_D169C(__p.__r_.__value_.__l.__size_);
LABEL_102:
  sub_351EC0(a1);
  sub_65310(&v37);
  sub_65310(&v40);
  if (v10)
  {
    (*(*v9 + 24))(v9);
  }
}

void sub_35305C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a13)
  {
    sub_1A8C0(a13);
  }

  if (a24)
  {
    sub_1A8C0(a24);
  }

  sub_65310(&a15);
  sub_65310(&a18);
  sub_224F4C(&a21);
  _Unwind_Resume(a1);
}

void sub_3531E8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *a1 = off_6C2FB8;
  v12 = a1 + 8;
  sub_53E8(__p, "HALJackStateHandler mutex");
  *v12 = off_6D3C50;
  if ((__p[23] & 0x80000000) != 0)
  {
    sub_54A0((a1 + 16), *__p, *&__p[8]);
    v13 = __p[23];
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    if (v13 < 0)
    {
      operator delete(*__p);
    }
  }

  else
  {
    *(a1 + 16) = *__p;
    *(a1 + 32) = *&__p[16];
    *(a1 + 40) = 850045863;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
  }

  *(a1 + 112) = a6;
  *(a1 + 120) = (*(*a6 + 16))(a6, "kcajtpni");
  v14 = (*(**(a1 + 112) + 16))(*(a1 + 112), "kcajptuo");
  *(a1 + 121) = v14;
  *(a1 + 128) = a1 + 128;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = 0;
  if (*(a1 + 120) == 1)
  {
    if (sub_17A154(*(a1 + 112), "kcajtpni", sub_290710, v12))
    {
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "HALJackStateHandler.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 118;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to add an input jack state change listener with the HAL.", __p, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Unable to add an input jack state change listener with the HAL.");
    }

    if ((*(a1 + 121) & 1) == 0)
    {
LABEL_11:
      sub_53E8(__p, "HeadsetJackHandler mutex");
      *(a1 + 152) = off_6D3C50;
      if ((__p[23] & 0x80000000) != 0)
      {
        sub_54A0((a1 + 160), *__p, *&__p[8]);
        v15 = __p[23];
        *(a1 + 184) = 850045863;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
        if (v15 < 0)
        {
          operator delete(*__p);
        }
      }

      else
      {
        *(a1 + 160) = *__p;
        *(a1 + 176) = *&__p[16];
        *(a1 + 184) = 850045863;
        *(a1 + 192) = 0u;
        *(a1 + 208) = 0u;
        *(a1 + 224) = 0u;
        *(a1 + 240) = 0u;
      }

      *(a1 + 256) = *a2;
      v16 = a2[1];
      *(a1 + 264) = v16;
      if (v16)
      {
        atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
      }

      *(a1 + 272) = *a3;
      v17 = a3[1];
      *(a1 + 280) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
      }

      *(a1 + 288) = *a5;
      v18 = a5[1];
      *(a1 + 296) = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
      }

      *(a1 + 304) = *a4;
      v19 = a4[1];
      *(a1 + 312) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
        if ((*(a1 + 312) == 0) == (*(a1 + 296) == 0))
        {
          v20 = a4[1] == 0;
          goto LABEL_26;
        }
      }

      else if (!*(a1 + 296))
      {
        v20 = 1;
LABEL_26:
        if (a2[1] || a3[1] || !v20 || a5[1])
        {
          *__p = v12;
          __p[8] = (*(*v12 + 16))(v12);
          operator new();
        }

        v21 = sub_5544(14);
        v22 = *v21;
        if (*v21)
        {
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "HeadsetJackHandler.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 68;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): All input Ports are NULL.", __p, 0x12u);
          }
        }

        v23 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v23, "All input Ports are NULL.");
        goto LABEL_39;
      }

      v24 = sub_5544(14);
      v25 = *v24;
      if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "HeadsetJackHandler.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 64;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inTTYInputPort and inTTYOutputPort must both be NULL or non-NULL", __p, 0x12u);
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v23, "inTTYInputPort and inTTYOutputPort must both be NULL or non-NULL");
LABEL_39:
    }
  }

  else if (!v14)
  {
    goto LABEL_11;
  }

  if (sub_17A154(*(a1 + 112), "kcajptuo", sub_290710, v12))
  {
    v29 = sub_5544(14);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "HALJackStateHandler.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 124;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to add an output jack state change listener with the HAL.", __p, 0x12u);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v31, "Unable to add an output jack state change listener with the HAL.");
  }

  goto LABEL_11;
}

void sub_353898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v15);
  sub_4E0BC(v16);
  sub_42A4D8(v14);
  _Unwind_Resume(a1);
}

void sub_3539A4(uint64_t *a1)
{
  v2 = a1 + 19;
  v3 = (*(a1[19] + 16))(a1 + 19);
  sub_351EC0(a1);
  v4 = (*(a1[1] + 16))(a1 + 1);
  v5 = a1 + 16;
  for (i = a1[17]; i != v5; i = i[1])
  {
    if (i[2] == sub_3523D0 && i[3] == a1)
    {
      if (i != v5)
      {
        v9 = *i;
        v8 = i[1];
        *(v9 + 8) = v8;
        *v8 = v9;
        --a1[18];
        operator delete(i);
      }

      break;
    }
  }

  if (v4)
  {
    (*(a1[1] + 24))(a1 + 1);
  }

  sub_35250C(a1, 0, 0, 0);
  v10 = a1[33];
  a1[32] = 0;
  a1[33] = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[35];
  a1[34] = 0;
  a1[35] = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = a1[39];
  a1[38] = 0;
  a1[39] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = a1[37];
  a1[36] = 0;
  a1[37] = 0;
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v3)
  {
    (*(*v2 + 24))(v2);
  }
}

void sub_353B6C(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v9 = *a2;
  sub_103670(v10, *(a1 + 8), a2);
  sub_168F08(a3);
  sub_45168();
  if (*(a1 + 12) == 1)
  {
    for (i = *(a3 + 8); i != a3; i = i[1])
    {
      v6 = i[7];
      v7 = i[8];
      while (v6 != v7)
      {
        sub_76388(buf, v6);
        for (j = v12; j != buf; j = *(j + 8))
        {
          if (*(*(j + 16) + 144) == 1886613611)
          {
            sub_87980(buf);
            operator new();
          }
        }

        sub_87980(buf);
        v6 += 3;
      }
    }
  }

  operator new();
}

void sub_35497C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  __cxa_free_exception(v45);
  (*(*v46 + 8))(v46);
  a27 = &a22;
  sub_F5714(&a27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_354C58(uint64_t a1, uint64_t a2)
{
  memset(&v24[2], 0, 48);
  v2 = *(*a2 + 24);
  if (v2 != *a2 + 16)
  {
    sub_25704(v24, (v2 + 32), "", 79);
    v3 = v24[0];
    v4 = *(v24[0] + 200);
    if (v4)
    {
      v5 = *(v24[0] + 144);
      v6 = *(v24[0] + 304);
      v7 = *(v24[0] + 192);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v8 = std::__shared_weak_count::lock(v4);
      std::__shared_weak_count::__release_weak(v4);
      if (v8)
      {
        if (v7)
        {
          (*(*v7 + 248))(&v21, v7, 1, v5);
          if (v22 && v22->__shared_owners_ != -1)
          {
            sub_166BF0();
          }

          v9 = sub_5544(14);
          v10 = *v9;
          if (*v9)
          {
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
            {
              buf = 136315394;
              buf_4 = "RoutingHandler_Broadcast_GenericConfig1.cpp";
              buf_12 = 1024;
              buf_14 = 88;
              _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to locate mute control.", &buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Unable to locate mute control.");
        }
      }
    }

    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      (*(*v3 + 144))(&v21, v3);
      v14 = v23;
      v15 = v21;
      sub_22170(__p, v3[36]);
      v16 = &v21;
      if (v14 < 0)
      {
        v16 = v15;
      }

      if (v20 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      buf = 136315906;
      buf_4 = "RoutingHandler_Broadcast_GenericConfig1.cpp";
      buf_12 = 1024;
      buf_14 = 85;
      v29 = 2080;
      v30 = v16;
      v31 = 2080;
      v32 = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [controlDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", &buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v23 < 0)
      {
        operator delete(v21);
      }
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 2003329396;
  }

  operator new();
}

void sub_355564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, char **__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, char *a28, uint64_t a29, uint64_t a30, char a31)
{
  __cxa_free_exception(v32);
  if (a18)
  {
    sub_1A8C0(a18);
  }

  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  sub_1A8C0(v31);
  if (a27)
  {
    sub_1A8C0(a27);
  }

  __p = &a28;
  sub_72C14(&__p);
  a28 = &a31;
  sub_F5714(&a28);
  _Unwind_Resume(a1);
}

void sub_3556DC(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 72) = 1065353216;
  *a1 = off_6DB8B0;
  *(a1 + 80) = 0;
  v3 = a1 + 80;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *a2;
  if (*a2 != v5)
  {
    v7 = (v5 - v6) >> 4;
    sub_14CD4C((a1 + 80));
    if (!(v7 >> 60))
    {
      v8 = *(a1 + 96) - *(a1 + 80);
      v9 = v8 >> 3;
      if (v8 >> 3 <= v7)
      {
        v9 = (v5 - v6) >> 4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_868A0(v3, v10);
    }

    sub_189A00();
  }

  sub_15DD68();
}

void sub_35580C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  sub_F5714(&a11);
  sub_13BFA8(v12);
  _Unwind_Resume(a1);
}

void sub_355844(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = *a1 + 16;
  for (i = *(*a1 + 24); i != v3; i = i[1])
  {
    sub_25704(&v7, i + 2, "", 241);
    v5 = *(v7 + 144);
    if (v8)
    {
      sub_1A8C0(v8);
    }

    if (v5 == 1885433888)
    {
      sub_25704(&v7, i + 4, "", 243);
      v6 = *(v7 + 144);
      if (v8)
      {
        sub_1A8C0(v8);
      }

      if (v6 == 1886613611)
      {
        sub_14BB28(a2, 8, (i + 2));
      }

      sub_14BB28(a2, 1, (i + 2));
    }
  }
}

uint64_t sub_355960(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_3559DC(a1, a2, a3, a4, a5);
  (*(*a1 + 40))(a1, a2, a4, a3);
  return v9;
}

uint64_t sub_3559DC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = &v51;
  v52 = &v51;
  v53 = 0;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  v44 = a2[3];
  v7 = sub_5544(21);
  v8 = *v7;
  if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "RoutingHandler_Broadcast_GenericConfig1.cpp";
    v56 = 1024;
    v57 = 134;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configuring broadcast route controls", buf, 0x12u);
  }

  v9 = *(*a2 + 24);
  if (v9 != *a2 + 16)
  {
    sub_25704(&v48, (v9 + 32), "", 138);
    v10 = v48;
    v11 = *(v48 + 200);
    if (v11)
    {
      v12 = *(v48 + 144);
      v13 = *(v48 + 192);
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v14 = std::__shared_weak_count::lock(v11);
      std::__shared_weak_count::__release_weak(v11);
      if (v14)
      {
        if (v13)
        {
          v15 = (*(*v13 + 240))(v13, v12);
          v45 = 0x6F7574706D757465;
          v46 = v15;
          if ((*(*v13 + 16))(v13, &v45))
          {
            operator new();
          }

          *buf = v10[36];
          sub_75788(&v49, *buf);
          v16 = sub_304BB8(v13, &v51);
          if (v16)
          {
            shared_weak_owners = v16[1].__shared_weak_owners_;
            v18 = *(v9 + 40);
            if (v18)
            {
              v19 = std::__shared_weak_count::lock(v18);
              if (v19)
              {
                v20 = *(v9 + 32);
                atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                sub_1A8C0(v19);
              }
            }

            operator new();
          }

          __p.__r_.__value_.__r.__words[0] = v13;
          __p.__r_.__value_.__l.__size_ = v14;
          atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_16632C(buf, &__p, v10);
        }
      }
    }

    v31 = sub_5544(14);
    v32 = *v31;
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      (*(*v10 + 144))(&__p, v10);
      v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
      v34 = __p.__r_.__value_.__r.__words[0];
      sub_22170(&v45, v10[36]);
      p_p = &__p;
      if (v33 < 0)
      {
        p_p = v34;
      }

      if (v47 >= 0)
      {
        v36 = &v45;
      }

      else
      {
        v36 = v45;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingHandler_Broadcast_GenericConfig1.cpp";
      v56 = 1024;
      v57 = 143;
      v58 = 2080;
      v59 = p_p;
      v60 = 2080;
      v61 = v36;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [activeDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
      if (v47 < 0)
      {
        operator delete(v45);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  if (!v53)
  {
    v38 = sub_5544(14);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingHandler_Broadcast_GenericConfig1.cpp";
      v56 = 1024;
      v57 = 173;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): could not get any IO devices for broadcast route", buf, 0x12u);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = 2003329396;
  }

  if (v52 != &v51)
  {
    sub_102CA8(buf, v52 + 2);
    operator new();
  }

  (*(*a1 + 48))(&v45);
  if (v44 == 1918990112)
  {
    v21 = sub_189600();
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_14CC7C(&v49, &v45);
  if (v21)
  {
    if (v22)
    {
      v23 = sub_5544(2);
      v24 = *v23;
      if (*v23)
      {
        if (os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingHandler_Broadcast_GenericConfig1.cpp";
          v56 = 1024;
          v57 = 192;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d RawModeDisablesSpeakerProcessing is active, but Speaker Protection is also active in HAL", buf, 0x12u);
        }
      }
    }

    goto LABEL_28;
  }

  if (v22)
  {
LABEL_28:
    sub_166718(a2);
    sub_15E010(v45, a3, a5, v44);
    v25 = 0;
    *(a4 + 16) = v45;
    goto LABEL_39;
  }

  v26 = sub_5544(20);
  v27 = *v26;
  if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEFAULT))
  {
    sub_108DF0(&__p, a2);
    v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingHandler_Broadcast_GenericConfig1.cpp";
    v56 = 1024;
    v57 = 197;
    v58 = 2080;
    v59 = v28;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HAL Speaker Protection is missing. Failing route %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v29 = v45;
  v45 = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  v25 = 1;
LABEL_39:
  sub_477A0(v50[0]);
  sub_14B120(&v51);
  return v25;
}

void sub_356330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  sub_477A0(a22);
  sub_14B120(&a24);
  _Unwind_Resume(a1);
}

void sub_356698(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DBA80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_35672C(void **a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_30BAFC(result);

    operator delete();
  }

  return result;
}

void sub_35683C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void *sub_356860(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[1];
  *a1 = v5;
  a1[1] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[2];
  if (v7)
  {
    a1[3] = v7;
    operator delete(v7);
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0;
  }

  *(a1 + 1) = *(a2 + 1);
  a1[4] = a2[4];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  return a1;
}

void sub_3568E8(uint64_t a1, void *a2)
{
  v20[0] = v20;
  v20[1] = v20;
  v20[2] = 0;
  v2 = *(a1 + 8);
  if (v2 == a1)
  {
    goto LABEL_31;
  }

  do
  {
    v5 = v2[3];
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      v7 = v2[2];
      if (v6)
      {
        v8 = v2[2];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }

    v9 = a2[1];
    if (!v9 || (v10 = std::__shared_weak_count::lock(v9)) == 0)
    {
      v11 = v8 == 0;
      if (!v6)
      {
        goto LABEL_13;
      }

LABEL_12:
      sub_1A8C0(v6);
      goto LABEL_13;
    }

    v11 = v8 == *a2;
    sub_1A8C0(v10);
    if (v6)
    {
      goto LABEL_12;
    }

LABEL_13:
    v12 = v2[1];
    if (!v11)
    {
      goto LABEL_30;
    }

    while (1)
    {
      if (v12 == a1)
      {
        sub_CFE14(v20, v20, a1, v2, v12);
        goto LABEL_30;
      }

      v13 = v12[3];
      if (v13)
      {
        v14 = std::__shared_weak_count::lock(v13);
        v15 = v12[2];
        if (v14)
        {
          v16 = v12[2];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
        v14 = 0;
      }

      v17 = a2[1];
      if (!v17 || (v18 = std::__shared_weak_count::lock(v17)) == 0)
      {
        v19 = v16 == 0;
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_25:
        sub_1A8C0(v14);
        goto LABEL_26;
      }

      v19 = v16 == *a2;
      sub_1A8C0(v18);
      if (v14)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (!v19)
      {
        break;
      }

      v12 = v12[1];
    }

    sub_CFE14(v20, v20, a1, v2, v12);
    v12 = v12[1];
LABEL_30:
    v2 = v12;
  }

  while (v12 != a1);
LABEL_31:
  sub_65310(v20);
}

void sub_356A6C(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        sub_65310(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_356AD4(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(result + 64) = *(a2 + 64);
  v2 = (a2 + 72);
  v3 = *(a2 + 72);
  *(result + 72) = v3;
  v4 = result + 72;
  v5 = *(a2 + 80);
  *(result + 80) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *(a2 + 64) = v2;
    *v2 = 0;
    *(a2 + 80) = 0;
  }

  else
  {
    *(result + 64) = v4;
  }

  *(result + 88) = *(a2 + 88);
  v6 = (a2 + 96);
  v7 = *(a2 + 96);
  *(result + 96) = v7;
  v8 = result + 96;
  v9 = *(a2 + 104);
  *(result + 104) = v9;
  if (v9)
  {
    *(v7 + 16) = v8;
    *(a2 + 88) = v6;
    *v6 = 0;
    *(a2 + 104) = 0;
  }

  else
  {
    *(result + 88) = v8;
  }

  return result;
}

void sub_356B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 *a10)
{
  sub_80534(&__dst, a10);
  *buf = *(a4 + 4);
  sub_106FA0(&v12, buf);
  operator new();
}

void sub_358770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, char a51)
{
  __cxa_free_exception(v51);
  if (__p)
  {
    a46 = __p;
    operator delete(__p);
  }

  if (a48)
  {
    a49 = a48;
    operator delete(a48);
  }

  (*(*a22 + 8))(a22);
  sub_25AF08(&a25);
  _Unwind_Resume(a1);
}

double sub_35898C(uint64_t a1, int a2)
{
  v31 = 0.0;
  if (*(a1 + 560) != 2)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AggregateDevice_Duplex.h";
      v34 = 1024;
      v35 = 371;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError): Duplex aggregate device configured with incorrect number of devices", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 560227702;
  }

  v3 = 552;
  if (a2)
  {
    v3 = 544;
  }

  v4 = *(a1 + v3);
  if (*(v4 + 32) != 1)
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v26 = "input";
      v33 = "AggregateDevice_Duplex.h";
      *buf = 136315650;
      if (a2)
      {
        v26 = "output";
      }

      v34 = 1024;
      v35 = 375;
      v36 = 2080;
      v37 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError): Aggregate's %s device list contains incorrect number of devices", buf, 0x1Cu);
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = 560227702;
  }

  v5 = *(v4 + 24);
  v6 = *(v5 + 24);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = std::__shared_weak_count::lock(v6);
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = *(v5 + 16);
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_1A8C0(v7);
  v10 = std::__shared_weak_count::lock(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!v10 || v9 == 0)
  {
LABEL_21:
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AggregateDevice_Duplex.h";
      v34 = 1024;
      v35 = 349;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadDeviceError) [theDevice is NULL]: NULL device", buf, 0x12u);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 560227702;
  }

  v29 = 0x676C6F626E737274;
  v30 = 0;
  if ((*(*v9 + 16))(v9, &v29))
  {
    v28 = 8;
    (*(*v9 + 40))(v9, &v29, 0, 0, &v28, &v31);
    if (v28 != 8)
    {
      v16 = sub_5544(14);
      v17 = *v16;
      if (*v16)
      {
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v33 = "AggregateDevice_Duplex.h";
          v34 = 1024;
          v35 = 356;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Unexpected device sample rate data size", buf, 0x12u);
        }
      }
    }

    v12 = v31;
  }

  else
  {
    v13 = sub_5544(17);
    v14 = *v13;
    v12 = 0.0;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v33 = "AggregateDevice_Duplex.h";
      v34 = 1024;
      v35 = 361;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get sample rate from device because sample rate property does not exist on device", buf, 0x12u);
    }
  }

  sub_1A8C0(v10);
  return v12;
}

void sub_358E84(void *a1)
{
  *a1 = off_6D3528;
  sub_14099C(a1);

  operator delete();
}

void sub_358EF8(uint64_t a1)
{
  sub_C31F4(*(a1 + 96));
  sub_C31F4(*(a1 + 72));
  v3 = (a1 + 40);
  sub_1084A8(&v3);
  v3 = (a1 + 16);
  sub_1084A8(&v3);
  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_358F98(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*(a2 + 8) - *a2 != 48 || v2[1] - *v2 < 0x408uLL || v2[4] - v2[3] < 0x408uLL)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 16);
      if (v8)
      {
        v9 = *(v8 + 72);
        v10 = *(a1 + 88);
        v11 = *(a1 + 84) + 1;
        *(a1 + 84) = v11;
        v12 = (*(a1 + 68) / *(a1 + 64)) * (v11 - v10);
        if (v12 >= *(a1 + 72))
        {
          *(a1 + 88) = v11;
          *(a1 + 80) = 0;
        }

        else if (v12 >= *(a1 + 76) && (*(a1 + 80) & 1) == 0)
        {
          *(a1 + 80) = 1;
          v13 = *(a1 + 40);
          if (!v13 || (v14 = *(a1 + 32), (v15 = std::__shared_weak_count::lock(v13)) == 0))
          {
            sub_175EA0();
          }

          v16 = v15;
          p_shared_weak_owners = &v15->__shared_weak_owners_;
          atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_1A8C0(v15);
          block[0] = _NSConcreteStackBlock;
          block[1] = 1174405120;
          block[2] = sub_359258;
          block[3] = &unk_6C3110;
          block[4] = a1;
          block[5] = v14;
          v40 = v16;
          atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
          v41 = v8;
          v42 = v7;
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(v9, block);
          if (v42)
          {
            sub_1A8C0(v42);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_weak(v40);
          }

          std::__shared_weak_count::__release_weak(v16);
        }
      }

      sub_1A8C0(v7);
    }
  }

  v18 = *(a1 + 144);
  if (*(a1 + 148) == v18)
  {
    return 0;
  }

  v20 = *(a1 + 104) - *(a1 + 96);
  if (!v20 || *(a1 + 128) == *(a1 + 120))
  {
    return 0;
  }

  v21 = v20 >> 3;
  *(a1 + 148) = v18;
  v22 = **a2;
  v23 = *(*a2 + 24);
  if (v21 >= 0x100)
  {
    v24 = 256;
  }

  else
  {
    v24 = v21;
  }

  v22[1] = 4 * v24;
  bzero(v22 + 2, 0x400uLL);
  v25 = *(a1 + 96);
  if (v24 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = 2;
  do
  {
    v28 = *v25++;
    v29 = v28;
    *&v22[v27++] = v29;
    --v26;
  }

  while (v26);
  v30 = *(a1 + 144);
  *v23 = v30;
  *v22 = v30;
  v32 = *(a1 + 120);
  v31 = *(a1 + 128);
  if (((v31 - v32) >> 3) >= 0x100)
  {
    LODWORD(v33) = 256;
  }

  else
  {
    v33 = (v31 - v32) >> 3;
  }

  v23[1] = 4 * v33;
  v34 = (v23 + 2);
  bzero(v34, 0x400uLL);
  if (v31 == v32)
  {
    return 2064;
  }

  v35 = *(a1 + 120);
  if (v33 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v33;
  }

  result = 2064;
  do
  {
    v37 = *v35++;
    v38 = v37;
    *v34++ = v38;
    --v36;
  }

  while (v36);
  return result;
}

void sub_359258(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[5] != 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      if (*(v2 + 16))
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = a1[7];
        *(v2 + 104) = *(v2 + 96);
        *(v2 + 128) = *(v2 + 120);
        v11 = *(v2 + 84);
        v13 = *(v2 + 64);
        v12 = *(v2 + 68);
        (*(*v10 + 176))(v10, 3508);
        (*(*v10 + 176))(v10, 3520, v2 + 120);
        *(v2 + 144) = (v12 / v13) * v11;
      }

      sub_1A8C0(v8);
    }
  }

  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_35960C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1A8C0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *sub_35965C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_359690(uint64_t result, float a2)
{
  *(result + 72) = a2;
  *(result + 76) = fmaxf(a2 + -0.1, 0.0);
  return result;
}

uint64_t sub_3596AC(uint64_t a1, int a2, float a3, float a4)
{
  *(a1 + 64) = a3;
  *(a1 + 68) = a2;
  result = (*(*a1 + 64))(a1, a4);
  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  return result;
}

void sub_359710(uint64_t a1)
{
  if (atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire))
  {
    v2 = -20;
    while (!__CFADD__(v2++, 1))
    {
      usleep(0x1388u);
      if ((atomic_exchange_explicit((a1 + 8), 1u, memory_order_acquire) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v6 = sub_5544(26);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "AncFilterLoggerV3.cpp";
      v10 = 1024;
      v11 = 130;
      v12 = 2080;
      v13 = "CloseFile";
      v14 = 1024;
      v15 = 100;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s failed to aquire lock after %u ms", &v8, 0x22u);
    }
  }

  else
  {
LABEL_5:
    v4 = *(a1 + 48);
    if (v4)
    {
      fclose(v4);
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      fclose(v5);
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    atomic_store(0, (a1 + 8));
  }
}

BOOL sub_359854(void *a1, const char **a2)
{
  v3 = a1[3];
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!a1[2])
  {
    goto LABEL_14;
  }

  v7 = *a2;
  if (a2[1] - *a2 != 48)
  {
    goto LABEL_14;
  }

  v8 = *a2;
  if (v7[23] < 0)
  {
    v8 = *v7;
  }

  v9 = v7 + 24;
  if (v7[47] < 0)
  {
    v9 = *v9;
  }

  if ((!a1[6] || !a1[7]) && (v10 = fopen(v8, "w"), (a1[6] = v10) != 0))
  {
    v11 = fopen(v9, "w");
    a1[7] = v11;
    v12 = v11 != 0;
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  sub_1A8C0(v6);
  return v12;
}

void sub_35994C(void *a1)
{
  sub_359984(a1);

  operator delete();
}

void *sub_359984(void *a1)
{
  *a1 = off_6C30B8;
  sub_359710(a1);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *a1 = off_6CE430;
  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_359C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v14);
  sub_1A8C0(v13);
  v16 = v10[6].__vftable;
  if (v16)
  {
    v10[6].__shared_owners_ = v16;
    operator delete(v16);
  }

  v17 = *a10;
  if (*a10)
  {
    v10[5].__shared_owners_ = v17;
    operator delete(v17);
  }

  shared_weak_owners = v10[2].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    std::__shared_weak_count::__release_weak(shared_weak_owners);
  }

  v10[1].__vftable = v12;
  v19 = v10[2].__vftable;
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_359D10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C3150;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_359D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_5544(20);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_108DF0(&v42, a2);
    v6 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingHandler_Record_GenericConfig1.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 71;
    v46 = 2080;
    v47 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activating route: %s", buf, 0x1Cu);
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  v7 = *(*a2 + 24);
  sub_25704(&v41, v7 + 2, "", 74);
  v8 = v41;
  v37 = *(v41 + 144);
  sub_CE168();
  BYTE3(v47) = 11;
  strcpy(buf, "AOP Audio-1");
  sub_CDEB8(&v42, buf);
  size = v42.__r_.__value_.__l.__size_;
  if (v42.__r_.__value_.__l.__size_)
  {
    v35 = std::__shared_weak_count::lock(v42.__r_.__value_.__l.__size_);
    if (v35)
    {
      v10 = v42.__r_.__value_.__r.__words[0];
    }

    else
    {
      v10 = 0;
    }

    std::__shared_weak_count::__release_weak(size);
  }

  else
  {
    v10 = 0;
    v35 = 0;
  }

  v11 = *(v8 + 200);
  if (v11)
  {
    v12 = *(v8 + 192);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = std::__shared_weak_count::lock(v11);
    if (!v13)
    {
      v12 = 0;
    }

    std::__shared_weak_count::__release_weak(v11);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v14 = *(a2 + 12);
  if (v14 == 1986556788 || v14 == 1987211117 || v14 == 1987208039)
  {
    if ((sub_CB5C4() & 1) == 0 || (*(a2 + 156)) && v10 && v37 == 1886216809)
    {
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v42.__r_.__value_.__l.__data_) = dword_6EB048;
      strcpy(buf, "meoabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      sub_163594(v10, buf, 4, &v42);
      LODWORD(v42.__r_.__value_.__l.__data_) = 1;
      strcpy(buf, "maoabolg");
      buf[9] = 0;
      *&buf[10] = 0;
      sub_163594(v10, buf, 4, &v42);
      sub_302860(v10);
      goto LABEL_33;
    }
  }

  else
  {
    sub_CB5C4();
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v12;
  if (!v12)
  {
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      (*(*v8 + 144))(&v42, v8);
      v30 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
      v31 = v42.__r_.__value_.__r.__words[0];
      sub_22170(&__p, *(v8 + 144));
      v32 = &v42;
      if (v30 < 0)
      {
        v32 = v31;
      }

      if (v40 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingHandler_Record_GenericConfig1.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 97;
      v46 = 2080;
      v47 = v32;
      v48 = 2080;
      v49 = p_p;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [activeDevice is NULL]: could not get device for port \\%s\\ (type: '%s').", buf, 0x26u);
      if (v40 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

LABEL_33:
  sub_2FBAF8(v10, 0, *(a2 + 12), *(a2 + 184), v7[9], a3);
  if (*(v41 + 304) == 2004367664)
  {
    sub_300D58(v14, v10);
  }

  sub_147688();
  if (byte_6E6560 == 1)
  {
    v15 = sub_3F8E40(*(a2 + 104), v14, v37);
    sub_300DD0((v15 > 0xFFu) & v15, v12);
  }

  sub_CE1E4(&v42, v10, v41, a2, v7[9], v14);
  sub_FC464(&v42, v7 + 2, v10);
  *buf = 0;
  *&buf[8] = 0;
  v16 = v7[3];
  if (v16)
  {
    v17 = std::__shared_weak_count::lock(v16);
    v18 = v17;
    if (v17)
    {
      v19 = v7[2];
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *buf = v19;
      *&buf[8] = v17;
      sub_1A8C0(v17);
    }

    else
    {
      *buf = 0;
      *&buf[8] = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  sub_301DE0(&__p, &v42.__r_.__value_.__l.__data_, buf);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  sub_102988(*(a2 + 12));
  if (*(a2 + 268))
  {
    v20 = *(a2 + 264);
  }

  if (!*(a2 + 128))
  {
    v21 = *(a2 + 124) == 1986291046;
  }

  v43 = 0;
  v44 = 0;
  v22 = v7[3];
  if (v22)
  {
    v23 = std::__shared_weak_count::lock(v22);
    if (v23)
    {
      v24 = v23;
      v25 = v7[2];
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v26 = v44;
      v43 = v25;
      v44 = v24;
      if (v26)
      {
        std::__shared_weak_count::__release_weak(v26);
      }

      sub_1A8C0(v24);
    }

    else
    {
      v27 = v44;
      v43 = 0;
      v44 = 0;
      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }
    }
  }

  sub_CF934(&v38, &v43, 1);
  operator new();
}

void sub_35A8D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (v33)
  {
    sub_1A8C0(v33);
  }

  operator delete();
}

void sub_35AAFC(id a1)
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

void sub_35ACD0(void *a1)
{
  sub_14099C(a1);

  operator delete();
}

void *sub_35AD0C(void **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    sub_13AA8C(result);

    operator delete();
  }

  return result;
}

void sub_35AD58(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_189A00();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_35B014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  v22 = *v20;
  if (*v20)
  {
    v19[124] = v22;
    operator delete(v22);
  }

  sub_65310(v19 + 120);
  v23 = v19[119];
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  sub_140A24(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_35B0B0(uint64_t a1, unsigned int a2)
{
  v7 = a2;
  *buf = &v7;
  v2 = sub_E9540(a1 + 32, a2)[5];
  if (!v2)
  {
    v4 = *sub_5544(14);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "DSPProcessorManager.cpp";
        v9 = 1024;
        v10 = 318;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v2 + 192))(v2);
}

uint64_t sub_35B204(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2;
  *buf = &v17;
  v12 = sub_E9540(a1 + 32, a2)[5];
  if (!v12)
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v19 = 1024;
      v20 = 298;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v12 + 48))(v12, a3, a4, a5, a6, a7);
}

uint64_t sub_35B394(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  *buf = &v15;
  v10 = sub_E9540(a1 + 32, a2)[5];
  if (!v10)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v17 = 1024;
      v18 = 278;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v10 + 72))(v10, a3, a4, a5, a6);
}

uint64_t sub_35B514(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  *buf = &v13;
  v8 = sub_E9540(a1 + 32, a2)[5];
  if (!v8)
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DSPProcessorManager.cpp";
      v15 = 1024;
      v16 = 258;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [instance is NULL]: Unable to find instance.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to find instance.");
  }

  return (*(*v8 + 64))(v8, a3, a4, a5);
}

uint64_t sub_35B68C(uint64_t a1, AudioUnitScope inScope, UInt32 a3)
{
  if (inScope - 3 <= 0xFFFFFFFD)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      outDataSize = 136315394;
      v20 = "DSPProcessorManager.cpp";
      v21 = 1024;
      v22 = 691;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::invalid_argument): inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input", &outDataSize, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_257CB4(exception, "inScope must be kAudioUnitScope_Output or kAudioUnitScope_Input");
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  outWritable = 0;
  outDataSize = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(v7, 0xBu, inScope, 0, &outDataSize, &outWritable);
  if (!PropertyInfo && outWritable && ((outDataSize = a3, (v11 = *(a1 + 72)) == 0) ? (v12 = 0) : (v12 = *(v11 + 16)), v9 = AudioUnitSetProperty(v12, 0xBu, inScope, 0, &outDataSize, 4u), v9))
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      outDataSize = 136315394;
      v20 = "DSPProcessorManager.cpp";
      v21 = 1024;
      v22 = 696;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &outDataSize, 0x12u);
    }
  }

  else
  {
    sub_132070(a1, inScope);
    return PropertyInfo;
  }

  return v9;
}

CFStringRef sub_35B8C8(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    outName = 0;
    if (!AudioComponentCopyName(*(a1 + 16), &outName))
    {
      v2 = outName;
      *(a1 + 64) = outName;
      if (v2)
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v2, @":");
        ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 0);
        *(a1 + 48) = ValueAtIndex;
        CFRetain(ValueAtIndex);
        MutableCopy = 0;
        if (CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
        {
          v6 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, 1);
          Length = CFStringGetLength(v6);
          MutableCopy = CFStringCreateMutableCopy(0, Length, v6);
          CFStringTrimWhitespace(MutableCopy);
        }

        *(a1 + 56) = MutableCopy;
        CFRelease(ArrayBySeparatingStrings);
      }
    }
  }

  v8 = *(a1 + 56);
  if (v8 || (v8 = *(a1 + 64)) != 0)
  {

    return CFRetain(v8);
  }

  else
  {

    return CFStringCreateWithCString(0, "unknown", 0x600u);
  }
}

uint64_t sub_35B9E8(uint64_t a1, AudioTimeStamp *inTimeStamp, UInt32 inNumberFrames, AudioBufferList *ioData)
{
  ioActionFlags = 512;
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  return AudioUnitProcess(v5, &ioActionFlags, inTimeStamp, inNumberFrames, ioData);
}

uint64_t sub_35BA38(uint64_t a1, uint64_t *a2)
{
  inData = *a2;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return AudioUnitSetProperty(v3, 0, 0, 0, &inData, 8u);
}

uint64_t sub_35BA88(uint64_t a1, unsigned int a2)
{
  v5[1] = 0;
  v5[0] = a2;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(v2 + 16);
  }

  else
  {
    v3 = 0;
  }

  return AudioUnitSetProperty(v3, 0x24u, 0, 0, v5, 0x10u);
}

uint64_t sub_35BAD8(uint64_t a1, _DWORD *a2)
{
  outData = 0;
  cf = 0;
  ioDataSize = 16;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  Property = AudioUnitGetProperty(v4, 0x24u, 0, 0, &outData, &ioDataSize);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!Property)
  {
    *a2 = outData;
  }

  return Property;
}

uint64_t sub_35BB58(uint64_t a1, AudioUnitParameterID a2, AudioUnitParameterValue *outValue, AudioUnitScope inScope, AudioUnitElement inElement)
{
  v5 = *(a1 + 72);
  if (v5)
  {
    return AudioUnitGetParameter(*(v5 + 16), a2, inScope, inElement, outValue);
  }

  else
  {
    return 4294967246;
  }
}

void sub_35BB80(void *a1)
{
  sub_13B284(a1);

  operator delete();
}

void sub_35BBE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C38F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_35BC58(void *a1)
{
  sub_13B284(a1);

  operator delete();
}

void sub_35BC90(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C37A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

BOOL sub_35BD04(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 104;
  v6 = v8;
  v4 = ((*(*a1 + 48))(a1, 4, v8, &v7, a3, a2) | a4) == 0;
  sub_35BDE0(&v6);
  return v4;
}

uint64_t *sub_35BDE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (v3 && (*(v2 + 96) & 0x10) != 0)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t sub_35BE20(void *a1, int inID, CFTypeRef *inData, UInt32 inDataSize, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (!inScope)
  {
    if (inID > 1734504311)
    {
      if (inID == 1734504312)
      {
        goto LABEL_2;
      }

      if (inID == 1735553138)
      {
        if (inDataSize == 8)
        {
          v36 = *inData;
          if (*inData)
          {
            CFRetain(*inData);
            v37 = CFGetTypeID(v36);
            if (v37 == CFDictionaryGetTypeID())
            {
              inDataa[0] = v36;
              v38 = sub_35CCF0(inDataa);
              v39 = sub_35CD58(*v38);
              v77 = inDataa;
              sub_35CEB4(&v84, &v77);
              v77 = v84;
              v31 = (*(*a1 + 56))(a1, 1733321574, &v77, 8, 0, v39);
              sub_4BA7C(&v84);
              if (inDataa[0])
              {
                CFRelease(inDataa[0]);
              }

              return v31;
            }

            CFRelease(v36);
          }
        }

        return 4294956445;
      }
    }

    else
    {
      if (inID == 1652060274)
      {
        if (inDataSize == 8)
        {
          v14 = *inData;
          if (*inData)
          {
            CFRetain(*inData);
            v44 = CFGetTypeID(v14);
            if (v44 == CFDictionaryGetTypeID())
            {
              v82 = v14;
              v45 = sub_35D8AC(v14, "AUName");
              if (!v45)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not find item");
              }

              sub_65388(&v81, v45);
              v46 = sub_35CD58(v14);
              v47 = sub_47FE0(v14, "data");
              if (!v47)
              {
                v63 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v63, "Could not find item");
              }

              v48 = v47;
              CFRetain(v47);
              v80 = v48;
              v49 = CFGetTypeID(v48);
              if (v49 != CFDataGetTypeID())
              {
                v66 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v66, "Could not construct");
              }

              sub_35D170(inDataa, &v81);
              sub_88CE8(&v84, "PropertyID");
              v83 = v46;
              v85 = CFNumberCreate(0, kCFNumberIntType, &v83);
              if (!v85)
              {
                v68 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v68, "Could not construct");
              }

              sub_88CE8(&v86, "Data");
              CFRetain(v80);
              v87 = v80;
              v69 = &v84;
              v70 = 2;
              valuePtr = sub_69CE8(&v69);
              p_valuePtr = &valuePtr;
              v72 = 1;
              v50 = sub_22A750(&p_valuePtr);
              cf = v50;
              sub_35D1BC(v91, &cf);
              v73 = inDataa;
              v74 = 2;
              v92 = sub_69CE8(&v73);
              v75 = &v92;
              v76 = 1;
              v51 = sub_22A750(&v75);
              v93 = v51;
              sub_35D208(&v94, &v93);
              v77 = &v94;
              v78 = 1;
              v52 = sub_69CE8(&v77);
              v79 = v52;
              if (v95)
              {
                CFRelease(v95);
              }

              if (v94)
              {
                CFRelease(v94);
              }

              if (v51)
              {
                CFRelease(v51);
              }

              if (v92)
              {
                CFRelease(v92);
              }

              for (i = 0; i != -4; i -= 2)
              {
                v54 = *&v91[i * 8 + 8];
                if (v54)
                {
                  CFRelease(v54);
                }

                v55 = inDataa[i + 2];
                if (v55)
                {
                  CFRelease(v55);
                }
              }

              if (v50)
              {
                CFRelease(v50);
              }

              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              for (j = 0; j != -32; j -= 16)
              {
                v57 = *(&v87 + j);
                if (v57)
                {
                  CFRelease(v57);
                }

                v58 = *(&v86 + j);
                if (v58)
                {
                  CFRelease(v58);
                }
              }

              inDataa[0] = v52;
              v59 = sub_35D254(a1, v81, v46);
              v31 = (*(*a1 + 56))(a1, 1886548848, inDataa, 8, 0, v59);
              if (v52)
              {
                CFRelease(v52);
              }

              if (v80)
              {
                CFRelease(v80);
              }

              if (v81)
              {
                CFRelease(v81);
              }

              goto LABEL_46;
            }

            goto LABEL_112;
          }

          goto LABEL_109;
        }

        return 4294956445;
      }

      if (inID == 1652060275)
      {
        if (inDataSize == 8)
        {
          v14 = *inData;
          if (*inData)
          {
            CFRetain(*inData);
            v15 = CFGetTypeID(v14);
            if (v15 == CFDictionaryGetTypeID())
            {
              v82 = v14;
              v16 = sub_35D9C0(v14, "BoxName");
              if (!v16)
              {
                v61 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v61, "Could not find item");
              }

              sub_65388(&v81, v16);
              sub_35D170(inDataa, &v81);
              sub_88CE8(&v84, "PropertyID");
              LODWORD(valuePtr) = 0;
              v85 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              if (!v85)
              {
                v64 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v64, "Could not construct");
              }

              v17 = sub_35D8AC(v14, "Preset");
              if (!v17)
              {
                v65 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v65, "Could not find item");
              }

              v18 = v17;
              CFRetain(v17);
              valuePtr = v18;
              v19 = CFGetTypeID(v18);
              if (v19 != CFDictionaryGetTypeID())
              {
                v67 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v67, "Could not construct");
              }

              sub_88CE8(&v86, "Value");
              v20 = valuePtr;
              if (valuePtr)
              {
                CFRetain(valuePtr);
              }

              v87 = v20;
              v69 = &v84;
              v70 = 2;
              cf = sub_69CE8(&v69);
              p_valuePtr = &cf;
              v72 = 1;
              v21 = sub_22A750(&p_valuePtr);
              v92 = v21;
              sub_35D1BC(v91, &v92);
              v73 = inDataa;
              v74 = 2;
              v93 = sub_69CE8(&v73);
              v75 = &v93;
              v76 = 1;
              v22 = sub_22A750(&v75);
              v79 = v22;
              sub_35D208(&v94, &v79);
              v77 = &v94;
              v78 = 1;
              v23 = sub_69CE8(&v77);
              v80 = v23;
              if (v95)
              {
                CFRelease(v95);
              }

              if (v94)
              {
                CFRelease(v94);
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (v93)
              {
                CFRelease(v93);
              }

              for (k = 0; k != -4; k -= 2)
              {
                v25 = *&v91[k * 8 + 8];
                if (v25)
                {
                  CFRelease(v25);
                }

                v26 = inDataa[k + 2];
                if (v26)
                {
                  CFRelease(v26);
                }
              }

              if (v21)
              {
                CFRelease(v21);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              for (m = 0; m != -32; m -= 16)
              {
                v28 = *(&v87 + m);
                if (v28)
                {
                  CFRelease(v28);
                }

                v29 = *(&v86 + m);
                if (v29)
                {
                  CFRelease(v29);
                }
              }

              if (valuePtr)
              {
                CFRelease(valuePtr);
              }

              inDataa[0] = v23;
              v30 = sub_35D254(a1, v81, 0);
              v31 = (*(*a1 + 56))(a1, 1886548848, inDataa, 8, 0, v30);
              if (v23)
              {
                CFRelease(v23);
              }

              if (v81)
              {
                CFRelease(v81);
              }

LABEL_46:
              CFRelease(v14);
              return v31;
            }

LABEL_112:
            v82 = 0;
            CFRelease(v14);
            return 4294956445;
          }

LABEL_109:
          v82 = v14;
          return 4294956445;
        }

        return 4294956445;
      }
    }

    if (inElement)
    {
      goto LABEL_2;
    }

    v40 = sub_35D460(inID);
    if ((v40 & 1) == 0)
    {
      goto LABEL_2;
    }

    if (inDataSize < 8 || !inData || v40 < 0x100u)
    {
      v60 = a1[9];
      if (v60)
      {
        v13 = *(v60 + 16);
      }

      else
      {
        v13 = 0;
      }

      v32 = 1733326433;
      v33 = 0;
      v34 = inID;
      goto LABEL_49;
    }

    v77 = sub_35D83C(*inData);
    if (v77)
    {
      sub_88CE8(&v84, "Value");
      sub_35D870(&v85, v77);
      inDataa[0] = &v84;
      inDataa[1] = &dword_0 + 1;
      v41 = sub_69CE8(inDataa);
      v94 = v41;
      if (v85)
      {
        CFRelease(v85);
      }

      if (v84)
      {
        CFRelease(v84);
      }

      inDataa[0] = v41;
      v42 = a1[9];
      if (v42)
      {
        v43 = *(v42 + 16);
      }

      else
      {
        v43 = 0;
      }

      v31 = AudioUnitSetProperty(v43, 0x67506366u, 0, inID, inDataa, inDataSize);
      sub_4BA7C(&v94);
    }

    else
    {
      v31 = 4294956445;
    }

    sub_1D5FE0(&v77);
    return v31;
  }

LABEL_2:
  v12 = a1[9];
  if (v12)
  {
    v13 = *(v12 + 16);
  }

  else
  {
    v13 = 0;
  }

  v32 = inID;
  v33 = inScope;
  v34 = inElement;
LABEL_49:

  return AudioUnitSetProperty(v13, v32, v33, v34, inData, inDataSize);
}

void sub_35C8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1CC130(exception_object);
}

void *sub_35CCF0(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  return result;
}

uint64_t sub_35CD58(const __CFDictionary *a1)
{
  v3 = CFStringCreateWithBytes(0, "ID", 2, 0x8000100u, 0);
  v7 = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  if ((!a1 || (Value = CFDictionaryGetValue(a1, v3), (v3 = v7) != 0)) && (CFRelease(v3), !a1) || !Value)
  {
    v6 = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(v6);
  }

  return sub_4A8F8(Value);
}

void sub_35CEB4(CFDictionaryRef *a1, const __CFDictionary ***a2)
{
  v3 = **a2;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  if (sub_43D7C(v3, "cfobject"))
  {
    v5 = **a2;
    if (v5)
    {
      v6 = sub_4A7F4(v5, "cfobject");
      if (v6)
      {
        v7 = v6;
        CFRetain(v6);
        sub_88CE8(&v16, "Value");
        cf = v7;
        v14 = &v16;
        v15 = 1;
        *a1 = sub_69CE8(&v14);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v16)
        {
          CFRelease(v16);
        }

        return;
      }

      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not find item");
    }

    else
    {
      v12 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v12, "Could not construct");
    }
  }

  v8 = **a2;
  if (!v8)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not construct");
    goto LABEL_22;
  }

  v9 = sub_47FE0(v8, "data");
  if (!v9)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v13, "Could not find item");
LABEL_22:
  }

  v10 = v9;
  CFRetain(v9);
  sub_88CE8(&v16, "Data");
  cf = v10;
  v14 = &v16;
  v15 = 1;
  *a1 = sub_69CE8(&v14);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}

uint64_t sub_35D170(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "Name");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_35D1BC(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "Properties");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_35D208(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "Boxes");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_35D254(uint64_t a1, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v12 = cf;
  v13 = a3;
  v6 = *(a1 + 152);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = a1 + 152;
  do
  {
    v8 = sub_35DB5C(v6 + 32, &v12);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == a1 + 152 || (sub_35DB5C(&v12, v7 + 32) & 0x80) != 0)
  {
LABEL_10:
    v9 = *(a1 + 160);
    if (cf)
    {
      CFRetain(cf);
    }

    operator new();
  }

  v10 = *(v7 + 48);
  if (cf)
  {
    CFRelease(cf);
  }

  return (v10 + 1);
}

void sub_35D444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_35DAD4(&a9);
  sub_35DB08(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_35D460(int a1)
{
  v1 = 1;
  if (a1 > 1818649968)
  {
    if (a1 > 1936745080)
    {
      if (a1 > 1952740206)
      {
        if (a1 > 1970040689)
        {
          if (a1 == 1987342435)
          {
            goto LABEL_64;
          }

          v4 = 1;
          if (a1 == 1987339125)
          {
            return v1 | (v4 << 8);
          }

          v3 = 1970040690;
        }

        else
        {
          if (a1 == 1952740207 || a1 == 1953000804)
          {
            goto LABEL_64;
          }

          v3 = 1953655149;
        }
      }

      else
      {
        if (a1 > 1936747635)
        {
          if (a1 == 1936747636 || a1 == 1936748645)
          {
            goto LABEL_64;
          }

          v5 = 29811;
        }

        else
        {
          if (a1 == 1936745081 || a1 == 1936745841)
          {
            goto LABEL_64;
          }

          v5 = 26739;
        }

        v3 = v5 | 0x73700000;
      }
    }

    else if (a1 > 1869768051)
    {
      if (a1 > 1920365170)
      {
        if (a1 == 1920365171 || a1 == 1936286831)
        {
          goto LABEL_64;
        }

        v3 = 1936289907;
      }

      else
      {
        if (a1 == 1869768052 || a1 == 1885500772)
        {
          goto LABEL_64;
        }

        v3 = 1919248750;
      }
    }

    else if (a1 > 1835429491)
    {
      if (a1 == 1835429492 || a1 == 1836019054)
      {
        goto LABEL_64;
      }

      v3 = 1852009588;
    }

    else
    {
      if (a1 == 1818649969 || a1 == 1818980210)
      {
        goto LABEL_64;
      }

      v3 = 1835164523;
    }

    goto LABEL_63;
  }

  if (a1 > 1667654508)
  {
    if (a1 > 1718186600)
    {
      if (a1 <= 1735287905)
      {
        if ((a1 - 1718186601) <= 0xF && ((1 << (a1 - 105)) & 0x8081) != 0)
        {
          goto LABEL_64;
        }

        goto LABEL_69;
      }

      if (a1 == 1735287906 || a1 == 1752199796)
      {
        goto LABEL_64;
      }

      v6 = 1768255844;
LABEL_68:
      v4 = 1;
      if (a1 == v6)
      {
        return v1 | (v4 << 8);
      }

      goto LABEL_69;
    }

    if (a1 <= 1668314731)
    {
      v4 = 1;
      if (a1 == 1667654509)
      {
        return v1 | (v4 << 8);
      }

      if (a1 != 1667789676)
      {
        v3 = 1668312435;
        goto LABEL_63;
      }

LABEL_64:
      v4 = 0;
      v1 = 1;
      return v1 | (v4 << 8);
    }

    if (a1 == 1668314732)
    {
      goto LABEL_64;
    }

    v4 = 1;
    if (a1 == 1668641398)
    {
      return v1 | (v4 << 8);
    }

    v3 = 1701864546;
LABEL_63:
    if (a1 == v3)
    {
      goto LABEL_64;
    }

LABEL_69:
    v1 = 0;
    v4 = 0;
    return v1 | (v4 << 8);
  }

  if (a1 > 1652122991)
  {
    if (a1 > 1652124790)
    {
      if (a1 == 1652124791 || a1 == 1652127340)
      {
        goto LABEL_64;
      }

      v2 = 30324;
    }

    else
    {
      if ((a1 - 1652122992) < 2 || a1 == 1652123756)
      {
        goto LABEL_64;
      }

      v2 = 27758;
    }

    goto LABEL_43;
  }

  if (a1 <= 1633907571)
  {
    if (a1 == 1600941675)
    {
      v4 = 1;
      return v1 | (v4 << 8);
    }

    v6 = 1601203557;
    goto LABEL_68;
  }

  if (a1 == 1633907572)
  {
    goto LABEL_64;
  }

  v4 = 1;
  if (a1 != 1651275122)
  {
    v2 = 25446;
LABEL_43:
    v3 = v2 | 0x62790000;
    goto LABEL_63;
  }

  return v1 | (v4 << 8);
}

CFTypeRef sub_35D83C(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void *sub_35D870(void *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = cf;
  return a1;
}

const UInt8 *sub_35D8AC(const __CFDictionary *a1, const UInt8 *__s)
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

void sub_35D974(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x35D920);
}

const UInt8 *sub_35D9C0(const __CFDictionary *a1, const UInt8 *__s)
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

void sub_35DA88(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1DB0E0(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x35DA34);
}

const void **sub_35DAD4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_35DB08(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_35DB3C(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t sub_35DB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_69954(*a1, a2);
  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == kCFCompareGreaterThan)
  {
    result = 1;
  }

  else
  {
    result = v5;
  }

  if (!result)
  {
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);
    v9 = v7 == v8;
    if (v7 < v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    if (v9)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  return result;
}

void *sub_35DBB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if ((sub_35DB5C(a3, (v4 + 4)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if ((sub_35DB5C((v7 + 4), a3) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_35DC3C(void *a1, int inID, CFTypeRef *outData, UInt32 *ioDataSize, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (inScope)
  {
    goto LABEL_7;
  }

  if ((inID - 1652060274) < 2 || inID == 1735553138)
  {
    goto LABEL_7;
  }

  if (inID == 1734504312)
  {
    if (outData)
    {
      if (*ioDataSize >= 8)
      {
        v49 = 0;
        v48 = 8;
        result = (*(*a1 + 48))(a1, 1735549286, &v49, &v48, 0, 0);
        if (!result)
        {
          if (v49)
          {
            sub_35E224(&theArray, kCFAllocatorDefault);
            v45 = 0;
            v46 = v49;
            sub_1DD754(&v45);
            sub_35E274(&v44);
            v21 = v44;
            v22 = sub_35E2B8(&v44);
            v39 = v23;
            v41 = v22;
            if (v21 != v22 || v23)
            {
              v24 = 0;
              v40 = v21;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v24);
                v26 = ValueAtIndex;
                if (ValueAtIndex)
                {
                  CFRetain(ValueAtIndex);
                }

                v62[0] = 0;
                v43 = v26;
                sub_35E324(v62);
                memset(v62 + 4, 0, 20);
                if (CADSPBoxGetAudioComponentDescription())
                {
                  v27 = HIDWORD(v62[0]);
                  v28 = v62[1];
                  v29 = HIDWORD(v62[1]);
                  v60 = @"name";
                  CFRetain(@"name");
                  Model = CADSPBoxGetModel();
                  v31 = Model;
                  if (Model)
                  {
                    CFRetain(Model);
                  }

                  v62[0] = 0;
                  v58 = v31;
                  sub_35E7C4(v62);
                  v32 = CADSPBoxModelCopyName();
                  v62[0] = 0;
                  v33 = sub_35E35C(v62);
                  v60 = 0;
                  v62[0] = 0;
                  v65[0] = @"name";
                  sub_35E35C(v33);
                  v59 = 0;
                  v65[1] = v32;
                  v57 = @"audioComponentDescription";
                  CFRetain(@"audioComponentDescription");
                  v55 = @"componentType";
                  CFRetain(@"componentType");
                  sub_35E394(&v54, kCFAllocatorDefault, v27);
                  v55 = 0;
                  v61 = 0;
                  v62[0] = @"componentType";
                  sub_35E35C(&v61);
                  v62[1] = v54;
                  v53 = @"componentSubType";
                  v54 = 0;
                  CFRetain(@"componentSubType");
                  sub_35E394(&v52, kCFAllocatorDefault, v28);
                  v53 = 0;
                  v61 = 0;
                  v62[2] = @"componentSubType";
                  sub_35E35C(&v61);
                  v62[3] = v52;
                  v51 = @"componentManufacturer";
                  v52 = 0;
                  CFRetain(@"componentManufacturer");
                  sub_35E394(&v50, kCFAllocatorDefault, v29);
                  v51 = 0;
                  v61 = 0;
                  v63 = @"componentManufacturer";
                  sub_35E35C(&v61);
                  v34 = v50;
                  v50 = 0;
                  v64 = v34;
                  sub_35E3E4(&v56, kCFAllocatorDefault, v62, 3);
                  v57 = 0;
                  v61 = 0;
                  v65[2] = @"audioComponentDescription";
                  sub_35E35C(&v61);
                  v35 = v56;
                  v56 = 0;
                  v65[3] = v35;
                  sub_35E580(&v61, kCFAllocatorDefault, v65, 2);
                  v36 = v61;
                  v61 = 0;
                  value = v36;
                  sub_35E71C(&v61);
                  v37 = 4;
                  do
                  {
                    sub_35E754(&v65[v37 - 1]);
                    sub_35E35C((&v63 + v37 * 8));
                    v37 -= 2;
                  }

                  while (v37 * 8);
                  sub_35E71C(&v56);
                  v38 = 6;
                  do
                  {
                    sub_35E78C(&v62[v38 - 1]);
                    sub_35E35C((&v60 + v38 * 8));
                    v38 -= 2;
                  }

                  while (v38 * 8);
                  sub_35E78C(&v50);
                  sub_35E35C(&v51);
                  sub_35E78C(&v52);
                  sub_35E35C(&v53);
                  sub_35E78C(&v54);
                  sub_35E35C(&v55);
                  sub_35E35C(&v57);
                  sub_35E35C(&v59);
                  sub_35E7C4(&v58);
                  sub_35E35C(&v60);
                  CFArrayAppendValue(theArray, value);
                  sub_35E754(&value);
                  v21 = v40;
                }

                sub_35E324(&v43);
                ++v24;
              }

              while (v21 != v41 || v24 != v39);
            }

            sub_35E2EC(&v44);
            *outData = CFRetain(theArray);
            *ioDataSize = 8;
            sub_1DD754(&v46);
            sub_35E7FC(&theArray);
            return 0;
          }

          else
          {
            return 4294956446;
          }
        }
      }

      else
      {
        return 4294967246;
      }
    }

    else
    {
      result = 0;
      *ioDataSize = 8;
    }

    return result;
  }

  if (inElement || (v19 = sub_35D460(inID), (v19 & 1) == 0))
  {
LABEL_7:
    v13 = a1[9];
    if (v13)
    {
      v14 = *(v13 + 16);
    }

    else
    {
      v14 = 0;
    }

    v15 = inID;
    v16 = inScope;
    v17 = inElement;
  }

  else
  {
    if ((v19 & 0xFF00) != 0)
    {
      v15 = 1733321574;
    }

    else
    {
      v15 = 1733326433;
    }

    v20 = a1[9];
    if (v20)
    {
      v14 = *(v20 + 16);
    }

    else
    {
      v14 = 0;
    }

    v16 = 0;
    v17 = inID;
  }

  return AudioUnitGetProperty(v14, v15, v16, v17, outData, ioDataSize);
}

void sub_35E1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  sub_1DD754(va);
  sub_35E7FC(va1);
  _Unwind_Resume(a1);
}

const void **sub_35E224(CFMutableArrayRef *a1, CFAllocatorRef allocator)
{
  v3 = 0;
  *a1 = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  return sub_35E7FC(&v3);
}

const void **sub_35E274(uint64_t *a1)
{
  v2 = 0;
  *a1 = CADSPGraphCopyBoxes();
  return sub_35E2EC(&v2);
}

const void **sub_35E2EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E324(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E35C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E394(CFNumberRef *a1, CFAllocatorRef allocator, int a3)
{
  valuePtr = a3;
  v4 = 0;
  *a1 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
  return sub_35E78C(&v4);
}

const void **sub_35E3E4(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v8 = 8 * a4 + 8;
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    __chkstk_darwin(v11);
    v17 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    __chkstk_darwin(v11);
    v17 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = 0;
  *a1 = v21;
  return sub_35E71C(&v23);
}

void sub_35E574(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

const void **sub_35E580(CFDictionaryRef *a1, const __CFAllocator *a2, uint64_t *a3, CFIndex a4)
{
  v8 = 8 * a4 + 8;
  __chkstk_darwin(a1);
  v10 = &v23 - ((v9 + 23) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v8);
  if (a4)
  {
    v12 = 16 * a4;
    v13 = 16 * a4;
    v14 = a3;
    v15 = v10;
    do
    {
      v16 = *v14;
      v14 += 2;
      *v15++ = v16;
      v13 -= 16;
    }

    while (v13);
    __chkstk_darwin(v11);
    v17 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
    v18 = a3 + 1;
    v19 = v17;
    do
    {
      v20 = *v18;
      v18 += 2;
      *v19++ = v20;
      v12 -= 16;
    }

    while (v12);
  }

  else
  {
    __chkstk_darwin(v11);
    v17 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v8);
  }

  v21 = CFDictionaryCreate(a2, v10, v17, a4, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v23 = 0;
  *a1 = v21;
  return sub_35E71C(&v23);
}

void sub_35E710(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

const void **sub_35E71C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E754(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E78C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E7C4(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **sub_35E7FC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_35E834(uint64_t a1, int a2, UInt32 *outDataSize, BOOL *a4, AudioUnitScope inScope, AudioUnitElement inElement)
{
  if (inScope)
  {
    goto LABEL_2;
  }

  if ((a2 - 1652060274) < 2)
  {
    goto LABEL_9;
  }

  if (a2 == 1734504312)
  {
    if (outDataSize)
    {
      *outDataSize = 8;
    }

    if (a4)
    {
      *a4 = 0;
    }

    return 0;
  }

  if (a2 == 1735553138)
  {
LABEL_9:
    if (outDataSize)
    {
      *outDataSize = 8;
    }

    if (a4)
    {
      *a4 = 1;
    }

    return 0;
  }

  if (!inElement)
  {
    v19 = sub_35D460(a2);
    if (v19)
    {
      if ((v19 & 0xFF00) != 0)
      {
        v13 = 1733321574;
      }

      else
      {
        v13 = 1733326433;
      }

      v12 = a1;
      v14 = outDataSize;
      v15 = a4;
      v16 = 0;
      v17 = a2;
      goto LABEL_3;
    }
  }

LABEL_2:
  v12 = a1;
  v13 = a2;
  v14 = outDataSize;
  v15 = a4;
  v16 = inScope;
  v17 = inElement;
LABEL_3:

  return sub_8E1AC(v12, v13, v14, v15, v16, v17);
}

void sub_35E960(uint64_t a1)
{
  *a1 = off_6C3648;
  sub_35E9CC(*(a1 + 152));
  sub_13B284(a1);

  operator delete();
}

void sub_35E9CC(void *a1)
{
  if (a1)
  {
    sub_35E9CC(*a1);
    sub_35E9CC(a1[1]);
    sub_35DB3C(a1[4]);

    operator delete(a1);
  }
}

void *sub_35EA20(uint64_t a1)
{
  *a1 = off_6C3648;
  sub_35E9CC(*(a1 + 152));

  return sub_13B284(a1);
}

void sub_35EAA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C3768;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_35EB14(uint64_t a1, unint64_t a2, AudioComponentDescription *a3)
{
  if (*(a1 + 24) <= a2)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *v9 = 136315394;
      *&v9[4] = "DSPProcessorManager.cpp";
      v10 = 1024;
      v11 = 157;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Bad index into DSPProcessorType map.", v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "Bad index into DSPProcessorType map.");
  }

  *v9 = *(a1 + 8);
  sub_55ACC(v9, a2);
  v4 = *(*v9 + 40);

  return AudioComponentGetDescription(v4, a3);
}

uint64_t sub_35EC64(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  if (*(a1 + 24) <= a2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 136315394;
      *&v8[4] = "DSPProcessorManager.cpp";
      v9 = 1024;
      v10 = 143;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::out_of_range): Bad index into DSPProcessorType map.", v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DE494(exception, "Bad index into DSPProcessorType map.");
  }

  *v8 = *(a1 + 8);
  sub_55ACC(v8, a2);
  *a3 = *(*v8 + 32);
  return 0;
}

void sub_35EDB8(uint64_t a1)
{
  *a1 = off_6C34A0;
  sub_35EE28(*(a1 + 40));
  sub_477A0(*(a1 + 16));

  operator delete();
}

void sub_35EE28(void *a1)
{
  if (a1)
  {
    sub_35EE28(*a1);
    sub_35EE28(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      sub_1A8C0(v2);
    }

    operator delete(a1);
  }
}

uint64_t sub_35EE80(uint64_t a1)
{
  *a1 = off_6C34A0;
  sub_35EE28(*(a1 + 40));
  sub_477A0(*(a1 + 16));
  return a1;
}

void sub_35EED0()
{
  qword_6EB0F0 = 0;
  qword_6EB0E0 = off_6C34A0;
  unk_6EB0E8 = &qword_6EB0F0;
  qword_6EB110 = 0;
  qword_6EB108 = 0;
  qword_6EB0F8 = 0;
  unk_6EB100 = &qword_6EB108;
  dword_6EB118 = 1;
  v0[0] = v0;
  v0[1] = v0;
  v0[2] = 0;
  operator new();
}

void sub_35F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_4E0BC(va);
  sub_35EE28(qword_6EB108);
  sub_477A0(qword_6EB0F0);
  _Unwind_Resume(a1);
}

void sub_35FA1C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  snprintf(__str, 0x13uLL, "%p", a1);
  sub_53E8(&v10, __str);
  v4 = std::string::insert(&v10, 0, "addr: ", 6uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v11, "; ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v13 = v6->__r_.__value_.__r.__words[2];
  *__p = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v13 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  if (v13 >= 0)
  {
    v9 = HIBYTE(v13);
  }

  else
  {
    v9 = __p[1];
  }

  std::string::append(a2, v8, v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *__str = *(a1 + 80);
  v15 = *(a1 + 88);
  sub_22CE0(&v10);
}

void sub_35FD98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_35FE50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    return 0;
  }

  v8 = (a1 + 92);
  v11 = *(a1 + 92);
  v12 = *(a1 + 100);
  result = sub_6FE08(a1 + 112, &v11);
  if (result)
  {
    v10 = *v8;
    v14 = a4;
    v15 = v10;
    v16 = *(a1 + 100);
    v11 = *a2;
    v12 = *(a2 + 2);
    v13 = a3;
    sub_185D3C((a1 + 112), &v15, &v11);
    v11 = *v8;
    v12 = *(a1 + 100);
    return sub_6FE08(a1 + 112, &v11) || sub_164A14(*(a1 + 104), (a1 + 92), sub_35FF6C, a1) == 0;
  }

  return result;
}

uint64_t sub_35FF6C(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 104) == result && a2 != 0)
  {
    v11 = v4;
    v12 = v5;
    v7 = a2;
    for (i = (a3 + 8); *(i - 1) != *(a4 + 96) || *(i - 2) != *(a4 + 92) || *i != *(a4 + 100); i += 3)
    {
      if (!--v7)
      {
        return result;
      }
    }

    v9 = *(a4 + 92);
    v10 = *(a4 + 100);
    return sub_6FF5C(a4 + 112, &v9);
  }

  return result;
}

uint64_t sub_360000(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    v10 = *(a1 + 92);
    v11 = *(a1 + 100);
    sub_6FE08(a1 + 112, &v10);
    v9 = *(a1 + 92);
    v13 = a4;
    v14 = v9;
    v15 = *(a1 + 100);
    v10 = *a2;
    v11 = *(a2 + 2);
    v12 = a3;
    sub_17C118((a1 + 112), &v14, &v10);
  }

  return result;
}

uint64_t sub_36012C(void **a1, uint64_t *a2)
{
  if ((((*a1)[2])(a1) & 1) == 0)
  {
    v6 = sub_5544(14);
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *a2;
      v12 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v8 = 2003332927;
LABEL_14:
    exception[2] = v8;
  }

  if ((((*a1)[3])(a1, a2) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v13 = *(a2 + 2);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v8 = 1970171760;
    goto LABEL_14;
  }

  v4 = *(*a1[13] + 48);

  return v4();
}

uint64_t sub_360430(void **a1, uint64_t *a2)
{
  if ((((*a1)[2])(a1) & 1) == 0)
  {
    v6 = sub_5544(14);
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *a2;
      v9 = *(a2 + 2);
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v4 = *(*a1[13] + 40);

  return v4();
}

uint64_t sub_36061C(void **a1)
{
  result = ((*a1)[2])(a1);
  if (result)
  {
    v3 = *(*a1[13] + 32);

    return v3();
  }

  return result;
}

uint64_t sub_3606C4(void **a1)
{
  result = ((*a1)[2])(a1);
  if (result)
  {
    v3 = *(*a1[13] + 24);

    return v3();
  }

  return result;
}

void sub_36078C(void *a1)
{
  *a1 = off_6C3930;
  sub_13A300((a1 + 14));
  sub_13BFA8(a1);

  operator delete();
}

uint64_t sub_3607F4(void *a1)
{
  *a1 = off_6C3930;
  sub_13A300((a1 + 14));

  return sub_13BFA8(a1);
}

uint64_t sub_360848(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1065353216;
  *a1 = off_6C3930;
  v5 = *a2;
  *(a1 + 88) = *(a2 + 2);
  *(a1 + 80) = v5;
  LODWORD(v5) = *(a3 + 8);
  *(a1 + 92) = *a3;
  v6 = a1 + 92;
  *(a1 + 100) = v5;
  *(a1 + 104) = a4;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  sub_165D0C(a1 + 112);
  v7 = *(a1 + 104);
  if (!v7 || ((*(*v7 + 16))(v7, v6) & 1) == 0)
  {
    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 104);
        sub_22170(__p, *(a1 + 92));
        if (v14 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315906;
        v16 = "RelayObject.cpp";
        v17 = 1024;
        v18 = 28;
        v19 = 2048;
        v20 = v11;
        v21 = 2080;
        v22 = v12;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: invalid relay object target. target: %p; property: %s", buf, 0x26u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  sub_F7240(a1);
  return a1;
}

void sub_360A88(_Unwind_Exception *a1)
{
  sub_13A300(v2);
  sub_13BFA8(v1);
  _Unwind_Resume(a1);
}

void sub_360AB4()
{
  sub_24A8B0(v0);
  if ((v2 & 1) == 0)
  {
    v2 = 1;
  }

  v1 = 1;
  if ((v4 & 1) == 0)
  {
    v4 = 1;
  }

  v3 = 2;
  sub_1F8148(v5, 0, 0, 0);
  sub_1F8148(v6, 0, 0, 0);
  v7 = 256;
  v8 = 256;
  v9 = 256;
  if ((v12 & 1) == 0)
  {
    v12 = 1;
  }

  v11[66] = 0;
  if ((v14 & 1) == 0)
  {
    v14 = 1;
  }

  v13 = 2;
  if ((v16 & 1) == 0)
  {
    v16 = 1;
  }

  v15 = 0;
  sub_30F70C(&v20, 196);
  if (v19 == 1)
  {
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    __p = v20;
    v18 = v21;
  }

  else
  {
    __p = v20;
    v18 = v21;
    v19 = 1;
  }

  sub_47DB04(v0);
  sub_1E0054(v11);
  sub_477A0(v10);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_360C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1E0000(va);
  _Unwind_Resume(a1);
}

uint64_t sub_360C44(uint64_t a1, unsigned int a2)
{
  if (a2 != 1885564781)
  {
    v3 = sub_5544(18);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v5 = v11 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v13 = "Device_ContinuityCapture_Aspen.cpp";
      v14 = 1024;
      v15 = 97;
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
      v13 = "Device_ContinuityCapture_Aspen.cpp";
      v14 = 1024;
      v15 = 98;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_360E18(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  if ((*(*a1 + 88))(a1, 0))
  {
    sub_15DD68();
  }

  v2 = sub_5544(14);
  v3 = *v2;
  if (*v2)
  {
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      buf_4 = "Device_ContinuityCapture_Aspen.cpp";
      v7 = 1024;
      v8 = 55;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Continuity capture device has no input streams.", &buf, 0x12u);
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Continuity capture device has no input streams.");
}

void sub_361388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  __cxa_free_exception(v37);
  sub_20B45C((v39 - 128));
  if (a37 == 1)
  {
    sub_8AAAC((v38 + 8));
  }

  _Unwind_Resume(a1);
}

void sub_3615BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v17);
  _Unwind_Resume(a1);
}

void sub_3615EC(uint64_t a1)
{
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_361634(uint64_t a1, int a2, int **a3, uint64_t a4, uint64_t a5)
{
  v66 = (*(*a1 + 24))(a1);
  if (a4)
  {
    v62 = *a4 ^ 1;
    v7 = *(a4 + 3);
    v60 = *(a4 + 1);
  }

  else
  {
    v7 = 0;
    v60 = 0;
    v62 = 1;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v8 = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    *(a1 + 16) = v8;
  }

  if (!(v62 & 1 | ((v60 & 1) == 0)))
  {
    v10 = sub_5544(26);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v68 = "L75Device.cpp";
      v69 = 1024;
      v70 = 222;
      v71 = 2080;
      v72 = "SetDataBlockWithOptions";
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s cannot write memory asynchronously with verifyWrite enabled.", buf, 0x1Cu);
    }

    return 5;
  }

  if (a3[1] == *a3)
  {
    v12 = 0;
    if (v7)
    {
      *(a4 + 4) = 0;
    }

    return v12;
  }

  if (a4 && *(a4 + 3) == 1)
  {
    v9 = mach_absolute_time();
    v8 = *(a1 + 16);
  }

  else
  {
    v9 = 0;
  }

  if (v66)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v53 = v13;
  v50 = v9;
  if (v60)
  {
    v65 = malloc_type_calloc(v8, 4uLL, 0x100004052888210uLL);
  }

  else
  {
    v65 = 0;
  }

  v14 = *a3;
  v15 = a3[1];
  v56 = a4;
  v51 = v7;
  if ((v66 & 1) == 0 && v14 != v15)
  {
    v16 = *v14;
    operator new();
  }

  if (v15 == v14)
  {
    v12 = 0;
    goto LABEL_104;
  }

  v59 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v8 >> v53;
  v20 = v15 - v14;
  v57 = v8 >> v53;
  while (1)
  {
    if (v19 >= v20 - v18)
    {
      v21 = v20 - v18;
    }

    else
    {
      v21 = v19;
    }

    if (v66)
    {
      v22 = &v14[v17];
    }

    else
    {
      v22 = v17;
    }

    v63 = v22;
    if (v66)
    {
      v23 = 0;
    }

    else
    {
      v23 = v17;
    }

    if (v66)
    {
      v24 = &v14[v17];
    }

    else
    {
      v24 = 0;
    }

    if (!*(a1 + 16))
    {
      *(a1 + 16) = (*(*a1 + 64))(a1, *(a1 + 8), a5);
    }

    v58 = v18;
    if (!a4 || *(v56 + 2) != 1)
    {
      break;
    }

    if (v66)
    {
      if (!v21)
      {
        goto LABEL_90;
      }

      v25 = 0;
      v26 = (v59 + v20);
      if (v57 < v26)
      {
        v26 = v57;
      }

      do
      {
        v27 = *v24++;
        v25 |= v27;
        --v26;
      }

      while (v26);
    }

    else
    {
      if (!v21)
      {
        goto LABEL_90;
      }

      v25 = 0;
      v28 = (v59 + v20);
      if (v57 < v28)
      {
        v28 = v57;
      }

      do
      {
        v29 = *v23++;
        v25 |= v29;
        --v28;
      }

      while (v28);
    }

    if (v25)
    {
      break;
    }

LABEL_90:
    v19 = v57;
    v17 = v58 + v57;
    v14 = *a3;
    v20 = a3[1] - *a3;
    v59 -= v57;
    v18 = v58 + v57;
    a4 = v56;
    if (v20 <= v17)
    {
      v12 = 0;
      v7 = v51;
      goto LABEL_104;
    }
  }

  v61 = v18;
  v30 = v18 + a2;
  v31 = (v21 << v53);
  if (v57 >= (v59 + v20))
  {
    v32 = (v59 + v20);
  }

  else
  {
    v32 = v57;
  }

  v33 = &v14[v18];
  v34 = 5;
  v35 = 1;
  while (2)
  {
    v12 = (*(*a1 + 56))(a1, *(a1 + 8), a1 + 24, v62 & 1, v30, v21, v31, v63, a5);
    if (v12)
    {
      v36 = sub_5544(26);
      v37 = *v36;
      if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v68 = "L75Device.cpp";
        v69 = 1024;
        v70 = 284;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        v73 = 1024;
        v74 = v30;
        v75 = 1024;
        v76 = v21;
        v77 = 1024;
        v78 = v12;
        v79 = 1024;
        v80 = v34 - 1;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s _SetRegister( addr=0x%x, len=%d) failed, status = %d. Tries remaining = %d", buf, 0x34u);
      }

LABEL_68:
      if (--v34)
      {
        continue;
      }

      if (v12)
      {
        goto LABEL_96;
      }

      if (v35)
      {
        goto LABEL_90;
      }

      v47 = sub_5544(26);
      v48 = *v47;
      v7 = v51;
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v68 = "L75Device.cpp";
        v69 = 1024;
        v70 = 330;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s verification failed", buf, 0x1Cu);
      }

      v12 = 0xFFFFFFFFLL;
LABEL_103:
      a4 = v56;
      goto LABEL_104;
    }

    break;
  }

  if ((v60 & 1) == 0 || sub_361FA0(a1, v30))
  {
    if (v35)
    {
      goto LABEL_90;
    }

LABEL_67:
    v35 = 0;
    v12 = 0;
    goto LABEL_68;
  }

  v12 = (*(*a1 + 48))(a1, *(a1 + 8), a1 + 24, v30, v21, v31, v65, a5);
  if (!v12)
  {
    if (!v21)
    {
      goto LABEL_90;
    }

    v38 = 0;
    while (1)
    {
      if (v66)
      {
        v39 = v33[v38];
        v40 = v65[v38];
      }

      else
      {
        v39 = *(v61 + v38);
        v40 = *(v65 + v38);
      }

      if (v39 != v40)
      {
        if (HIBYTE(v40) != 255)
        {
          break;
        }

        if ((v39 & 0xFF800000) != 0x800000 || ((v40 ^ v39) & 0xFFFFFF) != 0)
        {
          break;
        }
      }

      if (v32 == ++v38)
      {
        goto LABEL_90;
      }
    }

    v42 = *sub_5544(26);
    if (v42)
    {
      log = v42;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316674;
        v68 = "L75Device.cpp";
        v69 = 1024;
        v70 = 315;
        v71 = 2080;
        v72 = "SetDataBlockWithOptions";
        v73 = 1024;
        v74 = v39;
        v75 = 1024;
        v76 = v40;
        v77 = 1024;
        v78 = v30 + v38;
        v79 = 1024;
        v80 = v34;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s verify failed (0x%x != 0x%x), addr=0x%x. Tries remaining = %u", buf, 0x34u);
      }
    }

    goto LABEL_67;
  }

  v43 = sub_5544(26);
  v44 = *v43;
  if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v68 = "L75Device.cpp";
    v69 = 1024;
    v70 = 291;
    v71 = 2080;
    v72 = "SetDataBlockWithOptions";
    v73 = 1024;
    v74 = v30;
    v75 = 1024;
    v76 = v21;
    v77 = 1024;
    v78 = v12;
    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s _GetRegister( addr=0x%x, len=%d) failed, status = %d", buf, 0x2Eu);
  }

LABEL_96:
  v45 = sub_5544(26);
  v46 = *v45;
  v7 = v51;
  if (!*v45)
  {
    goto LABEL_103;
  }

  a4 = v56;
  if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v68 = "L75Device.cpp";
    v69 = 1024;
    v70 = 325;
    v71 = 2080;
    v72 = "SetDataBlockWithOptions";
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s Failed", buf, 0x1Cu);
  }

LABEL_104:
  if (v60)
  {
    free(v65);
  }

  if (v7)
  {
    *(a4 + 4) = sub_37D544(v50);
  }

  return v12;
}

void sub_361F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3620AC(uint64_t a1, uint64_t *a2, uint64_t a3)
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
      *&v12[1] = "L75Device.cpp";
      *(&v12[3] + 2) = 51;
      HIWORD(v12[4]) = 2080;
      LOWORD(v12[3]) = 1024;
      *&v12[5] = "GetBufferSize";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s ERROR: Audio driver returned invalid buffer lengths (read=%u, write=%u)", v12, 0x28u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Audio driver returned invalid buffer lengths");
  }

  return v20;
}

uint64_t sub_3623B8(int a1, uint64_t a2, NSObject **a3, uint64_t a4, int a5, int a6, size_t size, void *buffer, uint64_t a9)
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
    v14[2] = sub_362548;
    v14[3] = &unk_6C3B78;
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

void sub_362520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_362548(uint64_t a1)
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
      v15 = "L75Device.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 2080;
      v19 = "SetRegister_block_invoke";
      v20 = 2048;
      *v21 = v12;
      *&v21[8] = 1024;
      v22[0] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s Invalid data buffer size (%lu != %u)", buf, 0x2Cu);
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
        v15 = "L75Device.cpp";
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
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
      }
    }
  }

  if (*(a1 + 76) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t sub_3627AC(uint64_t a1, uint64_t a2, NSObject **a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
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
    v16[2] = sub_3629C4;
    v16[3] = &unk_6C3BC8;
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
          v25 = "L75Device.cpp";
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
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d L75Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
        }
      }
    }

    v8 = *(v21 + 6);
  }

  _Block_object_dispose(&v20, 8);
  return v8;
}

void sub_362998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_3629C4(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_362A50;
  v3[3] = &unk_6C3BA0;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return sub_138DB0(v3);
}

uint64_t sub_362A50(uint64_t a1)
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

void sub_362B34(uint64_t a1)
{
  sub_1D8A20(a1);

  operator delete();
}

void sub_362B70()
{
  qword_6EB2A8 = IOHIDEventSystemClientCreate();
  qword_6EB2B0 = 0;
  qword_6EB2D0 = 0;
  if (!qword_6EB2A8)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v16 = "HIDEventSystemClient.cpp";
      *&v16[8] = 1024;
      *&v16[10] = 31;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  LODWORD(v11) = 11;
  cf = CFNumberCreate(0, kCFNumberIntType, &v11);
  if (!cf)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "Could not construct");
  }

  sub_88CE8(buf, "PrimaryUsagePage");
  v0 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&v16[4] = v0;
  valuePtr = 1;
  v11 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v11)
  {
    v10 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v10, "Could not construct");
  }

  sub_88CE8(&v16[12], "PrimaryUsage");
  v1 = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v17[0] = v1;
  v13[0] = buf;
  v13[1] = 2;
  v2 = sub_69CE8(v13);
  v3 = 0;
  v13[2] = v2;
  do
  {
    v4 = v17[v3];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *&v16[v3 * 8 + 12];
    if (v5)
    {
      CFRelease(v5);
    }

    v3 -= 2;
  }

  while (v3 != -4);
  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  IOHIDEventSystemClientSetMatching();
  IOHIDEventSystemClientRegisterDeviceMatchingCallback();
  IOHIDEventSystemClientRegisterEventCallback();
  sub_68E60();
  IOHIDEventSystemClientSetDispatchQueue();
  IOHIDEventSystemClientActivate();
  sub_362FBC(&qword_6EB2A8);
  sub_363090(&qword_6EB2A8);
  CFRelease(v2);
}

void sub_362E90(_Unwind_Exception *a1)
{
  sub_23DDE8(&qword_6EB2B8);
  sub_47BA4(&qword_6EB2B0);
  sub_3630FC();
  _Unwind_Resume(a1);
}

void sub_362FBC(uint64_t a1)
{
  v2 = IOHIDEventSystemClientCopyServices(*a1);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    if (v4 != CFArrayGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_363064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  sub_1DC7F8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_363090(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    v3 = sub_363124(result);
    v2 = *(v1 + 40);
    if (!v2)
    {
      sub_46A74();
    }

    return (*(*v2 + 48))(v2, &v3);
  }

  return result;
}

void sub_3630FC()
{
  if (qword_6EB2A8)
  {
    CFRelease(qword_6EB2A8);
  }
}

NSObject *sub_363124(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = 0;
    v3 = 0;
    v14 = 0x200000001;
    do
    {
      v4 = *&buf[v2 - 8];
      KeyboardEvent = IOHIDEventCreateKeyboardEvent();
      for (i = 0; i < CFArrayGetCount(*(a1 + 8)); ++i)
      {
        CFArrayGetValueAtIndex(*(a1 + 8), i);
        v7 = IOHIDServiceClientCopyEvent();
        if (v7)
        {
          if (IOHIDEventGetIntegerValue())
          {
            if (v4 > 0x20)
            {
              goto LABEL_25;
            }

            v8 = v4;
            if (((1 << v4) & 0x100010006) == 0)
            {
              if (v4 == 3)
              {
                v8 = 4;
              }

              else
              {
                if (v4 != 4)
                {
LABEL_25:
                  v11 = sub_5544(14);
                  v12 = *v11;
                  if (*v11)
                  {
                    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315394;
                      v16 = "HIDEventSystemClient.cpp";
                      v17 = 1024;
                      v18 = 102;
                      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): SmartCoverState::Unknown usage", buf, 0x12u);
                    }
                  }

                  exception = __cxa_allocate_exception(0x10uLL);
                  std::logic_error::logic_error(exception, "SmartCoverState::Unknown usage");
                }

                v8 = 8;
              }
            }

            v3 = (v8 | v3);
          }

          CFRelease(v7);
        }
      }

      if (KeyboardEvent)
      {
        CFRelease(KeyboardEvent);
      }

      v2 += 4;
    }

    while (v2 != 8);
  }

  else
  {
    v9 = sub_5544(17);
    v3 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "HIDEventSystemClient.cpp";
        v17 = 1024;
        v18 = 85;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d IOHIDEventSystemClientCopyServices(mHidSystemClient) returned null", buf, 0x12u);
      }

      return 0;
    }
  }

  return v3;
}

void sub_3633D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11)
{
  __cxa_free_exception(v11);
  sub_363424(&a10);
  sub_363424(&a11);
  _Unwind_Resume(a1);
}

const void **sub_363424(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_363458(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = IOHIDEventGetIntegerValue();
    if (result == 65289)
    {

      return sub_363090(v1);
    }
  }

  return result;
}

uint64_t sub_3634B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    IOHIDServiceClientRegisterRemovalCallback();
    sub_362FBC(v1);

    return sub_363090(v1);
  }

  return result;
}

uint64_t sub_363518(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_362FBC(result);

    return sub_363090(v1);
  }

  return result;
}

void sub_363558()
{
  if ((atomic_load_explicit(&qword_6EB2D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6EB2D8))
  {
    sub_362B70();

    __cxa_guard_release(&qword_6EB2D8);
  }
}

void sub_3635D4(uint64_t a1)
{
  if (!atomic_load((a1 + 16)))
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "AggregateDevice_IODelegate.cpp";
      v11 = 1024;
      v12 = 39;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v3 = sub_5544(32);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        v5 = atomic_load((a1 + 16));
        *buf = 136315650;
        v10 = "AggregateDevice_IODelegate.cpp";
        v11 = 1024;
        v12 = 40;
        v13 = 1024;
        v14 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informed to Handle IO Stop, current start count %u", buf, 0x18u);
      }
    }
  }

  if (atomic_fetch_add((a1 + 16), 0xFFFFFFFF) == 1 && !sub_363A44(a1))
  {
    atomic_fetch_add((a1 + 16), 1u);
  }
}

BOOL sub_363A44(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AggregateDevice_IODelegate.cpp";
      v21 = 1024;
      v22 = 71;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a1 + 24))
  {
    v14 = sub_5544(14);
    v15 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AggregateDevice_IODelegate.cpp";
      v21 = 1024;
      v22 = 72;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v16 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v16, "Precondition failure.");
  }

  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = atomic_load((a1 + 16));
    *buf = 136315650;
    v20 = "AggregateDevice_IODelegate.cpp";
    v21 = 1024;
    v22 = 74;
    v23 = 1024;
    LODWORD(v24) = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d hardstop called: mStart = %d", buf, 0x18u);
  }

  v5 = sub_452748(*(a1 + 24), **(a1 + 8));
  if (v5)
  {
    v6 = sub_5544(17);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, v5);
      if (v18 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315650;
      v20 = "AggregateDevice_IODelegate.cpp";
      v21 = 1024;
      v22 = 80;
      v23 = 2080;
      v24 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Stop failed with status %s on AggregateDevice IO Delegate", buf, 0x1Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 == 0;
}

void sub_364008(uint64_t a1)
{
  v2 = sub_5544(32);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v4 = atomic_load((a1 + 16));
        v5 = 136315650;
        v6 = "AggregateDevice_IODelegate.cpp";
        v7 = 1024;
        v8 = 23;
        v9 = 1024;
        v10 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Informed to Handle IO Start, current start count is %u", &v5, 0x18u);
      }
    }
  }

  if (!atomic_fetch_add((a1 + 16), 1u) && !sub_364108(a1))
  {
    atomic_fetch_add((a1 + 16), 0xFFFFFFFF);
  }
}

BOOL sub_364108(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v10 = sub_5544(14);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AggregateDevice_IODelegate.cpp";
      v20 = 1024;
      v21 = 54;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (!*(a1 + 24))
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "AggregateDevice_IODelegate.cpp";
      v20 = 1024;
      v21 = 55;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v15 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v15, "Precondition failure.");
  }

  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = atomic_load((a1 + 16));
    *buf = 136315650;
    v19 = "AggregateDevice_IODelegate.cpp";
    v20 = 1024;
    v21 = 57;
    v22 = 1024;
    LODWORD(v23) = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d hardstart called: mStart = %d", buf, 0x18u);
  }

  v5 = sub_4525FC(*(a1 + 24), **(a1 + 8));
  if (v5)
  {
    v6 = sub_5544(17);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(__p, v5);
        if (v17 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        *buf = 136315650;
        v19 = "AggregateDevice_IODelegate.cpp";
        v20 = 1024;
        v21 = 62;
        v22 = 2080;
        v23 = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Start failed with status %s on AggregateDevice IO Delegate", buf, 0x1Cu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v5 == 0;
}

void sub_364428(uint64_t a1)
{
  *a1 = off_6D8AC0;
  v1 = (a1 + 8);
  sub_1F7248((a1 + 24));
  sub_1F71EC(v1);

  operator delete();
}

uint64_t sub_36449C(uint64_t a1)
{
  *a1 = off_6D8AC0;
  v2 = (a1 + 8);
  sub_1F7248((a1 + 24));
  sub_1F71EC(v2);
  return a1;
}

void sub_3644F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5544(18);
  v7 = sub_5544(29);
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
      goto LABEL_7;
    }
  }

  if ((v9 & v10) == 0)
  {
    v6 = v7;
  }

LABEL_7:
  v11 = *v6;
  if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
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
    sub_24FB08(&__p, a3);
    v14 = __dst;
    if (v12 < 0)
    {
      v14 = v13;
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
    *&buf[4] = "Port_Bluetooth_Aspen.cpp";
    v33 = 1024;
    v34 = 523;
    v35 = 2080;
    v36 = v14;
    v37 = 2080;
    v38 = p_p;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio port with UID %s: headset status %s", buf, 0x26u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (*(a3 + 12) == 1)
  {
    if (*a3 != *a2)
    {
      LODWORD(__dst[0]) = 1651796336;
      sub_1F2E44(buf, __dst, 1);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
    }

    if (*(a3 + 4) != *(a2 + 4))
    {
      LODWORD(__dst[0]) = 1651796339;
      sub_1F2E44(buf, __dst, 1);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
    }

    if (*(a3 + 8) != *(a2 + 8))
    {
      LODWORD(__dst[0]) = 1651798131;
      sub_1F2E44(buf, __dst, 1);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
    }

    v16 = *(a3 + 12);
    v17 = -1;
    if (*a3 != -1)
    {
      if (*(a3 + 12))
      {
        v17 = 1;
        if (*a3 != 1)
        {
          if (*(a3 + 4) == 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = 2;
          }
        }
      }
    }

    v18 = *(a2 + 12);
    v19 = -1;
    if (*a2 != -1)
    {
      if (*(a2 + 12))
      {
        v19 = 1;
        if (*a2 != 1)
        {
          if (*(a2 + 4) == 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = 2;
          }
        }
      }
    }

    if (v17 != v19)
    {
      if (!(*(*a1 + 376))(a1) || *a3 != -1 && *(a3 + 12) && (*a3 == 1 || *(a3 + 4) == 1))
      {
        v22 = sub_5544(18);
        v23 = sub_5544(29);
        v24 = 0;
        *buf = 0x100000002;
        v25 = *(v22 + 8);
        while (1)
        {
          v26 = *&buf[v24];
          if (((v25 & v26) != 0) != ((*(v23 + 8) & v26) != 0))
          {
            break;
          }

          v24 += 4;
          if (v24 == 8)
          {
            goto LABEL_67;
          }
        }

        if ((v25 & v26) == 0)
        {
          v22 = v23;
        }

LABEL_67:
        v27 = *v22;
        if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 303) < 0)
          {
            sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
          }

          else
          {
            *__dst = *(a1 + 280);
            v31 = *(a1 + 296);
          }

          v28 = __dst;
          if (v31 < 0)
          {
            v28 = __dst[0];
          }

          *buf = 136315650;
          *&buf[4] = "Port_Bluetooth_Aspen.cpp";
          v33 = 1024;
          v34 = 549;
          v35 = 2080;
          v36 = v28;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: routability unchanged due to negative ownership status", buf, 0x1Cu);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      else
      {
        v20 = *(a1 + 88);
        __dst[0] = *(a1 + 80);
        __dst[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_22ED54(buf, __dst, 1);
        sub_364CA8(a1, buf, 0);
        sub_65310(buf);
        if (__dst[1])
        {
          std::__shared_weak_count::__release_weak(__dst[1]);
        }
      }

      LODWORD(__dst[0]) = 1651796325;
      sub_1F2E44(buf, __dst, 1);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
      v16 = *(a3 + 12);
      v18 = *(a2 + 12);
    }

    if (v16 != v18)
    {
      *__dst = xmmword_517350;
      sub_1F2E44(buf, __dst, 4);
      (*(*a1 + 416))(a1, buf);
      sub_4E0BC(buf);
    }
  }

  else if (*(a2 + 12) == 1)
  {
    *__dst = xmmword_517350;
    sub_1F2E44(buf, __dst, 4);
    (*(*a1 + 416))(a1, buf);
    sub_4E0BC(buf);
    if ((*(*a1 + 376))(a1))
    {
      if (*a3 == -1 || !*(a3 + 12) || *a3 != 1 && *(a3 + 4) != 1 || (*(*a1 + 160))(a1))
      {
        v21 = *(a1 + 88);
        __dst[0] = *(a1 + 80);
        __dst[1] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_22ED54(buf, __dst, 1);
        sub_364CA8(a1, buf, 1);
        sub_65310(buf);
        if (__dst[1])
        {
          std::__shared_weak_count::__release_weak(__dst[1]);
        }
      }
    }
  }
}

void sub_364C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20)
{
  sub_65310(&a20);
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  _Unwind_Resume(a1);
}

void sub_364CA8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v6 = 1919842148;
  }

  else
  {
    v6 = 1919904885;
  }

  v7 = sub_5544(18);
  v8 = sub_5544(29);
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
      goto LABEL_10;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_10:
  v12 = *v7;
  if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 303) < 0)
    {
      sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
    }

    else
    {
      *__dst = *(a1 + 280);
      v24 = *(a1 + 296);
    }

    if (v24 >= 0)
    {
      v13 = __dst;
    }

    else
    {
      v13 = __dst[0];
    }

    if (a3)
    {
      v14 = "true";
    }

    else
    {
      v14 = "false";
    }

    sub_3FE7D0(&v22, a2);
    v15 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v16 = v22.__r_.__value_.__r.__words[0];
    sub_22170(__p, v6);
    v17 = &v22;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v21 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    *buf = 136316418;
    *&buf[4] = "Port_Bluetooth_Aspen.cpp";
    v26 = 1024;
    v27 = 511;
    v28 = 2080;
    v29 = v13;
    v30 = 2080;
    v31 = v14;
    v32 = 2080;
    v33 = v17;
    v34 = 2080;
    v35 = v18;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Bluetooth audio device with UID %s: setting routability to %s for ports %s, reason: %s", buf, 0x3Au);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  v19 = sub_809C0();
  sub_258778(v19, a2, v6);
}

void sub_364EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_364F34(uint64_t a1)
{
  v1 = sub_59410(a1);
  *(&v4 + 1) = v2;
  *&v4 = v1;
  v3 = v4 >> 32;
  if ((v3 & 0x100000000) != 0)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_364FD4(uint64_t a1)
{
  sub_365018(&v3, a1);
  v1 = *(v3 + 612);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_365018(void *a1, uint64_t a2)
{
  v3 = *(a2 + 728);
  if (!v3 || (v5 = std::__shared_weak_count::lock(v3)) == 0 || (v6 = *(a2 + 720)) == 0)
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "Port_Bluetooth_Aspen.cpp";
      v12 = 1024;
      v13 = 118;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to lock owning BT device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unable to lock owning BT device");
  }

  *a1 = v6;
  a1[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);

  sub_1A8C0(v5);
}

void sub_36515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_36518C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return;
  }

  v24 = a1 + 280;
  do
  {
    v5 = *(a1 + 744);
    if (!v5)
    {
LABEL_41:
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Port_Bluetooth_Aspen.cpp";
          v34 = 1024;
          v35 = 498;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    v6 = *(v2 + 16);
    while (1)
    {
      v7 = *(v5 + 8);
      if (v7 <= v6)
      {
        break;
      }

LABEL_8:
      v5 = *v5;
      if (!v5)
      {
        goto LABEL_41;
      }
    }

    if (v7 < v6)
    {
      ++v5;
      goto LABEL_8;
    }

    v8 = sub_5544(24);
    v9 = sub_5544(29);
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
        goto LABEL_16;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_16:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v31, v6);
      if (v32 >= 0)
      {
        v14 = v31;
      }

      else
      {
        v14 = v31[0];
      }

      (*(*a1 + 144))(v29, a1);
      if (v30 >= 0)
      {
        v15 = v29;
      }

      else
      {
        v15 = v29[0];
      }

      if (*(a1 + 303) < 0)
      {
        sub_54A0(__dst, *(a1 + 280), *(a1 + 288));
      }

      else
      {
        *__dst = *v24;
        v28 = *(v24 + 16);
      }

      v16 = SHIBYTE(v28);
      v17 = __dst[0];
      sub_22170(__p, *(a1 + 144));
      v18 = __dst;
      if (v16 < 0)
      {
        v18 = v17;
      }

      v19 = __p;
      if (v26 < 0)
      {
        v19 = __p[0];
      }

      *buf = 136316418;
      *&buf[4] = "Port_Bluetooth_Aspen.cpp";
      v34 = 1024;
      v35 = 501;
      v36 = 2080;
      v37 = v14;
      v38 = 2080;
      v39 = v15;
      v40 = 2080;
      v41 = v18;
      v42 = 2080;
      v43 = v19;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Notifying listeners: changed property %s for port with name %s, UID %s, and type '%s'", buf, 0x3Au);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }
    }

    v20 = sub_257FA8(*(a1 + 744), v6);
    sub_3D96E4(v20);
    v2 = *(v2 + 8);
  }

  while (v2 != a2);
}

void sub_365504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
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

BOOL sub_365568(uint64_t a1)
{
  sub_365018(&v4, a1);
  v1 = v5;
  v2 = atomic_load((v4 + 616));
  if (v1)
  {
    sub_1A8C0(v5);
  }

  return v2 != 2;
}

uint64_t sub_3655B4(uint64_t a1)
{
  sub_365018(&v4, a1);
  v1 = *(v4 + 588);
  if (v1 == -1 || !*(v4 + 600))
  {
    v2 = 0xFFFFFFFFLL;
  }

  else
  {
    v2 = 1;
    if (v1 != 1)
    {
      if (*(v4 + 592) == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }
  }

  if (v5)
  {
    sub_1A8C0(v5);
  }

  return v2;
}

uint64_t sub_36562C(uint64_t a1)
{
  sub_365018(&v3, a1);
  v1 = *(v3 + 585);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  return v1;
}

void sub_365670(uint64_t a1, const std::string *a2)
{
  sub_24D304(a1, a2);
  v3 = sub_257FA8(*(a1 + 744), 0x706E616Du);

  sub_3D96E4(v3);
}

uint64_t sub_3656B4(uint64_t a1)
{
  sub_365018(&v4, a1);
  v1 = v5;
  v2 = atomic_load((v4 + 532));
  if (v1)
  {
    sub_1A8C0(v5);
  }

  return v2 | 0x100000000;
}

NSObject *sub_3656FC(uint64_t a1, int *a2, unint64_t a3, unint64_t a4)
{
  if (!*(a1 + 744))
  {
LABEL_7:

    return sub_24F5FC(a1, a2, a3, a4);
  }

  v6 = *a2;
  v7 = *(a1 + 744);
  while (1)
  {
    v8 = *(v7 + 8);
    if (v6 >= v8)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < v6)
  {
    ++v7;
    goto LABEL_6;
  }

  v10 = sub_257FA8(*(a1 + 744), *a2);
  v24 = v10 + 5;
  v25 = 1;
  std::__shared_mutex_base::lock((v10 + 5));
  v11 = v10[3];
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = v10 + 3;
  do
  {
    v13 = v11[4];
    v15 = v13 == a3;
    v14 = v13 < a3;
    if (v15)
    {
      v14 = v11[5] < a4;
    }

    v15 = !v14;
    v16 = v14;
    if (v15)
    {
      v12 = v11;
    }

    v11 = v11[v16];
  }

  while (v11);
  if (v12 == v10 + 3)
  {
    goto LABEL_25;
  }

  v17 = v12[4];
  v15 = v17 == a3;
  v18 = v17 > a3;
  if (v15)
  {
    v18 = v12[5] > a4;
  }

  if (v18)
  {
LABEL_25:
    v19 = sub_5544(24);
    v20 = *v19;
    if (*v19)
    {
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, *(v10 + 2));
        v21 = v23 >= 0 ? __p : __p[0];
        *buf = 136315650;
        v27 = "Port_PropertyListener_Aspen.cpp";
        v28 = 1024;
        v29 = 43;
        v30 = 2080;
        v31 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified listener for %s does not exist", buf, 0x1Cu);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v20 = 0;
    }
  }

  else
  {
    sub_3145D4(v10 + 2, v12);
    operator delete(v12);
    v20 = (&dword_0 + 1);
  }

  std::__shared_mutex_base::unlock((v10 + 5));
  return v20;
}

void sub_36593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2E211C(va);
  _Unwind_Resume(a1);
}

NSObject *sub_365968(uint64_t a1, int *a2, unint64_t a3, unint64_t a4)
{
  if (!*(a1 + 744))
  {
LABEL_7:

    return sub_24F824(a1, a2, a3, a4);
  }

  v6 = *a2;
  v7 = *(a1 + 744);
  while (1)
  {
    v8 = *(v7 + 8);
    if (v6 >= v8)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < v6)
  {
    ++v7;
    goto LABEL_6;
  }

  v10 = sub_257FA8(*(a1 + 744), *a2);
  v17 = v10 + 5;
  v18 = 1;
  std::__shared_mutex_base::lock((v10 + 5));
  v11 = *sub_31541C((v10 + 2), buf, a3, a4);
  if (!v11)
  {
    operator new();
  }

  v12 = sub_5544(24);
  v13 = *v12;
  if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_22170(__p, *(v10 + 2));
    v14 = v16 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "Port_PropertyListener_Aspen.cpp";
    v20 = 1024;
    v21 = 33;
    v22 = 2080;
    v23 = v14;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Specified listener for %s already exists", buf, 0x1Cu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__shared_mutex_base::unlock((v10 + 5));
  return (v11 == 0);
}

void sub_365B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2E211C(va);
  _Unwind_Resume(a1);
}

void sub_365BAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v17 = sub_5544(14);
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v25 = *a2;
      v29 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v19 = sub_5544(14);
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v26 = *a2;
      v30 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v20 = __cxa_allocate_exception(0x10uLL);
    *v20 = &off_6DDDD0;
    v20[2] = 561211770;
  }

  if (!a6)
  {
    v21 = sub_5544(14);
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v27 = *a2;
      v31 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v22 = __cxa_allocate_exception(0x10uLL);
    *v22 = &off_6DDDD0;
    v22[2] = 561211770;
  }

  if (((*(*a1 + 24))(a1, a2) & 1) == 0)
  {
    v23 = sub_5544(14);
    if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v32 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = 1852797029;
  }

  v13 = *a2;
  if (*a2 > 1869832546)
  {
    if (v13 > 1936747875)
    {
      if ((v13 - 1936747876) < 2 || v13 == 2004050279)
      {
        goto LABEL_29;
      }

      v14 = 1937204590;
      goto LABEL_28;
    }

    if (v13 > 1936745317)
    {
      if (v13 == 1936745318 || v13 == 1936745838)
      {
        goto LABEL_29;
      }

      v14 = 1936746611;
      goto LABEL_28;
    }

    if (v13 != 1869832547)
    {
      v14 = 1936221550;
      goto LABEL_28;
    }

LABEL_29:
    v15 = a1[24];
    v16 = a1[25];
    __p[0] = v15;
    __p[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_5659C(buf, __p, "", 434);
    (*(**buf + 48))(*buf, a2, a3, a4, a5, a6);
    if (v35)
    {
      sub_1A8C0(v35);
    }

    if (v16)
    {

      std::__shared_weak_count::__release_weak(v16);
    }

    return;
  }

  if (v13 <= 1668051826)
  {
    if (v13 > 1651797099)
    {
      if (v13 != 1651797100)
      {
        v14 = 1651798886;
        goto LABEL_28;
      }
    }

    else if (v13 != 1633773925)
    {
      v14 = 1650551924;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v13 <= 1752462194)
  {
    if (v13 != 1668051827)
    {
      v14 = 1752327777;
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v13 == 1752462195 || v13 == 1767989616)
  {
    goto LABEL_29;
  }

  v14 = 1819505773;
LABEL_28:
  if (v13 == v14)
  {
    goto LABEL_29;
  }

  sub_24DB50(a1, a2, a3, a4, v12, a6);
}

void sub_366350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_366384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v18 = sub_5544(14);
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v24 = *a2;
      v27 = *(a2 + 8);
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      v25 = *a2;
      v28 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = 561211770;
  }

  if (!a6)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v26 = *a2;
      v29 = *(a2 + 8);
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 > 1768382831)
  {
    if (v13 > 1936745837)
    {
      if (v13 > 1970040163)
      {
        if (v13 > 1986947427)
        {
          if (v13 == 1986947428 || v13 == 2004050279)
          {
            goto LABEL_66;
          }

          if (v13 == 2004054901)
          {
            *a6 = 0;
            return;
          }

          goto LABEL_73;
        }

        if (v13 == 1970040164)
        {
          goto LABEL_66;
        }

        v15 = 1970496630;
        goto LABEL_65;
      }

      if (v13 > 1936747875)
      {
        if ((v13 - 1936747876) < 2)
        {
          goto LABEL_66;
        }

        v15 = 1937204590;
        goto LABEL_65;
      }

      if (v13 == 1936745838)
      {
        goto LABEL_66;
      }

      v17 = 26739;
    }

    else
    {
      if (v13 <= 1885955427)
      {
        if (v13 <= 1819503986)
        {
          if (v13 == 1768382832)
          {
            goto LABEL_66;
          }

          v15 = 1819046768;
        }

        else
        {
          if (v13 == 1819503987 || v13 == 1819505773)
          {
            goto LABEL_66;
          }

          v15 = 1869832547;
        }

        goto LABEL_65;
      }

      if (v13 <= 1936225135)
      {
        if (v13 == 1885955428)
        {
          v14 = (*(*a1 + 360))(a1);
          goto LABEL_71;
        }

        if (v13 == 1935762278)
        {
          goto LABEL_66;
        }

        v15 = 1936221550;
        goto LABEL_65;
      }

      if (v13 == 1936225136 || v13 == 1936744816)
      {
        goto LABEL_66;
      }

      v17 = 25446;
    }

    v15 = v17 | 0x73700000;
    goto LABEL_65;
  }

  if (v13 <= 1651798130)
  {
    if (v13 <= 1651794289)
    {
      if (v13 <= 1650551139)
      {
        if (v13 == 1633773925)
        {
          goto LABEL_66;
        }

        v15 = 1633973868;
      }

      else
      {
        if (v13 == 1650551140 || v13 == 1650551924)
        {
          goto LABEL_66;
        }

        v15 = 1651271025;
      }

      goto LABEL_65;
    }

    if (v13 <= 1651796335)
    {
      if (v13 == 1651794290)
      {
        goto LABEL_66;
      }

      if (v13 == 1651796325)
      {
        *a6 = (*(*a1 + 368))(a1) == 1;
        return;
      }

LABEL_73:

      sub_24DFD8(a1, a2, a3, a4, v12, a6);
      return;
    }

    if (v13 == 1651796336 || v13 == 1651796339)
    {
      goto LABEL_66;
    }

    v16 = 27756;
    goto LABEL_62;
  }

  if (v13 <= 1685484389)
  {
    if (v13 > 1668051826)
    {
      if (v13 == 1668051827 || v13 == 1684826732)
      {
        goto LABEL_66;
      }

      v15 = 1685021040;
      goto LABEL_65;
    }

    if (v13 == 1651798131)
    {
      goto LABEL_66;
    }

    v16 = 29542;
LABEL_62:
    v15 = v16 | 0x62740000;
    goto LABEL_65;
  }

  if (v13 > 1752327776)
  {
    if (v13 == 1752327777 || v13 == 1752462195)
    {
      goto LABEL_66;
    }

    v15 = 1767989616;
LABEL_65:
    if (v13 == v15)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (v13 == 1685484390)
  {
LABEL_66:
    sub_365018(buf, a1);
    (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
    goto LABEL_67;
  }

  if (v13 != 1717987685)
  {
    if (v13 == 1717987696)
    {
      v14 = sub_34CFF0(a1);
LABEL_71:
      *a6 = v14;
      return;
    }

    goto LABEL_73;
  }

  sub_365018(buf, a1);
  *a6 = (*(**buf + 488))(*buf);
LABEL_67:
  if (v32)
  {
    sub_1A8C0(v32);
  }
}

void sub_366C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_366C68(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a3 == 0) ^ (a4 != 0);
  while (1)
  {
    if (((*(*a1 + 16))(a1, a2) & 1) == 0)
    {
      v16 = sub_5544(14);
      if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        v20 = *a2;
        v22 = a2[2];
        sub_22CE0(__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 2003332927;
    }

    if ((v8 & 1) == 0)
    {
      v18 = sub_5544(14);
      if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        v21 = *a2;
        v23 = a2[2];
        sub_22CE0(__p);
      }

      v19 = __cxa_allocate_exception(0x10uLL);
      *v19 = &off_6DDDD0;
      v19[2] = 561211770;
    }

    v9 = *a2;
    if (*a2 > 1768382831)
    {
      if (v9 > 1936745837)
      {
        if (v9 > 1970040163)
        {
          if (v9 > 1986947427)
          {
            if (v9 == 2004050279)
            {
              goto LABEL_60;
            }

            v10 = 1986947428;
          }

          else
          {
            if (v9 == 1970040164)
            {
              goto LABEL_60;
            }

            v10 = 1970496630;
          }

          goto LABEL_59;
        }

        if (v9 > 1936747875)
        {
          if ((v9 - 1936747876) < 2)
          {
            goto LABEL_60;
          }

          v10 = 1937204590;
          goto LABEL_59;
        }

        if (v9 == 1936745838)
        {
          goto LABEL_60;
        }

        v12 = 26739;
        goto LABEL_56;
      }

      if (v9 > 1935762277)
      {
        if (v9 <= 1936225135)
        {
          if (v9 == 1935762278)
          {
            goto LABEL_60;
          }

          v10 = 1936221550;
          goto LABEL_59;
        }

        if (v9 == 1936225136 || v9 == 1936744816)
        {
          goto LABEL_60;
        }

        v12 = 25446;
LABEL_56:
        v10 = v12 | 0x73700000;
        goto LABEL_59;
      }

      if (v9 <= 1819505772)
      {
        if (v9 == 1768382832)
        {
          goto LABEL_60;
        }

        v10 = 1819503987;
        goto LABEL_59;
      }

      if (v9 == 1819505773 || v9 == 1869832547)
      {
        goto LABEL_60;
      }

      v11 = 1885955428;
      goto LABEL_52;
    }

    if (v9 <= 1651798130)
    {
      break;
    }

    if (v9 > 1717987684)
    {
      if (v9 > 1752327776)
      {
        if (v9 == 1752327777 || v9 == 1752462195)
        {
          goto LABEL_60;
        }

        v10 = 1767989616;
        goto LABEL_59;
      }

      if (v9 == 1717987685)
      {
        return 4;
      }

      v11 = 1717987696;
LABEL_52:
      if (v9 == v11)
      {
        return 4;
      }
    }

    else
    {
      if (v9 <= 1668051826)
      {
        if (v9 == 1651798131)
        {
          goto LABEL_60;
        }

        v13 = 29542;
        goto LABEL_49;
      }

      if (v9 == 1668051827 || v9 == 1684826732)
      {
        goto LABEL_60;
      }

      v10 = 1685021040;
LABEL_59:
      if (v9 == v10)
      {
        goto LABEL_60;
      }
    }
  }

  if (v9 <= 1651794289)
  {
    if (v9 <= 1650551139)
    {
      if (v9 == 1633773925)
      {
        goto LABEL_60;
      }

      v10 = 1633973868;
    }

    else
    {
      if (v9 == 1650551140 || v9 == 1650551924)
      {
        goto LABEL_60;
      }

      v10 = 1651271025;
    }

    goto LABEL_59;
  }

  if (((v9 - 1651796325) > 0xE || ((1 << (v9 - 101)) & 0x4801) == 0) && v9 != 1651794290)
  {
    v13 = 27756;
LABEL_49:
    v10 = v13 | 0x62740000;
    goto LABEL_59;
  }

LABEL_60:
  sub_365018(buf, a1);
  v14 = (*(**buf + 32))(*buf, a2, a3, a4);
  if (v26)
  {
    sub_1A8C0(v26);
  }

  return v14;
}