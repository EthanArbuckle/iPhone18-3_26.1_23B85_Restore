uint64_t sub_17215C(uint64_t a1, int *a2)
{
  sub_88CE8(a1, "mode");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 8) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1721FC(_Unwind_Exception *a1)
{
  sub_1D5FAC(v1 + 1);
  sub_1D5FE0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_172230(uint64_t a1, const void **a2)
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

const void *sub_17227C(uint64_t a1)
{
  v1 = *(a1 + 400);
  CFRetain(v1);
  return v1;
}

void sub_1722A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_5544(13);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        sub_87BA8(&__p, a1 + 1);
        v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        *buf = 136315650;
        v8 = "CoreTelephonyInterface.cpp";
        v9 = 1024;
        v10 = 484;
        v11 = 2080;
        v12 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating Connected Ports %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if ((v2 + 80) != a1 + 1)
  {
    sub_4ABC8((v2 + 80), a1[1], a1 + 2);
  }

  sub_687A8(v2);
}

uint64_t *sub_1723DC(uint64_t *a1)
{
  v2 = a1;
  sub_1722A8(a1);
  return sub_1726D8(&v2);
}

uint64_t *sub_1726D8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_477A0(*(v1 + 16));
    operator delete();
  }

  return result;
}

void sub_172728(uint64_t a1, uint64_t *a2)
{
  __p = 0;
  v57 = 0;
  v58 = 0;
  (*(**(a1 + 120) + 104))(*(a1 + 120), &__p);
  v5 = __p;
  v4 = v57;
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v57 - __p) >> 3);
  v7 = *(a1 + 104);
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  if (v8 == v9)
  {
    v10 = 0;
    v13 = 0;
    v12 = 0;
  }

  else
  {
    LODWORD(v10) = 0;
    v11 = v8;
    do
    {
      v10 = v10 + ((*(v11 + 48) - *(v11 + 40)) >> 4);
      v11 += 64;
    }

    while (v11 != v9);
    if (v8 == v9)
    {
      v12 = 0;
    }

    else
    {
      LODWORD(v12) = 0;
      do
      {
        v12 = v12 + ((*(v8 + 48) - *(v8 + 40)) >> 4);
        v8 += 64;
      }

      while (v8 != v9);
    }

    v13 = v10;
  }

  v55 = a2;
  if (v6 == v12)
  {
    if (v57 == __p)
    {
      goto LABEL_60;
    }

    v14 = 0;
    while (v13)
    {
      v15 = 0;
      v16 = 0;
      v17 = (__p + 56 * v14);
      while (1)
      {
        sub_D7934(*(*(a1 + 104) + 56), *(*(a1 + 104) + 64), v16, v62);
        if (sub_5FB04(v17, v62))
        {
          v18 = v17[6];
          if (v18 >= *&v62[40])
          {
            v19 = v17[5];
            v20 = v19 >= *&v62[40] || v18 > v63;
            if (v20)
            {
              v21 = v19 >= *&v62[40] || v18 <= v63;
              v22 = v21 && v19 == *&v62[40];
              if (v22 && v18 == v63)
              {
                break;
              }
            }
          }
        }

        v15 = ++v16 >= v10;
        if (v10 == v16)
        {
          goto LABEL_41;
        }
      }

      if (v15 | (++v14 >= v6))
      {
        a2 = v55;
        if (v15)
        {
          goto LABEL_45;
        }

        goto LABEL_60;
      }
    }

LABEL_41:
    v28 = sub_5544(4);
    v25 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 523;
      v26 = "%25s:%-5d Stream Format List Changed";
      v27 = buf;
      goto LABEL_44;
    }
  }

  else
  {
    v24 = sub_5544(4);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_DEBUG))
    {
      *v62 = 136315394;
      *&v62[4] = "VirtualAudio_Stream.cpp";
      *&v62[12] = 1024;
      *&v62[14] = 529;
      v26 = "%25s:%-5d Number of Stream Formats Changed!";
      v27 = v62;
LABEL_44:
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEBUG, v26, v27, 0x12u);
    }
  }

LABEL_45:
  v29 = *(a1 + 104);
  sub_1634B8((v29 + 56));
  sub_1634B8((v29 + 80));
  v30 = sub_5544(4);
  v31 = *v30;
  if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEBUG))
  {
    v32 = *(a1 + 8);
    if (*(a1 + 88))
    {
      v33 = "input";
    }

    else
    {
      v33 = "output";
    }

    *v62 = 136316162;
    *&v62[4] = "VirtualAudio_Stream.cpp";
    *&v62[12] = 1024;
    *&v62[14] = 538;
    *&v62[18] = 2080;
    *&v62[20] = v33;
    *&v62[28] = 1024;
    *&v62[30] = v32;
    *&v62[34] = 1024;
    *&v62[36] = v6;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Refreshing %s VirtualAudio_Stream %u with %u formats...", v62, 0x28u);
  }

  if (v4 != v5)
  {
    v34 = 0;
    v35 = 1;
    do
    {
      v36 = __p + 56 * v34;
      if (*(v36 + 7))
      {
        v37 = *(a1 + 104);
        sub_17758C((v37 + 56), v36);
        *v62 = *v36;
        *&v62[16] = *(v36 + 1);
        *&v62[32] = *(v36 + 2);
        v63 = *(v36 + 6);
        sub_17758C((v37 + 80), v62);
      }

      v38 = sub_5544(4);
      if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
      {
        sub_1243E4(buf);
      }

      v34 = v35;
      v20 = v6 > v35++;
    }

    while (v20);
  }

  v39 = *(a1 + 8);
  strcpy(v62, "atfpbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  a2 = v55;
  v40 = sub_163EF0(v55, v39);
  sub_172ED8(v40, v62);
  v41 = *(a1 + 8);
  strcpy(v62, "amfsbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  v42 = sub_163EF0(v55, v41);
  sub_172ED8(v42, v62);
  v43 = *(*(a1 + 112) + 8);
  strcpy(v62, "amfsbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  v44 = sub_163EF0(v55, v43);
  sub_172ED8(v44, v62);
  v45 = *(*(a1 + 112) + 8);
  strcpy(v62, "#rsnbolg");
  v62[9] = 0;
  *&v62[10] = 0;
  v46 = sub_163EF0(v55, v45);
  sub_172ED8(v46, v62);
LABEL_60:
  memset(v62, 0, 32);
  memset(buf, 0, sizeof(buf));
  sub_177D74(a1, v62, buf);
  (*(**(a1 + 120) + 168))(v64);
  v47 = *&v64[8];
  if (v64 == *&v64[8])
  {
    v49 = 0;
  }

  else
  {
    do
    {
      sub_88A00(&v59, (v47 + 16), "", 624);
      v48 = *(v59 + 184);
      if (v60)
      {
        sub_1A8C0(v60);
      }

      v49 = (v48 >> 9) & 1;
      v47 = *(v47 + 8);
    }

    while ((v48 & 0x200) == 0 && v64 != v47);
  }

  sub_65310(v64);
  if (*(a1 + 128) != v49)
  {
    v50 = sub_5544(4);
    if (*(v50 + 8))
    {
      v51 = *v50;
      if (*v50)
      {
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
        {
          *v64 = 136315650;
          *&v64[4] = "VirtualAudio_Stream.cpp";
          *&v64[12] = 1024;
          *&v64[14] = 567;
          v65 = 1024;
          v66 = v49;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d stream is associated with high quality audio port: %u", v64, 0x18u);
        }
      }
    }

    *(a1 + 128) = v49;
    strcpy(v64, "qihsbolg");
    v64[9] = 0;
    *&v64[10] = 0;
    sub_172ED8(buf, v64);
  }

  v52 = *buf;
  sub_163678(a2, *(a1 + 8), -1431655765 * ((*&buf[8] - *buf) >> 2), *buf);
  v53 = *(*(a1 + 112) + 8);
  v54 = *v62;
  sub_163678(a2, v53, -1431655765 * ((*&v62[8] - *v62) >> 2), *v62);
  if (v52)
  {
    operator delete(v52);
  }

  if (v54)
  {
    operator delete(v54);
  }

  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }
}

void sub_172E54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_172ED8(uint64_t *a1, int *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a1;
  if (*a1 != v5)
  {
    while (!sub_15414(a2, v6))
    {
      v6 += 3;
      if (v6 == v5)
      {
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    v19 = a2[2];
    v7 = a1[2];
    if (v5 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v5 - v4) + 1;
      if (v10 > 0x1555555555555555)
      {
        sub_189A00();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 2);
      if (2 * v11 > v10)
      {
        v10 = 2 * v11;
      }

      if (v11 >= 0xAAAAAAAAAAAAAAALL)
      {
        v12 = 0x1555555555555555;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        sub_1E6598(v12);
      }

      v13 = 4 * (v5 - v4);
      *v13 = *a2;
      *(v13 + 8) = v19;
      v9 = v13 + 12;
      v14 = *a1;
      v15 = a1[1];
      v16 = v13 + *a1 - v15;
      if (*a1 != v15)
      {
        v17 = v16;
        do
        {
          v18 = *v14;
          *(v17 + 8) = v14[2];
          *v17 = v18;
          v17 += 12;
          v14 += 3;
        }

        while (v14 != v15);
        v14 = *a1;
      }

      *a1 = v16;
      a1[1] = v9;
      a1[2] = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      v8 = *a2;
      v5[2] = a2[2];
      *v5 = v8;
      v9 = (v5 + 3);
    }

    a1[1] = v9;
  }
}

void sub_17304C(void *a1, uint64_t a2)
{
  v4 = (*(*a2 + 56))(a2);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v24 = 0x676C6F6200000000;
      v25 = 0;
      (*(*a2 + 64))(a2, v6, &v24);
      v7 = a1[7];
      v8 = a1[8];
      for (i = v7; i != v8; i += 6)
      {
        if (sub_15414(i, &v24))
        {
          v10 = i;
        }

        else
        {
          v10 = v8;
        }

        if (v10 != v8)
        {
          v21 = sub_5544(14);
          v22 = *v21;
          if (*v21)
          {
            if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HP_Object.cpp";
              v27 = 1024;
              v28 = 319;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): redefined address", buf, 0x12u);
            }
          }

          exception = __cxa_allocate_exception(0x10uLL);
          *exception = &off_6DDDD0;
          exception[2] = 1852797029;
        }
      }

      *buf = v24;
      *&buf[8] = v25;
      v11 = a1[9];
      if (v8 >= v11)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) + 1;
        if (v14 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_189A00();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v7) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          if (v16 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_6ACD8();
        }

        v17 = 8 * ((v8 - v7) >> 3);
        *v17 = *buf;
        *(v17 + 8) = *&buf[8];
        *(v17 + 16) = a2;
        if (v7 != v8)
        {
          v18 = v7;
          v19 = 8 * ((v8 - v7) >> 3) - (v8 - v7);
          do
          {
            v20 = *v18;
            *(v19 + 8) = v18[2];
            *v19 = v20;
            *(v19 + 16) = *(v18 + 2);
            v18 += 6;
            v19 += 24;
          }

          while (v18 != v8);
        }

        v13 = v17 + 24;
        a1[7] = 8 * ((v8 - v7) >> 3) - (v8 - v7);
        a1[8] = v17 + 24;
        a1[9] = 0;
        if (v7)
        {
          operator delete(v7);
        }
      }

      else
      {
        v12 = v24;
        *(v8 + 8) = v25;
        *v8 = v12;
        *(v8 + 16) = a2;
        v13 = v8 + 24;
      }

      a1[8] = v13;
      v6 = (v6 + 1);
    }

    while (v6 != v5);
  }
}

uint64_t sub_173388(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 40;
    v4 = *(v2 - 32);
    if (v4)
    {
      *(v2 - 24) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 40;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1733EC(uint64_t a1, void *a2)
{
  v4 = a1 + 656;
  sub_26C0(a1 + 656);
  if (*a2 != a2[1])
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "VirtualStream.cpp";
      v11 = 1024;
      v12 = 769;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): specified StreamFormatList is not empty", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "specified StreamFormatList is not empty");
  }

  if ((a1 + 248) != a2)
  {
    sub_1773C4(a2, *(a1 + 248), *(a1 + 256), 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 256) - *(a1 + 248)) >> 3));
  }

  sub_3174(v4);
  return 0;
}

