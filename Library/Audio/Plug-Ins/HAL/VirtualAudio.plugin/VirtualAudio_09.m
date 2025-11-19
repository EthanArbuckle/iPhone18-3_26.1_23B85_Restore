uint64_t sub_ABD9C(uint64_t a1, int a2, unsigned int a3, int *a4)
{
  if (a2 != 1650881394)
  {
    v12 = sub_5544(14);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "AggregateDevice_CommonBase.cpp";
      v17 = 1024;
      v18 = 3256;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = sub_71E60(a3);
  v7 = 640;
  if (result)
  {
    v7 = 664;
  }

  v8 = (a1 + v7);
  v9 = *v8;
  v10 = v8[1];
  while (1)
  {
    if (v9 == v10)
    {
      v11 = 0;
      goto LABEL_10;
    }

    result = (*(**(*v9 + 152) + 144))(*(*v9 + 152), 1987013737);
    if (result)
    {
      break;
    }

    v9 += 16;
  }

  v11 = 1;
LABEL_10:
  *a4 = v11;
  return result;
}

void sub_ABF48()
{
  if ((atomic_load_explicit(&qword_6FD670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FD670))
  {
    v0 = sub_DD858();
    sub_44777C(v0);

    __cxa_guard_release(&qword_6FD670);
  }
}

uint64_t sub_ABFC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_8703C();
  if (((*(*v6 + 336))(v6) & 1) == 0)
  {
    v18 = sub_5544(14);
    v19 = sub_468EC(1, *v18, *(v18 + 8));
    v20 = v19;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2741;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError): Attempt to change routes prior to establishing a valid serialization context.", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  sub_27A4();
  (*(qword_6E94F8 + 16))();
  v46 = a2;
  *buf = off_6CDBD0;
  *&buf[8] = &v46;
  *&v41[4] = buf;
  sub_51FD0(v47, 0, buf);
  sub_4C70(buf);
  v7.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_RouteChange", 0xEuLL) != &qword_709F00)
  {
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v8 = os_signpost_id_generate(qword_6F6848);
    if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
    {
      qword_6F6848 = os_log_create("com.apple.coreaudio", "VirtualAudio");
      __cxa_guard_release(&qword_6F6850);
    }

    v9 = qword_6F6848;
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_0, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "VA_RouteChange", "Route configuration change", buf, 2u);
    }
  }

  else
  {
    v8 = 0;
  }

  v32 = v8;
  v11 = sub_5544(43);
  if (*(v11 + 8))
  {
    v12 = *v11;
    if (v12)
    {
      v13 = v12;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "SignpostUtilities.h";
        *&buf[12] = 1024;
        *&buf[14] = 93;
        v40 = 2080;
        *v41 = "kRouteChange";
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
      }
    }
  }

  v14 = *(a3 + 24);
  if (!v14)
  {
    sub_46A74();
  }

  (*(*v14 + 48))(buf);
  v43 = ((std::chrono::system_clock::now().__d_.__rep_ - v7.__d_.__rep_) / 1000);
  v44 = 1;
  sub_D1734(&v30, a2, buf);
  v15 = v30;
  if (v30)
  {
    v22 = sub_5544(14);
    v23 = sub_468EC(1, *v22, *(v22 + 8));
    v24 = v23;
    if (v23)
    {
      v25 = v23;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_22170(__p, v15);
        v26 = v29 >= 0 ? __p : __p[0];
        *v33 = 136315650;
        v34 = "VirtualAudio_PlugIn.mm";
        v35 = 1024;
        v36 = 2760;
        v37 = 2080;
        v38 = v26;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (routeUpdateInfo.first): Route change failed: %s.", v33, 0x1Cu);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v27 = __cxa_allocate_exception(0x10uLL);
    *v27 = &off_6DDDD0;
    v27[2] = v15;
  }

  *a1 = *&buf[4];
  v16 = cf;
  if (cf)
  {
    CFRetain(cf);
    *(a1 + 8) = v16;
    CFRelease(v16);
  }

  else
  {
    *(a1 + 8) = 0;
  }

  if (v45[816] == 1)
  {
    sub_4AE8C(v45);
  }

  if (v42 == 1)
  {
    sub_175F78(&v41[4]);
  }

  sub_D9BE4(&v32);
  return sub_53BA4(v47);
}

void sub_AC578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);

  sub_3A0418(va);
  sub_3A044C(va2);
  sub_D9BE4(va1);
  sub_53BA4(v5 + 8);
  _Unwind_Resume(a1);
}

BOOL sub_AC5FC(void *a1)
{
  if (a1[57])
  {
    operator new();
  }

  v3 = 0;
  if (a1[54])
  {
    v1 = a1[55] != 0;
  }

  else
  {
    v1 = 0;
  }

  sub_37F6D8(&v3);
  return v1;
}

uint64_t sub_AC6D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CDBD0;
  a2[1] = v2;
  return result;
}

uint64_t sub_AC6F8(uint64_t a1, uint64_t a2, const __CFDictionary **a3, uint64_t a4)
{
  v5 = *(a2 + 144);
  v6 = *(a2 + 152);
  if (v5 != v6)
  {
    v7 = v5 + 8;
    do
    {
      v8 = sub_4DF80(*(*(v7 - 8) + 456));
      if (v8)
      {
        break;
      }

      v68 = v7 == v6;
      v7 += 8;
    }

    while (!v68);
    if (v8)
    {
      v214 = sub_5544(14);
      v215 = sub_468EC(1, *v214, *(v214 + 8));
      v216 = v215;
      if (v215 && os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4143;
        _os_log_impl(&dword_0, v216, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  if (!*a3)
  {
    v209 = sub_5544(14);
    v210 = sub_468EC(1, *v209, *(v209 + 8));
    v211 = v210;
    if (v210 && os_log_type_enabled(v210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4144;
      _os_log_impl(&dword_0, v211, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v212 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v212, "Precondition failure.");
  }

  v9 = *sub_5544(2);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4147;
      *&buf[18] = 2080;
      *&buf[20] = a4;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route configuration change initiated [ %s ]. Route configuration:", buf, 0x1Cu);
    }
  }

  v12 = *a3;
  sub_53E8(__p, "  ");
  sub_B0954(&v275, v12, 1, __p);
  if (v274 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = v276;
  if (v276 != &v275)
  {
    do
    {
      v14 = *sub_5544(2);
      v15 = v14;
      if (v14)
      {
        v16 = v14;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v13 + 2;
          if (*(v13 + 39) < 0)
          {
            v17 = *v17;
          }

          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4153;
          *&buf[18] = 2080;
          *&buf[20] = v17;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s", buf, 0x1Cu);
        }
      }

      v13 = v13[1];
    }

    while (v13 != &v275);
  }

  sub_38188(&v237, a2, a3, 1, 1);
  if (v271 == 1)
  {
    v18 = *(a2 + 120);
    *&v233[0].__r_.__value_.__r.__words[1] = 0uLL;
    v233[0].__r_.__value_.__r.__words[0] = &v233[0].__r_.__value_.__l.__size_;
    v19 = v18[2];
    if (v19 != v18 + 3)
    {
      do
      {
        v20 = v19[5];
        if (*(v20 + 305) == 1)
        {
          sub_A4E68(buf, v20 + 88);
          *&v284 = v19 + 4;
          v21 = sub_23B798(v233, *(v19 + 8));
          sub_23B8EC((v21 + 5), buf);
          sub_A5114(buf);
        }

        v22 = v19[1];
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
            v23 = v19[2];
            v68 = *v23 == v19;
            v19 = v23;
          }

          while (!v68);
        }

        v19 = v23;
      }

      while (v23 != v18 + 3);
    }

    *(&v284 + 1) = 0;
    v285 = 0;
    *&v284 = &v284 + 8;
    for (i = v270; i != &v269; i = *(i + 8))
    {
      data = *(i + 96);
      LODWORD(v278.__r_.__value_.__l.__data_) = data;
      size = v233[0].__r_.__value_.__l.__size_;
      if (v233[0].__r_.__value_.__l.__size_)
      {
        v27 = &v233[0].__r_.__value_.__r.__words[1];
        v28 = v233[0].__r_.__value_.__l.__size_;
        do
        {
          v29 = v28;
          v30 = v27;
          v31 = *(v28 + 32);
          if (v31 >= data)
          {
            v27 = v28;
          }

          v28 = *(v28 + 8 * (v31 < data));
        }

        while (v28);
        if (v27 != &v233[0].__r_.__value_.__r.__words[1])
        {
          if (v31 < data)
          {
            v29 = v30;
          }

          if (data >= *(v29 + 32))
          {
            v32 = v233[0].__r_.__value_.__l.__size_;
            while (1)
            {
              while (1)
              {
                v33 = *(v32 + 32);
                if (data >= v33)
                {
                  break;
                }

                v32 = *v32;
                if (!v32)
                {
                  goto LABEL_410;
                }
              }

              if (v33 >= data)
              {
                break;
              }

              v32 = *(v32 + 8);
              if (!v32)
              {
LABEL_410:
                sub_DE7DC("map::at:  key not found");
              }
            }

            v34 = sub_2335B8(i + 16, v32 + 40);
            v35 = &v233[0].__r_.__value_.__r.__words[1];
            do
            {
              v36 = size;
              v37 = v35;
              v38 = *(size + 32);
              if (v38 >= data)
              {
                v35 = size;
              }

              size = *(size + 8 * (v38 < data));
            }

            while (size);
            if (v35 != &v233[0].__r_.__value_.__r.__words[1])
            {
              if (v38 < data)
              {
                v36 = v37;
              }

              if (data >= *(v36 + 32))
              {
                sub_23BCAC(v233, v35);
                sub_A5114(&v35[1].__r_.__value_.__r.__words[2]);
                operator delete(v35);
              }
            }

            if (v34)
            {
              continue;
            }

            data = v278.__r_.__value_.__l.__data_;
          }
        }
      }

      *buf = &v278;
      v39 = sub_23B798(&v284, data);
      sub_233C40((v39 + 5), i + 16);
    }

    v40 = v233[0].__r_.__value_.__r.__words[0];
    if (v233[0].__r_.__value_.__l.__data_ != &v233[0].__r_.__value_.__r.__words[1])
    {
      do
      {
        v41 = *(&v284 + 1);
        if (*(&v284 + 1))
        {
          v42 = *(v40 + 32);
          v43 = &v284 + 1;
          while (1)
          {
            while (1)
            {
              v44 = v41;
              v45 = *(v41 + 32);
              if (v42 >= v45)
              {
                break;
              }

              v41 = *v44;
              v43 = v44;
              if (!*v44)
              {
                v46 = 1;
                v43 = v44;
                goto LABEL_73;
              }
            }

            if (v45 >= v42)
            {
              break;
            }

            v43 = v44 + 1;
            v41 = v44[1];
            if (!v41)
            {
              v46 = 1;
              goto LABEL_73;
            }
          }

          v46 = 0;
        }

        else
        {
          v46 = 1;
          v44 = &v284 + 1;
          v43 = &v284 + 1;
        }

LABEL_73:
        v47 = *(v40 + 8);
        v48 = v40;
        if (v47)
        {
          do
          {
            v49 = v47;
            v47 = v47->__r_.__value_.__r.__words[0];
          }

          while (v47);
        }

        else
        {
          do
          {
            v49 = *(v48 + 16);
            v68 = v49->__r_.__value_.__r.__words[0] == v48;
            v48 = v49;
          }

          while (!v68);
        }

        if (v46)
        {
          sub_23BCAC(v233, v40);
          *v40 = 0;
          *(v40 + 8) = 0;
          *(v40 + 16) = v44;
          *v43 = v40;
          if (*v284)
          {
            *&v284 = *v284;
            v40 = *v43;
          }

          sub_46B9C(*(&v284 + 1), v40);
          ++v285;
        }

        v40 = v49;
      }

      while (v49 != &v233[0].__r_.__value_.__r.__words[1]);
    }

    v50 = v284;
    if (v284 == (&v284 + 8))
    {
LABEL_91:
      v53 = sub_5544(2);
      v54 = sub_5544(35);
      v55 = 0;
      *buf = 0x100000002;
      v56 = *(v53 + 8);
      while (1)
      {
        v57 = *&buf[v55];
        if (((v56 & v57) != 0) != ((*(v54 + 8) & v57) != 0))
        {
          break;
        }

        v55 += 4;
        if (v55 == 8)
        {
          goto LABEL_97;
        }
      }

      if ((v56 & v57) == 0)
      {
        v53 = v54;
      }

LABEL_97:
      v58 = *v53;
      if (v58 && os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = v18[4];
        sub_23BB94(&v278, v270, &v269);
        v60 = (v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v278 : v278.__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_SessionManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 72;
        *&buf[18] = 2048;
        *&buf[20] = v59;
        *&buf[28] = 2080;
        *&buf[30] = v60;
        _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Redundant session update. Audio Sessions: %zu, %s", buf, 0x26u);
        if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v278.__r_.__value_.__l.__data_);
        }
      }

      v61 = 1;
    }

    else
    {
      while ((sub_A5224(v50 + 40) & 1) == 0)
      {
        v51 = *(v50 + 1);
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = *(v50 + 2);
            v68 = *v52 == v50;
            v50 = v52;
          }

          while (!v68);
        }

        v50 = v52;
        if (v52 == (&v284 + 8))
        {
          goto LABEL_91;
        }
      }

      v61 = 0;
    }

    sub_23BB40(*(&v284 + 1));
    sub_23BB40(v233[0].__r_.__value_.__l.__size_);
    if ((v271 & 1) == 0)
    {
      sub_1EC054();
    }

    sub_23C400(*(a2 + 120), &v269);
    sub_AEEB4(v233, *(a2 + 120));
    for (j = v233[0].__r_.__value_.__l.__size_; j != v233; j = j->__r_.__value_.__l.__size_)
    {
      *buf = *(&j->__r_.__value_.__l + 2);
      memset(&buf[8], 0, 24);
      sub_4817C(&buf[8], j[1].__r_.__value_.__l.__data_, j[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((j[1].__r_.__value_.__l.__size_ - j[1].__r_.__value_.__r.__words[0]) >> 3));
      v280 = 0;
      v281 = 0;
      *&buf[32] = 0;
      sub_4817C(&buf[32], j[2].__r_.__value_.__l.__data_, j[2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((j[2].__r_.__value_.__l.__size_ - j[2].__r_.__value_.__r.__words[0]) >> 3));
      v283 = 0uLL;
      v282 = 0;
      sub_1215C(&v282, j[3].__r_.__value_.__l.__data_, j[3].__r_.__value_.__l.__size_, (j[3].__r_.__value_.__l.__size_ - j[3].__r_.__value_.__r.__words[0]) >> 3);
      sub_128D4(a2, buf);
      if (v282)
      {
        *&v283 = v282;
        operator delete(v282);
      }

      *&v284 = &buf[32];
      sub_11C50(&v284);
      *&v284 = &buf[8];
      sub_11C50(&v284);
    }

    sub_76304(v233);
    if (!*a3)
    {
      v219 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v219, "Could not construct");
    }

    Count = CFDictionaryGetCount(*a3);
    v64 = v61 ^ 1;
    if (Count != 1)
    {
      v64 = 1;
    }

    if ((v64 & 1) == 0)
    {
      sub_21991C(buf, 1920099684);
      *a1 = *buf;
      sub_20309C(a1 + 8, &buf[8]);
      *(a1 + 64) = v283;
      *(a1 + 80) = 0;
      *(a1 + 896) = 0;
      if (v282 != 1)
      {
        goto LABEL_404;
      }

      v65 = buf;
      goto LABEL_403;
    }
  }

  v66 = *(a2 + 112);
  if (v272)
  {
    v67 = 0;
    *(v66 + 409) = 0;
  }

  else
  {
    v67 = *(v66 + 409);
  }

  v68 = v237 == 1668505974 && HIDWORD(v237) == 1768776806;
  v69 = v68;
  if ((v67 & v69) != 0)
  {
    v70 = 1835361382;
  }

  else
  {
    v70 = HIDWORD(v237);
  }

  if (v237 == 1668703084 && v260 != 0)
  {
    v70 = 1936745326;
  }

  HIDWORD(v237) = v70;
  v72 = (a2 + 512);
  if (*(a2 + 536) == 1)
  {
    sub_A1DF4(buf, a2);
    v73 = *buf;
    sub_4AE8C(buf);
    if (v237 != v73)
    {
      sub_A1DF4(buf, a2);
      v74 = *&buf[4];
      sub_4AE8C(buf);
      if (HIDWORD(v237) != v74)
      {
        v75 = *sub_5544(2);
        v76 = v75;
        if (v75)
        {
          v77 = v75;
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            sub_128174(v233, *(a2 + 512), *(a2 + 520));
            v78 = (v233[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v233 : v233[0].__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 4188;
            *&buf[18] = 2080;
            *&buf[20] = v78;
            _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Undoing route-to-builtin-speaker ports by making ports %s routable", buf, 0x1Cu);
            if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v233[0].__r_.__value_.__l.__data_);
            }
          }
        }

        v79 = *(a2 + 512);
        for (k = *(a2 + 520); v79 != k; ++v79)
        {
          v81 = *v79;
          sub_2820();
          v82 = sub_3D90(v81);
          v233[0].__r_.__value_.__r.__words[0] = v82;
          if (v82)
          {
            sub_114B44(&v245, v82);
          }

          else
          {
            v83 = *sub_5544(2);
            v84 = v83;
            if (v83 && os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 937;
              *&buf[18] = 1024;
              *&buf[20] = v81;
              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Could not get port for id %u", buf, 0x18u);
            }
          }
        }

        if (*(a2 + 536) == 1)
        {
          v85 = *v72;
          if (*v72)
          {
            *(a2 + 520) = v85;
            operator delete(v85);
          }

          *(a2 + 536) = 0;
        }
      }
    }
  }

  if (v268 == 1)
  {
    if (*(a2 + 536) == 1)
    {
      if (v72 != &__src)
      {
        sub_16B928(v72, __src, v267, (v267 - __src) >> 2);
      }
    }

    else
    {
      if (*(a2 + 536))
      {
        v86 = *v72;
        if (*v72)
        {
          *(a2 + 520) = v86;
          operator delete(v86);
        }

        v87 = 0;
      }

      else
      {
        *v72 = 0;
        *(a2 + 520) = 0;
        *(a2 + 528) = 0;
        sub_46980(v72, __src, v267, (v267 - __src) >> 2);
        v87 = 1;
      }

      *(a2 + 536) = v87;
    }
  }

  v88 = *sub_5544(2);
  v89 = v88;
  if (v88)
  {
    v90 = v88;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      sub_BCD50(v233, &v237);
      v91 = (v233[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v233 : v233[0].__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4198;
      *&buf[18] = 2080;
      *&buf[20] = v91;
      _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Parsed RouteConfiguration: %s", buf, 0x1Cu);
      if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v233[0].__r_.__value_.__l.__data_);
      }
    }
  }

  if (cf)
  {
    v92 = *(a2 + 112);
    v93 = sub_5544(8);
    v94 = *v93;
    if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_DEBUG))
    {
      if (cf)
      {
        v95 = CFCopyDescription(cf);
        *buf = v95;
        sub_1267C(v233, v95);
        if (v95)
        {
          CFRelease(v95);
        }
      }

      else
      {
        sub_53E8(v233, "(null)");
      }

      v96 = v233;
      if ((v233[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v96 = v233[0].__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 6527;
      *&buf[18] = 2080;
      *&buf[20] = v96;
      _os_log_impl(&dword_0, v94, OS_LOG_TYPE_DEBUG, "%25s:%-5d Updating multichannel mode preferences with array %s", buf, 0x1Cu);
      if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v233[0].__r_.__value_.__l.__data_);
      }
    }

    if (!cf)
    {
      v220 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v220, "Could not construct");
    }

    if (!CFArrayGetCount(cf))
    {
      sub_1C4454((v92 + 584), 0x76646566u);
      goto LABEL_217;
    }

    v97 = cf;
    if (!cf)
    {
      goto LABEL_217;
    }

    v98 = CFArrayGetCount(cf);
    v99 = v98;
    v100 = cf;
    if (cf)
    {
      v101 = CFArrayGetCount(cf);
      if (!v99)
      {
        goto LABEL_217;
      }
    }

    else
    {
      v101 = 0;
      if (!v98)
      {
        goto LABEL_217;
      }
    }

    for (m = 0; v99 != m; ++m)
    {
      if (v97 == v100 && v101 == m)
      {
        break;
      }

      sub_A3B9C(v233, v97, m);
      v103 = v233[0].__r_.__value_.__r.__words[0];
      if (v233[0].__r_.__value_.__r.__words[0] && (v104 = CFGetTypeID(v233[0].__r_.__value_.__l.__data_), v104 == CFDictionaryGetTypeID()))
      {
        sub_A3C4C(buf, &v233[0].__r_.__value_.__l.__data_);
        if (!*buf)
        {
          v218 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v218, "Could not construct");
        }

        v105 = sub_4A4DC(*buf, "VAD type 4cc");
        if (v105)
        {
          v106 = sub_113A0(v105);
          v107 = v106;
          LODWORD(v284) = v106;
          BYTE4(v284) = BYTE4(v106);
          if ((v106 & 0x100000000) != 0)
          {
            if (!*buf)
            {
              v228 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v228, "Could not construct");
            }

            v108 = sub_148DA8(*buf, "prefers multichannel mode");
            if (v108 && (v109 = sub_11DA8(v108), v109 >= 0x100u) && (v109 & 1) != 0)
            {
              sub_75788(v92 + 584, v107);
            }

            else
            {
              sub_1C4454((v92 + 584), v107);
            }
          }
        }

        if (*buf)
        {
          CFRelease(*buf);
        }
      }

      else
      {
        v110 = sub_5544(8);
        v111 = *v110;
        if (*v110 && os_log_type_enabled(*v110, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "RoutingManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 6539;
          _os_log_impl(&dword_0, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d Entry in multichannel mode preference array was not a CFDictionary!", buf, 0x12u);
        }

        if (!v103)
        {
          continue;
        }
      }

      CFRelease(v103);
    }
  }

