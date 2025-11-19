void *sub_3C340C(void *result, unsigned int a2)
{
  v2 = result[3];
  if (0xAAAAAAAAAAAAAAABLL * ((result[4] - v2) >> 3) > a2)
  {
    v3 = result;
    v4 = a2;
    v5 = result[2];
    v6 = *(v2 + 24 * a2 + 16);
    result = AUPBUnregisterAU();
    v8 = v3[3];
    v7 = v3[4];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) > v4)
    {
      v9 = v8 + 24 * v4;
      v10 = v7 - (v9 + 24);
      if (v7 != v9 + 24)
      {
        result = memmove(v9, (v9 + 24), v7 - (v9 + 24));
      }

      v3[4] = v9 + v10;
    }
  }

  return result;
}

void sub_3C34B0(uint64_t a1)
{
  sub_13AB3C(a1 + 48);
  v2 = *(a1 + 32);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_3C34FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6CEE88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3C3570(unsigned int a1)
{
  sub_26C0(&unk_6FCDC8);
  v2 = sub_23B090(&xmmword_6FCEE8, a1);
  if (v2)
  {
    atomic_store(0, (v2[3] + 312));
  }

  sub_3174(&unk_6FCDC8);
}

__n128 sub_3C35D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6CEEC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_3C366C(uint64_t a1)
{
  if (sub_2993E8())
  {
    v2 = *(a1 + 880);

    sub_2995BC(v2);
  }

  else
  {

    sub_D4AA4(a1);
  }
}

uint64_t sub_3C36DC(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886743662 && a2 != 1885629550)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_Baseband_Voice_Aspen.cpp";
      v15 = 1024;
      v16 = 164;
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
        v14 = "Device_Baseband_Voice_Aspen.cpp";
        v15 = 1024;
        v16 = 165;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_3C38BC(caulk::build::detail *a1)
{
  sub_4ADCC0(a1);
  v19 = 0x707472756D646473;
  v20 = 0;
  if ((*(*a1 + 16))(a1, &v19))
  {
    LODWORD(__dst[0]) = 1634742884;
    (*(*a1 + 48))(a1, &v19, 0, 0, 4, __dst);
  }

  v17 = 0x676C6F6263737263;
  v18 = 0;
  if ((*(*a1 + 16))(a1, &v17))
  {
    LODWORD(__dst[0]) = 1650602615;
    (*(*a1 + 48))(a1, &v17, 0, 0, 4, __dst);
  }

  sub_53E8(buf, "Baseband Downlink");
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_54A0(__dst, *buf, *&buf[8]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *__dst = *buf;
    v13 = *&buf[16];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
  }

  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    sub_2500F8(v21, __dst);
    v4 = v22;
    v5 = *v21;
    (*(*a1 + 128))(__p, a1);
    v6 = v21;
    if (v4 < 0)
    {
      v6 = v5;
    }

    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315906;
    *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 134;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    v24 = 2080;
    v25 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating a baseband downlink port with name %s and UID %s", buf, 0x26u);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    if (v22 < 0)
    {
      operator delete(*v21);
    }
  }

  v8 = *(a1 + 11);
  v9 = *(a1 + 10);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  memset(buf, 0, 24);
  (*(*a1 + 128))(v21, a1);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  sub_227C30();
}

void sub_3C3F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1E19A0(v28 - 144);
  sub_1E19A0(&a28);
  _Unwind_Resume(a1);
}

void sub_3C4120(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1A8C0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C413C(uint64_t **a1, double a2)
{
  if (((*a1)[13])(a1) == a2)
  {
    v4 = sub_5544(13);
    v5 = sub_5544(40);
    v6 = 0;
    *v35 = 0x100000002;
    v7 = *(v4 + 8);
    while (1)
    {
      v8 = *&v35[v6];
      if (((v7 & v8) != 0) != ((*(v5 + 8) & v8) != 0))
      {
        break;
      }

      v6 += 4;
      if (v6 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v7 & v8) == 0)
    {
      v4 = v5;
    }

LABEL_13:
    v16 = *v4;
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v35 = 136315650;
      *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
      v36 = 1024;
      v37 = 87;
      v38 = 2048;
      v39 = a2;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%25s:%-5d Current sample rate %f is same as target rate to set to, nothing to do here!", v35, 0x1Cu);
    }

    return 0;
  }

  v9 = sub_4AF738(a1, a2);
  if (!v9)
  {
    v17 = a1[110];
    std::mutex::lock((v17 + 1));
    v18 = v17[9];
    std::mutex::unlock((v17 + 1));
    if ((v18 & 0x100000000) != 0)
    {
      v19 = sub_5544(18);
      v20 = sub_5544(13);
      v21 = 0;
      *v35 = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&v35[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_34;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_34:
      v29 = sub_5544(40);
      v30 = 0;
      *v35 = 0x100000002;
      v31 = *(v19 + 8);
      while (1)
      {
        v32 = *&v35[v30];
        if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
        {
          break;
        }

        v30 += 4;
        if (v30 == 8)
        {
          goto LABEL_41;
        }
      }

      if ((v31 & v32) == 0)
      {
        v19 = v29;
      }

      v31 = *(v19 + 8);
LABEL_41:
      if (v31)
      {
        v33 = *v19;
        if (v33)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *v35 = 136315650;
            *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
            v36 = 1024;
            v37 = 99;
            v38 = 2048;
            v39 = a2;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d Successfully set baseband hardware sample rate to %f", v35, 0x1Cu);
          }
        }
      }

      sub_2996BC(a1[110], a2);
    }

    return 0;
  }

  v10 = v9;
  v11 = sub_5544(18);
  v12 = sub_5544(13);
  v13 = 0;
  *v35 = 0x100000002;
  v14 = *(v11 + 8);
  while (1)
  {
    v15 = *&v35[v13];
    if (((v14 & v15) != 0) != ((*(v12 + 8) & v15) != 0))
    {
      break;
    }

    v13 += 4;
    if (v13 == 8)
    {
      goto LABEL_23;
    }
  }

  if ((v14 & v15) == 0)
  {
    v11 = v12;
  }

LABEL_23:
  v24 = sub_5544(40);
  v25 = 0;
  *v35 = 0x100000002;
  v26 = *(v11 + 8);
  while (1)
  {
    v27 = *&v35[v25];
    if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
    {
      break;
    }

    v25 += 4;
    if (v25 == 8)
    {
      goto LABEL_29;
    }
  }

  if ((v26 & v27) == 0)
  {
    v11 = v24;
  }

LABEL_29:
  v28 = *v11;
  if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *v35 = 136315650;
    *&v35[4] = "Device_Baseband_Voice_Aspen.cpp";
    v36 = 1024;
    v37 = 94;
    v38 = 1024;
    LODWORD(v39) = v10;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d Error from SetSampleRateSynchronously: %d", v35, 0x18u);
  }

  return v10;
}

BOOL sub_3C453C(uint64_t a1, AudioObjectPropertyAddress *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), unint64_t a4)
{
  if (sub_3C4760(a2))
  {
    *buf = *&a2->mSelector;
    *&buf[8] = a2->mElement;
    result = sub_6FE08(a1 + 536, buf);
    if (result)
    {
      v18 = *&a2->mSelector;
      mElement = a2->mElement;
      *buf = *&a2->mSelector;
      *&buf[8] = a2->mElement;
      *&v22[2] = a3;
      v23 = a4;
      sub_185D3C((a1 + 536), &v18, buf);
      v9 = qword_6F72E0;
      v10 = qword_6F72E8;
      while (v9 != v10)
      {
        if (sub_6FE08(a1 + 536, v9))
        {
          return 1;
        }

        v9 += 12;
      }

      v11 = *(a1 + 880);
      v12 = sub_5544(13);
      v13 = sub_5544(40);
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
            goto LABEL_21;
          }

          goto LABEL_18;
        }
      }

      if ((v15 & v16) == 0)
      {
        v12 = v13;
      }

      if (*(v12 + 8))
      {
LABEL_18:
        v17 = *v12;
        if (v17)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "CoreTelephonyInterface.cpp";
            v21 = 1024;
            *v22 = 698;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unregistering Telephony callback", buf, 0x12u);
          }
        }
      }

LABEL_21:
      sub_299364(v11 + 96);
      return 1;
    }
  }

  else
  {

    return sub_187634(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_3C4760(_DWORD *a1)
{
  v1 = qword_6F72E0;
  if (qword_6F72E0 == qword_6F72E8)
  {
    return 0;
  }

  while (a1[1] != v1[1] || *a1 != *v1 || a1[2] != v1[2])
  {
    v1 += 3;
    if (v1 == qword_6F72E8)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_3C47BC(uint64_t a1, unsigned int *a2, OSStatus (__cdecl *a3)(AudioObjectID, UInt32, const AudioObjectPropertyAddress *, void *), void *a4)
{
  if (sub_3C4760(a2))
  {
    v8 = qword_6F72E0;
    for (i = qword_6F72E8; v8 != i; v8 += 12)
    {
      if (sub_6FE08(a1 + 536, v8))
      {
        break;
      }
    }

    v11 = *a2;
    v15 = a4;
    *buf = v11;
    v17 = a2[2];
    v12 = *a2;
    LODWORD(v13) = a2[2];
    v14 = a3;
    sub_17C118((a1 + 536), buf, &v12);
  }

  return sub_17C9AC(a1, a2, a3, a4);
}

void sub_3C4A74(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_3C4AA0(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = sub_5544(18);
  v5 = sub_5544(13);
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
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = sub_5544(40);
  v10 = 0;
  *buf = 0x100000002;
  v11 = *(v4 + 8);
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
      if ((v11 & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_15;
    }
  }

  if ((v11 & v12) == 0)
  {
    v4 = v9;
  }

  if (*(v4 + 8))
  {
LABEL_15:
    v13 = *v4;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (v2 >= 3)
      {
        v15 = sub_5544(14);
        v16 = *v15;
        if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "CoreTelephonyInterface.h";
          v27 = 1024;
          v28 = 94;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid TelephonyValueChangeType", buf, 0x12u);
        }

        v14 = "Invalid TelephonyValueChangeType";
      }

      else
      {
        v14 = (&off_6DDDE8)[v2];
      }

      sub_53E8(__p, v14);
      if (v25 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = *__p;
      }

      *buf = 136315650;
      *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
      v27 = 1024;
      v28 = 461;
      v29 = 2080;
      v30 = v17;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Handling Telephony callback for %s", buf, 0x1Cu);
      if (v25 < 0)
      {
        operator delete(*__p);
      }
    }
  }

LABEL_28:
  if (v2 >= 3)
  {
    v21 = sub_5544(14);
    v22 = *v21;
    if (*v21 && os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
      v27 = 1024;
      v28 = 394;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Unsupported telephony value change type", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Unsupported telephony value change type");
  }

  *__p = dword_5A3F28[v2];
  *&__p[4] = 1735159650;
  result = sub_6FE08(v3 + 536, __p);
  if (result)
  {
    v20 = *(v3 + 80);
    v19 = *(v3 + 88);
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 16), 1uLL, memory_order_relaxed);
    }

    *buf = *__p;
    *&buf[8] = *&__p[8];
    sub_68E60();
    operator new();
  }

  return result;
}

uint64_t *sub_3C4E8C(uint64_t *result)
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

uint64_t *sub_3C4EE0(uint64_t a1)
{
  v6[0] = a1;
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*a1)
      {
        sub_6FF5C(*a1 + 536, (a1 + 16));
      }

      sub_1A8C0(v4);
    }
  }

  return sub_3C4E8C(v6);
}

uint64_t sub_3C521C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6CF0F8;
  a2[1] = v2;
  return result;
}

void sub_3C52B0(uint64_t **a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 a5, unsigned int *a6)
{
  if ((((*a1)[2])(a1) & 1) == 0)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 2003332927;
LABEL_60:
    exception[2] = v33;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v34 = sub_5544(14);
    if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    goto LABEL_55;
  }

  if (!a6)
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

LABEL_55:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 561211770;
    goto LABEL_60;
  }

  if ((((*a1)[3])(a1, a2) & 1) == 0)
  {
    v36 = sub_5544(14);
    if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      v37 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(&__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v33 = 1852797029;
    goto LABEL_60;
  }

  if (a2->mSelector == 1668576114)
  {
    if (a5 != 8)
    {
      v29 = sub_5544(14);
      v30 = *v29;
      if (*v29)
      {
        if (os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 348;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid data passed with kVirtualAudioPlugInPropertyConfirmVocoderSampleRate property", buf, 0x12u);
        }
      }
    }

    v16 = *a6;
    v17 = sub_5544(18);
    v18 = sub_5544(13);
    v19 = 0;
    *buf = 0x100000002;
    v20 = *(v17 + 8);
    while (1)
    {
      v21 = *&buf[v19];
      if (((v20 & v21) != 0) != ((*(v18 + 8) & v21) != 0))
      {
        break;
      }

      v19 += 4;
      if (v19 == 8)
      {
        goto LABEL_26;
      }
    }

    if ((v20 & v21) == 0)
    {
      v17 = v18;
    }

LABEL_26:
    v22 = sub_5544(40);
    v23 = 0;
    *buf = 0x100000002;
    v24 = *(v17 + 8);
    while (1)
    {
      v25 = *&buf[v23];
      if (((v24 & v25) != 0) != ((*(v22 + 8) & v25) != 0))
      {
        break;
      }

      v23 += 4;
      if (v23 == 8)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

    if ((v24 & v25) == 0)
    {
      v17 = v22;
    }

    if (*(v17 + 8))
    {
LABEL_34:
      v26 = *v17;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 351;
        *&buf[18] = 2048;
        *&buf[20] = v16;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d Confirming Telephony Hardware Sample Rate %f", buf, 0x1Cu);
      }
    }

LABEL_37:
    sub_2996BC(a1[110], v16);
  }

  else if (a2->mSelector == 1953790309)
  {
    if (a5 != 4)
    {
      v27 = sub_5544(14);
      v28 = *v27;
      if (*v27)
      {
        if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 336;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Invalid data passed with kBasebandVoiceAudioDevicePropertyTTYEnabled property", buf, 0x12u);
        }
      }
    }

    v12 = *a6;
    if (*a6 || sub_29A5F4(*a1[110]))
    {
      v13 = sub_5544(18);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = "disabled";
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        *buf = 136315650;
        if (v12)
        {
          v15 = "enabled";
        }

        *&buf[12] = 1024;
        *&buf[14] = 340;
        *&buf[18] = 2080;
        *&buf[20] = v15;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d Setting TTY %s on Device_Baseband_Voice_Aspen's Core Telephony Interface", buf, 0x1Cu);
      }

      __p = *a1[110];
      v40 = v12 != 0;
      LODWORD(v37) = 0;
      *buf = __p;
      *&buf[8] = &v37;
      *&buf[16] = &__p;
      sub_2983E8(buf);
    }
  }

  else
  {

    sub_FDAC4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_3C5AD4(uint64_t *a1, const AudioObjectPropertyAddress *a2, uint64_t a3, const void *a4, UInt32 *a5, uint64_t a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      v49 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      v50 = *&a2->mSelector;
      v58 = a2->mElement;
      sub_22CE0(__p);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = &off_6DDDD0;
    v36[2] = 561211770;
  }

  if (!a6)
  {
    v37 = sub_5544(14);
    if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
    {
      v51 = *&a2->mSelector;
      v59 = a2->mElement;
      sub_22CE0(__p);
    }

    v38 = __cxa_allocate_exception(0x10uLL);
    *v38 = &off_6DDDD0;
    v38[2] = 561211770;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector <= 1953790308)
  {
    if (mSelector == 1853059619)
    {
      v25 = *a5;
      if (v25 != (*(*a1 + 32))(a1, a2, a3, a4))
      {
        v45 = sub_5544(14);
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
        {
          v55 = *&a2->mSelector;
          v63 = a2->mElement;
          sub_22CE0(__p);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = &off_6DDDD0;
        v46[2] = 561211770;
      }

      v26 = a1[110];
      std::mutex::lock((v26 + 8));
      v27 = *(v26 + 72);
      std::mutex::unlock((v26 + 8));
      if ((v27 & 0x100000000) != 0)
      {
        v28 = sub_2994BC(a1[110]);
        *a6 = v28;
        *(a6 + 8) = v28;
        return;
      }

      goto LABEL_25;
    }

    if (mSelector != 1953002354)
    {
LABEL_25:

      sub_5C0D8(a1, a2, a3, a4, a5, a6);
      return;
    }

    v21 = *a5;
    if (v21 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v47 = sub_5544(14);
      if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v56 = *&a2->mSelector;
        v64 = a2->mElement;
        sub_22CE0(__p);
      }

      v48 = __cxa_allocate_exception(0x10uLL);
      *v48 = &off_6DDDD0;
      v48[2] = 561211770;
    }

    v22 = sub_2995BC(a1[110]);
LABEL_22:
    *a6 = v22;
    return;
  }

  if (mSelector == 1953790309)
  {
    v23 = *a5;
    if (v23 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v41 = sub_5544(14);
      if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
      {
        v53 = *&a2->mSelector;
        v61 = a2->mElement;
        sub_22CE0(__p);
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      *v42 = &off_6DDDD0;
      v42[2] = 561211770;
    }

    *a6 = sub_29A5F4(*a1[110]);
    return;
  }

  if (mSelector == 1986225266)
  {
    v24 = *a5;
    if (v24 != (*(*a1 + 32))(a1, a2, a3, a4))
    {
      v43 = sub_5544(14);
      if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
      {
        v54 = *&a2->mSelector;
        v62 = a2->mElement;
        sub_22CE0(__p);
      }

      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = &off_6DDDD0;
      v44[2] = 561211770;
    }

    v22 = sub_2994BC(a1[110]);
    goto LABEL_22;
  }

  if (mSelector != 1986225268)
  {
    goto LABEL_25;
  }

  v13 = *a5;
  if (v13 != (*(*a1 + 32))(a1, a2, a3, a4))
  {
    v39 = sub_5544(14);
    if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      v52 = *&a2->mSelector;
      v60 = a2->mElement;
      sub_22CE0(__p);
    }

    v40 = __cxa_allocate_exception(0x10uLL);
    *v40 = &off_6DDDD0;
    v40[2] = 561211770;
  }

  v14 = a1[110];
  std::mutex::lock((v14 + 8));
  v15 = *(v14 + 72);
  std::mutex::unlock((v14 + 8));
  if ((v15 & 0x100000000) == 0)
  {
    v16 = sub_5544(1);
    v17 = sub_5544(13);
    v18 = 0;
    *buf = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *&buf[v18];
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_31;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_31:
    v29 = sub_5544(40);
    v30 = 0;
    *buf = 0x100000002;
    v31 = *(v16 + 8);
    while (1)
    {
      v32 = *&buf[v30];
      if (((v31 & v32) != 0) != ((*(v29 + 8) & v32) != 0))
      {
        break;
      }

      v30 += 4;
      if (v30 == 8)
      {
        goto LABEL_37;
      }
    }

    if ((v31 & v32) == 0)
    {
      v16 = v29;
    }

LABEL_37:
    v15 = *v16;
    if (v15)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "Device_Baseband_Voice_Aspen.cpp";
        v67 = 1024;
        v68 = 283;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d No Vocoder Format ID", buf, 0x12u);
      }

      LODWORD(v15) = 0;
    }
  }

  *a6 = v15;
}