void sub_173558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  sub_2185D4(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_173594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = 640;
  if (a5)
  {
    v7 = 664;
  }

  v8 = (a1 + v7);
  v9 = *v8;
  v10 = v8[1];
  if (*v8 == v10)
  {
LABEL_6:
    v12 = sub_5544(17);
    v13 = *v12;
    if (*v12)
    {
      result = os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      sub_22170(v21, a3);
      v15 = v22;
      v16 = v21[0];
      sub_22170(__p, a2);
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

      *buf = 136315906;
      v24 = "AggregateDevice_CommonBase.cpp";
      v25 = 1024;
      v26 = 364;
      v27 = 2080;
      v28 = v17;
      v29 = 2080;
      v30 = v18;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d could not find dspproperty %s for AU %s", buf, 0x26u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    return 0;
  }

  else
  {
    while (((*(**(*v9 + 152) + 104))(*(*v9 + 152), a2, a3, a4) & 1) == 0)
    {
      v9 += 16;
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }
}

void sub_173754(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_173774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 1685220966;
  if (a1 != a2)
  {
    v10 = a1;
    while (1)
    {
      v11 = *(*v10 + 152);
      if ((*(*v11 + 104))(v11, 1936748595, a3, 0))
      {
        break;
      }

      v10 += 16;
      if (v10 == a2)
      {
        return v5;
      }
    }

    v12 = (*(*v11 + 120))(v11, 1936748595, a3, a4, a5, 0, 0, 0);
    v13 = sub_5544(17);
    v14 = sub_5544(25);
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
        if ((v16 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

    if (*(v13 + 8))
    {
LABEL_14:
      v18 = *v13;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v32 = 1024;
        v33 = 3606;
        v34 = 1024;
        *v35 = a3;
        *&v35[4] = 1024;
        *&v35[6] = v12;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d chain->GetDSPProperty(%u): %d.", buf, 0x1Eu);
      }
    }

LABEL_17:
    if (v12)
    {
      v20 = sub_5544(14);
      v21 = *v20;
      if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v29, 0x73707033u);
        v22 = v30;
        v23 = v29[0];
        sub_22170(__p, a3);
        v24 = v29;
        if (v22 < 0)
        {
          v24 = v23;
        }

        if (v28 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136316162;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v32 = 1024;
        v33 = 3607;
        v34 = 2080;
        *v35 = v24;
        *&v35[8] = 2080;
        v36 = v25;
        v37 = 1024;
        v38 = v12;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: chain->GetDSPProperty failed for AU (%s) property %s with error %d.", buf, 0x2Cu);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        if (v30 < 0)
        {
          operator delete(v29[0]);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v12;
    }

    return 0;
  }

  return v5;
}

void sub_173AC4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_173AE4(uint64_t a1, char a2, int a3, UInt32 *a4, void *a5)
{
  v10.mElement = 0;
  inQualifierData = a3;
  if (a2)
  {
    v7 = 1768845428;
  }

  else
  {
    v7 = 1869968496;
  }

  v10.mSelector = 1684500594;
  v10.mScope = v7;
  v8 = (*(*a1 + 120))(a1);
  return AudioObjectGetPropertyData(v8, &v10, 4u, &inQualifierData, a4, a5);
}

uint64_t *sub_173B74(uint64_t *a1)
{
  v2 = a1[1];
  v3 = *a1 + 16;
  *a1 = v3;
  v4 = **v2;
  if (*(v2 + 8) >= ((*(*v2 + 8) - v4) >> 4))
  {
    v5 = (*(*v2 + 8) - v4) >> 4;
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = v4 + 16 * v5;
  if (v6 == v3)
  {
LABEL_7:
    v3 = v6;
  }

  else
  {
    while ((sub_10AE84(v2 + 16, v3) & 1) == 0)
    {
      v3 += 16;
      if (v3 == v6)
      {
        goto LABEL_7;
      }
    }
  }

  *a1 = v3;
  return a1;
}

void sub_173BF4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_173C00(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_173C0C(uint64_t a1)
{
  v2 = sub_5544(17);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_INFO))
  {
    v4 = 0;
    v9 = 8;
    strcpy(__p, "00000000");
    v5 = 7;
    do
    {
      if ((*(a1 + 80) >> v4))
      {
        if (v9 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *(v6 + v5) = 49;
      }

      ++v4;
      --v5;
    }

    while (v4 != 8);
    v7 = __p;
    if (v9 < 0)
    {
      v7 = __p[0];
    }

    buf[0] = 136315906;
    *&buf[1] = "AggregateDevice_Common2.cpp";
    v11 = 1024;
    v12 = 1673;
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = "anc|tel|sec|pri|hal";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%25s:%-5d stream capture flags : %s (%s)", buf, 0x26u);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  operator new();
}

void sub_173E34(caulk::build::detail *a1, void *a2, void *a3)
{
  sub_66930(a1, a2, a3);
  v6 = a2[104];
  v7 = a2[103];
  v8 = sub_5544(17);
  v9 = sub_5544(41);
  v10 = 0;
  v11 = v6 - v7;
  *buf = 0x100000002;
  v12 = *(v8 + 8);
  while (1)
  {
    v13 = *&buf[v10];
    if (((v12 & v13) != 0) != ((*(v9 + 8) & v13) != 0))
    {
      break;
    }

    v10 += 4;
    if (v10 == 8)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  if ((v12 & v13) == 0)
  {
    v8 = v9;
  }

  if (*(v8 + 8))
  {
LABEL_9:
    v14 = *v8;
    if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1689;
      *&buf[18] = 1024;
      *&buf[20] = v11 >> 3;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitors for %d input client streams", buf, 0x18u);
    }
  }

LABEL_12:
  if ((v11 >> 3) >= 1)
  {
    v15 = 0;
    v16 = (v11 >> 3) & 0x7FFFFFFF;
    do
    {
      v17 = *(a2[103] + 8 * v15);
      (*(*v17 + 144))(buf, v17);
      if (*&buf[8])
      {
        v18 = std::__shared_weak_count::lock(*&buf[8]);
        if (v18)
        {
          v19 = *buf;
        }

        else
        {
          v19 = 0;
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_weak(*&buf[8]);
        }

        if (v19)
        {
          sub_65234(buf, v19 + 120);
          if (*&buf[16])
          {
            v20 = *a1;
            v40 = 0;
            v41 = 1;
            v42 = v15;
            v21 = (*(*v17 + 64))(v17);
            if (v20)
            {
              (*(*v20 + 16))(v20, &v40, v21, buf);
            }

            if ((*a3 & 4) != 0)
            {
              v40 = 0;
              v41 = 2;
              v42 = v15;
              v22 = (*(*v17 + 56))(v17);
              if (v20)
              {
                (*(*v20 + 16))(v20, &v40, v22, buf);
              }
            }
          }

          goto LABEL_29;
        }
      }

      else
      {
        v18 = 0;
      }

      *buf = buf;
      *&buf[8] = buf;
LABEL_29:
      sub_65310(buf);
      if (v18)
      {
        sub_1A8C0(v18);
      }

      ++v15;
    }

    while (v16 != v15);
  }

  v23 = a2[107];
  v24 = a2[106];
  v25 = sub_5544(17);
  v26 = sub_5544(41);
  v27 = 0;
  v28 = v23 - v24;
  *buf = 0x100000002;
  v29 = *(v25 + 8);
  while (1)
  {
    v30 = *&buf[v27];
    if (((v29 & v30) != 0) != ((*(v26 + 8) & v30) != 0))
    {
      break;
    }

    v27 += 4;
    if (v27 == 8)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }
  }

  if ((v29 & v30) == 0)
  {
    v25 = v26;
  }

  if (*(v25 + 8))
  {
LABEL_40:
    v31 = *v25;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1706;
      *&buf[18] = 1024;
      *&buf[20] = v28 >> 3;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d Configuring monitors for %d output client streams", buf, 0x18u);
    }
  }

LABEL_43:
  if ((v28 >> 3) >= 1)
  {
    v32 = 0;
    v33 = (v28 >> 3) & 0x7FFFFFFF;
    do
    {
      v34 = *(a2[106] + 8 * v32);
      (*(*v34 + 144))(buf, v34);
      if (*&buf[8])
      {
        v35 = std::__shared_weak_count::lock(*&buf[8]);
        if (v35)
        {
          v36 = *buf;
        }

        else
        {
          v36 = 0;
        }

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_weak(*&buf[8]);
        }

        if (v36)
        {
          sub_65234(buf, v36 + 120);
          if (*&buf[16])
          {
            if ((*a3 & 4) != 0)
            {
              v37 = *a1;
              v40 = 1;
              v41 = 1;
              v42 = v32;
              v38 = (*(*v34 + 56))(v34);
              if (v37)
              {
                (*(*v37 + 16))(v37, &v40, v38, buf);
              }
            }

            else
            {
              v37 = *a1;
            }

            v40 = 1;
            v41 = 2;
            v42 = v32;
            v39 = (*(*v34 + 64))(v34);
            if (v37)
            {
              (*(*v37 + 16))(v37, &v40, v39, buf);
            }
          }

          goto LABEL_61;
        }
      }

      else
      {
        v35 = 0;
      }

      *buf = buf;
      *&buf[8] = buf;
LABEL_61:
      sub_65310(buf);
      if (v35)
      {
        sub_1A8C0(v35);
      }

      ++v32;
    }

    while (v33 != v32);
  }
}

void sub_1743CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  v13 = *v11;
  *v11 = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_17444C(void *a1)
{
  v2 = sub_5544(17);
  v3 = sub_5544(25);
  v4 = 0;
  *buf = 0x100000002;
  v5 = v2[1];
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
      goto LABEL_7;
    }
  }

  if ((v5 & v6) == 0)
  {
    v2 = v3;
  }

LABEL_7:
  if (*v2)
  {
    v7 = sub_5544(17);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v60 = 1024;
      v61 = 1575;
      v62 = 2048;
      v63[0] = a1;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%25s:%-5d AggregateDevice_Common2 instance %p DSPChain descriptions", buf, 0x1Cu);
    }

    v9 = a1[103];
    if (a1[104] != v9)
    {
      v10 = 0;
      v11 = 1;
      do
      {
        v12 = *(v9 + 8 * v10);
        v13 = (*(*v12 + 40))(v12);
        v14 = sub_5544(17);
        v15 = *v14;
        if (v13)
        {
          if (v15 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
          {
            v16 = (*(*v12 + 32))(v12);
            sub_62260(__p, v16);
            v17 = __p;
            if (v58 < 0)
            {
              v17 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            v60 = 1024;
            v61 = 1582;
            v62 = 1024;
            LODWORD(v63[0]) = v11 - 1;
            WORD2(v63[0]) = 2080;
            *(v63 + 6) = v17;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client input stream [%u] DSP Chain:\n%s", buf, 0x22u);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else if (v15 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1586;
          v62 = 1024;
          LODWORD(v63[0]) = v11 - 1;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client input stream [%u] DSP Chain: disabled.", buf, 0x18u);
        }

        v10 = v11;
        v9 = a1[103];
        ++v11;
      }

      while (v10 < (a1[104] - v9) >> 3);
    }

    v18 = a1[106];
    if (a1[107] != v18)
    {
      v19 = 0;
      v20 = 1;
      do
      {
        v21 = *(v18 + 8 * v19);
        v22 = (*(*v21 + 40))(v21);
        v23 = sub_5544(17);
        v24 = *v23;
        if (v22)
        {
          if (v24 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
          {
            v25 = (*(*v21 + 32))(v21);
            sub_62260(__p, v25);
            v26 = __p;
            if (v58 < 0)
            {
              v26 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            v60 = 1024;
            v61 = 1594;
            v62 = 1024;
            LODWORD(v63[0]) = v20 - 1;
            WORD2(v63[0]) = 2080;
            *(v63 + 6) = v26;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client output stream [%u] DSP Chain:\n%s", buf, 0x22u);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        else if (v24 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1598;
          v62 = 1024;
          LODWORD(v63[0]) = v20 - 1;
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client output stream [%u] DSP Chain: disabled.", buf, 0x18u);
        }

        v19 = v20;
        v18 = a1[106];
        ++v20;
      }

      while (v19 < (a1[107] - v18) >> 3);
    }

    v27 = a1[109];
    if (a1[110] != v27)
    {
      v28 = 0;
      v29 = 1;
      while (1)
      {
        v30 = *(v27 + 8 * v28);
        if (!v30)
        {
          break;
        }

        if (((*(*v30 + 144))(v30) & 1) != 0 || (*(*v30 + 152))(v30))
        {
          v31 = sub_5544(17);
          v32 = *v31;
          if (!*v31 || !os_log_type_enabled(*v31, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_49;
          }

          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1610;
          v62 = 1024;
          LODWORD(v63[0]) = v29 - 1;
          v33 = v32;
          v34 = "%25s:%-5d Underlying input stream [%u] maintains no DSP chain (it is a pass through).";
          goto LABEL_48;
        }

        v37 = (*(*v30 + 40))(v30);
        v38 = sub_5544(17);
        v39 = *v38;
        if (v37)
        {
          if (v39 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
          {
            v40 = (*(*v30 + 32))(v30);
            sub_62260(__p, v40);
            v41 = __p;
            if (v58 < 0)
            {
              v41 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            v60 = 1024;
            v61 = 1614;
            v62 = 1024;
            LODWORD(v63[0]) = v29 - 1;
            WORD2(v63[0]) = 2080;
            *(v63 + 6) = v41;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d Underlying input stream [%u] DSP Chain:\n%s", buf, 0x22u);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_49;
        }

        if (v39 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1618;
          v62 = 1024;
          LODWORD(v63[0]) = v29 - 1;
          v33 = v39;
          v34 = "%25s:%-5d Underlying input stream [%u] DSP Chain: disabled.";
LABEL_48:
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, v34, buf, 0x18u);
        }

LABEL_49:
        v28 = v29;
        v27 = a1[109];
        ++v29;
        if (v28 >= (a1[110] - v27) >> 3)
        {
          goto LABEL_61;
        }
      }

      v35 = sub_5544(17);
      v36 = *v35;
      if (!*v35 || !os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_49;
      }

      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v60 = 1024;
      v61 = 1606;
      v62 = 1024;
      LODWORD(v63[0]) = v29 - 1;
      v33 = v36;
      v34 = "%25s:%-5d Underlying input stream [%u] is not used in this AggregateDevice.";
      goto LABEL_48;
    }

LABEL_61:
    v42 = a1[112];
    if (a1[113] != v42)
    {
      v43 = 0;
      for (i = 1; ; ++i)
      {
        v45 = *(v42 + 8 * v43);
        if (!v45)
        {
          break;
        }

        if (((*(*v45 + 144))(v45) & 1) != 0 || (*(*v45 + 152))(v45))
        {
          v46 = sub_5544(17);
          v47 = *v46;
          if (!*v46 || !os_log_type_enabled(*v46, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_73;
          }

          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1630;
          v62 = 1024;
          LODWORD(v63[0]) = i - 1;
          v48 = v47;
          v49 = "%25s:%-5d Underlying output stream [%u] maintains no DSP chain (it is a pass through).";
          goto LABEL_72;
        }

        v52 = (*(*v45 + 40))(v45);
        v53 = sub_5544(17);
        v54 = *v53;
        if (v52)
        {
          if (v54 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
          {
            v55 = (*(*v45 + 32))(v45);
            sub_62260(__p, v55);
            v56 = __p;
            if (v58 < 0)
            {
              v56 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = "AggregateDevice_Common2.cpp";
            v60 = 1024;
            v61 = 1634;
            v62 = 1024;
            LODWORD(v63[0]) = i - 1;
            WORD2(v63[0]) = 2080;
            *(v63 + 6) = v56;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Underlying output stream [%u] DSP Chain:\n%s", buf, 0x22u);
            if (v58 < 0)
            {
              operator delete(__p[0]);
            }
          }

          goto LABEL_73;
        }

        if (v54 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          v60 = 1024;
          v61 = 1638;
          v62 = 1024;
          LODWORD(v63[0]) = i - 1;
          v48 = v54;
          v49 = "%25s:%-5d Underlying output stream [%u] DSP Chain: disabled.";
LABEL_72:
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, v49, buf, 0x18u);
        }

LABEL_73:
        v43 = i;
        v42 = a1[112];
        if (v43 >= (a1[113] - v42) >> 3)
        {
          return;
        }
      }

      v50 = sub_5544(17);
      v51 = *v50;
      if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_73;
      }

      *buf = 136315650;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v60 = 1024;
      v61 = 1626;
      v62 = 1024;
      LODWORD(v63[0]) = i - 1;
      v48 = v51;
      v49 = "%25s:%-5d Underlying output stream [%u] is not used in this AggregateDevice.";
      goto LABEL_72;
    }
  }
}

void sub_174EB4(void *a1)
{
  if (*sub_5544(17))
  {
    v2 = sub_5544(17);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1504;
      v61 = 2048;
      v62[0] = a1;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d AggregateDevice_Common2 instance %p stream formats", buf, 0x1Cu);
    }

    v4 = sub_5544(17);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1506;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client input stream cache data:", buf, 0x12u);
    }

    v6 = a1[103];
    if (a1[104] != v6)
    {
      v7 = 0;
      v8 = 1;
      do
      {
        v9 = *(v6 + 8 * v7);
        v10 = sub_5544(17);
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
        {
          (*(*v9 + 56))(v9);
          sub_618A4(__p);
        }

        v11 = sub_5544(17);
        if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEBUG))
        {
          (*(*v9 + 64))(v9);
          sub_618A4(__p);
        }

        v7 = v8;
        v6 = a1[103];
        ++v8;
      }

      while (v7 < (a1[104] - v6) >> 3);
    }

    v12 = sub_5544(17);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1514;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client output stream cache data:", buf, 0x12u);
    }

    v14 = a1[106];
    if (a1[107] != v14)
    {
      v15 = 0;
      v16 = 1;
      do
      {
        v17 = *(v14 + 8 * v15);
        v18 = sub_5544(17);
        if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
        {
          (*(*v17 + 56))(v17);
          sub_618A4(__p);
        }

        v19 = sub_5544(17);
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_DEBUG))
        {
          (*(*v17 + 64))(v17);
          sub_618A4(__p);
        }

        v15 = v16;
        v14 = a1[106];
        ++v16;
      }

      while (v15 < (a1[107] - v14) >> 3);
    }

    v20 = sub_5544(17);
    v21 = *v20;
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1522;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Underlying input stream cache data:", buf, 0x12u);
    }

    v22 = a1[109];
    if (a1[110] != v22)
    {
      v23 = 0;
      v24 = 1;
      while (1)
      {
        v25 = *(v22 + 8 * v23);
        if (!v25)
        {
          break;
        }

        if ((*(*v25 + 144))(v25))
        {
          v26 = sub_5544(17);
          v27 = *v26;
          if (!*v26 || !os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_48;
          }

          v28 = (*(*v25 + 168))(v25);
          *buf = 136315906;
          v58 = "AggregateDevice_Common2.cpp";
          v59 = 1024;
          v60 = 1532;
          v61 = 1024;
          LODWORD(v62[0]) = v24 - 1;
          WORD2(v62[0]) = 1024;
          *(v62 + 6) = v28;
          v29 = v27;
          v30 = "%25s:%-5d     stream %u > see input client stream %d";
          v31 = 30;
          goto LABEL_47;
        }

        v34 = (*(*v25 + 152))(v25);
        v35 = sub_5544(17);
        v36 = *v35;
        if (!v34)
        {
          if (v36 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
          {
            (*(*v25 + 56))(v25);
            sub_618A4(__p);
          }

          v37 = sub_5544(17);
          if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_DEBUG))
          {
            (*(*v25 + 64))(v25);
            sub_618A4(__p);
          }

          goto LABEL_48;
        }

        if (v36 && os_log_type_enabled(*v35, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v58 = "AggregateDevice_Common2.cpp";
          v59 = 1024;
          v60 = 1536;
          v61 = 1024;
          LODWORD(v62[0]) = v24 - 1;
          v29 = v36;
          v30 = "%25s:%-5d     stream %u > hidden";
          goto LABEL_46;
        }

LABEL_48:
        v23 = v24;
        v22 = a1[109];
        ++v24;
        if (v23 >= (a1[110] - v22) >> 3)
        {
          goto LABEL_56;
        }
      }

      v32 = sub_5544(17);
      v33 = *v32;
      if (!*v32 || !os_log_type_enabled(*v32, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_48;
      }

      *buf = 136315650;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1528;
      v61 = 1024;
      LODWORD(v62[0]) = v24 - 1;
      v29 = v33;
      v30 = "%25s:%-5d     stream %u > disabled";
LABEL_46:
      v31 = 24;
LABEL_47:
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEBUG, v30, buf, v31);
      goto LABEL_48;
    }

LABEL_56:
    v38 = sub_5544(17);
    v39 = *v38;
    if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1545;
      _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d Underlying output stream cache data:", buf, 0x12u);
    }

    v40 = a1[112];
    if (a1[113] != v40)
    {
      v41 = 0;
      for (i = 1; ; ++i)
      {
        v43 = *(v40 + 8 * v41);
        if (!v43)
        {
          break;
        }

        if ((*(*v43 + 144))(v43))
        {
          v44 = sub_5544(17);
          v45 = *v44;
          if (!*v44 || !os_log_type_enabled(*v44, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_75;
          }

          v46 = (*(*v43 + 168))(v43);
          *buf = 136315906;
          v58 = "AggregateDevice_Common2.cpp";
          v59 = 1024;
          v60 = 1555;
          v61 = 1024;
          LODWORD(v62[0]) = i - 1;
          WORD2(v62[0]) = 1024;
          *(v62 + 6) = v46;
          v47 = v45;
          v48 = "%25s:%-5d     stream %u > see output client stream %d";
          v49 = 30;
          goto LABEL_74;
        }

        v52 = (*(*v43 + 152))(v43);
        v53 = sub_5544(17);
        v54 = *v53;
        if (!v52)
        {
          if (v54 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
          {
            (*(*v43 + 56))(v43);
            sub_618A4(__p);
          }

          v55 = sub_5544(17);
          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_DEBUG))
          {
            (*(*v43 + 64))(v43);
            sub_618A4(__p);
          }

          goto LABEL_75;
        }

        if (v54 && os_log_type_enabled(*v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v58 = "AggregateDevice_Common2.cpp";
          v59 = 1024;
          v60 = 1559;
          v61 = 1024;
          LODWORD(v62[0]) = i - 1;
          v47 = v54;
          v48 = "%25s:%-5d     stream %u > hidden";
          goto LABEL_73;
        }

LABEL_75:
        v41 = i;
        v40 = a1[112];
        if (v41 >= (a1[113] - v40) >> 3)
        {
          return;
        }
      }

      v50 = sub_5544(17);
      v51 = *v50;
      if (!*v50 || !os_log_type_enabled(*v50, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_75;
      }

      *buf = 136315650;
      v58 = "AggregateDevice_Common2.cpp";
      v59 = 1024;
      v60 = 1551;
      v61 = 1024;
      LODWORD(v62[0]) = i - 1;
      v47 = v51;
      v48 = "%25s:%-5d     stream %u > disabled";
LABEL_73:
      v49 = 24;
LABEL_74:
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEBUG, v48, buf, v49);
      goto LABEL_75;
    }
  }
}

void sub_175C50(uint64_t a1)
{
  v2 = 0;
  v3 = 824;
  do
  {
    v4 = v2;
    v5 = *(a1 + v3);
    v6 = *(a1 + v3 + 8);
    while (v5 != v6)
    {
      v7 = *v5;
      v8 = (*(**v5 + 40))(*v5);
      (*(*v7 + 144))(&v11, v7);
      if (v12)
      {
        v9 = std::__shared_weak_count::lock(v12);
        if (v9)
        {
          v10 = v9;
          if (((v11 != 0) & v8) == 1)
          {
            sub_8EE40(*(v11 + 152));
          }

          sub_1A8C0(v10);
        }

        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      ++v5;
    }

    v2 = 1;
    v3 = 848;
  }

  while ((v4 & 1) == 0);
}

void sub_175D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  sub_1A8C0(v10);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(a1);
}

unsigned int sub_175D7C(uint64_t a1)
{
  v2 = sub_8E280(*(a1 + 72));
  outData = 0.0;
  ioDataSize = 8;
  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  if (!AudioUnitGetProperty(v4, 2u, 1u, 0, &outData, &ioDataSize))
  {
    return vcvtpd_u64_f64(v2 * outData);
  }

  v5 = sub_5544(14);
  v6 = *v5;
  if (*v5)
  {
    result = os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ioDataSize = 136315394;
    v10 = "DSPProcessorManager.cpp";
    v11 = 1024;
    v12 = 814;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d FailIf failed, goto Exit", &ioDataSize, 0x12u);
  }

  return 0;
}

void sub_175EA0()
{
  exception = __cxa_allocate_exception(8uLL);
}

void *sub_175EEC(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_203118();
  }

  return result;
}

void sub_175F78(uint64_t *a1)
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
        sub_65310(v2 + 20);
        v6 = v2[19];
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        v7 = v2[14];
        if (v7)
        {
          v2[15] = v7;
          operator delete(v7);
        }

        sub_477A0(v2[12]);
        v8 = v2[6];
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_17601C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v6 = *(a1 + 32);
  *(a1 + 24) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v7;
  sub_176264((a1 + 72), a2 + 9);
  v8 = *(a1 + 96);
  if (v8)
  {
    *(a1 + 104) = v8;
    operator delete(v8);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v9 = *(a2 + 30);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 120) = v9;
  v10 = a2[8];
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v11 = *(a1 + 136);
  *(a1 + 128) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_11DB30((a1 + 144), a2 + 18);
  return a1;
}

uint64_t sub_1760F8(uint64_t result, void *a2)
{
  *result = -1;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v2 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v2;
  if (!v2 || (atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed), !*(result + 32)))
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "AggregateDevice_Common2.cpp";
        v8 = 1024;
        v9 = 138;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return result;
}