LABEL_217:
  HIDWORD(v237) = sub_99C4C(*(a2 + 112), HIDWORD(v237), 0x76646566u);
  v112 = v256 != 1 || v255 == 0;
  if (v112 || (v113 = sub_8703C(), ((*(*v113 + 272))(v113) & 1) != 0))
  {
    sub_BD2B8(*(a2 + 112), 14);
  }

  else
  {
    sub_2723EC(*(a2 + 112), 14);
  }

  if (*(a2 + 288) == 1)
  {
    v114 = *sub_5544(2);
    v115 = v114;
    if (v114)
    {
      v116 = v114;
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        sub_22170(v233, *(a2 + 280));
        v117 = (v233[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v233 : v233[0].__r_.__value_.__r.__words[0];
        *buf = 136315650;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4221;
        *&buf[18] = 2080;
        *&buf[20] = v117;
        _os_log_impl(&dword_0, v116, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Persisting Alternate VAD '%s' between route changes", buf, 0x1Cu);
        if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v233[0].__r_.__value_.__l.__data_);
        }
      }
    }

    if (*(a2 + 280) == 1986884979)
    {
      v118 = 19;
    }

    else
    {
      v118 = 20;
    }

    sub_3A9B74(&v278, *(a2 + 128), *(a2 + 284));
    if (*(a2 + 280) == 1986095474)
    {
      v119 = *sub_5544(2);
      v120 = v119;
      if (v119)
      {
        v121 = v119;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
        {
          sub_FC33C(v233, &v278);
          v122 = SHIBYTE(v233[0].__r_.__value_.__r.__words[2]);
          v123 = v233[0].__r_.__value_.__r.__words[0];
          sub_22170(&v284, 0x76646566u);
          v124 = v233;
          if (v122 < 0)
          {
            v124 = v123;
          }

          if (v285 >= 0)
          {
            v125 = &v284;
          }

          else
          {
            v125 = v284;
          }

          *buf = 136315906;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4234;
          *&buf[18] = 2080;
          *&buf[20] = v124;
          *&buf[28] = 2080;
          *&buf[30] = v125;
          _os_log_impl(&dword_0, v121, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Disallowing ports %s for VAD '%s'", buf, 0x26u);
          if (SHIBYTE(v285) < 0)
          {
            operator delete(v284);
          }

          if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v233[0].__r_.__value_.__l.__data_);
          }
        }
      }

      v284 = *&v278.__r_.__value_.__l.__data_;
      if (v278.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v278.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
      }

      sub_3A9E30(v233, &v284, 1);
      v126 = v240;
      if (!v240)
      {
        goto LABEL_260;
      }

      v127 = &v240;
      do
      {
        v128 = v126;
        v129 = v127;
        v130 = *(v126 + 32);
        if (v130 >= 0x76646566)
        {
          v127 = v126;
        }

        v126 = *(v126 + 8 * (v130 < 0x76646566));
      }

      while (v126);
      if (v127 == &v240)
      {
        goto LABEL_260;
      }

      if (v130 < 0x76646566)
      {
        v128 = v129;
      }

      if (*(v128 + 8) <= 0x76646566u)
      {
        sub_7FE64((v127 + 5), v233[0].__r_.__value_.__l.__data_, &v233[0].__r_.__value_.__l.__size_);
      }

      else
      {
LABEL_260:
        *buf = 1986291046;
        sub_7FE10(&buf[8], v233);
        v131 = v240;
        if (!v240)
        {
LABEL_266:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v132 = v131;
            v133 = *(v131 + 32);
            if (*buf >= v133)
            {
              break;
            }

            v131 = *v132;
            if (!*v132)
            {
              goto LABEL_266;
            }
          }

          if (v133 >= *buf)
          {
            break;
          }

          v131 = v132[1];
          if (!v131)
          {
            goto LABEL_266;
          }
        }

        sub_4B0F4(*&buf[16]);
      }

      sub_4B0F4(v233[0].__r_.__value_.__l.__size_);
      if (*(&v284 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v284 + 1));
      }
    }

    sub_BD2B8(*(a2 + 112), v118);
    if (v278.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v278.__r_.__value_.__l.__size_);
    }
  }

  sub_A1DF4(buf, a2);
  sub_4AE8C(buf);
  v134 = v243;
  if (v243 != v244)
  {
    v135 = HIDWORD(v237);
    do
    {
      v136 = *(v134 + 4);
      if (v136)
      {
        v137 = *(v134 + 10);
        sub_25704(buf, (v136 + 88), "", 174);
        (*(**buf + 216))(*buf, v135, v137, v134 + 44, 1);
        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }
      }

      v138 = *(v134 + 1);
      if (v138)
      {
        do
        {
          v139 = v138;
          v138 = *v138;
        }

        while (v138);
      }

      else
      {
        do
        {
          v139 = *(v134 + 2);
          v68 = *v139 == v134;
          v134 = v139;
        }

        while (!v68);
      }

      v134 = v139;
    }

    while (v139 != v244);
  }

  if ((*(a2 + 168) & 1) != 0 && sub_10AA80() && (sub_134A80(&v237) & 1) == 0)
  {
    v140 = *sub_5544(2);
    v141 = v140;
    if (v140)
    {
      v142 = v140;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        v143 = *(a2 + 168);
        sub_22170(v233, 0x6D706D75u);
        v144 = (v233[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v233 : v233[0].__r_.__value_.__r.__words[0];
        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 4264;
        *&buf[18] = 1024;
        *&buf[20] = v143;
        *&buf[24] = 2080;
        *&buf[26] = v144;
        _os_log_impl(&dword_0, v142, OS_LOG_TYPE_DEFAULT, "%25s:%-5d PolicyMute: %d, Setting output mode to %s", buf, 0x22u);
        if (SHIBYTE(v233[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v233[0].__r_.__value_.__l.__data_);
        }
      }
    }

    if ((v239 & 1) == 0)
    {
      v239 = 1;
    }

    v238 = 1836084597;
  }

  sub_BDEA4(&v249, 1, 1);
  sub_BDEA4(&v245, 1, 0);
  sub_BDEA4(&v247, 0, 0);
  sub_44E44(v236, &v252);
  sub_BD4EC(v236, 0);
  sub_477A0(v236[1]);
  sub_44E44(v235, &v251);
  sub_BD4EC(v235, 1);
  sub_477A0(v235[1]);
  v145 = *(a2 + 216);
  v146 = v242;
  if (v254 == 1)
  {
    if (theDict)
    {
      if ((CFDictionaryGetCount(theDict) != 0) == v146)
      {
        goto LABEL_300;
      }

      v224 = sub_5544(14);
      v225 = sub_468EC(1, *v224, *(v224 + 8));
      v226 = v225;
      if (v225 && os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PlugIn.mm";
        *&buf[12] = 1024;
        *&buf[14] = 301;
        _os_log_impl(&dword_0, v226, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v221 = __cxa_allocate_exception(0x10uLL);
      v222 = &std::logic_error::~logic_error;
      std::logic_error::logic_error(v221, "Precondition failure.");
    }

    else
    {
      v221 = __cxa_allocate_exception(0x10uLL);
      v222 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v221, "Could not construct");
    }

    __cxa_throw(v221, v223, v222);
  }

LABEL_300:
  if (v237 > 1668703083)
  {
    if (v237 == 1668703084)
    {
LABEL_307:
      v147 = HIDWORD(v237);
      v148 = (v145 + 8);
      v149 = 25702;
LABEL_308:
      if (v147 != (v149 | 0x696D0000))
      {
        goto LABEL_326;
      }

LABEL_324:
      *v145 = v146;
      sub_BDD1C(v148, theDict, v254);
      goto LABEL_327;
    }

    if (v237 == 1668703092)
    {
      v147 = HIDWORD(v237);
      v148 = (v145 + 8);
      v149 = 30307;
      goto LABEL_308;
    }

    goto LABEL_325;
  }

  if (v237 != 1668309362)
  {
    if (v237 != 1668576377)
    {
      goto LABEL_325;
    }

    goto LABEL_307;
  }

  if (SHIDWORD(v237) > 1919776354)
  {
    if (SHIDWORD(v237) > 1987081832)
    {
      if (HIDWORD(v237) == 1987081833)
      {
        goto LABEL_323;
      }

      v151 = 30319;
    }

    else
    {
      if (HIDWORD(v237) == 1919776355)
      {
        goto LABEL_323;
      }

      v151 = 26467;
    }

    v150 = v151 | 0x76700000;
  }

  else
  {
    if (SHIDWORD(v237) <= 1768779618)
    {
      if (HIDWORD(v237) != 1735222132)
      {
        v150 = 1768057203;
        goto LABEL_322;
      }

LABEL_323:
      v148 = (v145 + 8);
      goto LABEL_324;
    }

    if (HIDWORD(v237) == 1768779619)
    {
      goto LABEL_323;
    }

    v150 = 1768781411;
  }

LABEL_322:
  if (HIDWORD(v237) == v150)
  {
    goto LABEL_323;
  }

LABEL_325:
  v148 = (v145 + 8);
LABEL_326:
  *v145 = 0;
  sub_BE3CC(v148);
LABEL_327:
  sub_BE2AC(a2);
  sub_20301C(v233, 1);
  *(&v284 + 1) = 0;
  v285 = 0;
  *&v284 = &v284 + 8;
  v152 = v249;
  if (v249 != &v250)
  {
    LODWORD(v278.__r_.__value_.__l.__data_) = 1717793397;
    *buf = &v278;
    sub_11A7D4(&v284, 0x66637275u);
    v153 = v152[4];
    v154 = *(v153 + 96);
    *buf = *(v153 + 88);
    *&buf[8] = v154;
    if (v154)
    {
      atomic_fetch_add_explicit((v154 + 16), 1uLL, memory_order_relaxed);
    }

    sub_849B8();
  }

  v155 = v245;
  if (v245 != &v246)
  {
    LODWORD(v278.__r_.__value_.__l.__data_) = 1717793397;
    *buf = &v278;
    sub_11A7D4(&v284, 0x66637275u);
    v156 = v155[4];
    v157 = *(v156 + 96);
    *buf = *(v156 + 88);
    *&buf[8] = v157;
    if (v157)
    {
      atomic_fetch_add_explicit((v157 + 16), 1uLL, memory_order_relaxed);
    }

    sub_849B8();
  }

  v158 = v247;
  if (v247 != &v248)
  {
    LODWORD(v278.__r_.__value_.__l.__data_) = 1717793397;
    *buf = &v278;
    sub_11A7D4(&v284, 0x66637275u);
    v159 = v158[4];
    v160 = *(v159 + 96);
    *buf = *(v159 + 88);
    *&buf[8] = v160;
    if (v160)
    {
      atomic_fetch_add_explicit((v160 + 16), 1uLL, memory_order_relaxed);
    }

    sub_849B8();
  }

  if ((v241 & 1) == 0)
  {
    if (v258 == 1)
    {
      v161 = *sub_5544(2);
      v162 = v161;
      if (v161)
      {
        v163 = v161;
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          if ((v258 & 1) == 0)
          {
            sub_1EC054();
          }

          sub_22170(&v278, v257);
          if ((v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v164 = &v278;
          }

          else
          {
            v164 = v278.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "VirtualAudio_PlugIn.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4284;
          *&buf[18] = 2080;
          *&buf[20] = v164;
          _os_log_impl(&dword_0, v163, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Applying device activation override: %s", buf, 0x1Cu);
          if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v278.__r_.__value_.__l.__data_);
          }
        }
      }
    }

    v165 = *(a2 + 112);
    v166 = v257;
    *(v165 + 476) = v258;
    *(v165 + 472) = v166;
  }

  if (!*a3)
  {
    v213 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v213, "Could not construct");
  }

  if (sub_D077C(*a3, "reporter IDs"))
  {
    std::mutex::lock((a2 + 296));
    if (*a3)
    {
      v167 = sub_4A4DC(*a3, "reporter IDs");
      if (v167)
      {
        v168 = v167;
        TypeID = CFArrayGetTypeID();
        if (TypeID == CFGetTypeID(v168))
        {
          v170 = CFArrayGetCount(v168);
          memset(buf, 0, 24);
          sub_121D8(buf, v170);
          if (v170 >= 1)
          {
            v171 = 0;
            v172 = v170 & 0x7FFFFFFF;
            v173 = *&buf[16];
            v174 = *&buf[8];
            v175 = *buf;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v168, v171);
              v177 = sub_45B7C(ValueAtIndex);
              if ((v178 & 1) == 0)
              {
                v208 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v208, "Could not convert");
              }

              v179 = v177;
              if (v174 >= v173)
              {
                v180 = v174 - v175;
                v181 = (v174 - v175) >> 3;
                v182 = v181 + 1;
                if ((v181 + 1) >> 61)
                {
                  sub_189A00();
                }

                if ((v173 - v175) >> 2 > v182)
                {
                  v182 = (v173 - v175) >> 2;
                }

                if (v173 - v175 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v183 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v183 = v182;
                }

                if (v183)
                {
                  sub_1E2544(v183);
                }

                v184 = (8 * v181);
                v173 = 0;
                *v184 = v179;
                v174 = v184 + 1;
                memcpy(0, v175, v180);
                if (v175)
                {
                  operator delete(v175);
                }

                v175 = 0;
              }

              else
              {
                *v174++ = v177;
              }

              ++v171;
            }

            while (v172 != v171);
            *&buf[16] = v173;
            *&buf[8] = v174;
            *buf = v175;
          }

          v185 = (a2 + 360);
          v186 = *(a2 + 360);
          if (v186)
          {
            *(a2 + 368) = v186;
            operator delete(v186);
            *v185 = 0;
            *(a2 + 368) = 0;
            *(a2 + 376) = 0;
          }

          v187 = *buf;
          *v185 = *buf;
          *(a2 + 376) = *&buf[16];
          v188 = *(&v187 + 1);
          for (n = v187; n != v188; ++n)
          {
            v190 = *n;
            v191 = *sub_5544(2);
            v192 = v191;
            if (v191 && os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              *&buf[4] = "VirtualAudio_PlugIn.mm";
              *&buf[12] = 1024;
              *&buf[14] = 8238;
              *&buf[18] = 2048;
              *&buf[20] = v190;
              _os_log_impl(&dword_0, v192, OS_LOG_TYPE_INFO, "%25s:%-5d Client set reporter ID: %lld", buf, 0x1Cu);
            }
          }

          std::mutex::unlock((a2 + 296));
          goto LABEL_383;
        }

        v227 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v227, "Could not convert");
      }

      else
      {
        v227 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v227, "Could not find item");
      }
    }

    else
    {
      v227 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v227, "Could not construct");
    }
  }

LABEL_383:
  v193 = *(a2 + 112);
  sub_AEEB4(&v278, *(a2 + 120));
  sub_BE918(buf, v193, &v237, &v284, &v278);
  sub_256828(v233, buf);
  if (v282 == 1)
  {
    sub_175F78(&buf[24]);
  }

  sub_76304(&v278);
  *(a2 + 472) = v260;
  *(a2 + 476) = v261;
  v194 = v262;
  v195 = v263;
  if (v263)
  {
    atomic_fetch_add_explicit((v263 + 16), 1uLL, memory_order_relaxed);
  }

  v196 = *(a2 + 488);
  *(a2 + 480) = v194;
  *(a2 + 488) = v195;
  if (v196)
  {
    std::__shared_weak_count::__release_weak(v196);
  }

  v197 = v264;
  v198 = v265;
  if (v265)
  {
    atomic_fetch_add_explicit((v265 + 16), 1uLL, memory_order_relaxed);
  }

  v199 = *(a2 + 504);
  *(a2 + 496) = v197;
  *(a2 + 504) = v198;
  if (v199)
  {
    std::__shared_weak_count::__release_weak(v199);
  }

  v200 = *sub_5544(2);
  v201 = v200;
  if (v200)
  {
    v202 = v200;
    if (os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
    {
      sub_D086C(&v278, (a2 + 472));
      v203 = (v278.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v278 : v278.__r_.__value_.__r.__words[0];
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4294;
      *&buf[18] = 2080;
      *&buf[20] = v203;
      _os_log_impl(&dword_0, v202, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Saving expanse info in VAPlugin: %s:", buf, 0x1Cu);
      if (SHIBYTE(v278.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v278.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_D0D94(v232, &v237);
  sub_3A9EAC(buf, v232);
  sub_3A9F5C(a1, v233, buf);
  sub_4AE8C(buf);
  sub_4AE8C(v232);
  sub_D169C(*(&v284 + 1));
  if (v234 == 1)
  {
    v65 = v233;
LABEL_403:
    sub_175F78(&v65[1]);
  }

LABEL_404:
  result = sub_4AE8C(&v237);
  if (v277)
  {
    result = v276;
    v205 = *(v275 + 8);
    v206 = *v276;
    *(v206 + 8) = v205;
    *v205 = v206;
    v277 = 0;
    while (result != &v275)
    {
      v207 = *(result + 8);
      sub_D16F0(result);
      result = v207;
    }
  }

  return result;
}

void sub_AEA70(_Unwind_Exception *a1)
{
  sub_4AE8C(&STACK[0x3D8]);
  sub_20BC1C(&STACK[0x720]);
  _Unwind_Resume(a1);
}

void *sub_AEE74(void *result, uint64_t a2)
{
  if (*(a2 + 143) < 0)
  {
    return sub_54A0(result, *(a2 + 120), *(a2 + 128));
  }

  *result = *(a2 + 120);
  result[2] = *(a2 + 136);
  return result;
}

void *sub_AEEB4(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  v2 = *(a2 + 16);
  if (v2 != (a2 + 24))
  {
    do
    {
      v3 = v2[5];
      if (*(v3 + 305) == 1)
      {
        sub_A4E68(&v7, v3 + 88);
        operator new();
      }

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a2 + 24));
  }

  return result;
}

void sub_AF140(CFArrayRef *a1, uint64_t a2, uint64_t a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v17 = sub_5544(14);
    v18 = sub_468EC(1, *v17, *(v17 + 8));
    v19 = v18;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PlugIn.mm";
      *&buf[12] = 1024;
      *&buf[14] = 5200;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: The routing mutex is not held by this thread.", buf, 0x12u);
    }
  }

  sub_88BA4(v28, a3);
  memset(v27, 0, sizeof(v27));
  v7 = *(a2 + 144);
  for (i = *(a2 + 152); v7 != i; ++v7)
  {
    sub_88840(v26, v28, *(*v7 + 388), 1);
    if ((*(**v7 + 128))())
    {
      v9 = sub_5544(2);
      if (*(v9 + 8))
      {
        v10 = *v9;
        if (v10)
        {
          v11 = v10;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v23 = *(*v7 + 384);
            sub_68108(&__p, &v23);
            v12 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            *buf = 136315650;
            *&buf[4] = "VirtualAudio_PlugIn.mm";
            *&buf[12] = 1024;
            *&buf[14] = 5211;
            *&buf[18] = 2080;
            *&buf[20] = v12;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d VAD %s is marked hidden, excluding from Device Descriptions", buf, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }
    }

    else
    {
      memset(buf, 0, 24);
      sub_88CE8(&__p, "persisted");
      __p.__r_.__value_.__l.__size_ = kCFBooleanTrue;
      sub_88E68(buf, &__p);
      if (__p.__r_.__value_.__l.__size_)
      {
        CFRelease(__p.__r_.__value_.__l.__size_);
      }

      if (__p.__r_.__value_.__r.__words[0])
      {
        CFRelease(__p.__r_.__value_.__l.__data_);
      }

      v13 = sub_9F278(*v7, 0);
      sub_44E44(&__p, v13);
      v14 = sub_47A88(__p.__r_.__value_.__l.__data_, &__p.__r_.__value_.__r.__words[1]);
      v21 = v14;
      sub_88F9C(&v23, &v21);
      sub_88E68(buf, &v23);
      if (v24[0])
      {
        CFRelease(v24[0]);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      v15 = sub_9F278(*v7, 1);
      sub_44E44(&v23, v15);
      v16 = sub_47A88(v23, v24);
      v20 = v16;
      sub_88FE8(&v21, &v20);
      sub_88E68(buf, &v21);
      if (v22)
      {
        CFRelease(v22);
      }

      if (v21)
      {
        CFRelease(v21);
      }

      if (v16)
      {
        CFRelease(v16);
      }

      sub_75A50(&v21, *v7, v26, buf);
      sub_75F38(v27, &v21);
      if (v21)
      {
        CFRelease(v21);
      }

      sub_477A0(v24[0]);
      sub_477A0(__p.__r_.__value_.__l.__size_);
      __p.__r_.__value_.__r.__words[0] = buf;
      sub_65830(&__p);
    }

    if (v26[0])
    {
      v26[1] = v26[0];
      operator delete(v26[0]);
    }
  }

  *a1 = sub_76110(v27);
  *buf = v27;
  sub_761AC(buf);
  sub_7624C(v28[1]);
}

void sub_AF54C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  *(v30 - 144) = &a26;
  sub_761AC((v30 - 144));
  sub_7624C(a30);
  _Unwind_Resume(a1);
}

uint64_t sub_AF680(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
LABEL_5:
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RouteUtilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1020;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): No Default VAD found in list of concrete routes", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "No Default VAD found in list of concrete routes");
  }

  while (1)
  {
    v5 = *v3;
    if (!*(*v3 + 4) && *v5 == 1986291046)
    {
      break;
    }

    if (++v3 == v4)
    {
      goto LABEL_5;
    }
  }

  v9 = v5 + 16;
  v10 = *(v5 + 24);
  memset(__p, 0, 24);
  v11 = 0uLL;
  if (v10 == v5 + 16)
  {
    v17 = 0;
  }

  else
  {
    do
    {
      memset(buf, 0, 24);
      *&v30 = buf;
      BYTE8(v30) = 0;
      v12 = __p[1] - __p[0];
      if (__p[1] != __p[0])
      {
        if (!((v12 >> 4) >> 60))
        {
          sub_1DC690(v12 >> 4);
        }

        sub_189A00();
      }

      sub_25704(&v30, (v10 + 32), "", 1026);
      v13 = *(v30 + 144);
      if (*(&v30 + 1))
      {
        sub_1A8C0(*(&v30 + 1));
      }

      if (v13 != 1885433888)
      {
        sub_B0148(buf, (v10 + 32));
      }

      v30 = *buf;
      v31 = *&buf[16];
      v32 = buf;
      memset(buf, 0, 24);
      sub_86D0C(&v32);
      if (__p[0])
      {
        v14 = __p[1];
        v15 = __p[0];
        if (__p[1] != __p[0])
        {
          do
          {
            v16 = *(v14 - 1);
            if (v16)
            {
              std::__shared_weak_count::__release_weak(v16);
            }

            v14 -= 16;
          }

          while (v14 != __p[0]);
          v15 = __p[0];
        }

        __p[1] = __p[0];
        operator delete(v15);
      }

      *__p = v30;
      __p[2] = v31;
      v31 = 0;
      v30 = 0uLL;
      *buf = &v30;
      sub_86D0C(buf);
      v10 = *(v10 + 8);
    }

    while (v10 != v9);
    v11 = *__p;
    v17 = __p[2];
  }

  v27 = v11;
  v28 = v17;
  memset(__p, 0, 24);
  *buf = __p;
  sub_86D0C(buf);
  v18 = v27;
  if (v27 != *(&v27 + 1))
  {
    while (1)
    {
      v19 = v18[1];
      *&v30 = *v18;
      *(&v30 + 1) = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_25704(buf, &v30, "", 919);
      v20 = *(*buf + 144);
      if (v20 == 1885892674)
      {
        break;
      }

      if (v20 == 1886152047)
      {
        if (sub_10AA80())
        {
          v22 = 0;
        }

        else
        {
          v23 = sub_8703C();
          v22 = (*(*v23 + 96))(v23) != 0;
        }

        goto LABEL_47;
      }

      if (v20 == 1886613611)
      {
        if (!_os_feature_enabled_impl() || !sub_45168())
        {
          v21 = MGGetSInt32Answer() == 7;
          goto LABEL_41;
        }

LABEL_46:
        v22 = 1;
        goto LABEL_47;
      }

      v22 = sub_10AA80() ^ 1;
LABEL_47:
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      v18 += 2;
      if (v18 == *(&v27 + 1))
      {
        v24 = 0;
      }

      else
      {
        v24 = v22;
      }

      if ((v24 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    if (((*(**buf + 112))(*buf) & 0x1FFFFFFFFLL) != 0x165707370 || sub_10AA80())
    {
      v21 = *a3 == 1667657057;
LABEL_41:
      v22 = v21;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v22 = 1;
LABEL_57:
  *buf = &v27;
  sub_86D0C(buf);
  return v22;
}

void sub_AFB00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_1A8C0(a24);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  a15 = &a11;
  sub_86D0C(&a15);
  _Unwind_Resume(a1);
}

CFArrayRef sub_AFB90(int **a1)
{
  v2 = a1[1] - *a1;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_47A08(&v12, v2);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = v13;
    do
    {
      v6 = *v3;
      if (v5 >= v14)
      {
        v7 = (v5 - v12) >> 3;
        if ((v7 + 1) >> 61)
        {
          sub_189A00();
        }

        v8 = (v14 - v12) >> 2;
        if (v8 <= v7 + 1)
        {
          v8 = v7 + 1;
        }

        if (v14 - v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        v18 = &v12;
        if (v9)
        {
          sub_1DB8DC(v9);
        }

        v15[0] = 0;
        v15[1] = (8 * v7);
        v16 = 8 * v7;
        v17 = 0;
        sub_B05D4((8 * v7), v6);
        v16 += 8;
        sub_49FBC(&v12, v15);
        v5 = v13;
        sub_4A06C(v15);
      }

      else
      {
        sub_B05D4(v5++, *v3);
      }

      v13 = v5;
      ++v3;
    }

    while (v3 != v4);
  }

  v10 = sub_477F0(&v12);
  v15[0] = &v12;
  sub_47988(v15);
  return v10;
}

void sub_AFCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13)
{
  a13 = &a10;
  sub_47988(&a13);
  _Unwind_Resume(a1);
}

void sub_AFD28(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_189A00();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1D7C28(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_AFE00(os_signpost_id_t *a1)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_BuiltInPorts", 0xFuLL) != &qword_709F00)
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
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VA_BuiltInPorts", "Query for kVirtualAudioPlugInPropertyBuiltInPortsForCategory", &v8, 2u);
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
        v11 = 57;
        v12 = 2080;
        v13 = "kBuiltInPorts";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v8, 0x1Cu);
      }
    }
  }
}

uint64_t sub_B0014(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  result = 0;
  v5 = *(a3 + 4);
  if (v5 <= 1987077986)
  {
    v6 = v5 == 1768057203;
    v7 = 1919776355;
  }

  else
  {
    v6 = v5 == 1987077987 || v5 == 1987081833;
    v7 = 1987081839;
  }

  if (!v6 && v5 != v7)
  {
    v9 = *a2;
    v10 = a2[1];
    if (*a2 == v10)
    {
LABEL_18:
      if (v5 == 1987208039 && sub_9C594(1885892674, v9, v10))
      {
        if (sub_343EB8(1701869160, *a2, a2[1]))
        {
          return sub_111E54() == 2;
        }

        else
        {
          v12 = *a2;
          v13 = a2[1];

          return sub_343EB8(1701868400, v12, v13);
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v11 = *a2;
      while (*(*v11 + 4) || **v11 != 1987277417)
      {
        if (++v11 == v10)
        {
          goto LABEL_18;
        }
      }

      return 0;
    }
  }

  return result;
}

size_t *sub_B0148(size_t *result, __int128 *a2)
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
      atomic_fetch_add_explicit((*(&v12 + 1) + 16), 1uLL, memory_order_relaxed);
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
    result = sub_B1540(v17);
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  v2[1] = v6;
  return result;
}

void sub_B0258(void *a1, void *a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  sub_B0484(&v10, a2);
  for (i = v11; i != &v10; i = i[1])
  {
    v3 = i[2];
    if (v3 && sub_346E54(i[2]))
    {
      v4 = *(v3 + 192);
      v5 = *(v3 + 200);
      v12[0] = v4;
      v12[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_5659C(&v13, v12, "", 762);
      v6 = v13;
      v17 = 0x676C6F627773676ELL;
      v18 = 0;
      if ((*(*v13 + 16))(v13, &v17))
      {
        v15 = 4;
        v16 = 0;
        v17 = 0x676C6F627773676ELL;
        v18 = 0;
        (*(*v6 + 40))(v6, &v17, 0, 0, &v15, &v16);
        v7 = v16 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v14)
      {
        sub_1A8C0(v14);
      }

      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      if (v7)
      {
        v9 = i[2];
        v8 = i[3];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
        }

        operator new();
      }
    }
  }

  sub_87980(&v10);
}

void sub_B0484(uint64_t *a1, void *a2)
{
  v14 = &v14;
  v15 = &v14;
  v16 = 0;
  v3 = a2[1];
  if (v3 == a2)
  {
    *a1 = a1;
    a1[1] = a1;
    v5 = a1 + 2;
    goto LABEL_12;
  }

  v5 = &v16;
  do
  {
    v6 = v3[3];
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        if (v3[2])
        {
          operator new();
        }

        sub_1A8C0(v7);
      }
    }

    v3 = v3[1];
  }

  while (v3 != a2);
  v8 = v16;
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (v8)
  {
    v10 = v14;
    v9 = v15;
    v11 = *(v14 + 8);
    v12 = *v15;
    *(v12 + 8) = v11;
    *v11 = v12;
    v13 = *a1;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a1 = v10;
    *(v10 + 8) = a1;
    a1[2] = v8;
LABEL_12:
    *v5 = 0;
  }

  sub_87980(&v14);
}

void sub_B05B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A8C0(v2);
  sub_87980(va);
  _Unwind_Resume(a1);
}

CFNumberRef sub_B05D4(CFNumberRef *a1, int a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

os_signpost_id_t *sub_B0680(os_signpost_id_t *a1)
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
        v12 = 57;
        v13 = 2080;
        v14 = "kBuiltInPorts";
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
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_BuiltInPorts", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_B0828(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_B0848(uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void *sub_B0954(void *result, CFDictionaryRef theDict, int a3, const void **a4)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v8 = Count;
    if (Count >= 1)
    {
      v32[1] = v32;
      v9 = 8 * Count;
      __chkstk_darwin(Count);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = (v32 - v10);
      if (v9 >= 0x200)
      {
        v12 = 512;
      }

      else
      {
        v12 = 8 * v8;
      }

      bzero(v32 - v10, v12);
      v13 = (v32 - v10);
      __chkstk_darwin(v14);
      v15 = v32 - v10;
      bzero(v15, v12);
      v34 = v15;
      CFDictionaryGetKeysAndValues(theDict, v11, v15);
      v33 = a3 - 1;
      if (a3 >= 2)
      {
        v16 = CFGetTypeID(*v34);
        if (CFArrayGetTypeID() == v16 || CFDictionaryGetTypeID() == v16)
        {
          if (*(a4 + 23) >= 0)
          {
            v17 = *(a4 + 23);
          }

          else
          {
            v17 = a4[1];
          }

          sub_B0848(&v36, v17 + 2);
          if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v36;
          }

          else
          {
            v18 = v36.__r_.__value_.__r.__words[0];
          }

          if (v17)
          {
            if (*(a4 + 23) >= 0)
            {
              v19 = a4;
            }

            else
            {
              v19 = *a4;
            }

            memmove(v18, v19, v17);
          }

          strcpy(v18 + v17, "- ");
          sub_B0F60(&v35, *v13);
          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v35;
          }

          else
          {
            v20 = v35.__r_.__value_.__r.__words[0];
          }

          if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v35.__r_.__value_.__l.__size_;
          }

          std::string::append(&v36, v20, size);
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          std::string::append(&v36, ":", 1uLL);
          sub_B08D4();
        }
      }

      if (*(a4 + 23) >= 0)
      {
        v22 = *(a4 + 23);
      }

      else
      {
        v22 = a4[1];
      }

      sub_B0848(&v36, v22 + 2);
      if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v36;
      }

      else
      {
        v23 = v36.__r_.__value_.__r.__words[0];
      }

      if (v22)
      {
        if (*(a4 + 23) >= 0)
        {
          v24 = a4;
        }

        else
        {
          v24 = *a4;
        }

        memmove(v23, v24, v22);
      }

      strcpy(v23 + v22, "- ");
      sub_B0F60(&v35, *v13);
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

      std::string::append(&v36, v25, v26);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      std::string::append(&v36, ": ", 2uLL);
      sub_B0F60(&v35, *v34);
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v35;
      }

      else
      {
        v27 = v35.__r_.__value_.__r.__words[0];
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v35.__r_.__value_.__l.__size_;
      }

      std::string::append(&v36, v27, v28);
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v35.__r_.__value_.__l.__data_);
      }

      sub_B08D4();
    }

    if (*(a4 + 23) >= 0)
    {
      v29 = *(a4 + 23);
    }

    else
    {
      v29 = a4[1];
    }

    v30 = &v36;
    sub_B0848(&v36, v29 + 22);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v30 = v36.__r_.__value_.__r.__words[0];
    }

    if (v29)
    {
      if (*(a4 + 23) >= 0)
      {
        v31 = a4;
      }

      else
      {
        v31 = *a4;
      }

      memmove(v30, v31, v29);
    }

    strcpy(v30 + v29, "- < empty dictionary >");
    sub_B08D4();
  }

  return result;
}