void sub_3C6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C693C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v11 = sub_5544(14);
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      v15 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 2003332927;
LABEL_25:
    exception[2] = v13;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v14 = sub_5544(14);
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *&a2->mSelector;
      v18 = a2->mElement;
      sub_22CE0(__p);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v13 = 561211770;
    goto LABEL_25;
  }

  mSelector = a2->mSelector;
  if (a2->mSelector > 1953790308)
  {
    result = 4;
    if (mSelector == 1953790309 || mSelector == 1986225268)
    {
      return result;
    }

    v9 = 1986225266;
  }

  else
  {
    if (mSelector == 1668576114)
    {
      return 8;
    }

    if (mSelector == 1853059619)
    {
      return 16;
    }

    v9 = 1953002354;
  }

  if (mSelector == v9)
  {
    return 8;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

void sub_3C6CB0(void *a1)
{
  *a1 = off_6CEF08;
  sub_13A300((a1 + 67));
  sub_4B2820(a1);

  operator delete();
}

uint64_t sub_3C6D1C(void *a1)
{
  *a1 = off_6CEF08;
  sub_13A300((a1 + 67));

  return sub_4B2820(a1);
}

uint64_t sub_3C6D74(uint64_t a1, UInt32 a2, __int128 *a3)
{
  v4 = sub_4B1A68(a1, a2, a3, a3, 0);
  *v4 = off_6CEF08;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 856) = 0u;
  *(v4 + 872) = 0;
  sub_165D0C(v4 + 536);
  sub_105304();
  *(a1 + 880) = &qword_6E8910;
  return a1;
}

void sub_3C6E18(_Unwind_Exception *a1)
{
  sub_13A300(v2);
  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_3C6E3C(uint64_t a1, _DWORD *a2, uint64_t a3)
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

uint64_t sub_3C70F0(uint64_t a1, uint64_t a2)
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

uint64_t sub_3C728C(uint64_t a1, uint64_t a2)
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

uint64_t sub_3C7380(uint64_t a1, uint64_t a2)
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

uint64_t sub_3C7444(uint64_t a1, uint64_t a2)
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

uint64_t sub_3C7508(uint64_t a1, uint64_t a2)
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

void sub_3C789C()
{
  if ((atomic_load_explicit(&qword_6F7CE8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6F7CE8))
    {
      v1 = 30;
      v0[0] = xmmword_5A4040;
      v0[1] = unk_5A4050;
      qword_6F7CD8 = 0;
      unk_6F7CE0 = 0;
      qword_6F7CD0 = 0;
      sub_248E7C(&qword_6F7CD0, v0, &v2, 9uLL);
      __cxa_guard_release(&qword_6F7CE8);
    }
  }
}

void sub_3C7970()
{
  if ((atomic_load_explicit(&qword_6F7D08, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_6F7D08))
    {
      v1 = 0xE00000014;
      v0[0] = xmmword_5A4064;
      v0[1] = unk_5A4074;
      qword_6F7CF8 = 0;
      unk_6F7D00 = 0;
      qword_6F7CF0 = 0;
      sub_248E7C(&qword_6F7CF0, v0, &v2, 0xAuLL);
      __cxa_guard_release(&qword_6F7D08);
    }
  }
}

std::string *sub_3C7A48(std::string *a1, unsigned int **a2)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[", 1uLL);
  v4 = *a2;
  if (*a2 != a2[1])
  {
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = "????";
      if (v6 <= 0x1E)
      {
        v7 = off_6CFB08[v5];
      }

      sub_53E8(__p, v7);
      if ((v13 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v13 & 0x80u) == 0)
      {
        v9 = v13;
      }

      else
      {
        v9 = __p[1];
      }

      std::string::append(a1, v8, v9);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      v10 = a2[1];
      if (v4 != v10)
      {
        std::string::append(a1, ", ", 2uLL);
        v10 = a2[1];
      }
    }

    while (v4 != v10);
  }

  return std::string::append(a1, "]", 1uLL);
}

void sub_3C7B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C7B90(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_469FC(result, a4);
  }

  return result;
}