void sub_17622C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    sub_1A8C0(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_176264(void *a1, void *a2)
{
  v4 = a1 + 1;
  sub_477A0(a1[1]);
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  a1[2] = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

uint64_t sub_1762D0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(result + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  v3 = *(a2 + 40);
  *(result + 56) = *(a2 + 56);
  *(result + 40) = v3;
  *(result + 72) = *(a2 + 9);
  v4 = a2 + 5;
  v5 = *(a2 + 10);
  *(result + 80) = v5;
  v6 = result + 80;
  v7 = *(a2 + 11);
  *(result + 88) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 9) = v4;
    *v4 = 0;
    *(a2 + 11) = 0;
  }

  else
  {
    *(result + 72) = v6;
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = a2[6];
  *(result + 112) = *(a2 + 14);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v8 = *(a2 + 30);
  *(result + 124) = *(a2 + 124);
  *(result + 120) = v8;
  *(result + 128) = a2[8];
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(result + 144) = result + 144;
  *(result + 152) = result + 144;
  *(result + 160) = 0;
  v9 = *(a2 + 20);
  if (v9)
  {
    v11 = *(a2 + 18);
    v10 = *(a2 + 19);
    v12 = *(v11 + 8);
    v13 = *v10;
    *(v13 + 8) = v12;
    *v12 = v13;
    v14 = *(result + 144);
    *(v14 + 8) = v10;
    *v10 = v14;
    *(result + 144) = v11;
    *(v11 + 8) = result + 144;
    *(result + 160) = v9;
    *(a2 + 20) = 0;
  }

  return result;
}

uint64_t sub_1763B8(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2)
  {
    v8 = *(a1 + 112) == 0;
    v9 = 2003329396;
    goto LABEL_12;
  }

  v11 = 0x676C6F6278766F6CLL;
  v12 = 0;
  if (!(*(*v2 + 16))(v2, &v11))
  {
    v8 = *(a1 + 112) == 0;
    v9 = 1970171760;
LABEL_12:
    if (v8)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  v3 = *(a1 + 112);
  v4 = v3 == 0;
  if (v3)
  {
    v5 = sub_20FBA4;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1;
  }

  v10[0] = v5;
  v10[1] = v6;
  (*(**(a1 + 96) + 48))(*(a1 + 96), &v11, 0, 0, 16, v10);
  return 0;
}

void sub_1764B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v86 = a3;
  if (!a2)
  {
    v76 = sub_5544(14);
    v77 = *v76;
    if (*v76 && os_log_type_enabled(*v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v91 = 1024;
      v92 = 4762;
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v5 = sub_5544(1);
  v6 = sub_5544(4);
  v7 = 0;
  *buf = 0x100000002;
  v8 = *(v5 + 8);
  while (1)
  {
    v9 = *&buf[v7];
    if (((v8 & v9) != 0) != ((*(v6 + 8) & v9) != 0))
    {
      break;
    }

    v7 += 4;
    if (v7 == 8)
    {
      if ((v8 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  if ((v8 & v9) == 0)
  {
    v5 = v6;
  }

  if (*(v5 + 8))
  {
LABEL_10:
    v10 = *v5;
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = (*(a1 + 288) - *(a1 + 280)) >> 3;
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v91 = 1024;
      v92 = 4764;
      v93 = 1024;
      LODWORD(v94) = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Previous input stream count: %u", buf, 0x18u);
    }
  }

LABEL_13:
  v12 = sub_5544(1);
  v13 = sub_5544(4);
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
        goto LABEL_24;
      }

      goto LABEL_21;
    }
  }

  if ((v15 & v16) == 0)
  {
    v12 = v13;
  }

  if (*(v12 + 8))
  {
LABEL_21:
    v17 = *v12;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = (*(a1 + 312) - *(a1 + 304)) >> 3;
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v91 = 1024;
      v92 = 4765;
      v93 = 1024;
      LODWORD(v94) = v18;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Previous output stream count: %u", buf, 0x18u);
    }
  }

LABEL_24:
  v19 = sub_5544(1);
  v20 = sub_5544(4);
  v21 = 0;
  *buf = 0x100000002;
  v22 = *(v19 + 8);
  while (1)
  {
    v23 = *&buf[v21];
    if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
    {
      break;
    }

    v21 += 4;
    if (v21 == 8)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_32;
    }
  }

  if ((v22 & v23) == 0)
  {
    v19 = v20;
  }

  if (*(v19 + 8))
  {
LABEL_32:
    v24 = *v19;
    if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = (*(*a2 + 88))(a2, 0);
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v91 = 1024;
      v92 = 4766;
      v93 = 1024;
      LODWORD(v94) = v25;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d New core device input stream count: %u", buf, 0x18u);
    }
  }

LABEL_35:
  v26 = sub_5544(1);
  v27 = sub_5544(4);
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
      if ((v29 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }
  }

  if ((v29 & v30) == 0)
  {
    v26 = v27;
  }

  if (*(v26 + 8))
  {
LABEL_43:
    v31 = *v26;
    if (v31 && os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v32 = (*(*a2 + 88))(a2, 1);
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Device.cpp";
      v91 = 1024;
      v92 = 4767;
      v93 = 1024;
      LODWORD(v94) = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d New core device output stream count: %u", buf, 0x18u);
    }
  }

LABEL_46:
  v34 = *(a1 + 280);
  v33 = *(a1 + 288);
  if ((*(*a2 + 88))(a2, 0) == ((v33 - v34) >> 3))
  {
    v37 = *(a1 + 304);
    v36 = *(a1 + 312);
    v38 = (*(*a2 + 88))(a2, 1) != (v36 - v37) >> 3;
  }

  else
  {
    v38 = 1;
  }

  v80 = v38;
  v39 = 1;
  *&v35 = 136315906;
  v84 = v35;
  do
  {
    v87 = 0uLL;
    v88 = 0;
    v81 = v39;
    v40 = (v39 & 1) == 0;
    v41 = 304;
    if (!v40)
    {
      v41 = 280;
    }

    v42 = 312;
    if (!v40)
    {
      v42 = 288;
    }

    v43 = (a1 + v41);
    v44 = *(a1 + v42) - *(a1 + v41);
    if ((v44 & 0x7FFFFFFF8) != 0)
    {
      if (v81)
      {
        v45 = "input";
      }

      else
      {
        v45 = "output";
      }

      v46 = (v44 >> 3);
      do
      {
        if (--v46 >= ((v43[1] - *v43) >> 3))
        {
          v47 = 0;
        }

        else
        {
          v47 = *(*v43 + 8 * v46);
        }

        v48 = *(v47 + 8);
        sub_163508(a1, v47);
        sub_164850(v47);
        *buf = v47;
        sub_218C34(&v87, buf);
        if (*buf)
        {
          (*(**buf + 8))(*buf);
        }

        sub_164F90(v86 + 4, *(a1 + 8), v48);
        v49 = sub_5544(1);
        v50 = sub_5544(4);
        v51 = 0;
        *buf = 0x100000002;
        v52 = *(v49 + 8);
        while (1)
        {
          v53 = *&buf[v51];
          if (((v52 & v53) != 0) != ((*(v50 + 8) & v53) != 0))
          {
            break;
          }

          v51 += 4;
          if (v51 == 8)
          {
            goto LABEL_70;
          }
        }

        if ((v52 & v53) == 0)
        {
          v49 = v50;
        }

LABEL_70:
        v54 = *v49;
        if (v54 && os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
        {
          *buf = v84;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v91 = 1024;
          v92 = 4789;
          v93 = 2080;
          v94 = v45;
          v95 = 1024;
          v96 = v48;
          _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deleted %s VirtualAudio_Stream ID %u and inserted in the unpublish list.", buf, 0x22u);
        }
      }

      while (v46);
    }

    v55 = sub_2214A0(*v86, &v87);
    v56 = 0;
    v85 = v81 & 1;
    v57 = "output";
    if (v81)
    {
      v57 = "input";
    }

    v82 = v57;
    v83 = v81 ^ 1;
    while (v56 < (*(*a2 + 88))(a2, (v81 ^ 1) & 1, v55))
    {
      v89 = 0;
      v58 = *(a1 + 376);
      v59 = *(a1 + 8);
      if (!AudioObjectCreate())
      {
        operator new();
      }

      ++v56;
    }

    *buf = &v87;
    sub_218D2C(buf);
    v39 = 0;
  }

  while ((v81 & 1) != 0);
  *(a1 + 988) = 0;
  if (v80)
  {
    if (((*(*(a1 + 248) + 16) - *(*(a1 + 248) + 8)) & 0x7FFFFFFF0) != 0)
    {
      v60 = sub_5544(1);
      v61 = *v60;
      if (*v60)
      {
        v60 = os_log_type_enabled(*v60, OS_LOG_TYPE_ERROR);
        if (v60)
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Device.cpp";
          v91 = 1024;
          v92 = 4823;
          _os_log_impl(&dword_0, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d there is more than 1 IOProc", buf, 0x12u);
        }
      }
    }

    v62 = *(*(a1 + 248) + 8);
    if (*(*(a1 + 248) + 16) == v62)
    {
      v63 = 0;
    }

    else
    {
      v63 = *v62;
    }

    v64 = 1;
    do
    {
      v65 = v64;
      v66 = (v64 & 1) == 0;
      v67 = 304;
      if (!v66)
      {
        v67 = 280;
      }

      v68 = 312;
      if (!v66)
      {
        v68 = 288;
      }

      v69 = (*(a1 + v68) - *(a1 + v67)) >> 3;
      __chkstk_darwin(v60);
      v72 = &v79 - v71;
      if (v69)
      {
        memset(&v79 - v71, 1, v70);
      }

      sub_178D38(*(a1 + 248), v63, v65 & 1, v69, v72);
      v73 = *(a1 + 8);
      if (v65)
      {
        v74 = 1768845428;
      }

      else
      {
        v74 = 1869968496;
      }

      *buf = 1937077093;
      *&buf[4] = v74;
      *&buf[8] = 0;
      v75 = sub_163EF0(v86 + 1, v73);
      sub_172ED8(v75, buf);
      v64 = 0;
    }

    while ((v65 & 1) != 0);
  }
}

void *sub_1773C4(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0x6DB6DB6DB6DB6DB7 * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v10 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x249249249249249)
      {
        v12 = 0x492492492492492;
      }

      else
      {
        v12 = v11;
      }

      sub_177538(v7, v12);
    }

    sub_189A00();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0x6DB6DB6DB6DB6DB7 * ((v13 - v9) >> 3) >= a4)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v9[v18];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = a3 - &__src[v14];
    if (v16)
    {
      result = memmove(v13, v15, v16);
    }

    v17 = &v13[v16];
  }

  v7[1] = v17;
  return result;
}

void sub_177538(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_2AE238(a2);
  }

  sub_189A00();
}

void sub_17758C(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v86 = *a2;
  v87 = v3;
  v4 = *(a2 + 32);
  v88 = v4;
  *&v86 = 0;
  v85 = *(a2 + 40);
  v6 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_51:
    sub_177C90(&v80, &v86, &v85);
    v21 = a1[1];
    v22 = a1[2];
    if (v21 < v22)
    {
      v23 = v81;
      v24 = v82;
      *v21 = v80;
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 40) = *__p;
      *(v21 + 56) = v84;
      __p[0] = 0;
      __p[1] = 0;
      v84 = 0;
      v25 = v21 + 64;
      goto LABEL_53;
    }

    v26 = (v21 - *a1) >> 6;
    v27 = v26 + 1;
    if ((v26 + 1) >> 58)
    {
      sub_189A00();
    }

    v28 = v22 - *a1;
    if (v28 >> 5 > v27)
    {
      v27 = v28 >> 5;
    }

    if (v28 >= 0x7FFFFFFFFFFFFFC0)
    {
      v29 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = v27;
    }

    v96 = a1;
    if (v29)
    {
      sub_2F9534(v29);
    }

    v49 = v26 << 6;
    v93 = 0;
    v94 = v49;
    *(&v95 + 1) = 0;
    v50 = v81;
    v51 = v82;
    *v49 = v80;
    *(v49 + 16) = v50;
    *(v49 + 32) = v51;
    *(v49 + 40) = 0;
    *(v49 + 48) = 0;
    *(v49 + 56) = 0;
    *(v49 + 40) = *__p;
    *(v49 + 56) = v84;
    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    *&v95 = (v26 << 6) + 64;
    v52 = a1[1];
    v53 = (v26 << 6) + *a1 - v52;
    sub_178AE4(a1, *a1, v52, v49 + *a1 - v52);
    v54 = *a1;
    *a1 = v53;
    v55 = a1[2];
    v79 = v95;
    *(a1 + 1) = v95;
    *&v95 = v54;
    *(&v95 + 1) = v55;
    v93 = v54;
    v94 = v54;
    sub_177D10(&v93);
    v56 = __p[0];
    a1[1] = v79;
    if (!v56)
    {
      return;
    }

LABEL_80:
    __p[1] = v56;
    operator delete(v56);
    return;
  }

  while (1)
  {
    v7 = *(v6 + 8);
    v8 = v7 != 0;
    if (!v7)
    {
      v11 = 0;
LABEL_15:
      v9 = v7 == 1819304813;
LABEL_16:
      v12 = DWORD2(v86) == 1819304813;
      goto LABEL_17;
    }

    v9 = v7 == 1819304813;
    if (DWORD2(v86) && v7 != DWORD2(v86))
    {
      v11 = DWORD2(v86) != 1819304813 && v7 < DWORD2(v86);
      if (v7 == 1819304813)
      {
        v11 = 1;
      }

      goto LABEL_15;
    }

    if (v7 != 1819304813 || DWORD2(v86) != 1819304813)
    {
      v11 = 0;
      v8 = 0;
      goto LABEL_16;
    }

    if ((*(v6 + 12) & 0x40) != 0)
    {
      v12 = 1;
      v9 = 1;
      v11 = (BYTE12(v86) & 0x40) == 0;
      v8 = v11;
    }

    else
    {
      if ((BYTE12(v86) & 0x40) != 0)
      {
        goto LABEL_62;
      }

      v11 = 0;
      v8 = 0;
      v12 = 1;
      v9 = 1;
    }

LABEL_17:
    v13 = v9 && v8 == 0;
    v14 = !v13 || !v12;
    if (!v14 && (*(v6 + 12) & 1) != (BYTE12(v86) & 1))
    {
      v11 = BYTE12(v86) & 1;
      LOBYTE(v8) = 1;
    }

    v15 = v11;
    if ((v8 & 1) == 0)
    {
      v16 = *(v6 + 32);
      if (!v16)
      {
        break;
      }

      v15 = v16 > v4;
      if (!v4 || v16 == v4)
      {
        break;
      }
    }

LABEL_47:
    if (!v15)
    {
      goto LABEL_62;
    }

LABEL_48:
    v6 += 64;
    if (v6 == v5)
    {
      goto LABEL_51;
    }
  }

  v17 = *(v6 + 28);
  if (!v17)
  {
    v15 = v11;
    goto LABEL_47;
  }

  v13 = v17 == HIDWORD(v87);
  v18 = v17 < HIDWORD(v87);
  if (!v13 && HIDWORD(v87) != 0)
  {
    v11 = v18;
  }

  if (v11)
  {
    goto LABEL_48;
  }

LABEL_62:
  if (!sub_5FB04(v6, &v86))
  {
    sub_177C90(&v80, &v86, &v85);
    v35 = a1[1];
    v34 = a1[2];
    if (v35 < v34)
    {
      if (v6 != v35)
      {
        v36 = a1[1];
        if (v35 >= 0x40)
        {
          v37 = *(v35 - 48);
          v38 = *(v35 - 32);
          *v35 = *(v35 - 64);
          *(v35 + 16) = v37;
          *(v35 + 32) = v38;
          *(v35 + 40) = 0;
          *(v35 + 48) = 0;
          *(v35 + 56) = 0;
          *(v35 + 40) = *(v35 - 24);
          *(v35 + 56) = *(v35 - 8);
          *(v35 - 24) = 0;
          *(v35 - 16) = 0;
          *(v35 - 8) = 0;
          v36 = v35 + 64;
        }

        a1[1] = v36;
        if (v35 != v6 + 64)
        {
          v39 = 0;
          do
          {
            v40 = v35 + v39;
            v41 = *(v35 + v39 - 128);
            v42 = *(v35 + v39 - 112);
            v44 = (v35 + v39 - 24);
            v43 = *v44;
            *(v44 - 1) = *(v35 + v39 - 96);
            *(v44 - 3) = v42;
            *(v44 - 5) = v41;
            if (v43)
            {
              *(v40 - 16) = v43;
              operator delete(v43);
              *v44 = 0;
              *(v35 + v39 - 16) = 0;
              *(v35 + v39 - 8) = 0;
            }

            v45 = (v40 - 88);
            *v44 = *(v40 - 88);
            *(v40 - 8) = *(v40 - 72);
            *v45 = 0;
            v45[1] = 0;
            v45[2] = 0;
            v39 -= 64;
          }

          while (v35 + v39 - 64 != v6);
        }

        v46 = v80;
        v47 = v81;
        *(v6 + 32) = v82;
        *v6 = v46;
        *(v6 + 16) = v47;
        v48 = *(v6 + 40);
        if (v48)
        {
          *(v6 + 48) = v48;
          operator delete(v48);
          *(v6 + 40) = 0;
          *(v6 + 48) = 0;
          *(v6 + 56) = 0;
        }

        *(v6 + 40) = *__p;
        *(v6 + 56) = v84;
        __p[0] = 0;
        __p[1] = 0;
        v84 = 0;
        return;
      }

      v66 = v81;
      v67 = v82;
      *v35 = v80;
      *(v35 + 16) = v66;
      *(v35 + 32) = v67;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 40) = *__p;
      *(v35 + 56) = v84;
      __p[0] = 0;
      __p[1] = 0;
      v84 = 0;
      v25 = v35 + 64;
LABEL_53:
      a1[1] = v25;
      return;
    }

    v57 = *a1;
    v58 = ((v35 - *a1) >> 6) + 1;
    if (v58 >> 58)
    {
      sub_189A00();
    }

    v59 = v34 - v57;
    if (v59 >> 5 > v58)
    {
      v58 = v59 >> 5;
    }

    if (v59 >= 0x7FFFFFFFFFFFFFC0)
    {
      v60 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v60 = v58;
    }

    v92 = a1;
    if (v60)
    {
      sub_2F9534(v60);
    }

    v68 = v6 - v57;
    v69 = (v6 - v57) >> 6;
    v70 = v69 << 6;
    v89 = 0;
    v90 = v69 << 6;
    v91 = (v69 << 6);
    if (!v69)
    {
      if (v68 < 1)
      {
        if (v6 == v57)
        {
          v71 = 1;
        }

        else
        {
          v71 = v68 >> 5;
        }

        v96 = a1;
        sub_2F9534(v71);
      }

      v70 -= ((v68 >> 1) + 32) & 0xFFFFFFFFFFFFFFC0;
      v90 = v70;
      *&v91 = v70;
    }

    v72 = v81;
    v73 = v82;
    *v70 = v80;
    *(v70 + 16) = v72;
    *(v70 + 32) = v73;
    *(v70 + 40) = 0;
    *(v70 + 48) = 0;
    *(v70 + 56) = 0;
    *(v70 + 40) = *__p;
    *(v70 + 56) = v84;
    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    *&v91 = v91 + 64;
    sub_178AE4(a1, v6, a1[1], v91);
    v74 = *a1;
    v75 = v90;
    *&v91 = v91 + a1[1] - v6;
    a1[1] = v6;
    v76 = v75 + v74 - v6;
    sub_178AE4(a1, v74, v6, v76);
    v77 = *a1;
    *a1 = v76;
    v78 = a1[2];
    *(a1 + 1) = v91;
    *&v91 = v77;
    *(&v91 + 1) = v78;
    v89 = v77;
    v90 = v77;
    sub_177D10(&v89);
    v56 = __p[0];
    if (!__p[0])
    {
      return;
    }

    goto LABEL_80;
  }

  v30 = *(v6 + 40);
  v31 = *(v6 + 48);
  v32 = v6 + 40;
  if (v30 == v31)
  {
LABEL_66:
    v80 = v85;
    sub_D7724(v32, &v80);
  }

  else
  {
    while (1)
    {
      v33 = *v30;
      if (*(&v85 + 1) >= *v30)
      {
        break;
      }

      v30 += 2;
      if (v30 == v31)
      {
        goto LABEL_66;
      }
    }

    v61 = v30[1];
    if (*&v85 >= v33 || *(&v85 + 1) > v61)
    {
      if (*&v85 < v33 || *(&v85 + 1) > v61)
      {
        if (*&v85 < v33 || *&v85 > v61 || *(&v85 + 1) <= v61)
        {
          v80 = v85;
          sub_2F9300(v32, v30, &v80);
        }

        else
        {
          v30[1] = *(&v85 + 1);
        }
      }
    }

    else
    {
      *v30 = v85;
    }
  }
}

void sub_177C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_177D10(&a27);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_177C90(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v7 = *a3;
  sub_D7724(a1 + 40, &v7);
  return a1;
}

void sub_177CF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_177D10(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_177D74(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_27A4();
  v72 = (*(qword_6E94F8 + 16))();
  v6 = *(a1 + 120);
  if (v6)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    v7 = (*(*v6 + 120))(v6, &v69);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = sub_5544(4);
      v10 = *v9;
      if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v7);
        if ((SBYTE7(v76) & 0x80u) == 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Stream.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 595;
        *&buf[18] = 2080;
        *&buf[20] = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d error '%s' getting underlying stream format", buf, 0x1Cu);
        if (SBYTE7(v76) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v14 = *(a1 + 104);
      v15 = *(a1 + 112);
      v16 = *(v14 + 32);
      v66 = *(v14 + 16);
      v67 = v16;
      v68 = *(v14 + 48);
      if (!sub_5FB04(&v66, &v69))
      {
        v17 = *(v14 + 32);
        *buf = *(v14 + 16);
        *&buf[16] = v17;
        v79 = *(v14 + 48);
        *__p = v69;
        v76 = v70;
        v77 = v71;
        v18 = sub_5FB04(buf, __p);
        v19 = *&v66;
        v20 = *&v69;
        v64 = HIDWORD(v70);
        v65 = HIDWORD(v67);
        v21 = *(a1 + 96) + *(a1 + 92);
        if (*(a1 + 88))
        {
          v22 = 1768845428;
        }

        else
        {
          v22 = 1869968496;
        }

        LODWORD(v73) = 1885762592;
        HIDWORD(v73) = v22;
        v74 = v21;
        sub_172ED8(a2, &v73);
        if (v21 == 1)
        {
          v74 = 0;
          sub_172ED8(a2, &v73);
        }

        v73 = 0x676C6F6270667420;
        v74 = 0;
        sub_172ED8(a3, &v73);
        if (!v18)
        {
          if (*(a1 + 88))
          {
            v23 = 1768845428;
          }

          else
          {
            v23 = 1869968496;
          }

          LODWORD(v73) = 1936092532;
          HIDWORD(v73) = v23;
          v74 = *(a1 + 96) + *(a1 + 92);
          sub_172ED8(a2, &v73);
          if (v21 == 1)
          {
            v74 = 0;
            sub_172ED8(a2, &v73);
          }

          v73 = 0x676C6F6273666D74;
          v74 = 0;
          sub_172ED8(a3, &v73);
        }

        if (v19 != v20)
        {
          v73 = 0x676C6F626E737274;
          v74 = 0;
          sub_172ED8(a2, &v73);
          v24 = *(a1 + 88);
          v25 = 304;
          if (v24)
          {
            v25 = 280;
          }

          v26 = 312;
          if (*(a1 + 88))
          {
            v26 = 288;
          }

          v63 = v8;
          if (((*(v15 + v26) - *(v15 + v25)) & 0x7FFFFFFF8) != 0)
          {
            v73 = 0x696E70746C746E63;
            v74 = 0;
            sub_172ED8(a2, &v73);
            v73 = 0x696E707473616674;
            v74 = 0;
            sub_172ED8(a2, &v73);
            v24 = *(a1 + 88);
            v27 = 304;
            if (v24)
            {
              v27 = 280;
            }

            v28 = 312;
            if (*(a1 + 88))
            {
              v28 = 288;
            }

            v29 = *(v15 + v28) - *(v15 + v27);
            if ((v29 & 0x7FFFFFFF8) != 0)
            {
              v30 = 0;
              v31 = (v29 >> 3);
              do
              {
                if (*(a1 + 88))
                {
                  v32 = 280;
                }

                else
                {
                  v32 = 304;
                }

                v34 = v15 + v32;
                v33 = *(v15 + v32);
                if (v30 >= (*(v34 + 8) - v33) >> 3)
                {
                  v35 = 0;
                }

                else
                {
                  v35 = *(v33 + 8 * v30);
                }

                if (*(v35 + 88))
                {
                  v36 = 1768845428;
                }

                else
                {
                  v36 = 1869968496;
                }

                LODWORD(v73) = 1885762592;
                HIDWORD(v73) = v36;
                v74 = *(v35 + 96) + *(v35 + 92);
                v37 = v74;
                sub_172ED8(a2, &v73);
                if (v37 == 1)
                {
                  v74 = 0;
                  sub_172ED8(a2, &v73);
                }

                if (*(v35 + 88))
                {
                  v38 = 1768845428;
                }

                else
                {
                  v38 = 1869968496;
                }

                LODWORD(v73) = 1936092532;
                HIDWORD(v73) = v38;
                v39 = *(v35 + 96) + *(v35 + 92);
                v74 = v39;
                sub_172ED8(a2, &v73);
                if (v39 == 1)
                {
                  v74 = 0;
                  sub_172ED8(a2, &v73);
                }

                ++v30;
              }

              while (v31 != v30);
              v24 = *(a1 + 88);
            }
          }

          v40 = (v24 & 1) == 0;
          v41 = 280;
          if (!v40)
          {
            v41 = 304;
          }

          v42 = 288;
          if (!v40)
          {
            v42 = 312;
          }

          if (((*(v15 + v42) - *(v15 + v41)) & 0x7FFFFFFF8) != 0)
          {
            v73 = 0x6F7574706C746E63;
            v74 = 0;
            sub_172ED8(a2, &v73);
            v73 = 0x6F75747073616674;
            v74 = 0;
            sub_172ED8(a2, &v73);
            v43 = 280;
            if (*(a1 + 88))
            {
              v43 = 304;
            }

            v44 = 288;
            if (*(a1 + 88))
            {
              v44 = 312;
            }

            v45 = *(v15 + v44) - *(v15 + v43);
            if ((v45 & 0x7FFFFFFF8) != 0)
            {
              v46 = 0;
              v47 = (v45 >> 3);
              do
              {
                if (*(a1 + 88))
                {
                  v48 = 304;
                }

                else
                {
                  v48 = 280;
                }

                v50 = v15 + v48;
                v49 = *(v15 + v48);
                if (v46 >= (*(v50 + 8) - v49) >> 3)
                {
                  v51 = 0;
                }

                else
                {
                  v51 = *(v49 + 8 * v46);
                }

                if (*(v51 + 88))
                {
                  v52 = 1768845428;
                }

                else
                {
                  v52 = 1869968496;
                }

                LODWORD(v73) = 1885762592;
                HIDWORD(v73) = v52;
                v74 = *(v51 + 96) + *(v51 + 92);
                v53 = v74;
                sub_172ED8(a2, &v73);
                if (v53 == 1)
                {
                  v74 = 0;
                  sub_172ED8(a2, &v73);
                }

                if (*(v51 + 88))
                {
                  v54 = 1768845428;
                }

                else
                {
                  v54 = 1869968496;
                }

                LODWORD(v73) = 1936092532;
                HIDWORD(v73) = v54;
                v55 = *(v51 + 96) + *(v51 + 92);
                v74 = v55;
                sub_172ED8(a2, &v73);
                if (v55 == 1)
                {
                  v74 = 0;
                  sub_172ED8(a2, &v73);
                }

                ++v46;
              }

              while (v47 != v46);
            }
          }

          v73 = 0x676C6F626E737274;
          v74 = 0;
          sub_172ED8(a3, &v73);
          v8 = v63;
          v73 = 0x676C6F626C746E63;
          v74 = 0;
          sub_172ED8(a3, &v73);
        }

        if (v65 != v64)
        {
          if (*(a1 + 88))
          {
            v56 = 1768845428;
          }

          else
          {
            v56 = 1869968496;
          }

          LODWORD(v73) = 1936482681;
          HIDWORD(v73) = v56;
          v74 = 0;
          sub_172ED8(a2, &v73);
        }

        v14 = *(a1 + 104);
      }

      v57 = v71;
      v58 = v70;
      *(v14 + 16) = v69;
      *(v14 + 32) = v58;
      *(v14 + 48) = v57;
      v59 = sub_5544(4);
      if (*v59 && os_log_type_enabled(*v59, OS_LOG_TYPE_DEBUG))
      {
        v60 = *(a1 + 88);
        v61 = *(a1 + 8);
        sub_618A4(__p);
      }
    }
  }

  else
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_Stream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 586;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: the underlying stream is NULL", buf, 0x12u);
    }

    v8 = 0;
  }

  sub_210C50(&v72);
  return v8;
}