void sub_B0EB0(_Unwind_Exception *a1)
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  sub_20BC1C(v1);
  _Unwind_Resume(a1);
}

std::string *sub_B0F60(std::string *result, const __CFString *cf)
{
  v2 = result;
  if (!cf)
  {
    result->__r_.__value_.__r.__words[0] = 0;
    result->__r_.__value_.__l.__size_ = 0;
    result->__r_.__value_.__r.__words[2] = 0;
    return result;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {

    return sub_B1190(v2, cf);
  }

  if (v4 == CFArrayGetTypeID())
  {

    return sub_B13D8(v2, cf);
  }

  if (v4 == CFNumberGetTypeID())
  {
    ByteSize = CFNumberGetByteSize(cf);
    if (ByteSize == 8)
    {
      valuePtr = 0;
      if (!CFNumberGetValue(cf, kCFNumberSInt64Type, &valuePtr) || HIDWORD(valuePtr))
      {
        goto LABEL_28;
      }
    }

    else if (ByteSize != 4)
    {
LABEL_28:
      valuePtr = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@", cf);
      v8 = 1;
      sub_48540(v2, valuePtr);
      return sub_BDC5C(&valuePtr);
    }

    LODWORD(valuePtr) = 0;
    if (CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr))
    {
      return sub_22170(v2, valuePtr);
    }

    goto LABEL_28;
  }

  if (v4 == CFStringGetTypeID())
  {

    return sub_48540(v2, cf);
  }

  else if (v4 == CFBooleanGetTypeID())
  {

    return sub_186964(v2, cf);
  }

  else
  {
    v6 = CFCopyDescription(cf);
    sub_BCB34(&valuePtr, v6);
    sub_48540(v2, valuePtr);
    return sub_452F0(&valuePtr);
  }
}

void sub_B116C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_452F0(va);
  _Unwind_Resume(a1);
}

std::string *sub_B1190(std::string *a1, const __CFDictionary *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  if (a2)
  {
    Count = CFDictionaryGetCount(a2);
    __chkstk_darwin(Count);
    v5 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (&v15 - v5);
    v7 = (8 * Count) >= 0x200 ? 512 : 8 * Count;
    bzero(&v15 - v5, v7);
    __chkstk_darwin(v8);
    v9 = (&v15 - v5);
    bzero(&v15 - v5, v7);
    CFDictionaryGetKeysAndValues(a2, (&v15 - v5), (&v15 - v5));
    if (Count >= 1)
    {
      do
      {
        sub_B0F60(&v15, *v6);
        if ((v17 & 0x80u) == 0)
        {
          v10 = &v15;
        }

        else
        {
          v10 = v15;
        }

        if ((v17 & 0x80u) == 0)
        {
          v11 = v17;
        }

        else
        {
          v11 = v16;
        }

        std::string::append(a1, v10, v11);
        if (v17 < 0)
        {
          operator delete(v15);
        }

        std::string::append(a1, ": ", 2uLL);
        sub_B0F60(&v15, *v9);
        if ((v17 & 0x80u) == 0)
        {
          v12 = &v15;
        }

        else
        {
          v12 = v15;
        }

        if ((v17 & 0x80u) == 0)
        {
          v13 = v17;
        }

        else
        {
          v13 = v16;
        }

        std::string::append(a1, v12, v13);
        if (v17 < 0)
        {
          operator delete(v15);
        }

        if (Count != 1)
        {
          std::string::append(a1, "; ", 2uLL);
        }

        ++v9;
        ++v6;
        --Count;
      }

      while (Count);
    }
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_B1390(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_B13D8(std::string *a1, const __CFArray *a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v5 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
        sub_B0F60(&__p, ValueAtIndex);
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

        if (Count != 1)
        {
          std::string::append(a1, ", ", 2uLL);
        }

        ++v5;
        --Count;
      }

      while (Count);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_B14D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_B1514(_BYTE *result)
{
  result[128] = 0;
  result[132] = 0;
  result[136] = 0;
  result[140] = 0;
  result[624] = 0;
  result[628] = 0;
  result[632] = 0;
  result[636] = 0;
  return result;
}

uint64_t sub_B1540(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
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

uint64_t sub_B15A0()
{
  if ((atomic_load_explicit(&qword_6E9C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E9C48))
  {
    if ((sub_48EDC() & 1) == 0 && !sub_1FB17C() || (sub_7E96C() & 1) == 0)
    {
      v1 = _os_feature_enabled_impl();
      if (!v1)
      {
        goto LABEL_13;
      }

      if (caulk::product::get_device_class(v1) != 3)
      {
        LOBYTE(v1) = 0;
        goto LABEL_13;
      }

      if ((sub_48EDC() & 1) == 0)
      {
        LOBYTE(v1) = sub_1FB17C();
        goto LABEL_13;
      }
    }

    LOBYTE(v1) = 1;
LABEL_13:
    byte_6E9C40 = v1;
    __cxa_guard_release(&qword_6E9C48);
  }

  return byte_6E9C40;
}

void sub_B1668(os_signpost_id_t *a1)
{
  if ((sub_231C4() & 1) != 0 || sub_23238("VA_ActiveNonWirelessPorts", 0x19uLL) != &qword_709F00)
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
      _os_signpost_emit_with_name_impl(&dword_0, v4, OS_SIGNPOST_INTERVAL_BEGIN, v2, "VA_ActiveNonWirelessPorts", "Query for kActiveNonWirelessPortsForRouteConfiguration", &v8, 2u);
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
        v11 = 54;
        v12 = 2080;
        v13 = "kActiveNonWirelessPorts";
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", &v8, 0x1Cu);
      }
    }
  }
}

BOOL sub_B187C(const __CFDictionary **a1)
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
          v16 = "kVirtualAudioPlugInPropertyActiveNonWirelessPortsForRouteConfiguration";
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

os_signpost_id_t *sub_B1A40(os_signpost_id_t *a1)
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
        v12 = 54;
        v13 = 2080;
        v14 = "kActiveNonWirelessPorts";
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
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_INTERVAL_END, v7, "VA_ActiveNonWirelessPorts", "", &v9, 2u);
    }
  }

  return a1;
}

void sub_B1BE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_B1BFC(uint64_t a1, int *a2)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "OutputVolumeControl_HAL_Common.cpp";
      v16 = 1024;
      v17 = 352;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  v3 = *a2;
  result = 4;
  if (*a2 <= 1936878959)
  {
    if (v3 <= 1684633186)
    {
      if (v3 > 1668705647)
      {
        if (v3 == 1668705648)
        {
          return result;
        }

        v5 = 1684157046;
        goto LABEL_31;
      }

      if (v3 == 1064725619)
      {
        return result;
      }

      if (v3 == 1668443504)
      {
        return 2;
      }
    }

    else
    {
      if (v3 > 1836414052)
      {
        if (v3 == 1836414053)
        {
          return result;
        }

        if (v3 == 1918987632)
        {
          return 24;
        }

        v5 = 1919774835;
        goto LABEL_31;
      }

      if (v3 == 1684633187)
      {
        return result;
      }

      if (v3 == 1685484390)
      {
        v7 = sub_5544(19);
        v8 = *v7;
        if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315394;
          v15 = "OutputVolumeControl_HAL_Common.cpp";
          v16 = 1024;
          v17 = 393;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting scalar factor property size", &v14, 0x12u);
        }

        return 8;
      }
    }
  }

  else
  {
    if (v3 <= 1986229103)
    {
      if (v3 > 1983013985)
      {
        if (v3 == 1983013986)
        {
          return result;
        }

        if (v3 != 1986098020)
        {
          v5 = 1986225518;
          goto LABEL_31;
        }

        return 8;
      }

      if (v3 == 1936878960)
      {
        return result;
      }

      v5 = 1937208929;
LABEL_31:
      if (v3 == v5)
      {
        return result;
      }

      goto LABEL_38;
    }

    if (v3 <= 1986817376)
    {
      if (v3 == 1986229104)
      {
        return result;
      }

      v6 = 1986290211;
    }

    else
    {
      if (v3 == 1986817377 || v3 == 1987013741)
      {
        return result;
      }

      v6 = 2021027692;
    }

    if (v3 == v6)
    {
      return 16;
    }
  }

LABEL_38:
  v9 = sub_5544(14);
  v10 = *v9;
  if (*v9)
  {
    result = os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v14 = 136315394;
    v15 = "OutputVolumeControl_HAL_Common.cpp";
    v16 = 1024;
    v17 = 402;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: HasProperty() returned true, but I do not know about it.", &v14, 0x12u);
  }

  return 0;
}