void sub_3C7BF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3C7C0C(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (*a2 - 3 >= 0x13 && (v3 > 0x1E || ((1 << v3) & 0x4F800003) == 0))
  {
    return 0;
  }

  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 != v6)
  {
    while (*v5 != v3)
    {
      if (++v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }

  if (v5 != v6)
  {
    return 0;
  }

LABEL_12:
  v8 = sub_5544(21);
  if (*(v8 + 8))
  {
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
      {
        v10 = *a2;
        if (v10 > 0x1E)
        {
          v11 = "????";
        }

        else
        {
          v11 = off_6CFB08[v10];
        }

        sub_53E8(__p, v11);
        if (v14 >= 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        *buf = 136315650;
        v16 = "AlternateVAD.cpp";
        v17 = 1024;
        v18 = 1570;
        v19 = 2080;
        v20 = v12;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing %s", buf, 0x1Cu);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 1;
}

void **sub_3C7DA0(void **a1, _BYTE *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v8 = 0uLL;
  v9 = 0;
  v3 = a2[77];
  v4 = a2[76];
  if (a2[73] == 1 && (a2[72] & 1) != 0)
  {
    v10 = 15;
    sub_AFD28(&v8, &v10);
  }

  if (v3 & v4)
  {
    v10 = 16;
    sub_AFD28(&v8, &v10);
  }

  if (MGGetBoolAnswer())
  {
    v10 = 13;
    sub_AFD28(&v8, &v10);
  }

  sub_ABF48();
  if (HIDWORD(qword_6FD630) == 1)
  {
    v10 = 14;
    sub_AFD28(&v8, &v10);
  }

  v10 = 19;
  sub_AFD28(&v8, &v10);
  v10 = 20;
  sub_AFD28(&v8, &v10);
  if (caulk::product::get_device_class(v5) == 1)
  {
    v10 = 3;
    sub_AFD28(&v8, &v10);
  }

  if (MGGetBoolAnswer())
  {
    v10 = 0;
    sub_AFD28(&v8, &v10);
    v10 = 1;
    sub_AFD28(&v8, &v10);
  }

  if (MGGetBoolAnswer())
  {
    goto LABEL_47;
  }

  if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
  {
    byte_709638 = MGGetBoolAnswer();
    __cxa_guard_release(&qword_709640);
  }

  if (byte_709638 == 1)
  {
LABEL_47:
    if ((atomic_load_explicit(&qword_6E8480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6E8480))
    {
      byte_6E847D = sub_28964C();
      __cxa_guard_release(&qword_6E8480);
    }

    if ((byte_6E847D & 1) == 0)
    {
      v10 = 6;
      sub_AFD28(&v8, &v10);
      v10 = 5;
      sub_AFD28(&v8, &v10);
      v10 = 4;
      sub_AFD28(&v8, &v10);
      v10 = 17;
      sub_AFD28(&v8, &v10);
      v10 = 18;
      sub_AFD28(&v8, &v10);
      if ((_os_feature_enabled_impl() & 1) != 0 || sub_310A30())
      {
        v10 = 7;
        sub_AFD28(&v8, &v10);
      }

      if (_os_feature_enabled_impl())
      {
        v10 = 8;
        sub_AFD28(&v8, &v10);
      }
    }
  }

  if (MGGetSInt32Answer() == 7)
  {
    v10 = 12;
    sub_AFD28(&v8, &v10);
    v10 = 21;
    sub_AFD28(&v8, &v10);
  }

  if (sub_45168())
  {
    v10 = 23;
    sub_AFD28(&v8, &v10);
  }

  if (sub_311548())
  {
    v10 = 24;
    sub_AFD28(&v8, &v10);
  }

  if (sub_310B68())
  {
    v10 = 27;
    sub_AFD28(&v8, &v10);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = 9;
    sub_AFD28(&v8, &v10);
  }

  if (_os_feature_enabled_impl())
  {
    v10 = 10;
    sub_AFD28(&v8, &v10);
  }

  if (sub_CB5C4())
  {
    v10 = 30;
    sub_AFD28(&v8, &v10);
  }

  v6 = *a1;
  if (*a1)
  {
    a1[1] = v6;
    operator delete(v6);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v8;
  a1[2] = v9;
  return a1;
}

void sub_3C8190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  __cxa_guard_abort(&qword_709640);
  if (__p)
  {
    operator delete(__p);
  }

  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void sub_3C823C(void **a1, unsigned int **a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_6F7D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F7D38))
  {
    xmmword_6F7D10 = 0u;
    *&qword_6F7D20 = 0u;
    dword_6F7D30 = 1065353216;
    __cxa_guard_release(&qword_6F7D38);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = sub_5544(21);
  if (*(v6 + 8))
  {
    v7 = *v6;
    if (*v6)
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        sub_3C7A48(&__p, a3);
        v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        buf[0] = 136315650;
        *&buf[1] = "AlternateVAD.cpp";
        v48 = 1024;
        v49[0] = 1522;
        LOWORD(v49[1]) = 2080;
        *(&v49[1] + 2) = v8;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing Unsupported Alternate VAD specification types from %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v9 = sub_5544(21);
  if (*(v9 + 8))
  {
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
      {
        sub_3C7A48(&__p, a2);
        v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        buf[0] = 136315650;
        *&buf[1] = "AlternateVAD.cpp";
        v48 = 1024;
        v49[0] = 1524;
        LOWORD(v49[1]) = 2080;
        *(&v49[1] + 2) = v11;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Supported Alternate VAD specification types are: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v43 = 0;
  v44 = 0;
  v45 = 0;
  sub_3C7B90(&v43, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 2);
  v12 = v44;
  v13 = v43;
  if (v43 != v44)
  {
    v13 = v43;
    while ((sub_3C7C0C(a2, v13) & 1) == 0)
    {
      if (++v13 == v12)
      {
        goto LABEL_31;
      }
    }

    if (v13 != v12)
    {
      for (i = v13 + 1; i != v12; ++i)
      {
        if ((sub_3C7C0C(a2, i) & 1) == 0)
        {
          *v13++ = *i;
        }
      }
    }
  }

  if (v13 != v12)
  {
    v12 = v13;
    v44 = v13;
  }

LABEL_31:
  v15 = sub_5544(21);
  if (*(v15 + 8))
  {
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
      {
        sub_3C7A48(&__p, &v43);
        v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        buf[0] = 136315650;
        *&buf[1] = "AlternateVAD.cpp";
        v48 = 1024;
        v49[0] = 1582;
        LOWORD(v49[1]) = 2080;
        *(&v49[1] + 2) = v17;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Resulting Alternate VAD specification types: %s", buf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v18 = sub_5544(21);
  v19 = *v18;
  if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
  {
    sub_3C7A48(&__p, &v43);
    v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    buf[0] = 136315650;
    *&buf[1] = "AlternateVAD.cpp";
    v48 = 1024;
    v49[0] = 1602;
    LOWORD(v49[1]) = 2080;
    *(&v49[1] + 2) = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d Creating alternate vad specification for %s", buf, 0x1Cu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v21 = v43;
  if (v43 != v12)
  {
    v22 = 0;
    while (1)
    {
      v23 = *v21;
      if (!sub_3C8CD4(*v21))
      {
        sub_3C8D94(v23);
        v23 = *v21;
        if (v24)
        {
          if (*(&xmmword_6F7D10 + 1))
          {
            v25 = vcnt_s8(*(&xmmword_6F7D10 + 8));
            v25.i16[0] = vaddlv_u8(v25);
            if (v25.u32[0] > 1uLL)
            {
              v26 = v23;
              if (*(&xmmword_6F7D10 + 1) <= v23)
              {
                v26 = v23 % *(&xmmword_6F7D10 + 1);
              }
            }

            else
            {
              v26 = (*(&xmmword_6F7D10 + 1) - 1) & v23;
            }

            v27 = *(xmmword_6F7D10 + 8 * v26);
            if (v27)
            {
              for (j = *v27; j; j = *j)
              {
                v29 = j[1];
                if (v29 == v23)
                {
                  if (*(j + 4) == v23)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  if (v25.u32[0] > 1uLL)
                  {
                    if (v29 >= *(&xmmword_6F7D10 + 1))
                    {
                      v29 %= *(&xmmword_6F7D10 + 1);
                    }
                  }

                  else
                  {
                    v29 &= *(&xmmword_6F7D10 + 1) - 1;
                  }

                  if (v29 != v26)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }
      }

LABEL_67:
      if (!sub_3C8CD4(v23))
      {
        goto LABEL_98;
      }

      if (!*(&xmmword_6F7D10 + 1))
      {
        goto LABEL_103;
      }

      v30 = vcnt_s8(*(&xmmword_6F7D10 + 8));
      v30.i16[0] = vaddlv_u8(v30);
      if (v30.u32[0] > 1uLL)
      {
        v31 = v23;
        if (*(&xmmword_6F7D10 + 1) <= v23)
        {
          v31 = v23 % *(&xmmword_6F7D10 + 1);
        }
      }

      else
      {
        v31 = (*(&xmmword_6F7D10 + 1) - 1) & v23;
      }

      v32 = *(xmmword_6F7D10 + 8 * v31);
      if (!v32 || (v33 = *v32) == 0)
      {
LABEL_103:
        sub_DE7DC("unordered_map::at: key not found");
      }

      while (1)
      {
        v34 = v33[1];
        if (v34 == v23)
        {
          break;
        }

        if (v30.u32[0] > 1uLL)
        {
          if (v34 >= *(&xmmword_6F7D10 + 1))
          {
            v34 %= *(&xmmword_6F7D10 + 1);
          }
        }

        else
        {
          v34 &= *(&xmmword_6F7D10 + 1) - 1;
        }

        if (v34 != v31)
        {
          goto LABEL_103;
        }

LABEL_83:
        v33 = *v33;
        if (!v33)
        {
          goto LABEL_103;
        }
      }

      if (*(v33 + 4) != v23)
      {
        goto LABEL_83;
      }

      v35 = v33 + 3;
      v36 = a1[2];
      if (v22 >= v36)
      {
        v37 = *a1;
        v38 = v22 - *a1;
        v39 = (v38 >> 3) + 1;
        if (v39 >> 61)
        {
          sub_189A00();
        }

        v40 = v36 - v37;
        if (v40 >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        if (v40 >= 0x7FFFFFFFFFFFFFF8)
        {
          v41 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          sub_1DB8DC(v41);
        }

        v42 = (8 * (v38 >> 3));
        *v42 = v35;
        v22 = (v42 + 1);
        memcpy(0, v37, v38);
        *a1 = 0;
        a1[2] = 0;
        if (v37)
        {
          operator delete(v37);
        }
      }

      else
      {
        *v22 = v35;
        v22 += 8;
      }

      a1[1] = v22;
LABEL_98:
      if (++v21 == v12)
      {
        v21 = v43;
        break;
      }
    }
  }

  if (v21)
  {
    operator delete(v21);
  }
}

void sub_3C8C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (v16)
  {
    operator delete(v16);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_3C8CD4(int a1)
{
  if (!*(&xmmword_6F7D10 + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&xmmword_6F7D10 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_6F7D10 + 1) <= a1)
    {
      v2 = a1 % *(&xmmword_6F7D10 + 1);
    }
  }

  else
  {
    v2 = (*(&xmmword_6F7D10 + 1) - 1) & a1;
  }

  i = *(xmmword_6F7D10 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&xmmword_6F7D10 + 1))
          {
            v4 %= *(&xmmword_6F7D10 + 1);
          }
        }

        else
        {
          v4 &= *(&xmmword_6F7D10 + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

caulk::product *sub_3C8D94(int a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
      result = sub_3CD9D4(0);
      break;
    case 1:
      result = sub_3CD9D4(1);
      break;
    case 2:
      if ((atomic_load_explicit(&qword_6F82E8, memory_order_acquire) & 1) == 0)
      {
        result = __cxa_guard_acquire(&qword_6F82E8);
        if (result)
        {
          byte_6F82E0 = caulk::product::get_device_class(result) == 4;
          __cxa_guard_release(&qword_6F82E8);
        }
      }

      if (byte_6F82E0 == 1)
      {
        if (caulk::product::get_device_class(result) != 4)
        {
          v37 = sub_5544(14);
          v38 = *v37;
          if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 900;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "Precondition failure.");
        }

        if ((atomic_load_explicit(&qword_6F86A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F86A8))
        {
          LODWORD(v73) = 1885889645;
          v71 = 0;
          v72 = 0;
          __p = 0;
          sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v75 = 0;
          v76[0] = off_6CF5C0;
          v77 = v76;
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F84D0, 2, &__p, 1, 1987279212, 1668505974, 1986818931, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          if (__p)
          {
            operator delete(__p);
          }

          __cxa_guard_release(&qword_6F86A8);
        }

        result = &unk_6F84D0;
      }

      else
      {
        if ((atomic_load_explicit(&qword_6F84C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F84C8))
        {
          *&v73 = 0x7073706B70687077;
          v71 = 0;
          v72 = 0;
          __p = 0;
          sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v75 = 0;
          v76[0] = off_6CF608;
          v77 = v76;
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F82F0, 2, &__p, 1, 1987279212, 1668505974, 1986818931, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          if (__p)
          {
            operator delete(__p);
          }

          __cxa_guard_release(&qword_6F84C8);
        }

        result = &unk_6F82F0;
      }

      break;
    case 3:
      if (caulk::product::get_device_class(0) != 1)
      {
        v19 = sub_5544(14);
        v20 = *v19;
        if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 861;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v21 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v21, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6F7F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F7F18))
      {
        *&v73 = 0x70646C6E70756C6ELL;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F7D40, 3, &__p, 1, 1986224492, 1667394407, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F7F18);
      }

      result = &unk_6F7D40;
      break;
    case 4:
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
        {
          byte_709638 = MGGetBoolAnswer();
          __cxa_guard_release(&qword_709640);
        }

        if ((byte_709638 & 1) == 0)
        {
          v49 = sub_5544(14);
          v50 = *v49;
          if (*v49 && os_log_type_enabled(*v49, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 525;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v51 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v51, "Precondition failure.");
        }
      }

      if ((atomic_load_explicit(&qword_6F9E58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9E58))
      {
        qmemcpy(&v73, "iwmpibmpisup", 12);
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 12, 3uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF890;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F9C80, 4, &__p, 0, 1987276900, 1668441443, 1987208039, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F9E58);
      }

      result = &unk_6F9C80;
      break;
    case 5:
      v3 = MGGetBoolAnswer();
      if ((v3 & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0)
        {
          v3 = __cxa_guard_acquire(&qword_709640);
          if (v3)
          {
            byte_709638 = MGGetBoolAnswer();
            __cxa_guard_release(&qword_709640);
          }
        }

        if ((byte_709638 & 1) == 0)
        {
          v40 = sub_5544(14);
          v41 = *v40;
          if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 471;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v42 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v42, "Precondition failure.");
        }
      }

      if (caulk::product::get_device_class(v3) == 6)
      {
        v4 = MGGetBoolAnswer();
        if ((v4 & 1) == 0)
        {
          if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0)
          {
            v4 = __cxa_guard_acquire(&qword_709640);
            if (v4)
            {
              byte_709638 = MGGetBoolAnswer();
              __cxa_guard_release(&qword_709640);
            }
          }

          if ((byte_709638 & 1) == 0)
          {
            v61 = sub_5544(14);
            v62 = *v61;
            if (*v61 && os_log_type_enabled(*v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AlternateVAD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 450;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            v63 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v63, "Precondition failure.");
          }
        }

        if (caulk::product::get_device_class(v4) != 6)
        {
          v55 = sub_5544(14);
          v56 = *v55;
          if (*v55 && os_log_type_enabled(*v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 451;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v57 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v57, "Precondition failure.");
        }

        if ((atomic_load_explicit(&qword_6F97E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F97E8))
        {
          *buf = xmmword_517460;
          qword_6F97D8 = 0;
          unk_6F97E0 = 0;
          qword_6F97D0 = 0;
          sub_4625C(&qword_6F97D0, buf, &buf[16], 4uLL);
          __cxa_guard_release(&qword_6F97E8);
        }

        if ((atomic_load_explicit(&qword_6F99C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F99C8))
        {
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v76[0] = off_6CF5C0;
          v77 = v76;
          v74[0] = off_6CF728;
          v75 = v74;
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F97F0, 5, &qword_6F97D0, 1, 1987276900, 1668441443, 1987208039, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          __cxa_guard_release(&qword_6F99C8);
        }

        result = &unk_6F97F0;
      }

      else
      {
        if ((atomic_load_explicit(&qword_6F95E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F95E8))
        {
          *buf = xmmword_517460;
          qword_6F95D8 = 0;
          unk_6F95E0 = 0;
          qword_6F95D0 = 0;
          sub_4625C(&qword_6F95D0, buf, &buf[16], 4uLL);
          __cxa_guard_release(&qword_6F95E8);
        }

        if ((atomic_load_explicit(&qword_6F97C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F97C8))
        {
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v76[0] = off_6CF5C0;
          v77 = v76;
          v74[0] = off_6CF728;
          v75 = v74;
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F95F0, 5, &qword_6F95D0, 1, 1987276900, 1668441443, 1987208039, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          __cxa_guard_release(&qword_6F97C8);
        }

        result = &unk_6F95F0;
      }

      break;
    case 6:
      v5 = MGGetBoolAnswer();
      if ((v5 & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0)
        {
          v5 = __cxa_guard_acquire(&qword_709640);
          if (v5)
          {
            byte_709638 = MGGetBoolAnswer();
            __cxa_guard_release(&qword_709640);
          }
        }

        if ((byte_709638 & 1) == 0)
        {
          v43 = sub_5544(14);
          v44 = *v43;
          if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 234;
            _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v45 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v45, "Precondition failure.");
        }
      }

      if (caulk::product::get_device_class(v5) == 6)
      {
        v6 = MGGetBoolAnswer();
        if ((v6 & 1) == 0)
        {
          if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0)
          {
            v6 = __cxa_guard_acquire(&qword_709640);
            if (v6)
            {
              byte_709638 = MGGetBoolAnswer();
              __cxa_guard_release(&qword_709640);
            }
          }

          if ((byte_709638 & 1) == 0)
          {
            v64 = sub_5544(14);
            v65 = *v64;
            if (*v64 && os_log_type_enabled(*v64, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "AlternateVAD.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 223;
              _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
            }

            v66 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v66, "Precondition failure.");
          }
        }

        if (caulk::product::get_device_class(v6) != 6)
        {
          v58 = sub_5544(14);
          v59 = *v58;
          if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 224;
            _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v60 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v60, "Precondition failure.");
        }

        if ((atomic_load_explicit(&qword_6F8E28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F8E28))
        {
          *&v73 = 0x70757369706D6269;
          v71 = 0;
          v72 = 0;
          __p = 0;
          sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v76[0] = off_6CF5C0;
          v77 = v76;
          sub_3CDF3C(v74);
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F8C50, 6, &__p, 1, 1987276900, 1668441443, 1987211117, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          if (__p)
          {
            operator delete(__p);
          }

          __cxa_guard_release(&qword_6F8E28);
        }

        result = &unk_6F8C50;
      }

      else
      {
        if ((atomic_load_explicit(&qword_6F8C48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F8C48))
        {
          LODWORD(v73) = 1886216809;
          v71 = 0;
          v72 = 0;
          __p = 0;
          sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
          *buf = off_6CF4E8;
          v84 = buf;
          v80 = off_6CF530;
          v82 = &v80;
          v78[0] = off_6CF578;
          v79 = v78;
          v76[0] = off_6CF5C0;
          v77 = v76;
          sub_3CDF3C(v74);
          LOBYTE(v68[0]) = 0;
          v69 = 0;
          sub_3CD6E8(&unk_6F8A70, 6, &__p, 1, 1987276900, 1668441443, 1987211117, 0, buf, &v80, v78, v76, v74, 0, v68);
          sub_1F355C(v74);
          sub_1F35DC(v76);
          sub_1F365C(v78);
          sub_1F36DC(&v80);
          sub_1F375C(buf);
          if (__p)
          {
            operator delete(__p);
          }

          __cxa_guard_release(&qword_6F8C48);
        }

        result = &unk_6F8A70;
      }

      break;
    case 7:
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
        {
          byte_709638 = MGGetBoolAnswer();
          __cxa_guard_release(&qword_709640);
        }

        if ((byte_709638 & 1) == 0)
        {
          v46 = sub_5544(14);
          v47 = *v46;
          if (*v46 && os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 418;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v48 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v48, "Precondition failure.");
        }
      }

      if ((atomic_load_explicit(&qword_6F9A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9A68))
      {
        *buf = 0x706D6269706D6274;
        qword_6F9A58 = 0;
        unk_6F9A60 = 0;
        qword_6F9A50 = 0;
        sub_4625C(&qword_6F9A50, buf, &buf[8], 2uLL);
        __cxa_guard_release(&qword_6F9A68);
      }

      if ((atomic_load_explicit(&qword_6F9A78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9A78))
      {
        if (sub_310A30())
        {
          v31 = 1987208039;
        }

        else
        {
          v31 = 1987212137;
        }

        dword_6F9A70 = v31;
        __cxa_guard_release(&qword_6F9A78);
      }

      if ((atomic_load_explicit(&qword_6F9C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9C58))
      {
        v32 = dword_6F9A70;
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        if (sub_310A30())
        {
          v33 = off_6CF770;
        }

        else
        {
          v33 = off_6CF7B8;
        }

        v76[0] = v33;
        v77 = v76;
        sub_3CE00C(v74);
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F9A80, 7, &qword_6F9A50, 1, 1987276900, 1668441443, v32, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        __cxa_guard_release(&qword_6F9C58);
      }

      result = &unk_6F9A80;
      break;
    case 8:
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
        {
          byte_709638 = MGGetBoolAnswer();
          __cxa_guard_release(&qword_709640);
        }

        if ((byte_709638 & 1) == 0)
        {
          v52 = sub_5544(14);
          v53 = *v52;
          if (*v52 && os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 359;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v54 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v54, "Precondition failure.");
        }
      }

      if ((atomic_load_explicit(&qword_6F9028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9028))
      {
        LODWORD(v73) = 1886216809;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        sub_476C50(v76, 1936290409);
        sub_477188(v74, 1936290409);
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F8E50, 8, &__p, 1, 1987277668, 1668510307, 1987208039, 0, buf, &v80, v78, v76, v74, 0x173697269, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F9028);
      }

      result = &unk_6F8E50;
      break;
    case 9:
      if ((atomic_load_explicit(&qword_6F9208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9208))
      {
        LODWORD(v73) = 1886216809;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v76[0] = off_6CF5C0;
        v77 = v76;
        sub_477188(v74, 1836346212);
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F9030, 9, &__p, 1, 1987276148, 1668510307, 1768776806, 0, buf, &v80, v78, v76, v74, 0x16D746B64, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F9208);
      }

      result = &unk_6F9030;
      break;
    case 10:
      if ((atomic_load_explicit(&qword_6F93E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F93E8))
      {
        LODWORD(v73) = 1886216809;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v76[0] = off_6CF5C0;
        v77 = v76;
        sub_477188(v74, 1936614497);
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F9210, 10, &__p, 1, 1987277665, 1668510307, 1768776806, 0, buf, &v80, v78, v76, v74, 0x1736E6461, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F93E8);
      }

      result = &unk_6F9210;
      break;
    case 11:
      if ((atomic_load_explicit(&qword_6FBE58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FBE58))
      {
        LODWORD(v73) = 1886216809;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        sub_476C50(v76, 1935962992);
        sub_477188(v74, 1935962992);
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FBC80, 11, &__p, 1, 1987274852, 1668510307, 1987208039, 0, buf, &v80, v78, v76, v74, 0x173647370, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FBE58);
      }

      result = &unk_6FBC80;
      break;
    case 12:
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
        {
          byte_709638 = MGGetBoolAnswer();
          __cxa_guard_release(&qword_709640);
        }

        if ((byte_709638 & 1) == 0)
        {
          v34 = sub_5544(14);
          v35 = *v34;
          if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "AlternateVAD.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 436;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
          }

          v36 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v36, "Precondition failure.");
        }
      }

      if (MGGetSInt32Answer() != 7)
      {
        v28 = sub_5544(14);
        v29 = *v28;
        if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 441;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v30 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v30, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FA038, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA038))
      {
        *&v73 = 0x70757369706D6269;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F9E60, 12, &__p, 1, 1987276900, 1668441443, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FA038);
      }

      result = &unk_6F9E60;
      break;
    case 13:
      if ((MGGetBoolAnswer() & 1) == 0)
      {
        v10 = sub_5544(14);
        v11 = *v10;
        if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 72;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v12 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v12, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FA9B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA9B8))
      {
        sub_37D6F0();
        if (dword_6ECA40)
        {
          v80 = 0x706E756C70616374;
          qword_6FA9A8 = 0;
          unk_6FA9B0 = 0;
          qword_6FA9A0 = 0;
          sub_4625C(&qword_6FA9A0, &v80, &v81, 2uLL);
        }

        else
        {
          *buf = xmmword_517450;
          qword_6FA9A8 = 0;
          unk_6FA9B0 = 0;
          qword_6FA9A0 = 0;
          sub_4625C(&qword_6FA9A0, buf, &buf[16], 4uLL);
        }

        __cxa_guard_release(&qword_6FA9B8);
      }

      if ((atomic_load_explicit(&qword_6FAB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FAB98))
      {
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FA9C0, 13, &qword_6FA9A0, 0, 1987738234, 1667394407, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        __cxa_guard_release(&qword_6FAB98);
      }

      result = &unk_6FA9C0;
      break;
    case 14:
      if ((atomic_load_explicit(&qword_6FAD78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FAD78))
      {
        LODWORD(v73) = 1886613611;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CFAD0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FABA0, 14, &__p, 1, 1987276897, 1667657072, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FAD78);
      }

      result = &unk_6FABA0;
      break;
    case 15:
      if ((atomic_load_explicit(&qword_6FAF58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FAF58))
      {
        *&v73 = 0x706E6C6970686B69;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FAD80, 15, &__p, 0, 1986552183, 1667785079, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FAF58);
      }

      result = &unk_6FAD80;
      break;
    case 16:
      if ((atomic_load_explicit(&qword_6FB138, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FB138))
      {
        v73 = xmmword_517440;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, v74, 4uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FAF60, 16, &__p, 0, 1986818404, 1668051300, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FB138);
      }

      result = &unk_6FAF60;
      break;
    case 17:
      result = sub_3CE11C(0);
      break;
    case 18:
      result = sub_3CE11C(1);
      break;
    case 19:
      if ((atomic_load_explicit(&qword_6FB318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FB318))
      {
        LODWORD(v73) = 1885433975;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FB140, 19, &__p, 1, 1986884979, 1668117875, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FB318);
      }

      result = &unk_6FB140;
      break;
    case 20:
      if ((atomic_load_explicit(&qword_6FB4F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FB4F8))
      {
        LODWORD(v73) = 1885433953;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FB320, 20, &__p, 1, 1986095474, 1667328370, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FB4F8);
      }

      result = &unk_6FB320;
      break;
    case 21:
      if (MGGetSInt32Answer() != 7)
      {
        v7 = sub_5544(14);
        v8 = *v7;
        if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1084;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v9 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v9, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FB6D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FB6D8))
      {
        v67 = 1886613611;
        memset(v68, 0, sizeof(v68));
        sub_4625C(v68, &v67, v68, 1uLL);
        v73 = xmmword_517430;
        sub_1F2E44(&__p, &v73, 4);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        sub_3CEA84(v68, &__p, buf, &v80, v78, v76, v74);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        sub_4E0BC(&__p);
        if (v68[0])
        {
          operator delete(v68[0]);
        }

        __cxa_guard_release(&qword_6FB6D8);
      }

      result = &unk_6FB500;
      break;
    case 22:
      if ((atomic_load_explicit(&qword_6F8888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F8888))
      {
        LODWORD(v73) = 1886613611;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF650;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F86B0, 22, &__p, 1, 1987279212, 1668505974, 1986818931, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F8888);
      }

      result = &unk_6F86B0;
      break;
    case 23:
      if (!sub_45168())
      {
        v16 = sub_5544(14);
        v17 = *v16;
        if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 645;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v18 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v18, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FA7B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA7B8))
      {
        LODWORD(v73) = 1886613611;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF9F8;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CFA40;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FA5E0, 23, &__p, 1, 1987277417, 1667855215, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FA7B8);
      }

      result = &unk_6FA5E0;
      break;
    case 24:
      if ((atomic_load_explicit(&qword_6FA998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA998))
      {
        LODWORD(v73) = 1886613611;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CFA88;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FA7C0, 24, &__p, 1, 1987277417, 1667855215, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FA998);
      }

      result = &unk_6FA7C0;
      break;
    case 25:
      if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
      {
        byte_709638 = MGGetBoolAnswer();
        __cxa_guard_release(&qword_709640);
      }

      if ((byte_709638 & 1) == 0)
      {
        v13 = sub_5544(14);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1098;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v15 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v15, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FB8B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FB8B8))
      {
        v73 = xmmword_517420;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, v74, 4uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FB6E0, 25, &__p, 1, 1986293108, 1668309362, 1836281204, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FB8B8);
      }

      result = &unk_6FB6E0;
      break;
    case 26:
      if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
      {
        byte_709638 = MGGetBoolAnswer();
        __cxa_guard_release(&qword_709640);
      }

      if ((byte_709638 & 1) == 0)
      {
        v25 = sub_5544(14);
        v26 = *v25;
        if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1118;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v27 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v27, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FBA98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FBA98))
      {
        v73 = xmmword_517420;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, v74, 4uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FB8C0, 26, &__p, 1, 1986290544, 1668309362, 1768781426, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FBA98);
      }

      result = &unk_6FB8C0;
      break;
    case 27:
      if ((sub_310B68() & 1) == 0)
      {
        v22 = sub_5544(14);
        v23 = *v22;
        if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AlternateVAD.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 1138;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
        }

        v24 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v24, "Precondition failure.");
      }

      if ((atomic_load_explicit(&qword_6FBC78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FBC78))
      {
        LODWORD(v73) = 1886216809;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6FBAA0, 27, &__p, 1, 1987276899, 1668441443, 1936745328, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6FBC78);
      }

      result = &unk_6FBAA0;
      break;
    case 28:
      return result;
    case 29:
      if ((atomic_load_explicit(&qword_6F8A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F8A68))
      {
        LODWORD(v73) = 1885892674;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 4, 1uLL);
        *buf = off_6CF698;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F8890, 29, &__p, 1, 1987279212, 1668505974, 1986818931, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F8A68);
      }

      result = &unk_6F8890;
      break;
    case 30:
      if ((atomic_load_explicit(&qword_6F95C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F95C8))
      {
        *&v73 = 0x6870696E6C70696ELL;
        v71 = 0;
        v72 = 0;
        __p = 0;
        sub_4625C(&__p, &v73, &v73 + 8, 2uLL);
        *buf = off_6CF4E8;
        v84 = buf;
        v80 = off_6CF530;
        v82 = &v80;
        v78[0] = off_6CF578;
        v79 = v78;
        v75 = 0;
        v76[0] = off_6CF5C0;
        v77 = v76;
        LOBYTE(v68[0]) = 0;
        v69 = 0;
        sub_3CD6E8(&unk_6F93F0, 30, &__p, 1, 1986881902, 1667853930, 1768776806, 0, buf, &v80, v78, v76, v74, 0, v68);
        sub_1F355C(v74);
        sub_1F35DC(v76);
        sub_1F365C(v78);
        sub_1F36DC(&v80);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        __cxa_guard_release(&qword_6F95C8);
      }

      result = &unk_6F93F0;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_3CD69C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1F3494(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_3CD6E8(uint64_t a1, int a2, uint64_t *a3, int a4, int a5, int a6, int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15)
{
  v42[0] = 0;
  v42[1] = 0;
  v41 = v42;
  v39 = a7;
  sub_1F2E44(v40, &v39, 1);
  sub_1F2EE0(v48, a9);
  sub_1F2F78(v47, a10);
  sub_1F3010(v46, a11);
  sub_1F30A8(v45, a12);
  sub_1F3140(v44, a13);
  *v36 = 0u;
  v37 = 0u;
  v31 = 0u;
  *v30 = 0u;
  memset(v29, 0, sizeof(v29));
  v32 = 1065353216;
  *v33 = 0u;
  v34 = 0u;
  v35 = 1065353216;
  v38 = 1065353216;
  sub_80534(__p, a15);
  sub_1F31D8(a1, 0, a2, a3, &v41, a4, a5, a6, v40, a8, v48, v47, v46, v45, v44, v29, a14, __p);
  if (v28 == 1 && v27 < 0)
  {
    operator delete(__p[0]);
  }

  sub_4B0A0(v37);
  v22 = v36[0];
  v36[0] = 0;
  if (v22)
  {
    operator delete(v22);
  }

  sub_4B0A0(v34);
  v23 = v33[0];
  v33[0] = 0;
  if (v23)
  {
    operator delete(v23);
  }

  sub_4B0A0(v31);
  v24 = v30[0];
  v30[0] = 0;
  if (v24)
  {
    operator delete(v24);
  }

  v43 = &v29[1] + 1;
  sub_11C50(&v43);
  v43 = v29;
  sub_11C50(&v43);
  sub_1F355C(v44);
  sub_1F35DC(v45);
  sub_1F365C(v46);
  sub_1F36DC(v47);
  sub_1F375C(v48);
  sub_4E0BC(v40);
  sub_477A0(v42[0]);
  return a1;
}

void sub_3CD934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, int a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  if (a25 == 1 && a24 < 0)
  {
    operator delete(__p);
  }

  sub_1F1DE0(&a27);
  sub_1F355C(v53 - 248);
  sub_1F35DC(v53 - 216);
  sub_1F365C(v53 - 184);
  sub_1F36DC(v53 - 152);
  sub_1F375C(v53 - 120);
  sub_4E0BC(&a49);
  sub_477A0(a53);
  _Unwind_Resume(a1);
}

void *sub_3CD9D4(int a1)
{
  v2 = sub_5544(21);
  if (*(v2 + 8))
  {
    v3 = *v2;
    if (*v2)
    {
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
      {
        v4 = " not";
        *&buf[4] = "AlternateVAD.cpp";
        *buf = 136315650;
        if (!a1)
        {
          v4 = "";
        }

        v24 = 1024;
        v25 = 894;
        v26 = 2080;
        *v27 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d Creating Remote Alternate VAD Specification that is%s mandatory", buf, 0x1Cu);
      }
    }
  }

  if (a1)
  {
    if ((atomic_load_explicit(&qword_6F82D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F82D8))
    {
      v11 = 1886614625;
      v13 = 0;
      v14 = 0;
      __p = 0;
      sub_4625C(&__p, &v11, &__p, 1uLL);
      *buf = off_6CF4E8;
      *&v27[4] = buf;
      v21[0] = off_6CF530;
      v22 = v21;
      v19[0] = off_6CF578;
      v20 = v19;
      v16 = 0;
      v17[0] = off_6CF5C0;
      v18 = v17;
      LOBYTE(v9) = 0;
      v10 = 0;
      sub_3CD6E8(&unk_6F8100, 1, &__p, 1, 1987279218, 1668505974, 1768776806, 0, buf, v21, v19, v17, v15, 0, &v9);
      sub_1F355C(v15);
      sub_1F35DC(v17);
      sub_1F365C(v19);
      sub_1F36DC(v21);
      sub_1F375C(buf);
      if (__p)
      {
        operator delete(__p);
      }

      __cxa_guard_release(&qword_6F82D8);
    }

    return &unk_6F8100;
  }

  else
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      v6 = sub_5544(14);
      v7 = *v6;
      if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AlternateVAD.cpp";
        v24 = 1024;
        v25 = 868;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if ((atomic_load_explicit(&qword_6F80F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F80F8))
    {
      v11 = 1886614625;
      v13 = 0;
      v14 = 0;
      __p = 0;
      sub_4625C(&__p, &v11, &__p, 1uLL);
      *buf = off_6CF4E8;
      *&v27[4] = buf;
      v21[0] = off_6CF530;
      v22 = v21;
      v19[0] = off_6CF578;
      v20 = v19;
      v16 = 0;
      v17[0] = off_6CF5C0;
      v18 = v17;
      LOBYTE(v9) = 0;
      v10 = 0;
      sub_3CD6E8(&unk_6F7F20, 0, &__p, 0, 1987279218, 1668505974, 1768776806, 0, buf, v21, v19, v17, v15, 0, &v9);
      sub_1F355C(v15);
      sub_1F35DC(v17);
      sub_1F365C(v19);
      sub_1F36DC(v21);
      sub_1F375C(buf);
      if (__p)
      {
        operator delete(__p);
      }

      __cxa_guard_release(&qword_6F80F8);
    }

    return &unk_6F7F20;
  }
}

void sub_3CDE84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_1F355C(&a25);
  sub_1F35DC(&a29);
  sub_1F365C(v29 - 144);
  sub_1F36DC(v29 - 112);
  sub_1F375C(v29 - 80);
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_6F80F8);
  _Unwind_Resume(a1);
}

void *sub_3CDF3C(void *result)
{
  if ((atomic_load_explicit(&qword_6F8E48, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    v2 = __cxa_guard_acquire(&qword_6F8E48);
    result = v1;
    if (v2)
    {
      v3 = 1886216809;
      qword_6F8E38 = 0;
      unk_6F8E40 = 0;
      qword_6F8E30 = 0;
      sub_4625C(&qword_6F8E30, &v3, &v4, 1uLL);
      __cxa_guard_release(&qword_6F8E48);
      result = v1;
    }
  }

  *result = off_6CF6E0;
  result[3] = result;
  return result;
}

void sub_3CE00C(uint64_t (***a1)())
{
  if (sub_310A30())
  {
    v2 = off_6CF800;
  }

  else
  {
    if ((atomic_load_explicit(&qword_6F9C78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F9C78))
    {
      v3 = 0x706D6269706D6274;
      qword_6F9C68 = 0;
      unk_6F9C70 = 0;
      qword_6F9C60 = 0;
      sub_4625C(&qword_6F9C60, &v3, &v4, 2uLL);
      __cxa_guard_release(&qword_6F9C78);
    }

    v2 = off_6CF848;
  }

  *a1 = v2;
  a1[3] = a1;
}

void *sub_3CE11C(int a1)
{
  if ((MGGetBoolAnswer() & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_709640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_709640))
    {
      byte_709638 = MGGetBoolAnswer();
      __cxa_guard_release(&qword_709640);
    }

    if ((byte_709638 & 1) == 0)
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "AlternateVAD.cpp";
        v34 = 1024;
        v35 = 772;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }
  }

  if (!a1)
  {
    v27[0] = off_6CF8D8;
    v27[3] = v27;
    v26[0] = off_6CF920;
    v26[3] = v26;
    v25[0] = off_6CF968;
    v25[3] = v25;
    v24[0] = off_6CF9B0;
    v24[3] = v24;
    if (MGGetSInt32Answer() == 7)
    {
      if ((atomic_load_explicit(&qword_6FA218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA218))
      {
        *v37 = 0x7068646D7073706BLL;
        v18 = 0;
        v19 = 0;
        __p = 0;
        sub_4625C(&__p, v37, &v37[8], 2uLL);
        *buf = off_6CF4E8;
        v36 = buf;
        v32[0] = off_6CF530;
        v32[3] = v32;
        v31[0] = off_6CF578;
        v31[3] = v31;
        v29 = 0;
        v30[0] = off_6CF5C0;
        v30[3] = v30;
        LOBYTE(v15) = 0;
        v16 = 0;
        sub_3CD6E8(&unk_6FA040, 17, &__p, 0, 1987277417, 1667855215, 1768776806, 0, buf, v32, v31, v30, v28, 0, &v15);
        sub_1F355C(v28);
        sub_1F35DC(v30);
        sub_1F365C(v31);
        sub_1F36DC(v32);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        v6 = &unk_6FA040;
        v14 = &qword_6FA218;
LABEL_37:
        __cxa_guard_release(v14);
        goto LABEL_13;
      }

      v6 = &unk_6FA040;
    }

    else
    {
      if ((atomic_load_explicit(&qword_6FA3F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA3F8))
      {
        qmemcpy(v37, "oaspBphpwphp", sizeof(v37));
        v18 = 0;
        v19 = 0;
        __p = 0;
        sub_4625C(&__p, v37, v38, 3uLL);
        sub_1F2EE0(buf, v27);
        sub_1F2F78(v32, v26);
        sub_1F3010(v31, v25);
        sub_1F30A8(v30, v24);
        v29 = 0;
        LOBYTE(v15) = 0;
        v16 = 0;
        sub_3CD6E8(&unk_6FA220, 17, &__p, 0, 1987277417, 1667855215, 1768776806, 1, buf, v32, v31, v30, v28, 0, &v15);
        sub_1F355C(v28);
        sub_1F35DC(v30);
        sub_1F365C(v31);
        sub_1F36DC(v32);
        sub_1F375C(buf);
        if (__p)
        {
          operator delete(__p);
        }

        v6 = &unk_6FA220;
        v14 = &qword_6FA3F8;
        goto LABEL_37;
      }

      v6 = &unk_6FA220;
    }

LABEL_13:
    v2 = v27;
    v3 = v26;
    v4 = v25;
    v5 = v24;
    goto LABEL_14;
  }

  v23[0] = off_6CF8D8;
  v23[3] = v23;
  v22[0] = off_6CF920;
  v22[3] = v22;
  v21[0] = off_6CF968;
  v21[3] = v21;
  v20[0] = off_6CF9B0;
  v20[3] = v20;
  if (MGGetSInt32Answer() == 7)
  {
    v8 = sub_5544(14);
    v9 = *v8;
    if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AlternateVAD.cpp";
      v34 = 1024;
      v35 = 595;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v10 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v10, "Precondition failure.");
  }

  if ((atomic_load_explicit(&qword_6FA5D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6FA5D8))
  {
    qmemcpy(v37, "oaspBphpwphp", sizeof(v37));
    v18 = 0;
    v19 = 0;
    __p = 0;
    sub_4625C(&__p, v37, v38, 3uLL);
    sub_1F2EE0(buf, v23);
    sub_1F2F78(v32, v22);
    sub_1F3010(v31, v21);
    sub_1F30A8(v30, v20);
    v29 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    sub_3CD6E8(&unk_6FA400, 18, &__p, 1, 1987277417, 1667855215, 1768776806, 1, buf, v32, v31, v30, v28, 0, &v15);
    sub_1F355C(v28);
    sub_1F35DC(v30);
    sub_1F365C(v31);
    sub_1F36DC(v32);
    sub_1F375C(buf);
    if (__p)
    {
      operator delete(__p);
    }

    __cxa_guard_release(&qword_6FA5D8);
  }

  v2 = v23;
  v3 = v22;
  v4 = v21;
  v5 = v20;
  v6 = &unk_6FA400;
LABEL_14:
  sub_1F35DC(v5);
  sub_1F365C(v4);
  sub_1F36DC(v3);
  sub_1F375C(v2);
  return v6;
}

void sub_3CE8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  sub_1F355C(v51 - 240);
  sub_1F35DC(v51 - 208);
  sub_1F365C(v51 - 176);
  sub_1F36DC(v51 - 144);
  sub_1F375C(v51 - 112);
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_6FA3F8);
  sub_1F35DC(&a39);
  sub_1F365C(&a43);
  sub_1F36DC(&a47);
  sub_1F375C(&a51);
  _Unwind_Resume(a1);
}

void sub_3CEA84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  sub_1F3BA0(v28, a2);
  sub_1F2EE0(v36, a3);
  sub_1F2F78(v35, a4);
  sub_1F3010(v34, a5);
  sub_1F30A8(v33, a6);
  sub_1F3140(v32, a7);
  *__p = 0u;
  v26 = 0u;
  v20 = 0u;
  *v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v21 = 1065353216;
  *v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  v27 = 1065353216;
  LOBYTE(v16) = 0;
  v17 = 0;
  sub_1F31D8(&unk_6FB500, 0, 21, a1, &v29, 1, 1986817911, 1668050807, v28, 0, v36, v35, v34, v33, v32, v18, 0, &v16);
  sub_4B0A0(0);
  v13 = __p[0];
  __p[0] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  sub_4B0A0(v23);
  v14 = v22[0];
  v22[0] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  sub_4B0A0(v20);
  v15 = v19[0];
  v19[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  v31 = &v18[1] + 1;
  sub_11C50(&v31);
  v31 = v18;
  sub_11C50(&v31);
  sub_1F355C(v32);
  sub_1F35DC(v33);
  sub_1F365C(v34);
  sub_1F36DC(v35);
  sub_1F375C(v36);
  sub_4E0BC(v28);
  sub_477A0(v30[0]);
}

void sub_3CEC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  sub_1F1DE0(&a23);
  sub_1F355C(v49 - 232);
  sub_1F35DC(v49 - 200);
  sub_1F365C(v49 - 168);
  sub_1F36DC(v49 - 136);
  sub_1F375C(v49 - 104);
  sub_4E0BC(&a45);
  sub_477A0(a49);
  _Unwind_Resume(a1);
}

BOOL sub_3CEDA0(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v5 = sub_45168();
  if (*a3 != 1668509810 && !v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v9 = *a2;
    while (*(*v9 + 4) || **v9 != 1987277417)
    {
      if (++v9 == v8)
      {
        goto LABEL_10;
      }
    }

    return 0;
  }

LABEL_10:

  return sub_9C594(1885565807, v7, v8);
}

BOOL sub_3CF284(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = qword_6F9C60;
  if (qword_6F9C60 != qword_6F9C68)
  {
    while (1)
    {
      if (*(a2 + 8) != a2)
      {
        v4 = *v3;
        v5 = *(a2 + 8);
        do
        {
          v6 = *(v5 + 16) == v4 || *(v5 + 20) == v4;
          v7 = v6;
          if (v6)
          {
            break;
          }

          v5 = *(v5 + 8);
        }

        while (v5 != a2);
        if (v7)
        {
          break;
        }
      }

      if (++v3 == qword_6F9C68)
      {
        return 0;
      }
    }
  }

  return v3 != qword_6F9C68 && sub_9C594(*v3, *a3, a3[1]);
}

BOOL sub_3CF384(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  v3 = *(a2 + 8);
  if (v3 == a2)
  {
    return 0;
  }

  v4 = *(a2 + 8);
  do
  {
    v5 = *(v4 + 16) == 1886216820 || *(v4 + 20) == 1886216820;
    v6 = v5;
    if (v5)
    {
      break;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != a2);
  if (v6)
  {
    return sub_9C594(1886216820, *a3, a3[1]);
  }

  if (v3 == a2)
  {
    return 0;
  }

  do
  {
    v8 = *(v3 + 16) == 1886216809 || *(v3 + 20) == 1886216809;
    result = v8;
    if (v8)
    {
      break;
    }

    v3 = *(v3 + 8);
  }

  while (v3 != a2);
  return result;
}

uint64_t sub_3CF490(uint64_t a1, uint64_t **a2, _DWORD *a3)
{
  v4 = *a3 == 1668576377 || *a3 == 1668703084;
  if (v4 || ((result = 0, v6 = a3[1], v6 <= 1987077986) ? (v7 = v6 == 1768057203, v8 = 1919776355) : (v6 != 1987077987 ? (v7 = v6 == 1987081839) : (v7 = 1), v8 = 1987081833), !v7 ? (v9 = v6 == v8) : (v9 = 1), v9))
  {
    if (sub_9C594(1886216820, *a2, a2[1]) && sub_343C60(*a2, a2[1], 1) && (sub_3442BC(*a2, a2[1]) & 1) != 0)
    {
      return 1;
    }

    else
    {
      result = sub_9C594(1886613611, *a2, a2[1]);
      if (result)
      {
        result = sub_9C594(1886216809, *a2, a2[1]);
        if (result)
        {

          return MGGetBoolAnswer();
        }
      }
    }
  }

  return result;
}

uint64_t sub_3CF7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v8 = *(a2 + 144);
    if (v8 == 1885433888)
    {
      return 1;
    }

    else if (v8 == 1885892674)
    {
      result = sub_9C594(1885892674, *a5, a5[1]);
      if (result)
      {

        return sub_15E5EC(a2);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_3CFB18(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (a3 == a4)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v7 = a3;
    v8 = *(a2 + 8);
    do
    {
      v9 = *a2;
      if (*a2 != v8)
      {
        while (*v9 != *v7)
        {
          if (++v9 == v8)
          {
            goto LABEL_23;
          }
        }

        v10 = sub_5544(21);
        if (*(v10 + 8))
        {
          v11 = *v10;
          if (*v10)
          {
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
            {
              v12 = *v7;
              v13 = "????";
              if (v12 <= 0x1E)
              {
                v13 = off_6CFB08[v12];
              }

              sub_53E8(v21, v13);
              v14 = v22;
              v15 = v21[0];
              sub_3C7A48(&__p, a2);
              v16 = v21;
              if (v14 < 0)
              {
                v16 = v15;
              }

              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              v24 = "AlternateVAD.cpp";
              v25 = 1024;
              v26 = 1161;
              v27 = 2080;
              v28 = v16;
              v29 = 2080;
              v30 = p_p;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing Alternate VAD Specification Type %s from %s", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v22 < 0)
              {
                operator delete(v21[0]);
              }
            }
          }
        }

        v18 = *(a2 + 8);
        v19 = v18 - (v9 + 1);
        if (v18 != v9 + 1)
        {
          memmove(v9, v9 + 1, v18 - (v9 + 1));
        }

        v8 = (v9 + v19);
        *(a2 + 8) = v9 + v19;
      }

LABEL_23:
      ++v7;
    }

    while (v7 != a4);
  }

  *a1 = *a2;
  a1[1] = v8;
  a1[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
}

void sub_3CFD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_3CFD54(void *a1, uint64_t a2, _DWORD *a3, _DWORD *a4)
{
  if (a3 == a4)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v7 = a3;
    v8 = *(a2 + 8);
    do
    {
      v9 = *a2;
      if (*a2 == v8)
      {
LABEL_6:
        v10 = sub_5544(21);
        if (*(v10 + 8))
        {
          v11 = *v10;
          if (*v10)
          {
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
            {
              v12 = *v7;
              v13 = "????";
              if (v12 <= 0x1E)
              {
                v13 = off_6CFB08[v12];
              }

              sub_53E8(v28, v13);
              v14 = v29;
              v15 = v28[0];
              sub_3C7A48(&__p, a2);
              v16 = v28;
              if (v14 < 0)
              {
                v16 = v15;
              }

              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              *buf = 136315906;
              v31 = "AlternateVAD.cpp";
              v32 = 1024;
              v33 = 1176;
              v34 = 2080;
              v35 = v16;
              v36 = 2080;
              v37 = p_p;
              _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Add Alternate VAD Specification Type %s to %s", buf, 0x26u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              if (v29 < 0)
              {
                operator delete(v28[0]);
              }
            }
          }
        }

        v19 = *(a2 + 8);
        v18 = *(a2 + 16);
        if (v19 >= v18)
        {
          v20 = *a2;
          v21 = v19 - *a2;
          v22 = (v21 >> 2) + 1;
          if (v22 >> 62)
          {
            sub_189A00();
          }

          v23 = v18 - v20;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            sub_1D7C28(v24);
          }

          v25 = (4 * (v21 >> 2));
          *v25 = *v7;
          v8 = v25 + 1;
          memcpy(0, v20, v21);
          v26 = *a2;
          *a2 = 0;
          *(a2 + 8) = v8;
          *(a2 + 16) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v19 = *v7;
          v8 = v19 + 1;
        }

        *(a2 + 8) = v8;
      }

      else
      {
        while (*v9 != *v7)
        {
          if (++v9 == v8)
          {
            goto LABEL_6;
          }
        }
      }

      ++v7;
    }

    while (v7 != a4);
  }

  *a1 = *a2;
  a1[1] = v8;
  a1[2] = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
}

void sub_3CFFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_3D0014(uint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *(a2 - 1);
        v71 = *v8;
        if (v70 < *v8)
        {
          *v8 = v70;
          *(a2 - 1) = v71;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v75 = v8 + 1;
      v76 = v8[1];
      v77 = v8 + 2;
      v78 = v8[2];
      v79 = *v8;
      if (v76 >= v79)
      {
        if (v78 >= v76)
        {
          goto LABEL_184;
        }

        *v75 = v78;
        *v77 = v76;
        v80 = v8;
        v81 = v8 + 1;
        result = v76;
        if (v78 < v79)
        {
          goto LABEL_177;
        }
      }

      else
      {
        v80 = v8;
        v81 = v8 + 2;
        result = *v8;
        if (v78 >= v76)
        {
          *v8 = v76;
          v8[1] = v79;
          v80 = v8 + 1;
          v81 = v8 + 2;
          result = v79;
          if (v78 >= v79)
          {
LABEL_184:
            LODWORD(v76) = v78;
            goto LABEL_185;
          }
        }

LABEL_177:
        *v80 = v78;
        *v81 = v79;
        LODWORD(v76) = result;
      }

LABEL_185:
      v122 = *(a2 - 1);
      if (v122 < v76)
      {
        *v77 = v122;
        *(a2 - 1) = v76;
        v123 = *v77;
        v124 = *v75;
        if (v123 < v124)
        {
          v8[1] = v123;
          v8[2] = v124;
          v125 = *v8;
          if (v123 < *v8)
          {
            *v8 = v123;
            v8[1] = v125;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {
      v61 = v8 + 1;
      v62 = v8[1];
      v64 = v8 + 2;
      v63 = v8[2];
      v65 = *v8;
      if (v62 >= v65)
      {
        if (v63 >= v62)
        {
          v68 = *v8;
          LODWORD(v65) = v8[1];
        }

        else
        {
          v66 = v8;
          v67 = v8 + 1;
          *v61 = v63;
          *v64 = v62;
          v68 = v63;
          result = v65;
          v69 = v62;
          if (v63 < v65)
          {
            goto LABEL_190;
          }

          v68 = v65;
          LODWORD(v65) = v63;
          LODWORD(v63) = v62;
        }
      }

      else
      {
        if (v63 < v62)
        {
          v66 = v8;
          v67 = v8 + 2;
          v68 = v8[2];
          result = v8[1];
          v69 = *v8;
          goto LABEL_190;
        }

        v66 = v8 + 1;
        v67 = v8 + 2;
        *v8 = v62;
        v8[1] = v65;
        v68 = v62;
        result = v63;
        v69 = v65;
        if (v63 >= v65)
        {
          v68 = v62;
        }

        else
        {
LABEL_190:
          *v66 = v63;
          *v67 = v65;
          LODWORD(v65) = result;
          LODWORD(v63) = v69;
        }
      }

      v127 = v8[3];
      if (v127 >= v63)
      {
        LODWORD(v63) = v8[3];
      }

      else
      {
        v8[2] = v127;
        v8[3] = v63;
        if (v127 < v65)
        {
          *v61 = v127;
          *v64 = v65;
          if (v127 < v68)
          {
            *v8 = v127;
            v8[1] = v68;
          }
        }
      }

      v128 = *(a2 - 1);
      if (v128 >= v63)
      {
        return result;
      }

      v8[3] = v128;
      *(a2 - 1) = v63;
      v129 = v8[2];
      v119 = v8[3];
      if (v119 >= v129)
      {
        return result;
      }

      v8[2] = v119;
      v8[3] = v129;
      v130 = v8[1];
      if (v119 >= v130)
      {
        return result;
      }

      v8[1] = v119;
      v8[2] = v130;
LABEL_205:
      v131 = *v8;
      if (v119 < *v8)
      {
        *v8 = v119;
        v8[1] = v131;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v82 = v8 + 1;
      v84 = v8 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 4;
          v86 = v8;
          do
          {
            v88 = *v86;
            v87 = v86[1];
            v86 = v82;
            if (v87 < v88)
            {
              v89 = v85;
              while (1)
              {
                *(v8 + v89) = v88;
                v90 = v89 - 4;
                if (v89 == 4)
                {
                  break;
                }

                v88 = *(v8 + v89 - 8);
                v89 -= 4;
                if (v87 >= v88)
                {
                  v91 = (v8 + v90);
                  goto LABEL_126;
                }
              }

              v91 = v8;
LABEL_126:
              *v91 = v87;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (v86 + 1 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v121 = *v7;
          v120 = v7[1];
          v7 = v82;
          if (v120 < v121)
          {
            do
            {
              *v82 = v121;
              v121 = *(v82 - 2);
              --v82;
            }

            while (v120 < v121);
            *v82 = v120;
          }

          v82 = (v7 + 1);
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v92 = (v9 - 2) >> 1;
        v93 = v92;
        do
        {
          v94 = v93;
          if (v92 >= v93)
          {
            v95 = (2 * v93) | 1;
            v96 = &v8[v95];
            if (2 * v94 + 2 >= v9)
            {
              v97 = *v96;
            }

            else
            {
              v97 = v96[1];
              v98 = *v96 < v97;
              if (*v96 > v97)
              {
                v97 = *v96;
              }

              if (v98)
              {
                ++v96;
                v95 = 2 * v94 + 2;
              }
            }

            v99 = &v8[v94];
            v100 = *v99;
            if (v97 >= *v99)
            {
              do
              {
                *v99 = v97;
                v99 = v96;
                if (v92 < v95)
                {
                  break;
                }

                v101 = (2 * v95) | 1;
                v96 = &v8[v101];
                v95 = 2 * v95 + 2;
                if (v95 >= v9)
                {
                  v97 = *v96;
                  v95 = v101;
                }

                else
                {
                  v97 = *v96;
                  result = v96[1];
                  if (*v96 <= result)
                  {
                    v97 = v96[1];
                  }

                  if (*v96 >= result)
                  {
                    v95 = v101;
                  }

                  else
                  {
                    ++v96;
                  }
                }
              }

              while (v97 >= v100);
              *v99 = v100;
            }
          }

          v93 = v94 - 1;
        }

        while (v94);
        do
        {
          v102 = 0;
          v103 = *v8;
          v104 = v8;
          do
          {
            v105 = &v104[v102];
            v106 = v105 + 1;
            v107 = (2 * v102) | 1;
            v102 = 2 * v102 + 2;
            if (v102 >= v9)
            {
              v108 = *v106;
              v102 = v107;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              v108 = v110;
              v111 = *(v109 - 1);
              v112 = v111 < v110;
              if (v111 > v110)
              {
                v108 = *(v109 - 1);
              }

              if (v112)
              {
                v106 = v109;
              }

              else
              {
                v102 = v107;
              }
            }

            *v104 = v108;
            v104 = v106;
          }

          while (v102 <= ((v9 - 2) >> 1));
          if (v106 == --a2)
          {
            *v106 = v103;
          }

          else
          {
            *v106 = *a2;
            *a2 = v103;
            v113 = (v106 - v8 + 4) >> 2;
            v98 = v113 < 2;
            v114 = v113 - 2;
            if (!v98)
            {
              v115 = v114 >> 1;
              v116 = &v8[v115];
              v117 = *v116;
              v118 = *v106;
              if (*v116 < *v106)
              {
                do
                {
                  *v106 = v117;
                  v106 = v116;
                  if (!v115)
                  {
                    break;
                  }

                  v115 = (v115 - 1) >> 1;
                  v116 = &v8[v115];
                  v117 = *v116;
                }

                while (*v116 < v118);
                *v106 = v118;
              }
            }
          }

          v98 = v9-- <= 2;
        }

        while (!v98);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 1) = v13;
          v17 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v19 = *(a2 - 1);
        if (v19 < v14)
        {
          *v10 = v19;
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v20 = v10 - 1;
      v21 = *(v10 - 1);
      v22 = v8[1];
      v23 = *(a2 - 2);
      if (v21 >= v22)
      {
        if (v23 < v21)
        {
          *v20 = v23;
          *(a2 - 2) = v21;
          v24 = v8[1];
          if (*v20 < v24)
          {
            v8[1] = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v23 < v21)
        {
          v8[1] = v23;
          goto LABEL_39;
        }

        v8[1] = v21;
        *v20 = v22;
        v26 = *(a2 - 2);
        if (v26 < v22)
        {
          *v20 = v26;
LABEL_39:
          *(a2 - 2) = v22;
        }
      }

      v29 = v10[1];
      v27 = v10 + 1;
      v28 = v29;
      v30 = v8[2];
      v31 = *(a2 - 3);
      if (v29 >= v30)
      {
        if (v31 < v28)
        {
          *v27 = v31;
          *(a2 - 3) = v28;
          v32 = v8[2];
          if (*v27 < v32)
          {
            v8[2] = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[2] = v31;
          goto LABEL_48;
        }

        v8[2] = v28;
        *v27 = v30;
        v33 = *(a2 - 3);
        if (v33 < v30)
        {
          *v27 = v33;
LABEL_48:
          *(a2 - 3) = v30;
        }
      }

      v34 = *v11;
      v35 = *v20;
      v36 = *v27;
      if (*v11 >= *v20)
      {
        if (v36 >= v34)
        {
          goto LABEL_56;
        }

        *v11 = v36;
        *v27 = v34;
        v27 = v11;
        v34 = v35;
        if (v36 >= v35)
        {
          v34 = v36;
          goto LABEL_56;
        }
      }

      else if (v36 >= v34)
      {
        *v20 = v34;
        *v11 = v35;
        v20 = v11;
        v34 = v36;
        if (v36 >= v35)
        {
          v34 = v35;
LABEL_56:
          v37 = *v8;
          *v8 = v34;
          *v11 = v37;
          goto LABEL_57;
        }
      }

      *v20 = v36;
      *v27 = v35;
      goto LABEL_56;
    }

    v15 = *v8;
    v16 = *v11;
    if (*v8 >= *v11)
    {
      if (v12 < v15)
      {
        *v8 = v12;
        *(a2 - 1) = v15;
        v18 = *v11;
        if (*v8 < *v11)
        {
          *v11 = *v8;
          *v8 = v18;
        }
      }

      goto LABEL_57;
    }

    if (v12 >= v15)
    {
      *v11 = v15;
      *v8 = v16;
      v25 = *(a2 - 1);
      if (v25 >= v16)
      {
        goto LABEL_57;
      }

      *v8 = v25;
    }

    else
    {
      *v11 = v12;
    }

    *(a2 - 1) = v16;
LABEL_57:
    --a3;
    v38 = *v8;
    v39 = v8;
    if ((a4 & 1) != 0 || (v39 = v8, *(v8 - 1) < v38))
    {
      do
      {
        v40 = v39;
        v42 = v39[1];
        ++v39;
        v41 = v42;
      }

      while (v42 < v38);
      v43 = a2;
      if (v40 == v8)
      {
        v43 = a2;
        do
        {
          if (v39 >= v43)
          {
            break;
          }

          v45 = *--v43;
        }

        while (v45 >= v38);
      }

      else
      {
        do
        {
          v44 = *--v43;
        }

        while (v44 >= v38);
      }

      if (v39 < v43)
      {
        v46 = *v43;
        v47 = v39;
        v48 = v43;
        do
        {
          *v47 = v46;
          *v48 = v41;
          do
          {
            v40 = v47;
            v49 = v47[1];
            ++v47;
            v41 = v49;
          }

          while (v49 < v38);
          do
          {
            v50 = *--v48;
            v46 = v50;
          }

          while (v50 >= v38);
        }

        while (v47 < v48);
      }

      if (v40 != v8)
      {
        *v8 = *v40;
      }

      *v40 = v38;
      if (v39 < v43)
      {
        goto LABEL_77;
      }

      v51 = sub_3D098C(v8, v40);
      v8 = v40 + 1;
      result = sub_3D098C(v40 + 1, a2);
      if (result)
      {
        a2 = v40;
        if (!v51)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v51)
      {
LABEL_77:
        result = sub_3D0014(v7, v40, a3, a4 & 1);
        a4 = 0;
        v8 = v40 + 1;
      }
    }

    else
    {
      if (v38 >= *(a2 - 1))
      {
        v53 = (v8 + 1);
        do
        {
          v8 = v53;
          if (v53 >= a2)
          {
            break;
          }

          ++v53;
        }

        while (v38 >= *v8);
      }

      else
      {
        do
        {
          v52 = v8[1];
          ++v8;
        }

        while (v38 >= v52);
      }

      v54 = a2;
      if (v8 < a2)
      {
        v54 = a2;
        do
        {
          v55 = *--v54;
        }

        while (v38 < v55);
      }

      if (v8 < v54)
      {
        v56 = *v8;
        v57 = *v54;
        do
        {
          *v8 = v57;
          *v54 = v56;
          do
          {
            v58 = v8[1];
            ++v8;
            v56 = v58;
          }

          while (v38 >= v58);
          do
          {
            v59 = *--v54;
            v57 = v59;
          }

          while (v38 < v59);
        }

        while (v8 < v54);
      }

      v60 = (v8 - 1);
      if (v8 - 1 != v7)
      {
        *v7 = *v60;
      }

      a4 = 0;
      *v60 = v38;
    }
  }

  v72 = *v8;
  v73 = v8[1];
  v74 = *(a2 - 1);
  if (v73 >= *v8)
  {
    if (v74 >= v73)
    {
      return result;
    }

    v8[1] = v74;
    *(a2 - 1) = v73;
    v119 = v8[1];
    goto LABEL_205;
  }

  if (v74 >= v73)
  {
    *v8 = v73;
    v8[1] = v72;
    v126 = *(a2 - 1);
    if (v126 >= v72)
    {
      return result;
    }

    v8[1] = v126;
  }

  else
  {
    *v8 = v74;
  }

  *(a2 - 1) = v72;
  return result;
}

BOOL sub_3D098C(_DWORD *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 12; ; i += 4)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 4;
        if (v39 == 4)
        {
          break;
        }

        v38 = *(a1 + v39 - 8);
        v39 -= 4;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

void sub_3D0D2C(uint64_t a1, _OWORD *a2, UInt32 a3, unsigned int a4)
{
  v8 = sub_5544(17);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "AggregateDevice_Call.cpp";
    v14 = 1024;
    v15 = 530;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting baseband audio", &v12, 0x12u);
  }

  sub_3D85B8(a1, a2, a3, a4);
  v10 = sub_5544(17);
  v11 = *v10;
  if (*v10)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "AggregateDevice_Call.cpp";
      v14 = 1024;
      v15 = 532;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started baseband audio", &v12, 0x12u);
    }
  }
}

void sub_3D0E88(uint64_t a1, unsigned int a2)
{
  v4 = sub_5544(17);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "AggregateDevice_Call.cpp";
    v10 = 1024;
    v11 = 522;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting baseband audio", &v8, 0x12u);
  }

  sub_10E198(a1, a2);
  v6 = sub_5544(17);
  v7 = *v6;
  if (*v6)
  {
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "AggregateDevice_Call.cpp";
      v10 = 1024;
      v11 = 524;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Started baseband audio", &v8, 0x12u);
    }
  }
}

void sub_3D0FD0(unint64_t a1)
{
  sub_3D9164(a1);

  operator delete();
}

void sub_3D100C(uint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4, uint64_t a5, unsigned int *a6)
{
  v44 = 0;
  v42 = 0u;
  *__p = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v37 = 0u;
  v6 = *(a5 + 8);
  if (v6)
  {
    v9 = *(a5 + 8);
    do
    {
      v10 = *(v9 + 8);
      if (v10 <= 1)
      {
        if (v10 == 1)
        {
          v11 = 1;
          goto LABEL_9;
        }

        ++v9;
      }

      v9 = *v9;
    }

    while (v9);
    v11 = 5;
LABEL_9:
    v12 = *(a5 + 8);
    do
    {
      v13 = *(v12 + 8);
      if (v13 <= 0)
      {
        if ((v13 & 0x80000000) == 0)
        {
          v16 = *(a5 + 8);
          while (1)
          {
            v17 = *(v16 + 8);
            if (v17 <= 2)
            {
              if (v17 == 2)
              {
                v20 = *(a5 + 8);
                do
                {
                  v21 = *(v20 + 8);
                  if (v11 >= v21)
                  {
                    if (v21 >= v11)
                    {
                      v25 = *(a5 + 8);
                      while (1)
                      {
                        v26 = *(v25 + 8);
                        if (v26 <= 4)
                        {
                          if (v26 == 4)
                          {
                            goto LABEL_41;
                          }

                          ++v25;
                        }

                        v25 = *v25;
                        if (!v25)
                        {
LABEL_41:
                          v27 = sub_14BADC(v6, v11);
                          sub_5659C(&v36, v27, "", 225);
                          v28 = sub_14BADC(*(a5 + 8), 2);
                          sub_5659C(&v35, v28, "", 227);
                          v29 = sub_14BADC(*(a5 + 8), 0);
                          sub_5659C(&v34, v29, "", 228);
                          v30 = sub_14BADC(*(a5 + 8), v11);
                          sub_1222C0(a1, a2, a4, 0, 0, v30, a6, 0);
                        }
                      }
                    }

                    ++v20;
                  }

                  v20 = *v20;
                }

                while (v20);
                v22 = sub_5544(14);
                v23 = *v22;
                if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
                {
                  buf[0] = 136315394;
                  *&buf[1] = "AggregateDevice_Call.cpp";
                  v46 = 1024;
                  v47 = 222;
                  _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
                }

LABEL_35:
                exception = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(exception, "Precondition failure.");
              }

              ++v16;
            }

            v16 = *v16;
            if (!v16)
            {
              v18 = sub_5544(14);
              v19 = *v18;
              if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
              {
                buf[0] = 136315394;
                *&buf[1] = "AggregateDevice_Call.cpp";
                v46 = 1024;
                v47 = 221;
                _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
              }

              goto LABEL_35;
            }
          }
        }

        ++v12;
      }

      v12 = *v12;
    }

    while (v12);
  }

  v14 = sub_5544(14);
  v15 = *v14;
  if (*v14)
  {
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "AggregateDevice_Call.cpp";
      v46 = 1024;
      v47 = 220;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }
  }

  goto LABEL_35;
}

void sub_3D2A88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, char a29, uint64_t a30)
{
  if (a2)
  {
    if (a24)
    {
      sub_1A8C0(a24);
    }

    if (a26)
    {
      sub_1A8C0(a26);
    }

    if (a28)
    {
      sub_1A8C0(a28);
    }

    __cxa_begin_catch(exception_object);
    v31 = (*(*a14 + 120))(a14);
    sub_140C30(v31);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_3D2DC0(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x3D2DB8);
}

uint64_t sub_3D2DD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A8C0(v3);
  }

  return a1;
}

uint64_t sub_3D2E0C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v5 = 0x676C6F6273766364;
  v6 = 0;
  if (result)
  {
    v4 = sub_3F9C88(result, a2);
    result = 0;
    if (v4 & 0x100) != 0 && (v4)
    {
      return (*(*a3 + 16))(a3, &v5) ^ 1;
    }
  }

  return result;
}

uint64_t sub_3D2E8C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v4 = (a1 + 72);
  sub_167FB0(&v4);
  v4 = (a1 + 48);
  sub_167FB0(&v4);
  v4 = (a1 + 24);
  sub_F5714(&v4);
  v4 = a1;
  sub_F5714(&v4);
  return a1;
}

void *sub_3D2F08(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_13AA8C(result);

    operator delete();
  }

  return result;
}

void sub_3D2F4C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_3D2F88(uint64_t a1)
{
  if (*(a1 + 304) == 1 && *(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  sub_477A0(*(a1 + 232));
  v2 = *(a1 + 216);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_128368((a1 + 176));
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  return a1;
}

uint64_t sub_3D3044(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  v5 = *(a2 + 1);
  *(a1 + 29) = *(a2 + 29);
  *(a1 + 16) = v5;
  sub_80534((a1 + 40), (a2 + 5));
  v6 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v6;
  *(a1 + 136) = 0;
  if (*(a2 + 136) == 1)
  {
    v7 = *(a2 + 5);
    *(a1 + 96) = a2[12];
    *(a1 + 80) = v7;
    v8 = a2[14];
    *(a1 + 104) = a2[13];
    *(a1 + 112) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    *(a1 + 120) = *(a2 + 120);
    v9 = a2[16];
    if (v9)
    {
      CFRetain(a2[16]);
    }

    *(a1 + 128) = v9;
    *(a1 + 136) = 1;
  }

  v10 = a2[18];
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 144) = v10;
  *(a1 + 160) = *(a2 + 5);
  *(a1 + 164) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 176;
  *(a1 + 184) = a1 + 176;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0;
  return a1;
}

void sub_3D3158(uint64_t *a1, uint64_t *a2)
{
  sub_128368(a1);
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

uint64_t sub_3D31C0(uint64_t a1)
{
  sub_C31F4(*(a1 + 104));
  sub_C31F4(*(a1 + 80));
  v4 = (a1 + 48);
  sub_1084A8(&v4);
  v4 = (a1 + 24);
  sub_1084A8(&v4);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_3D3230(caulk::concurrent::message *this)
{
  *this = off_6CFFD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_3D32A0(caulk::concurrent::message *this)
{
  *this = off_6CFFD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_3D32FC(caulk::concurrent::message *this)
{
  *this = off_6CFFD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);

  operator delete();
}

void sub_3D336C(caulk::concurrent::message *this)
{
  *this = off_6CFFD8;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  caulk::concurrent::message::~message(this);
}

void sub_3D33C8(uint64_t a1)
{
  sub_13E8AC(a1);

  operator delete();
}

void sub_3D3404(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6CFF78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3D3478(int a1)
{
  if (a1 == 4)
  {
    v22 = xmmword_517470;
    sub_1E54B0(v24, &v22, 4);
  }

  else
  {
    v22 = *"1imi2imi3imi4imi5imi wargcrvccahgsmvivpvcvmiovpvcomicgpvtcmgcvmrplminkpstmsmmacmpcts";
    LODWORD(v23) = 1768778037;
    sub_1E54B0(v24, &v22, 5);
  }

  __p = 0;
  v2 = 0;
  v3 = 0;
  sub_46980(&__p, *&v24[0], *(&v24[0] + 1), (*(&v24[0] + 1) - *&v24[0]) >> 2);
  sub_1F68D0(&unk_6FBEF0, &__p);
  if (__p)
  {
    v2 = __p;
    operator delete(__p);
  }

  memset(v11, 0, sizeof(v11));
  sub_46980(v11, qword_6FBF50, *algn_6FBF58, (*algn_6FBF58 - qword_6FBF50) >> 2);
  qmemcpy(v24, "ivpvovpvcgpvcvmrgcrvgsmv", 24);
  memset(v10, 0, sizeof(v10));
  sub_4625C(v10, v24, &v24[1] + 8, 6uLL);
  qmemcpy(v24, " wargcrvgsmv", 12);
  memset(v9, 0, sizeof(v9));
  sub_4625C(v9, v24, v24 + 12, 3uLL);
  *&v24[0] = 0x766D736776726367;
  memset(v8, 0, sizeof(v8));
  sub_4625C(v8, v24, v24 + 8, 2uLL);
  qmemcpy(v24, " wargcrvccahgsmvivpvcvmiovpvcomicgpvtcmgcvmrplminkpstmsmmacmpcts", sizeof(v24));
  memset(v7, 0, sizeof(v7));
  sub_4625C(v7, v24, &v25, 0x10uLL);
  sub_1E5534(v24, 1953460273, v11, 1869442665, -1, v10);
  sub_1E5534(&v22, 1650811245, v11, 1935827812, 1, v9);
  sub_1E5534(&v12, 1650811245, v11, 1668441188, 0, v9);
  sub_1E5534(&v21, 1937007986, v11, 1937007986, 0, v7);
  sub_1E5534(&v6, 1937007986, v11, 1937007986, 1, v7);
  sub_1E5534(&v5, 1634495520, &qword_6FBF50, 1852796517, -1, v8);
  LODWORD(v18) = v12;
  memset(v19, 0, 24);
  sub_46980(v19, v13, v14, (v14 - v13) >> 2);
  v19[3] = v15;
  memset(v20, 0, sizeof(v20));
  sub_46980(v20, v16, v17, (v17 - v16) >> 2);
  memset(v4, 0, sizeof(v4));
  sub_1E56A8(v4, &v18, &v21, 1uLL);
}

void sub_3D3FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  sub_1E5808(&a49);
  sub_1E588C(&a69);
  __cxa_guard_abort(&qword_6FC170);
  sub_1E588C(&a53);
  sub_1E588C((v70 - 208));
  sub_1E588C((v70 - 144));
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  sub_1E5B6C(&qword_6FBEF0);
  if (v69)
  {
    operator delete(v69);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_3D4304(uint64_t result)
{
  if ((atomic_load_explicit(&qword_6FBFB0, memory_order_acquire) & 1) == 0)
  {
    v1 = result;
    result = __cxa_guard_acquire(&qword_6FBFB0);
    if (result)
    {
      sub_3D3478(v1);
    }
  }

  return result;
}

void sub_3D43D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  (*(*a1 + 56))(a1);
  sub_618A4(&v3);
}

void sub_3D46F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D47F4(uint64_t a1)
{
  sub_3D482C(a1);

  operator delete();
}

uint64_t sub_3D482C(uint64_t a1)
{
  *a1 = off_6D0000;
  sub_5D988((a1 + 136));
  sub_5D988((a1 + 120));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_3D4888@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_3D48A4(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_1EC054();
  }

  return *(a1 + 12);
}

void sub_3D48D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  (*(*a1 + 192))(&v13);
  if (v13.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::lock(v13.__r_.__value_.__l.__size_);
    if (v13.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v13.__r_.__value_.__l.__size_);
    }
  }

  std::string::append(a2, "[ ", 2uLL);
  std::string::append(a2, "type: Pointer; ", 0xFuLL);
  if ((*(*a1 + 16))(a1))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  sub_53E8(&v11, v4);
  v5 = std::string::insert(&v11, 0, "on: ", 4uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v12, "; ", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v9, size);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 56))(a1);
  sub_618A4(&v11);
}

void sub_3D4EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D51FC(void *a1)
{
  *a1 = off_6D00E8;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_3D5270(void *a1)
{
  *a1 = off_6D00E8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_3D52DC(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  (*(*a1 + 192))(v26);
  if (v26[1])
  {
    v4 = std::__shared_weak_count::lock(v26[1]);
    if (v4)
    {
      v5 = v26[0];
    }

    else
    {
      v5 = 0;
    }

    if (v26[1])
    {
      std::__shared_weak_count::__release_weak(v26[1]);
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  std::string::append(a2, "[ ", 2uLL);
  std::string::append(a2, "type: Hidden; ", 0xEuLL);
  v6 = "no";
  if (a1[3] && (*(*a1 + 16))(a1))
  {
    v6 = "yes";
  }

  sub_53E8(&v24, v6);
  v7 = std::string::insert(&v24, 0, "on: ", 4uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v25, "; ", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v27 = v9->__r_.__value_.__r.__words[2];
  *v26 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v26[0];
  }

  if (v27 >= 0)
  {
    v12 = HIBYTE(v27);
  }

  else
  {
    v12 = v26[1];
  }

  std::string::append(a2, v11, v12);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v13 = (*(*a1 + 168))(a1);
  std::to_string(&v24, v13);
  v14 = std::string::insert(&v24, 0, "client idx: ", 0xCuLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v25, "; ", 2uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27 = v16->__r_.__value_.__r.__words[2];
  *v26 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v18 = v26;
  }

  else
  {
    v18 = v26[0];
  }

  if (v27 >= 0)
  {
    v19 = HIBYTE(v27);
  }

  else
  {
    v19 = v26[1];
  }

  std::string::append(a2, v18, v19);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    if (v5)
    {
      goto LABEL_35;
    }
  }

  else if (v5)
  {
LABEL_35:
    sub_23148(&v25, v5 + 2);
    goto LABEL_38;
  }

  sub_53E8(&v25, "null");
LABEL_38:
  v20 = std::string::insert(&v25, 0, "physical device: ", 0x11uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *v26 = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = v26;
  }

  else
  {
    v22 = v26[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = v26[1];
  }

  std::string::append(a2, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, " ]", 2uLL);
  if (v4)
  {
    sub_1A8C0(v4);
  }
}

void sub_3D5640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D5768(void *a1)
{
  *a1 = off_6D00E8;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_3D57D4(void *a1)
{
  *a1 = off_6D00E8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_3D5870(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  (*(*a1 + 192))(&v13);
  if (v13.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::lock(v13.__r_.__value_.__l.__size_);
    if (v13.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_weak(v13.__r_.__value_.__l.__size_);
    }
  }

  std::string::append(a2, "[ ", 2uLL);
  std::string::append(a2, "type: Full; ", 0xCuLL);
  if ((*(*a1 + 16))(a1))
  {
    v4 = "no";
  }

  else
  {
    v4 = "yes";
  }

  sub_53E8(&v11, v4);
  v5 = std::string::insert(&v11, 0, "on: ", 4uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v12, "; ", 2uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v13;
  }

  else
  {
    v9 = v13.__r_.__value_.__r.__words[0];
  }

  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v13.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v9, size);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 56))(a1);
  sub_618A4(&v11);
}

void sub_3D5E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    sub_1A8C0(v29);
  }

  if (*(v28 + 23) < 0)
  {
    operator delete(*v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D60B4(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 48);
      if (!v5)
      {
LABEL_17:
        sub_1A8C0(v4);
        return;
      }

      v6 = sub_617EC(*(a1 + 48), a1 + 112);
      if (v6)
      {
        v13 = sub_5544(14);
        v14 = *v13;
        if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 566;
          v15 = "%25s:%-5d EXCEPTION (result) [error result is an error]: Stream::GetCurrentHALIOProcFormat() returned an error.";
LABEL_25:
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v15, buf, 0x12u);
        }
      }

      else
      {
        v6 = sub_4E90C(v5, a1 + 72);
        if (!v6)
        {
          if (*(a1 + 80) == 1819304813 && *(a1 + 120) == 1819304813)
          {
            v7 = *(a1 + 56);
            if (v7)
            {
              v7 = std::__shared_weak_count::lock(v7);
              v8 = v7;
              if (v7)
              {
                v7 = *(a1 + 48);
              }
            }

            else
            {
              v8 = 0;
            }

            sub_10C354(v7);
            v9 = *(a1 + 112);
            if (v8)
            {
              sub_1A8C0(v8);
            }

            v10 = sub_F5EFC(v5);
            v11 = *(a1 + 64);
            if (v10)
            {
              v18 = *(a1 + 72);
              v19 = *(a1 + 88);
              v20 = *(a1 + 104);
              sub_638B0();
            }

            v12 = *(a1 + 88);
            *buf = *(a1 + 72);
            *&buf[16] = v12;
            v22 = *(a1 + 104);
            sub_638B0();
          }

          goto LABEL_17;
        }

        v16 = sub_5544(14);
        v14 = *v16;
        if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AggregateDevice_Common2.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 568;
          v15 = "%25s:%-5d EXCEPTION (result) [error result is an error]: Stream::GetCurrentFormat() returned an error.";
          goto LABEL_25;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v6;
    }
  }
}

void sub_3D6550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A8C0(v19);
  _Unwind_Resume(a1);
}

void sub_3D65C8(uint64_t a1)
{
  sub_3D6600(a1);

  operator delete();
}

uint64_t sub_3D6600(uint64_t a1)
{
  *a1 = off_6D0370;
  sub_5D988((a1 + 168));
  sub_5D988((a1 + 152));
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_6D00E8;
  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_3D6684(uint64_t a1)
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
      sub_3B85D8(v7);
    }

    v2 = 1;
    v3 = 664;
  }

  while ((v4 & 1) == 0);
}

uint64_t sub_3D66E0(uint64_t a1)
{
  v13 = sub_126BBC(a1 + 272);
  result = sub_36F110(&v13, 0, &v13, 8u, (a1 + 80));
  if ((result & 1) == 0)
  {
    v3 = sub_5544(17);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
    {
      v5 = 0;
      v12 = 8;
      strcpy(__p, "00000000");
      v6 = 7;
      do
      {
        if ((v13 >> v5))
        {
          if (v12 >= 0)
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
      if (v12 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136315906;
      *&buf[4] = "AggregateDevice_Common2.cpp";
      v15 = 1024;
      v16 = 2428;
      v17 = 2080;
      v18 = v8;
      v19 = 2080;
      v20 = "anc|tel|sec|pri|hal";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%25s:%-5d stream capture flags have changed to %s (%s)", buf, 0x26u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_173E34(buf, a1, &v13);
    result = *(a1 + 96);
    *(a1 + 96) = *buf;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    v9 = v13;
    v10 = *(a1 + 80);
    if (((v13 ^ v10) & 1) != 0 || ((v13 >> 5) & 1) != ((v10 >> 5) & 1) || ((v13 >> 6) & 1) != ((v10 >> 6) & 1) || ((v13 >> 7) & 1) != ((v10 >> 7) & 1))
    {
      result = sub_66A80(a1, v13);
      v9 = v13;
    }

    *(a1 + 80) = v9;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_3D6900(void **a1)
{
  sub_10BB88(a1);
  if ((((*a1)[44])(a1) & 1) == 0)
  {
    v3 = sub_5544(14);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "AggregateDevice_Common2.cpp";
      v8 = 1024;
      v9 = 2413;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v6, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  return *a1[100];
}

uint64_t sub_3D6A8C(uint64_t a1, int a2)
{
  sub_10BB88(a1);
  v4 = 824;
  if (a2)
  {
    v4 = 848;
  }

  v5 = a1 + v4;
  for (i = *(a1 + v4); i != *(v5 + 8); i += 8)
  {
    if (*((*(**i + 32))() + 449))
    {
      return 1;
    }
  }

  v7 = 872;
  if (a2)
  {
    v7 = 896;
  }

  v8 = (a1 + v7);
  for (j = *v8; j != v8[1]; ++j)
  {
    if (*j && (*(**j + 160))(*j) && (*((*(**j + 32))() + 449) & 1) != 0)
    {
      return 1;
    }
  }

  return 0;
}

void sub_3D6BB0(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(a1 + 576))
  {
    v24 = sub_5544(14);
    v25 = *v24;
    if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "AggregateDevice_Common2.cpp";
      v35 = 1024;
      v36 = 2324;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  v6 = 824;
  if (a2)
  {
    v6 = 848;
  }

  v7 = (a1 + v6);
  if ((a3[1] - *a3) >> 2 != (v7[1] - *v7) >> 3)
  {
    v27 = sub_5544(14);
    v28 = *v27;
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v34 = "AggregateDevice_Common2.cpp";
      v35 = 1024;
      v36 = 2326;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v29, "Precondition failure.");
  }

  if ((*(*a1 + 88))(a1, a2))
  {
    v8 = 0;
    do
    {
      (*(**(*v7 + 8 * v8) + 152))(*(*v7 + 8 * v8), *(*a3 + 4 * v8) != 0);
      ++v8;
    }

    while (v8 < (*(*a1 + 88))(a1, a2));
  }

  inAddress_8 = 0;
  if (a2)
  {
    v9 = 1869968496;
  }

  else
  {
    v9 = 1768845428;
  }

  inAddress[0] = 1937077093;
  inAddress[1] = v9;
  PropertyDataSize = AudioObjectGetPropertyDataSize(*(a1 + 128), inAddress, 0, 0, &inAddress_8 + 1);
  if (PropertyDataSize)
  {
    v20 = sub_5544(14);
    if (*v20 && os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(__p);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    *v21 = &off_6DDDD0;
    v21[2] = PropertyDataSize;
  }

  v11 = malloc_type_malloc(HIDWORD(inAddress_8), 0x1080040FC6463CFuLL);
  v12 = 872;
  if (a2)
  {
    v12 = 896;
  }

  v13 = (a1 + v12);
  v15 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  if (v14 != v15)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      v18 = *(v15 + 8 * v16);
      if (v18)
      {
        LODWORD(v18) = (*(*v18 + 16))(v18);
        v15 = *v13;
        v14 = v13[1];
      }

      v11[v16 + 3] = v18;
      v16 = v17++;
    }

    while (v16 < (v14 - v15) >> 3);
  }

  v19 = AudioObjectSetPropertyData(*(a1 + 128), inAddress, 0, 0, HIDWORD(inAddress_8), v11);
  if (v19)
  {
    v22 = sub_5544(14);
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
      sub_22CE0(__p);
    }

    v23 = __cxa_allocate_exception(0x10uLL);
    *v23 = &off_6DDDD0;
    v23[2] = v19;
  }

  if (v11)
  {
    free(v11);
  }
}

uint64_t sub_3D7174(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 576))
  {
    v72 = sub_5544(14);
    v73 = *v72;
    if (*v72 && os_log_type_enabled(*v72, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice_Common2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 2221;
      _os_log_impl(&dword_0, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", __p, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_10BB88(a1);
  result = sub_51840(a1, a2, 0);
  if ((result & 3) != 3)
  {
    v5 = result;
    if ((result & 3) == 0)
    {
      v6 = sub_5544(17);
      result = sub_51E48(2, v6, "", 2233, "", "Stop is called on an already stopped device");
    }

    if (a2 == 1)
    {
      if ((v5 & 1) == 0)
      {
        return result;
      }
    }

    else if (a2 || (v5 & 2) == 0)
    {
      return result;
    }

    v12 = sub_95C3C(a1);
    v13 = *(a1 + 248);
    v14 = *(a1 + 256);
    while (v13 != v14)
    {
      v15 = *v13;
      v13 += 2;
      (*(*v15 + 32))(v15);
    }

    v16 = sub_5544(17);
    v17 = sub_5544(32);
    v18 = 0;
    *__p = 0x100000002;
    v19 = *(v16 + 8);
    while (1)
    {
      v20 = *&__p[v18];
      if (((v19 & v20) != 0) != ((*(v17 + 8) & v20) != 0))
      {
        break;
      }

      v18 += 4;
      if (v18 == 8)
      {
        goto LABEL_46;
      }
    }

    if ((v19 & v20) == 0)
    {
      v16 = v17;
    }

LABEL_46:
    sub_22170(__p, a2);
    v35 = v102[3];
    v36 = *__p;
    v37 = (*(*a1 + 120))(a1);
    v38 = __p;
    if (v35 < 0)
    {
      v38 = v36;
    }

    sub_51E48(3, v16, "", 2252, "", "Stopping IO type %s on AggregateDevice %u.", v38, v37);
    if ((v102[3] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    kdebug_trace();
    if (a2 == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = *(a1 + 536);
    }

    v40 = AudioDeviceStop(*(a1 + 128), v39);
    kdebug_trace();
    if (v40)
    {
      v41 = sub_5544(17);
      sub_22170(__p, v40);
      v42 = v102[3];
      v43 = *__p;
      sub_23148(&v104, (a1 + 8));
      v44 = __p;
      if (v42 < 0)
      {
        v44 = v43;
      }

      if (v104.__m_.__opaque[15] >= 0)
      {
        sig = &v104;
      }

      else
      {
        sig = v104.__m_.__sig;
      }

      sub_51E48(1, v41, "", 2260, "", "FAIL with status %s on AggregateDevice %s.", v44, sig);
      if (v104.__m_.__opaque[15] < 0)
      {
        operator delete(v104.__m_.__sig);
      }

      if ((v102[3] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v46 = *(a1 + 136);
    if (v46)
    {
      sub_30CED8(v46);
    }

    v47 = sub_95D20(a1);
    if (sub_95E00(a1))
    {
      v48 = 0;
      LODWORD(v49) = 0;
LABEL_116:
      result = sub_95E50(a1, v48);
      v65 = *(a1 + 112);
      v66 = *(a1 + 88);
      if (v65)
      {
        if (v66)
        {
          *(a1 + 88) = 0;
          *&__p[16] = 0;
          *__p = off_6D0708;
          *&__p[8] = 0;
          *&v102[4] = 0;
          v67 = *(v65 + 24);
          *(v65 + 24) = v66;
          if (v67)
          {
            (*(*v67 + 8))(v67);
            v68 = *&v102[4];
            *__p = off_6D0708;
            *&v102[4] = 0;
            if (v68)
            {
              (*(*v68 + 8))(v68);
            }
          }

          else
          {
            *__p = off_6D0708;
            *&v102[4] = 0;
          }

          caulk::concurrent::message::~message(__p);
          v70 = *(a1 + 112);
          sub_4F08C();
          result = caulk::concurrent::messenger::enqueue(&unk_70A4E0, v70);
          *(a1 + 112) = 0;
        }
      }

      else if (v66)
      {
        v69 = sub_5544(17);
        result = sub_51E48(1, v69, "", 2296, "", "AudioIOMonitor is valid, but IOMonitorCloseMsg is null. Not closing capture");
      }

      *(a1 + 104) = 0;
      if (v12)
      {
        v75 = sub_5544(14);
        v76 = *v75;
        if (*v75 && os_log_type_enabled(*v75, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "AggregateDevice_Common2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 2304;
          _os_log_impl(&dword_0, v76, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (willStopResult): Error calling WillStopIO on physical devices.", __p, 0x12u);
        }

        v77 = __cxa_allocate_exception(0x10uLL);
        *v77 = &off_6DDDD0;
        v77[2] = v12;
      }

      if (v40)
      {
        v78 = sub_5544(14);
        v79 = *v78;
        if (*v78 && os_log_type_enabled(*v78, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315394;
          *&__p[4] = "AggregateDevice_Common2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 2308;
          _os_log_impl(&dword_0, v79, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", __p, 0x12u);
        }

        v80 = __cxa_allocate_exception(0x10uLL);
        *v80 = &off_6DDDD0;
        v80[2] = v40;
      }

      if (v49)
      {
        v81 = sub_5544(14);
        v82 = *v81;
        if (*v81 && os_log_type_enabled(*v81, OS_LOG_TYPE_ERROR))
        {
          sub_22170(&v104, v49);
          v83 = v104.__m_.__opaque[15] >= 0 ? &v104 : v104.__m_.__sig;
          *__p = 136315650;
          *&__p[4] = "AggregateDevice_Common2.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 2312;
          *&__p[18] = 2080;
          *v102 = v83;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (isRunningResult): Error waiting to receive kAudioDevicePropertyDeviceIsRunning property notification while stopping I/O proc: %s", __p, 0x1Cu);
          if (v104.__m_.__opaque[15] < 0)
          {
            operator delete(v104.__m_.__sig);
          }
        }

        v84 = __cxa_allocate_exception(0x10uLL);
        *v84 = &off_6DDDD0;
        v84[2] = v49;
      }

      if (v47)
      {
        v85 = sub_5544(14);
        v86 = *v85;
        if (*v85)
        {
          if (os_log_type_enabled(*v85, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "AggregateDevice_Common2.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 2316;
            _os_log_impl(&dword_0, v86, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (didStopResult): Error calling DidStopIO on physical devices.", __p, 0x12u);
          }
        }

        v87 = __cxa_allocate_exception(0x10uLL);
        *v87 = &off_6DDDD0;
        v87[2] = v47;
      }

      return result;
    }

    v50 = *(a1 + 128);
    v89 = 0x676C6F62676F696ELL;
    v90 = 0;
    v51 = sub_5544(14);
    if ((*(v51 + 8) & 1) != 0 && *v51 && os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
    {
      v103.__cv_.__sig = v89;
      *v103.__cv_.__opaque = v90;
      sub_22CE0(&v104);
    }

    *__p = v89;
    *&__p[8] = v90;
    if (AudioObjectHasProperty(v50, __p))
    {
      memset(v104.__m_.__opaque, 0, sizeof(v104.__m_.__opaque));
      v104.__m_.__sig = 850045863;
      memset(v103.__cv_.__opaque, 0, sizeof(v103.__cv_.__opaque));
      v103.__cv_.__sig = 1018212795;
      v100 = 0;
      sub_745E8(v99, v50, &v89, &v103, &v104, &v100);
      v94 = v50;
      v95 = v89;
      v96 = v90;
      v97 = 0;
      v98 = 0;
      if (sub_3D83EC(&v94))
      {
        v88 = v12;
        for (i = 2000; ; i += (std::chrono::system_clock::now().__d_.__rep_ - v54.__d_.__rep_) / -1000)
        {
          v53 = sub_3D83EC(&v94);
          v49 = HIDWORD(v53);
          if (HIDWORD(v53))
          {
            v12 = v88;
            goto LABEL_114;
          }

          if (!v53)
          {
            v64 = sub_5544(14);
            v12 = v88;
            if ((*(v64 + 8) & 1) == 0)
            {
              goto LABEL_113;
            }

            v49 = *v64;
            if (*v64)
            {
              if (os_log_type_enabled(*v64, OS_LOG_TYPE_DEBUG))
              {
                v91 = v89;
                v92 = v90;
                sub_22CE0(v93);
              }

              goto LABEL_113;
            }

            goto LABEL_114;
          }

          if (i <= 0)
          {
            v71 = sub_5544(14);
            LODWORD(v49) = 2003329396;
            v12 = v88;
            if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_ERROR))
            {
              v91 = v89;
              v92 = v90;
              sub_22CE0(v93);
            }

            goto LABEL_114;
          }

          v54.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v55 = sub_5544(14);
          if (*(v55 + 8))
          {
            v56 = *v55;
            if (*v55)
            {
              if (os_log_type_enabled(*v55, OS_LOG_TYPE_DEBUG))
              {
                *__p = 136315906;
                *&__p[4] = "HALPropertySynchronizer.h";
                *&__p[12] = 1024;
                *&__p[14] = 354;
                *&__p[18] = 2080;
                *v102 = "with timeout";
                *&v102[8] = 1024;
                *&v102[10] = v50;
                _os_log_impl(&dword_0, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d Waiting (%s) for sync primitive to be unlocked on id %u.", __p, 0x22u);
              }
            }
          }

          sub_27A4();
          LOBYTE(v93[0]) = sub_2E6B08();
          *__p = &v104;
          __p[8] = 1;
          std::mutex::lock(&v104);
          v57.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 150000000;
          while ((v100 & 1) == 0 && v57.__d_.__rep_ > std::chrono::steady_clock::now().__d_.__rep_)
          {
            v58.__d_.__rep_ = v57.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
            if (v58.__d_.__rep_ >= 1)
            {
              std::chrono::steady_clock::now();
              v59.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
              if (v59.__d_.__rep_)
              {
                if (v59.__d_.__rep_ < 1)
                {
                  if (v59.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
                  {
                    goto LABEL_92;
                  }

                  v60 = 0x8000000000000000;
                }

                else
                {
                  if (v59.__d_.__rep_ > 0x20C49BA5E353F7)
                  {
                    v60 = 0x7FFFFFFFFFFFFFFFLL;
                    goto LABEL_93;
                  }

LABEL_92:
                  v60 = 1000 * v59.__d_.__rep_;
LABEL_93:
                  if (v60 > (v58.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
                  {
                    v61.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_96:
                    std::condition_variable::__do_timed_wait(&v103, __p, v61);
                    std::chrono::steady_clock::now();
                    goto LABEL_97;
                  }
                }
              }

              else
              {
                v60 = 0;
              }

              v61.__d_.__rep_ = v60 + v58.__d_.__rep_;
              goto LABEL_96;
            }

LABEL_97:
            if (std::chrono::steady_clock::now().__d_.__rep_ >= v57.__d_.__rep_)
            {
              break;
            }
          }

          if (__p[8] == 1)
          {
            std::mutex::unlock(*__p);
          }

          sub_1DB4C4(v93);
        }
      }

      v63 = sub_5544(14);
      if ((*(v63 + 8) & 1) == 0)
      {
        goto LABEL_113;
      }

      v49 = *v63;
      if (*v63)
      {
        if (os_log_type_enabled(*v63, OS_LOG_TYPE_DEBUG))
        {
          *__p = 136315650;
          *&__p[4] = "HALPropertySynchronizer.h";
          *&__p[12] = 1024;
          *&__p[14] = 322;
          *&__p[18] = 1024;
          *v102 = v50;
          _os_log_impl(&dword_0, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Read-back value was the same as the set-to value, so we didn't need to wait on a sync primitive for a notification on id %u.", __p, 0x18u);
        }

LABEL_113:
        LODWORD(v49) = 0;
      }

LABEL_114:
      sub_73C20(v99);
      std::condition_variable::~condition_variable(&v103);
      std::mutex::~mutex(&v104);
    }

    else
    {
      v62 = sub_5544(14);
      LODWORD(v49) = 2003332927;
      if (*v62 && os_log_type_enabled(*v62, OS_LOG_TYPE_ERROR))
      {
        v103.__cv_.__sig = v89;
        *v103.__cv_.__opaque = v90;
        sub_22CE0(&v104);
      }
    }

    v48 = v49 == 0;
    goto LABEL_116;
  }

  v7 = sub_5544(17);
  v8 = sub_5544(32);
  v9 = 0;
  *__p = 0x100000002;
  v10 = *(v7 + 8);
  while (1)
  {
    v11 = *&__p[v9];
    if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
    {
      break;
    }

    v9 += 4;
    if (v9 == 8)
    {
      goto LABEL_23;
    }
  }

  if ((v10 & v11) == 0)
  {
    v7 = v8;
  }

LABEL_23:
  sub_22170(__p, a2);
  v21 = v102[3];
  v22 = *__p;
  v23 = (*(*a1 + 120))(a1);
  v24 = __p;
  if (v21 < 0)
  {
    v24 = v22;
  }

  sub_51E48(3, v7, "", 2236, "", "Stopping IO type %s on AggregateDevice %u.", v24, v23);
  if ((v102[3] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  kdebug_trace();
  if (a2 == 1)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(a1 + 536);
  }

  v26 = AudioDeviceStop(*(a1 + 128), v25);
  result = kdebug_trace();
  if (v26)
  {
    v27 = sub_5544(17);
    sub_22170(__p, v26);
    v28 = v102[3];
    v29 = *__p;
    sub_23148(&v104, (a1 + 8));
    v30 = __p;
    if (v28 < 0)
    {
      v30 = v29;
    }

    if (v104.__m_.__opaque[15] >= 0)
    {
      v31 = &v104;
    }

    else
    {
      v31 = v104.__m_.__sig;
    }

    sub_51E48(1, v27, "", 2241, "", "FAIL with status %s on AggregateDevice %s.", v30, v31);
    if (v104.__m_.__opaque[15] < 0)
    {
      operator delete(v104.__m_.__sig);
    }

    if ((v102[3] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v32 = sub_5544(14);
    v33 = *v32;
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315394;
      *&__p[4] = "AggregateDevice_Common2.cpp";
      *&__p[12] = 1024;
      *&__p[14] = 2244;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (stopResult): Unable to stop IO.", __p, 0x12u);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = v26;
  }

  return result;
}

void sub_3D8314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, AudioObjectPropertySelector a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_73C20(&a27);
  std::condition_variable::~condition_variable((v38 - 216));
  std::mutex::~mutex((v38 - 168));
  _Unwind_Resume(a1);
}

unint64_t sub_3D83EC(uint64_t a1)
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

void sub_3D8598(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D85B8(uint64_t a1, _OWORD *a2, UInt32 a3, unsigned int a4)
{
  if (!*(a1 + 576))
  {
    v30 = sub_5544(14);
    v31 = *v30;
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleTime) = 136315394;
      *(&buf.mSampleTime + 4) = "AggregateDevice_Common2.cpp";
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 2136;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  sub_10BB88(a1);
  v8 = sub_51840(a1, a4, 1);
  if ((v8 & 3) == 0)
  {
    v15 = *(a1 + 120);
    if (v15)
    {
      caulk::concurrent::messenger::drain(v15);
    }

    sub_10D91C(a1);
    (*(*a1 + 248))(a1);
    sub_174EB4(a1);
    sub_17444C(a1);
    sub_173C0C(a1);
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
        goto LABEL_29;
      }
    }

    if ((v13 & v14) == 0)
    {
      v10 = v11;
    }

LABEL_29:
    v27 = *v10;
    if (*v10)
    {
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
      {
        v28 = (*(*a1 + 120))(a1);
        LODWORD(buf.mSampleTime) = 136315650;
        *(&buf.mSampleTime + 4) = "AggregateDevice_Common2.cpp";
        WORD2(buf.mHostTime) = 1024;
        *(&buf.mHostTime + 6) = 2201;
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
        goto LABEL_18;
      }
    }

    if ((v17 & v18) == 0)
    {
      v10 = v11;
    }

LABEL_18:
    v19 = *v10;
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sub_22170(__p, a4);
      v20 = SBYTE3(v50);
      v21 = *__p;
      v22 = (*(*a1 + 120))(a1);
      LODWORD(buf.mSampleTime) = 136315906;
      *(&buf.mSampleTime + 4) = "AggregateDevice_Common2.cpp";
      v23 = v20 >= 0 ? __p : v21;
      WORD2(buf.mHostTime) = 1024;
      *(&buf.mHostTime + 6) = 2206;
      WORD1(buf.mRateScalar) = 2080;
      *(&buf.mRateScalar + 4) = v23;
      WORD2(buf.mWordClockTime) = 1024;
      *(&buf.mWordClockTime + 6) = v22;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Starting IO type %s on AggregateDevice %u.", &buf, 0x22u);
      if (SBYTE3(v50) < 0)
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
      v33 = sub_5544(17);
      v34 = *v33;
      if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        sub_22170(v44, v29);
        v35 = v45;
        v36 = v44[0];
        sub_23148(v42, (a1 + 8));
        v37 = v44;
        if (v35 < 0)
        {
          v37 = v36;
        }

        if (v43 >= 0)
        {
          v38 = v42;
        }

        else
        {
          v38 = v42[0];
        }

        *__p = 136315906;
        *&__p[4] = "AggregateDevice_Common2.cpp";
        v47 = 1024;
        v48 = 2212;
        v49 = 2080;
        v50 = v37;
        v51 = 2080;
        v52 = v38;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d FAIL with status %s on AggregateDevice %s.", __p, 0x26u);
        if (v43 < 0)
        {
          operator delete(v42[0]);
        }

        if (v45 < 0)
        {
          operator delete(v44[0]);
        }
      }

      v39 = sub_5544(14);
      v40 = *v39;
      if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "AggregateDevice_Common2.cpp";
        v47 = 1024;
        v48 = 2213;
        _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (startResult): Unable to start IO.", __p, 0x12u);
      }

      v41 = __cxa_allocate_exception(0x10uLL);
      *v41 = &off_6DDDD0;
      v41[2] = v29;
    }
  }
}

void sub_3D90D4(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D912C(unint64_t a1)
{
  sub_3D9164(a1);

  operator delete();
}

unint64_t sub_3D9164(unint64_t a1)
{
  *a1 = off_6D0468;
  v2 = *(a1 + 824);
  v3 = *(a1 + 832);
  while (v2 != v3)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    ++v2;
  }

  v4 = *(a1 + 848);
  v5 = *(a1 + 856);
  while (v4 != v5)
  {
    if (*v4)
    {
      (*(**v4 + 8))(*v4);
    }

    ++v4;
  }

  v6 = *(a1 + 872);
  v7 = *(a1 + 880);
  while (v6 != v7)
  {
    if (*v6)
    {
      (*(**v6 + 8))(*v6);
    }

    ++v6;
  }

  v8 = *(a1 + 896);
  v9 = *(a1 + 904);
  while (v8 != v9)
  {
    if (*v8)
    {
      (*(**v8 + 8))(*v8);
    }

    ++v8;
  }

  sub_5D988((a1 + 936));
  sub_5D988((a1 + 920));
  v10 = *(a1 + 896);
  if (v10)
  {
    *(a1 + 904) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 872);
  if (v11)
  {
    *(a1 + 880) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 848);
  if (v12)
  {
    *(a1 + 856) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 824);
  if (v13)
  {
    *(a1 + 832) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 800);
  if (v14)
  {
    *(a1 + 808) = v14;
    operator delete(v14);
  }

  return sub_13A668(a1);
}

void sub_3D9330(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a2 + 24);
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

  sub_53E8(a1, "[ ");
  std::to_string(&v24, *a2);
  v7 = std::string::insert(&v24, 0, "Client Stream Index: ", 0x15uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v25, "; ", 2uLL);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v27 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v27 >= 0)
  {
    v12 = HIBYTE(v27);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(a1, v11, v12);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  v13 = *(a2 + 8);
  if (!v13)
  {
    goto LABEL_30;
  }

  sub_23148(&v24, v13 + 2);
  v14 = std::string::insert(&v24, 0, "Underlying Stream: ", 0x13uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v25, "; ", 2uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  if (v27 >= 0)
  {
    v19 = HIBYTE(v27);
  }

  else
  {
    v19 = __p[1];
  }

  std::string::append(a1, v18, v19);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_30:
    if (v6)
    {
LABEL_31:
      sub_23148(&v25, v6 + 2);
      goto LABEL_34;
    }
  }

  sub_53E8(&v25, "null");
LABEL_34:
  v20 = std::string::insert(&v25, 0, "Physical Device: ", 0x11uLL);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v27 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v22 = __p;
  }

  else
  {
    v22 = __p[0];
  }

  if (v27 >= 0)
  {
    v23 = HIBYTE(v27);
  }

  else
  {
    v23 = __p[1];
  }

  std::string::append(a1, v22, v23);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, " ]", 2uLL);
  if (v5)
  {
    sub_1A8C0(v5);
  }
}

void sub_3D95DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  if (v28)
  {
    sub_1A8C0(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_3D9690()
{
  if (!v0)
  {
    JUMPOUT(0x3D9688);
  }

  JUMPOUT(0x3D9680);
}

void **sub_3D969C(void **a1)
{
  v3 = a1 + 3;
  sub_F5714(&v3);
  v3 = a1;
  sub_F5714(&v3);
  return a1;
}

void sub_3D96E4(uint64_t a1)
{
  v2 = (a1 + 40);
  v10 = a1 + 40;
  v11 = 1;
  std::__shared_mutex_base::lock_shared((a1 + 40));
  v8 = *(a1 + 8);
  v9 = 1735159650;
  v3 = *(a1 + 16);
  v4 = (a1 + 24);
  if (v3 != v4)
  {
    do
    {
      (v3[4])(0, 1, &v8, v3[5]);
      v5 = v3[1];
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
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  std::__shared_mutex_base::unlock_shared(v2);
}

void sub_3D97A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2E20E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_3D97BC(uint64_t a1, unsigned int a2, unsigned int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = sub_70DB0(a2, a3);
  if (HIDWORD(v16))
  {
    v24 = v16;
    if (sub_70E38(v16))
    {
      v25 = *(a1 + 1216);
      if (!v25)
      {
        v28 = sub_5544(14);
        v29 = *v28;
        if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v35 = *(a1 + 728);
          }

          v30 = __dst;
          if (v35 < 0)
          {
            v30 = __dst[0];
          }

          *buf = 136315650;
          v37 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v38 = 1024;
          v39 = 250;
          v40 = 2080;
          v41 = v30;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      v26 = *(v25 + 16);
      v27 = *(v25 + 148);

      return sub_724E8(v26, v27, v24, a5, a4);
    }

    else
    {

      return sub_1DC9EC(a1, 0x64737067u, v24, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    v17 = sub_5544(25);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v19 = SHIBYTE(v35);
      v20 = __dst[0];
      sub_22170(__p, a3);
      v21 = __dst;
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

      *buf = 136315906;
      v37 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v38 = 1024;
      v39 = 262;
      v40 = 2080;
      v41 = v21;
      v42 = 2080;
      v43 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphProperty failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 4294967246;
  }
}

uint64_t sub_3D9B58(uint64_t a1, unsigned int a2, unsigned int a3, void *a4, UInt32 *a5, uint64_t a6, uint64_t a7, int a8)
{
  v16 = sub_70DB0(a2, a3);
  if (HIDWORD(v16))
  {
    v24 = v16;
    if (sub_70E38(v16))
    {
      v25 = *(a1 + 1216);
      if (!v25)
      {
        v28 = sub_5544(14);
        v29 = *v28;
        if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v35 = *(a1 + 728);
          }

          v30 = __dst;
          if (v35 < 0)
          {
            v30 = __dst[0];
          }

          *buf = 136315650;
          v37 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v38 = 1024;
          v39 = 218;
          v40 = 2080;
          v41 = v30;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      v26 = *(v25 + 16);
      v27 = *(v25 + 148);

      return sub_173AE4(v26, v27, v24, a5, a4);
    }

    else
    {

      return sub_1DCD18(a1, 0x64737067u, v24, a4, a5, a6, a7, a8);
    }
  }

  else
  {
    v17 = sub_5544(25);
    v18 = *v17;
    if (*v17 && os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v19 = SHIBYTE(v35);
      v20 = __dst[0];
      sub_22170(__p, a3);
      v21 = __dst;
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

      *buf = 136315906;
      v37 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v38 = 1024;
      v39 = 230;
      v40 = 2080;
      v41 = v21;
      v42 = 2080;
      v43 = v22;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphProperty failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v33 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 4294967246;
  }
}

uint64_t sub_3D9EF4(uint64_t a1, unsigned int a2, unsigned int a3, UInt32 *a4, _BYTE *a5, uint64_t a6)
{
  v12 = sub_70DB0(a2, a3);
  if (HIDWORD(v12))
  {
    v20 = v12;
    if (sub_70E38(v12))
    {
      v21 = *(a1 + 1216);
      if (!v21)
      {
        v24 = sub_5544(14);
        v25 = *v24;
        if (*v24 && os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
        {
          if (*(a1 + 735) < 0)
          {
            sub_54A0(__dst, *(a1 + 712), *(a1 + 720));
          }

          else
          {
            *__dst = *(a1 + 712);
            v31 = *(a1 + 728);
          }

          v26 = __dst;
          if (v31 < 0)
          {
            v26 = __dst[0];
          }

          *buf = 136315650;
          v33 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
          v34 = 1024;
          v35 = 187;
          v36 = 2080;
          v37 = v26;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): HAL Speaker Protection is not available for DSP chain %s", buf, 0x1Cu);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "HAL Speaker Protection is not available for DSP chain %s");
      }

      v22 = *(v21 + 16);
      v23 = *(v21 + 148);

      return sub_1DC6D8(v22, v23, v20, a4, a5);
    }

    else
    {

      return sub_1DD038(a1, 0x64737067u, v20, a4, a5, a6);
    }
  }

  else
  {
    v13 = sub_5544(25);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__dst, a2);
      v15 = SHIBYTE(v31);
      v16 = __dst[0];
      sub_22170(__p, a3);
      v17 = __dst;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v29 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315906;
      v33 = "DSPGraphChain_HAL_SpeakerProtection.cpp";
      v34 = 1024;
      v35 = 198;
      v36 = 2080;
      v37 = v17;
      v38 = 2080;
      v39 = v18;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d TranslateToDSPGraphProperty failure for AU subtype %s as graph parameter %s", buf, 0x26u);
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    return 0;
  }
}

void sub_3DA278(uint64_t a1)
{
  sub_1DB958(a1 + 24);
  sub_1D8EB0(a1 + 128);
  v8 = (a1 + 104);
  sub_F5714(&v8);
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    *(a1 + 56) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_3DA340(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

void sub_3DA5E4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6D1FF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_3DA658(void *a1)
{
  *a1 = off_6D0838;
  sub_3D9164(a1);

  operator delete();
}

void sub_3DA6DC(uint64_t a1)
{
  v1 = (a1 + 112);
  sub_477A0(*(a1 + 112));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

float sub_3DA70C(uint64_t a1, int a2)
{
  result = 0.0;
  if (a2 != 1935895666)
  {
    if (a2 != 1684234860)
    {
      v4 = sub_5544(14);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v7 = 136315650;
          v8 = "VolumeControl.cpp";
          v9 = 1024;
          v10 = 179;
          v11 = 1024;
          v12 = a2;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered an invalid volume unit type: %d", &v7, 0x18u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Encountered an invalid volume unit type: %d");
    }

    return -120.0;
  }

  return result;
}

float sub_3DA858(uint64_t a1)
{
  v1 = *(a1 + 128);
  result = 0.0;
  if (v1 != 1935895666)
  {
    if (v1 != 1684234860)
    {
      v4 = sub_5544(14);
      v5 = *v4;
      if (*v4)
      {
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          v6 = *(a1 + 128);
          v8 = 136315650;
          v9 = "VolumeControl.cpp";
          v10 = 1024;
          v11 = 159;
          v12 = 1024;
          v13 = v6;
          _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Encountered an invalid volume unit type: %d", &v8, 0x18u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Encountered an invalid volume unit type: %d");
    }

    return -90.0;
  }

  return result;
}

void sub_3DA9B4(float *a1, float a2)
{
  v13 = 0.0;
  v4 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v4, 0x726D6764u, &v13);
  v12 = 0.0;
  v5 = (*(*a1 + 320))(a1);
  sub_3DAB9C(a1, v5, 0x726D6732u, &v12);
  v6 = (*(*a1 + 320))(a1);
  sub_3DB280(a1, v6, 0x6279686Cu);
  v7 = 0.0;
  v8 = (a1[40] + -1.0) * 20.0;
  if (*(sub_C2C1C() + 8))
  {
    v7 = v8;
  }

  v9 = ((v13 + a1[38]) + v12) + a2;
  v10 = v7 + (sub_3DB944(a1) + v9);
  v11 = (*(*a1 + 320))(a1);
  sub_E8A40(a1, v11, 1751938671, v10);
}

void sub_3DAB9C(uint64_t a1, unsigned int a2, unsigned int a3, float *a4)
{
  v8 = sub_275004(a1 + 104, a2, 0);
  if ((a1 + 112) == v8)
  {
    v47 = sub_5544(14);
    v48 = *v47;
    if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v58, a2);
      v49 = v59 >= 0 ? v58 : v58[0];
      *buf = 136315650;
      *&buf[4] = "VolumeControl.cpp";
      v61 = 1024;
      v62 = 308;
      v63 = 2080;
      v64 = v49;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): VolumeCommand: Software volume processor of type '%s' does not exist", buf, 0x1Cu);
      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "VolumeCommand: Software volume processor of type '%s' does not exist");
  }

  v9 = v8;
  v10 = sub_5544(19);
  v11 = sub_5544(39);
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
        goto LABEL_25;
      }

      goto LABEL_10;
    }
  }

  if ((v13 & v14) == 0)
  {
    v10 = v11;
  }

  if (*(v10 + 8))
  {
LABEL_10:
    v15 = *v10;
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_22170(v58, a3);
      if (v59 >= 0)
      {
        v16 = v58;
      }

      else
      {
        v16 = v58[0];
      }

      v51 = a4;
      v17 = *a4;
      sub_22170(v56, a2);
      v18 = v57;
      v19 = v56[0];
      v20 = *(v9 + 14);
      sub_E896C(__p, a1);
      v21 = v56;
      if (v18 < 0)
      {
        v21 = v19;
      }

      v22 = __p[0];
      *buf = 136316674;
      if (v55 >= 0)
      {
        v22 = __p;
      }

      *&buf[4] = "VolumeControl.cpp";
      v61 = 1024;
      v62 = 312;
      v63 = 2080;
      v64 = v16;
      v65 = 2048;
      v66 = v17;
      v67 = 2080;
      v68 = v21;
      v69 = 1024;
      v70 = v20;
      v71 = 2080;
      v72 = v22;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d VolumeCommand: Getting parameter '%s' to %f on processor type '%s' index %u on chain '%s'.", buf, 0x40u);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      a4 = v51;
      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }
  }

LABEL_25:
  v23 = *(a1 + 32);
  if (!v23)
  {
    v24 = 0;
    goto LABEL_34;
  }

  v24 = std::__shared_weak_count::lock(v23);
  if (!v24 || !*(a1 + 24))
  {
LABEL_34:
    v32 = sub_5544(19);
    v33 = sub_5544(39);
    v34 = 0;
    *buf = 0x100000002;
    v35 = *(v32 + 8);
    while (1)
    {
      v36 = *&buf[v34];
      if (((v35 & v36) != 0) != ((*(v33 + 8) & v36) != 0))
      {
        break;
      }

      v34 += 4;
      if (v34 == 8)
      {
        goto LABEL_40;
      }
    }

    if ((v35 & v36) == 0)
    {
      v32 = v33;
    }

LABEL_40:
    v37 = *v32;
    if (v37 && os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VolumeControl.cpp";
      v61 = 1024;
      v62 = 328;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d VolumeCommand: DSPChain unavailable for setting parameter", buf, 0x12u);
    }

LABEL_43:
    if (!v24)
    {
      return;
    }

    goto LABEL_44;
  }

  sub_E933C();
  v25 = *(v9 + 14);
  v26 = (*(qword_6EB0E0 + 72))();
  if (v26)
  {
    v27 = sub_5544(19);
    v28 = sub_5544(39);
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
        goto LABEL_48;
      }
    }

    if ((v30 & v31) == 0)
    {
      v27 = v28;
    }

LABEL_48:
    v38 = *v27;
    if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_22170(v58, a3);
      if (v59 >= 0)
      {
        v39 = v58;
      }

      else
      {
        v39 = v58[0];
      }

      v40 = *a4;
      v41 = v56;
      sub_22170(v56, a2);
      if (v57 < 0)
      {
        v41 = v56[0];
      }

      v42 = *(v9 + 14);
      sub_22170(__p, v26);
      v43 = v55;
      v44 = __p[0];
      sub_E896C(v52, a1);
      v45 = __p;
      if (v43 < 0)
      {
        v45 = v44;
      }

      if (v53 >= 0)
      {
        v46 = v52;
      }

      else
      {
        v46 = v52[0];
      }

      *buf = 136316930;
      *&buf[4] = "VolumeControl.cpp";
      v61 = 1024;
      v62 = 323;
      v63 = 2080;
      v64 = v39;
      v65 = 2048;
      v66 = v40;
      v67 = 2080;
      v68 = v41;
      v69 = 1024;
      v70 = v42;
      v71 = 2080;
      v72 = v45;
      v73 = 2080;
      v74 = v46;
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d VolumeCommand: Failed to get parameter '%s' to %f on processor type '%s' index %u, err: %s on chain '%s'.", buf, 0x4Au);
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (v55 < 0)
      {
        operator delete(__p[0]);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }
    }

    goto LABEL_43;
  }

LABEL_44:
  sub_1A8C0(v24);
}