void sub_1785E4(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a4 + 88);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a4 + 80);
      if (v10)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_5544(14);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v27 = "VirtualStream.cpp";
    v28 = 1024;
    v29 = 1588;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: unable to lock stream", buf, 0x12u);
  }

  v10 = 0;
LABEL_10:
  if (v10 == a1)
  {
    if (a2)
    {
      v15 = a2;
      do
      {
        v24 = *a3;
        v25 = *(a3 + 2);
        if (sub_6FE08(a4 + 272, &v24))
        {
          v22 = *a3;
          v23 = *(a3 + 2);
          sub_6FF5C(a4 + 272, &v22);
          if (*a3 == 1936092532)
          {
            v20 = 0x676C6F62736C6174;
            v21 = 0;
            if (sub_6FE08(a4 + 272, &v20))
            {
              sub_6FF5C(a4 + 272, &v20);
            }
          }
        }

        else
        {
          v16 = sub_5544(23);
          if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *a3;
            v18 = *(a3 + 2);
            sub_22CE0(&__p);
          }
        }

        a3 = (a3 + 12);
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "VirtualStream.cpp";
      v28 = 1024;
      v29 = 1606;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: got an unexpected Object pointer in callback", buf, 0x12u);
    }
  }

  if (v9)
  {
    sub_1A8C0(v9);
  }
}

void sub_1789AC(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_1A8C0(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1789EC(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_54A0(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_178A90(void *a1)
{
  if (a1)
  {
    sub_178A90(*a1);
    sub_178A90(a1[1]);
    sub_98A08(a1[6]);

    operator delete(a1);
  }
}

void sub_178AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 32);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 32) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      v6 += 64;
      a4 += 64;
    }

    while (v6 != a3);
    do
    {
      v9 = *(v5 + 40);
      if (v9)
      {
        *(v5 + 48) = v9;
        operator delete(v9);
      }

      v5 += 64;
    }

    while (v5 != a3);
  }
}

void sub_178B70(void *a1, int a2, int a3)
{
  v6 = sub_5544(2);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = 136315906;
        v10 = "VirtualAudio_Utilities.cpp";
        v11 = 1024;
        v12 = 312;
        v13 = 1024;
        v14 = a3;
        v15 = 1024;
        v16 = a2;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID: %u (owner : %u)", &v9, 0x1Eu);
      }
    }
  }

  v8 = sub_165090(a1, a2);
  sub_164E84(v8, a3);
}

void *sub_178C6C(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_46980(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_46980((a1 + 3), a2[3], a2[4], (a2[4] - a2[3]) >> 2);
  return a1;
}

void sub_178CCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_178CE8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    sub_188544((i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_178D38(uint64_t a1, uint64_t a2, int a3, unsigned int a4, _BYTE *a5)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    while (1)
    {
      v9 = *v5;
      if (*v5 == a2)
      {
        break;
      }

      if (*(v9 + 8) == a2)
      {
        goto LABEL_7;
      }

      if (++v5 == v6)
      {
        return;
      }
    }

    if (!a2)
    {
      return;
    }

LABEL_7:
    v10 = 152;
    if (a3)
    {
      v10 = 128;
    }

    v11 = (v9 + v10);
    *(v9 + v10 + 8) = 0;
    v12 = 304;
    if (a3)
    {
      v12 = 280;
    }

    v13 = 312;
    if (a3)
    {
      v13 = 288;
    }

    v14 = (*(*v9 + v13) - *(*v9 + v12)) >> 3;
    if (v14 >= a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      do
      {
        sub_55558(v11, a5++);
        --v15;
      }

      while (v15);
    }

    if (*(v9 + 54) == 1)
    {
      sub_55360(a1, v9);

      sub_5540C(a1);
    }
  }
}

void sub_178E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(*a1 + 288))(a1))
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.isa) = 136315394;
      *(&__p.isa + 4) = "AggregateDevice_CommonBase.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 585;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (a2 && *(a1 + 576))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p.isa) = 136315394;
      *(&__p.isa + 4) = "AggregateDevice_CommonBase.cpp";
      WORD2(__p.info) = 1024;
      *(&__p.info + 6) = 586;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &__p, 0x12u);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v26, "Precondition failure.");
  }

  sub_4EBC(a1);
  *(a1 + 576) = a2;
  *(a1 + 584) = a3;
  if (!*(a1 + 760))
  {
    v6 = *(a1 + 288);
    (*(*a1 + 504))(&__p, a1);
    LODWORD(v6) = sub_179F8C(v6, 0, &__p);
    sub_477A0(__p.info);
    if (v6)
    {
      v7 = *(a1 + 640);
      for (i = *(a1 + 648); v7 != i; v7 += 16)
      {
        sub_65234(&v27, *v7 + 120);
        v9 = v28;
        if (!*(a1 + 760) && v28 != &v27)
        {
          do
          {
            v10 = v9[3];
            if (v10)
            {
              v11 = std::__shared_weak_count::lock(v10);
              if (v11)
              {
                v12 = v11;
                v13 = v9[2];
                if (v13)
                {
                  sub_53E8(&__p, "kBluetoothAudioDeviceFeatureHostedDSPOffload");
                  v14 = sub_34CF08(v13, &__p);
                  if (SHIBYTE(__p.data) < 0)
                  {
                    operator delete(__p.isa);
                  }

                  sub_1A8C0(v12);
                  if (v14)
                  {
                    v15 = sub_5544(25);
                    v16 = *v15;
                    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_INFO))
                    {
                      v17 = *(a1 + 128);
                      LODWORD(__p.isa) = 136315650;
                      *(&__p.isa + 4) = "AggregateDevice_CommonBase.cpp";
                      WORD2(__p.info) = 1024;
                      *(&__p.info + 6) = 3934;
                      WORD1(__p.data) = 1024;
                      HIDWORD(__p.data) = v17;
                      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Device %u supports voice isolation offloaded DSP, adding IO delegate", &__p, 0x18u);
                    }

                    v18 = *(*v7 + 152);
                    v19 = *(v18 + 8);
                    v20 = *(v18 + 16);
                    if (v20)
                    {
                      atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
                    }

                    operator new();
                  }
                }

                else
                {
                  sub_1A8C0(v11);
                }
              }
            }

            v9 = v9[1];
          }

          while (v9 != &v27);
        }

        sub_65310(&v27);
      }
    }
  }
}

void sub_17931C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1A8C0(a16);
  }

  sub_65310(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_179390(uint64_t result, int a2, uint64_t a3)
{
  if (*(result + 392) != a2)
  {
    v4 = result;
    *(result + 392) = a2;
    sub_13789C(result);
    v5 = *(v4 + 8);
    v6 = sub_5544(2);
    if (*(v6 + 8))
    {
      v7 = *v6;
      if (*v6)
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v9 = "VirtualAudio_Utilities.cpp";
          v10 = 1024;
          v11 = 334;
          v12 = 1024;
          v13 = v5;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Device ID: %u", buf, 0x18u);
        }
      }
    }

    return sub_75788(a3 + 32, v5);
  }

  return result;
}

void sub_179498(uint64_t a1, uint64_t a2, int a3, uint64_t *a4)
{
  if (!*(a1 + 872))
  {
    v18 = sub_5544(14);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      v27 = 136315394;
      v28 = "VirtualAudio_Device.cpp";
      v29 = 1024;
      v30 = 947;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [mDevice is NULL]: mDevice is NULL", &v27, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "mDevice is NULL");
  }

  v8 = (*(*a1 + 456))(a1);
  v9 = (*(**(a1 + 872) + 336))();
  if (v9)
  {
    v21 = v9;
    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v24 = "disabling";
      v28 = "VirtualAudio_Device.cpp";
      v30 = 953;
      if (a3)
      {
        v24 = "enabling";
      }

      v29 = 1024;
      v31 = 1024;
      v27 = 136316162;
      v32 = v21;
      v33 = 2080;
      v34 = v24;
      if (a2)
      {
        v25 = "input";
      }

      else
      {
        v25 = "output";
      }

      v35 = 2080;
      v36 = v25;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (result) [error result is an error]: Error %u %s %s enhancement processing on the active aggregate device", &v27, 0x2Cu);
    }

    v26 = __cxa_allocate_exception(0x10uLL);
    *v26 = &off_6DDDD0;
    v26[2] = v21;
  }

  v10 = (*(*a1 + 456))(a1, a2);
  v11 = 408;
  if (!a2)
  {
    v11 = 409;
  }

  v12 = *(a1 + v11);
  *(a1 + v11) = a3;
  if (a2)
  {
    v13 = 1768845428;
  }

  else
  {
    v13 = 1869968496;
  }

  if (v12 != a3)
  {
    v14 = *(a1 + 8);
    v27 = 1634035054;
    v28 = v13;
    v15 = sub_163EF0(a4, v14);
    sub_172ED8(v15, &v27);
  }

  if (v10 != v8)
  {
    v16 = *(a1 + 8);
    v27 = 1819569763;
    v28 = v13;
    v17 = sub_163EF0(a4, v16);
    sub_172ED8(v17, &v27);
  }
}

uint64_t sub_179808(uint64_t a1, int a2, uint64_t a3)
{
  sub_10BB88(a1);
  v6 = 824;
  if (a2)
  {
    v6 = 848;
  }

  v7 = a1 + v6;
  for (i = *(a1 + v6); i != *(v7 + 8); ++i)
  {
    v9 = *i;
    v10 = (*(*v9 + 32))(v9);
    sub_17992C(v10, a3);
  }

  v11 = 872;
  if (a2)
  {
    v11 = 896;
  }

  v12 = (a1 + v11);
  for (j = *v12; j != v12[1]; ++j)
  {
    if (*j)
    {
      if ((*(**j + 160))(*j))
      {
        v14 = (*(**j + 32))();
        sub_17992C(v14, a3);
      }
    }
  }

  return 0;
}

uint64_t sub_17992C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 48;
  sub_47BD8(a1 + 48);
  v5 = *(a1 + 32) - *(a1 + 24);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = 0;
  v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v8 = v7 <= 1 ? 1 : v7;
  v9 = 8;
  do
  {
    v10 = *(a1 + 24);
    if ((*(**(v10 + v9) + 216))(*(v10 + v9)))
    {
      v11 = (*(**(v10 + v9) + 184))(*(v10 + v9), a2);
      if (v11)
      {
        v6 = v11;
      }

      else
      {
        v6 = v6;
      }
    }

    v9 += 24;
    --v8;
  }

  while (v8);
  if (!v6)
  {
LABEL_12:
    v6 = 0;
    *(a1 + 449) = a2;
  }

  sub_47C90(v4);
  return v6;
}

void sub_179A58(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  sub_87840(&v25, a3, "", 4327);
  v7 = v26;
  if (v26 != &v25)
  {
    if (a4 == 1869968496)
    {
      v8 = 44731034;
    }

    else
    {
      v8 = 44731050;
    }

    if (a4 == 1768845428)
    {
      v9 = 44731018;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *(a2 + 376);
      v11 = v7[2];
      v13 = 0;
      v14 = 0;
      v15 = 0;
      strcpy(v16, "cwdv");
      v16[8] = 0;
      v17 = 3;
      v19[0] = 0;
      v19[1] = 0;
      v18 = v19;
      v22 = 0;
      v23 = 0;
      __p = 0;
      v20 = v9;
      v12 = sub_9DE4C(*(v10 + 128), v11, &v13);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v19[0]);
      if (v13)
      {
        v14 = v13;
        operator delete(v13);
      }

      v24 = v12;
      if (v12)
      {
        sub_75788(a1, v12);
      }

      v7 = v7[1];
    }

    while (v7 != &v25);
  }

  sub_87980(&v25);
}

uint64_t sub_179BFC(uint64_t a1, int a2)
{
  v2 = *(a1 + 872);
  if (!v2)
  {
    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "VirtualAudio_Device.cpp";
      v12 = 1024;
      v13 = 3703;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: mDevice is NULL", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  if (a2)
  {
    v3 = 1768845428;
  }

  else
  {
    v3 = 1869968496;
  }

  *buf = 1819569763;
  v11 = v3;
  v8 = 4;
  v9 = 0;
  (*(*v2 + 40))(v2, buf, 0, 0, &v8, &v9);
  return v9;
}

uint64_t sub_179D78(uint64_t a1, int a2)
{
  v4 = 824;
  if (a2)
  {
    v4 = 848;
  }

  v5 = (a1 + v4);
  v6 = *(a1 + v4);
  if (v5[1] == v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    LODWORD(v8) = 0;
    v9 = 1;
    do
    {
      v10 = (*(**(v6 + 8 * v7) + 32))(*(v6 + 8 * v7));
      v11 = (*(*v10 + 152))(v10);
      if (v11 <= v8)
      {
        v8 = v8;
      }

      else
      {
        v8 = v11;
      }

      v7 = v9;
      v6 = *v5;
      ++v9;
    }

    while (v7 < (v5[1] - *v5) >> 3);
  }

  v12 = 872;
  if (a2)
  {
    v12 = 896;
  }

  v13 = (a1 + v12);
  v14 = *v13;
  if (v13[1] != *v13)
  {
    v15 = 0;
    v16 = 1;
    do
    {
      v17 = *(v14 + 8 * v15);
      if (v17)
      {
        v18 = (*(*v17 + 160))(v17);
        v14 = *v13;
        if (v18)
        {
          v19 = (*(**(v14 + 8 * v15) + 32))(*(v14 + 8 * v15));
          v20 = (*(*v19 + 152))(v19);
          if (v20 <= v8)
          {
            v8 = v8;
          }

          else
          {
            v8 = v20;
          }

          v14 = *v13;
        }
      }

      v15 = v16++;
    }

    while (v15 < (v13[1] - v14) >> 3);
  }

  return v8;
}

uint64_t sub_179F2C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      v3 -= 40;
    }
  }

  return a1;
}

uint64_t sub_179F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = _os_feature_enabled_impl();
  v6 = 0;
  if (!v5)
  {
    return v6 & 1;
  }

  if (a1 > 1668313714)
  {
    if (a1 == 1668441443 || a1 == 1668440898)
    {
      goto LABEL_23;
    }

    v7 = 29299;
  }

  else
  {
    if (a1 == 1668301427 || a1 == 1668309362)
    {
      goto LABEL_10;
    }

    v7 = 29250;
  }

  if (a1 != (v7 | 0x63700000))
  {
    return v6 & 1;
  }

LABEL_10:
  v6 = 0;
  if (SHIDWORD(a1) <= 1987077986)
  {
    if (HIDWORD(a1) == 1768057203)
    {
      return v6 & 1;
    }

    v8 = 1919776355;
  }

  else
  {
    if (HIDWORD(a1) == 1987077987 || HIDWORD(a1) == 1987081833)
    {
      return v6 & 1;
    }

    v8 = 1987081839;
  }

  if (HIDWORD(a1) == v8)
  {
    return v6 & 1;
  }

  v6 = 0;
  if (a1 > 1668313665)
  {
    if (a1 != 1668313715)
    {
      v9 = 29250;
LABEL_22:
      if (a1 != (v9 | 0x63700000))
      {
        return v6 & 1;
      }
    }
  }

  else if (a1 != 1668301427)
  {
    v9 = 24946;
    goto LABEL_22;
  }

LABEL_23:
  sub_67EA8();
  v10 = qword_6E8D50;
  if (!qword_6E8D50)
  {
    goto LABEL_31;
  }

  v11 = &qword_6E8D50;
  do
  {
    v12 = *(v10 + 32);
    v13 = v12 >= a1;
    v14 = v12 < a1;
    if (v13)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * v14);
  }

  while (v10);
  if (v11 == &qword_6E8D50 || *(v11 + 8) > a1)
  {
LABEL_31:
    v11 = &qword_6E8D50;
  }

  v6 = sub_1C8EF0((v11 + 9), HIDWORD(a1), a3) ^ 1;
  return v6 & 1;
}

uint64_t sub_17A154(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v20 = 0;
  sub_52588();
  sub_1DB7C8(&v16);
  *buf = &unk_6FC990;
  v22 = 1;
  sub_26C0(&unk_6FC990);
  sub_163B64(&__p, a1, a2, a3, a4);
  v9 = __p;
  if (__p)
  {
    v10 = *__p;
    v20 = *__p;
    v4 = *(__p + 2) + 1;
    *(__p + 2) = v4;
  }

  else
  {
    v10 = 0;
  }

  if (v19)
  {
    sub_1A8C0(v19);
  }

  if (!v9)
  {
    v20 = qword_6FCAB0;
    if (__CFADD__(qword_6FCAB0++, 1))
    {
      qword_6FCAB0 = 1;
    }

    __p = &unk_6FC990;
    LOBYTE(v19) = 1;
    sub_47BD8(&unk_6FC990);
    operator new();
  }

  sub_3174(&unk_6FC990);
  sub_1DB63C(&v16);
  if (v10)
  {
    if (v4 == 1 && ((*(*a1 + 56))(a1, a2, sub_52124, v10) & 1) == 0)
    {
      v14 = sub_5544(15);
      if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        v17 = a2[2];
        sub_22CE0(&__p);
      }

      sub_52588();
      sub_164BC4(a1, a2, a3, a4, &v20);
      return 2003329396;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = sub_5544(15);
    v12 = 2003329396;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v16 = *a2;
      v17 = a2[2];
      sub_22CE0(&__p);
    }
  }

  return v12;
}

void sub_17A538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_17A59C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 60);
  if (sub_B622C(a1, a2, &v5))
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
    (*(*a2 + 48))(a2, &v6, 0, 0, 4, a1 + 56);
    return 1;
  }

  return result;
}