void sub_B1FC8(uint64_t a1, unsigned int *a2, uint64_t a3, double *a4, int *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v96 = sub_5544(14);
    v97 = *v96;
    if (*v96 && os_log_type_enabled(*v96, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 412;
      _os_log_impl(&dword_0, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError): Unsupported selector, scope, or element", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((*(*a1 + 32))(a1, a2, a3, a4) > *a5)
  {
    v99 = sub_5544(14);
    v100 = *v99;
    if (*v99 && os_log_type_enabled(*v99, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 413;
      _os_log_impl(&dword_0, v100, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): Data size insufficient.", buf, 0x12u);
    }

    v101 = __cxa_allocate_exception(0x10uLL);
    *v101 = &off_6DDDD0;
    v101[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 <= 1936878959)
  {
    if (v13 <= 1684633186)
    {
      if (v13 > 1668705647)
      {
        if (v13 != 1668705648)
        {
          if (v13 == 1684157046)
          {
            v19 = *(a1 + 704);
            if (v19)
            {
              v20 = std::__shared_weak_count::lock(v19);
              if (v20)
              {
                v21 = v20;
                v22 = *(a1 + 696);
                if (v22)
                {
                  v23 = (*(*v22 + 240))(*(a1 + 696));
                  v24 = *v22;
                  if (v23)
                  {
                    (*(v24 + 256))(v22);
                  }

                  else if ((*(v24 + 288))(v22))
                  {
                    v86 = sub_5544(19);
                    v87 = *v86;
                    if (*v86 && os_log_type_enabled(*v86, OS_LOG_TYPE_INFO))
                    {
                      v88 = *a6;
                      *buf = 136315650;
                      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 453;
                      v115 = 2048;
                      v116 = v88;
                      _os_log_impl(&dword_0, v87, OS_LOG_TYPE_INFO, "%25s:%-5d Request to convert %f dB to scalar.", buf, 0x1Cu);
                    }

                    v89 = (*(*v22 + 296))(v22, *a6);
                    sub_B3FA4(a5, a6, v89);
                    goto LABEL_189;
                  }
                }

                sub_1A8C0(v21);
              }
            }

            v18 = sub_E9780(a1 + 632, *a6);
            goto LABEL_164;
          }

          goto LABEL_99;
        }

        sub_5659C(&__p, (a1 + 504), "", 618);
        sub_2FA17C(buf, __p);
        if (*(&__p + 1))
        {
          sub_1A8C0(*(&__p + 1));
        }

        if (buf[8] == 1)
        {
          if (!*buf)
          {
            v107 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v107, "Could not construct");
          }

          v40 = CFArrayGetCount(*buf) != 0;
          if (*buf)
          {
            CFRelease(*buf);
          }
        }

        else
        {
          sub_5659C(&__p, (a1 + 504), "", 622);
          *&v110 = 0x676C6F627472616ELL;
          DWORD2(v110) = 0;
          v59 = sub_59410(__p);
          *(&v62 + 1) = v60;
          *&v62 = v59;
          v61 = v62 >> 32;
          if (*(&__p + 1))
          {
            sub_1A8C0(*(&__p + 1));
          }

          v40 = (v61 & 0x100000000) != 0 && v61 == 1651274862;
        }

        sub_5440C(v40, a5, a6);
        return;
      }

      if (v13 != 1064725619)
      {
        if (v13 == 1668443504)
        {
          goto LABEL_34;
        }

        goto LABEL_99;
      }

      sub_5659C(buf, (a1 + 504), "", 507);
      LODWORD(__p) = 1064725619;
      *(&__p + 4) = *(a1 + 544);
      v39 = *buf;
      if ((*(**buf + 16))(*buf, &__p))
      {
LABEL_68:
        (*(*v39 + 40))(v39, &__p, a3, a4, a5, a6);
        goto LABEL_134;
      }

      goto LABEL_113;
    }

    if (v13 > 1836414052)
    {
      if (v13 != 1836414053)
      {
        if (v13 == 1918987632)
        {
          goto LABEL_34;
        }

        if (v13 != 1919774835)
        {
          goto LABEL_99;
        }

        std::recursive_mutex::lock((a1 + 800));
        v14 = sub_5544(42);
        v15 = *v14;
        if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEBUG))
        {
          sub_22170(&__p, 0x726D7073u);
          v16 = v113 >= 0 ? COERCE_DOUBLE(&__p) : *&__p;
          v17 = *(a1 + 868) ? "" : "in";
          *buf = 136315906;
          *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 609;
          v115 = 2080;
          v116 = v16;
          v117 = 2080;
          v118 = *&v17;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::GetPropertyData() - %s volume ramp is %sactive.", buf, 0x26u);
          if (v113 < 0)
          {
            operator delete(__p);
          }
        }

        sub_5440C(*(a1 + 868), a5, a6);
        std::recursive_mutex::unlock((a1 + 800));
        return;
      }

      v41 = *(a1 + 725);
LABEL_152:

      sub_5440C(v41, a5, a6);
      return;
    }

    if (v13 == 1684633187)
    {
      v41 = 0;
      goto LABEL_152;
    }

    if (v13 != 1685484390)
    {
      goto LABEL_99;
    }

    v25 = *(a1 + 680) - 1;
    v26 = sub_5544(19);
    v27 = v26;
    if (v25 > 1)
    {
      v55 = sub_5544(39);
      v56 = 0;
      *buf = 0x100000002;
      v57 = *(v27 + 8);
      while (1)
      {
        v58 = *&buf[v56];
        if (((v57 & v58) != 0) != ((*(v55 + 8) & v58) != 0))
        {
          break;
        }

        v56 += 4;
        if (v56 == 8)
        {
          goto LABEL_120;
        }
      }

      if ((v57 & v58) == 0)
      {
        v27 = v55;
      }

LABEL_120:
      v65 = *v27;
      if (v65 && os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v66 = COERCE_DOUBLE(&__p);
        sub_22170(&__p, *a2);
        if (v113 < 0)
        {
          v66 = *&__p;
        }

        sub_5659C(&v108, (a1 + 504), "", 582);
        sub_23148(&v110, v108 + 2);
        if (v111 >= 0)
        {
          v67 = &v110;
        }

        else
        {
          v67 = v110;
        }

        *buf = 136315906;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 582;
        v115 = 2080;
        v116 = v66;
        v117 = 2080;
        v118 = *&v67;
        _os_log_impl(&dword_0, v65, OS_LOG_TYPE_INFO, "%25s:%-5d Hardware volume mode: Forwarding property (%s) request to device on VAD '%s'.", buf, 0x26u);
        if (v111 < 0)
        {
          operator delete(v110);
        }

        if (v109)
        {
          sub_1A8C0(v109);
        }

        if (v113 < 0)
        {
          operator delete(__p);
        }
      }

      sub_5659C(buf, (a1 + 504), "", 584);
      (*(**buf + 40))(*buf, a2, a3, a4, a5, a6);
LABEL_134:
      v68 = *&buf[8];
      if (!*&buf[8])
      {
        return;
      }

      goto LABEL_190;
    }

    v28 = *v26;
    if (*v26 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(&__p, *a2);
      v29 = v113 >= 0 ? COERCE_DOUBLE(&__p) : *&__p;
      *buf = 136315650;
      *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 536;
      v115 = 2080;
      v116 = v29;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Software volume mode: calculating %s in-house", buf, 0x1Cu);
      if (v113 < 0)
      {
        operator delete(__p);
      }
    }

    if (a3 != 8)
    {
      v104 = sub_5544(14);
      v105 = *v104;
      if (*v104 && os_log_type_enabled(*v104, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 537;
        _os_log_impl(&dword_0, v105, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v106 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v106, "Precondition failure.");
    }

    v30 = *a4;
    v31 = *(a1 + 704);
    if (v31)
    {
      v21 = std::__shared_weak_count::lock(v31);
      if (v21)
      {
        v32 = *(a1 + 696);
        goto LABEL_138;
      }
    }

    else
    {
      v21 = 0;
    }

    v32 = 0;
LABEL_138:
    v69 = *(a1 + 712);
    v70 = 0.0;
    if (v69 <= 0.0)
    {
      goto LABEL_188;
    }

    if (v32 && (v71 = (*(*v32 + 288))(v32), v69 = *(a1 + 712), v71))
    {
      v72 = v30 - (*(*v32 + 304))(v32, *(a1 + 712));
      v70 = __exp10(v72 / 20.0);
      v73 = sub_5544(19);
      v74 = sub_5544(39);
      v75 = 0;
      *buf = 0x100000002;
      v76 = *(v73 + 8);
      while (1)
      {
        v77 = *&buf[v75];
        if (((v76 & v77) != 0) != ((*(v74 + 8) & v77) != 0))
        {
          break;
        }

        v75 += 4;
        if (v75 == 8)
        {
          goto LABEL_178;
        }
      }

      if ((v76 & v77) == 0)
      {
        v73 = v74;
      }

LABEL_178:
      v90 = *v73;
      if (v90 && os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v94 = *(a1 + 712);
        sub_5659C(&v110, (a1 + 504), "", 553);
        sub_23148(&__p, (v110 + 8));
        if (v113 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *buf = 136316674;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 553;
        v115 = 2048;
        v116 = v70;
        v117 = 2048;
        v118 = v30;
        v119 = 2048;
        v120 = v94;
        v121 = 2048;
        v122 = v72;
        v123 = 2080;
        v124 = p_p;
        v93 = "%25s:%-5d Calculated required attenuation of %f for requested DB %f and current scalar volume %f required attenuation in dB %f on VAD '%s'.";
LABEL_184:
        _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, v93, buf, 0x44u);
        if (v113 < 0)
        {
          operator delete(__p);
        }

        if (*(&v110 + 1))
        {
          sub_1A8C0(*(&v110 + 1));
        }
      }
    }

    else
    {
      v78 = v30;
      v79 = sub_E9780(a1 + 584, v78);
      v80 = sub_5544(19);
      v81 = sub_5544(39);
      v82 = 0;
      v83 = v79;
      *buf = 0x100000002;
      v84 = *(v80 + 8);
      v70 = v79 / v69;
      while (1)
      {
        v85 = *&buf[v82];
        if (((v84 & v85) != 0) != ((*(v81 + 8) & v85) != 0))
        {
          break;
        }

        v82 += 4;
        if (v82 == 8)
        {
          goto LABEL_169;
        }
      }

      if ((v84 & v85) == 0)
      {
        v80 = v81;
      }

LABEL_169:
      v90 = *v80;
      if (v90 && os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(a1 + 712);
        sub_5659C(&v110, (a1 + 504), "", 565);
        sub_23148(&__p, (v110 + 8));
        if (v113 >= 0)
        {
          v92 = &__p;
        }

        else
        {
          v92 = __p;
        }

        *buf = 136316674;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 565;
        v115 = 2048;
        v116 = v70;
        v117 = 2048;
        v118 = v30;
        v119 = 2048;
        v120 = v91;
        v121 = 2048;
        v122 = v83;
        v123 = 2080;
        v124 = v92;
        v93 = "%25s:%-5d Calculated scalar factor of %f for requested DB %f and current scalar volume %f requested scalar volume %f on VAD '%s'.";
        goto LABEL_184;
      }
    }

LABEL_188:
    v108 = *&v70;
    *buf = 0;
    *&__p = 0x3FF0000000000000;
    *a6 = *sub_592D8(buf, &v108, &__p);
    *a5 = 8;
    if (!v21)
    {
      return;
    }

    goto LABEL_189;
  }

  if (v13 > 1986229103)
  {
    if (v13 > 1986817376)
    {
      switch(v13)
      {
        case 1986817377:
          goto LABEL_30;
        case 2021027692:
          goto LABEL_34;
        case 1987013741:
LABEL_30:
          v18 = *(a1 + 712);
LABEL_164:

          sub_B3FA4(a5, a6, v18);
          return;
      }

      goto LABEL_99;
    }

    if (v13 != 1986229104)
    {
      if (v13 != 1986290211)
      {
        goto LABEL_99;
      }

      v12 = *a5;
      if (v12 != (*(*a1 + 32))(a1, a2, 0, 0))
      {
        v102 = sub_5544(14);
        if (*v102 && os_log_type_enabled(*v102, OS_LOG_TYPE_ERROR))
        {
          *&v110 = *a2;
          DWORD2(v110) = a2[2];
          sub_22CE0(&__p);
        }

        v103 = __cxa_allocate_exception(0x10uLL);
        *v103 = &off_6DDDD0;
        v103[2] = 561211770;
      }

      if (*(a1 + 608))
      {
        v38 = *(*(a1 + 592) + 36);
      }

      else
      {
        v38 = 0.0;
      }

      *a6 = v38;
      v64 = sub_59224(a1 + 584);
      *(a6 + 1) = *&v64;
      return;
    }

    if (*(a1 + 680) || *(a1 + 736))
    {
      v41 = 1;
      goto LABEL_152;
    }

    sub_5659C(buf, (a1 + 504), "", 481);
    LODWORD(__p) = 1986229104;
    *(&__p + 4) = *(a1 + 544);
    v39 = *buf;
    if ((*(**buf + 16))(*buf, &__p))
    {
      goto LABEL_68;
    }

LABEL_113:
    LODWORD(v110) = 1987013732;
    *(&v110 + 4) = *(a1 + 544);
    v63 = (*(*v39 + 16))(v39, &v110);
    sub_5440C(v63, a5, a6);
    goto LABEL_134;
  }

  if (v13 > 1983013985)
  {
    if (v13 != 1983013986)
    {
      if (v13 != 1986098020)
      {
        if (v13 == 1986225518)
        {
          *a6 = *(a1 + 784);
          *a5 = 4;
          return;
        }

        goto LABEL_99;
      }

LABEL_34:
      *a5 = 0;
      return;
    }

    v42 = *(a1 + 704);
    if (v42)
    {
      v43 = std::__shared_weak_count::lock(v42);
      if (v43)
      {
        v21 = v43;
        v44 = *(a1 + 696);
        if (v44 && (*(*v44 + 288))(*(a1 + 696)))
        {
          v45 = sub_5544(19);
          v46 = *v45;
          if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_INFO))
          {
            v47 = *a6;
            *buf = 136315650;
            *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 436;
            v115 = 2048;
            v116 = v47;
            _os_log_impl(&dword_0, v46, OS_LOG_TYPE_INFO, "%25s:%-5d Request to convert %f scalar to dB.", buf, 0x1Cu);
          }

          v48 = (*(*v44 + 304))(v44, *a6);
          sub_B3FA4(a5, a6, v48);
LABEL_189:
          v68 = v21;
LABEL_190:
          sub_1A8C0(v68);
          return;
        }

        sub_1A8C0(v21);
      }
    }

    sub_5B898(a1 + 632, *a6);
    goto LABEL_164;
  }

  if (v13 != 1936878960)
  {
    if (v13 == 1937208929)
    {
      v33 = *(a1 + 704);
      if (v33 && (v34 = std::__shared_weak_count::lock(v33)) != 0)
      {
        v35 = v34;
        v36 = *(a1 + 696);
        if (v36)
        {
          v37 = (*(*v36 + 168))(v36);
        }

        else
        {
          v37 = 0;
        }

        sub_1A8C0(v35);
      }

      else
      {
        v37 = 0;
      }

      v41 = v37;
      goto LABEL_152;
    }

LABEL_99:
    v53 = sub_5544(14);
    v54 = *v53;
    if (*v53)
    {
      if (os_log_type_enabled(*v53, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 646;
        _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: GetPropertyDataSize() is correct and HasProperty() returned true, but I do not know about it.", buf, 0x12u);
      }
    }

    return;
  }

  v49 = sub_5544(42);
  v50 = *v49;
  if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_DEBUG))
  {
    sub_22170(&__p, 0x73726D70u);
    v51 = v113 >= 0 ? COERCE_DOUBLE(&__p) : *&__p;
    v52 = *(a1 + 869) ? "" : "un";
    *buf = 136315906;
    *&buf[4] = "OutputVolumeControl_HAL_Common.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 597;
    v115 = 2080;
    v116 = v51;
    v117 = 2080;
    v118 = *&v52;
    _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d OutputVolumeControl_HAL_Common::GetPropertyData() - %s volume ramping is %ssupported.", buf, 0x26u);
    if (v113 < 0)
    {
      operator delete(__p);
    }
  }

  sub_5440C(*(a1 + 869), a5, a6);
}

void sub_B35F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  if (v21)
  {
    sub_1A8C0(v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B3700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  result = sub_24784(*(a1 + 80), *(a1 + 88));
  if (*a2 == 1986225518)
  {
    *a5 = 4;
    v11 = *(a1 + 80);
    v12 = *(a1 + 88);
    while (1)
    {
      if (v11 == v12)
      {
        *a6 = 0;
        return result;
      }

      v17 = *(a2 + 4);
      result = sub_59410(*v11);
      *(&v15 + 1) = v13;
      *&v15 = result;
      v14 = v15 >> 32;
      if ((v14 & 0x100000000) == 0)
      {
        LODWORD(v14) = 1;
      }

      if (v14)
      {
        break;
      }

      v11 += 2;
    }

    *a6 = v14;
  }

  else
  {
    v16 = *(***(a1 + 80) + 40);

    return v16();
  }

  return result;
}

BOOL sub_B3834(uint64_t a1, uint64_t a2, float *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 4;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_B38F8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
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

    JUMPOUT(0xB38C8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_B3B04(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = *(a1 + 60);
  v6 = sub_B3834(a1, a2, &v7);
  if (!v6)
  {
    *(a1 + 56) = v7;
  }

  return !v6;
}

void *sub_B3B60(void *a1)
{
  v11 = a1;
  v2 = a1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *a1;
      if (*a1)
      {
        v6 = a1[2];
        v7 = a1[3];
        while (v6 != v7)
        {
          if (sub_6FE08(v5 + 152, v6))
          {
            sub_6FF5C(v5 + 152, v6);
          }

          v6 += 3;
        }

        sub_1A8C0(v4);
        return sub_B3F40(&v11);
      }

      sub_1A8C0(v3);
    }
  }

  v8 = sub_5544(19);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "VolumeControl.cpp";
    v14 = 1024;
    v15 = 105;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Skipped notifying audio object property listener relay, since it may be destructed.", buf, 0x12u);
  }

  return sub_B3F40(&v11);
}

void *sub_B3F40(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      v1[3] = v2;
      operator delete(v2);
    }

    v3 = v1[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void sub_B3FA4(_DWORD *a1, float *a2, float a3)
{
  if (!a2)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "StandardUtilities.h";
      v13 = 1024;
      v14 = 174;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  if (*a1 <= 3u)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v11 = 136315394;
        v12 = "StandardUtilities.h";
        v13 = 1024;
        v14 = 175;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: sizeof(T) <= ioDataSize", &v11, 0x12u);
      }
    }
  }

  *a1 = 4;
  *a2 = a3;
}

uint64_t sub_B4160(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1853059619 || *a2 == 1853059700)
  {
    return 1;
  }

  v4 = a2[1];
  if (v4 == 1768845428)
  {
    v5 = 288;
    v6 = 280;
    return ((*(*(a1 + 8) + v5) - *(*(a1 + 8) + v6)) & 0x7FFFFFFF8) != 0;
  }

  if (v4 == 1869968496)
  {
    v5 = 312;
    v6 = 304;
    return ((*(*(a1 + 8) + v5) - *(*(a1 + 8) + v6)) & 0x7FFFFFFF8) != 0;
  }

  return 0;
}

void sub_B41E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5, double *a6)
{
  v39 = *a2;
  v13 = a2 + 4;
  v12 = *(a2 + 1);
  v40 = *(v13 + 4);
  v14 = *(a1 + 8);
  v15 = sub_B46B0(v14, v12, v40);
  if (*a2 == 1853059619)
  {
    if (v40)
    {
      if (!v15)
      {
        v33 = sub_5544(14);
        v34 = *v33;
        if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_FormatList.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1556;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = &off_6DDDD0;
        exception[2] = 2003332927;
      }

      HIDWORD(v39) = 1735159650;
      v40 = v40 - v15[23] + 1;
      (*(*v15 + 72))(v15, &v39, a3, a4, a5, a6);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      sub_2F89A8(a1, buf);
      v18 = *a5 >> 4;
      v19 = *buf;
      v20 = (*&buf[8] - *buf) >> 4;
      if (v18 >= v20)
      {
        v21 = v20;
      }

      else
      {
        v21 = v18;
      }

      if (v21)
      {
        v22 = v21;
        v23 = a6;
        v24 = *buf;
        do
        {
          if (!v20)
          {
            sub_269EF8();
          }

          v25 = *v24++;
          v17 = v25;
          *v23 = v25;
          v23 += 2;
          --v20;
          --v22;
        }

        while (v22);
        v26 = v21;
      }

      else
      {
        v26 = 0;
      }

      v27 = &a6[2 * v26];
      v28 = 126 - 2 * __clz(v26);
      if (v21)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      sub_2F73EC(a6, v27, v29, 1, v17);
      *a5 = 16 * v21;
      if (v19)
      {
        operator delete(v19);
      }
    }
  }

  else if (*a2 == 1853059700)
  {
    if (*a5 != 8)
    {
      v36 = sub_5544(14);
      v37 = *v36;
      if (*v36)
      {
        if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "HP_FormatList.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1529;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyNominalSampleRate", buf, 0x12u);
        }
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      *v38 = &off_6DDDD0;
      v38[2] = 561211770;
    }

    *a6 = (*(*v14 + 648))(v14);
  }

  else
  {
    if (!v15)
    {
      v30 = sub_5544(14);
      v31 = *v30;
      if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "HP_FormatList.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1564;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnknownPropertyError) [theStream is NULL]: no stream for given scope and element", buf, 0x12u);
      }

      v32 = __cxa_allocate_exception(0x10uLL);
      *v32 = &off_6DDDD0;
      v32[2] = 2003332927;
    }

    HIDWORD(v39) = 1735159650;
    v16 = v40;
    if (v40)
    {
      v16 = v40 - v15[23] + 1;
    }

    v40 = v16;
    (*(*v15 + 72))(v15, &v39, a3, a4, a5, a6);
  }
}

void sub_B4690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_B46B0(void *a1, int a2, unsigned int a3)
{
  switch(a2)
  {
    case 1735159650:
      if (a1[39] == a1[38])
      {
        if (a1[36] == a1[35])
        {
          return 0;
        }

LABEL_4:
        v3 = (a1 + 35);
        goto LABEL_7;
      }

      break;
    case 1869968496:
      break;
    case 1768845428:
      goto LABEL_4;
    default:
      return 0;
  }

  v3 = (a1 + 38);
LABEL_7:
  v4 = *v3;
  v5 = v3[1];
  if (v4 == v5)
  {
    return 0;
  }

  result = 0;
  do
  {
    if (result)
    {
      break;
    }

    v7 = *v4;
    v8 = *(*v4 + 96) + *(*v4 + 92) + *(*(*v4 + 104) + 44);
    v4 += v8 <= a3;
    result = v8 <= a3 ? 0 : v7;
  }

  while (v4 != v5);
  return result;
}

BOOL sub_B4754(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (((a2 - a1) & 0x7FFFFFFF8) != 0)
  {
    v3 = 0;
    v4 = v2 >> 3;
    v5 = (v2 >> 3);
    v6 = 1;
    do
    {
      if (v4 > v3)
      {
        v7 = *(a1 + 8 * v3);
        if (v7)
        {
          v8 = *(*(v7 + 104) + 24);
          if (v8 > 1836343850)
          {
            if (v8 == 1836343851 || v8 == 1836344107)
            {
              return v6;
            }
          }

          else if (v8 == 1667443507 || v8 == 1667509043)
          {
            return v6;
          }
        }
      }

      v6 = ++v3 < v5;
    }

    while (v5 != v3);
  }

  return 0;
}

uint64_t sub_B47F4(uint64_t a1, int *a2)
{
  v4 = *a2;
  v5 = 1;
  if (*a2 <= 1919774834)
  {
    if (v4 <= 1685484389)
    {
      if (v4 != 1668443504)
      {
        v6 = 1668705648;
        goto LABEL_8;
      }

LABEL_12:
      v5 = *(a1 + 869);
      return v5 & 1;
    }

    if (v4 != 1685484390)
    {
      if (v4 != 1918987632)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    if ((*(a1 + 680) - 1) <= 1)
    {
      goto LABEL_26;
    }

    sub_5659C(&v15, (a1 + 504), "", 273);
    v5 = (*(*v15 + 16))(v15, a2);
    v11 = v16;
    if (!v16)
    {
      return v5 & 1;
    }

LABEL_23:
    sub_1A8C0(v11);
    return v5 & 1;
  }

  if (v4 > 1986098019)
  {
    if (v4 == 1986225518)
    {
      return v5 & 1;
    }

    if (v4 != 1986098020)
    {
      goto LABEL_24;
    }

    v7 = *(a1 + 704);
    if (!v7 || (v8 = std::__shared_weak_count::lock(v7)) == 0)
    {
      v5 = 0;
      return v5 & 1;
    }

    v9 = v8;
    v10 = *(a1 + 696);
    v5 = 0;
    if (sub_55704(a1 + 520, a2) && v10)
    {
      v5 = (*(*v10 + 72))(v10);
    }

    v11 = v9;
    goto LABEL_23;
  }

  if (v4 == 1919774835)
  {
    goto LABEL_12;
  }

  v6 = 1936878960;
LABEL_8:
  if (v4 == v6)
  {
    return v5 & 1;
  }

LABEL_24:
  if (*(a1 + 552) == 1)
  {
    v12 = a2[1];
    LODWORD(v15) = *a2;
    HIDWORD(v15) = v12;
    LODWORD(v16) = 0;
    v5 = sub_55704(a1 + 520, &v15);
    return v5 & 1;
  }

LABEL_26:
  v13 = a1 + 520;

  return sub_55704(v13, a2);
}

uint64_t sub_B4A44(uint64_t a1)
{
  v1 = *(a1 + 872);
  if (!v1)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_Device.cpp";
      v9 = 1024;
      v10 = 3906;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareUnspecifiedError) [mDevice is NULL]: Attempt to get nominal sample rate without an active device", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003329396;
  }

  v2 = *(*v1 + 104);

  return v2();
}

uint64_t sub_B4B84(void **a1, unsigned int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  result = (*(*a1[1] + 696))(a1[1]);
  if (result)
  {
    v13 = result;
    v48 = (*(*a1[1] + 712))(a1[1], *a2);
    v49 = 1735159650;
    v14 = *a2;
    if (*a2 <= 1818456941)
    {
      if (v14 != 1668506475)
      {
        if (v14 == 1818455660)
        {
          v19 = *a5;
          if (v19 != ((*a1)[4])(a1, a2, a3, a4))
          {
            v37 = sub_5544(14);
            v17 = *v37;
            if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1085;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 8) != 4)
          {
            v42 = sub_5544(14);
            v17 = *v42;
            if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1089;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong input data size for kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*a6)
          {
            v29 = sub_5544(14);
            v17 = *v29;
            if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1090;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mInputData is NULL]: wrong input data buffer for kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 24) != 8)
          {
            v47 = sub_5544(14);
            v17 = *v47;
            if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1091;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong output data size for kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*(a6 + 16))
          {
            v20 = sub_5544(14);
            v17 = *v20;
            if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1092;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mOutputData is NULL]: wrong output data buffer for kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString";
              goto LABEL_67;
            }

LABEL_68:
            exception = __cxa_allocate_exception(0x10uLL);
            *exception = &off_6DDDD0;
            exception[2] = 561211770;
          }

          return (*(*v13 + 72))(v13, &v48, 4);
        }

        return (*(*v13 + 72))(v13, &v48, a3);
      }

      v24 = *a5;
      if (v24 != ((*a1)[4])(a1, a2, a3, a4))
      {
        v36 = sub_5544(14);
        v17 = *v36;
        if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "HP_Control.cpp";
          v52 = 1024;
          v53 = 1042;
          v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyClockSourceKindForID";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (*(a6 + 8) != 4)
      {
        v40 = sub_5544(14);
        v17 = *v40;
        if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "HP_Control.cpp";
          v52 = 1024;
          v53 = 1046;
          v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong input data size for kAudioDevicePropertyClockSourceKindForID";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (!*a6)
      {
        v27 = sub_5544(14);
        v17 = *v27;
        if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "HP_Control.cpp";
          v52 = 1024;
          v53 = 1047;
          v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mInputData is NULL]: wrong input data buffer for kAudioDevicePropertyClockSourceKindForID";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (*(a6 + 24) != 4)
      {
        v46 = sub_5544(14);
        v17 = *v46;
        if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "HP_Control.cpp";
          v52 = 1024;
          v53 = 1048;
          v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong output data size for kAudioDevicePropertyClockSourceKindForID";
          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (!*(a6 + 16))
      {
        v31 = sub_5544(14);
        v17 = *v31;
        if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v51 = "HP_Control.cpp";
          v52 = 1024;
          v53 = 1049;
          v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mOutputData is NULL]: wrong output data buffer for kAudioDevicePropertyClockSourceKindForID";
          goto LABEL_67;
        }

        goto LABEL_68;
      }
    }

    else
    {
      switch(v14)
      {
        case 1818456942:
          v21 = *a5;
          if (v21 != ((*a1)[4])(a1, a2, a3, a4))
          {
            v33 = sub_5544(14);
            v17 = *v33;
            if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1020;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyClockSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 8) != 4)
          {
            v38 = sub_5544(14);
            v17 = *v38;
            if (*v38 && os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1024;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong input data size for kAudioDevicePropertyClockSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*a6)
          {
            v25 = sub_5544(14);
            v17 = *v25;
            if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1025;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mInputData is NULL]: wrong input data buffer for kAudioDevicePropertyClockSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 24) != 8)
          {
            v43 = sub_5544(14);
            v17 = *v43;
            if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1026;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong output data size for kAudioDevicePropertyClockSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*(a6 + 16))
          {
            v22 = sub_5544(14);
            v17 = *v22;
            if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1027;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mOutputData is NULL]: wrong output data buffer for kAudioDevicePropertyClockSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          break;
        case 1835295843:
          v23 = *a5;
          if (v23 != ((*a1)[4])(a1, a2, a3, a4))
          {
            v34 = sub_5544(14);
            v17 = *v34;
            if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1063;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyPlayThruDestinationNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 8) != 4)
          {
            v39 = sub_5544(14);
            v17 = *v39;
            if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1067;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong input data size for kAudioDevicePropertyPlayThruDestinationNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*a6)
          {
            v26 = sub_5544(14);
            v17 = *v26;
            if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1068;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mInputData is NULL]: wrong input data buffer for kAudioDevicePropertyPlayThruDestinationNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 24) != 8)
          {
            v44 = sub_5544(14);
            v17 = *v44;
            if (*v44 && os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1069;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong output data size for kAudioDevicePropertyPlayThruDestinationNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*(a6 + 16))
          {
            v30 = sub_5544(14);
            v17 = *v30;
            if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1070;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mOutputData is NULL]: wrong output data buffer for kAudioDevicePropertyPlayThruDestinationNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          break;
        case 1819501422:
          v15 = *a5;
          if (v15 != ((*a1)[4])(a1, a2, a3, a4))
          {
            v35 = sub_5544(14);
            v17 = *v35;
            if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 998;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioDevicePropertyDataSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 8) != 4)
          {
            v41 = sub_5544(14);
            v17 = *v41;
            if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1002;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong input data size for kAudioDevicePropertyDataSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*a6)
          {
            v28 = sub_5544(14);
            v17 = *v28;
            if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1003;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mInputData is NULL]: wrong input data buffer for kAudioDevicePropertyDataSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (*(a6 + 24) != 8)
          {
            v45 = sub_5544(14);
            v17 = *v45;
            if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1004;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong output data size for kAudioDevicePropertyDataSourceNameForIDCFString";
              goto LABEL_67;
            }

            goto LABEL_68;
          }

          if (!*(a6 + 16))
          {
            v16 = sub_5544(14);
            v17 = *v16;
            if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v51 = "HP_Control.cpp";
              v52 = 1024;
              v53 = 1005;
              v18 = "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError) [theTranslationData->mOutputData is NULL]: wrong output data buffer for kAudioDevicePropertyDataSourceNameForIDCFString";
LABEL_67:
              _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
              goto LABEL_68;
            }

            goto LABEL_68;
          }

          return (*(*v13 + 72))(v13, &v48, 4);
        default:
          return (*(*v13 + 72))(v13, &v48, a3);
      }
    }

    return (*(*v13 + 72))(v13, &v48, 4);
  }

  return result;
}