void sub_17A884(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_17A8A0(_DWORD *a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  sub_4EBC(a1);
  if (((*(*a1 + 16))(a1, a2) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v15 = a2[2];
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v8 = *a2;
  if (*a2 <= 1935762280)
  {
    if (v8 <= 1635153006)
    {
      if (v8 == 1165513555 || v8 == 1633973868)
      {
        goto LABEL_26;
      }

      v9 = 1635152995;
    }

    else if (v8 > 1886807138)
    {
      if (v8 == 1886807139)
      {
        goto LABEL_26;
      }

      v9 = 1886807154;
    }

    else
    {
      if (v8 == 1635153007)
      {
        goto LABEL_26;
      }

      v9 = 1684103987;
    }
  }

  else if (v8 > 1983996970)
  {
    if (v8 <= 1986225265)
    {
      if ((v8 == 1983996971 || v8 == 1983997011) && (a1[77] & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if (v8 == 1986225268)
    {
      goto LABEL_26;
    }

    v9 = 1986225266;
  }

  else
  {
    if (v8 <= 1952997987)
    {
      if (v8 != 1935762281)
      {
        v9 = 1937204590;
        goto LABEL_25;
      }

LABEL_26:

      return sub_17C8A0(a2, a3, a4, a1 + 23);
    }

    if (v8 == 1952997988)
    {
      v11 = sub_6FB1C();
      *buf = qword_6E9378;
      v18 = dword_6E9380;
      v19 = a3;
      v20 = a4;
      sub_17C118((v11 + 408), &qword_6E9378, buf);
    }

    v9 = 1953002354;
  }

LABEL_25:
  if (v8 == v9)
  {
    goto LABEL_26;
  }

LABEL_29:

  return sub_17AC54(a1, a2, a3, a4);
}

BOOL sub_17AC54(_DWORD *a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  sub_4E890();
  v8 = a1[32];
  buf = *a2;
  v9 = sub_73838(v8, &buf, a3, a4);
  if (v9)
  {
    v10 = sub_5544(17);
    v11 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v25, v9);
        if (v26 >= 0)
        {
          v12 = v25;
        }

        else
        {
          v12 = v25[0];
        }

        v13 = a1[32];
        (*(*a1 + 128))(v23, a1);
        v14 = v24;
        v15 = v23[0];
        sub_22170(__p, *a2);
        v16 = v23;
        if (v14 < 0)
        {
          v16 = v15;
        }

        if (v22 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        v18 = a2[1];
        v19 = a2[2];
        buf.mSelector = 136317186;
        *&buf.mScope = "AggregateDevice_CommonBase.cpp";
        v28 = 1024;
        v29 = 3894;
        v30 = 1024;
        v31 = v9;
        v32 = 2080;
        v33 = v12;
        v34 = 1024;
        v35 = v13;
        v36 = 2080;
        v37 = v16;
        v38 = 2080;
        v39 = v17;
        v40 = 1024;
        v41 = v18;
        v42 = 1024;
        v43 = v19;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mDeviceID %d (uid %s); selector %s; scope %u; element %u", &buf, 0x48u);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        if (v26 < 0)
        {
          operator delete(v25[0]);
        }
      }
    }
  }

  return v9 == 0;
}

void sub_17AE64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_17AEA0(uint64_t a1, uint64_t a2, double *a3)
{
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = 16;
  (*(*a2 + 40))(a2, &v13, 0, 0, &v15, a3);
  v5 = *(a1 + 64);
  v6 = *a3;
  if (v5 < *a3)
  {
    return 0;
  }

  v7 = *(a1 + 56);
  v8 = a3[1];
  if (v7 < v6 && v5 <= v8)
  {
    return 0;
  }

  v10 = v7 == v6;
  if (v5 != v8)
  {
    v10 = 0;
  }

  return (v7 >= v6 || v5 <= v8) && v10;
}

void sub_17B188(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_17B1A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 72);
  if (sub_17AEA0(a1, a2, &v5))
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
    (*(*a2 + 48))(a2, &v6, 0, 0, 16, a1 + 56);
    return 1;
  }

  return result;
}

void sub_17B48C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_17B504(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v12 = v2;
  v13 = v3;
  v6 = *(a1 + 112);
  v9 = *(a1 + 96);
  v10 = v6;
  v11 = *(a1 + 128);
  v7 = sub_17B574(a1, a2, &v9);
  if (!v7)
  {
    v8 = v10;
    *(a1 + 56) = v9;
    *(a1 + 72) = v8;
    *(a1 + 88) = v11;
  }

  return !v7;
}

BOOL sub_17B574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 40;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return sub_5FB04(a1 + 56, a3);
}

void sub_17B634(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
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

    JUMPOUT(0x17B604);
  }

  _Unwind_Resume(a1);
}

BOOL sub_17B840(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 8;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_17B904(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
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

    JUMPOUT(0x17B8D4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_17BB10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 64);
  if (sub_17B840(a1, a2, &v5))
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

void sub_17BDF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_17BE14(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v5 = *(a1 + 64);
  if (sub_368CCC(a1, a2, &v5))
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

void sub_17C0FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  _Unwind_Resume(a1);
}

void sub_17C118(char *a1, unsigned int *a2, uint64_t a3)
{
  v6 = sub_5544(14);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(&v32, *a3);
        if (v33 >= 0)
        {
          v8 = &v32;
        }

        else
        {
          v8 = v32;
        }

        sub_22170(v30, *(a3 + 4));
        if (v31 >= 0)
        {
          v9 = v30;
        }

        else
        {
          v9 = v30[0];
        }

        v10 = *(a3 + 8);
        v11 = *(a3 + 16);
        v23 = *(a3 + 24);
        sub_22170(&v27, *a2);
        v12 = v29;
        v13 = v27;
        sub_22170(&__p, a2[1]);
        v14 = &v27;
        p_p = __p;
        if (v12 < 0)
        {
          v14 = v13;
        }

        v16 = a2[2];
        if (v26 >= 0)
        {
          p_p = &__p;
        }

        *buf = 136317442;
        *&buf[4] = "StandardUtilities.h";
        v35 = 1024;
        *v36 = 904;
        *&v36[4] = 2080;
        *&v36[6] = v8;
        v37 = 2080;
        v38 = v9;
        v39 = 1024;
        v40 = v10;
        v41 = 2048;
        v42 = v11;
        v43 = 2048;
        v44 = v23;
        v45 = 2080;
        v46 = v14;
        v47 = 2080;
        v48 = p_p;
        v49 = 1024;
        v50 = v16;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to register ClientCallbackInfo (mAddress.mSelector: '%s'; mAddress.mScope: '%s'; mAddress.mElement: %u; mProc: %p; mData: %p) for trigger (mSelector: '%s'; mScope: '%s'; mElement: %u)", buf, 0x5Au);
        if (v26 < 0)
        {
          operator delete(__p);
        }

        if (v29 < 0)
        {
          operator delete(v27);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30[0]);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }
      }
    }
  }

  v27 = a1;
  v28 = 1;
  sub_26C0(a1);
  v17 = sub_70CD4((a1 + 288), a2);
  if (a1 + 296 == v17)
  {
    __p = a1;
    v25 = 1;
    sub_47BD8(a1);
    v30[0] = v30;
    v30[1] = v30;
    v31 = 0;
    operator new();
  }

  v18 = v17 + 48;
  for (i = *(v17 + 56); ; i = *(i + 8))
  {
    if (i == v18)
    {
      goto LABEL_29;
    }

    if (sub_17B4A8(i + 16, a3))
    {
      break;
    }
  }

  if (i != v18)
  {
    v20 = sub_5544(14);
    v21 = *v20;
    if (*v20)
    {
      if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "StandardUtilities.h";
        v35 = 1024;
        *v36 = 916;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Attempt to register with a trigger address for which the ClientCallbackInfo has already been added.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempt to register with a trigger address for which the ClientCallbackInfo has already been added.");
  }

LABEL_29:
  *buf = a1;
  buf[8] = 1;
  sub_47BD8(a1);
  operator new();
}

void sub_17C7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  sub_216C10(&a11);
  sub_2185D4(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_17C8A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4[1];
  if (v4 == a4)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v9 = 1;
    do
    {
      v10 = v4[3];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          v13 = v4[2];
          if (v13 && (*(*v13 + 16))(v4[2], a1))
          {
            v9 &= (*(*v13 + 56))(v13, a1, a2, a3);
          }

          sub_1A8C0(v12);
        }
      }

      v4 = v4[1];
    }

    while (v4 != a4);
  }

  return v9 & 1;
}

BOOL sub_17C9AC(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  sub_4DFC0(a1);
  sub_4E890();
  v8 = *(a1 + 268);
  buf = *a2;
  v9 = sub_73838(v8, &buf, a3, a4);
  if (v9)
  {
    v10 = *sub_5544(18);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v26, v9);
        if (v27 >= 0)
        {
          v13 = v26;
        }

        else
        {
          v13 = v26[0];
        }

        v14 = *(a1 + 268);
        (*(*a1 + 128))(v24, a1);
        v15 = v25;
        v16 = v24[0];
        sub_22170(__p, *a2);
        v17 = v24;
        if (v15 < 0)
        {
          v17 = v16;
        }

        if (v23 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        v19 = a2[1];
        v20 = a2[2];
        buf.mSelector = 136317186;
        *&buf.mScope = "Device_HAL_Common.mm";
        v29 = 1024;
        v30 = 300;
        v31 = 1024;
        v32 = v9;
        v33 = 2080;
        v34 = v13;
        v35 = 1024;
        v36 = v14;
        v37 = 2080;
        v38 = v17;
        v39 = 2080;
        v40 = v18;
        v41 = 1024;
        v42 = v19;
        v43 = 1024;
        v44 = v20;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %d (%s): mDeviceID %u (uid %s); selector %s; scope %u; element %u", &buf, 0x48u);
        if (v23 < 0)
        {
          operator delete(__p[0]);
        }

        if (v25 < 0)
        {
          operator delete(v24[0]);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }
      }
    }
  }

  return v9 == 0;
}

void sub_17CBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_17CC28(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  std::mutex::lock((a1 + 8));
  v8 = *(a1 + 72);
  if (v8 != (a1 + 80))
  {
    do
    {
      if (v8[6])
      {
        v9 = (v8 + 4);
      }

      else
      {
        v9 = a3;
      }

      sub_44E44(&v25, v9);
      v23 = 0;
      v24 = 0;
      v22 = &v23;
      sub_7E598(buf, *a3, (a3 + 8), v25, v26, &v22, &v23);
      if (v24)
      {
        v10 = 1;
      }

      else
      {
        v10 = v26[1] == 0;
      }

      if (v10)
      {
        sub_17D414(&v20, v8 + 7);
        v11 = v21[0];
        if (v21[0])
        {
          v12 = *a4;
          v13 = v21;
          do
          {
            v14 = v11;
            v15 = v13;
            v16 = *(v11 + 7);
            if (v16 >= v12)
            {
              v13 = v11;
            }

            v11 = v11[v16 < v12];
          }

          while (v11);
          if (v13 != v21)
          {
            if (v16 < v12)
            {
              v14 = v15;
            }

            if (v12 >= *(v14 + 7))
            {
              v17 = v8[10];
              sub_44E44(v27, &v22);
              v17(a2, v27, *a4, v8[11]);
              sub_477A0(v27[1]);
            }
          }
        }

        sub_477A0(v21[0]);
      }

      sub_477A0(v23);
      sub_477A0(v26[0]);
      v18 = v8[1];
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
          v19 = v8[2];
          v10 = *v19 == v8;
          v8 = v19;
        }

        while (!v10);
      }

      v8 = v19;
    }

    while (v19 != (a1 + 80));
  }

  std::mutex::unlock((a1 + 8));
}

void sub_17D08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_477A0(a17);
  sub_477A0(a20);
  sub_477A0(a23);
  std::mutex::unlock((v23 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_17D104()
{
  result = qword_70A210;
  if (!qword_70A210)
  {
    v1 = sub_5544(14);
    v2 = *v1;
    if (*v1)
    {
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_ERROR))
      {
        v4 = 136315394;
        v5 = "DeviceInfoListener.cpp";
        v6 = 1024;
        v7 = 45;
        _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [sDeviceInfoListener is NULL]: sDeviceInfoListener is NULL!", &v4, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "sDeviceInfoListener is NULL!");
  }

  return result;
}

void *sub_17D224(void *result, uint64_t *a2, int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 28);
        if (v15 <= a3)
        {
          break;
        }

        v13 = *v14;
        v3 = v14;
        if (!*v14)
        {
          goto LABEL_38;
        }
      }

      if (v15 >= a3)
      {
        break;
      }

      v3 = v14 + 1;
      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v8 = v3;
    goto LABEL_19;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    v17 = *v3;
    if (!*v3)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v18 = v17;
        v19 = *(v17 + 28);
        if (v19 <= a3)
        {
          break;
        }

        v17 = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_40;
      }

      v3 = v18 + 1;
      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  if (!*v8)
  {
LABEL_38:
    operator new();
  }

  return result;
}