uint64_t sub_B58EC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t *a6)
{
  if (*a2 == 1650685548)
  {
    v8 = *a5;
    if (v8 != (*(*a1 + 64))(a1))
    {
      v10 = sub_5544(14);
      v11 = *v10;
      if (*v10)
      {
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 136315394;
          v14 = "HP_Control.cpp";
          v15 = 1024;
          v16 = 601;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadPropertySizeError): wrong data size for kAudioBooleanControlPropertyValue", &v13, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 561211770;
    }

    result = (*(*a1 + 224))(a1);
    *a6 = result;
  }

  else
  {

    return sub_1C9E18(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

BOOL sub_B5ABC(uint64_t a1)
{
  v5 = 4;
  v6 = 0;
  v1 = *(a1 + 96);
  v3 = 0x676C6F626D757465;
  v4 = 0;
  (*(*v1 + 40))(v1, &v3, 0, 0, &v5, &v6);
  return v6 != 0;
}

void sub_B5B38(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6)
{
  if (*a2 == 1836414053)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      v28 = *a2;
      v32 = a2[2];
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = 2003332927;
  }

  v12 = *a5;
  if (v12 != (*(*a1 + 32))(a1, a2, a3, a4))
  {
    v24 = sub_5544(14);
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      v29 = *a2;
      v33 = a2[2];
      sub_22CE0(__p);
    }

    v25 = __cxa_allocate_exception(0x10uLL);
    *v25 = &off_6DDDD0;
    v25[2] = 561211770;
  }

  v13 = *a2;
  if (*a2 <= 1986225517)
  {
    if (v13 > 1684633186)
    {
      if (v13 != 1684633187 && v13 != 1983013986)
      {
        if (v13 == 1836478308)
        {
          v17 = sub_5544(14);
          if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
          {
            v26 = *a2;
            v30 = a2[2];
            sub_22CE0(__p);
          }

          v18 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v18, "Attempt to GetPropertyData for %s.  This property is write-only.");
        }

        return;
      }
    }

    else if (v13 != 1064725619 && v13 != 1668705648)
    {
      if (v13 != 1684157046)
      {
        return;
      }

      v15 = 1065353216;
      goto LABEL_27;
    }

    *a6 = 0;
    return;
  }

  if (v13 <= 1986817376)
  {
    if (v13 == 1986225518)
    {
      v15 = 1;
    }

    else
    {
      if (v13 != 1986229104)
      {
        if (v13 == 1986290211)
        {
          *a6 = (*(*a1 + 104))(a1);
          *(a6 + 8) = v16;
        }

        return;
      }

      v15 = *(a1 + 508);
    }

LABEL_27:
    *a6 = v15;
    return;
  }

  if (v13 > 1987013740)
  {
    if (v13 != 1987013741)
    {
      if (v13 == 2021027692)
      {
        v19 = sub_5544(14);
        if (*v19)
        {
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            v27 = *a2;
            v31 = a2[2];
            sub_22CE0(__p);
          }
        }

        v20 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v20, "Attempt to GetPropertyData for %s.  This property is write-only.");
      }

      return;
    }

LABEL_23:
    v14 = *(a1 + 504);
    goto LABEL_24;
  }

  if (v13 == 1986817377)
  {
    goto LABEL_23;
  }

  if (v13 == 1987013732)
  {
    v14 = *(a1 + 500);
LABEL_24:
    *a6 = v14;
  }
}

uint64_t sub_B620C(uint64_t a1, int *a2)
{
  if (*a2 == 1650685548)
  {
    return 4;
  }

  else
  {
    return sub_1C821C(a1, a2);
  }
}

BOOL sub_B622C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8[0] = 4;
  (*(*a2 + 40))(a2, &v6, 0, 0, v8, a3);
  return *(a1 + 56) == *a3;
}

void sub_B62F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
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

    JUMPOUT(0xB62C0);
  }

  _Unwind_Resume(a1);
}

void sub_B64FC(uint64_t a1@<X0>, unsigned int ***a2@<X1>, void *a3@<X8>)
{
  v5 = sub_5544(8);
  if (*(v5 + 8))
  {
    v6 = *v5;
    if (*v5)
    {
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        v102 = a2;
        v99 = *(a1 + 424);
        memset(&v103, 0, sizeof(v103));
        std::string::append(&v103, "{ ", 2uLL);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v103.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v103.__r_.__value_.__l.__size_;
        }

        v8 = *(a1 + 432);
        v9 = (a1 + 440);
        if (v8 != (a1 + 440))
        {
          do
          {
            v10 = size;
            if (*(v8 + 8) != 1986291046)
            {
              v10 = SHIBYTE(v103.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(v103.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v10 = v103.__r_.__value_.__l.__size_;
              }
            }

            v11 = v8[1];
            v12 = v8;
            if (v11)
            {
              do
              {
                v13 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v13 = v12[2];
                v14 = *v13 == v12;
                v12 = v13;
              }

              while (!v14);
            }

            sub_68108(&v105, v8 + 8);
            v15 = std::string::append(&v105, "; ", 2uLL);
            v16 = *&v15->__r_.__value_.__l.__data_;
            v106.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
            *&v106.__r_.__value_.__l.__data_ = v16;
            v15->__r_.__value_.__l.__size_ = 0;
            v15->__r_.__value_.__r.__words[2] = 0;
            v15->__r_.__value_.__r.__words[0] = 0;
            sub_3FF504(&__p, (v8 + 5));
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
              v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v18 = __p.__r_.__value_.__l.__size_;
            }

            v19 = std::string::append(&v106, p_p, v18);
            v20 = *&v19->__r_.__value_.__l.__data_;
            v107.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
            *&v107.__r_.__value_.__l.__data_ = v20;
            v19->__r_.__value_.__l.__size_ = 0;
            v19->__r_.__value_.__r.__words[2] = 0;
            v19->__r_.__value_.__r.__words[0] = 0;
            if (v13 == v9)
            {
              v21 = " ]";
            }

            else
            {
              v21 = " ], ";
            }

            if (v13 == v9)
            {
              v22 = 2;
            }

            else
            {
              v22 = 4;
            }

            v23 = std::string::append(&v107, v21, v22);
            v24 = *&v23->__r_.__value_.__l.__data_;
            *&buf[16] = *(&v23->__r_.__value_.__l + 2);
            *buf = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v107.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v106.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v105.__r_.__value_.__l.__data_);
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v25 = buf;
            }

            else
            {
              v25 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v26 = buf[23];
            }

            else
            {
              v26 = *&buf[8];
            }

            std::string::insert(&v103, v10, v25, v26);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            v8 = v13;
          }

          while (v13 != v9);
        }

        std::string::append(&v103, " }", 2uLL);
        if ((v103.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = &v103;
        }

        else
        {
          v27 = v103.__r_.__value_.__r.__words[0];
        }

        v28 = *(a1 + 464);
        *buf = 136316162;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 1760;
        *&buf[18] = 2048;
        *&buf[20] = v99;
        v109 = 2080;
        v110 = v27;
        v111 = 1024;
        v112 = v28;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Command data: mOwner %p, VAD Context attributes: %s, mReason %u", buf, 0x2Cu);
        a2 = v102;
        if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v29 = sub_5544(8);
  v30 = *v29;
  if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_DEBUG))
  {
    sub_3FE8E8(&v107, a2);
    v31 = (v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v107 : v107.__r_.__value_.__r.__words[0];
    *buf = 136315650;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1762;
    *&buf[18] = 2080;
    *&buf[20] = v31;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attempting to activate with concrete route(s): %s", buf, 0x1Cu);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v107.__r_.__value_.__l.__data_);
    }
  }

  v32 = *(a1 + 424);
  v33 = *(a1 + 120);
  v34 = *(a1 + 360);
  v35 = *(a1 + 464);
  v36 = *(a1 + 456);
  *buf = v36;
  buf[4] = BYTE4(v36);
  sub_B75C0(a3, v32, a2, a1 + 432, (a1 + 24), (a1 + 48), (a1 + 96), v33, a1 + 128, a1 + 152, a1 + 192, v34, a1 + 368, v35, (a1 + 472), buf, *(a1 + 392), (a1 + 400));
  if (*a3)
  {
    goto LABEL_154;
  }

  v37 = sub_5544(8);
  v38 = sub_5544(35);
  v39 = 0;
  *buf = 0x100000002;
  v40 = *(v37 + 8);
  while (1)
  {
    v41 = *&buf[v39];
    if (((v40 & v41) != 0) != ((*(v38 + 8) & v41) != 0))
    {
      break;
    }

    v39 += 4;
    if (v39 == 8)
    {
      goto LABEL_64;
    }
  }

  if ((v40 & v41) == 0)
  {
    v37 = v38;
  }

LABEL_64:
  v42 = *v37;
  if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "RoutingManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1767;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully activated new concrete route.", buf, 0x12u);
  }

  if (*a3)
  {
    goto LABEL_154;
  }

  v43 = *(a1 + 424);
  if (*(v43 + 496))
  {
    goto LABEL_79;
  }

  v44 = sub_5544(8);
  v45 = sub_5544(35);
  v46 = 0;
  *buf = 0x100000002;
  v47 = *(v44 + 8);
  while (1)
  {
    v48 = *&buf[v46];
    if (((v47 & v48) != 0) != ((*(v45 + 8) & v48) != 0))
    {
      break;
    }

    v46 += 4;
    if (v46 == 8)
    {
      goto LABEL_75;
    }
  }

  if ((v47 & v48) == 0)
  {
    v44 = v45;
  }

LABEL_75:
  v49 = *v44;
  if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "RouteCache.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 579;
    _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Empty Route Cache", buf, 0x12u);
  }

  if (*(v43 + 496))
  {
LABEL_79:
    v50 = sub_5544(8);
    v51 = sub_5544(35);
    v52 = 0;
    v100 = v43 + 480;
    *buf = 0x100000002;
    v53 = *(v50 + 8);
    while (1)
    {
      v54 = *&buf[v52];
      if (((v53 & v54) != 0) != ((*(v51 + 8) & v54) != 0))
      {
        break;
      }

      v52 += 4;
      if (v52 == 8)
      {
        goto LABEL_85;
      }
    }

    if ((v53 & v54) == 0)
    {
      v50 = v51;
    }

LABEL_85:
    v55 = *v50;
    if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "RouteCache.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 582;
      _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route Cache:", buf, 0x12u);
    }

    for (i = *(v43 + 488); i != v100; i = *(i + 8))
    {
      v57 = sub_5544(8);
      v58 = sub_5544(35);
      v59 = 0;
      *buf = 0x100000002;
      v60 = *(v57 + 8);
      while (1)
      {
        v61 = *&buf[v59];
        if (((v60 & v61) != 0) != ((*(v58 + 8) & v61) != 0))
        {
          break;
        }

        v59 += 4;
        if (v59 == 8)
        {
          goto LABEL_95;
        }
      }

      if ((v60 & v61) == 0)
      {
        v57 = v58;
      }

LABEL_95:
      v62 = *v57;
      if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
      {
        sub_68108(&v107, (i + 16));
        v63 = &v107;
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v63 = v107.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RouteCache.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 464;
        *&buf[18] = 2080;
        *&buf[20] = v63;
        _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEBUG, "%25s:%-5d DeviceType: %s.", buf, 0x1Cu);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }

      v64 = sub_5544(8);
      v65 = sub_5544(35);
      v66 = 0;
      *buf = 0x100000002;
      v67 = *(v64 + 8);
      while (1)
      {
        v68 = *&buf[v66];
        if (((v67 & v68) != 0) != ((*(v65 + 8) & v68) != 0))
        {
          break;
        }

        v66 += 4;
        if (v66 == 8)
        {
          goto LABEL_107;
        }
      }

      if ((v67 & v68) == 0)
      {
        v64 = v65;
      }