void *sub_17D414(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      sub_17D224(a1, v3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

void sub_17D4C0(uint64_t a1)
{
  v2 = sub_758D4(1986291046, 0, *(a1 + 144), *(a1 + 152));
  if (!v2 || (v3 = v2, !sub_DD8CC(*(v2 + 872), 0)))
  {

    sub_17DC80();
    return;
  }

  v4 = sub_758D4(1987277417, 0, *(a1 + 144), *(a1 + 152));
  v42 = v4;
  if (v4)
  {
    v41 = (*(*v4 + 128))(v4);
  }

  else
  {
    v41 = 1;
  }

  v5 = sub_9F278(v3, 1);
  sub_44E44(&v44, v5);
  v6 = v44;
  if (v44 == v45)
  {
    v43 = 0;
  }

  else
  {
    do
    {
      v7 = sub_9E618(*(a1 + 128), *(v6 + 7));
      if (v7)
      {
        v8 = *(v7 + 96);
        if (v8)
        {
          v9 = *(v7 + 88);
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v10 = std::__shared_weak_count::lock(v8);
          std::__shared_weak_count::__release_weak(v8);
          if (v10)
          {
            if (v9)
            {
              v11 = (*(*v9 + 448))(v9);
              sub_1A8C0(v10);
              if (v11)
              {
                v43 = 1;
                goto LABEL_24;
              }
            }

            else
            {
              sub_1A8C0(v10);
            }
          }
        }
      }

      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v45);
    v43 = 0;
LABEL_24:
    v6 = v44;
  }

  if (v6 == v45)
  {
LABEL_50:
    v30 = 0;
    goto LABEL_51;
  }

  while (1)
  {
    v15 = sub_9E618(*(a1 + 128), *(v6 + 7));
    if (v15)
    {
      v16 = *(v15 + 96);
      if (v16)
      {
        v17 = *(v15 + 88);
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v18 = std::__shared_weak_count::lock(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (v18)
        {
          break;
        }
      }
    }

LABEL_44:
    v28 = v6[1];
    if (v28)
    {
      do
      {
        v29 = v28;
        v28 = *v28;
      }

      while (v28);
    }

    else
    {
      do
      {
        v29 = v6[2];
        v14 = *v29 == v6;
        v6 = v29;
      }

      while (!v14);
    }

    v6 = v29;
    if (v29 == v45)
    {
      goto LABEL_50;
    }
  }

  if (!v17)
  {
LABEL_42:
    sub_1A8C0(v18);
    goto LABEL_44;
  }

  v19 = *(v17 + 200);
  v46 = *(v17 + 192);
  v47 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_5659C(buf, &v46, "", 2460);
  v48 = 0x676C6F6273706D65;
  v49 = 0;
  v20 = sub_59410(*buf);
  v22 = v21;
  if (*&buf[8])
  {
    sub_1A8C0(*&buf[8]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  *(&v23 + 1) = v22;
  *&v23 = v20;
  if ((~(v23 >> 32) & 0x100000001) == 0)
  {
    v24 = *sub_5544(18);
    v25 = v24;
    if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2465;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PME running on far end. Bypassing source side processing.", buf, 0x12u);
    }

    goto LABEL_42;
  }

  sub_A1DF4(buf, a1);
  v26 = *buf;
  v27 = *&buf[8];
  sub_4AE8C(buf);
  v46 = v26;
  v47 = v27;
  LOBYTE(v26) = sub_34D988(v17, &v46);
  sub_1A8C0(v18);
  if ((v26 & 1) == 0)
  {
    goto LABEL_44;
  }

  v30 = 1;
LABEL_51:
  if (v43)
  {
    sub_A1DF4(buf, a1);
    v31 = *buf;
    sub_4AE8C(buf);
    v32 = *sub_5544(2);
    v33 = v32;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2484;
      v51 = 1024;
      v52 = v31;
      v53 = 1024;
      v54 = HIDWORD(v31);
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port Subtype supported by PME for route category %u and mode %u", buf, 0x1Eu);
    }

    if (v30)
    {
      sub_17DCC4();
      byte_6FF590 = 1;
    }

    sub_224194(v3, v30, v31, SHIDWORD(v31));
    v34 = v42;
    if (v42)
    {
      sub_224194(v42, v30, v31, SHIDWORD(v31));
    }
  }

  else
  {
    v35 = *sub_5544(2);
    v36 = v35;
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2501;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Port Subtype is not supported by PME - Clearing PME state", buf, 0x12u);
    }

    sub_17DC80();
    v34 = v42;
  }

  sub_23D404(v3);
  if (v34)
  {
    sub_23D404(v34);
  }

  if ((v41 | v43 & v30) == 1)
  {
    if (*(v3 + 938))
    {
      v37 = *(v3 + 904);
      if (v37 != (v3 + 912))
      {
        do
        {
          v38 = *(v37 + 7);
          *buf = 0x6F757470766F6C6DLL;
          *&buf[8] = v38;
          LODWORD(v46) = 0;
          LODWORD(v48) = 4;
          (*(*v3 + 72))(v3, buf, 0, 0, &v48, &v46);
          (*(*v3 + 80))(v3, buf, 0, 0, v48, &v46, 0);
          v39 = v37[1];
          if (v39)
          {
            do
            {
              v40 = v39;
              v39 = *v39;
            }

            while (v39);
          }

          else
          {
            do
            {
              v40 = v37[2];
              v14 = *v40 == v37;
              v37 = v40;
            }

            while (!v14);
          }

          v37 = v40;
        }

        while (v40 != (v3 + 912));
      }
    }

    else
    {
      strcpy(buf, "mlovptuo");
      buf[9] = 0;
      *&buf[10] = 0;
      LODWORD(v46) = 0;
      LODWORD(v48) = 4;
      (*(*v3 + 72))(v3, buf, 0, 0, &v48, &v46);
      (*(*v3 + 80))(v3, buf, 0, 0, v48, &v46, 0);
    }
  }

  sub_477A0(v45[0]);
}

uint64_t sub_17DC80()
{
  sub_17DCC4();
  byte_6FF590 = 0;
  result = sub_C2C1C();
  if (!*(result + 8))
  {
    result = sub_17DD1C();
    if ((result & 1) == 0)
    {
      result = sub_C2C1C();
      *result &= ~2uLL;
    }
  }

  return result;
}

void sub_17DCC4()
{
  if ((atomic_load_explicit(&qword_6FF598, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FF598))
  {
    byte_6FF590 = 0;

    __cxa_guard_release(&qword_6FF598);
  }
}

uint64_t sub_17DD1C()
{
  result = objc_opt_class();
  if (result)
  {
    v1 = +[PASettings sharedInstance];
    v2 = [v1 personalMediaEnabled];

    v3 = +[PASettings sharedInstance];
    v4 = ([v3 personalAudioAccommodationTypes] >> 2) & 1;

    return v2 & v4;
  }

  return result;
}

uint64_t sub_17DDA0(uint64_t a1, void *a2, int a3)
{
  v3 = a2 + 1;
  v4 = *a2;
  if (*a2 == a2 + 1)
  {
    return 0;
  }

  while (1)
  {
    v7 = sub_9E618(*(a1 + 128), *(v4 + 7));
    if (v7)
    {
      v8 = *(v7 + 96);
      if (v8)
      {
        v9 = *(v7 + 88);
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v10 = std::__shared_weak_count::lock(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (v10)
        {
          break;
        }
      }
    }

LABEL_8:
    v11 = v4[1];
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
        v12 = v4[2];
        v13 = *v12 == v4;
        v4 = v12;
      }

      while (!v13);
    }

    v4 = v12;
    if (v12 == v3)
    {
      return 0;
    }
  }

  if (!v9 || *(v9 + 144) != a3)
  {
    sub_1A8C0(v10);
    goto LABEL_8;
  }

  sub_1A8C0(v10);
  return 1;
}

void sub_17DE90(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = **(a1 + 16);
  if (v3[2])
  {
    goto LABEL_17;
  }

  v4 = sub_5544(2);
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
      goto LABEL_8;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_8:
  v9 = *v4;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v3 + 24))(&__p, v3);
      v12 = v90 >= 0 ? &__p : __p;
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      v95 = 1024;
      v96 = 4301;
      v97 = 2080;
      v98 = "internal update";
      v99 = 2080;
      v100 = v12;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route configuration change initiated [ %s ]. Cause: %s.", buf, 0x26u);
      if (v90 < 0)
      {
        operator delete(__p);
      }
    }
  }

  if (v3[2])
  {
LABEL_17:
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
        goto LABEL_23;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_23:
    v18 = *v13;
    v19 = v18;
    if (v18)
    {
      v20 = v18;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        (*(*v3 + 24))(&__p, v3);
        v21 = v90 >= 0 ? &__p : __p;
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        v95 = 1024;
        v96 = 4302;
        v97 = 2080;
        v98 = "internal update";
        v99 = 2080;
        v100 = v21;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route configuration change initiated [ %s ]. Cause: %s.", buf, 0x26u);
        if (v90 < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  (*(*v3 + 16))(buf, v3);
  *a2 = *buf;
  sub_20309C(a2 + 8, &buf[8]);
  v22 = v102;
  *(a2 + 80) = 0;
  *(a2 + 64) = v22;
  *(a2 + 896) = 0;
  if (v101 == 1)
  {
    sub_175F78((&v98 + 4));
  }

  if (*a2)
  {
    sub_21991C(&__p, 1920099684);
    *buf = __p;
    sub_20309C(&buf[8], &v89);
    v102 = v93;
    LOBYTE(v103) = 0;
    v182 = 0;
    sub_256828(a2, buf);
    if (*(a2 + 896) == v182)
    {
      if (*(a2 + 896))
      {
        *(a2 + 80) = v103;
        v23 = a2 + 104;
        sub_4B0F4(*(a2 + 104));
        v24 = v105;
        *(a2 + 96) = v104;
        *(a2 + 104) = v24;
        v25 = v106;
        *(a2 + 112) = v106;
        if (v25)
        {
          *(v24 + 16) = v23;
          v104 = &v105;
          v105 = 0;
          v106 = 0;
        }

        else
        {
          *(a2 + 96) = v23;
        }

        v26 = a2 + 128;
        sub_4B0F4(*(a2 + 128));
        v27 = v108;
        *(a2 + 120) = v107;
        *(a2 + 128) = v27;
        v28 = v109;
        *(a2 + 136) = v109;
        if (v28)
        {
          *(v27 + 16) = v26;
          v107 = &v108;
          v108 = 0;
          v109 = 0;
        }

        else
        {
          *(a2 + 120) = v26;
        }

        v29 = a2 + 152;
        sub_4B14C(*(a2 + 152));
        v30 = v111;
        *(a2 + 144) = v110;
        *(a2 + 152) = v30;
        v31 = v112;
        *(a2 + 160) = v112;
        if (v31)
        {
          *(v30 + 16) = v29;
          v110 = &v111;
          v111 = 0;
          v112 = 0;
        }

        else
        {
          *(a2 + 144) = v29;
        }

        v32 = a2 + 176;
        sub_477A0(*(a2 + 176));
        v33 = v114;
        *(a2 + 168) = v113;
        *(a2 + 176) = v33;
        v34 = v115;
        *(a2 + 184) = v115;
        if (v34)
        {
          *(v33 + 16) = v32;
          v113 = &v114;
          v114 = 0;
          v115 = 0;
        }

        else
        {
          *(a2 + 168) = v32;
        }

        v35 = a2 + 200;
        sub_477A0(*(a2 + 200));
        v36 = v117;
        *(a2 + 192) = v116;
        *(a2 + 200) = v36;
        v37 = v118;
        *(a2 + 208) = v118;
        if (v37)
        {
          *(v36 + 16) = v35;
          v116 = &v117;
          v117 = 0;
          v118 = 0;
        }

        else
        {
          *(a2 + 192) = v35;
        }

        v38 = v119;
        v119 = 0uLL;
        v39 = *(a2 + 224);
        *(a2 + 216) = v38;
        if (v39)
        {
          std::__shared_weak_count::__release_weak(v39);
        }

        *(a2 + 232) = v120;
        v40 = v122;
        *(a2 + 240) = v121;
        *(a2 + 248) = v40;
        if (*(a2 + 279) < 0)
        {
          operator delete(*(a2 + 256));
        }

        *(a2 + 256) = v123;
        v41 = v124;
        HIBYTE(v124) = 0;
        LOBYTE(v123) = 0;
        v42 = v125;
        *(a2 + 272) = v41;
        *(a2 + 280) = v42;
        sub_12790(a2 + 288);
        *(a2 + 288) = v126;
        *(a2 + 304) = v127;
        v127 = 0;
        v126 = 0uLL;
        sub_12790(a2 + 312);
        *(a2 + 312) = v128;
        *(a2 + 328) = v129;
        v129 = 0;
        v128 = 0uLL;
        sub_23BD00(a2 + 336, v130);
        sub_23BD00(a2 + 376, v131);
        sub_23BD00(a2 + 416, v132);
        *(a2 + 456) = v132[5];
        *(a2 + 464) = v133;
        sub_23BDD8(a2 + 472, v134);
        *(a2 + 504) = v135;
        v43 = (a2 + 512);
        if (*(a2 + 535) < 0)
        {
          operator delete(*v43);
        }

        *v43 = v136;
        *(a2 + 528) = v137;
        HIBYTE(v137) = 0;
        LOBYTE(v136) = 0;
        *(a2 + 536) = v138;
        *(a2 + 544) = v139;
        v44 = a2 + 560;
        sub_477A0(*(a2 + 560));
        *(a2 + 552) = v140;
        v45 = v141;
        *(a2 + 560) = v141;
        v46 = v142;
        *(a2 + 568) = v142;
        if (v46)
        {
          *(v45 + 16) = v44;
          v140 = &v141;
          v141 = 0;
          v142 = 0;
        }

        else
        {
          *(a2 + 552) = v44;
        }

        v47 = a2 + 584;
        sub_477A0(*(a2 + 584));
        *(a2 + 576) = v143;
        v48 = v144;
        *(a2 + 584) = v144;
        v49 = v145;
        *(a2 + 592) = v145;
        if (v49)
        {
          *(v48 + 16) = v47;
          v143 = &v144;
          v144 = 0;
          v145 = 0;
        }

        else
        {
          *(a2 + 576) = v47;
        }

        v50 = a2 + 608;
        sub_477A0(*(a2 + 608));
        *(a2 + 600) = v146;
        v51 = v147;
        *(a2 + 608) = v147;
        v52 = v148;
        *(a2 + 616) = v148;
        if (v52)
        {
          *(v51 + 16) = v50;
          v146 = &v147;
          v147 = 0;
          v148 = 0;
        }

        else
        {
          *(a2 + 600) = v50;
        }

        v53 = a2 + 632;
        sub_477A0(*(a2 + 632));
        *(a2 + 624) = v149;
        v54 = v150;
        *(a2 + 632) = v150;
        v55 = v151;
        *(a2 + 640) = v151;
        if (v55)
        {
          *(v54 + 16) = v53;
          v149 = &v150;
          v150 = 0;
          v151 = 0;
        }

        else
        {
          *(a2 + 624) = v53;
        }

        v56 = a2 + 656;
        sub_477A0(*(a2 + 656));
        *(a2 + 648) = v152;
        v57 = v153;
        *(a2 + 656) = v153;
        v58 = v154;
        *(a2 + 664) = v154;
        if (v58)
        {
          *(v57 + 16) = v56;
          v152 = &v153;
          v153 = 0;
          v154 = 0;
        }

        else
        {
          *(a2 + 648) = v56;
        }

        v59 = a2 + 680;
        sub_477A0(*(a2 + 680));
        *(a2 + 672) = v155;
        v60 = v156;
        *(a2 + 680) = v156;
        v61 = v157;
        *(a2 + 688) = v157;
        if (v61)
        {
          *(v60 + 16) = v59;
          v155 = &v156;
          v156 = 0;
          v157 = 0;
        }

        else
        {
          *(a2 + 672) = v59;
        }

        v62 = (a2 + 696);
        if (*(a2 + 704) == v159)
        {
          if (*(a2 + 704))
          {
            v63 = *v62;
            *v62 = v158;
            v158 = v63;
          }
        }

        else if (*(a2 + 704))
        {
          sub_BE3CC(v62);
        }

        else
        {
          *(a2 + 696) = v158;
          v158 = 0;
          *(a2 + 704) = 1;
        }

        v64 = *(a2 + 712);
        if (v64)
        {
          *(a2 + 720) = v64;
          operator delete(v64);
        }

        *(a2 + 712) = v160;
        *(a2 + 728) = v161;
        v161 = 0;
        v160 = 0uLL;
        *(a2 + 736) = v162;
        *(a2 + 740) = v163;
        v65 = (a2 + 744);
        if (*(a2 + 752) == v165)
        {
          if (*(a2 + 752))
          {
            v66 = *v65;
            *v65 = v164;
            v164 = v66;
          }
        }

        else if (*(a2 + 752))
        {
          sub_BE3CC(v65);
        }

        else
        {
          *(a2 + 744) = v164;
          v164 = 0;
          *(a2 + 752) = 1;
        }

        *(a2 + 760) = v166;
        *(a2 + 764) = v167;
        v67 = *(a2 + 768);
        *(a2 + 768) = v168;
        v168 = v67;
        *(a2 + 776) = v169;
        *(a2 + 780) = v170;
        v68 = v171;
        v69 = 0uLL;
        v171 = 0u;
        v70 = *(a2 + 792);
        *(a2 + 784) = v68;
        if (v70)
        {
          std::__shared_weak_count::__release_weak(v70);
          v69 = 0uLL;
        }

        v71 = v172;
        v172 = v69;
        v72 = *(a2 + 808);
        *(a2 + 800) = v71;
        if (v72)
        {
          std::__shared_weak_count::__release_weak(v72);
        }

        if (*(a2 + 840) == v175)
        {
          if (*(a2 + 840))
          {
            v73 = *(a2 + 816);
            if (v73)
            {
              *(a2 + 824) = v73;
              operator delete(v73);
            }

            *(a2 + 816) = v173;
            *(a2 + 832) = v174;
            v174 = 0;
            v173 = 0uLL;
          }
        }

        else if (*(a2 + 840))
        {
          v74 = *(a2 + 816);
          if (v74)
          {
            *(a2 + 824) = v74;
            operator delete(v74);
          }

          *(a2 + 840) = 0;
        }

        else
        {
          *(a2 + 816) = v173;
          *(a2 + 832) = v174;
          v174 = 0;
          v173 = 0uLL;
          *(a2 + 840) = 1;
        }

        v75 = a2 + 848;
        if (*(a2 + 872) == v179)
        {
          if (*(a2 + 872))
          {
            sub_76304((a2 + 848));
            v76 = v178;
            if (v178)
            {
              v77 = v177;
              v78 = v176;
              v79 = *(v176 + 8);
              v80 = *v177;
              *(v80 + 8) = v79;
              *v79 = v80;
              v81 = *(a2 + 848);
              *(v81 + 8) = v77;
              *v77 = v81;
              *(a2 + 848) = v78;
              *(v78 + 8) = v75;
              *(a2 + 864) += v76;
              v178 = 0;
            }
          }
        }

        else if (*(a2 + 872))
        {
          sub_76304((a2 + 848));
          *(a2 + 872) = 0;
        }

        else
        {
          *(a2 + 848) = a2 + 848;
          *(a2 + 856) = v75;
          *(a2 + 864) = 0;
          v82 = v178;
          if (v178)
          {
            v83 = v177;
            v84 = v176;
            v85 = *(v176 + 8);
            v86 = *v177;
            *(v86 + 8) = v85;
            *v85 = v86;
            v87 = *(a2 + 848);
            *(v87 + 8) = v83;
            *v83 = v87;
            *(a2 + 848) = v84;
            *(v84 + 8) = v75;
            *(a2 + 864) = v82;
            v178 = 0;
          }

          *(a2 + 872) = 1;
        }

        *(a2 + 880) = v180;
        *(a2 + 888) = v181;
      }
    }

    else if (*(a2 + 896))
    {
      sub_4AE8C(a2 + 80);
      *(a2 + 896) = 0;
    }

    else
    {
      sub_D13F0(a2 + 80, &v103);
      *(a2 + 896) = 1;
    }

    if (v182 == 1)
    {
      sub_4AE8C(&v103);
    }

    if (v101 == 1)
    {
      sub_175F78((&v98 + 4));
    }

    if (v92 == 1)
    {
      sub_175F78(&v91);
    }
  }
}

void sub_17EA08(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_20301C(a2, 1);
  sub_1833B4(*(a1 + 16), a1 + 48);
  sub_1826A8(*(a1 + 16), (a1 + 24), (a1 + 48), (a1 + 72));
  v4 = *(a1 + 56);
  if (v4 != a1 + 48)
  {
    v5 = *(a1 + 16);
    do
    {
      sub_2558E0(v5, (v4 + 16));
      v4 = *(v4 + 8);
    }

    while (v4 != a1 + 48);
  }

  if (*(a1 + 100) == 1)
  {
    v6 = *(a1 + 16);
    v7 = sub_2577DC(*(a1 + 96));
    sub_1151A8(v6, a1 + 24, v7);
  }

  v8 = sub_8703C();
  (*(*v8 + 344))(buf);
  v9 = *buf;
  if (*buf)
  {
    sub_1CA268(&v16, *buf, a1 + 72);
    sub_17ECC4(buf, v9, (a1 + 24), &v16, *(a1 + 96));
    sub_256828(a2, buf);
    if (v21 == 1)
    {
      sub_175F78(v20);
    }

    sub_4B0F4(v16.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = sub_5544(9);
    v11 = sub_5544(16);
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
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      v18 = 1024;
      v19 = 209;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Routing manager does not exist -- cannot execute Notify Command", buf, 0x12u);
    }
  }

  if (*(a1 + 88))
  {
    sub_1833B4(*(a1 + 16), a1 + 72);
  }
}

void sub_17EC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (*(v20 + 56) == 1)
  {
    sub_175F78((v20 + 24));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_17ECC4(void *a1, uint64_t a2, void *a3, std::string *a4, uint64_t a5)
{
  sub_27A4();
  v281 = (*(qword_6E94F8 + 16))();
  sub_27A4();
  v10 = atomic_load(&qword_6E9558);
  if (v10 != pthread_self())
  {
    v234 = sub_5544(14);
    v235 = *v234;
    if (*v234 && os_log_type_enabled(*v234, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3939;
      _os_log_impl(&dword_0, v235, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unable to acquire routing mutex.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v237 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(exception, "Unable to acquire routing mutex.");
LABEL_572:
    __cxa_throw(exception, v238, v237);
  }

  if (!a3[2])
  {
    v239 = sub_5544(14);
    v240 = *v239;
    if (*v239 && os_log_type_enabled(*v239, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3941;
      _os_log_impl(&dword_0, v240, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v237 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(exception, "Precondition failure.");
    goto LABEL_572;
  }

  v11 = sub_5544(8);
  v12 = sub_5544(35);
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
      goto LABEL_9;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_9:
  v16 = *v11;
  if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    sub_11DCE8(__p, a3);
    v17 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3944;
    *&buf[18] = 2080;
    *&buf[20] = v17;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Port update with port map %s.", buf, 0x1Cu);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  *buf = buf;
  *&buf[8] = buf;
  *&buf[16] = 0;
  v18 = a3[1];
  v258 = a3 + 1;
  if (v18)
  {
    v19 = a3 + 1;
    v20 = a3[1];
    do
    {
      v21 = *(v20 + 32);
      v22 = v21 >= 0x66637275;
      v23 = v21 < 0x66637275;
      if (v22)
      {
        v19 = v20;
      }

      v20 = *(v20 + 8 * v23);
    }

    while (v20);
    if (v19 != v258 && *(v19 + 8) < 0x66637276u)
    {
      sub_1C27C8(buf, buf, v19[6], (v19 + 5));
      v18 = *v258;
    }

    if (v18)
    {
      v24 = a3 + 1;
      do
      {
        v25 = *(v18 + 32);
        v22 = v25 >= 0x6E637275;
        v26 = v25 < 0x6E637275;
        if (v22)
        {
          v24 = v18;
        }

        v18 = *(v18 + 8 * v26);
      }

      while (v18);
      if (v24 != v258 && *(v24 + 8) < 0x6E637276u)
      {
        sub_1C27C8(buf, buf, v24[6], (v24 + 5));
      }
    }
  }

  v255 = (a2 + 240);
  sub_183AB4((a2 + 240), buf);
  sub_65310(buf);
  if (*(a2 + 312) || *(a2 + 352) || *(a2 + 392))
  {
    v27 = sub_5544(2);
    v28 = sub_5544(35);
    v29 = 0;
    *buf = 0x100000002;
    v30 = *(v27 + 8);
    while (1)
    {
      v31 = *&buf[v29];
      if (((v30 & v31) != 0) != ((*(v28 + 8) & v31) != 0))
      {
        break;
      }

      v29 += 4;
      if (v29 == 8)
      {
        goto LABEL_43;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_43:
    v32 = *v27;
    if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sub_2AB344(__p, v255);
      v33 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 3947;
      *&buf[18] = 2080;
      *&buf[20] = v33;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d - Persistent route info: %s.", buf, 0x1Cu);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }
    }
  }

  v257 = a4;
  v250 = a3;
  v251 = a2;
  v261 = a1;
  v278 = &v278;
  v279 = &v278;
  v280 = 0;
  v275 = &v275;
  v276 = &v275;
  v277 = 0;
  v34 = a3 + 1;
  v35 = *v258;
  if (!*v258)
  {
    v38 = 0;
    goto LABEL_172;
  }

  do
  {
    v36 = *(v35 + 32);
    v22 = v36 >= 0x66637275;
    v37 = v36 < 0x66637275;
    if (v22)
    {
      v34 = v35;
    }

    v35 = *(v35 + 8 * v37);
  }

  while (v35);
  if (v34 == v258)
  {
    v38 = 0;
    v34 = a3 + 1;
    goto LABEL_172;
  }

  if (*(v34 + 8) > 0x66637275u)
  {
    v38 = 0;
    v34 = a3 + 1;
    goto LABEL_172;
  }

  sub_11DEAC(buf, a2, v34 + 5);
  sub_11DB30(&v275, buf);
  sub_65310(buf);
  if (v277)
  {
    v39 = v276;
    if (v276 != &v275)
    {
      while (1)
      {
        v40 = v39[3];
        __p[0].__r_.__value_.__r.__words[0] = v39[2];
        __p[0].__r_.__value_.__l.__size_ = v40;
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_25704(buf, __p, "", 4414);
        v41 = *buf;
        if (*buf)
        {
          if ((*(**buf + 152))(*buf))
          {
            v5 = *(v41 + 304) == 1781740087;
          }

          else
          {
            v5 = 0;
          }
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        v42 = v41 != 0;
        if (v40)
        {
          std::__shared_weak_count::__release_weak(v40);
        }

        if (v42 && v5)
        {
          break;
        }

        v39 = v39[1];
        if (v39 == &v275)
        {
          goto LABEL_102;
        }
      }

      v43 = v276;
      if (v276 == &v275)
      {
LABEL_89:
        memset(buf, 0, 24);
        v46 = *(a2 + 528);
        v47 = *(a2 + 536);
        if (v46 != v47)
        {
          do
          {
            sub_25704(__p, v46, "", 1374);
            v48 = __p[0].__r_.__value_.__r.__words[0];
            v49 = (*(*__p[0].__r_.__value_.__l.__data_ + 152))(__p[0].__r_.__value_.__r.__words[0]) && (*(*v48 + 160))(v48) && (*(*v48 + 368))(v48) == 1;
            if (__p[0].__r_.__value_.__l.__size_)
            {
              sub_1A8C0(__p[0].__r_.__value_.__l.__size_);
            }

            if (v49)
            {
              sub_B0148(buf, v46);
            }

            v46 += 2;
          }

          while (v46 != v47);
          if (*buf != *&buf[8])
          {
            __p[0].__r_.__value_.__r.__words[0] = __p;
            __p[0].__r_.__value_.__l.__size_ = __p;
            __p[0].__r_.__value_.__r.__words[2] = 0;
            *v288 = v288;
            *&v288[8] = v288;
            *&v288[16] = 0;
            sub_849B8();
          }
        }

        __p[0].__r_.__value_.__r.__words[0] = buf;
        sub_86D0C(__p);
      }

      else
      {
        while (1)
        {
          v44 = v43[3];
          __p[0].__r_.__value_.__r.__words[0] = v43[2];
          __p[0].__r_.__value_.__l.__size_ = v44;
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          sub_25704(buf, __p, "", 4420);
          v45 = *buf;
          if (*buf)
          {
            LOBYTE(v45) = (*(**buf + 152))(*buf) && (*(*v45 + 160))(v45) && (*(*v45 + 368))(v45) == 1;
          }

          if (*&buf[8])
          {
            sub_1A8C0(*&buf[8]);
          }

          if (v44)
          {
            std::__shared_weak_count::__release_weak(v44);
          }

          if (v45)
          {
            break;
          }

          v43 = v43[1];
          if (v43 == &v275)
          {
            goto LABEL_89;
          }
        }
      }
    }
  }

LABEL_102:
  v38 = v277;
  if (*(a2 + 408) != 1)
  {
    goto LABEL_172;
  }

  sub_26D058(v288, v276, &v275);
  sub_B0484(buf, &v275);
  for (i = *&buf[8]; i != buf; i = *(i + 8))
  {
    sub_11319C(__p, *(i + 16));
    sub_135EA8(v288, v288, __p[0].__r_.__value_.__l.__size_, __p);
    sub_65310(__p);
  }

  sub_87980(buf);
  sub_26B028(v289, v288);
  if (v289[0].__r_.__value_.__r.__words[2])
  {
    v51 = sub_5544(8);
    v52 = *v51;
    if (*v51)
    {
      if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEFAULT))
      {
        sub_265354(__p, v289[0].__r_.__value_.__l.__data_, &v289[0].__r_.__value_.__l.__size_);
        v53 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3973;
        *&buf[18] = 2080;
        *&buf[20] = v53;
        _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowing ports %s ", buf, 0x1Cu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }
    }
  }

  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  v54 = v289[0].__r_.__value_.__r.__words[0];
  if (v289[0].__r_.__value_.__l.__data_ == &v289[0].__r_.__value_.__r.__words[1])
  {
    v67 = 0;
    *&__p[0].__r_.__value_.__r.__words[1] = 0uLL;
LABEL_147:
    a2 = v251;
    __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__l.__size_;
    goto LABEL_148;
  }

  do
  {
    v55 = v54[1].__words[2];
    if (v55)
    {
      v56 = std::__shared_weak_count::lock(v55);
      if (v56)
      {
        v57 = v54[1].__words[1];
        if (v57)
        {
          v58 = *&buf[8];
          v59 = &buf[8];
          if (*buf == &buf[8])
          {
            goto LABEL_123;
          }

          v60 = *&buf[8];
          v61 = &buf[8];
          if (*&buf[8])
          {
            do
            {
              v59 = v60;
              v60 = v60[1];
            }

            while (v60);
          }

          else
          {
            do
            {
              v59 = *(v61 + 2);
              v133 = *v59 == v61;
              v61 = v59;
            }

            while (v133);
          }

          if (v59[4] < v57)
          {
LABEL_123:
            if (*&buf[8])
            {
              v62 = v59 + 1;
            }

            else
            {
              v62 = &buf[8];
            }
          }

          else
          {
            v62 = &buf[8];
            if (*&buf[8])
            {
              v62 = &buf[8];
              while (1)
              {
                while (1)
                {
                  v65 = v58;
                  v66 = v58[4];
                  if (v57 >= v66)
                  {
                    break;
                  }

                  v58 = *v65;
                  v62 = v65;
                  if (!*v65)
                  {
                    goto LABEL_127;
                  }
                }

                if (v66 >= v57)
                {
                  break;
                }

                v62 = v65 + 1;
                v58 = v65[1];
                if (!v58)
                {
                  goto LABEL_127;
                }
              }
            }
          }

          if (!*v62)
          {
LABEL_127:
            operator new();
          }
        }

        sub_1A8C0(v56);
      }
    }

    v63 = v54->__words[1];
    if (v63)
    {
      do
      {
        v64 = v63;
        v63 = v63->__r_.__value_.__r.__words[0];
      }

      while (v63);
    }

    else
    {
      do
      {
        v64 = v54->__words[2];
        v133 = v64->__r_.__value_.__r.__words[0] == v54;
        v54 = v64;
      }

      while (!v133);
    }

    v54 = v64;
  }

  while (v64 != &v289[0].__r_.__value_.__r.__words[1]);
  v67 = *&buf[8];
  __p[0] = *buf;
  if (!*&buf[16])
  {
    goto LABEL_147;
  }

  *(*&buf[8] + 16) = &__p[0].__r_.__value_.__l.__size_;
  *buf = &buf[8];
  *&buf[8] = 0;
  *&buf[16] = 0;
  v67 = 0;
  a2 = v251;
LABEL_148:
  sub_1199A8(v67);
  v68 = __p[0].__r_.__value_.__r.__words[0];
  if (__p[0].__r_.__value_.__l.__data_ != &__p[0].__r_.__value_.__r.__words[1])
  {
    do
    {
      v69 = v68[1].__words[1];
      if (*(v69 + 303) < 0)
      {
        sub_54A0(buf, *(v69 + 280), *(v69 + 288));
      }

      else
      {
        v70 = v69 + 280;
        *buf = *v70;
        *&buf[16] = *(v70 + 16);
      }

      sub_261F68(a2 + 72, buf);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v71 = v68->__words[1];
      if (v71)
      {
        do
        {
          v72 = v71;
          v71 = v71->__r_.__value_.__r.__words[0];
        }

        while (v71);
      }

      else
      {
        do
        {
          v72 = v68->__words[2];
          v133 = v72->__r_.__value_.__r.__words[0] == v68;
          v68 = v72;
        }

        while (!v133);
      }

      v68 = v72;
    }

    while (v72 != &__p[0].__r_.__value_.__r.__words[1]);
  }

  sub_1199A8(__p[0].__r_.__value_.__l.__size_);
  v269[0] = 0;
  v269[1] = 0;
  v268 = v269;
  for (j = v276; j != &v275; j = j[1])
  {
    if (&v289[0].__r_.__value_.__r.__words[1] == sub_87414(v289[0].__r_.__value_.__l.__data_, &v289[0].__r_.__value_.__l.__size_, j + 2))
    {
      *&buf[8] = 0;
      *buf = 0;
      v74 = j[3];
      if (v74)
      {
        v75 = std::__shared_weak_count::lock(v74);
        if (v75)
        {
          v76 = j[2];
          atomic_fetch_add_explicit(&v75->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *buf = v76;
          *&buf[8] = v75;
          sub_1A8C0(v75);
        }

        else
        {
          *&buf[8] = 0;
          *buf = 0;
        }
      }

      sub_CB814(&v268, buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_weak(*&buf[8]);
      }
    }
  }

  sub_15B860(&__dst, &v268);
  v77 = *(a2 + 72);
  *&__p[0].__r_.__value_.__r.__words[1] = 0uLL;
  __p[0].__r_.__value_.__r.__words[0] = &__p[0].__r_.__value_.__l.__size_;
  v267.__r_.__value_.__r.__words[0] = v77;
  v286 = (a2 + 80);
  v283 = __dst.n128_u64[0];
  v282 = &__dst.n128_u64[1];
  v270.n128_u64[0] = __p;
  v270.n128_u64[1] = &__p[0].__r_.__value_.__l.__size_;
  sub_26D5B8(buf, &v267, &v286, &v283, &v282, &v270);
  if (__p != (a2 + 72))
  {
    sub_26D7C0((a2 + 72), __p[0].__r_.__value_.__l.__data_, &__p[0].__r_.__value_.__l.__size_);
  }

  sub_98A08(__p[0].__r_.__value_.__l.__size_);
  sub_98A08(__dst.n128_u64[1]);
  sub_4B0F4(v269[0]);
  sub_4B0F4(v289[0].__r_.__value_.__l.__size_);
  sub_65310(v288);
LABEL_172:
  sub_78C68(buf, (a2 + 72));
  v78 = (a2 + 200);
  sub_26D168(__p, (a2 + 32), (a2 + 152), a2 + 48, buf, a2 + 120, a2 + 200, *(a2 + 144), *(a2 + 408), *(a2 + 410));
  sub_4B0F4(*&buf[8]);
  v80 = *(a2 + 176);
  v79 = *(a2 + 184);
  if (v79)
  {
    atomic_fetch_add_explicit(&v79->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v81 = v274;
  v273 = v80;
  v274 = v79;
  if (v81)
  {
    std::__shared_weak_count::__release_weak(v81);
  }

  if (&__p[0].__r_.__value_.__r.__words[2] != v257)
  {
    sub_260414(&__p[0].__r_.__value_.__r.__words[2], v257->__r_.__value_.__l.__data_, &v257->__r_.__value_.__l.__size_);
  }

  sub_268524(&v270, a2, __p, a3);
  v82 = sub_5544(8);
  v83 = *v82;
  if (*v82 && os_log_type_enabled(*v82, OS_LOG_TYPE_DEFAULT))
  {
    sub_2676A8(v288, &v270);
    v84 = v288[23] >= 0 ? v288 : *v288;
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 3995;
    *&buf[18] = 2080;
    *&buf[20] = v84;
    _os_log_impl(&dword_0, v83, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handle port update - user preferred input: %s", buf, 0x1Cu);
    if ((v288[23] & 0x80000000) != 0)
    {
      operator delete(*v288);
    }
  }

  sub_20301C(v261, 1);
  sub_7B03C(&v268, (a2 + 72));
  for (k = v276; k != &v275; k = k[1])
  {
    v86 = k[3];
    if (v86)
    {
      v87 = std::__shared_weak_count::lock(v86);
      if (v87)
      {
        v88 = v87;
        v89 = k[2];
        if (v89)
        {
          v90 = sub_108CA8(*(v89 + 144));
          sub_1A8C0(v88);
          if (!v90)
          {
            if (v38)
            {
              v91 = sub_5544(8);
              if (*(v91 + 8))
              {
                v92 = *v91;
                if (*v91)
                {
                  if (os_log_type_enabled(*v91, OS_LOG_TYPE_DEBUG))
                  {
                    sub_22170(v288, *v78);
                    v93 = v288[23] >= 0 ? v288 : *v288;
                    *buf = 136315650;
                    *&buf[4] = "RoutingManager.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 4014;
                    *&buf[18] = 2080;
                    *&buf[20] = v93;
                    _os_log_impl(&dword_0, v92, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using RouteInitiationInfo %s.", buf, 0x1Cu);
                    if ((v288[23] & 0x80000000) != 0)
                    {
                      operator delete(*v288);
                    }
                  }
                }
              }

              v94 = sub_5544(8);
              v95 = *v94;
              if (*v94 && os_log_type_enabled(*v94, OS_LOG_TYPE_DEFAULT))
              {
                sub_2676A8(v288, &v270);
                v96 = v288[23] >= 0 ? v288 : *v288;
                *buf = 136315650;
                *&buf[4] = "RoutingManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 4016;
                *&buf[18] = 2080;
                *&buf[20] = v96;
                _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "%25s:%-5d handle port update new ports pushed to cache - user preferred input: %s", buf, 0x1Cu);
                if ((v288[23] & 0x80000000) != 0)
                {
                  operator delete(*v288);
                }
              }

              *&v289[0].__r_.__value_.__l.__data_ = v270;
              if (v270.n128_u64[1])
              {
                atomic_fetch_add_explicit((v270.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
              }

              LOWORD(v289[0].__r_.__value_.__r.__words[2]) = v271;
              v97 = *(a2 + 144);
              *&v288[16] = 0;
              *&v288[8] = 0;
              *v288 = &v288[8];
              LODWORD(v244) = 1919842148;
              sub_C25C0(buf, a2, (a2 + 32), a2 + 48, &v268, a2 + 120, v97, v288, a2 + 200, v255, *(a2 + 408), (a2 + 416), v244, a2 + 440, (a2 + 472), *(a2 + 410), v289);
            }

            break;
          }
        }

        else
        {
          sub_1A8C0(v87);
        }
      }
    }
  }

  v98 = a3 + 1;
  v99 = *v258;
  if (!*v258)
  {
    goto LABEL_221;
  }

  v100 = a3 + 1;
  do
  {
    v101 = *(v99 + 32);
    v22 = v101 >= 0x6E637275;
    v102 = v101 < 0x6E637275;
    if (v22)
    {
      v100 = v99;
    }

    v99 = *(v99 + 8 * v102);
  }

  while (v99);
  v98 = a3 + 1;
  if (v100 == v258 || *(v100 + 8) > 0x6E637275u)
  {
LABEL_221:
    v100 = v98;
  }

  if (!*v261)
  {
    goto LABEL_480;
  }

  v249 = (a2 + 200);
  if (v100 != v258)
  {
    v103 = sub_5544(8);
    v104 = *v103;
    if (*v103 && os_log_type_enabled(*v103, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4035;
      _os_log_impl(&dword_0, v104, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to find a valid replacement route.", buf, 0x12u);
    }

    v263 = 1919904885;
    v105 = v100[6];
    if (v105 != v100 + 5)
    {
      while (1)
      {
        v106 = v105[3];
        if (!v106)
        {
          break;
        }

        v107 = std::__shared_weak_count::lock(v106);
        if (!v107)
        {
          goto LABEL_237;
        }

        v108 = v105[2];
        if (!v108)
        {
          goto LABEL_237;
        }

        if (((*(*v108 + 152))(v105[2]) & 1) == 0)
        {
          atomic_fetch_add_explicit(&v107->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          operator new();
        }

        if ((*(*v108 + 160))(v108))
        {
          v109 = v263;
          if (v108[36] != 1885565807)
          {
            v109 = 1919842148;
          }

          v263 = v109;
        }

LABEL_243:
        sub_1A8C0(v107);
LABEL_244:
        v105 = v105[1];
        if (v105 == v100 + 5)
        {
          goto LABEL_245;
        }
      }

      v107 = 0;
LABEL_237:
      v110 = sub_5544(8);
      v111 = *v110;
      if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4045;
        _os_log_impl(&dword_0, v111, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Non-cacheable port has expired, ignoring.", buf, 0x12u);
      }

      if (!v107)
      {
        goto LABEL_244;
      }

      goto LABEL_243;
    }

LABEL_245:
    v112 = v270.n128_u64[1];
    if (v270.n128_u64[1])
    {
      v113 = v270.n128_u64[0];
      if (*(v270.n128_u64[1] + 8) != -1)
      {
        v266 = (v270.n128_u64[1] + 16);
        atomic_fetch_add_explicit((v270.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
        for (m = v279; ; m = m[1])
        {
          if (m == &v278)
          {
            goto LABEL_278;
          }

          v115 = m[3];
          if (v115)
          {
            v116 = std::__shared_weak_count::lock(v115);
            v117 = v116;
            if (v116)
            {
              v118 = m[2];
              atomic_fetch_add_explicit(&v116->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              sub_1A8C0(v116);
            }

            else
            {
              v118 = 0;
            }
          }

          else
          {
            v118 = 0;
            v117 = 0;
          }

          v119 = std::__shared_weak_count::lock(v112);
          v120 = v119;
          if (v119)
          {
            atomic_fetch_add_explicit(&v119->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v119);
            v121 = v113;
            if (!v117)
            {
              goto LABEL_261;
            }
          }

          else
          {
            v121 = 0;
            if (!v117)
            {
LABEL_261:
              v118 = 0;
              v122 = 0;
              if (!v120)
              {
                goto LABEL_265;
              }

              goto LABEL_262;
            }
          }

          v122 = std::__shared_weak_count::lock(v117);
          if (!v122)
          {
            v118 = 0;
          }

          if (!v120)
          {
LABEL_265:
            v124 = v118 == 0;
            if (!v122)
            {
              goto LABEL_267;
            }

LABEL_266:
            sub_1A8C0(v122);
            goto LABEL_267;
          }

LABEL_262:
          v123 = std::__shared_weak_count::lock(v120);
          if (!v123)
          {
            goto LABEL_265;
          }

          v124 = v118 == v121;
          sub_1A8C0(v123);
          if (v122)
          {
            goto LABEL_266;
          }

LABEL_267:
          if (v120)
          {
            std::__shared_weak_count::__release_weak(v120);
          }

          if (v117)
          {
            std::__shared_weak_count::__release_weak(v117);
          }

          if (v124)
          {
            if (&v278 == m)
            {
LABEL_278:
              v289[0].__r_.__value_.__r.__words[0] = v113;
              v289[0].__r_.__value_.__l.__size_ = v112;
              atomic_fetch_add_explicit(v266, 1uLL, memory_order_relaxed);
              LOWORD(v289[0].__r_.__value_.__r.__words[2]) = v271;
            }

            else
            {
              memset(v289, 0, 24);
            }

            v126 = v249;
            std::__shared_weak_count::__release_weak(v112);
            v125 = v251;
LABEL_280:
            v127 = sub_5544(8);
            v128 = *v127;
            if (*v127 && os_log_type_enabled(*v127, OS_LOG_TYPE_DEFAULT))
            {
              sub_2676A8(v288, v289);
              v129 = v288[23] >= 0 ? v288 : *v288;
              *buf = 136315650;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4087;
              *&buf[18] = 2080;
              *&buf[20] = v129;
              _os_log_impl(&dword_0, v128, OS_LOG_TYPE_DEFAULT, "%25s:%-5d routing manager port update: user preferred port is (%s)", buf, 0x1Cu);
              if ((v288[23] & 0x80000000) != 0)
              {
                operator delete(*v288);
              }
            }

            LODWORD(v244) = v263;
            sub_C25C0(buf, v125, (v125 + 32), v125 + 48, &v268, v125 + 120, *(v125 + 144), v257, v126, v255, *(v125 + 408), (v125 + 416), v244, v125 + 440, (v125 + 472), *(v125 + 410), v289);
          }
        }
      }

      *&v289[0].__r_.__value_.__l.__data_ = v270;
      atomic_fetch_add_explicit((v270.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
    }

    else
    {
      *&v289[0].__r_.__value_.__l.__data_ = v270.n128_u64[0];
    }

    LOWORD(v289[0].__r_.__value_.__r.__words[2]) = v271;
    v125 = v251;
    v126 = v249;
    goto LABEL_280;
  }

  if (!v280)
  {
    goto LABEL_480;
  }

  v130 = v279;
  if (&v278 == v279)
  {
    goto LABEL_480;
  }

  v262 = (a2 + 480);
  v256 = (a2 + 416);
  v253 = (a2 + 472);
  v254 = a2 + 440;
  v264 = (a2 + 512);
  do
  {
    v131 = v130[3];
    v260 = v130[2];
    if (v131)
    {
      atomic_fetch_add_explicit(&v131->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v132 = *(a2 + 32);
    if (v132 > 1668443750)
    {
      v133 = v132 == 1668443760;
      v134 = 1668443751;
    }

    else
    {
      v133 = v132 == 1667591521;
      v134 = 1667591533;
    }

    if (v133 || v132 == v134)
    {
      *&v288[8] = 0;
      *v288 = 0;
      if (v131)
      {
        v136 = std::__shared_weak_count::lock(v131);
        v137 = v136;
        if (v136)
        {
          atomic_fetch_add_explicit(&v136->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *v288 = v260;
          *&v288[8] = v136;
          sub_1A8C0(v136);
        }

        else
        {
          *&v288[8] = 0;
          *v288 = 0;
        }
      }

      else
      {
        v137 = 0;
      }

      sub_88A00(buf, v288, "", 1213);
      v138 = *buf;
      if ((*(**buf + 152))(*buf) && (*(*v138 + 376))(v138) && (*(*v138 + 368))(v138) == 2)
      {
        LODWORD(v289[0].__r_.__value_.__l.__data_) = 1886613611;
        sub_75788(a2 + 48, 0x7073706Bu);
      }

      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v137)
      {
        std::__shared_weak_count::__release_weak(v137);
      }
    }

    if (!*(a2 + 496))
    {
      goto LABEL_395;
    }

    for (n = *(a2 + 488); ; n = n[1])
    {
      if (n == v262)
      {
LABEL_331:
        v146 = sub_5544(8);
        v147 = *v146;
        if (!*v146 || !os_log_type_enabled(*v146, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_395;
        }

        memset(&v267, 0, sizeof(v267));
        v252 = v131;
        std::string::append(&v267, "[ ", 2uLL);
        sub_238988(buf, v262);
        if (buf[23] >= 0)
        {
          v148 = buf;
        }

        else
        {
          v148 = *buf;
        }

        if (buf[23] >= 0)
        {
          v149 = buf[23];
        }

        else
        {
          v149 = *&buf[8];
        }

        std::string::append(&v267, v148, v149);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        std::string::append(&v267, "; ", 2uLL);
        *(&v289[0].__r_.__value_.__s + 23) = 2;
        strcpy(v289, "{ ");
        sub_1C28C4(buf, v289);
        if (SHIBYTE(v289[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v289[0].__r_.__value_.__l.__data_);
        }

        v150 = *(a2 + 504);
        if (v150 != v264)
        {
          do
          {
            v151 = v150[1];
            v152 = v150;
            if (v151)
            {
              do
              {
                v153 = v151;
                v151 = *v151;
              }

              while (v151);
            }

            else
            {
              do
              {
                v153 = v152[2];
                v133 = *v153 == v152;
                v152 = v153;
              }

              while (!v133);
            }

            sub_22564(&buf[16], "[ ", 2);
            sub_25704(&v286, v150 + 4, "", 31);
            v154 = std::ostream::operator<<();
            sub_22564(v154, ": ", 2);
            sub_379AB0(v289, v150 + 6);
            if ((v289[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v155 = v289;
            }

            else
            {
              v155 = v289[0].__r_.__value_.__r.__words[0];
            }

            if ((v289[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v289[0].__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v289[0].__r_.__value_.__l.__size_;
            }

            sub_22564(v154, v155, size);
            if (v153 == v264)
            {
              v157 = " ]";
            }

            else
            {
              v157 = " ],";
            }

            if (v153 == v264)
            {
              v158 = 2;
            }

            else
            {
              v158 = 3;
            }

            sub_22564(v154, v157, v158);
            if (SHIBYTE(v289[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v289[0].__r_.__value_.__l.__data_);
            }

            if (v287)
            {
              sub_1A8C0(v287);
            }

            v150 = v153;
          }

          while (v153 != v264);
        }

        sub_22564(&buf[16], " }", 2);
        if ((v298 & 0x10) != 0)
        {
          v160 = v297;
          if (v297 < v294)
          {
            v297 = v294;
            v160 = v294;
          }

          v161 = __src;
        }

        else
        {
          if ((v298 & 8) == 0)
          {
            v159 = 0;
            HIBYTE(v285) = 0;
LABEL_381:
            v78 = (a2 + 200);
            __dst.n128_u8[v159] = 0;
            *buf = v247;
            *&buf[*(v247 - 24)] = v246;
            *&buf[16] = v245;
            if (v296 < 0)
            {
              operator delete(v295);
            }

            std::locale::~locale(&buf[32]);
            std::iostream::~basic_iostream();
            std::ios::~ios();
            if (v285 >= 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.n128_u64[0];
            }

            if (v285 >= 0)
            {
              v163 = HIBYTE(v285);
            }

            else
            {
              v163 = __dst.n128_u64[1];
            }

            v131 = v252;
            std::string::append(&v267, p_dst, v163);
            if (SHIBYTE(v285) < 0)
            {
              operator delete(__dst.n128_u64[0]);
            }

            v164 = &v267;
            if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v164 = v267.__r_.__value_.__r.__words[0];
            }

            *v288 = 136315650;
            *&v288[4] = "RoutingManager.cpp";
            *&v288[12] = 1024;
            *&v288[14] = 4122;
            *&v288[18] = 2080;
            *&v288[20] = v164;
            _os_log_impl(&dword_0, v147, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port update has invalidated the route cache: %s.", v288, 0x1Cu);
            if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v267.__r_.__value_.__l.__data_);
            }

            goto LABEL_395;
          }

          v161 = v291;
          v160 = v292;
        }

        v159 = v160 - v161;
        if (v160 - v161 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_755AC();
        }

        if (v159 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v285) = v160 - v161;
        if (v159)
        {
          memmove(&__dst, v161, v159);
        }

        goto LABEL_381;
      }

      v140 = n[4];
LABEL_318:
      if (v140 != n + 3)
      {
        break;
      }
    }

    if (!v140[5])
    {
      v140 = v140[1];
      goto LABEL_318;
    }

    if (v131)
    {
      v141 = std::__shared_weak_count::lock(v131);
      v142 = v141;
      if (v141)
      {
        atomic_fetch_add_explicit(&v141->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_1A8C0(v141);
        v143 = v260;
      }

      else
      {
        v143 = 0;
      }
    }

    else
    {
      v143 = 0;
      v142 = 0;
    }

    v144 = sub_238AD8(v262, v143, v142);
    v145 = HIBYTE(v271);
    if (v142)
    {
      std::__shared_weak_count::__release_weak(v142);
    }

    if ((v144 | v145))
    {
      if (*(a2 + 496))
      {
        goto LABEL_331;
      }

LABEL_395:
      for (ii = *(a2 + 488); ii != v262; ii = ii[1])
      {
        for (jj = ii[4]; jj != ii + 3; jj = jj[1])
        {
          if (jj[5])
          {
            goto LABEL_405;
          }
        }
      }

      v167 = sub_5544(8);
      v168 = *v167;
      if (*v167 && os_log_type_enabled(*v167, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4124;
        _os_log_impl(&dword_0, v168, OS_LOG_TYPE_DEBUG, "%25s:%-5d There are no cached concrete routes.", buf, 0x12u);
      }

LABEL_405:
      v169 = sub_5544(8);
      v170 = *v169;
      if (*v169 && os_log_type_enabled(*v169, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4125;
        _os_log_impl(&dword_0, v170, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to find a valid replacement route.", buf, 0x12u);
      }

      *&v288[8] = 0;
      *v288 = 0;
      if (v131)
      {
        v171 = std::__shared_weak_count::lock(v131);
        v172 = v171;
        if (v171)
        {
          atomic_fetch_add_explicit(&v171->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          *v288 = v260;
          *&v288[8] = v171;
          sub_1A8C0(v171);
        }

        else
        {
          *&v288[8] = 0;
          *v288 = 0;
        }
      }

      else
      {
        v172 = 0;
      }

      if (_os_feature_enabled_impl())
      {
        if ((a5 & 0x100000000) == 0)
        {
          v173 = sub_5544(8);
          v174 = *v173;
          if (*v173)
          {
            if (os_log_type_enabled(*v173, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 1128;
              _os_log_impl(&dword_0, v174, OS_LOG_TYPE_ERROR, "%25s:%-5d Route change reason is expected but was not specified", buf, 0x12u);
            }
          }
        }
      }

      v175 = a5;
      if ((_os_feature_enabled_impl() & BYTE4(a5) & 1) == 0)
      {
        sub_88A00(buf, v288, "", 1134);
        v176 = *buf;
        if (!*buf)
        {
          goto LABEL_423;
        }

        v177 = (*(**buf + 152))(*buf);
        v178 = *v176;
        if (v177)
        {
          if ((*(v178 + 376))(v176))
          {
            v179 = (*(*v176 + 368))(v176);
            v175 = 1919904885;
            if (v179 != 2)
            {
LABEL_423:
              v175 = 1919971701;
            }
          }

          else
          {
            v175 = 1919184754;
          }
        }

        else if ((*(v178 + 288))(v176))
        {
          v175 = 1920168053;
        }

        else
        {
          v175 = 1919904885;
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }
      }

      if (v172)
      {
        std::__shared_weak_count::__release_weak(v172);
      }

      v180 = sub_5544(8);
      v181 = *v180;
      if (*v180 && os_log_type_enabled(*v180, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v288, v175);
        v182 = v288[23] >= 0 ? v288 : *v288;
        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4128;
        *&buf[18] = 2080;
        *&buf[20] = v182;
        _os_log_impl(&dword_0, v181, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change reason: %s", buf, 0x1Cu);
        if ((v288[23] & 0x80000000) != 0)
        {
          operator delete(*v288);
        }
      }

      v183 = v270.n128_u64[1];
      if (v270.n128_u64[1])
      {
        if (*(v270.n128_u64[1] + 8) != -1)
        {
          if (!sub_26A520(&v270))
          {
            goto LABEL_467;
          }

          v184 = v270.n128_u64[0];
          atomic_fetch_add_explicit(&v183->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v185 = std::__shared_weak_count::lock(v183);
          v186 = v185;
          v248 = v184;
          if (v185)
          {
            atomic_fetch_add_explicit(&v185->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_weak(v183);
            sub_1A8C0(v186);
          }

          else
          {
            std::__shared_weak_count::__release_weak(v183);
            v184 = 0;
          }

          if (v131 && (v187 = std::__shared_weak_count::lock(v131), (v131 = v187) != 0))
          {
            atomic_fetch_add_explicit(&v187->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v187);
            if (!v186)
            {
              goto LABEL_451;
            }

LABEL_454:
            v188 = std::__shared_weak_count::lock(v186);
            if (!v188)
            {
              v184 = 0;
            }

            if (v131)
            {
              goto LABEL_457;
            }

LABEL_460:
            v190 = v184 == 0;
            if (v188)
            {
              goto LABEL_461;
            }
          }

          else
          {
            v260 = 0;
            if (v186)
            {
              goto LABEL_454;
            }

LABEL_451:
            v184 = 0;
            v188 = 0;
            if (!v131)
            {
              goto LABEL_460;
            }

LABEL_457:
            v189 = std::__shared_weak_count::lock(v131);
            if (!v189)
            {
              goto LABEL_460;
            }

            v190 = v184 == v260;
            sub_1A8C0(v189);
            if (v188)
            {
LABEL_461:
              sub_1A8C0(v188);
            }
          }

          if (v131)
          {
            std::__shared_weak_count::__release_weak(v131);
          }

          v78 = v249;
          if (v186)
          {
            std::__shared_weak_count::__release_weak(v186);
          }

          if (!v190)
          {
            __dst.n128_u64[0] = v248;
            __dst.n128_u64[1] = v183;
            atomic_fetch_add_explicit(&v183->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            LOWORD(v285) = v271;
          }

          else
          {
LABEL_467:
            __dst = 0uLL;
            v285 = 0;
          }

          a2 = v251;
LABEL_470:
          v191 = sub_5544(8);
          v192 = *v191;
          if (*v191 && os_log_type_enabled(*v191, OS_LOG_TYPE_DEFAULT))
          {
            sub_2676A8(v288, &__dst);
            v193 = v288[23] >= 0 ? v288 : *v288;
            *buf = 136315650;
            *&buf[4] = "RoutingManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 4140;
            *&buf[18] = 2080;
            *&buf[20] = v193;
            _os_log_impl(&dword_0, v192, OS_LOG_TYPE_DEFAULT, "%25s:%-5d routing manager port update: user preferred port is (%s)", buf, 0x1Cu);
            if ((v288[23] & 0x80000000) != 0)
            {
              operator delete(*v288);
            }
          }

          LODWORD(v244) = v175;
          sub_C25C0(buf, a2, (a2 + 32), a2 + 48, &v268, a2 + 120, *(a2 + 144), v257, v78, v255, *(a2 + 408), v256, v244, v254, v253, *(a2 + 410), &__dst);
        }

        __dst = v270;
        atomic_fetch_add_explicit((v270.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
      }

      else
      {
        __dst = v270.n128_u64[0];
      }

      LOWORD(v285) = v271;
      goto LABEL_470;
    }

    if (v131)
    {
      std::__shared_weak_count::__release_weak(v131);
    }

    v130 = v130[1];
  }

  while (&v278 != v130);
LABEL_480:
  v194 = v258;
  v195 = *v258;
  if (!*v258)
  {
    goto LABEL_514;
  }

  do
  {
    v196 = *(v195 + 32);
    v22 = v196 >= 0x70707570;
    v197 = v196 < 0x70707570;
    if (v22)
    {
      v194 = v195;
    }

    v195 = *(v195 + 8 * v197);
  }

  while (v195);
  if (v194 == v258)
  {
    v265 = v258;
  }

  else
  {
    v265 = v258;
    if (*(v194 + 8) <= 0x70707570u)
    {
      if (*v261)
      {
        v198 = sub_5544(8);
        v199 = v194 + 5;
        v200 = *v198;
        if (*v198 && os_log_type_enabled(*v198, OS_LOG_TYPE_DEBUG))
        {
          sub_8E920(v288, (v194 + 5), 1);
          v201 = v288[23] >= 0 ? v288 : *v288;
          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4205;
          *&buf[18] = 2080;
          *&buf[20] = v201;
          _os_log_impl(&dword_0, v200, OS_LOG_TYPE_DEBUG, "%25s:%-5d port properties updated: %s", buf, 0x1Cu);
          if ((v288[23] & 0x80000000) != 0)
          {
            operator delete(*v288);
          }
        }

        for (kk = v194[6]; kk != v199; kk = kk[1])
        {
          v203 = kk[3];
          if (v203 && (v204 = std::__shared_weak_count::lock(v203)) != 0)
          {
            v205 = v204;
            v206 = kk[2];
            atomic_fetch_add_explicit(&v204->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_1A8C0(v204);
            LODWORD(v206) = sub_238AD8((a2 + 480), v206, v205);
            std::__shared_weak_count::__release_weak(v205);
            if (v206)
            {
              goto LABEL_504;
            }
          }

          else if (sub_238AD8((a2 + 480), 0, 0))
          {
LABEL_504:
            *&v289[0].__r_.__value_.__l.__data_ = v270;
            if (v270.n128_u64[1])
            {
              atomic_fetch_add_explicit((v270.n128_u64[1] + 16), 1uLL, memory_order_relaxed);
            }

            LOWORD(v289[0].__r_.__value_.__r.__words[2]) = v271;
            v207 = sub_5544(8);
            v208 = *v207;
            if (*v207 && os_log_type_enabled(*v207, OS_LOG_TYPE_DEFAULT))
            {
              sub_2676A8(v288, v289);
              v209 = v288[23] >= 0 ? v288 : *v288;
              *buf = 136315650;
              *&buf[4] = "RoutingManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 4212;
              *&buf[18] = 2080;
              *&buf[20] = v209;
              _os_log_impl(&dword_0, v208, OS_LOG_TYPE_DEFAULT, "%25s:%-5d routing manager port update: user preferred port is (%s)", buf, 0x1Cu);
              if ((v288[23] & 0x80000000) != 0)
              {
                operator delete(*v288);
              }
            }

            LODWORD(v244) = 1919971427;
            sub_C25C0(buf, a2, (a2 + 32), a2 + 48, &v268, a2 + 120, *(a2 + 144), v257, v78, v255, *(a2 + 408), (a2 + 416), v244, a2 + 440, (a2 + 472), *(a2 + 410), v289);
          }
        }
      }

LABEL_514:
      v265 = v194;
    }
  }

  v210 = sub_5544(8);
  if (*(v210 + 8))
  {
    v211 = *v210;
    if (*v210)
    {
      if (os_log_type_enabled(*v210, OS_LOG_TYPE_DEBUG))
      {
        if (*(a2 + 528) == *(a2 + 536))
        {
          v212 = "(empty)";
        }

        else
        {
          v212 = "";
        }

        *buf = 136315650;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 4225;
        *&buf[18] = 2080;
        *&buf[20] = v212;
        _os_log_impl(&dword_0, v211, OS_LOG_TYPE_DEBUG, "%25s:%-5d Final state of mCachedPortStack: %s", buf, 0x1Cu);
      }
    }
  }

  v213 = *(a2 + 528);
  for (mm = *(a2 + 536); v213 != mm; v213 += 16)
  {
    v215 = sub_5544(8);
    if (*(v215 + 8))
    {
      v216 = *v215;
      if (*v215)
      {
        if (os_log_type_enabled(*v215, OS_LOG_TYPE_DEBUG))
        {
          sub_11AB44(v288, v213);
          v217 = v288;
          if (v288[23] < 0)
          {
            v217 = *v288;
          }

          *buf = 136315650;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 4227;
          *&buf[18] = 2080;
          *&buf[20] = v217;
          _os_log_impl(&dword_0, v216, OS_LOG_TYPE_DEBUG, "%25s:%-5d port: %s", buf, 0x1Cu);
          if ((v288[23] & 0x80000000) != 0)
          {
            operator delete(*v288);
          }
        }
      }
    }
  }

  if (v34 == v258 && v100 == v258 && v265 == v258)
  {
    v241 = sub_5544(14);
    v242 = *v241;
    if (*v241 && os_log_type_enabled(*v241, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4232;
      _os_log_impl(&dword_0, v242, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): inPortUpdateMap contains no supported keys.", buf, 0x12u);
    }

    v243 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v243, "inPortUpdateMap contains no supported keys.");
  }

  v218 = *v261;
  if (*v261 == 1)
  {
    v219 = sub_5544(8);
    v220 = sub_5544(35);
    v221 = 0;
    *buf = 0x100000002;
    v222 = *(v219 + 8);
    while (1)
    {
      v223 = *&buf[v221];
      if (((v222 & v223) != 0) != ((*(v220 + 8) & v223) != 0))
      {
        break;
      }

      v221 += 4;
      if (v221 == 8)
      {
        goto LABEL_541;
      }
    }

    if ((v222 & v223) == 0)
    {
      v219 = v220;
    }

LABEL_541:
    v224 = *v219;
    if (v224 && os_log_type_enabled(v224, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4236;
      _os_log_impl(&dword_0, v224, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port update completed without a route change (there is no supported route in the current category for the updated port(s).)", buf, 0x12u);
    }

    sub_21991C(buf, 1920099684);
    sub_256828(v261, buf);
    if (v292 == 1)
    {
      sub_175F78(&buf[24]);
    }

    v218 = *v261;
  }

  if (v218)
  {
    v225 = sub_5544(8);
    v226 = sub_5544(35);
    v227 = 0;
    *buf = 0x100000002;
    v228 = *(v225 + 8);
    while (1)
    {
      v229 = *&buf[v227];
      if (((v228 & v229) != 0) != ((*(v226 + 8) & v229) != 0))
      {
        break;
      }

      v227 += 4;
      if (v227 == 8)
      {
        goto LABEL_554;
      }
    }

    if ((v228 & v229) == 0)
    {
      v225 = v226;
    }

LABEL_554:
    v230 = *v225;
    if (v230 && os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
    {
      sub_11DCE8(v288, v250);
      v231 = v288[23] >= 0 ? v288 : *v288;
      v232 = *v261;
      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 4240;
      *&buf[18] = 2080;
      *&buf[20] = v231;
      *&buf[28] = 1024;
      *&buf[30] = v232;
      _os_log_impl(&dword_0, v230, OS_LOG_TYPE_ERROR, "%25s:%-5d Port update with port map '%s' failed with result %d.", buf, 0x22u);
      if ((v288[23] & 0x80000000) != 0)
      {
        operator delete(*v288);
      }
    }
  }

  sub_4B14C(v269[3]);
  sub_4B0F4(v269[0]);
  if (v270.n128_u64[1])
  {
    std::__shared_weak_count::__release_weak(v270.n128_u64[1]);
  }

  sub_4AF90(__p);
  sub_65310(&v275);
  sub_65310(&v278);
  return sub_210C50(&v281);
}

void sub_182140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, std::__shared_weak_count *a63)
{
  sub_65310(&STACK[0x400]);
  sub_65310(&a65);
  a65 = &STACK[0x620];
  sub_86D0C(&a65);
  sub_65310(&STACK[0x390]);
  sub_65310(&STACK[0x3A8]);
  sub_210C50(&STACK[0x3C7]);
  _Unwind_Resume(a1);
}

void sub_1826A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  sub_47BD8(a1);
  sub_11DC68(*(a1 + 672));
  *(a1 + 664) = a1 + 672;
  v50 = a1;
  *(a1 + 672) = 0u;
  for (i = a3[1]; i != a3; i = i[1])
  {
    v7 = i[3];
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = i[2];
        if (v9)
        {
          v10 = sub_5544(9);
          v11 = *v10;
          if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
          {
            sub_23148(&__p, v9 + 2);
            p_p = &__p;
            if (v63 < 0)
            {
              p_p = __p;
            }

            *buf = 136315650;
            *&buf[4] = "PortManager.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 752;
            *&buf[18] = 2080;
            *&buf[20] = p_p;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Adding port %s", buf, 0x1Cu);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(__p);
            }
          }

          sub_11C624(a1 + 288, v9);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    v13 = sub_5544(9);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 757;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered invalid port in connections list.", buf, 0x12u);
    }

    if (v8)
    {
      sub_1A8C0(v8);
    }
  }

  if (!a4[2])
  {
    goto LABEL_68;
  }

  __p = &__p;
  v62 = &__p;
  v63 = 0;
  v15 = a4[1];
  if (v15 == a4)
  {
    goto LABEL_67;
  }

  v16 = (a1 + 288);
  do
  {
    v17 = v15[3];
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = v15[2];
        if (v19)
        {
          v20 = sub_115164(v16, v19);
          if (v16 == v20)
          {
            sub_849B8();
          }

          *buf = v20;
          sub_11C288(v16, buf);
LABEL_32:
          sub_1A8C0(v18);
          goto LABEL_33;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = sub_5544(9);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 780;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Encountered invalid port in disconnections list.", buf, 0x12u);
    }

    if (v18)
    {
      goto LABEL_32;
    }

LABEL_33:
    v15 = v15[1];
    v23 = a4;
  }

  while (v15 != a4);
  v24 = v62;
  if (v62 != &__p)
  {
    v25 = a2 + 1;
    do
    {
      v26 = sub_1166C4(*(v23 + 8), v23, v24 + 2);
      sub_25746C(v23, v26);
      v27 = *a2;
      if (*a2 != v25)
      {
        do
        {
          v28 = sub_1166C4(v27[6], v27 + 5, v24 + 2);
          if (v27 + 5 == v28)
          {
            v35 = sub_5544(9);
            v36 = *v35;
            if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
            {
              v37 = v24[3];
              if (v37)
              {
                v38 = std::__shared_weak_count::lock(v37);
                v39 = v38 ? v24[2] : 0;
              }

              else
              {
                v39 = 0;
                v38 = 0;
              }

              *buf = 136315650;
              *&buf[4] = "PortManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 802;
              *&buf[18] = 2048;
              *&buf[20] = v39;
              _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d Disconnected port %p not present in update map", buf, 0x1Cu);
              if (v38)
              {
                sub_1A8C0(v38);
              }
            }
          }

          else
          {
            v29 = v28;
            v30 = sub_5544(9);
            v31 = *v30;
            if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_DEFAULT))
            {
              v32 = v24[3];
              if (v32)
              {
                v33 = std::__shared_weak_count::lock(v32);
                v34 = v33 ? v24[2] : 0;
              }

              else
              {
                v34 = 0;
                v33 = 0;
              }

              *buf = 136315650;
              *&buf[4] = "PortManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 796;
              *&buf[18] = 2048;
              *&buf[20] = v34;
              _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disconnected port %p not in connected ports list. Removing from the update map", buf, 0x1Cu);
              if (v33)
              {
                sub_1A8C0(v33);
              }
            }

            sub_25746C((v27 + 5), v29);
          }

          v40 = v27[1];
          if (v40)
          {
            do
            {
              v41 = v40;
              v40 = *v40;
            }

            while (v40);
          }

          else
          {
            do
            {
              v41 = v27[2];
              v42 = *v41 == v27;
              v27 = v41;
            }

            while (!v42);
          }

          v27 = v41;
        }

        while (v41 != v25);
      }

      v24 = v24[1];
      v23 = a4;
    }

    while (v24 != &__p);
  }

LABEL_67:
  sub_65310(&__p);
LABEL_68:
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  memset(buf, 0, 24);
  strcpy(&buf[24], "cwdv");
  buf[32] = 0;
  v66 = 3;
  v68[0] = 0;
  v68[1] = 0;
  v67 = v68;
  v69 = 44739242;
  v71 = 0;
  v72 = 0;
  v70 = 0;
  __p = off_6BBF40;
  v64 = &__p;
  sub_2574C4(&v53, v50, buf, &__p);
  v43 = v54;
  if (v54 != &v53)
  {
    while (2)
    {
      v44 = v43[3];
      if (v44)
      {
        v45 = std::__shared_weak_count::lock(v44);
        if (v45)
        {
          v46 = v43[2];
          if (v46)
          {
            *v57 = *(v46 + 144);
            sub_75788(&v55, *v57);
            goto LABEL_78;
          }
        }
      }

      else
      {
        v45 = 0;
      }

      v47 = sub_5544(9);
      v48 = *v47;
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_DEFAULT))
      {
        *v57 = 136315394;
        v58 = "PortManager.cpp";
        v59 = 1024;
        v60 = 821;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unable to lock connected port. Not notifying connected port listeners.", v57, 0x12u);
      }

      if (v45)
      {
LABEL_78:
        sub_1A8C0(v45);
      }

      v43 = v43[1];
      if (v43 == &v53)
      {
        break;
      }

      continue;
    }
  }

  sub_65310(&v53);
  sub_85148(&__p);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(v70);
  }

  sub_477A0(v68[0]);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v49 = sub_17D104();
  *buf = 2;
  sub_17CC28(v49, "fedv", &v55, buf);
  sub_477A0(v56[0]);
  sub_47C90(v50);
}