LABEL_107:
      v69 = *v64;
      if (v69 && os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
      {
        sub_2382C4(&v107, *(i + 48), (i + 56));
        v70 = &v107;
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v70 = v107.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RouteCache.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 465;
        *&buf[18] = 2080;
        *&buf[20] = v70;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Source physical devices: %s.", buf, 0x1Cu);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }

      v71 = sub_5544(8);
      v72 = sub_5544(35);
      v73 = 0;
      *buf = 0x100000002;
      v74 = *(v71 + 8);
      while (1)
      {
        v75 = *&buf[v73];
        if (((v74 & v75) != 0) != ((*(v72 + 8) & v75) != 0))
        {
          break;
        }

        v73 += 4;
        if (v73 == 8)
        {
          goto LABEL_119;
        }
      }

      if ((v74 & v75) == 0)
      {
        v71 = v72;
      }

LABEL_119:
      v76 = *v71;
      if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
      {
        sub_2382C4(&v107, *(i + 72), (i + 80));
        v77 = &v107;
        if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v77 = v107.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "RouteCache.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 466;
        *&buf[18] = 2080;
        *&buf[20] = v77;
        _os_log_impl(&dword_0, v76, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Destination physical devices: %s.", buf, 0x1Cu);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }

      if (*(i + 128) == 1)
      {
        v78 = sub_5544(8);
        v79 = sub_5544(35);
        v80 = 0;
        v81 = (i + 104);
        *buf = 0x100000002;
        v82 = *(v78 + 8);
        while (1)
        {
          v83 = *&buf[v80];
          if (((v82 & v83) != 0) != ((*(v79 + 8) & v83) != 0))
          {
            break;
          }

          v80 += 4;
          if (v80 == 8)
          {
            goto LABEL_132;
          }
        }

        if ((v82 & v83) == 0)
        {
          v78 = v79;
        }

LABEL_132:
        v84 = *v78;
        if (v84 && os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
          if (*(i + 127) < 0)
          {
            v81 = *v81;
          }

          *buf = 136315650;
          *&buf[4] = "RouteCache.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 467;
          *&buf[18] = 2080;
          *&buf[20] = v81;
          _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Aggregate device clock device: %s", buf, 0x1Cu);
        }
      }

      for (j = *(i + 32); j != i + 24; j = *(j + 8))
      {
        v86 = sub_5544(8);
        v87 = sub_5544(35);
        v88 = 0;
        *buf = 0x100000002;
        v89 = *(v86 + 8);
        while (1)
        {
          v90 = *&buf[v88];
          if (((v89 & v90) != 0) != ((*(v87 + 8) & v90) != 0))
          {
            break;
          }

          v88 += 4;
          if (v88 == 8)
          {
            goto LABEL_145;
          }
        }

        if ((v89 & v90) == 0)
        {
          v86 = v87;
        }

LABEL_145:
        v91 = *v86;
        if (v91 && os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          sub_237C30(&v107, (j + 16));
          v92 = &v107;
          if ((v107.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v92 = v107.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "RouteCache.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 400;
          *&buf[18] = 2080;
          *&buf[20] = v92;
          _os_log_impl(&dword_0, v91, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s", buf, 0x1Cu);
          if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v107.__r_.__value_.__l.__data_);
          }
        }
      }
    }
  }

  if (*a3)
  {
LABEL_154:
    v93 = sub_5544(8);
    v94 = sub_5544(35);
    v95 = 0;
    *buf = 0x100000002;
    v96 = *(v93 + 8);
    while (1)
    {
      v97 = *&buf[v95];
      if (((v96 & v97) != 0) != ((*(v94 + 8) & v97) != 0))
      {
        break;
      }

      v95 += 4;
      if (v95 == 8)
      {
        goto LABEL_160;
      }
    }

    if ((v96 & v97) == 0)
    {
      v93 = v94;
    }

LABEL_160:
    v98 = *v93;
    if (*v93 && os_log_type_enabled(*v93, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1772;
      _os_log_impl(&dword_0, v98, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Failed to activate a route list for which all ports were connected! Attempting additional route lists", buf, 0x12u);
    }
  }
}

void sub_B7168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_B7238(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, _DWORD *a6)
{
  if (a2->mSelector != 1718839674 && a2->mSelector != 1902539642)
  {
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25)
    {
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AggregateDevice_CommonBase.cpp";
        v34 = 1024;
        v35 = 3304;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  outData = 0;
  PropertyData = AudioObjectGetPropertyData(*(a1 + 128), a2, a3, a4, a5, &outData);
  if (PropertyData)
  {
    v16 = sub_5544(17);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v30, a2->mSelector);
      v18 = v31;
      v19 = v30[0];
      sub_22170(__p, PropertyData);
      v20 = v30;
      if (v18 < 0)
      {
        v20 = v19;
      }

      if (v29 >= 0)
      {
        v21 = __p;
      }

      else
      {
        v21 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v34 = 1024;
      v35 = 3308;
      v36 = 2080;
      v37 = v20;
      v38 = 2080;
      v39 = v21;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d AudioObjectGetPropertyData() for selector '%s' returned status '%s'.", buf, 0x26u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }
    }

    v22 = sub_5544(14);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AggregateDevice_CommonBase.cpp";
      v34 = 1024;
      v35 = 3309;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Unable to obtain property data.", buf, 0x12u);
    }

    v24 = __cxa_allocate_exception(0x10uLL);
    *v24 = &off_6DDDD0;
    v24[2] = PropertyData;
  }

  if (sub_C26B4(a1))
  {
    strcpy(buf, "rrapbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v12 = sub_59410(a1);
    *(&v15 + 1) = v13;
    *&v15 = v12;
    v14 = v15 >> 32;
    if ((v14 & 0x100000000) == 0 || !v14 || (_os_feature_enabled_impl() & 1) == 0)
    {
      outData >>= 4;
    }
  }

  sub_5440C(outData, a5, a6);
}

void sub_B7590(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_B75C0(void *a1, uint64_t a2, uint64_t ***a3, uint64_t a4, void **a5, void *a6, void **a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14, __int128 *a15, uint64_t *a16, char a17, uint64_t *a18)
{
  sub_27A4();
  v20 = atomic_load(&qword_6E9558);
  if (v20 != pthread_self())
  {
    v399 = sub_5544(14);
    v400 = *v399;
    if (*v399 && os_log_type_enabled(*v399, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3243;
      _os_log_impl(&dword_0, v400, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v454 = 0;
  v453 = 0;
  v455 = 0;
  v22 = *a3;
  v21 = a3[1];
  while (v22 != v21)
  {
    sub_9D078(&v453, *v22++);
  }

  v23 = (a4 + 8);
  if (a4 + 8 == sub_9C238(a4, 0x76646566u, 0))
  {
    v402 = sub_5544(14);
    v403 = *v402;
    if (*v402 && os_log_type_enabled(*v402, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3251;
      _os_log_impl(&dword_0, v403, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    v404 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v404, "Precondition failure.");
  }

  v24 = *v23;
  if (!*v23)
  {
LABEL_14:
    sub_DE7DC("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v25 = *(v24 + 8);
      v26 = *(v24 + 9) != 0;
      if (v25 != 1986291046)
      {
        v26 = v25 > 0x76646566;
      }

      if (!v26)
      {
        break;
      }

      v24 = *v24;
      if (!v24)
      {
        goto LABEL_14;
      }
    }

    if (v25 >= 0x76646566)
    {
      break;
    }

    v24 = v24[1];
    if (!v24)
    {
      goto LABEL_14;
    }
  }

  v27 = v24[5];
  v424 = (v24 + 5);
  v28 = *(*a2 + 8);
  v420 = v24;
  v416 = a8;
  if (!v28)
  {
    goto LABEL_23;
  }

  v29 = *a2 + 8;
  do
  {
    v30 = *(v28 + 32);
    v31 = v30 >= v27;
    v32 = v30 < v27;
    if (v31)
    {
      v29 = v28;
    }

    v28 = *(v28 + 8 * v32);
  }

  while (v28);
  if (v29 == *a2 + 8 || *(v29 + 32) > v27 || (v48 = sub_C2854(v29 + 80, HIDWORD(v27)), (v48 & 0x100) == 0) || (v48 & 1) != 0)
  {
LABEL_23:
    v452 = 0;
    v451 = 0;
    v450 = &v451;
    v33 = v453;
    for (i = v454; v33 != i; v33 += 48)
    {
      for (j = *(v33 + 24); j != (v33 + 16); j = j[1])
      {
        sub_25704(v472, j + 2, "", 966);
        if ((*(*v472 + 184) & 1) != 0 && (*(*v472 + 128) & 0x100000000) != 0)
        {
          *buf = *(*v472 + 128);
          sub_1E54B0(__p, buf, 1);
          sub_25B118();
        }

        sub_25704(buf, j + 4, "", 978);
        if ((*(*buf + 184) & 1) == 0 && (*(*buf + 128) & 0x100000000) != 0)
        {
          *v525 = *(*buf + 128);
          sub_1E54B0(__p, v525, 1);
          sub_25B118();
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        if (*&v472[8])
        {
          sub_1A8C0(*&v472[8]);
        }
      }
    }
  }

  else
  {
    v452 = 0;
    v451 = 0;
    v450 = &v451;
  }

  sub_20301C(a1, 1);
  v448[0] = 0;
  v448[1] = 0;
  v449 = 0;
  v446[0] = 0;
  v446[1] = 0;
  v447 = 0;
  sub_27A4();
  v36 = atomic_load(&qword_6E9558);
  if (v36 != pthread_self())
  {
    v405 = sub_5544(14);
    v406 = *v405;
    if (*v405 && os_log_type_enabled(*v405, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 6147;
      _os_log_impl(&dword_0, v406, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    v397 = __cxa_allocate_exception(0x10uLL);
    v398 = &std::logic_error::~logic_error;
    std::logic_error::logic_error(v397, "Precondition failure.");
LABEL_884:
    __cxa_throw(v397, v407, v398);
  }

  v37 = (*a2 + 8);
  v38 = *v37;
  if (!*v37)
  {
    goto LABEL_845;
  }

  v39 = *v424;
  v40 = *a2 + 8;
  v41 = *v40;
  do
  {
    v42 = *(v41 + 32);
    v31 = v42 >= v39;
    v43 = v42 < v39;
    if (v31)
    {
      v40 = v41;
    }

    v41 = *(v41 + 8 * v43);
  }

  while (v41);
  if (v40 == v37 || v39 < *(v40 + 32))
  {
LABEL_845:
    v394 = sub_5544(14);
    v395 = *v394;
    if (*v394 && os_log_type_enabled(*v394, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v472, *v424);
      v396 = v472[23] >= 0 ? v472 : *v472;
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 6150;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v396;
      _os_log_impl(&dword_0, v395, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Category %s does not exist in the database.", __p, 0x1Cu);
      if ((v472[23] & 0x80000000) != 0)
      {
        operator delete(*v472);
      }
    }

    v397 = __cxa_allocate_exception(0x10uLL);
    v398 = &std::runtime_error::~runtime_error;
    std::runtime_error::runtime_error(v397, "Category %s does not exist in the database.");
    goto LABEL_883;
  }

  if (*(v40 + 72) == 1668246894)
  {
    v44 = *a2 + 8;
    do
    {
      v45 = *(v38 + 32);
      v31 = v45 >= 0x63736176;
      v46 = v45 < 0x63736176;
      if (v31)
      {
        v44 = v38;
      }

      v38 = *(v38 + 8 * v46);
    }

    while (v38);
    if (v44 == v37 || *(v44 + 32) > 0x63736176u)
    {
      v408 = sub_5544(14);
      v409 = *v408;
      if (*v408 && os_log_type_enabled(*v408, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 6159;
        _os_log_impl(&dword_0, v409, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Category kVirtualAudioPlugInRoutingCategoryStandardAV does not exist in the database.", __p, 0x12u);
      }

      v397 = __cxa_allocate_exception(0x10uLL);
      v398 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v397, "Category kVirtualAudioPlugInRoutingCategoryStandardAV does not exist in the database.");
    }

    else
    {
      if (*(v44 + 72) == 1668510820)
      {
        *v456 = v456;
        *&v456[8] = v456;
        *&v456[16] = 0;
        v47 = *(v420 + 11);
        LODWORD(v467) = 1668505974;
        HIDWORD(v467) = v47;
        LOBYTE(v468) = 0;
        BYTE4(v468) = 0;
        v442 = 0uLL;
        v441 = &v442;
        *&v472[8] = 0;
        *v472 = &v472[8];
        v473 = 0;
        *&v472[32] = 0;
        *&v472[16] = 0;
        *&v472[24] = &v472[32];
        *(&__dst + 1) = 0;
        v541 = 0;
        *&__dst = &__dst + 8;
        *&v543[8] = 0;
        *&v543[16] = 0;
        *v543 = &v543[8];
        *buf = 1852796517;
        memset(&buf[8], 0, 24);
        *&buf[32] = 0x756E64656175746FLL;
        *&v487[24] = 0u;
        v489 = 0u;
        *v488 = 0u;
        v486 = 1065353216;
        memset(__p, 0, sizeof(__p));
        memset(v487, 0, 32);
        *&v487[32] = 1065353216;
        v490 = 1065353216;
        v470 = 0;
        v469 = 0;
        v471 = 0;
        operator new();
      }

      v412 = sub_5544(14);
      v413 = *v412;
      if (*v412 && os_log_type_enabled(*v412, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v472, *(v44 + 72));
        if (v472[23] >= 0)
        {
          v414 = v472;
        }

        else
        {
          v414 = *v472;
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 6161;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v414;
        _os_log_impl(&dword_0, v413, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Category kVirtualAudioPlugInRoutingCategoryStandardAV is not of type kCategoryType_Standard (it claims %s).", __p, 0x1Cu);
        if ((v472[23] & 0x80000000) != 0)
        {
          operator delete(*v472);
        }
      }

      v397 = __cxa_allocate_exception(0x10uLL);
      v398 = &std::runtime_error::~runtime_error;
      std::runtime_error::runtime_error(v397, "Category kVirtualAudioPlugInRoutingCategoryStandardAV is not of type kCategoryType_Standard (it claims %s).");
    }

LABEL_883:
    goto LABEL_884;
  }

  v440 = 0uLL;
  v439 = 0;
  if (*(a2 + 476) == 1)
  {
    v49 = sub_5544(8);
    v50 = *v49;
    if (*v49)
    {
      if (os_log_type_enabled(*v49, OS_LOG_TYPE_DEBUG))
      {
        sub_22170(v472, *(a2 + 472));
        v51 = v472[23] >= 0 ? v472 : *v472;
        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 3819;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v51;
        _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route processing info will use device activation override of %s", __p, 0x1Cu);
        if ((v472[23] & 0x80000000) != 0)
        {
          operator delete(*v472);
        }
      }
    }
  }

  v52 = v453;
  v428 = v454;
  if (v453 == v454)
  {
    goto LABEL_343;
  }

  do
  {
    v53 = sub_9C238(a4, *v52, *(v52 + 4));
    if (v23 == v53)
    {
      v385 = sub_5544(14);
      v386 = *v385;
      if (*v385 && os_log_type_enabled(*v385, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3837;
        _os_log_impl(&dword_0, v386, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

LABEL_834:
      v387 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v387, "Precondition failure.");
    }

    v54 = *(*a2 + 8);
    if (!v54)
    {
      goto LABEL_827;
    }

    v55 = v53;
    v56 = *v52;
    v57 = *(v53 + 40);
    v58 = *a2 + 8;
    do
    {
      v59 = *(v54 + 32);
      v31 = v59 >= v57;
      v60 = v59 < v57;
      if (v31)
      {
        v58 = v54;
      }

      v54 = *(v54 + 8 * v60);
    }

    while (v54);
    if (v58 == *a2 + 8 || v57 < *(v58 + 32))
    {
LABEL_827:
      v383 = sub_5544(14);
      v384 = *v383;
      if (*v383 && os_log_type_enabled(*v383, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "RoutingManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 3844;
        _os_log_impl(&dword_0, v384, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      goto LABEL_834;
    }

    v61 = *a16;
    v62 = HIDWORD(*a16);
    v63 = *a16 == 1919312242 || v61 == 1920167273;
    v65 = v63 || v61 == 1920167288;
    if (v61 & 0x100000000) != 0 && (v65)
    {
      v66 = *a16;
      goto LABEL_102;
    }

    v67 = HIDWORD(*a16);
    for (k = *(v52 + 24); ; k = k[1])
    {
      if (k == (v52 + 16))
      {
        LODWORD(v66) = v61;
        LOBYTE(v62) = v67;
        goto LABEL_102;
      }

      v69 = k[5];
      if (v69)
      {
        v70 = std::__shared_weak_count::lock(v69);
        if (v70)
        {
          break;
        }
      }

LABEL_100:
      ;
    }

    v71 = v70;
    v72 = k[4];
    if (!v72 || *(v72 + 144) != 1885892706 || !sub_34CF94(k[4]))
    {
      sub_1A8C0(v71);
      goto LABEL_100;
    }

    v73 = sub_34D988(v72, (v55 + 40));
    sub_1A8C0(v71);
    if (!v73)
    {
      goto LABEL_100;
    }

    v150 = sub_5544(8);
    v151 = sub_5544(35);
    v152 = 0;
    *buf = 0x100000002;
    v153 = *(v150 + 8);
    while (1)
    {
      v154 = *&buf[v152];
      if (((v153 & v154) != 0) != ((*(v151 + 8) & v154) != 0))
      {
        break;
      }

      v152 += 4;
      if (v152 == 8)
      {
        goto LABEL_305;
      }
    }

    if ((v153 & v154) == 0)
    {
      v150 = v151;
    }

LABEL_305:
    v155 = *v150;
    if (v155 && os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
    {
      v156 = "<empty>";
      if (v67)
      {
        sub_22170(v463, v61);
        if (v464 >= 0)
        {
          v156 = v463;
        }

        else
        {
          v156 = v463[0];
        }
      }

      sub_22170(v525, 0x73666572u);
      v157 = v525;
      if (v526[7] < 0)
      {
        v157 = *v525;
      }

      *buf = 136315906;
      *&buf[4] = "RoutingManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1203;
      *&buf[18] = 2080;
      *&buf[20] = v156;
      *&buf[28] = 2080;
      *&buf[30] = v157;
      _os_log_impl(&dword_0, v155, OS_LOG_TYPE_DEBUG, "%25s:%-5d Overriding current activation reason %s with activation reason %s for PME with HFP.", buf, 0x26u);
      if ((v526[7] & 0x80000000) != 0)
      {
        operator delete(*v525);
      }

      if ((v67 & 1) != 0 && v464 < 0)
      {
        operator delete(v463[0]);
      }
    }

    LODWORD(v66) = 1936090482;
    LOBYTE(v62) = 1;
LABEL_102:
    if (v56 == 1986291305 || v56 == 1986291046)
    {
      sub_C2A5C(&v461, &v450);
    }

    else
    {
      v462[0] = 0;
      v462[1] = 0;
      v461 = v462;
    }

    v435 = v58 + 72;
    if (*(v55 + 88) == 1 && ((v74 = *(v55 + 44), v74 == 1701013792) || v74 == 1701017120))
    {
      v75 = v453;
      v76 = v454;
      if (v453 != v454)
      {
        while (1)
        {
          if ((*(v55 + 88) & 1) == 0)
          {
            sub_1EC054();
          }

          v77 = sub_28F41C((v55 + 64));
          if ((v78 & 1) != 0 && *v75 == v77)
          {
            break;
          }

          v75 += 48;
          if (v75 == v76)
          {
            v75 = v76;
            break;
          }
        }

        v76 = v454;
      }

      if (v75 == v76)
      {
LABEL_119:
        v456[0] = 0;
        v460 = 0;
        v80 = 1;
      }

      else
      {
        *v525 = off_6BC2E8;
        *&v526[8] = v525;
        sub_9C674(v543, (v75 + 16), v525);
        sub_85148(v525);
        *&__dst = off_6BC330;
        p_dst = &__dst;
        sub_9C674(&v469, (v75 + 16), &__dst);
        sub_85148(&__dst);
        v79 = *&v543[16];
        if (!(*&v543[16] | v471))
        {
          sub_4B0F4(v470);
          sub_4B0F4(*&v543[8]);
          goto LABEL_119;
        }

        v126 = sub_9C238(a4, *v75, *(v75 + 4));
        v127 = *(v75 + 24);
        *&buf[4] = 0x676E726300000000;
        *&buf[16] = 0x676E726300000000uLL;
        *&buf[32] = 0;
        v502 = 0;
        if (v79 && (v128 = *v543, (v129 = *(*v543 + 40)) != 0) && (v130 = std::__shared_weak_count::lock(v129)) != 0)
        {
          v131 = *(v128 + 32);
          if (v131)
          {
            v432 = v130;
            sub_2FB41C(&v467, v131, &v461, v435, *(v127 + 72), *(v126 + 44), 0);
            v132 = v131[36];
            *buf = v132;
            v133 = 76;
            if (*(v131 + 312))
            {
              v133 = 77;
            }

            *&buf[4] = v131[v133];
            if (v467 != v468)
            {
              v465 = 0uLL;
              v466 = 0;
              sub_46980(&v465, v467, v468, (v468 - v467) >> 2);
              v134 = v465;
              if (sub_2513C8(v131, *v465) >> 32)
              {
                *&buf[8] = (*(*v131 + 232))(v131);
              }

              operator delete(v134);
              v132 = v131[36];
            }

            if (v132 == 1886216809)
            {
              sub_34BB3C(&v465, v131);
              v131 = v465;
              v502 = v465;
            }

            else
            {
              v131 = 0;
            }

            if (v467)
            {
              v468 = v467;
              operator delete(v467);
            }

            v130 = v432;
          }

          sub_1A8C0(v130);
        }

        else
        {
          v131 = 0;
        }

        v158 = 0uLL;
        if (v471)
        {
          v159 = v469;
          v160 = *(v469 + 40);
          if (v160)
          {
            v161 = std::__shared_weak_count::lock(v160);
            v158 = 0uLL;
            if (v161)
            {
              v162 = v126;
              v163 = *(v159 + 32);
              if (v163)
              {
                v433 = v161;
                sub_2FB41C(&v467, v163, &v461, v435, *(v127 + 72), *(v162 + 44), 1);
                *&buf[12] = *(v163 + 144);
                v164 = 304;
                if (*(v163 + 312))
                {
                  v164 = 308;
                }

                *&buf[16] = *(v163 + v164);
                if (v467 != v468)
                {
                  v465 = 0uLL;
                  v466 = 0;
                  sub_46980(&v465, v467, v468, (v468 - v467) >> 2);
                  v165 = v465;
                  if (sub_2513C8(v163, *v465) >> 32)
                  {
                    *&buf[20] = (*(*v163 + 232))(v163);
                  }

                  operator delete(v165);
                }

                sub_34CDE0(&v465, v163);
                *loga = v465;
                if (v467)
                {
                  v468 = v467;
                  operator delete(v467);
                }

                v161 = v433;
              }

              else
              {
                *loga = 0u;
              }

              sub_1A8C0(v161);
              v158 = *loga;
            }
          }
        }

        *v456 = *buf;
        *&v456[16] = *&buf[16];
        v457 = v158;
        v458 = a12;
        v459 = v131;
        v460 = 1;
        sub_4B0F4(v470);
        sub_4B0F4(*&v543[8]);
        v80 = 0;
      }
    }

    else
    {
      v456[0] = 0;
      v460 = 0;
      v80 = 1;
    }

    if (v56 == 1987011684 && ((v81 = *(v55 + 40), v81 == 1668441443) || v81 == 1668440898))
    {
      v82 = v80 & *(v55 + 88);
    }

    else
    {
      v82 = 0;
    }

    v525[0] = 0;
    *&v525[4] = v56;
    *v526 = *(v55 + 40);
    *&v526[13] = *(v55 + 53);
    sub_80534(v527, (v55 + 64));
    v83 = a12;
    if (v56 != 1986291046)
    {
      v83 = 0;
    }

    v530 = v83;
    sub_323674(&v531, v456);
    v538 = v61 & 0xFFFFFF0000000000 | (v62 << 32) | v66;
    v539 = v82;
    v84 = *(v52 + 24);
    if (v84 == (v52 + 16))
    {
      v88 = 0;
    }

    else
    {
      v85 = 0;
      do
      {
        sub_25704(buf, v84 + 4, "", 3893);
        v86 = *buf;
        if (*buf)
        {
          v87 = *(*buf + 184);
          LOBYTE(v61) = (v87 & 1) == 0 && (v87 & 0x10) != 0;
        }

        if (*&buf[8])
        {
          sub_1A8C0(*&buf[8]);
        }

        v85 += (v86 != 0) & v61;
        v84 = v84[1];
      }

      while (v84 != (v52 + 16));
      v84 = *(v52 + 24);
      v88 = v85 > 1;
    }

    *v543 = 0;
    *&v543[8] = 0;
    v89 = v84[5];
    if (v89)
    {
      v90 = std::__shared_weak_count::lock(v89);
      v91 = v90;
      if (v90)
      {
        v92 = v84[4];
        atomic_fetch_add_explicit(&v90->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *v543 = v92;
        *&v543[8] = v90;
        sub_1A8C0(v90);
      }

      else
      {
        *v543 = 0;
        *&v543[8] = 0;
      }
    }

    else
    {
      v91 = 0;
    }

    sub_88A00(&__dst, v543, "", 1165);
    v93 = __dst;
    if (__dst && ((v94 = *(__dst + 304), v94 == 1635085420) || v94 == 1633759844) && sub_A82E4(__dst))
    {
      strcpy(buf, "newsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v95 = sub_59410(v93);
      v96 = 0;
      *(&v99 + 1) = v97;
      *&v99 = v95;
      v98 = v99 >> 32;
      v100 = HIDWORD(v95) != 0;
      if (!v88)
      {
        v96 = sub_15E5EC(v93);
      }

      v101 = sub_5544(8);
      v102 = HIDWORD(v98) & v100;
      v103 = *v101;
      if (*v101 && os_log_type_enabled(*v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        if (v102)
        {
          v104 = "YES";
        }

        else
        {
          v104 = "NO";
        }

        *&buf[4] = "RoutingManager.cpp";
        if (v96)
        {
          v105 = "YES";
        }

        else
        {
          v105 = "NO";
        }

        *&buf[12] = 1024;
        *&buf[14] = 1175;
        *&buf[18] = 2080;
        *&buf[20] = v104;
        *&buf[28] = 2080;
        *&buf[30] = v105;
        _os_log_impl(&dword_0, v103, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Output port is using software volume: %s. Output port should use software volume: %s", buf, 0x26u);
      }

      v106 = v102 ^ v96;
    }

    else
    {
      v106 = 0;
    }

    if (*(&__dst + 1))
    {
      sub_1A8C0(*(&__dst + 1));
    }

    if (v91)
    {
      std::__shared_weak_count::__release_weak(v91);
    }

    if (v56 == 1986291305 || v56 == 1986291046)
    {
      sub_80534(&__dst, a15);
    }

    else
    {
      LOBYTE(__dst) = 0;
      LOBYTE(p_dst) = 0;
    }

    v108 = *(v55 + 40);
    v107 = *(v55 + 48);
    v109 = sub_8703C();
    v110 = (*(*v109 + 224))(v109);
    v112 = v111;
    v113 = sub_C2CA8(*a2, (v55 + 40));
    v114 = v110;
    v115 = v112;
    if (v113)
    {
      v116 = (v110 & 2) != 0 && *(v55 + 44) == 1836281204;
      v114 = 2;
      if (v116)
      {
        v115 = v112;
      }

      else
      {
        v114 = 0;
        v115 = 0;
      }
    }

    v431 = v106;
    v469 = v114;
    if (*(v55 + 52))
    {
      if ((v113 & 0x100) == 0)
      {
        goto LABEL_181;
      }

      v117 = 0;
      v88 = 0;
      if (*(v55 + 48) == 1836281204 && (v110 & 2) != 0)
      {
        v110 = 2;
LABEL_181:
        v88 = v112;
        v117 = v110;
      }

      v467 = v117;
      v118 = 1;
      if (v113)
      {
        goto LABEL_225;
      }
    }

    else
    {
      v118 = 0;
      LOBYTE(v467) = 0;
      if (v113)
      {
        goto LABEL_225;
      }
    }

    if (v118)
    {
      if ((v113 & 0x100) != 0)
      {
        goto LABEL_225;
      }

      v119 = &v467;
      v114 = v467;
    }

    else
    {
      v119 = &v469;
    }

    *v119 = (v114 & 0xFFFFFFFFFFFFFFFBLL);
    v120 = *(v52 + 24);
    v121 = *(v120 + 40);
    if (v121)
    {
      v122 = std::__shared_weak_count::lock(v121);
      if (v122)
      {
        v123 = v122;
        v124 = *(v120 + 32);
        if (v124)
        {
          if ((*(*v124 + 448))(v124))
          {
            v125 = sub_34D988(v124, (v55 + 40));
          }

          else
          {
            v125 = 0;
          }

          if ((*v119 & 2) == 0)
          {
            if (!(sub_9C910(v52) & 1 | !v125))
            {
              *v119 = (*v119 | 2);
              sub_17DCC4();
              byte_6FF590 = 1;
            }

            goto LABEL_224;
          }

          v135 = v124[36];
          if (v135 == 1885892674 || v135 == 1885892706)
          {
            if (((*(*v124 + 112))(v124) & 0x1FFFFFFFFLL) != 0x165706870)
            {
              goto LABEL_223;
            }
          }

          else
          {
            if (v135 != 1885892727)
            {
              goto LABEL_223;
            }

            sub_1F82A0();
            if (!(*(qword_6E6648 + 16))())
            {
              goto LABEL_223;
            }
          }

          v136 = (*(*v124 + 448))(v124);
          if (!v125 && (v136 & 1) != 0)
          {
            v136 = sub_45A4F0();
          }

          v137 = sub_8703C();
          v138 = (*(*v137 + 376))(v137);
          v139 = *sub_5544(8);
          if (v139)
          {
            log = v139;
            if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
            {
              *v543 = 136315906;
              *&v543[4] = "RoutingManager.cpp";
              *&v543[12] = 1024;
              *&v543[14] = 6330;
              *&v543[18] = 1024;
              *&v543[20] = v138 == 0;
              v544 = 1024;
              v545 = v136;
              _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeLimit state: %u. Effective PME state: %u", v543, 0x1Eu);
            }
          }

          if ((v138 != 0) | v136 & 1)
          {
            goto LABEL_224;
          }

LABEL_223:
          *v119 = (*v119 & 0xFFFFFFFFFFFFFFFDLL);
        }

LABEL_224:
        sub_1A8C0(v123);
      }
    }

LABEL_225:
    v140 = *a2;
    *buf = v108;
    *&buf[8] = v107;
    *&buf[16] = v469;
    *&buf[24] = v115;
    *&buf[32] = v467;
    v501 = v88;
    LOBYTE(v502) = v118;
    v503 = 0;
    v504 = 0;
    sub_C2A5C(v505, &v461);
    v23 = (a4 + 8);
    v505[3] = v140 + 24;
    v505[4] = v435;
    v505[5] = *v525;
    v506 = *&v525[8];
    *v507 = *v526;
    *&v507[13] = *&v526[13];
    sub_80534(&v508, v527);
    v511 = v530;
    LOBYTE(v512) = 0;
    v518 = 0;
    if (v537 == 1)
    {
      v512 = v531;
      v513 = v532;
      v514 = v533;
      v515 = v534;
      if (v534)
      {
        atomic_fetch_add_explicit(&v534->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v516 = v535;
      v141 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v517 = v141;
      v518 = 1;
    }

    v519 = v538;
    v520 = v539;
    v521 = v431;
    sub_80534(&v522, &__dst);
    if (buf[12] != v502)
    {
      v166 = sub_5544(14);
      v167 = *v166;
      if (*v166)
      {
        if (os_log_type_enabled(*v166, OS_LOG_TYPE_ERROR))
        {
          *v543 = 136315394;
          *&v543[4] = "RoutingHandlerTypes.cpp";
          *&v543[12] = 1024;
          *&v543[14] = 37;
          _os_log_impl(&dword_0, v167, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: OutputMode must be matched with an entry for mOutputSystemAudioEffectsSettings", v543, 0x12u);
        }
      }
    }

    *v472 = v52;
    sub_C3084(&v472[8], buf);
    if (v524 == 1 && v523 < 0)
    {
      operator delete(v522);
    }

    if (v518 == 1)
    {
      if (v517)
      {
        CFRelease(v517);
      }

      if (v515)
      {
        std::__shared_weak_count::__release_weak(v515);
      }
    }

    if (v510 == 1 && v509 < 0)
    {
      operator delete(v508);
    }

    sub_C31F4(v505[1]);
    if (v504)
    {
      std::__shared_weak_count::__release_weak(v504);
    }

    if (p_dst == 1 && SHIBYTE(v541) < 0)
    {
      operator delete(__dst);
    }

    if (v537 == 1)
    {
      if (cf)
      {
        CFRelease(cf);
      }

      if (v534)
      {
        std::__shared_weak_count::__release_weak(v534);
      }
    }

    if (v529 == 1 && v528 < 0)
    {
      operator delete(v527[0]);
    }

    if (v460 == 1)
    {
      if (v459)
      {
        CFRelease(v459);
      }

      if (*(&v457 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v457 + 1));
      }
    }

    sub_C31F4(v462[0]);
    __p[0] = *v472;
    sub_C3084(&__p[1], &v472[8]);
    LOBYTE(v499) = 0;
    BYTE4(v499) = 0;
    v142 = v440;
    if (v440 >= *(&v440 + 1))
    {
      v144 = 0x8F9C18F9C18F9C19 * ((v440 - v439) >> 3) + 1;
      if (v144 > 0xC7CE0C7CE0C7CELL)
      {
        sub_189A00();
      }

      if (0x1F3831F3831F3832 * ((*(&v440 + 1) - v439) >> 3) > v144)
      {
        v144 = 0x1F3831F3831F3832 * ((*(&v440 + 1) - v439) >> 3);
      }

      if (0x8F9C18F9C18F9C19 * ((*(&v440 + 1) - v439) >> 3) >= 0x63E7063E7063E7)
      {
        v145 = 0xC7CE0C7CE0C7CELL;
      }

      else
      {
        v145 = v144;
      }

      *&buf[32] = &v439;
      if (v145)
      {
        sub_2622C0(v145);
      }

      v146 = 8 * ((v440 - v439) >> 3);
      *buf = 0;
      *&buf[8] = v146;
      *&buf[16] = v146;
      *v146 = __p[0];
      sub_C3084(v146 + 8, &__p[1]);
      *(v146 + 320) = v499;
      *&buf[16] += 328;
      v147 = v439 + *&buf[8] - v440;
      sub_C3248(v439, v440, v147);
      v148 = v439;
      v149 = *(&v440 + 1);
      v439 = v147;
      v436 = *&buf[16];
      v440 = *&buf[16];
      *&buf[16] = v148;
      *&buf[24] = v149;
      *&buf[8] = v148;
      *buf = v148;
      sub_C3300(buf);
      v143 = v436;
    }

    else
    {
      *v440 = __p[0];
      sub_C3084(v142 + 8, &__p[1]);
      *(v142 + 320) = v499;
      v143 = v142 + 328;
    }

    *&v440 = v143;
    if (v498 == 1 && v497 < 0)
    {
      operator delete(v496);
    }

    if (v495 == 1)
    {
      if (v494)
      {
        CFRelease(v494);
      }

      if (v493)
      {
        std::__shared_weak_count::__release_weak(v493);
      }
    }

    if (v492 == 1 && v491 < 0)
    {
      operator delete(v490);
    }

    sub_C31F4(*v487);
    if (__p[9])
    {
      std::__shared_weak_count::__release_weak(__p[9]);
    }

    if (v484 == 1 && v483 < 0)
    {
      operator delete(v482);
    }

    if (v481 == 1)
    {
      if (v480)
      {
        CFRelease(v480);
      }

      if (v479)
      {
        std::__shared_weak_count::__release_weak(v479);
      }
    }

    if (v478 == 1 && v477 < 0)
    {
      operator delete(v476);
    }

    sub_C31F4(v475);
    if (v474)
    {
      std::__shared_weak_count::__release_weak(v474);
    }

    v52 += 48;
  }

  while (v52 != v428);
LABEL_343:
  v168 = sub_5544(8);
  if (*(v168 + 8))
  {
    v169 = *v168;
    if (*v168)
    {
      if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 3912;
        _os_log_impl(&dword_0, v169, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created route MultiRouteProcesingInfo:", __p, 0x12u);
      }
    }
  }

  v170 = v439;
  for (m = v440; v170 != m; v170 += 328)
  {
    v172 = sub_5544(8);
    if (*(v172 + 8))
    {
      v173 = *v172;
      if (*v172)
      {
        if (os_log_type_enabled(*v172, OS_LOG_TYPE_DEBUG))
        {
          sub_144548(v472, v170);
          v174 = v472[23] >= 0 ? v472 : *v472;
          LODWORD(__p[0]) = 136315650;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3915;
          WORD1(__p[2]) = 2080;
          *(&__p[2] + 4) = v174;
          _os_log_impl(&dword_0, v173, OS_LOG_TYPE_DEBUG, "%25s:%-5d - %s.", __p, 0x1Cu);
          if ((v472[23] & 0x80000000) != 0)
          {
            operator delete(*v472);
          }
        }
      }
    }
  }

  sub_27A4();
  v175 = atomic_load(&qword_6E9558);
  if (v175 != pthread_self())
  {
    v410 = sub_5544(14);
    v411 = *v410;
    if (*v410 && os_log_type_enabled(*v410, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3532;
      _os_log_impl(&dword_0, v411, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

LABEL_375:
    v184 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v184, "Precondition failure.");
  }

  v176 = *(a2 + 32);
  v418 = (a2 + 32);
  if (!v176)
  {
    v177 = sub_5544(8);
    if (*(v177 + 8))
    {
      v178 = *v177;
      if (*v177)
      {
        if (os_log_type_enabled(*v177, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3678;
          _os_log_impl(&dword_0, v178, OS_LOG_TYPE_DEBUG, "%25s:%-5d Initial category never set, not redundant.", __p, 0x12u);
        }
      }
    }
  }

  if (a14 == 1919971427)
  {
    v179 = sub_5544(8);
    if (*(v179 + 8))
    {
      v180 = *v179;
      if (*v179)
      {
        if (os_log_type_enabled(*v179, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3681;
          _os_log_impl(&dword_0, v180, OS_LOG_TYPE_DEBUG, "%25s:%-5d Port Properties Changed, not redundant.", __p, 0x12u);
        }
      }
    }
  }

  v181 = v439;
  if (v439 != v440)
  {
    while (*(*v181 + 4) || **v181 != 1986291046)
    {
      v181 += 41;
      if (v181 == v440)
      {
        goto LABEL_372;
      }
    }
  }

  if (v440 == v181)
  {
LABEL_372:
    v182 = sub_5544(14);
    v183 = *v182;
    if (*v182 && os_log_type_enabled(*v182, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3685;
      _os_log_impl(&dword_0, v183, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    goto LABEL_375;
  }

  v185 = v181[12];
  v186 = *(a2 + 520);
  if (v185 != v186)
  {
    v194 = 1;
    goto LABEL_394;
  }

  v187 = v181[10];
  if (v187 == v181 + 11)
  {
    v195 = 0;
LABEL_402:
    v196 = v181 + 11;
    if (v187 != v196)
    {
      v197 = *(a2 + 504);
      while (sub_2620B0(v187 + 4, v197 + 4))
      {
        v198 = v187[1];
        v199 = v187;
        if (v198)
        {
          do
          {
            v187 = v198;
            v198 = *v198;
          }

          while (v198);
        }

        else
        {
          do
          {
            v187 = v199[2];
            v63 = *v187 == v199;
            v199 = v187;
          }

          while (!v63);
        }

        v200 = v197[1];
        if (v200)
        {
          do
          {
            v201 = v200;
            v200 = *v200;
          }

          while (v200);
        }

        else
        {
          do
          {
            v201 = v197[2];
            v63 = *v201 == v197;
            v197 = v201;
          }

          while (!v63);
        }

        v197 = v201;
        if (v187 == v196)
        {
          goto LABEL_422;
        }
      }

      goto LABEL_417;
    }
  }

  else
  {
    v188 = *(a2 + 504);
    do
    {
      v189 = sub_2620B0(v187 + 4, v188 + 4);
      if (!v189)
      {
        break;
      }

      v190 = v187[1];
      v191 = v187;
      if (v190)
      {
        do
        {
          v187 = v190;
          v190 = *v190;
        }

        while (v190);
      }

      else
      {
        do
        {
          v187 = v191[2];
          v63 = *v187 == v191;
          v191 = v187;
        }

        while (!v63);
      }

      v192 = v188[1];
      if (v192)
      {
        do
        {
          v193 = v192;
          v192 = *v192;
        }

        while (v192);
      }

      else
      {
        do
        {
          v193 = v188[2];
          v63 = *v193 == v188;
          v188 = v193;
        }

        while (!v63);
      }

      v188 = v193;
    }

    while (v187 != v181 + 11);
    v185 = v181[12];
    v186 = *(a2 + 520);
    v194 = !v189;
LABEL_394:
    if (a14 != 1919971427)
    {
      v194 = 0;
    }

    if (v176)
    {
      v195 = 0;
    }

    else
    {
      v195 = v194;
    }

    if (v185 == v186)
    {
      v187 = v181[10];
      goto LABEL_402;
    }

LABEL_417:
    v202 = sub_5544(8);
    if (*(v202 + 8))
    {
      v203 = *v202;
      if (*v202)
      {
        if (os_log_type_enabled(*v202, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3688;
          _os_log_impl(&dword_0, v203, OS_LOG_TYPE_DEBUG, "%25s:%-5d Sub-ports differ.", __p, 0x12u);
          if ((v195 & 1) == 0)
          {
            goto LABEL_421;
          }

LABEL_423:
          v204 = sub_5544(8);
          if (*(v204 + 8))
          {
            v205 = *v204;
            if (*v204)
            {
              if (os_log_type_enabled(*v204, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(__p[0]) = 136315394;
                *(__p + 4) = "RoutingManager.cpp";
                WORD2(__p[1]) = 1024;
                *(&__p[1] + 6) = 3690;
                _os_log_impl(&dword_0, v205, OS_LOG_TYPE_DEBUG, "%25s:%-5d We need to invalidate the default VAD.", __p, 0x12u);
              }
            }
          }

          v426 = 0;
          goto LABEL_428;
        }
      }
    }
  }

LABEL_422:
  if (v195)
  {
    goto LABEL_423;
  }

LABEL_421:
  v426 = 1;
LABEL_428:
  memset(v456, 0, sizeof(v456));
  sub_C3354(&__dst, a2 + 480);
  v206 = v439;
  v207 = 1;
  v429 = v440;
  if (v439 == v440)
  {
    goto LABEL_636;
  }

  v434 = 0;
  v208 = 1;
  while (2)
  {
    v437 = v208;
    v209 = sub_5544(8);
    if (*(v209 + 8))
    {
      v210 = *v209;
      if (*v209)
      {
        if (os_log_type_enabled(*v209, OS_LOG_TYPE_DEBUG))
        {
          sub_68108(v472, *v206);
          v211 = v472[23];
          v212 = *v472;
          sub_108DF0(buf, v206);
          v213 = v472;
          if (v211 < 0)
          {
            v213 = v212;
          }

          v214 = buf;
          if (buf[23] < 0)
          {
            v214 = *buf;
          }

          LODWORD(__p[0]) = 136315906;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3703;
          WORD1(__p[2]) = 2080;
          *(&__p[2] + 4) = v213;
          WORD2(__p[3]) = 2080;
          *(&__p[3] + 6) = v214;
          _os_log_impl(&dword_0, v210, OS_LOG_TYPE_DEBUG, "%25s:%-5d Beginning determination of base reconfiguration context for %s %s.", __p, 0x26u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if ((v472[23] & 0x80000000) != 0)
          {
            operator delete(*v472);
          }
        }
      }
    }

    v215 = *v206;
    v216 = *(v206 + 12);
    v217 = 1;
    if (v216 > 1919776354)
    {
      if (v216 > 1987081832)
      {
        if (v216 == 1987081833)
        {
          goto LABEL_455;
        }

        v219 = 30319;
      }

      else
      {
        if (v216 == 1919776355)
        {
          goto LABEL_455;
        }

        v219 = 26467;
      }

      v218 = v219 | 0x76700000;
      goto LABEL_453;
    }

    if (v216 > 1768779618)
    {
      if (v216 != 1768779619)
      {
        v218 = 1768781411;
        goto LABEL_453;
      }
    }

    else if (v216 != 1735222132)
    {
      v218 = 1768057203;
LABEL_453:
      if (v216 != v218)
      {
        v217 = 0;
      }
    }

LABEL_455:
    v220 = *v215;
    v221 = *(&__dst + 1);
    v222 = sub_C493C(*v215, __dst, *(&__dst + 1));
    v223 = v222;
    if (v221 == v222)
    {
      v229 = 1;
      if (v217)
      {
        goto LABEL_522;
      }
    }

    else
    {
      v224 = *v222;
      sub_C34AC(__p, v206);
      if (!sub_CBB10(v224, __p))
      {
        goto LABEL_477;
      }

      v225 = *v206;
      v226 = *v206 + 16;
      v227 = *(*v206 + 24);
      if (v227 != v226)
      {
        while (1)
        {
          sub_25704(v472, (v227 + 32), "", 1728);
          v228 = *(*v472 + 144);
          if (*&v472[8])
          {
            sub_1A8C0(*&v472[8]);
          }

          if (v228 == 1886152047)
          {
            break;
          }

          v227 = *(v227 + 8);
          if (v227 == v226)
          {
            goto LABEL_466;
          }
        }

        v226 = v227;
LABEL_466:
        v225 = *v206;
      }

      if (v226 != v225 + 4 && *(v206 + 192) != *(v224 + 124))
      {
LABEL_477:
        v232 = 2;
        goto LABEL_478;
      }

      v231 = 4;
      if (*(v206 + 280))
      {
        v232 = 2;
      }

      else
      {
        v232 = 4;
      }

      if (*(v206 + 280))
      {
LABEL_478:
        if (v224 != __p && *v224 == __p[0] && *(v224 + 24) == __p[3])
        {
          v233 = *(v224 + 16);
          if (v233 == v224 + 8)
          {
LABEL_485:
            if (sub_CC0D0(v224 + 32, __p[4], __p[6]) && sub_CC0D0(v224 + 56, __p[7], __p[9]) && *(v224 + 80) != v486 && sub_CC200((v224 + 88), v487))
            {
              if (*(v224 + 124) == v487[36])
              {
                v232 = 3;
                v231 = 3;
              }

              else
              {
                v231 = 2;
              }

              goto LABEL_493;
            }
          }

          else
          {
            v234 = &__p[1];
            while (1)
            {
              v234 = v234[1];
              if (!sub_CBC1C((v233 + 16), v234 + 16))
              {
                break;
              }

              v233 = *(v233 + 8);
              if (v233 == v224 + 8)
              {
                goto LABEL_485;
              }
            }
          }
        }

        v231 = 2;
      }

LABEL_493:
      v235 = sub_5544(8);
      if (*(v235 + 8))
      {
        v236 = *v235;
        if (*v235)
        {
          if (os_log_type_enabled(*v235, OS_LOG_TYPE_DEBUG))
          {
            sub_68108(buf, v215);
            if (buf[23] >= 0)
            {
              v237 = buf;
            }

            else
            {
              v237 = *buf;
            }

            sub_53E8(v525, off_6BA918[v232]);
            v238 = v526[7];
            v239 = *v525;
            v240 = sub_CBB10(v224, __p);
            *v472 = 136316162;
            v241 = v525;
            if (v238 < 0)
            {
              v241 = v239;
            }

            *&v472[4] = "RoutingManager.cpp";
            v242 = "different than";
            if (v240)
            {
              v242 = "the same as";
            }

            *&v472[12] = 1024;
            *&v472[14] = 3660;
            *&v472[18] = 2080;
            *&v472[20] = v237;
            *&v472[28] = 2080;
            *&v472[30] = v241;
            *&v472[38] = 2080;
            v473 = v242;
            _os_log_impl(&dword_0, v236, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Reconfiguration Context for %s will be %s because the cashed route snapshot is %s the new route snapshot.", v472, 0x30u);
            if ((v526[7] & 0x80000000) != 0)
            {
              operator delete(*v525);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            v231 = v232;
          }
        }
      }

      v243 = (v231 - 5) >= 0xFFFFFFFE && v220 == 1986291046;
      v244 = v426;
      if (!v243)
      {
        v244 = 1;
      }

      if (v244)
      {
        v229 = v232;
      }

      else
      {
        v229 = 2;
      }

      v245 = sub_CC290(*(v224 + 120));
      v246 = sub_CC290(*&v487[32]);
      if (v221 != v223 + 1)
      {
        memmove(v223, v223 + 1, v221 - (v223 + 1));
      }

      *(&__dst + 1) = v221 - 1;
      if (v487[24] == 1 && (v487[23] & 0x80000000) != 0)
      {
        operator delete(*v487);
      }

      sub_4B0F4(__p[8]);
      sub_4B0F4(__p[5]);
      sub_CC3DC(&__p[1]);
      if ((v245 ^ v246))
      {
LABEL_522:
        v434 = 1;
      }
    }

    *(v206 + 320) = v229;
    *(v206 + 324) = 1;
    if ((MGGetSInt32Answer() != 7) | v434 & 1)
    {
      v247 = sub_5544(8);
      if (*(v247 + 8))
      {
        v248 = *v247;
        if (*v247)
        {
          if (os_log_type_enabled(*v247, OS_LOG_TYPE_DEBUG))
          {
            sub_68108(v472, *v206);
            v249 = v472;
            if (v472[23] < 0)
            {
              v249 = *v472;
            }

            LODWORD(__p[0]) = 136315650;
            *(__p + 4) = "RoutingManager.cpp";
            WORD2(__p[1]) = 1024;
            *(&__p[1] + 6) = 3719;
            WORD1(__p[2]) = 2080;
            *(&__p[2] + 4) = v249;
            _os_log_impl(&dword_0, v248, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Updating reconfiguration context based on shared hardware invalidation for %s.", __p, 0x1Cu);
            if ((v472[23] & 0x80000000) != 0)
            {
              operator delete(*v472);
            }
          }
        }
      }

      v250 = *(v206 + 320);
      v251 = *v206;
      v252 = *(v206 + 12);
      if (v252 == 1986556788 || v252 == 1987211117 || v252 == 1987208039)
      {
        if (sub_CB5C4())
        {
          v253 = *(v206 + 156) & 1;
        }

        else
        {
          v253 = 1;
        }
      }

      else
      {
        sub_CB5C4();
        v253 = 0;
      }

      sub_CB2A8(v472, v251, v253);
      v254 = *v206;
      memset(__p, 0, 24);
      strcpy(&__p[3], "cwdv");
      LOBYTE(__p[4]) = 0;
      LODWORD(__p[5]) = 3;
      __p[7] = 0;
      __p[8] = 0;
      __p[6] = &__p[7];
      LODWORD(__p[9]) = 44739242;
      *v487 = 0uLL;
      v486 = 0;
      sub_9D49C(v543, v254, __p);
      *(v206 + 320) = sub_CC4DC(v250, v472, v543, (v206 + 160), v456);
      *(v206 + 324) = 1;
      sub_65310(v543);
      if ((v487[15] & 0x80000000) != 0)
      {
        operator delete(v486);
      }

      sub_477A0(__p[7]);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      sub_4B0F4(*&v472[32]);
      sub_4B0F4(*&v472[8]);
    }

    switch(a14)
    {
      case 0x62747570u:
        v260 = *v206;
        v261 = *(v206 + 12);
        if (v261 == 1986556788 || v261 == 1987211117 || v261 == 1987208039)
        {
          if (sub_CB5C4())
          {
            v262 = *(v206 + 156) & 1;
          }

          else
          {
            v262 = 1;
          }
        }

        else
        {
          sub_CB5C4();
          v262 = 0;
        }

        sub_CB2A8(__p, v260, v262);
        v271 = __p[0];
        if (__p[0] != &__p[1])
        {
          do
          {
            sub_8D290(v472, v271 + 4, "", 3761);
            v272 = (*(**v472 + 384))(*v472);
            if (*&v472[8])
            {
              sub_1A8C0(*&v472[8]);
            }

            if (v272)
            {
              goto LABEL_607;
            }

            v273 = v271[1];
            if (v273)
            {
              do
              {
                v274 = v273;
                v273 = *v273;
              }

              while (v273);
            }

            else
            {
              do
              {
                v274 = v271[2];
                v63 = *v274 == v271;
                v271 = v274;
              }

              while (!v63);
            }

            v271 = v274;
          }

          while (v274 != &__p[1]);
        }

        v275 = __p[3];
        if (__p[3] != &__p[4])
        {
          while (1)
          {
            sub_8D290(v472, v275 + 4, "", 3761);
            v276 = (*(**v472 + 384))(*v472);
            if (*&v472[8])
            {
              sub_1A8C0(*&v472[8]);
            }

            if (v276)
            {
              goto LABEL_607;
            }

            v277 = v275[1];
            if (v277)
            {
              do
              {
                v278 = v277;
                v277 = *v277;
              }

              while (v277);
            }

            else
            {
              do
              {
                v278 = v275[2];
                v63 = *v278 == v275;
                v275 = v278;
              }

              while (!v63);
            }

            v275 = v278;
            if (v278 == &__p[4])
            {
              goto LABEL_608;
            }
          }
        }

        goto LABEL_608;
      case 0x63616463u:
        v257 = *v206;
        v258 = *(v206 + 12);
        if (v258 == 1986556788 || v258 == 1987211117 || v258 == 1987208039)
        {
          if (sub_CB5C4())
          {
            v259 = *(v206 + 156) & 1;
          }

          else
          {
            v259 = 1;
          }
        }

        else
        {
          sub_CB5C4();
          v259 = 0;
        }

        sub_CB2A8(__p, v257, v259);
        v263 = __p[0];
        if (__p[0] != &__p[1])
        {
          do
          {
            sub_8D290(v472, v263 + 4, "", 3743);
            v264 = (*(**v472 + 400))(*v472);
            if (*&v472[8])
            {
              sub_1A8C0(*&v472[8]);
            }

            if (v264)
            {
              goto LABEL_607;
            }

            v265 = v263[1];
            if (v265)
            {
              do
              {
                v266 = v265;
                v265 = *v265;
              }

              while (v265);
            }

            else
            {
              do
              {
                v266 = v263[2];
                v63 = *v266 == v263;
                v263 = v266;
              }

              while (!v63);
            }

            v263 = v266;
          }

          while (v266 != &__p[1]);
        }

        v267 = __p[3];
        if (__p[3] != &__p[4])
        {
          while (1)
          {
            sub_8D290(v472, v267 + 4, "", 3743);
            v268 = (*(**v472 + 400))(*v472);
            if (*&v472[8])
            {
              sub_1A8C0(*&v472[8]);
            }

            if (v268)
            {
              break;
            }

            v269 = v267[1];
            if (v269)
            {
              do
              {
                v270 = v269;
                v269 = *v269;
              }

              while (v269);
            }

            else
            {
              do
              {
                v270 = v267[2];
                v63 = *v270 == v267;
                v267 = v270;
              }

              while (!v63);
            }

            v267 = v270;
            if (v270 == &__p[4])
            {
              goto LABEL_608;
            }
          }

LABEL_607:
          *(v206 + 320) = 2;
          *(v206 + 324) = 1;
        }

LABEL_608:
        sub_4B0F4(__p[4]);
        sub_4B0F4(__p[1]);
        break;
      case 0x72776C63u:
        v255 = *v206 + 16;
        for (n = *(*v206 + 24); n != v255; n = *(n + 8))
        {
          if (sub_9C4E4(1885892674, (n + 16)))
          {
            *(v206 + 320) = 2;
            *(v206 + 324) = 1;
            goto LABEL_609;
          }
        }

        break;
    }

LABEL_609:
    if ((*(v206 + 324) & 1) == 0)
    {
      v391 = sub_5544(14);
      v392 = *v391;
      if (*v391 && os_log_type_enabled(*v391, OS_LOG_TYPE_ERROR))
      {
        LODWORD(__p[0]) = 136315394;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 3774;
        _os_log_impl(&dword_0, v392, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Route reconfiguration context must be valid at this point.", __p, 0x12u);
      }

      v393 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v393, "Route reconfiguration context must be valid at this point.");
    }

    v279 = *(v206 + 320) == 4;
    v280 = sub_5544(8);
    if (*(v280 + 8))
    {
      v281 = *v280;
      if (*v280)
      {
        if (os_log_type_enabled(*v280, OS_LOG_TYPE_DEBUG))
        {
          sub_68108(v472, *v206);
          v282 = *(v206 + 320);
          v283 = "????";
          if (v282 <= 4)
          {
            v283 = off_6BA918[v282];
          }

          v284 = v472[23];
          v285 = *v472;
          sub_53E8(buf, v283);
          v286 = v472;
          if (v284 < 0)
          {
            v286 = v285;
          }

          v287 = buf;
          if (buf[23] < 0)
          {
            v287 = *buf;
          }

          LODWORD(__p[0]) = 136315906;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3780;
          WORD1(__p[2]) = 2080;
          *(&__p[2] + 4) = v286;
          WORD2(__p[3]) = 2080;
          *(&__p[3] + 6) = v287;
          _os_log_impl(&dword_0, v281, OS_LOG_TYPE_DEBUG, "%25s:%-5d Completed determination of base reconfiguration context for %s. Inserting %s into the multirouteprocessinginfo.", __p, 0x26u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if ((v472[23] & 0x80000000) != 0)
          {
            operator delete(*v472);
          }
        }
      }
    }

    v288 = *&v456[8];
    if (*&v456[8] >= *&v456[16])
    {
      v290 = 0x8F9C18F9C18F9C19 * ((*&v456[8] - *v456) >> 3) + 1;
      if (v290 > 0xC7CE0C7CE0C7CELL)
      {
        sub_189A00();
      }

      if (0x1F3831F3831F3832 * ((*&v456[16] - *v456) >> 3) > v290)
      {
        v290 = 0x1F3831F3831F3832 * ((*&v456[16] - *v456) >> 3);
      }

      if (0x8F9C18F9C18F9C19 * ((*&v456[16] - *v456) >> 3) >= 0x63E7063E7063E7)
      {
        v291 = 0xC7CE0C7CE0C7CELL;
      }

      else
      {
        v291 = v290;
      }

      __p[4] = v456;
      if (v291)
      {
        sub_2622C0(v291);
      }

      v292 = (8 * ((*&v456[8] - *v456) >> 3));
      __p[0] = 0;
      __p[1] = v292;
      *&__p[2] = v292;
      *v292 = *v206;
      sub_C3084((v292 + 1), (v206 + 8));
      v292[40] = *(v206 + 320);
      __p[2] = __p[2] + 328;
      v293 = __p[1] + *v456 - *&v456[8];
      sub_C3248(*v456, *&v456[8], v293);
      v294 = *v456;
      v295 = *&v456[16];
      *v456 = v293;
      v427 = __p[2];
      *&v456[8] = *&__p[2];
      __p[2] = v294;
      __p[3] = v295;
      __p[1] = v294;
      __p[0] = v294;
      sub_C3300(__p);
      v289 = v427;
    }

    else
    {
      **&v456[8] = *v206;
      sub_C3084(v288 + 8, (v206 + 8));
      *(v288 + 320) = *(v206 + 320);
      v289 = (v288 + 328);
    }

    v208 = v279 & v437;
    *&v456[8] = v289;
    v206 += 328;
    if (v206 != v429)
    {
      continue;
    }

    break;
  }

  v207 = v279 & v437;
LABEL_636:
  memset(buf, 0, 24);
  v296 = *(&__dst + 1);
  v297 = __dst;
  if (__dst != *(&__dst + 1))
  {
    v298 = sub_5544(8);
    if (*(v298 + 8))
    {
      v299 = *v298;
      if (*v298)
      {
        if (os_log_type_enabled(*v298, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3788;
          _os_log_impl(&dword_0, v299, OS_LOG_TYPE_DEBUG, "%25s:%-5d Beginning to prune obsolete snapshots.", __p, 0x12u);
        }
      }
    }

    do
    {
      if (!*v297)
      {
        v388 = sub_5544(14);
        v389 = *v388;
        if (*v388 && os_log_type_enabled(*v388, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3791;
          _os_log_impl(&dword_0, v389, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
        }

        v390 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v390, "Precondition failure.");
      }

      v300 = sub_5544(8);
      if (*(v300 + 8))
      {
        v301 = *v300;
        if (*v300)
        {
          if (os_log_type_enabled(*v300, OS_LOG_TYPE_DEBUG))
          {
            sub_238464(v472, *v297);
            v302 = v472;
            if (v472[23] < 0)
            {
              v302 = *v472;
            }

            LODWORD(__p[0]) = 136315650;
            *(__p + 4) = "RoutingManager.cpp";
            WORD2(__p[1]) = 1024;
            *(&__p[1] + 6) = 3792;
            WORD1(__p[2]) = 2080;
            *(&__p[2] + 4) = v302;
            _os_log_impl(&dword_0, v301, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Destroying obsolete snapshot %s.", __p, 0x1Cu);
            if ((v472[23] & 0x80000000) != 0)
            {
              operator delete(*v472);
            }
          }
        }
      }

      v303 = *v297;
      sub_1419F0(__p, *v297 + 32);
      sub_1419F0(&__p[3], v303 + 56);
      sub_141A44(v525, *v297);
      v472[0] = 0;
      v472[24] = 0;
      sub_CC4DC(0, __p, v525, v472, v456);
      if (v472[24] == 1 && (v472[23] & 0x80000000) != 0)
      {
        operator delete(*v472);
      }

      sub_65310(v525);
      sub_4B0F4(__p[4]);
      sub_4B0F4(__p[1]);
      v304 = **v297;
      v486 = 0;
      memset(v487, 0, 37);
      memset(&__p[1] + 4, 0, 48);
      *&__p[7] = 0u;
      __p[9] = &v486;
      v488[0] = 0;
      v488[1] = 0;
      __p[0] = v304;
      LODWORD(__p[1]) = 1;
      v305 = *&buf[8];
      if (*&buf[8] >= *&buf[16])
      {
        v306 = sub_141EC0(buf, __p);
      }

      else
      {
        sub_141FEC(*&buf[8], __p);
        v306 = v305 + 144;
      }

      *&buf[8] = v306;
      if (v488[1])
      {
        std::__shared_weak_count::__release_weak(v488[1]);
      }

      if (*&v487[8])
      {
        *&v487[16] = *&v487[8];
        operator delete(*&v487[8]);
      }

      sub_477A0(v486);
      if (__p[4])
      {
        std::__shared_weak_count::__release_weak(__p[4]);
      }

      ++v297;
    }

    while (v297 != v296);
    v307 = sub_5544(8);
    if (*(v307 + 8))
    {
      v308 = *v307;
      if (*v307)
      {
        if (os_log_type_enabled(*v307, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3799;
          _os_log_impl(&dword_0, v308, OS_LOG_TYPE_DEBUG, "%25s:%-5d Completed pruning obsolete snapshots.", __p, 0x12u);
        }
      }
    }

    v207 = 0;
  }

  LOBYTE(v441) = v207;
  v443 = 0;
  v442 = 0uLL;
  __p[0] = &v442;
  LOBYTE(__p[1]) = 0;
  if (*&v456[8] != *v456)
  {
    v309 = 0x8F9C18F9C18F9C19 * ((*&v456[8] - *v456) >> 3);
    if (v309 <= 0xC7CE0C7CE0C7CELL)
    {
      sub_2622C0(v309);
    }

    sub_189A00();
  }

  v445 = 0;
  v444 = 0uLL;
  __p[0] = &v444;
  LOBYTE(__p[1]) = 0;
  if (*&buf[8] != *buf)
  {
    v310 = 0x8E38E38E38E38E39 * ((*&buf[8] - *buf) >> 4);
    if (v310 < 0x1C71C71C71C71C8)
    {
      sub_262264(v310);
    }

    sub_189A00();
  }

  __p[0] = buf;
  sub_D02B4(__p);
  if (__dst)
  {
    operator delete(__dst);
  }

  __p[0] = v456;
  sub_D0330(__p);
  v311 = v441;
  v312 = v448[0];
  if (v448[0])
  {
    v313 = v448[1];
    v314 = v448[0];
    if (v448[1] != v448[0])
    {
      do
      {
        v315 = v313 - 328;
        sub_262018((v313 - 320));
        v313 = v315;
      }

      while (v315 != v312);
      v314 = v448[0];
    }

    v448[1] = v312;
    operator delete(v314);
  }

  *v448 = v442;
  v449 = v443;
  v443 = 0;
  v442 = 0uLL;
  v316 = v446[0];
  if (v446[0])
  {
    for (ii = v446[1]; ii != v316; sub_1416D8(ii))
    {
      ii -= 144;
    }

    v446[1] = v316;
    operator delete(v446[0]);
  }

  *v446 = v444;
  v447 = v445;
  v445 = 0;
  v444 = 0uLL;
  __p[0] = &v444;
  sub_D02B4(__p);
  __p[0] = &v442;
  sub_D0330(__p);
  __p[0] = &v439;
  sub_D0330(__p);
  if (!v311)
  {
    v323 = sub_5544(8);
    if (*(v323 + 8))
    {
      v324 = *v323;
      if (*v323)
      {
        if (os_log_type_enabled(*v323, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3319;
          _os_log_impl(&dword_0, v324, OS_LOG_TYPE_DEBUG, "%25s:%-5d Route change was NOT redundant, performing full activation", __p, 0x12u);
        }
      }
    }

    v325 = 1918989155;
    if (a14 != 1918989155)
    {
      v326 = v448[0];
      if (v448[0] == v448[1])
      {
        goto LABEL_699;
      }

      v327 = v448[0];
      while (**v327 != 1986291046)
      {
        v327 += 41;
        if (v327 == v448[1])
        {
          goto LABEL_699;
        }
      }

      if (v327 == v448[1])
      {
LABEL_699:
        v328 = sub_5544(14);
        v329 = *v328;
        if (*v328 && os_log_type_enabled(*v328, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 136315394;
          *(__p + 4) = "RoutingManager.cpp";
          WORD2(__p[1]) = 1024;
          *(&__p[1] + 6) = 3330;
          _os_log_impl(&dword_0, v329, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
        }

        v330 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v330, "Precondition failure.");
      }

      v357 = *(v327 + 324) ^ 1 | (*(v327 + 80) != 4);
      while (**v326 != 1986291305)
      {
        v326 += 41;
        if (v326 == v448[1])
        {
          goto LABEL_774;
        }
      }

      if (v326 == v448[1])
      {
LABEL_774:
        v362 = 0;
      }

      else
      {
        v358 = *(v326 + 324);
        v359 = *(v326 + 80);
        v360 = v358 ^ 1;
        if (v359 != 1)
        {
          v360 = 1;
        }

        if (v358 == 1 && v359 == 4)
        {
          v362 = 0;
        }

        else
        {
          v362 = v360;
        }
      }

      if ((v357 | v362))
      {
        v325 = a14;
      }

      else
      {
        v325 = 1919181936;
      }
    }

    v363 = sub_5544(8);
    v364 = *v363;
    if (*v363 && os_log_type_enabled(*v363, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(v472, v325);
      v365 = v472[23] >= 0 ? v472 : *v472;
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3353;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v365;
      _os_log_impl(&dword_0, v364, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Route change reason: %s", __p, 0x1Cu);
      if ((v472[23] & 0x80000000) != 0)
      {
        operator delete(*v472);
      }
    }

    LOBYTE(v415) = a12;
    sub_25B5B8(__p, a2, v448, v446, a5, a6, a7, v416, a9, a10, a11, v415, a13, v325);
  }

  v318 = sub_5544(8);
  v319 = sub_5544(35);
  v320 = 0;
  __p[0] = 0x100000002;
  v321 = *(v318 + 8);
  while (1)
  {
    v322 = *(__p + v320);
    if (((v321 & v322) != 0) != ((*(v319 + 8) & v322) != 0))
    {
      break;
    }

    v320 += 4;
    if (v320 == 8)
    {
      goto LABEL_705;
    }
  }

  if ((v321 & v322) == 0)
  {
    v318 = v319;
  }

LABEL_705:
  v331 = *v318;
  if (v331 && os_log_type_enabled(v331, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = "RoutingManager.cpp";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 3272;
    _os_log_impl(&dword_0, v331, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant concrete route(s) encountered. Bypassing full activation.", __p, 0x12u);
  }

  sub_21991C(__p, 1920099684);
  sub_256828(a1, __p);
  if (LOBYTE(__p[7]) == 1)
  {
    sub_175F78(&__p[3]);
  }

  if (a14 == 1920360819)
  {
    sub_21991C(__p, 1920360819);
    sub_256828(a1, __p);
    if (LOBYTE(__p[7]) == 1)
    {
      sub_175F78(&__p[3]);
    }
  }

  if ((a2 + 48) != a5)
  {
    sub_4ABC8((a2 + 48), *a5, a5 + 1);
  }

  v332 = sub_5544(8);
  v333 = *v332;
  if (*v332 && os_log_type_enabled(*v332, OS_LOG_TYPE_DEBUG))
  {
    sub_11683C(v472, *(a2 + 48), (a2 + 56));
    v334 = v472[23];
    v335 = *v472;
    sub_11683C(buf, *a5, a5 + 1);
    v336 = v472;
    if (v334 < 0)
    {
      v336 = v335;
    }

    if (buf[23] >= 0)
    {
      v337 = buf;
    }

    else
    {
      v337 = *buf;
    }

    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = "RoutingManager.cpp";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 3281;
    WORD1(__p[2]) = 2080;
    *(&__p[2] + 4) = v336;
    WORD2(__p[3]) = 2080;
    *(&__p[3] + 6) = v337;
    _os_log_impl(&dword_0, v333, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting mDisallowedPortTypes. Old: %s; new: %s.", __p, 0x26u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v472[23] & 0x80000000) != 0)
    {
      operator delete(*v472);
    }
  }

  if ((a2 + 120) != a7)
  {
    sub_4ABC8((a2 + 120), *a7, a7 + 1);
  }

  v338 = sub_5544(8);
  v339 = *v338;
  if (*v338 && os_log_type_enabled(*v338, OS_LOG_TYPE_DEBUG))
  {
    sub_11683C(v472, *(a2 + 120), (a2 + 128));
    v340 = v472[23];
    v341 = *v472;
    sub_11683C(buf, *a7, a7 + 1);
    v342 = v472;
    if (v340 < 0)
    {
      v342 = v341;
    }

    if (buf[23] >= 0)
    {
      v343 = buf;
    }

    else
    {
      v343 = *buf;
    }

    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = "RoutingManager.cpp";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 3284;
    WORD1(__p[2]) = 2080;
    *(&__p[2] + 4) = v342;
    WORD2(__p[3]) = 2080;
    *(&__p[3] + 6) = v343;
    _os_log_impl(&dword_0, v339, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting mAllowedPortTypes. Old: %s; new: %s.", __p, 0x26u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v472[23] & 0x80000000) != 0)
    {
      operator delete(*v472);
    }
  }

  v344 = sub_5544(8);
  v345 = *v344;
  if (*v344 && os_log_type_enabled(*v344, OS_LOG_TYPE_DEBUG))
  {
    sub_2AB344(v472, (a2 + 240));
    v346 = v472[23];
    v347 = *v472;
    sub_2AB344(buf, a11);
    v348 = v472;
    if (v346 < 0)
    {
      v348 = v347;
    }

    if (buf[23] >= 0)
    {
      v349 = buf;
    }

    else
    {
      v349 = *buf;
    }

    LODWORD(__p[0]) = 136315906;
    *(__p + 4) = "RoutingManager.cpp";
    WORD2(__p[1]) = 1024;
    *(&__p[1] + 6) = 3286;
    WORD1(__p[2]) = 2080;
    *(&__p[2] + 4) = v348;
    WORD2(__p[3]) = 2080;
    *(&__p[3] + 6) = v349;
    _os_log_impl(&dword_0, v345, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting mPreferredPersistentRoute. Old: %s; new: %s.", __p, 0x26u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v472[23] & 0x80000000) != 0)
    {
      operator delete(*v472);
    }
  }

  if (a2 + 240 != a11)
  {
    sub_D03B8((a2 + 240), *a11, *(a11 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a11 + 8) - *a11) >> 3));
    sub_D03B8((a2 + 264), *(a11 + 24), *(a11 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a11 + 32) - *(a11 + 24)) >> 3));
    *(a2 + 320) = *(a11 + 80);
    sub_D055C((a2 + 288), *(a11 + 64));
    *(a2 + 360) = *(a11 + 120);
    sub_D055C((a2 + 328), *(a11 + 104));
    *(a2 + 400) = *(a11 + 160);
    sub_D055C((a2 + 368), *(a11 + 144));
  }

  *(a2 + 408) = a12;
  *(a2 + 410) = a17;
  v350 = a18[1];
  if (v350 && *(v350 + 8) != -1)
  {
    v351 = *a18;
    atomic_fetch_add_explicit((v350 + 16), 1uLL, memory_order_relaxed);
    v352 = *(a2 + 184);
    *(a2 + 176) = v351;
    *(a2 + 184) = v350;
    if (v352)
    {
      std::__shared_weak_count::__release_weak(v352);
    }

    *(a2 + 192) = *(a18 + 8);
  }

  if (a12)
  {
    sub_15B5D8(__p, a6);
    v353 = a2 + 80;
    sub_98A08(*(a2 + 80));
    v354 = __p[1];
    *(a2 + 72) = __p[0];
    v355 = (a2 + 72);
    *(a2 + 80) = v354;
    v356 = __p[2];
    *(a2 + 88) = __p[2];
    if (v356)
    {
      v354[2] = v353;
      __p[0] = &__p[1];
      __p[1] = 0;
      __p[2] = 0;
    }

    else
    {
      *v355 = v353;
    }

    v366 = a2 + 104;
    sub_178A90(*(a2 + 104));
    v367 = __p[4];
    *(a2 + 96) = __p[3];
    *(a2 + 104) = v367;
    v368 = __p[5];
    *(a2 + 112) = __p[5];
    if (v368)
    {
      v367[2] = v366;
      __p[3] = &__p[4];
      __p[4] = 0;
      __p[5] = 0;
      v367 = 0;
    }

    else
    {
      *(a2 + 96) = v366;
    }

    sub_178A90(v367);
    sub_98A08(__p[1]);
    v369 = sub_5544(8);
    v370 = *v369;
    if (*v369)
    {
      if (os_log_type_enabled(*v369, OS_LOG_TYPE_DEBUG))
      {
        sub_25B214(v472, v355);
        v371 = v472[23] >= 0 ? v472 : *v472;
        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "RoutingManager.cpp";
        WORD2(__p[1]) = 1024;
        *(&__p[1] + 6) = 3298;
        WORD1(__p[2]) = 2080;
        *(&__p[2] + 4) = v371;
        _os_log_impl(&dword_0, v370, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting mDisallowedPorts to : %s.", __p, 0x1Cu);
        if ((v472[23] & 0x80000000) != 0)
        {
          operator delete(*v472);
        }
      }
    }
  }

  if (*v424 != *v418 || *(v420 + 11) != *(a2 + 36))
  {
    goto LABEL_803;
  }

  v372 = *(v420 + 52);
  v373 = *(a2 + 44);
  if (v372 == v373 && *(v420 + 52))
  {
    v372 = *(v420 + 12);
    v373 = *(a2 + 40);
  }

  if (v372 != v373)
  {
LABEL_803:
    v374 = sub_5544(8);
    v375 = *v374;
    if (*v374 && os_log_type_enabled(*v374, OS_LOG_TYPE_DEBUG))
    {
      sub_879F8(v472, v418);
      v376 = v472[23];
      v377 = *v472;
      sub_879F8(buf, v424);
      v378 = v472;
      if (v376 < 0)
      {
        v378 = v377;
      }

      if (buf[23] >= 0)
      {
        v379 = buf;
      }

      else
      {
        v379 = *buf;
      }

      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = "RoutingManager.cpp";
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = 3303;
      WORD1(__p[2]) = 2080;
      *(&__p[2] + 4) = v378;
      WORD2(__p[3]) = 2080;
      *(&__p[3] + 6) = v379;
      _os_log_impl(&dword_0, v375, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting current category and mode. old: %s; new: '%s'", __p, 0x26u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if ((v472[23] & 0x80000000) != 0)
      {
        operator delete(*v472);
      }
    }

    *v418 = *v424;
    if (*a10 != 1635087471)
    {
      *(a2 + 200) = *a10;
      std::string::operator=((a2 + 208), (a10 + 8));
      *(a2 + 232) = *(a10 + 32);
      v380 = sub_5544(8);
      if (*(v380 + 8))
      {
        v381 = *v380;
        if (*v380)
        {
          if (os_log_type_enabled(*v380, OS_LOG_TYPE_DEBUG))
          {
            sub_22170(v472, *(a2 + 200));
            v382 = v472[23] >= 0 ? v472 : *v472;
            LODWORD(__p[0]) = 136315650;
            *(__p + 4) = "RoutingManager.cpp";
            WORD2(__p[1]) = 1024;
            *(&__p[1] + 6) = 3310;
            WORD1(__p[2]) = 2080;
            *(&__p[2] + 4) = v382;
            _os_log_impl(&dword_0, v381, OS_LOG_TYPE_DEBUG, "%25s:%-5d Set RouteInitiationInfo to %s.", __p, 0x1Cu);
            if ((v472[23] & 0x80000000) != 0)
            {
              operator delete(*v472);
            }
          }
        }
      }
    }

    sub_21991C(__p, 1919186544);
    sub_256828(a1, __p);
    if (LOBYTE(__p[7]) == 1)
    {
      sub_175F78(&__p[3]);
    }
  }

  __p[0] = v446;
  sub_D02B4(__p);
  __p[0] = v448;
  sub_D0330(__p);
  sub_C31F4(v451);
  __p[0] = &v453;
  sub_9DDC4(__p);
}